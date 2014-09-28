{*******************************************************************************
* upcPensionPage                                                               *
*                                                                              *
* ������ � ������ ��������                                                     *
* Copyright �  2005, �������� �����, �������� ������������ �����������         *
*******************************************************************************}


unit uPensionPage;

interface

uses     uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TpcPensionPage = class(TSprav)
    public
        constructor Create;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uPensionFrame;

function CreateSprav: TSprav;
begin
    Result := TpcPensionPage.Create;
end;

constructor TpcPensionPage.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_PCard', ftInteger);
    Input.FieldDefs.Add('Modify', ftInteger);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

function TpcPensionPage.GetFrame: TFrame;
var
    hnd: Integer;
begin
    hnd:=Input['DBHandle'];
    Result := TfmPCardPensionPage.Create(Application.MainForm, Input['Id_PCard'], Input['modify'], hnd);
end;

end.
