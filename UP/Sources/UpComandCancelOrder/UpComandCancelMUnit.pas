unit UpComandCancelMUnit;

interface

Uses uCommonSp, Forms, Ibase, Variants, Dialogs, SysUtils;

Type
    TUP_ComandCancelOrder = Class(TSprav)
    public
        Constructor Create;
        Procedure Show; override;
        Function GetFrame: TFrame; override;
    End;

Function CreateSprav: TSprav; stdcall;
Exports CreateSprav;

implementation

Uses DB, UpComandCancelMain;


Function CreateSprav: TSprav;
Begin
    Result := TUP_ComandCancelOrder.Create;
End;

Constructor TUP_ComandCancelOrder.Create;
Begin
    Try
        Inherited Create;
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
    Except On E: Exception Do
            Showmessage(E.Message);
    End;
End;

Function TUP_ComandCancelOrder.GetFrame: TFrame;
Begin
    Result := TFrame(TFormComandCancelMain.Create(Application.MainForm,
        TISC_DB_HANDLE(Integer(Input['DBHandle'])),
        Input['ID_ORDER'],
        Input['ID_ORDER_TYPE'],
        Input['NUM_ITEM'],
        Input['NUM_SUB_ITEM'],
        Input['ID_ITEM'],
        Input['MODE'],
        true,
        Input['outer_hwnd']));
End;

Procedure TUP_ComandCancelOrder.Show;
Begin
    With TFormComandCancelMain.Create(Application.MainForm,
        TISC_DB_HANDLE(Integer(Input['DBHandle'])),
        Input['ID_ORDER'],
        Input['ID_ORDER_TYPE'],
        Input['NUM_ITEM'],
        Input['NUM_SUB_ITEM'],
        Input['ID_ITEM'],
        Input['MODE'],
        false, 0) Do
    Begin
        ShowModal;
        Free;
    End;
End;


end.
 