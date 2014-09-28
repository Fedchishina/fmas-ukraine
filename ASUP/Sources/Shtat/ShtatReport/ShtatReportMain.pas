unit ShtatReportMain;

interface

uses    uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TShtatReport = class(TSprav)
    public
        constructor Create;
        procedure   Show;override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, U_Shtat_Rep065;

function CreateSprav: TSprav;
begin
    Result := TShtatReport.Create;
end;

constructor TShtatReport.Create;
begin
    inherited Create;
    //������� ����� �������: 1 - �������, 2 - ��� ����
    Input.FieldDefs.Add('IdMode', ftInteger);

    // ����������� ���������
    PrepareMemoryDatasets;
end;

procedure TShtatReport.Show;
var
    hnd: Integer;
    Shtat_Rep: TShtat_Rep;
begin
    hnd := Input['DBHandle'];
    Shtat_Rep:=TShtat_Rep.Create(nil, TISC_DB_HANDLE(hnd));
    Shtat_Rep.IdMode := Input['IdMode'];  //�������� ����� ������ �������
    if Input['IdMode'] = 2 then
        Shtat_Rep.Caption := Shtat_Rep.Caption + ' ��� ����';
    Shtat_Rep.ShowModal;
    Shtat_Rep.Free;
end;

end.

