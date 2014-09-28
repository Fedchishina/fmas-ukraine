{*******************************************************************************
* upcOrdersPage                                                               *
*                                                                              *
* ������� � ������ ��������                                                     *
* Copyright �  2005, �������� �����, �������� ������������ �����������         *
*******************************************************************************}


unit uOrdersPage;

interface

uses     uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TpcOrdersPage = class(TSprav)
    public
        constructor Create;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uOrdersFrame, uOrdersDataModule;

function CreateSprav: TSprav;
begin
    Result := TpcOrdersPage.Create;
end;

constructor TpcOrdersPage.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_PCard', ftInteger);
    Input.FieldDefs.Add('Modify', ftInteger);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

function TpcOrdersPage.GetFrame: TFrame;
var
    DM: TdmOrders;
    hnd: Integer;
begin
    DM := TdmOrders.Create(Application.MainForm);
    hnd := Input['DBHandle'];
    DM.DB.Handle := TISC_DB_Handle(hnd);
    Result := TfmPCardOrdersPage.Create(Application.MainForm, DM, Input['Id_PCard'], Input['modify']);
end;

end.
