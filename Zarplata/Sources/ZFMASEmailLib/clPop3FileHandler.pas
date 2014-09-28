{
  Clever Internet Suite Version 6.2
  Copyright (C) 1999 - 2006 Clever Components
  www.CleverComponents.com
}

unit clPop3FileHandler;

interface

{$I clVer.inc}
{$IFDEF DELPHI6}
  {$WARN SYMBOL_PLATFORM OFF}
{$ENDIF}

{$IFDEF DELPHI7}
  {$WARN UNSAFE_CODE OFF}
  {$WARN UNSAFE_TYPE OFF}
  {$WARN UNSAFE_CAST OFF}
{$ENDIF}

uses
  Classes, clPop3Server, SyncObjs;

type
  TclPop3LoadMessageEvent = procedure (Sender: TObject; AConnection: TclPop3CommandConnection;
    const AMailBoxPath, AMessageFile: string; var ACanLoad: Boolean) of object;

  TclPop3FileHandler = class(TComponent)
  private
    FServer: TclPop3Server;
    FMailBoxDir: string;
    FAccessor: TCriticalSection;
    FOnLoadMessage: TclPop3LoadMessageEvent;
    procedure SetServer(const Value: TclPop3Server);
    procedure SetMailBoxDir(const Value: string);
    procedure DoStateChanged(Sender: TObject; AConnection: TclPop3CommandConnection);
    procedure DoMailBoxInfo(Sender: TObject; AConnection: TclPop3CommandConnection;
      AMailBox: TclPop3MessageList);
    procedure DoRetrieve(Sender: TObject; AConnection: TclPop3CommandConnection;
      AMessageNo, ATopLines: Integer; ARetrieveAll: Boolean; AMessageSource: TStrings;
      var Success: Boolean);
    function GetMailBoxPath(const AUserName: string): string;
    function GetMessageUid(const AFileName: string; AFileSize: Integer): string;
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure CleanEventHandlers; virtual;
    procedure InitEventHandlers; virtual;
    procedure DoLoadMessage(AConnection: TclPop3CommandConnection;
      const AMailBoxPath, AMessageFile: string; var ACanLoad: Boolean); virtual;
    property Accessor: TCriticalSection read FAccessor;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Server: TclPop3Server read FServer write SetServer;
    property MailBoxDir: string read FMailBoxDir write SetMailBoxDir;
    property OnLoadMessage: TclPop3LoadMessageEvent read FOnLoadMessage write FOnLoadMessage;
  end;

implementation

uses
  Windows, SysUtils, clUtils, clImapUtils;

{ TclPop3FileHandler }

procedure TclPop3FileHandler.CleanEventHandlers;
begin
  Server.OnMailBoxInfo := nil;
  Server.OnRetrieve := nil;
  Server.OnStateChanged := nil;
end;

constructor TclPop3FileHandler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FAccessor := TCriticalSection.Create();
end;

destructor TclPop3FileHandler.Destroy;
begin
  FAccessor.Free();
  inherited Destroy();
end;

procedure TclPop3FileHandler.InitEventHandlers;
begin
  Server.OnMailBoxInfo := DoMailBoxInfo;
  Server.OnRetrieve := DoRetrieve;
  Server.OnStateChanged := DoStateChanged;
end;

procedure TclPop3FileHandler.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation <> opRemove) then Exit;
  if (AComponent = FServer) then
  begin
    CleanEventHandlers();
    FServer := nil;
  end;
end;

procedure TclPop3FileHandler.SetMailBoxDir(const Value: string);
begin
  FAccessor.Enter();
  try
    FMailBoxDir := Value;
  finally
    FAccessor.Leave();
  end;
end;

procedure TclPop3FileHandler.SetServer(const Value: TclPop3Server);
begin
  if (FServer <> Value) then
  begin
{$IFDEF DELPHI5}
    if (FServer <> nil) then
    begin
      FServer.RemoveFreeNotification(Self);
      CleanEventHandlers();
    end;
{$ENDIF}
    FServer := Value;
    if (FServer <> nil) then
    begin
      FServer.FreeNotification(Self);
      InitEventHandlers();
    end;
  end;
end;

function TclPop3FileHandler.GetMailBoxPath(const AUserName: string): string;
begin
  Result := AddTrailingBackSlash(MailBoxDir) + AddTrailingBackSlash(AUserName);
end;

function TclPop3FileHandler.GetMessageUid(const AFileName: string; AFileSize: Integer): string;
begin
  Result := UpperCase(StringReplace(AFileName, '.', ':', [rfReplaceAll])) + ':' + IntToStr(AFileSize);
  Result := StringReplace(Result, #32, '_', [rfReplaceAll]);
end;

procedure TclPop3FileHandler.DoMailBoxInfo(Sender: TObject;
  AConnection: TclPop3CommandConnection; AMailBox: TclPop3MessageList);
var
  path: string;
  searchRec: TSearchRec;
  msgInfo: TclPop3MessageItem;
  canLoad: Boolean;
begin
  path := GetMailBoxPath(AConnection.UserName);

  AMailBox.Clear();
  if SysUtils.FindFirst(path + '*.*', 0, searchRec) = 0 then
  begin
    repeat
      canLoad := not SameText(cImapMailBoxInfoFile, searchRec.Name);
      DoLoadMessage(AConnection, path, searchRec.Name, canLoad);

      if canLoad then
      begin
        msgInfo := AMailBox.Add();
        msgInfo.Size := searchRec.Size;
        msgInfo.UID := GetMessageUid(searchRec.Name, searchRec.Size);
        msgInfo.ExtraInfo := path + searchRec.Name;
      end;
    until (SysUtils.FindNext(searchRec) <> 0);
    SysUtils.FindClose(searchRec);
  end;
end;

procedure TclPop3FileHandler.DoRetrieve(Sender: TObject; AConnection: TclPop3CommandConnection;
  AMessageNo, ATopLines: Integer; ARetrieveAll: Boolean; AMessageSource: TStrings; var Success: Boolean);
var
  s: string;
  src: TStream;
begin
  try
    s := AConnection.MailBox.Items[AMessageNo - 1].ExtraInfo;
    if ARetrieveAll then
    begin
      AMessageSource.LoadFromFile(s);
    end else
    begin
      src := TFileStream.Create(s, fmOpenRead);
      try
        GetTopLines(src, ATopLines, AMessageSource);
      finally
        src.Free();
      end;
    end;

    Success := True;
  except
    AMessageSource.Clear();
    Success := False;
  end;
end;

procedure TclPop3FileHandler.DoStateChanged(Sender: TObject; AConnection: TclPop3CommandConnection);
var
  i: Integer;
begin
  if (AConnection.ConnectionState <> csPop3Update) then Exit;

  for i := 0 to AConnection.MailBox.Count - 1 do
  begin
    if AConnection.MailBox[i].IsDeleted then
    begin
      DeleteFile(AConnection.MailBox[i].ExtraInfo);
    end;
  end;
end;

procedure TclPop3FileHandler.DoLoadMessage(AConnection: TclPop3CommandConnection;
  const AMailBoxPath, AMessageFile: string; var ACanLoad: Boolean);
begin
  if Assigned(OnLoadMessage) then
  begin
    OnLoadMessage(Self, AConnection, AMailBoxPath, AMessageFile, ACanLoad);
  end;
end;

end.
