unit uneClasses;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uneClasses                                                                 *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	���������� ������� ������ ����������.                                      *
*                                                                              *
* Copyright  �  ��� 2005,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}

interface

uses SysUtils, Classes, Windows, Forms, Dialogs, IBase, uneTypes;

type

    { ****************************************** }
    { *** ��������������� ���������� ������� *** }
    { ****************************************** }

    EneException  = class;
    TneStringList = class;
    TneConnection = class;


    { ********************************************************************** }
    { **********   *** ���������� ��������� ���� ���������� ***   ********** }
    { ********************************************************************** }


//EXCEPTIONS

	{ *** ����������: ����������� ������ + ������ ��� ������������� �� *** }
	EneException = class( Exception )
	private
		FErrorCode: Integer;
	public
		constructor CreateResCode( aResStringRec: PResStringRec );
		property ErrorCode: Integer read FErrorCode write FErrorCode;
	end;

//CLASSES

	{ *** ����������: �������� ������ ����� � ��������� � ���� �������� *** }
	TneStringList = class(TStringList)
	public
		destructor Destroy; override;
	end;

	{ *** ����������: ���������� ���������� ���������� �� ini-����� *** }
	TneConnection = class( TneStringList )
	private
		FDBPath        : String;
		FUserName      : String;
		FPassword      : String;
		FCharSet       : String;
		FSQLDialect    : Integer;
		FLogPath       : String;
		FParamsExists  : Boolean;
		FParamsIsValid : Boolean;

		procedure ReadIniFile( const aFileName: TFileName );
		procedure CheckParams;
		procedure PutParams;
		procedure SetAddParams;
	public
		constructor Create( const aFileName: String ); overload;
		constructor Create( const aFileName, aUserName, aPassword: String ); overload;

		property DBPath         : String  read FDBPath;
		property UserName       : String  read FUserName;
		property Password       : String  read FPassword;
		property CharSet        : String  read FCharSet;
		property SQLDialect     : Integer read FSQLDialect;
		property LogPath        : String  read FLogPath;
		property ParamsExists   : Boolean read FParamsExists  write  FParamsExists;
		property ParamsIsValid  : Boolean read FParamsIsValid write  FParamsIsValid;
	end;

implementation

{ EneException }
constructor EneException.CreateResCode(aResStringRec: PResStringRec);
begin
  inherited CreateRes( aResStringRec );
  FErrorCode := aResStringRec^.Identifier;
end;

{ TneStringList }
destructor TneStringList.Destroy;
var
    i, n : Integer;
begin
    n := Count - 1;

    //����������� �������, ���������� ��� ��������, ��������� � ���������� ������
    for i := 0 to n
    do begin
        if Assigned( Objects[i] )
        then begin
            Objects[i].Free;
            Objects[i] := nil;
        end;
    end;

    //���������� ��������� ������
    inherited Destroy;
end;

{ TneConnection }
constructor TneConnection.Create(const aFileName: String);
begin
  inherited Create;
  ReadIniFile( aFileName );
end;

constructor TneConnection.Create(const aFileName, aUserName,
  aPassword: String);
begin
  inherited Create;
  ReadIniFile( aFileName );
  Values[sPASSWORD]  := aPassword;
  Values[sUSER_NAME] := aUserName;
end;

//��������� ������������� �������� ���������� ���������
procedure TneConnection.CheckParams;
var
	i, n : Integer;
begin

  i := Low ( cMainParams );
  n := High( cMainParams );
  ParamsExists := True;

  for i := i to n
  do begin
	  if IndexOfName( cMainParams[i] ) = -1
	  then begin
		  ParamsExists := False;
		  Break;
	  end;
  end;

end;

//�������� �������������� ��������� ����������
procedure TneConnection.SetAddParams;
var
	i, n : Integer;
begin

  i := Low ( cAdditionalParams );
  n := High( cAdditionalParams );

  for i := i to n
  do begin

	  //��������� ������������� �������������� ���������� ���������
	  if IndexOfName( cAdditionalParams[i].Name ) = -1
	  then begin

		//������������� ��� �������������� �������������� ���������� ��������� �������� �� ���������
		if cAdditionalParams[i].Name = sLOG_FILE_PATH
		then
			Values[cAdditionalParams[i].Name] := ExtractFilePath( Application.ExeName )
		else
			Values[cAdditionalParams[i].Name] := cAdditionalParams[i].Value;

	  end;

  end;


end;

//�������� ��������� ����������
procedure TneConnection.PutParams;
var
	Server: String;
begin

  if ParamsExists
  then begin

	  //�������� �������� ��������� ����������
	  Server      := Values[sSERVER];
	  FDBPath     := Server + ':' + Values[sPATH];
	  FUserName   := Values[sUSER_NAME];
	  FPassword   := Values[sPASSWORD];

	  //�������� �������������� ��������� ����������
	  SetAddParams;
	  FCharSet    := Values[sCHAR_SET];
	  FSQLDialect := StrToInt( Values[sSQL_DIALECT] );
	  FLogPath    := Values[sLOG_FILE_PATH];

	  //��������� ���������� ���� � �����-������ �� �������
	  if not DirectoryExists( FLogPath )
	  then
		  FLogPath := ExtractFilePath( Application.ExeName ) + sLOG_FILE_NAME
	  else
		  //��������� ������� ������������ ����� ��� ���� �����-������
		  if IsDelimiter( PathDelim, FLogPath, Length( FLogPath ) )
		  then
			  FLogPath := FLogPath + sLOG_FILE_NAME
		  else
			  FLogPath := FLogPath + PathDelim + sLOG_FILE_NAME;

  end
  else begin
	  Raise EneException.CreateResCode( PResStringRec( @sEInvalidConnectParams ) );
  end;

end;

//��������� ��������� ��������� �� ����� ��������
procedure TneConnection.ReadIniFile( const aFileName: TFileName );
begin

  try
	try
		//��������� ������������� ����� ��������
		if FileExists( aFileName )
		then begin
			//�������� ��������� ����������
			LoadFromFile( aFileName );
			CheckParams;
			PutParams;
			ParamsIsValid := True;
		end
		else begin
			Raise EneException.CreateResCode( PResStringRec( @sEIniFileNotFound ) );
		end;

	except
		ParamsIsValid := False;
		Raise;
	end;
  except

	  on E: EneException
	  do begin
		MessageBox( Application.Handle, PChar( sErrorCode + IntToStr( E.ErrorCode ) + #13#10 + sErrorText + E.Message ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );
	  end;

	  on E: EConvertError
	  do begin
		MessageBox( Application.Handle, PChar( sErrorText + sEConvertError ), PChar( sMsgCaptionWrn ), MB_OK or MB_ICONWARNING );
	  end;

	  on E: Exception
	  do begin
		MessageBox( Application.Handle, PChar( sErrorText + E.Message ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );
	  end;

  end;

end;

end.
