unit uCancelOrderItemTMP;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uCancelOrderItemTMP                                                        *
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
  uInvisControl, uDateControl, uIntControl, cxControls, cxSplitter,
  OleCtrls, SHDocVw, HTTPApp, HTTPProd;

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
  TfmCancelOrderItem = class(TForm)
    splWebBrow             : TcxSplitter;

    pnlForButtons          : TPanel;
    pnlWebBrowContainer    : TPanel;

    gbxItemAttr            : TGroupBox;
    gbxCancelItemAttr      : TGroupBox;
                        
    fmcWork                : TqFFormControl;

    btnOK                  : TBitBtn;
    btnCancel              : TBitBtn;

    dbWork                 : TpFIBDatabase;
    dstWork                : TpFIBDataSet;
    spcWork                : TpFIBStoredProc;

    trRead                 : TpFIBTransaction;
    trWrite                : TpFIBTransaction;

    edtBody                : TqFInvisControl;
    edtNumCancelItem       : TqFIntControl;
    edtNumCancelSubItem    : TqFIntControl;
    edtDateProjCancelOrder : TqFDateControl;

    cbxBoby                : TCheckBox;
    wbbBody                : TWebBrowser;
    pprBody                : TPageProducer;

    edtNote                : TqFCharControl;
    edtReason              : TqFCharControl;
    edtIdOrder             : TqFInvisControl;
    edtNumItem             : TqFInvisControl;
    edtNumSubItem          : TqFInvisControl;
    edtKeySession          : TqFInvisControl;
    edtIdOrderItem         : TqFInvisControl;
    edtIdOrderType         : TqFInvisControl;
    edtNumProjCancelOrder  : TqFCharControl;
       
    procedure FormClose                   (Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick                  (Sender: TObject);
    procedure cbxBobyClick                (Sender: TObject);
    procedure btnCancelClick              (Sender: TObject);
    procedure fmcWorkDatabaseEventAfter   (Sender: TObject; Form: TForm; Mode: TFormMode; Transaction: TFIBTransaction);
    procedure fmcWorkDatabaseEventBefore  (Sender: TObject; Form: TForm; Mode: TFormMode; Transaction: TFIBTransaction);
    procedure edtNumProjCancelOrderChange (Sender: TObject);
    
  private
    FOuterHWND   : Integer;
    FTmpFileName : String;
    FHistoryInfo : TRec_HistoryInfo;

    function  GetOuterHWND   : Integer;
    function  GetHistoryInfo : TRec_HistoryInfo;
    procedure ShowHTMLDoc;
    procedure SetOuterHWND   ( aValue: Integer );
    procedure SetHistoryInfo ( aValue: TRec_HistoryInfo );
  public
    destructor Destroy; override;
    
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

	sErr_KernelError              = '��������� ������� ����� ������!'#13'�������� ������ ��������������?';
	sErr_DBConnectionFailed       = '�''������� � ����� ����� ���������!'#13'��������, ���� �����, ����� ���������';
	sWrn_IvalidCanceledItemAttrUA = '��������� ������� ����� ������, �������'#13'���� �(��) ���� ��������(�) ������� �� ����!';

    //����� �������� ����������

    //��������
    sPN_Mode           = 'Mode';
    sPN_Id_Order       = 'Id_Order';
    sPN_Num_Item       = 'Num_Item';
    sPN_DBHandle       = 'DBHandle';
    sPN_Outer_Hwnd     = 'Outer_Hwnd';
    sPN_Num_Sub_Item   = 'Num_Sub_Item';
    sPN_Id_Order_Item  = 'Id_Item';
    sPN_Id_Order_Type  = 'Id_Order_Type';
    //��������������
    sPN_Code_System    = 'Code_System';

    //�������� �����
    sFN_BODY           = 'OUT_BODY';
    sFN_ID_SESSION     = 'ID_SESSION';
    sFN_BOOLEAN_RESULT = 'OUT_BOOLEAN_RESULT';

    //�������� ���������� ��
    sPPN_ID_SESSION             = 'IN_KEY_SESSION';
    sPPN_ID_ORDER_ITEM          = 'IN_ID_ORDER_ITEM';
    sPPN_NUM_CANCEL_ITEM        = 'IN_NUM_CANCEL_ITEM';
    sPPN_NUM_CANCEL_SUB_ITEM    = 'IN_NUM_CANCEL_SUB_ITEM';
    sPPN_NUM_PROJ_CANCEL_ORDER  = 'IN_NUM_PROJ_CANCEL_ORDER';
    sPPN_DATE_PROJ_CANCEL_ORDER = 'IN_DATE_PROJ_CANCEL_ORDER';

    //�������� ��
    sSPN_UP_DT_CANCEL_BUFF_DEL           = 'UP_DT_CANCEL_BUFF_DEL';
    sSPN_UP_DT_ORDER_ITEMS_BUFF_DEL      = 'UP_DT_ORDER_ITEMS_BUFF_DEL';
    sSPN_UP_GET_CANCEL_ORDER_ITEM_TMP    = 'UP_GET_CANCEL_ORDER_ITEM_TMP';
    sSPN_UP_CHK_CANCELED_ITEM_EXISTS_TMP = 'UP_CHK_CANCELED_ITEM_EXISTS_TMP';

    //SQL-�������
    sSQL_SEL_GetKeySession      = 'SELECT U.ID_SESSION FROM UP_GET_ID_SESSION U'; 
    sSQL_SEL_GetCancelOrderItem = 'SELECT * FROM '; 

const

	{*****************************************}
    {   *** ��������� ������ ���������� ***   }
    {*****************************************}

    cZERO                = 0;
    cTICK                = '''';
    cCOLON               = ':';
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

function TfmCancelOrderItem.GetOuterHWND: Integer;
begin
  Result := FOuterHWND;
end;

function TfmCancelOrderItem.GetHistoryInfo: TRec_HistoryInfo;
begin
  Result := FHistoryInfo;
end;

procedure TfmCancelOrderItem.SetOuterHWND(aValue: Integer);
begin
  FOuterHWND := aValue;
end;

procedure TfmCancelOrderItem.SetHistoryInfo(aValue: TRec_HistoryInfo);
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
var
    fmCancelOrderItem : TfmCancelOrderItem;
begin
    try
        if Input[sPN_DBHandle] <> 0
        then begin
            try
                //������� ����� � �������������� ����������
                fmCancelOrderItem := TfmCancelOrderItem.Create( Application.MainForm );

                with fmCancelOrderItem
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

                    //����������� �������� �� ���������
                    FTmpFileName :=   GetEnvironmentVariable( 'HOMEDRIVE' )
                                    + GetEnvironmentVariable( 'HOMEPATH'  ) + '\'
                                    + 'hpoqwienyr-9q834nyr'
                                    + '.tmp';

                    case fmcWork.Mode of
                      fmAdd    : begin
                                   cbxBoby.Checked := False;
                                   edtDateProjCancelOrder.Value := Now; 
                                 end;

                      fmInfo,
                      fmModify : ShowHTMLDoc;
                    end;
                
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

                //���������� ��������� ���������� ������� � ���� ������ 11.10.2007 ������� ���������� �.�.
                Result := TFrame( fmCancelOrderItem );

            finally
                fmCancelOrderItem := nil;
            end;

        end
        else begin
            Result := nil;
            MessageBox( 0, PChar( sErr_DBConnectionFailed ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    except
        on E: Exception
        do begin
            Result := nil;
            if fmCancelOrderItem <> nil then FreeAndNil( fmCancelOrderItem );
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//����� ��������� ������ ������� � �����
procedure TfmCancelOrderItem.btnOKClick(Sender: TObject);
var
    CheckResult : Boolean;
begin
    try
        CheckResult := True;
        
        if ( fmcWork.Mode in [fmAdd, fmModify] )
        then begin
            //��������� �������� ������������ ��������� ������������� ������
            spcWork.StoredProcName := sSPN_UP_CHK_CANCELED_ITEM_EXISTS_TMP;

            //��������� ��������� �� ��� ��������
            spcWork.ParamByName( sPPN_NUM_PROJ_CANCEL_ORDER  ).Value  := edtNumProjCancelOrder.Value;
            spcWork.ParamByName( sPPN_DATE_PROJ_CANCEL_ORDER ).AsDate := edtDateProjCancelOrder.Value;
            spcWork.ParamByName( sPPN_NUM_CANCEL_ITEM        ).Value  := edtNumCancelItem.Value;
            spcWork.ParamByName( sPPN_NUM_CANCEL_SUB_ITEM    ).Value  := edtNumCancelSubItem.Value;
                
            try
                if trWrite.InTransaction then trWrite.Rollback;
                
                trWrite.StartTransaction;
                spcWork.Prepare;
                spcWork.ExecProc;

                CheckResult := spcWork.FieldByName( sFN_BOOLEAN_RESULT ).Value;
            finally
                trWrite.Commit;
                spcWork.Close;
            end;
            
            //�������� ������������� ������ ������ � �����
            if CheckResult
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
        end;
        
        //���������� ���������������� SQL-������� � ����������� �� ����������� �������� � ������ ������ ������
        if CheckResult
        then begin
            fmcWork.Ok;
        end
        else begin
            ModalResult := mrNone;
            MessageBox( 0, PChar( sWrn_IvalidCanceledItemAttrUA ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
        end;

    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//������� �������� ���������
procedure TfmCancelOrderItem.fmcWorkDatabaseEventBefore(Sender: TObject;
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
procedure TfmCancelOrderItem.fmcWorkDatabaseEventAfter(Sender: TObject;
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
            //�������� ������������� ������ �������
            case fmcWork.Mode of

              fmAdd    : begin
                           IdOrderItem := fmcWork.LastId;
                         end;

              fmModify : begin
                           IdOrderItem := edtIdOrderItem.Value;
                         end;
            end;

            try
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
                    spcWork.ParamByName( sPPN_ID_ORDER_ITEM ).AsInt64 := IdOrderItem;
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
procedure TfmCancelOrderItem.btnCancelClick(Sender: TObject);
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

//������� ��������� ���� ��� ����������� ���� ������ �������
destructor TfmCancelOrderItem.Destroy;
begin
    if FileExists( FTmpFileName ) then DeleteFile( FTmpFileName );
    inherited;
end;

//���������� ���� ������ �������
procedure TfmCancelOrderItem.cbxBobyClick(Sender: TObject);
var
    v : Variant;
begin
    //������� �������
    wbbBody.Navigate( 'about:blank' ); 

    if cbxBoby.Checked
    then begin
        //�������� ���� ������ �������
        if dstWork.Active then dstWork.Close;
        dstWork.SQLs.SelectSQL.Text :=   sSQL_SEL_GetCancelOrderItem
                                       + sSPN_UP_GET_CANCEL_ORDER_ITEM_TMP    + cBRACKET_OPEN
                                       + cCOLON + sPPN_NUM_PROJ_CANCEL_ORDER  + cCOMMA    
                                       + cCOLON + sPPN_DATE_PROJ_CANCEL_ORDER + cCOMMA    
                                       + cCOLON + sPPN_NUM_CANCEL_ITEM        + cCOMMA    
                                       + cCOLON + sPPN_NUM_CANCEL_SUB_ITEM    + cBRACKET_CLOSE;    

        dstWork.ParamByName( sPPN_NUM_PROJ_CANCEL_ORDER  ).Value  := edtNumProjCancelOrder.Value;
        dstWork.ParamByName( sPPN_DATE_PROJ_CANCEL_ORDER ).AsDate := edtDateProjCancelOrder.Value;
        dstWork.ParamByName( sPPN_NUM_CANCEL_ITEM        ).Value  := edtNumCancelItem.Value;
        dstWork.ParamByName( sPPN_NUM_CANCEL_SUB_ITEM    ).Value  := edtNumCancelSubItem.Value;

        dstWork.Prepare;

        try
            dstWork.Open;
            edtBody.Value := dstWork.FBN( sFN_BODY ).Value;
        finally
            dstWork.Close;
        end;

        //���������� ���� ������ �������
        ShowHTMLDoc;
    end;
end;

//���������� ���� ����������� ���� ������� ��� ���������� ������ �� ����������, ���������������� ���������� ����� �������
procedure TfmCancelOrderItem.edtNumProjCancelOrderChange(Sender: TObject);
begin
    if cbxBoby.Checked then cbxBoby.Checked := False;
end;

//���������� HTML-��������
procedure TfmCancelOrderItem.ShowHTMLDoc;
var
    FmtSetting : TFormatSettings;
begin
    if not VarIsNull( edtBody.Value )
    then begin
        //��������� HTML-��������
        pprBody.HTMLDoc.Add( '<Body>' );
        pprBody.HTMLDoc.Add( edtBody.Value );
        pprBody.HTMLDoc.Add( '</Body>' );
                    
        //��������� ���������� ��� ���������� �����
        FmtSetting.DateSeparator   := '-';
        FmtSetting.TimeSeparator   := '-';
        FmtSetting.ShortDateFormat := 'dd/mm/yyyy';
        FmtSetting.LongDateFormat  := 'dd/mm/yyyy';
        FmtSetting.ShortTimeFormat := 'hh/mm/ss';
        FmtSetting.LongTimeFormat  := 'hh/mm/ss';
                    
        if FileExists( FTmpFileName )
        then begin
            DeleteFile( FTmpFileName );
        end;

        //���������� HTML-��������
        pprBody.HTMLDoc.SaveToFile( FTmpFileName );
        wbbBody.Navigate( FTmpFileName );
        pprBody.HTMLDoc.Clear;
    end;
end;

//��������� ��������� �����
procedure TfmCancelOrderItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

end.

