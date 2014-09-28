unit UpComandOrderMUnit;

interface

uses uCommonSp, Forms, Ibase, Variants, Dialogs;

type
    TUP_PrintOrder = class(TSprav)
    public
        constructor Create;
        procedure Show; override;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav; stdcall;
exports CreateSprav;

implementation

uses DB, UpComandOrderMain;

function CreateSprav: TSprav;
begin
    Result := TUP_PrintOrder.Create;
end;

constructor TUP_PrintOrder.Create;
begin
    inherited Create;
    //�������� �� �������� ���������� ������������� �������
    Input.FieldDefs.Add('id_order', ftInteger);

    //�������� �� �������� ���������� ������������� ���� �������
    Input.FieldDefs.Add('id_order_type', ftInteger);

    //�������� �� �������� ���������� ������������� ������ ������� ��� ��������������
    Input.FieldDefs.Add('id_item', ftInteger);

    //�������� �� �������� ���������� ������������� ����� ������� ������
    //0-����������, 1-��������������, 2-��������
    Input.FieldDefs.Add('mode', ftInteger);

    //�������� �� �������� ���������� ������� ����� ������ ������� ��� ���������
    Input.FieldDefs.Add('num_item', ftInteger);

    //�������� �� �������� ���������� ������� ����� ��� ������ ������� ��� ���������
    Input.FieldDefs.Add('num_sub_item', ftInteger);

    //����������� � ������� �����
    Input.FieldDefs.Add('outer_hwnd', ftInteger);

    PrepareMemoryDatasets;
end;

function TUP_PrintOrder.GetFrame: TFrame;
begin
    Result := TFrame(TFormComandMain.Create(Application.MainForm,
        TISC_DB_HANDLE(Integer(Input['DBHandle'])),
        Input['ID_ORDER'],
        Input['ID_ORDER_TYPE'],
        Input['NUM_ITEM'],
        Input['NUM_SUB_ITEM'],
        Input['ID_ITEM'],
        Input['MODE'],
        true,
        Input['outer_hwnd']));
end;

procedure TUP_PrintOrder.Show;
begin
    with TFormComandMain.Create(Application.MainForm,
        TISC_DB_HANDLE(Integer(Input['DBHandle'])),
        Input['ID_ORDER'],
        Input['ID_ORDER_TYPE'],
        Input['NUM_ITEM'],
        Input['NUM_SUB_ITEM'],
        Input['ID_ITEM'],
        Input['MODE'],
        false, 0) do
    begin
        ShowModal;
        Free;
    end;
end;

end.
