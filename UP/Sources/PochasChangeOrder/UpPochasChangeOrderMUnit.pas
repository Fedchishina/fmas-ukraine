unit UpPochasChangeOrderMUnit;

interface

uses uCommonSp, Forms, Ibase, Variants, Dialogs;

type
    TUP_PochasChangeOrder = class(TSprav)
    public
        constructor Create;
        procedure Show; override;
        function GetFrame: TFrame; override;
    end;

function CreateSprav: TSprav; stdcall;
exports CreateSprav;

implementation

uses DB, UpPochasChangeMain;

function CreateSprav: TSprav;
begin
    Result := TUP_PochasChangeOrder.Create;
end;

constructor TUP_PochasChangeOrder.Create;
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

function TUP_PochasChangeOrder.GetFrame: TFrame;
begin
    Result := TFrame(TFormPochasChangeMain.Create(Application.MainForm,
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

procedure TUP_PochasChangeOrder.Show;
begin
    with TFormPochasChangeMain.Create(Application.MainForm,
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
