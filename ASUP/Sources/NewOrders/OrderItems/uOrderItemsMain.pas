{*******************************************************************************
* uOrderItemsMain                                                              *
*                                                                              *
* ������� ������ ����������� ������� �������                                   *
* Copyright �  2007, ���� �. ������, �������� ������������ �����������         *
*******************************************************************************}


unit uOrderItemsMain;

interface

uses    uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TOrderItemsSprav = class(TSprav)
    private
    public
        constructor Create;
        procedure   Show;override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uOrderItems;

function CreateSprav: TSprav;
begin
    Result := TOrderItemsSprav.Create;
end;

constructor TOrderItemsSprav.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_Order', ftInteger);

    Output.FieldDefs.Add('Num_Item', ftInteger);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

procedure TOrderItemsSprav.Show;
var
    form: TfmOrderItems;
    hnd: Integer;
begin
    hnd := Input['DBHandle'];
    form := TfmOrderItems.Create(Application.MainForm, Input['Id_Order'],
        TISC_DB_HANDLE(hnd));
    if form.ShowModal = mrOk then
    begin
        Output.Append;
        Output['Num_Item'] := form.Num_Item;
        Output.Post;
    end;
    form.Free;
end;

end.

