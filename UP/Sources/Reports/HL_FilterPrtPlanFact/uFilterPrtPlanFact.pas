unit uFilterPrtPlanFact;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uFilterPrtPlanFact                                                         *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	������ ���������� ���������� ��� ������ �������� �/��� ����������� ��������*
*                                                                              *
* Copyright  �  ���� ��������: 20.03.07,  �����: ������� �.�                  *
*                                                                              *
*******************************************************************************}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBase, DB, StdCtrls, Buttons, ExtCtrls, FIBQuery, pFIBQuery,
  pFIBStoredProc, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, frxClass, frxDBSet,
  uSpravControl, uFControl, uLabeledFControl, uDateControl, uCommonSp,
  frxExportXLS, frxExportHTML, frxExportRTF, uBoolControl, uUnivSprav;

type

  //������������ ��� ��� �������� ������� ��
  TEnm_Mode        = ( mCmd, mWin );

  //������������ ��� ��� �������� ���� ���������� ������
  TEnm_TypeParam   = ( tpInput, tpOutput );

  //������������ ��� ��� �������� ����� ������ �������
  TEnm_PeriodType  = ( ptNone, ptLeft, ptRight, ptBoth );

  //������������ ��� ��� �������� ����� ��������
  TEnm_HolidayType = ( htPlan, htFact, htPlanFact );
   
  //������ ��� �������� ��������� �����
  TRec_FieldDefs = record
      FName : String;
      FType : TFieldType;
  end; 
   
  //������ ��� �������� �������� �������� ����������
  TRec_InParams = record
    FMode       : TEnm_Mode;
    FDBHandle   : Integer;
    FKeySession : Variant;
    FReportPath : String;
  end; 
  
  { *** ����������: ���������� ����������� ������� ��� ������������� ������ � �����������  *** }
  TFilterPrtPlanFact = class(TSprav)
  private
      procedure SetFieldDefs( const aTypeParam: TEnm_TypeParam; aFieldDefs: array of TRec_FieldDefs );
  public
      constructor Create; reintroduce;
      procedure Show; override;
  end;

  { *** ����������: ���������� ������� ���������� ���������� ��� ������ �������� �/��� ����������� �������� *** }
  TfmFilterPrtPlanFact = class(TForm)
    gbxPrtParams   : TGroupBox;

    pnlForButtons  : TPanel;

    btnOK          : TBitBtn;
    btnCancel      : TBitBtn;

    edtFio         : TqFSpravControl;
    edtPlanBeg     : TqFDateControl;
    edtPlanEnd     : TqFDateControl;
    edtFactEnd     : TqFDateControl;
    edtFactBeg     : TqFDateControl;
    edtDepartment  : TqFSpravControl;

    cbxPlanHoliday : TCheckBox;
    cbxFactHoliday : TCheckBox;

    dbWork         : TpFIBDatabase;
    dstWork        : TpFIBDataSet;

    trRead         : TpFIBTransaction;
    trWrite        : TpFIBTransaction;

    spcWork        : TpFIBStoredProc;
    frdsWork       : TfrxDBDataset;
    BtnOk2: TBitBtn;
    RTFExport: TfrxRTFExport;
    HTMLExport: TfrxHTMLExport;
    XLSExport: TfrxXLSExport;
    TypePers: TqFSpravControl;
    IsType: TCheckBox;
    frrWork: TfrxReport;

    procedure btnOKClick             (Sender: TObject);
    procedure cbxPlanHolidayClick    (Sender: TObject);
    procedure cbxFactHolidayClick    (Sender: TObject);

    procedure edtFioOpenSprav        (Sender: TObject; var Value: Variant; var DisplayText: String);
    procedure edtDepartmentOpenSprav (Sender: TObject; var Value: Variant; var DisplayText: String);

    procedure FormShortCut           (var Msg: TWMKey; var Handled: Boolean);
    procedure BtnOk2Click(Sender: TObject);
    procedure TypePersOpenSprav(Sender: TObject; var Value: Variant;
      var DisplayText: String);
    procedure IsTypeClick(Sender: TObject);
  private
    FInParams       : TRec_InParams;
    FHolidayType    : TEnm_HolidayType;
    FPlanPeriodType : TEnm_PeriodType;
    FFactPeriodType : TEnm_PeriodType;

    function GetPeriodType  ( const aDateBeg, aDateEnd: TqFDateControl ) : TEnm_PeriodType;
    function DateIsNotEmpty ( const aDate: TqFDateControl ) : Boolean;
    function GetHolidayType : TEnm_HolidayType;
  public
    constructor Create( aOwner: TComponent; const aInParams: TRec_InParams ); reintroduce;
  end;

  function CreateSprav: TSprav; stdcall;

  exports
      CreateSprav;

implementation

uses DateUtils, RxMemDS;

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

    sErr_SpravNotFound        = '�� ������� ����������� ������� ';
	sErr_PeriodIsFailed       = '������� ������ ������� �� ����!';
	sErr_ReportNotFoundUA     = '��������� ���������� ���, �������'#13'�� ������� ������ ���� ����� �����!';
	sErr_UnknownTypeHoliday   = '��� �������� �� �������!'#13'������, ���� �����, ��� ��������';
	sErr_DBConnectionFailed   = '�''������� � ����� ����� ���������!'#13'��������, ���� �����, ����� ���������';
	sErr_SpPCardListNotFound  = '��������� ������';
	sErr_SpDepartmentNotFound = '��������';
	sErr_UnknownHolidays      = '������(�������) �������� �� ������!'#13'������, ���� �����, ����� ��������';

	sInf_DataSetIsEmpty     = '�������, ��� ��� �������� ����'#13'��������� ����� ���������� �������';

    //����� �������� ���������� ������
    sPN_IN_Mode        = 'Mode';
    sPN_IN_DBHandle    = 'DBHandle';
    sPN_IN_Report_Path = 'Report_Path';
    sPN_IN_Key_Session = 'Key_Session';

    //�������� ��
    sSPN_HL_PRT_GET_PLAN_FACT_HOLIDAY = 'HL_PRT_GET_PLAN_FACT_HOLIDAY';
    sSPN_HL_PRT_GET_PLAN_FACT_HOLIDAY_2 = 'HL_PRT_GET_PLAN_FACT_HOLIDAY_2';
    //�������� �������� ���������� ��
    sPPN_IN_ID_PCARD             = 'IN_ID_PCARD';
    sPPN_IN_KEY_SESSION          = 'IN_KEY_SESSION';
    sPPN_IN_ID_DEPARTMENT        = 'IN_ID_DEPARTMENT';
    sPPN_IN_PLAN_PERIOD_BEG      = 'IN_PLAN_PERIOD_BEG';
    sPPN_IN_PLAN_PERIOD_END      = 'IN_PLAN_PERIOD_END';
    sPPN_IN_FACT_PERIOD_BEG      = 'IN_FACT_PERIOD_BEG';
    sPPN_IN_FACT_PERIOD_END      = 'IN_FACT_PERIOD_END';
    sPPN_IN_HOLIDAY_CASE_KEY     = 'IN_HOLIDAY_CASE_KEY';
    sPPN_IN_PLAN_PERIOD_CASE_KEY = 'IN_PLAN_PERIOD_CASE_KEY';
    sPPN_IN_FACT_PERIOD_CASE_KEY = 'IN_FACT_PERIOD_CASE_KEY';
    sPPN_IN_ID_TYPE_POST         = 'IN_TYPE_PERS';

    //�������� ��������� ���������� ��
    sPPN_OUT_FIO_UA            = 'OUT_FIO_UA';
    sPPN_OUT_IS_FACT           = 'OUT_IS_FACT';
    sPPN_OUT_POST_NAME         = 'OUT_POST_NAME';
    sPPN_OUT_PERIOD_BEG        = 'OUT_PERIOD_BEG';
    sPPN_OUT_PERIOD_END        = 'OUT_PERIOD_END';
    sPPN_OUT_HOLIDAY_BEG       = 'OUT_HOLIDAY_BEG';
    sPPN_OUT_HOLIDAY_END       = 'OUT_HOLIDAY_END';
    sPPN_OUT_HOLIDAY_NAME      = 'OUT_HOLIDAY_NAME';
    sPPN_OUT_DEPARTMENT_NAME   = 'OUT_DEPARTMENT_NAME';
    sPPN_OUT_DEPART_SORT_ORDER = 'OUT_DEPART_SORT_ORDER';

    //SQL-�������
    sSQL_SEL_ORDER_BY    = ' ORDER BY ';
    sSQL_SEL_GET_ALL_REC = 'SELECT * FROM ';

    //���� � ������ ������� �������
    sPTH_SP_PCARDS    = 'Asup\PCardsList'; 
    sPTH_SP_DPARTMENT = 'SpDepartment';

    //����� �������� ���������� ������� �������
    sPN_IN_SP_PCARD_Select      = 'Select';
    sPN_IN_SP_DPART_DBHandle    = 'DBHandle';
    sPN_IN_SP_PCARD_DBHandle    = 'DBHandle';
    sPN_IN_SP_PCARD_AdminMode   = 'AdminMode';
    sPN_IN_SP_PCARD_ShowStyle   = 'ShowStyle';
    sPN_IN_SP_PCARD_ActualDate  = 'ActualDate';
    sPN_IN_SP_PCARD_NewVersion  = 'NewVersion';
    sPN_IN_SP_DPART_Actual_Date = 'Actual_Date';

    //����� ��������� ���������� ������� �������
    sPN_OUT_SP_PCARD_FIO           = 'FIO';
    sPN_OUT_SP_PCARD_ID_PCARD      = 'ID_PCARD';
    sPN_OUT_SP_DPART_Name_Full     = 'Name_Full';
    sPN_OUT_SP_DPART_Id_Department = 'Id_Department';
    
const

	{*****************************************}
    {   *** ��������� ������ ���������� ***   }
    {*****************************************}

    cZERO             = 0;
    cTICK             = '''';
    cCOMMA            = ',';
    cCOLON            = ':';
    cSPACE            = ' ';
    cUNKNOWN_ID       = -1; 
    cBRACKET_OPEN     = '(';
    cBRACKET_CLOSE    = ')';
    cDEF_ADMIN_MODE   = 0;
    cDEF_SHOW_STYLE   = 0;
    cDEF_REPORT_PATH  = 'Reports\UP\HL_RegPlanFact.fr3';
    cDEF_REPORT_PATH_2= 'Reports\UP\HL_RegPlanFact_2.fr3';    
    cDEF_SELECT_MODE  = 1;
    cDEF_NEW_VERSHION = 1;

    cInFieldDefs: array[0..1] of TRec_FieldDefs = (
      ( FName: sPN_IN_Mode;        FType: ftInteger ),
      ( FName: sPN_IN_Key_Session; FType: ftVariant ) );

{$R *.dfm}
var Flag            :Boolean;
    PIdLevel        :Integer;

function CreateSprav: TSprav; stdcall;
begin
  Result := TFilterPrtPlanFact.Create;
end;

{ TCalcPlanHoliday }
procedure TFilterPrtPlanFact.SetFieldDefs( const aTypeParam: TEnm_TypeParam; aFieldDefs: array of TRec_FieldDefs );
var
    i, n : Integer;
begin
    i := Low( aFieldDefs  );
    n := High( aFieldDefs );

    case aTypeParam of

      tpInput  : begin
                   for i := i to n
                   do 
                       with aFieldDefs[i]
                       do begin
                           Input.FieldDefs.Add( FName, FType );
                       end;
                 end;

      tpOutput : begin
                   for i := i to n
                   do 
                       with aFieldDefs[i]
                       do begin
                           Output.FieldDefs.Add( FName, FType );
                       end;
                 end;
    end;
end;

function TfmFilterPrtPlanFact.GetPeriodType(const aDateBeg, aDateEnd: TqFDateControl): TEnm_PeriodType;
begin
    Result := ptNone;

    if DateIsNotEmpty( aDateBeg )
    then begin
        Result := ptLeft;
        
        if DateIsNotEmpty( aDateEnd )
        then begin
            Result := ptBoth;
        end;
    end
    else begin
        if DateIsNotEmpty( aDateEnd )
        then begin
            Result := ptRight;
        end;
    end;

end;

function TfmFilterPrtPlanFact.DateIsNotEmpty(const aDate: TqFDateControl): Boolean;
begin
    Result := False;

    if not VarIsNull( aDate.Value )
    then begin
        if aDate.Value > 0
        then begin
            Result := True;
        end;
    end;
end;

//������� ��������� ���������� ������
constructor TFilterPrtPlanFact.Create;
begin
    try
        inherited Create;
        SetFieldDefs( tpInput, cInFieldDefs );
        PrepareMemoryDataSets;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//����������� ��������� ������������ ������ � ������������ � ������� ������ ������
constructor TfmFilterPrtPlanFact.Create(aOwner: TComponent;
  const aInParams: TRec_InParams);
begin
    try 
        //�������������� ���� �������
        inherited Create( aOwner );
        FInParams     := aInParams;
        dbWork.Handle := TISC_DB_HANDLE( aInParams.FDBHandle );
        trRead.StartTransaction;
        
        case aInParams.FMode of

          mCmd : begin
                   FHolidayType    := htPlan;
                   FPlanPeriodType := ptNone;
                   FFactPeriodType := ptNone;
                   ModalResult := mrOK;
                 end;

          mWin : begin
                   FHolidayType    := htPlanFact;
                   FPlanPeriodType := ptBoth;
                   FFactPeriodType := ptBoth;

                   //��������� ���������� �� ��������� ��������
                   edtPlanBeg.Value := StartOfTheMonth( Now );
                   edtFactBeg.Value := StartOfTheMonth( Now );
                   edtPlanEnd.Value := IncYear( edtPlanBeg.Value );
                   edtFactEnd.Value := IncYear( edtFactBeg.Value );

                   ShowModal;
                 end;
        end;

    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//������� ��������� ������������ ������
procedure TFilterPrtPlanFact.Show;
var
    InParams    : TRec_InParams;
    fmPrtParams : TfmFilterPrtPlanFact;
    sSPN_PROC   : String;
begin
    try
        if Input[sPN_IN_DBHandle] <> 0
        then begin
            inherited;
            //���������� �������� �������� ����������
            with InParams
            do begin
                FMode       := TEnm_Mode( Input[sPN_IN_Mode] );
                FDBHandle   := Input[sPN_IN_DBHandle];
                FKeySession := Input[sPN_IN_Key_Session];

                if Input.FindField( sPN_IN_Report_Path ) <> nil
                then begin
                    FReportPath := Input[sPN_IN_Report_Path];
                end
                else begin
                         FReportPath := ExtractFilePath( Application.ExeName ) + cDEF_REPORT_PATH;
                end;
            end;

            try
                //������� ��������� ������������ ������
                fmPrtParams := TfmFilterPrtPlanFact.Create( Application.MainForm, InParams );

                with fmPrtParams
                do begin
                    //��������� ������ ��� ������
                    if ModalResult = mrOK
                    then begin
                        //�������� �������� �������� ���������� ��� ��
                        if FInParams.FMode = mWin
                        then begin
                            FHolidayType    := GetHolidayType;
                            FPlanPeriodType := GetPeriodType( edtPlanBeg, edtPlanEnd );
                            FFactPeriodType := GetPeriodType( edtFactBeg, edtFactEnd );
                        end;

                        if not VarIsNull( edtFio.Value )
                        then begin
                            if Trim( edtFio.Value ) = EmptyStr
                            then begin
                                edtFio.Value := Null;
                            end;
                        end;

                        if not VarIsNull( edtDepartment.Value )
                        then begin
                            if Trim( edtDepartment.Value ) = EmptyStr
                            then begin
                                edtDepartment.Value := Null;
                            end;
                        end;

                        //�������� ������ ��� ������������ ������
                        if dstWork.Active then dstWork.Close;
                        //��������� ����� SQL �������
                        if Flag then
                        begin
                            sSPN_PROC:= 'HL_PRT_GET_PLAN_FACT_HOLIDAY_2';

                            dstWork.SQLs.SelectSQL.Text := sSQL_SEL_GET_ALL_REC + sSPN_PROC + cSPACE + cBRACKET_OPEN
                                                           //����������� �������� ��������� ��
                                                           + cCOLON + sPPN_IN_PLAN_PERIOD_CASE_KEY + cCOMMA
                                                           + cCOLON + sPPN_IN_FACT_PERIOD_CASE_KEY + cCOMMA
                                                           + cCOLON + sPPN_IN_HOLIDAY_CASE_KEY     + cCOMMA
                                                           + cCOLON + sPPN_IN_KEY_SESSION          + cCOMMA
                                                           + cCOLON + sPPN_IN_PLAN_PERIOD_BEG      + cCOMMA
                                                           + cCOLON + sPPN_IN_PLAN_PERIOD_END      + cCOMMA
                                                           + cCOLON + sPPN_IN_FACT_PERIOD_BEG      + cCOMMA
                                                           + cCOLON + sPPN_IN_FACT_PERIOD_END      + cCOMMA
                                                           + cCOLON + sPPN_IN_ID_DEPARTMENT        + cCOMMA
                                                           + cCOLON + sPPN_IN_ID_PCARD             + cCOMMA
                                                           + cCOLON + sPPN_IN_ID_TYPE_POST         + cBRACKET_CLOSE
                                                           //��������� ������� ����������
                                                           + sSQL_SEL_ORDER_BY
                                                           + sPPN_OUT_DEPART_SORT_ORDER + ' COLLATE WIN1251_UA' + cCOMMA
                                                           + sPPN_OUT_FIO_UA            + cCOMMA
                                                           + sPPN_OUT_POST_NAME         + cCOMMA
                                                           + sPPN_OUT_PERIOD_BEG        + cCOMMA
                                                           + sPPN_OUT_PERIOD_END        + cCOMMA
                                                           + sPPN_OUT_IS_FACT           + cCOMMA
                                                           + sPPN_OUT_HOLIDAY_BEG       + cCOMMA
                                                           + sPPN_OUT_HOLIDAY_END       + cCOMMA
                                                           + sPPN_OUT_HOLIDAY_NAME;
                            //��������� ��������� ��
                            dstWork.ParamByName(sPPN_IN_ID_PCARD             ).Value      := edtFio.Value;
                            dstWork.ParamByName(sPPN_IN_KEY_SESSION          ).Value      := FInParams.FKeySession;
                            dstWork.ParamByName(sPPN_IN_ID_DEPARTMENT        ).Value      := edtDepartment.Value;
                            dstWork.ParamByName(sPPN_IN_HOLIDAY_CASE_KEY     ).AsInteger  := Ord( FHolidayType );
                            dstWork.ParamByName(sPPN_IN_PLAN_PERIOD_CASE_KEY ).AsInteger  := Ord( FPlanPeriodType );
                            dstWork.ParamByName(sPPN_IN_FACT_PERIOD_CASE_KEY ).AsInteger  := Ord( FFactPeriodType );
                            dstWork.ParamByName(sPPN_IN_ID_TYPE_POST ).Value              := PIdLevel;

                        end
                        else
                        begin
                            sSPN_PROC:=sSPN_HL_PRT_GET_PLAN_FACT_HOLIDAY;

                            dstWork.SQLs.SelectSQL.Text := sSQL_SEL_GET_ALL_REC + sSPN_PROC + cSPACE + cBRACKET_OPEN
                                                           //����������� �������� ��������� ��
                                                           + cCOLON + sPPN_IN_PLAN_PERIOD_CASE_KEY + cCOMMA
                                                           + cCOLON + sPPN_IN_FACT_PERIOD_CASE_KEY + cCOMMA
                                                           + cCOLON + sPPN_IN_HOLIDAY_CASE_KEY     + cCOMMA
                                                           + cCOLON + sPPN_IN_KEY_SESSION          + cCOMMA
                                                           + cCOLON + sPPN_IN_PLAN_PERIOD_BEG      + cCOMMA
                                                           + cCOLON + sPPN_IN_PLAN_PERIOD_END      + cCOMMA
                                                           + cCOLON + sPPN_IN_FACT_PERIOD_BEG      + cCOMMA
                                                           + cCOLON + sPPN_IN_FACT_PERIOD_END      + cCOMMA
                                                           + cCOLON + sPPN_IN_ID_DEPARTMENT        + cCOMMA
                                                           + cCOLON + sPPN_IN_ID_PCARD             + cBRACKET_CLOSE
                                                           //��������� ������� ����������
                                                           + sSQL_SEL_ORDER_BY
                                                           + sPPN_OUT_DEPART_SORT_ORDER + cCOMMA
                                                           + sPPN_OUT_FIO_UA            + cCOMMA
                                                           + sPPN_OUT_POST_NAME         + cCOMMA
                                                           + sPPN_OUT_PERIOD_BEG        + cCOMMA
                                                           + sPPN_OUT_PERIOD_END        + cCOMMA
                                                           + sPPN_OUT_IS_FACT           + cCOMMA
                                                           + sPPN_OUT_HOLIDAY_BEG       + cCOMMA
                                                           + sPPN_OUT_HOLIDAY_END       + cCOMMA
                                                           + sPPN_OUT_HOLIDAY_NAME;
                            //��������� ��������� ��
                            dstWork.ParamByName(sPPN_IN_ID_PCARD             ).Value      := edtFio.Value;
                            dstWork.ParamByName(sPPN_IN_KEY_SESSION          ).Value      := FInParams.FKeySession;
                            dstWork.ParamByName(sPPN_IN_ID_DEPARTMENT        ).Value      := edtDepartment.Value;
                            dstWork.ParamByName(sPPN_IN_HOLIDAY_CASE_KEY     ).AsInteger  := Ord( FHolidayType );
                            dstWork.ParamByName(sPPN_IN_PLAN_PERIOD_CASE_KEY ).AsInteger  := Ord( FPlanPeriodType );
                            dstWork.ParamByName(sPPN_IN_FACT_PERIOD_CASE_KEY ).AsInteger  := Ord( FFactPeriodType );
                        end;

                        //�������� ������� �������� � ����������� ����
                        if edtPlanBeg.Value > 0
                        then
                            dstWork.ParamByName(sPPN_IN_PLAN_PERIOD_BEG).AsDate := edtPlanBeg.Value
                        else
                            dstWork.ParamByName(sPPN_IN_PLAN_PERIOD_BEG).Value := Null;

                        if edtPlanEnd.Value > 0
                        then
                            dstWork.ParamByName(sPPN_IN_PLAN_PERIOD_END).AsDate := edtPlanEnd.Value
                        else
                            dstWork.ParamByName(sPPN_IN_PLAN_PERIOD_END).Value := Null;

                        if edtFactBeg.Value > 0
                        then
                            dstWork.ParamByName(sPPN_IN_FACT_PERIOD_BEG).AsDate := edtFactBeg.Value
                        else
                            dstWork.ParamByName(sPPN_IN_FACT_PERIOD_BEG).Value := Null;

                        if edtFactEnd.Value > 0
                        then
                            dstWork.ParamByName(sPPN_IN_FACT_PERIOD_END).AsDate := edtFactEnd.Value
                        else
                            dstWork.ParamByName(sPPN_IN_FACT_PERIOD_END).Value := Null;

                        try
                            dstWork.Prepare;
                            dstWork.Open;

                            if not dstWork.IsEmpty
                            then begin
                                //��������� ���� ������
                                if frrWork.LoadFromFile( FInParams.FReportPath )
                                then begin
                                    frrWork.PrepareReport;
                                    frrWork.ShowPreparedReport;
                                end
                                else begin
                                    MessageBox( Handle, PChar( sErr_ReportNotFoundUA ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
                                end;
                            end
                            else begin
                                MessageBox( Handle, PChar( sInf_DataSetIsEmpty ), PChar( sMsgCaptionInfUA ), MB_OK or MB_ICONINFORMATION );
                            end;
                            
                        finally
                            dstWork.Close;
                        end;
                        
                    end;
                end;
                
            finally
                 if fmPrtParams <> nil then FreeAndNil( fmPrtParams );
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

//����������(������������) �������� ��� ����� ������ �������
procedure TfmFilterPrtPlanFact.cbxPlanHolidayClick(Sender: TObject);
begin
  if TCheckBox( Sender ).Checked
  then begin
      edtPlanBeg.Blocked := False;
      edtPlanEnd.Blocked := False;
  end
  else begin
      edtPlanBeg.Value   := Null;
      edtPlanEnd.Value   := Null;
      edtPlanBeg.Blocked := True;
      edtPlanEnd.Blocked := True;
  end;
end;

//����������(������������) �������� ��� ����� ������ �������
procedure TfmFilterPrtPlanFact.cbxFactHolidayClick(Sender: TObject);
begin
  if TCheckBox( Sender ).Checked
  then begin
      edtFactBeg.Blocked := False;
      edtFactEnd.Blocked := False;
  end
  else begin
      edtFactBeg.Value   := Null;
      edtFactEnd.Value   := Null;
      edtFactBeg.Blocked := True;
      edtFactEnd.Blocked := True;
  end;
end;

//��������� �������� ������������ ��������� ������������� ����������
procedure TfmFilterPrtPlanFact.btnOKClick(Sender: TObject);
begin
    try
        //���������: ������ �� ��� �������?
        if not( cbxPlanHoliday.Checked OR cbxFactHoliday.Checked )
        then begin
            ModalResult := mrNone;
            MessageBox( 0, PChar( sErr_UnknownTypeHoliday ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
            Exit;
        end;

        //���������: ��������� �� ������ ������� ������� ��� �������� ��������?
        if cbxPlanHoliday.Checked AND not ( VarIsNull( edtPlanBeg.Value ) or VarIsNull( edtPlanEnd.Value ) )
        then
            if edtPlanBeg.Value > edtPlanEnd.Value
            then begin
                ModalResult := mrNone;
                MessageBox( 0, PChar( sErr_PeriodIsFailed ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
                edtPlanBeg.SetFocus;
                Exit;
            end;

        //���������: ��������� �� ������ ������� ������� ��� ����������� ��������?
        if cbxFactHoliday.Checked AND not ( VarIsNull( edtFactBeg.Value ) or VarIsNull( edtFactEnd.Value ) )
        then
            if edtFactBeg.Value > edtFactEnd.Value
            then begin
                ModalResult := mrNone;
                MessageBox( 0, PChar( sErr_PeriodIsFailed ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
                edtFactBeg.SetFocus;
                Exit;
            end;
        if ModalResult=mrOK then Flag:=False
                            else Flag:=True;

    except
        on E: Exception
        do begin
            ModalResult := mrNone;
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//��������� ���������, ����������� ������� �������� ��������
function TfmFilterPrtPlanFact.GetHolidayType: TEnm_HolidayType;
begin
    if cbxPlanHoliday.Checked
    then begin
        Result := htPlan;

        if cbxFactHoliday.Checked
        then begin
            Result := htPlanFact;
        end;
    end
    else begin
        if cbxFactHoliday.Checked
        then begin
            Result := htFact;
        end;
    end;
end;

//�������� ���������� �������������
procedure TfmFilterPrtPlanFact.edtDepartmentOpenSprav(Sender: TObject;
  var Value: Variant; var DisplayText: String);
var
    SpDepartment: TSprav;
begin
    try
        try
            //C������ ����������
            SpDepartment := GetSprav( sPTH_SP_DPARTMENT );

            if SpDepartment <> nil
            then begin
                //��������� �������� ���������
                with SpDepartment
                do begin
                    Input.Append;
                    Input.FieldValues[sPN_IN_SP_DPART_DBHandle   ] := FInParams.FDBHandle;
                    Input.FieldValues[sPN_IN_SP_DPART_Actual_Date] := Date;
                    Input.Post;

                    //���������� ����������
                    Show;
        
                    //����������� ��������� (����� ������ ����.)
                    if ( Output <> nil ) AND not Output.IsEmpty
                    then begin
                        Value       := Output[sPN_OUT_SP_DPART_Id_Department];
                        DisplayText := Output[sPN_OUT_SP_DPART_Name_Full    ];
                    end;
                end;
        
            end
            else begin
                MessageBox( Handle, PChar( sErr_SpravNotFound + sErr_SpDepartmentNotFound ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
            end;
            
        finally
            if SpDepartment <> nil then FreeAndNil( SpDepartment );
        end;
    except
        on E: Exception
        do begin
            MessageBox( Handle, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//�������� ���������� ���.��
procedure TfmFilterPrtPlanFact.edtFioOpenSprav(Sender: TObject;
  var Value: Variant; var DisplayText: String);
var
     SpPcardList : TSprav;
begin
    try
        try
            //C������ ����������
            SpPcardList := GetSprav( sPTH_SP_PCARDS );

              if SpPcardList <> nil
              then begin
                  //��������� �������� ���������
                  with SpPcardList
                  do begin
                      Input.Append;
                      Input.FieldValues[sPN_IN_SP_PCARD_DBHandle   ] := FInParams.FDBHandle;
                      Input.FieldValues[sPN_IN_SP_PCARD_ActualDate ] := Date;
                      Input.FieldValues[sPN_IN_SP_PCARD_AdminMode  ] := cDEF_ADMIN_MODE;
                      Input.FieldValues[sPN_IN_SP_PCARD_Select     ] := cDEF_SELECT_MODE;
                      Input.FieldValues[sPN_IN_SP_PCARD_ShowStyle  ] := cDEF_SHOW_STYLE;
                      Input.FieldValues[sPN_IN_SP_PCARD_NewVersion ] := cDEF_NEW_VERSHION;
                      Input.Post;

                      //���������� ����������
                      Show;

                      //����������� ��������� (����� ������ ����.)
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
            if SpPcardList <> nil then FreeAndNil( SpPcardList );
        end;
    except
        on E: Exception
        do begin
            MessageBox( Handle, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//������������ ������� �������
procedure TfmFilterPrtPlanFact.FormShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  case Msg.CharCode of

    VK_F10    : begin
				  btnOK.Click;
				  Handled := True;
				end;

	VK_ESCAPE : begin
				  btnCancel.Click;
				  Handled := True;
                end;
  end;
end;

procedure TfmFilterPrtPlanFact.BtnOk2Click(Sender: TObject);
begin
    try
        //���������: ������ �� ��� �������?
        if not( cbxPlanHoliday.Checked and cbxFactHoliday.Checked )
        then begin
            ModalResult := mrNone;
            MessageBox( 0, PChar( sErr_UnknownHolidays ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
            Exit;
        end;

        //���������: ��������� �� ������ ������� ������� ��� �������� ��������?
        if cbxPlanHoliday.Checked AND not ( VarIsNull( edtPlanBeg.Value ) or VarIsNull( edtPlanEnd.Value ) )
        then
            if edtPlanBeg.Value > edtPlanEnd.Value
            then begin
                ModalResult := mrNone;
                MessageBox( 0, PChar( sErr_PeriodIsFailed ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
                edtPlanBeg.SetFocus;
                Exit;
            end;

        //���������: ��������� �� ������ ������� ������� ��� ����������� ��������?
        if cbxFactHoliday.Checked AND not ( VarIsNull( edtFactBeg.Value ) or VarIsNull( edtFactEnd.Value ) )
        then
            if edtFactBeg.Value > edtFactEnd.Value
            then begin
                ModalResult := mrNone;
                MessageBox( 0, PChar( sErr_PeriodIsFailed ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
                edtFactBeg.SetFocus;
                Exit;
            end;
        if ModalResult=mrOK then
        begin
            Flag:=True;
            FInParams.FReportPath := ExtractFilePath( Application.ExeName ) + cDEF_REPORT_PATH_2;
        end
        else Flag:=False;
    except
        on E: Exception
        do begin
            ModalResult := mrNone;
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

procedure TfmFilterPrtPlanFact.TypePersOpenSprav(Sender: TObject;
  var Value: Variant; var DisplayText: String);
var
  Params:TUnivParams;
  OutPut : TRxMemoryData;
begin
  Params.FormCaption:='���� ���������';
  Params.ShowMode:=fsmSelect;
  Params.ShowButtons:=[fbExit];
  Params.TableName:='SP_TYPE_POST';
  Params.Fields:='NAME_TYPE_POST,ID_TYPE_POST';
  Params.FieldsName:='��� ���������';
  Params.KeyField:='ID_TYPE_POST';
  Params.ReturnFields:='NAME_TYPE_POST,ID_TYPE_POST';
  Params.DBHandle:=Integer(dbWork.Handle);

  OutPut:=TRxMemoryData.Create(self);

  if GetUnivSprav(Params,OutPut)
   then
   begin
      Value       := output['ID_TYPE_POST'];
      DisplayText := VarToStr(output['NAME_TYPE_POST']);
      PIdLevel:=output['ID_TYPE_POST'];
   end;
end;

procedure TfmFilterPrtPlanFact.IsTypeClick(Sender: TObject);
begin
    TypePers.Blocked:=not(IsType.Checked);
end;

end.

     
