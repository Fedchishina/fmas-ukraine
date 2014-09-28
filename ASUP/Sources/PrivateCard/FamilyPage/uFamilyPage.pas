{*******************************************************************************
* upcFamilyPage                                                               *
*                                                                              *
* ������� � ������ ��������                                                     *
* Copyright �  2005, �������� �����, �������� ������������ �����������         *
*******************************************************************************}


unit uFamilyPage;

interface

uses     uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TpcFamilyPage = class(TSprav)
    public
        constructor Create;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uFamilyFrame, uFamilyDataModule;

function CreateSprav: TSprav;
begin
    Result := TpcFamilyPage.Create;
end;

constructor TpcFamilyPage.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_PCard', ftInteger);
    Input.FieldDefs.Add('Modify', ftInteger);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

function TpcFamilyPage.GetFrame: TFrame;
var
    DM: TdmFamily;
    hnd: Integer;
begin
    DM := TdmFamily.Create(Application.MainForm);
    hnd := Input['DBHandle'];
    DM.DB.Handle := TISC_DB_Handle(hnd);
    Result := TfmPCardFamilyPage.Create(Application.MainForm, DM, Input['Id_PCard'], Input['modify']);
end;

end.
