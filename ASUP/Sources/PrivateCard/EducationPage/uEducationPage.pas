{*******************************************************************************
* upcEducationPage                                                               *
*                                                                              *
* ����������� � ������ ��������                                               *
* Copyright �  2005, �������� �����, �������� ������������ �����������         *
*******************************************************************************}


unit uEducationPage;

interface

uses     uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TpcEducationPage = class(TSprav)
    public
        constructor Create;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uEducationFrame, uEducationDataModule;

function CreateSprav: TSprav;
begin
    Result := TpcEducationPage.Create;
end;

constructor TpcEducationPage.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_PCard', ftInteger);
    Input.FieldDefs.Add('Modify', ftInteger);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

function TpcEducationPage.GetFrame: TFrame;
var
    DM: TdmEducation;
    hnd: Integer;
begin
    DM := TdmEducation.Create(Application.MainForm);
    hnd := Input['DBHandle'];
    DM.DB.Close;
    DM.DB.Handle := TISC_DB_Handle(hnd);
    Result := TfmPCardEducationPage.Create(Application.MainForm, DM, Input['Id_PCard'], Input['modify']);
end;

end.
