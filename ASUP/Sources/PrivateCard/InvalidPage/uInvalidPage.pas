{*******************************************************************************
* upcInvalidPage                                                               *
*                                                                              *
* ������������ � ������ ��������                                               *
* Copyright �  2005, �������� �����, �������� ������������ �����������         *
*******************************************************************************}


unit uInvalidPage;

interface

uses     uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TpcInvalidPage = class(TSprav)
    public
        constructor Create;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uInvalidFrame, uInvalidDataModule;

function CreateSprav: TSprav;
begin
    Result := TpcInvalidPage.Create;
end;

constructor TpcInvalidPage.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_PCard', ftInteger);
    Input.FieldDefs.Add('Modify', ftInteger);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

function TpcInvalidPage.GetFrame: TFrame;
var
    DM: TdmInvalid;
    hnd: Integer;
begin
    DM := TdmInvalid.Create(Application.MainForm);
    hnd := Input['DBHandle'];
    DM.DB.Handle := TISC_DB_Handle(hnd);
    Result := TfmPCardInvalidPage.Create(Application.MainForm, DM, Input['Id_PCard'], Input['modify']);
end;

end.
