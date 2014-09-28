{*******************************************************************************
* uExitDekretMain                                                                *
*                                                                              *
* ������� ������ ������� � �������� ������� ���                                *
* Copyright �  2007, ���� �. ������, �������� ������������ �����������         *
*******************************************************************************}


unit uExitDekretMain;

interface

uses uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TExitDekretSprav = class(TSprav)
    private
    public
        constructor Create;
        procedure   Show;override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uExitDekretForm;

function CreateSprav: TSprav;
begin
    Result := TExitDekretSprav.Create;
end;

constructor TExitDekretSprav.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_Order_Type', ftInteger);
    Input.FieldDefs.Add('Id_Order', ftInteger);
    Input.FieldDefs.Add('Date_Order', ftDate);
    Input.FieldDefs.Add('SpMode', ftInteger);
    Input.FieldDefs.Add('Num_Item', ftInteger);
    Input.FieldDefs.Add('Sub_Item', ftInteger);
    Input.FieldDefs.Add('Id_Order_Group', ftInteger);
    Input.FieldDefs.Add('Intro', ftString, 4096);
    Input.FieldDefs.Add('Note_Order', ftString, 255);
    Input.FieldDefs.Add('Num_Order', ftString, 10);

    Output.FieldDefs.Add('New_Id_Order', ftInteger);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

procedure TExitDekretSprav.Show;
var
    form: TfmExitDekretOrderForm;
    hnd: Integer;
begin
    form := TfmExitDekretOrderForm.Create(Application.MainForm);
    hnd := Input['DBHandle'];
    form.Prepare(Input['Id_Order'], Input['Date_Order'], Input['Id_Order_Type'],
        Input['Num_Order'], Input['Note_Order'], TISC_DB_HANDLE(hnd));

    form.ShowModal;
    form.Free;
end;

end.


