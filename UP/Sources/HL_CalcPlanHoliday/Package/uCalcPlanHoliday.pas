unit uCalcPlanHoliday;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uCalcPlanHoliday                                                           *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	������� ���������� ���� �������, ��������������� �� �����.                 *
*                                                                              *
* Copyright  �  ���� ��������: 05.03.07,  �����: ������� �.�                  *
*                                                                              *
*******************************************************************************}

interface

uses
  Windows, SysUtils, Classes, Forms, Controls, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDatabase,
  pFIBDatabase, DB, FIBDataSet, pFIBDataSet, IBase, uCommonSp, Dialogs;

type

  //������������ ��� ��� �������� ���� ���������� ������
  TEnm_TypeParam        = ( tpInput, tpOutput );
   
  //������������ ��� ��� �������� ���� �������
  TEnm_TypeHolyday      = ( thMain, thBadCond, thSpecCond );

  //������������ ��� ��� �������� ���� ��������, ��������� �� ����������������� ��������� �������
  TEnm_TypeHolidayParam = ( thpProportional, thpInvalid_1_2, thpInvalid_3, thpAgeLess18 );
  
  //������ ��� �������� ��������� �����
  TRec_FieldDefs = record
      FName : String;
      FType : TFieldType;
  end; 
  
  //������ ��� �������� �������� ��������� ����������
  TRec_OutputParams = record
    FPeriodBeg : TDate;
    FPeriodEnd : TDate;
    FDaysCount : Integer;
  end; 

  //������ ��� �������� �������� ���������� ��� �������
  TRec_AnalyzeParams = record
    FAge              : Integer;
    FNote             : String;
    FTypeParam        : TEnm_TypeHolidayParam; 
    FPeriodBeg        : TDate;
    FPeriodEnd        : TDate;
    FTypeHoliday      : Integer;
    FInvalidGroup     : Integer;
    FIdTypeHoliday    : Int64;
    FWorkedDaysCount  : Integer;
    FHolidayDaysCount : Real;
    FIsPps            : String;
  end;
   
  //������ ��� �������� �������� �������� ����������
  TRec_InputParams = record
    FPeriodBeg       : TDate;
    FPeriodEnd       : TDate;
    FIdWorkDogMoving : Int64;
  end; 

  { *** ����������: ���������� ������� ���������� ���� �������, ��������������� �� ����� *** }
  TdmCalcPlanHoliday = class(TDataModule)
   // dbWork  : TpFIBDatabase;
  //  dstWork : TpFIBDataSet;

 //   trRead  : TpFIBTransaction;
  //  trWrite : TpFIBTransaction;

 //   spcWork : TpFIBStoredProc;
    dbWork: TpFIBDatabase;
    dstWork: TpFIBDataSet;
    trRead: TpFIBTransaction;
    trWrite: TpFIBTransaction;
    spcWork: TpFIBStoredProc;
  private
      FInputParams : TRec_InputParams;
      procedure GenNote( var aAnalyzeParams: TRec_AnalyzeParams );
      procedure CalcPlanHoliday;
      procedure SetHolidayParams( aDataSet: TpFIBDataSet );
  public
    { Public declarations }
  end;
  
  { *** ����������: ���������� ����������� ������� ��� ������������� ������ � �����������  *** }
  TCalcPlanHoliday = class(TSprav)
  private
      FDM : TdmCalcPlanHoliday;
      procedure SetFieldDefs( const aTypeParam: TEnm_TypeParam; aFieldDefs: array of TRec_FieldDefs );
  public
      constructor Create; reintroduce;
      destructor Destroy; reintroduce;
      procedure Show; override;
  end;

  function CreateSprav: TSprav; stdcall;

  exports
      CreateSprav;

implementation

uses Math;

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

	sErr_DBConnectionFailed = '�''������� � ����� ����� ���������!'#13'��������, ���� �����, ����� ���������';

    //����� �������� ���������� ������
    sPN_IN_Mode               = 'Mode';
    sPN_IN_DBHandle           = 'DBHandle';
    sPN_IN_Period_Beg         = 'Period_Beg';
    sPN_IN_Period_End         = 'Period_End';
    sPN_IN_Id_Work_Dog_Moving = 'Id_Work_Dog_Moving';

    //����� ��������� ���������� ������
    sPN_OUT_Note            = 'Note';
    sPN_OUT_Period_Beg      = 'Period_Beg';
    sPN_OUT_Period_End      = 'Period_End';
    sPN_OUT_Days_Count      = 'Days_Count';
    sPN_OUT_Id_Type_Holiday = 'Id_Type_Holiday';

    //�������� �������� ���������� ��
    sPPN_IN_PERIOD_BEG         = 'IN_PERIOD_BEG';
    sPPN_IN_PERIOD_END         = 'IN_PERIOD_END';
    sPPN_IN_ID_WORK_DOG_MOVING = 'IN_ID_WORK_DOG_MOVING';

    //�������� ��������� ���������� ��
    sPPN_OUT_AGE                = 'OUT_AGE';
    sPPN_OUT_NOTE               = 'OUT_NOTE';
    sPPN_OUT_PERIOD_BEG         = 'OUT_PERIOD_BEG';
    sPPN_OUT_PERIOD_END         = 'OUT_PERIOD_END';
    sPPN_OUT_TYPE_HOLIDAY       = 'OUT_TYPE_HOLIDAY';
    sPPN_OUT_INVALID_GROUP      = 'OUT_INVALID_GROUP';
    sPPN_OUT_ID_TYPE_HOLIDAY    = 'OUT_ID_TYPE_HOLIDAY';
    sPPN_OUT_WORKED_DAYS_COUNT  = 'OUT_WORKED_DAYS_COUNT';
    sPPN_OUT_HOLIDAY_DAYS_COUNT = 'OUT_HOLIDAY_DAYS_COUNT';
    sPPN_OUT_IS_PPS             = 'OUT_IS_PPS';

    //SQL-�������
    sSQL_SEL_HL_GET_DATA_FOR_CALC_HOLIDAY = 'SELECT * FROM HL_GET_DATA_FOR_CALC_HOLIDAY(';

	//������������ ���������, ���������� ������������� ��������������� ���-�� ���� ������� �� �����
    sUsr_HL_Type         = '��� ��������                       : ';
    sUsr_HL_DCount       = '������������ ������� �� : ';
    sUsr_HL_Reason       = 'ϳ������                               : ';
    sUsr_HL_Main         = '������ ������� �������;'#13#10;
    sUsr_HL_BadCond      = '������ ��������� ������� �� ������ �� ��������� � ������� ������� �����;'#13#10;
    sUsr_HL_SpecCond     = '������ ��������� ������� �� ��������� �������� �����;'#13#10;
    sUsr_NoteAgeLess18   = '����������(��)�;'#13#10;
    sUsr_NoteInvalid_3   = '������ 3 �����;'#13#10;
    sUsr_NoteInvalid_1_2 = '������ 1 ��� 2 �����;'#13#10;
    sUsr_NoteProporshion = '����������� �� �������������� ����;'#13#10;
    
const

	{*****************************************}
    {   *** ��������� ������ ���������� ***   }
    {*****************************************}

    cCRL           = #13#10;
    cZERO          = 0;
    cTICK          = '''';
    cCOMMA         = ',';
    cSEMICOLON     = ';';
    cBRACKET_OPEN  = '(';
    cBRACKET_CLOSE = ')'; 

    //���-�� ���� �������� ��������(��������� �� ������ ������������� ��������)
    cDCount_InYear      = 365;
    cDCount_InYear_PPS  = 302;
    cDCount_Holiday_PPS = 56;
    cDCount_HalfYear    = 181;
    cDCount_AgeLess18   = 31;
    cDCount_Invalid_3   = 26;
    cDCount_Invalid_1_2 = 30;

    cInFieldDefs: array[0..2] of TRec_FieldDefs = (
      ( FName: sPN_IN_Id_Work_Dog_Moving; FType: ftVariant  ), 
      ( FName: sPN_IN_Period_Beg;         FType: ftDate     ),
      ( FName: sPN_IN_Period_End;         FType: ftDate     ) );

    cOutFieldDefs: array[0..4] of TRec_FieldDefs = (
      ( FName: sPN_OUT_Id_Type_Holiday; FType: ftVariant  ),
      ( FName: sPN_OUT_Note;            FType: ftFmtMemo  ),
      ( FName: sPN_OUT_Days_Count;      FType: ftInteger  ),
      ( FName: sPN_OUT_Period_Beg;      FType: ftDate     ),
      ( FName: sPN_OUT_Period_End;      FType: ftDate     ) );

{$R *.dfm}

function CreateSprav: TSprav; stdcall;
begin
  Result := TCalcPlanHoliday.Create;
end;

{ TCalcPlanHoliday }
procedure TCalcPlanHoliday.SetFieldDefs( const aTypeParam: TEnm_TypeParam; aFieldDefs: array of TRec_FieldDefs );
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

//������� ��������� ���������� ������
constructor TCalcPlanHoliday.Create;
begin
    try
        inherited Create;
        SetFieldDefs( tpInput,  cInFieldDefs  );
        SetFieldDefs( tpOutput, cOutFieldDefs );
        PrepareMemoryDataSets;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//����������� �������
destructor TCalcPlanHoliday.Destroy;
begin
    if FDM <> nil
    then begin
        FreeAndNil( FDM );
    end;
    
    inherited;
end;

//������� ��������� ������������ ������
procedure TCalcPlanHoliday.Show;
var
    i, n : Integer;
begin
    try
        if Input[sPN_IN_DBHandle] <> 0
        then begin
            inherited;
            FDM := TdmCalcPlanHoliday.Create( Application.MainForm );
            FDM.dbWork.Handle := TISC_DB_HANDLE( Integer( Input[sPN_IN_DBHandle] ) );
            FDM.trRead.StartTransaction;

            //���������� �������� ���������
            with FDM.FInputParams
            do begin
                FPeriodBeg       := Input[sPN_IN_Period_Beg        ];
                FPeriodEnd       := Input[sPN_IN_Period_End        ];
                FIdWorkDogMoving := Input[sPN_IN_Id_Work_Dog_Moving];
            end;

            //������������ ���-�� �������� ���� �������
            FDM.CalcPlanHoliday;

            n := FDM.dstWork.RecordCount - 1;
            //���������� ������������ �������� �������� ������
            try
                FDM.dstWork.DisableControls;
                Output.DisableControls;
                FDM.dstWork.First;

                for i := 0 to n
                do begin
                    Output.Append;
                    Output[sPN_OUT_Id_Type_Holiday] := FDM.dstWork.FBN(sPPN_OUT_ID_TYPE_HOLIDAY   ).Value;
                    Output[sPN_OUT_Days_Count     ] := FDM.dstWork.FBN(sPPN_OUT_HOLIDAY_DAYS_COUNT).AsInteger;
                    Output[sPN_OUT_Note           ] := FDM.dstWork.FBN(sPPN_OUT_Note              ).AsString;
                    Output[sPN_OUT_Period_Beg     ] := FDM.dstWork.FBN(sPPN_OUT_PERIOD_BEG        ).AsDateTime;
                    Output[sPN_OUT_Period_End     ] := FDM.dstWork.FBN(sPPN_OUT_PERIOD_End        ).AsDateTime;
                    Output.Post;
                    
                    FDM.dstWork.Next;
                end;
            finally
                Output.EnableControls;
                FDM.dstWork.EnableControls;
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

//��������� ���� ����������
procedure TdmCalcPlanHoliday.GenNote(var aAnalyzeParams: TRec_AnalyzeParams);
begin
    try
        with aAnalyzeParams
        do begin
            //��������� ��� �������
            case TEnm_TypeHolyday( FTypeHoliday ) of

              thMain     : begin
                             FNote := sUsr_HL_Type + sUsr_HL_Main;
                           end; 

              thBadCond  : begin
                             FNote := sUsr_HL_Type + sUsr_HL_BadCond;
                           end; 

              thSpecCond : begin
                             FNote := sUsr_HL_Type + sUsr_HL_SpecCond;
                           end; 
            end;

            //��������� ���-�� ���� �������
            FNote := FNote + sUsr_HL_DCount + FloatToStr( FHolidayDaysCount ) + cSEMICOLON + cCRL;

            //��������� �������������� �������� �������
            FNote := FNote + sUsr_HL_Reason;

            case FTypeParam of

              thpProportional : begin
                                  FNote := FNote + sUsr_NoteProporshion;
                                end;

              thpInvalid_1_2  : begin
                                  FNote := FNote + sUsr_NoteInvalid_1_2;
                                end;

              thpInvalid_3    : begin
                                  FNote := FNote + sUsr_NoteInvalid_3;
                                end;

              thpAgeLess18    : begin
                                  FNote := FNote + sUsr_NoteAgeLess18;
                                end;
            end;
            
        end;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

{ TdmCalcPlanHoliday }
procedure TdmCalcPlanHoliday.SetHolidayParams(aDataSet: TpFIBDataSet);
var
    AnalyzeParams : TRec_AnalyzeParams;
    Holidays_Days_Count: Real;
begin
    try
        with AnalyzeParams
        do begin
            //�������������� ��������� ��� �������
            with aDataSet
            do begin
                FAge              := FBN(sPPN_OUT_AGE               ).AsInteger;
                FNote             := FBN(sPPN_OUT_NOTE              ).AsString;
                FPeriodBeg        := FBN(sPPN_OUT_PERIOD_BEG        ).Value;
                FPeriodEnd        := FBN(sPPN_OUT_PERIOD_END        ).Value;
                FTypeHoliday      := FBN(sPPN_OUT_TYPE_HOLIDAY      ).AsInteger;
                FInvalidGroup     := FBN(sPPN_OUT_INVALID_GROUP     ).AsInteger;
                FIdTypeHoliday    := FBN(sPPN_OUT_ID_TYPE_HOLIDAY   ).Value;
                FWorkedDaysCount  := FBN(sPPN_OUT_WORKED_DAYS_COUNT ).AsInteger;
                FHolidayDaysCount := FBN(sPPN_OUT_HOLIDAY_DAYS_COUNT).AsInteger;
                FIsPps            := FBN(sPPN_OUT_IS_PPS            ).AsString;
            end;

                Holidays_Days_Count :=  FHolidayDaysCount;

            //�������� ���������� ������ ������������ ��������� ���� �� ������ ���������
            if ( FWorkedDaysCount < cDCount_HalfYear )
            then begin
                FHolidayDaysCount := FHolidayDaysCount*FWorkedDaysCount/cDCount_InYear;
                FHolidayDaysCount := SimpleRoundTo( FHolidayDaysCount, -2 );
                if (FHolidayDaysCount > Holidays_Days_Count)
                then FHolidayDaysCount := Holidays_Days_Count;
                FTypeParam        := thpProportional;
                //��������� ����� ����������
                GenNote( AnalyzeParams );
            end;

             //�������� ���������� ������ ������������ ��������� ���� �� ������ ���������
            if ( FIsPps = 'T')
            then begin
                FHolidayDaysCount := FHolidayDaysCount*FWorkedDaysCount/cDCount_InYear_PPS;
                FHolidayDaysCount := SimpleRoundTo( FHolidayDaysCount, -2 );
                if (FHolidayDaysCount > Holidays_Days_Count)
                then FHolidayDaysCount := Holidays_Days_Count;
                FTypeParam        := thpProportional;
                //��������� ����� ����������
                GenNote( AnalyzeParams );
            end;

            //�������� ������������ (3-� ������)
            if ( FInvalidGroup = 3 ) AND ( FHolidayDaysCount < cDCount_Invalid_3 )
            then begin
                FHolidayDaysCount := cDCount_Invalid_3;
                FTypeParam        := thpInvalid_3;
                //��������� ����� ����������
                GenNote( AnalyzeParams );
            end;

            //�������� ������������ (1-��, 2-�� ������)
            if ( FInvalidGroup in [1,2] ) AND ( FHolidayDaysCount < cDCount_Invalid_1_2 )
            then begin
                FHolidayDaysCount := cDCount_Invalid_1_2;
                FTypeParam        := thpInvalid_1_2;
                //��������� ����� ����������
                GenNote( AnalyzeParams );
            end;

            //�������� �� ���������������
            if ( FAge < 18 ) AND ( FHolidayDaysCount < cDCount_AgeLess18 )
            then begin
                FHolidayDaysCount := cDCount_AgeLess18;
                FTypeParam        := thpAgeLess18;
                //��������� ����� ����������
                GenNote( AnalyzeParams );
            end;

            //���������� ���������� � ���� ������� ��������
            aDataSet.CacheEdit( [aDataSet.FBN(sPPN_OUT_HOLIDAY_DAYS_COUNT).Index,
                                 aDataSet.FBN(sPPN_OUT_NOTE).Index],
                                [Round( FHolidayDaysCount ),
                                 FNote] );
        end;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

procedure TdmCalcPlanHoliday.CalcPlanHoliday;
var
    i, n         : Integer;
    OutputParams : TRec_OutputParams;
begin
    try
        //�������� ��(���������, �������� �� ����������������� �������� ��������) ��� �������
        if dstWork.Active then dstWork.Close;
        with dstWork, FInputParams
        do begin
            ParamByName(sPPN_IN_PERIOD_BEG        ).AsDate  := FPeriodBeg;
            ParamByName(sPPN_IN_PERIOD_END        ).AsDate  := FPeriodEnd;
            ParamByName(sPPN_IN_ID_WORK_DOG_MOVING).AsInt64 := FIdWorkDogMoving;
        end;
        dstWork.Open;

        n := dstWork.RecordCount - 1;

        try
            dstWork.DisableControls;
            dstWork.First;

            //��������� �������� ����������, �������� �� ����������������� �������� ��������
            for i := 0 to n
            do begin
                SetHolidayParams( dstWork );
                dstWork.Next;
            end;
        finally
            dstWork.EnableControls;
        end;

    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

end.


