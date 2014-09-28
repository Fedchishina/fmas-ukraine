{*******************************************************************************
* uCommonSp                                                                    *
*                                                                              *
* ����� ��������� �������� � ������������� ������������                        *
* Copyright �  2004, ���� �. ������                                            *
*******************************************************************************}
{-$Id: uCommonSp.pas,v 1.10 2007/07/24 12:35:19 oleg Exp $}

unit uCommonSp;

interface

uses RxMemDs, Windows, Dialogs, Forms, Controls,  SysUtils, DB;

type
        { �������� ����� ����������� }
    TSprav = class
    private
        FInput: TRxMemoryData;
        FOutput: TRxMemoryData;
    public
        constructor Create;
        destructor  Destroy;override;

            // �������� ����������
        procedure Show;virtual;

            // ���������� �����
        function GetFrame: TFrame;virtual;

            // ����� �� ������� ����������
        function CanClose: Boolean;virtual;

            // �������� ���������� �� �������(��)
        procedure GetInfo;virtual;

            // ��������� ������������� �������
        function  Exists: Boolean;virtual;

            // ��������� ��� �����������
        procedure SetShowStyle(FormStyle: TFormStyle);

    protected
            // ������� ���� �� ����������� ����� � ��������� �������/�������� ���������
            // ���������� �������� � �������-����������� � ����� ������������
        procedure PrepareMemoryDatasets;
    published

            // ������� ���������
        property Input: TRxMemoryData read FInput write FInput;

            // �������� ���������
        property Output: TRxMemoryData read FOutput write FOutput;
    end;

        // ����� ������� ����� ����������� � ������ ������, ����������� ����������
    CreateSpravProc = function: TSprav;stdcall;

resourcestring
    LoadSpravPackageError = '��������� ����������� �����';
    LoadSpravFunctionNotFound = '��������� ������ ������� CreateSprav!';
    LoadSpravLoading = '������������� �����: ';

        // ������� ������ ����������� �� ���������������� ������
        // '.bpl' ����� �� ���������
function GetSprav(Package: String): TSprav; stdcall;
exports GetSprav;

implementation
uses NagScreenUnit;

function GetSprav(Package: String): TSprav; stdcall;
var
    HandlePack: HModule;
    fun: CreateSpravProc;
    NagScreen: TNagScreen;
    OldCursor: TCursor;
begin
    Result := nil;

    if Pos('.bpl', Package) = 0 then Package := Package + '.bpl';

    HandlePack:=GetModuleHandle(PChar(Package));
    if HandlePack<32 then
    begin
        OldCursor := Screen.Cursor;
        Screen.Cursor := crHourGlass;
        NagScreen := TNagScreen.Create(Application.MainForm);
        NagScreen.Show;
        try
            NagScreen.SetStatusText(LoadSpravLoading + Package);
            HandlePack := LoadPackage(Package);
            Screen.Cursor := OldCursor;
            NagScreen.Free;
        except
            Screen.Cursor := OldCursor;
            NagScreen.Free;
        end;
    end;

    if HandlePack > 0 then
    begin
        @fun := GetProcAddress(HandlePack,PChar('CreateSprav'));
        if @fun <> nil then Result := fun
        else
        MessageDlg(LoadSpravFunctionNotFound + ' ' + Package, mtError, [mbOk], 0);
    end
    else
    begin
        MessageDlg(LoadSpravPackageError + ' ' + Package, mtError, [mbOk], 0);
        Exit;
    end;
end;

procedure TSprav.SetShowStyle(FormStyle: TFormStyle);
begin
    if FormStyle = fsMDIChild then FInput['ShowStyle'] := 1
    else FInput['ShowStyle'] := 0;
end;

constructor TSprav.Create;
begin
    inherited Create;
    FInput := TRxMemoryData.Create(nil);
    FOutput := TRxMemoryData.Create(nil);

        // ������� ����������� ����������� �����
        
        // ��� ������: ���������(0), MDIChild (1)
    FInput.FieldDefs.Add('ShowStyle', ftInteger);
        // ���������� ���� ������
        // ��������������� TISC_DB_HANDLE � Integer � �������!
    FInput.FieldDefs.Add('DBHandle', ftInteger);
        // ��� ������: ��� (0), ������� (1), ������������� (2)
    FInput.FieldDefs.Add('Select', ftInteger);
        // ������������� ������������
    FInput.FieldDefs.Add('Id_User', ftInteger);
end;

destructor  TSprav.Destroy;
begin
    FInput.Free;
    FOutput.Free;
    inherited Destroy;
end;

procedure TSprav.PrepareMemoryDatasets;
var
    i: Integer;
begin
        // ������� ����
    for i:=0 to Input.FieldDefs.Count-1 do
        Input.FieldDefs[i].CreateField(Input);
    for i:=0 to Output.FieldDefs.Count-1 do
        Output.FieldDefs[i].CreateField(Output);
        // ������� MemoryDatasets
    Input.Open;
    Output.Open;
end;

procedure TSprav.Show;
begin
end;

function TSprav.GetFrame: TFrame;
begin
    Result := nil;
end;

function TSprav.CanClose: Boolean;
begin
    Result := True;
end;

procedure TSprav.GetInfo;
begin
end;

function  TSprav.Exists: Boolean;
begin
    Result := True;
end;

end.
