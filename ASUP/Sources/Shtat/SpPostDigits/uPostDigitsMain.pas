{*******************************************************************************
* uPostDigitsMain                                                              *
*                                                                              *
* ������� ������ �������� ��� ����������                                       *
* Copyright �  2006, ���� �. ������, �������� ������������ �����������         *
*******************************************************************************}

unit uPostDigitsMain;

interface

uses uCommonSp, DB, Forms, Dialogs, Controls, uPostDigitsView,
    uPostDigitsDataModule, IBase;

type
    TPostDigitsSprav = class(TSprav)
    private
        DataModule: TdmPostDigits;
        IsConnected: Boolean;
        procedure PrepareConnect;
        procedure FillParams;
    public
        constructor Create;
        destructor Destroy; override;
        procedure Show; override;
        procedure GetInfo; override;
        function Exists: boolean; override;
    end;

function CreateSprav: TSprav; stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils;

function CreateSprav: TSprav;
begin
    Result := TPostDigitsSprav.Create;
end;

constructor TPostDigitsSprav.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Actual_Date', ftDate);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

destructor TPostDigitsSprav.Destroy;
begin
    inherited Destroy;

    if IsConnected then
    begin
        DataModule.ReadTransaction.Active := False;
        DataModule.WriteTransaction.Active := False;
    end;

    DataModule.Free;
end;

        // ����������� ���������� � �����

procedure TPostDigitsSprav.PrepareConnect;
var
    hnd: Integer;
begin
    DataModule := TdmPostDigits.Create(Application.MainForm);

    with DataModule do
    begin
        if Database.Connected then
            Database.Connected := False;
        hnd := Input['DBHandle'];
        Database.Handle := TISC_DB_HANDLE(hnd);
    end;

    FillParams;

    IsConnected := True;
end;

procedure TPostDigitsSprav.FillParams;
begin
    Input.Edit;

    if VarIsNull(Input['Actual_Date']) then
        Input['Actual_Date'] := Date;

    Input.Post;
end;

procedure TPostDigitsSprav.Show;
var
    form: TfmPostDigitsView;
begin
    if not IsConnected then PrepareConnect;

    form := TfmPostDigitsView.Create(Application.MainForm, DataModule);
    begin
        form.FormStyle := fsMDIChild;
        form.WindowState := wsMaximized;
    end;
end;

function TPostDigitsSprav.Exists: boolean;
begin
    if not IsConnected then PrepareConnect;
    Result := True;
end;

procedure TPostDigitsSprav.GetInfo;
begin
    if not IsConnected then PrepareConnect;
end;

end.
