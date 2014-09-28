unit UP_AllHolidayPage;

interface

uses  uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TpcMovingsPage = class(TSprav)
    public
        constructor Create;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, UP_AllHolidayFrame;

function CreateSprav: TSprav;
begin
    Result := TpcMovingsPage.Create;
end;

constructor TpcMovingsPage.Create;
begin
    inherited Create;

    // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_PCard', ftInteger);
    Input.FieldDefs.Add('Modify', ftInteger);
    Input.FieldDefs.Add('Actual_Date', ftDate);
    Input.FieldDefs.Add('Select_Type',ftInteger);

    // ����������� ���������
    PrepareMemoryDatasets;
end;

function TpcMovingsPage.GetFrame: TFrame;
begin
     Result := TfrAllHolidaysPage.Create(Application.MainForm,
                                         TISC_DB_HANDLE(Integer(Input['DBHandle'])),
                                         Input['Id_PCard'],
                                         Input['Actual_Date'],
                                         0);
end;
end.
