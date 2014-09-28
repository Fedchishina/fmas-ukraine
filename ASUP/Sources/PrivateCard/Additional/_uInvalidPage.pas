{*******************************************************************************
* upcInvalidPage                                                               *
*                                                                              *
* ������������ � ������ ��������                                               *
* Copyright �  2005, �������� �����, �������� ������������ �����������         *
*******************************************************************************}


unit _uInvalidPage;

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

uses Variants, SysUtils, _uInvalidFrame, _uInvalidDataModule;

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
    DM: T_dmInvalid;
    hnd: Integer;
begin
    DM := T_dmInvalid.Create(Application.MainForm);
    hnd := Input['DBHandle'];
    DM.DB.Handle := TISC_DB_Handle(hnd);
    Result := T_fmPCardInvalidPage.Create(Application.MainForm, DM, Input['Id_PCard'], Input['modify']);
end;

end.
