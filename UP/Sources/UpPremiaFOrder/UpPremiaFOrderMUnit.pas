unit UpPremiaFOrderMUnit;

interface

uses uCommonSp, Forms, Ibase, Variants, Dialogs;

type
    TUP_PrintOrder = class(TSprav)
    public
        constructor Create;
        procedure Show; override;
        function GetFrame:TFrame; override;
    end;

function CreateSprav: TSprav;stdcall;
 exports CreateSprav;

implementation

uses DB, UpPremiaFOrderForm;

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
    //0-����������, 1-��������������, 3-��������
    Input.FieldDefs.Add('mode', ftInteger);

    //�������� �� �������� ���������� ������� ����� ������ ������� ��� ���������
    Input.FieldDefs.Add('num_item', ftInteger);

    //�������� �� �������� ���������� ������� ����� ��� ������ ������� ��� ���������
    Input.FieldDefs.Add('num_sub_item', ftInteger);

    //����������� � ������� �����
    Input.FieldDefs.Add('outer_hwnd', ftInteger);

    //��������� ����������� ��� ���� �������
    Input.FieldDefs.Add('ViewKeySession'   ,ftLargeint);
    Input.FieldDefs.Add('only_save_in_buff',ftInteger);
    Input.FieldDefs.Add('linkto'           ,ftInteger);
    PrepareMemoryDatasets;
end;

function TUP_PrintOrder.GetFrame: TFrame;
begin
     Result:=TFrame(TfmPremiaOrder.Create(Application.MainForm,
                                         TISC_DB_HANDLE(Integer(Input['DBHandle'])),
                                         Input['ID_ORDER'],
                                         Input['ID_ORDER_TYPE'],
                                         Input['NUM_ITEM'],
                                         Input['NUM_SUB_ITEM'],
                                         Input['ONLY_SAVE_IN_BUFF'],
                                         Input['LINKTO'],
                                         Input['ID_ITEM'],
                                         Input['MODE'],
                                         Input['ViewKeySession'],
                                         true,
                                         Input['outer_hwnd']));
end;

procedure TUP_PrintOrder.Show;
begin
     with TfmPremiaOrder.Create(Application.MainForm,
                               TISC_DB_HANDLE(Integer(Input['DBHandle'])),
                               Input['ID_ORDER'],
                               Input['ID_ORDER_TYPE'],
                               Input['NUM_ITEM'],
                               Input['NUM_SUB_ITEM'],
                               Input['ONLY_SAVE_IN_BUFF'],
                               Input['LINKTO'],
                               Input['ID_ITEM'],
                               Input['MODE'],
                               Input['ViewKeySession'],
                               false,0) do
     begin
          IdRaise.Visible:=False;
          ShowModal;
          Free;
     end;
end;

end.
