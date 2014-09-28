{*******************************************************************************
* upcBonusPage                                                                 *
*                                                                              *
* ��������/������ � ������ ��������                                            *
* Copyright �  2005, �������� �����, �������� ������������ �����������         *
*******************************************************************************}


unit uBonusPage;

interface

uses     uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TpcBonusPage = class(TSprav)
    public
        constructor Create;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uBonusFrame, uBonusDataModule;

function CreateSprav: TSprav;
begin
    Result := TpcBonusPage.Create;
end;

constructor TpcBonusPage.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_PCard', ftInteger);
    Input.FieldDefs.Add('Modify', ftInteger);
    Input.FieldDefs.Add('Actual_Date', ftDate);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

function TpcBonusPage.GetFrame: TFrame;
var
    DM: TdmBonus;
    hnd: Integer;
begin
    DM := TdmBonus.Create(Application.MainForm);
    hnd := Input['DBHandle'];
    DM.DB.Handle := TISC_DB_Handle(hnd);
    Result := TfmPCardBonusPage.Create(Application.MainForm, DM, Input['Id_PCard'], Input['modify'], Input['Actual_Date']);
end;

end.
