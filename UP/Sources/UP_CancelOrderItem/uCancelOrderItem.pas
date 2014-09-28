unit uCancelOrderItem;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uCancelOrderItem                                                           *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	������ ����������/���������/��������� ������ �������, ����������� �������  *
*   ������� ������ �������.                                                    *
*                                                                              *
* Copyright  �  ���� ��������: 24.11.06,  �����: ������� �.�                  *
*                                                                              *
*******************************************************************************}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, FIBQuery, pFIBQuery, pFIBStoredProc, DB, FIBDataSet,
  pFIBDataSet, FIBDatabase, pFIBDatabase, IBase, StdCtrls, Buttons, uFormControl,
  ExtCtrls, uCharControl, uFControl, uLabeledFControl, uSpravControl, uCommonSp,
  uInvisControl;

type
   
  //������ ��� �������� ��������� �����
  TRec_FieldDefs = record
      FName : String;
      FType : TFieldType;
  end; 
   
  //������ ������ ��������� ��� ������� ������� ���������
  TRec_HistoryInfo = record
      FIdSession  : Int64;
      FCodeSystem : Integer;
  end; 
  
  { *** ����������: ���������� ����������� ������� ��� ������������� ������ � �����������  *** }
  TCancelOrderItem = class(TSprav)
  private
      procedure SetFieldDefs;
  public
      constructor Create; reintroduce;
      function GetFrame: TFrame; override;
  end;

  { *** ����������: ���������� ������� ����������/���������/��������� ������ �������, ����������� ������� ������� ������ ������� *** }
  TfrCancelOrderItem = class(TFrame)

    pnlForButtons    : TPanel;
    gbxOrderItemAttr : TGroupBox;
    
    fmcWork          : TqFFormControl;
    edtNote          : TqFCharControl;
    edtItem          : TqFSpravControl;
    edtReason        : TqFCharControl;

    btnOK            : TBitBtn;
    btnCancel        : TBitBtn;

    dbWork           : TpFIBDatabase;
    dstWork          : TpFIBDataSet;
    spcWork          : TpFIBStoredProc;

    trRead           : TpFIBTransaction;
    trWrite          : TpFIBTransaction;

    edtIdOrder       : TqFInvisControl;
    edtNumItem       : TqFInvisControl;
    edtKeySession    : TqFInvisControl;
    edtNumSubItem    : TqFInvisControl;
    edtIdOrderItem   : TqFInvisControl;
    edtIdOrderType   : TqFInvisControl;
    
    procedure btnOKClick                 (Sender: TObject);
    procedure btnCancelClick             (Sender: TObject);
    procedure edtItemOpenSprav           (Sender: TObject; var Value: Variant; var DisplayText: String);
    procedure fmcWorkDatabaseEventAfter  (Sender: TObject; Form: TForm; Mode: TFormMode; Transaction: TFIBTransaction);
    procedure fmcWorkDatabaseEventBefore (Sender: TObject; Form: TForm; Mode: TFormMode; Transaction: TFIBTransaction);
    
  private
    FOuterHWND   : Integer;
    FHistoryInfo : TRec_HistoryInfo;

    function  GetOuterHWND   : Integer;
    function  GetHistoryInfo : TRec_HistoryInfo;
    procedure SetOuterHWND   ( aValue: Integer );
    procedure SetHistoryInfo ( aValue: TRec_HistoryInfo );
  public
    property pOuterHWND   : Integer          read GetOuterHWND   write SetOuterHWND;
    property pHistoryInfo : TRec_HistoryInfo read GetHistoryInfo write SetHistoryInfo;
  end;

  function CreateSprav: TSprav; stdcall;

  exports
      CreateSprav;
      
implementation

uses UpKernelUnit, AppStruClasses;
    
resourcestring

    {***************************************}
    {   *** ������� ������ ���������� ***   }
    {***************************************}

	//������������ ��������� �� ������
	sErrorTextUA    = '       �������: ';
	sErrorCodeUA    = '��� �������: ';
	sErrorAddrUA    = '������ �������: ';
	sContinueQstUA  = ' ����������?';
	sErrorTextExtUA = '�������: ';

	sMsgCaptionErrUA = '�������';
	sMsgCaptionWrnUA = '������������';
	sMsgCaptionInfUA = '����������';
	sMsgCaptionQstUA = 'ϳ�����������';

	sErr_KernelError        = '��������� ������� ����� ������!'#13'�������� ������ ��������������?';
	sErr_DBConnectionFailed = '�''������� � ����� ����� ���������!'#13'��������, ���� �����, ����� ���������';

    //����� �������� ����������

    //��������
    sPN_Mode          = 'Mode';
    sPN_Id_Order      = 'Id_Order';
    sPN_Num_Item      = 'Num_Item';
    sPN_DBHandle      = 'DBHandle';
    sPN_Outer_Hwnd    = 'Outer_Hwnd';
    sPN_Num_Sub_Item  = 'Num_Sub_Item';
    sPN_Id_Order_Item = 'Id_Item';
    sPN_Id_Order_Type = 'Id_Order_Type';
    //��������������
    sPN_Code_System = 'Code_System';

    //�������� �����
    sFN_ID_SESSION = 'ID_SESSION';

    //�������� ���������� ��
    sPPN_ID_SESSION    = 'IN_KEY_SESSION';
    sPPN_ID_ORDER_ITEM = 'IN_ID_ORDER_ITEM';

    //���� � ������ ������� �������
    sPTH_SP_OrderItems    = 'UP\UP_SpOrderItems70.bpl'; 
    sPTH_FilterOrderItems = 'UP\UP_FilterOrderItems70.bpl'; 

    //�������� ��
    sSPN_UP_DT_CANCEL_BUFF_DEL      = 'UP_DT_CANCEL_BUFF_DEL';
    sSPN_UP_DT_ORDER_ITEMS_BUFF_DEL = 'UP_DT_ORDER_ITEMS_BUFF_DEL';

    //SQL-�������
    sSQL_SEL_GetKeySession = 'SELECT U.ID_SESSION FROM UP_GET_ID_SESSION U'; 

const

	{*****************************************}
    {   *** ��������� ������ ���������� ***   }
    {*****************************************}

    cZERO                = 0;
    cTICK                = '''';
    cCOMMA               = ',';
    cBRACKET_OPEN        = '(';
    cBRACKET_CLOSE       = ')'; 
    cDEF_ID_SESSION      = -1;
    cDEF_CODE_SYSTEM     = 10;
    cDEF_KEY_FIELD_NAMES = '';

    cFieldDefs: array[0..7] of TRec_FieldDefs = (
      ( FName: sPN_Mode;          FType: ftInteger ),
      ( FName: sPN_Id_Order;      FType: ftVariant ),
      ( FName: sPN_Id_Order_Item; FType: ftVariant ),
      ( FName: sPN_Id_Order_Type; FType: ftVariant ),
      ( FName: sPN_Num_Item;      FType: ftInteger ),
      ( FName: sPN_Num_Sub_Item;  FType: ftInteger ),
      ( FName: sPN_Outer_Hwnd;    FType: ftInteger ),
      ( FName: sPN_Code_System;   FType: ftInteger ) );

{$R *.dfm}

function TfrCancelOrderItem.GetOuterHWND: Integer;
begin
  Result := FOuterHWND;
end;

function TfrCancelOrderItem.GetHistoryInfo: TRec_HistoryInfo;
begin
  Result := FHistoryInfo;
end;

procedure TfrCancelOrderItem.SetOuterHWND(aValue: Integer);
begin
  FOuterHWND := aValue;
end;

procedure TfrCancelOrderItem.SetHistoryInfo(aValue: TRec_HistoryInfo);
begin
  FHistoryInfo := aValue;
end;

function CreateSprav: TSprav;
begin
    Result := TCancelOrderItem.Create;
end;

{ TCancelOrderItem }
procedure TCancelOrderItem.SetFieldDefs;
var
    i, n : Integer;
begin
    n := High( cFieldDefs );
    
    for i := Low( cFieldDefs ) to n
    do 
        with cFieldDefs[i]
        do begin
            Input.FieldDefs.Add( FName, FType );
        end;
end;

//������� ��������� ������
constructor TCancelOrderItem.Create;
begin
    try
        inherited Create;
        SetFieldDefs;
        PrepareMemoryDataSets;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//���������� ��������������������� ��������� ������
function TCancelOrderItem.GetFrame: TFrame;
begin
    try
        if Input[sPN_DBHandle] <> 0
        then begin
            //������� ����� � �������������� ����������
            Result := TfrCancelOrderItem.Create( Application.MainForm );

            with Result as TfrCancelOrderItem
            do begin
                //���������� ����������� ������ ������������ ����
                SendMessage( Input[sPN_Outer_Hwnd], FMAS_MESS_GET_BUTTON_OK,     btnOK.Handle,     btnOK.Handle     );
                SendMessage( Input[sPN_Outer_Hwnd], FMAS_MESS_GET_BUTTON_CANCEL, btnCancel.Handle, btnCancel.Handle );
                
                dbWork.Handle := TISC_DB_Handle( Integer( Input[sPN_DBHandle] ) );
                trRead.StartTransaction;
                fmcWork.Prepare( dbWork, TFormMode( Input[sPN_Mode] ), Input[sPN_Id_Order_Item], Input[sPN_Id_Order] );
                
                //��������� �������� �������� �������� ����������
                pOuterHWND           := Input[sPN_Outer_Hwnd   ];
                edtIdOrder.Value     := Input[sPN_Id_Order     ];
                edtNumItem.Value     := Input[sPN_Num_Item     ];
                edtNumSubItem.Value  := Input[sPN_Num_Sub_Item ];
                edtIdOrderItem.Value := Input[sPN_Id_Order_Item];
                edtIdOrderType.Value := Input[sPN_Id_Order_Type];

                //��������� �������� �������������� �������� ����������
                with pHistoryInfo
                do begin
                    FIdSession := cDEF_ID_SESSION;

                    if VarIsNull( Input[sPN_Code_System] )
                    then begin
                        FCodeSystem := cDEF_CODE_SYSTEM;
                    end
                    else begin
                        FCodeSystem := Input[sPN_Code_System];
                    end;
                end;
                
            end;

        end
        else begin
            MessageBox( 0, PChar( sErr_DBConnectionFailed ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//����� ��������� ������ ������� � �����
procedure TfrCancelOrderItem.btnOKClick(Sender: TObject);
begin
    try
        //�������� ������������� ������ ������ � �����
        if ( fmcWork.Mode in [fmAdd, fmModify] )
        then begin
            if dstWork.Active then dstWork.Close;
            dstWork.SQLs.SelectSQL.Text := sSQL_SEL_GetKeySession;    
            try
                dstWork.Prepare;
                dstWork.Open;
                edtKeySession.Value := dstWork.FBN( sFN_ID_SESSION ).Value;
            finally
                dstWork.Close;
            end;
        end;
        
        //���������� ���������������� SQL-������� � ����������� �� ������ ������ ������
        fmcWork.Ok;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//������� �������� ���������
procedure TfrCancelOrderItem.fmcWorkDatabaseEventBefore(Sender: TObject;
  Form: TForm; Mode: TFormMode; Transaction: TFIBTransaction);
begin
    try 
        //��������� ������������� ������� ��������� ���������
        if ( fmcWork.Mode = fmModify )
        then begin

            with pHistoryInfo
            do begin
                //�������� �-��� ���� ��� ������� ��������� ���������
                StartHistory( TpFIBTransaction( Transaction ), FCodeSystem, FIdSession );
            end;
            
        end;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//����� ���� ��
procedure TfrCancelOrderItem.fmcWorkDatabaseEventAfter(Sender: TObject;
  Form: TForm; Mode: TFormMode; Transaction: TFIBTransaction);
var
    DlgResult      : Integer;
    IdOrderItem    : Int64;
    KernelResult   : Boolean;
    Ptr_KernelInfo : PUP_KERNEL_MODE_STRUCTURE;
begin
    try
        if ( fmcWork.Mode in [fmAdd, fmModify] )
        then begin
            try
                //�������� ������������� ������ �������
                case fmcWork.Mode of

                  fmAdd    : begin
                               IdOrderItem := fmcWork.LastId;
                             end;

                  fmModify : begin
                               IdOrderItem := edtIdOrderItem.Value;
                             end;
                end;
                
                //�������� ������ ��� ��������� �� ��������� ���� ��
                New( Ptr_KernelInfo );
            
                //��������� ��������� �������
                with Ptr_KernelInfo^
                do begin
                    AOWNER           := Self;
                    DBHANDLE         := dbWork.Handle;
                    TRHANDLE         := Transaction.Handle;
                    ID_ORDER         := edtIdOrder.Value;
                    KEY_SESSION      := edtKeySession.Value;
                    ID_ORDER_ITEM_IN := IdOrderItem;
                end;

                //�������� ����
                KernelResult := UpKernelDo( Ptr_KernelInfo );

                //����������� ��������� ������ ����
                if KernelResult
                then begin
                    if Transaction.InTransaction then Transaction.Commit;
                    SendMessage( pOuterHWND, FMAS_MESS_SAVE_ITEM_OK, 0, 0 );
                end
                else begin
                    SendMessage( pOuterHWND, FMAS_MESS_SAVE_ITEM_ERR, 0, 0 );
                    DlgResult := MessageBox( 0, PChar( sErr_KernelError ), PChar( sMsgCaptionWrnUA ), MB_OKCANCEL or MB_ICONWARNING );
                    
                    if DlgResult = ID_OK
                    then begin
                        GetUpSessionErrors( Self, dbWork.Handle, edtKeySession.Value, IdOrderItem );
                    end;
                end;

                //������� ������
                if trWrite.InTransaction then trWrite.Commit;
                spcWork.StoredProcName := sSPN_UP_DT_CANCEL_BUFF_DEL;
                spcWork.ParamByName( sPPN_ID_SESSION ).AsInt64 := edtKeySession.Value;

                try
                    trWrite.StartTransaction;
                    spcWork.Prepare;
                    spcWork.ExecProc;

                    spcWork.StoredProcName := sSPN_UP_DT_ORDER_ITEMS_BUFF_DEL;
                    spcWork.ParamByName( sPPN_ID_SESSION    ).AsInt64 := edtKeySession.Value;
                    spcWork.ParamByName( sPPN_ID_ORDER_ITEM ).AsInt64 := fmcWork.LastId;
                    spcWork.Prepare;
                    spcWork.ExecProc;
                finally
                    trWrite.Commit;
                    spcWork.Close; 
                end;

            finally
                //����������� �������
                if ( Ptr_KernelInfo <> nil )
                then begin
                    Dispose( Ptr_KernelInfo );
                    Ptr_KernelInfo := nil;
                end;
            end;
        end
        else begin
            //��������� ����� � ������ ���������
            if ( fmcWork.Mode = fmInfo )
            then begin
                btnCancel.Click;
            end;
        end;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//��������� �����
procedure TfrCancelOrderItem.btnCancelClick(Sender: TObject);
begin
    try
        SendMessage( pOuterHWND, FMAS_MESS_CLOSE_FRAME, 0, 0 );
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//�������� ���������� ������� ��������
procedure TfrCancelOrderItem.edtItemOpenSprav( Sender: TObject; var Value: Variant; var DisplayText: String);
{var
     FilterOrderItems : TSprav;
}begin
{    try
        try
            //C������ ������ ��� �����������
            SpOrderItems := GetSprav( sPTH_FilterOrderItems );

              if FilterOrderItems <> nil
              then begin
                  //��������� �������� ��������� �������
                  with FilterOrderItems
                  do begin
                      Input.Append;
                      Input.FieldValues[sPN_IN_SP_PCARD_DBHandle] := FInParams.FDBHandle;
                      Input.Post;

                      //���������� ������
                      Show;

                      //����������� ���������
                      if ( Output <> nil ) AND not Output.IsEmpty
                      then begin
                          Value       := Output[sPN_OUT_SP_PCARD_ID_PCARD];
                          DisplayText := Output[sPN_OUT_SP_PCARD_FIO     ];
                      end;
                  end;
              end
              else begin
                  MessageBox( Handle, PChar( sErr_SpravNotFound + sErr_SpPCardListNotFound ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
              end;
                 
        finally
            if FilterOrderItems <> nil then FreeAndNil( FilterOrderItems );
        end;
    except
        on E: Exception
        do begin
            MessageBox( Handle, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
}end;

end.

