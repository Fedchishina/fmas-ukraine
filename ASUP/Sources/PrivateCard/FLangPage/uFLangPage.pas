{*******************************************************************************
* upcFLangPage                                                               *
*                                                                              *
* �������� ������������ ������� � ������ ��������                                             *
* Copyright �  2005, �������� �����, �������� ������������ �����������         *
*******************************************************************************}


unit uFLangPage;

interface

uses     uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TpcFLangPage = class(TSprav)
    public
        constructor Create;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uFLangFrame, uFLangDataModule;

function CreateSprav: TSprav;
begin
    Result := TpcFLangPage.Create;
end;

constructor TpcFLangPage.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_PCard', ftInteger);
    Input.FieldDefs.Add('Modify', ftInteger);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

function TpcFLangPage.GetFrame: TFrame;
var
    DM: TdmFLang;
    hnd: Integer;
begin
    DM := TdmFLang.Create(Application.MainForm);
    hnd := Input['DBHandle'];
    DM.DB.Handle := TISC_DB_Handle(hnd);
    Result := TfmPCardFLangPage.Create(Application.MainForm, DM, Input['Id_PCard'], Input['modify']);
end;

end.
