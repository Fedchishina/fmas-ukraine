unit UTextOrder;

interface

uses uCommonSp, Forms, Ibase, Variants, Dialogs, DB, Classes;

type
    TUP_TextOrder = class(TSprav)
    public
        form:TForm;
        constructor Create;
        destructor Destroy;override;
        function GetFrame:TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
 exports CreateSprav;

implementation

uses UMainTextOrder;

{ TUP_TextOrder }
function CreateSprav: TSprav;
begin
     Result := TUP_TextOrder.Create;
end;

constructor TUP_TextOrder.Create;
begin
    inherited Create;
    //�������� �� �������� ���������� ������������� �������
    Input.FieldDefs.Add('id_order', ftInteger);

    //�������� �� �������� ���������� ������������� ���� �������
    Input.FieldDefs.Add('id_order_type', ftInteger);

    //�������� �� �������� ���������� ������������� ������ ������� ��� ��������������
    Input.FieldDefs.Add('id_item', ftInteger);

    //�������� �� �������� ���������� ������������� ����� ������� ������
    //0-����������, 1-��������������, 3-��������
    Input.FieldDefs.Add('mode', ftInteger);

    //�������� �� �������� ���������� ������� ����� ������ ������� ��� ���������
    Input.FieldDefs.Add('num_item', ftInteger);

    //�������� �� �������� ���������� ������� ����� ��� ������ ������� ��� ���������
    Input.FieldDefs.Add('num_sub_item', ftInteger);

    Input.FieldDefs.Add('FOwner', ftInteger);

    Input.FieldDefs.Add('outer_hwnd', ftInteger);

    PrepareMemoryDatasets;
end;

destructor TUP_TextOrder.Destroy;
begin
     if assigned(form) then Form.Free;
     inherited;
end;

function TUP_TextOrder.GetFrame: TFrame;
begin
     Form:= TfrmMainTextOrder.Create(Application.MainForm,
             TISC_DB_HANDLE(Integer(Input['DBHandle'])),
             Input['ID_ORDER'],
             Input['ID_ORDER_TYPE'],
             Input['NUM_ITEM'],
             Input['NUM_SUB_ITEM'],
             Input['ID_ITEM'],
             Input['MODE'],
             true,
             Input['outer_hwnd']);

     Result:=TFrame(Form);
end;

end.
