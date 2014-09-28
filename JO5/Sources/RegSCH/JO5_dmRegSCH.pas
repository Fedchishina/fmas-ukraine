unit JO5_dmRegSCH;

interface

uses
  SysUtils, Classes, DB, FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, IBase,
  Jo5_Types, Controls, FIBQuery, pFIBQuery, pFIBStoredProc, RxMemDS,
  frxClass, frxDBSet, Forms, frxDesgn, Jo5_Consts, Jo5_Proc, Jo5_ErrorSch;

type
  TdmRegSCH = class(TDataModule)
    DB: TpFIBDatabase;
    ReadTransaction: TpFIBTransaction;
    DSet1: TpFIBDataSet;
    DSource1: TDataSource;
    DSet2: TpFIBDataSet;
    DSource2: TDataSource;
    spcSchet: TpFIBStoredProc;
    WriteTransaction: TpFIBTransaction;
    DBDataset: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    dstBuffer: TRxMemoryData;
    fldSCH_NUMBER: TStringField;
    fldSCH_TITLE: TStringField;
    fldSCH_ERROR: TStringField;
    Report: TfrxReport;
    procedure ReportGetValue(const VarName: String; var Value: Variant);
  private
    { Private declarations }
    pRegUchArray:TArrayInt64;
    pLanguageIndex:Byte;
  public
    pSelSch:TJo5SelectShc;
    { Public declarations }
    SysInfo:TJo5SysInfo;
    constructor Create(AOwner:TComponent;AHandle:TISC_DB_HANDLE;In_SysInfo:TJo5SysInfo); reintroduce;
    procedure Refresh(id_system:Integer);
    procedure Filter(NewKodSetup:Integer;NewDate:TDate;pRegUchList:TStrings;RegIndex:Integer;NewIdSchTypeObj:Integer;id_system:Integer);
    function ReturnRegUch(pRegUchList:TStrings;SelDate:TDateTime):integer;
    function GetKorParam:TJo5SchKor;
    procedure SelectSch(Num:Integer);
    procedure OpenSch;
    procedure CloseSch;
    procedure DoPrint;
    procedure RefreshSchByID(ID:Int64);
    function GetCurrIDSch:Int64;
    function GetCurrSelDate:TDate;
  end;

implementation

{$R *.dfm}

uses Dates, zProc, Kernel, ZMessages, Dialogs, JO5_Classes;

constructor TdmRegSCH.Create(AOwner:TComponent;AHandle:TISC_DB_HANDLE;In_SysInfo:TJo5SysInfo);
begin
  inherited Create(AOwner);
  pLanguageIndex:=IndexLanguage;
//******************************************************************************
  SysInfo:=In_SysInfo;
  pSelSch.SelDate:=SysInfo.CurrDate;
  pSelSch.SelKodSetup:=SysInfo.KodSetup;
  pSelSch.IdSchTypeObj:=SysInfo.IdSchTypeObj;
  pSelSch.IdRegUch:=SysInfo.DefIdRegUch;
//  SysInfo.KodSetup := CurrentKodSetup(AHandle);
//******************************************************************************
  DB.Handle:=AHandle;
  ReadTransaction.Active:=True;
end;

procedure TdmRegSCH.Refresh(id_system:Integer);
begin
  if DSet1.Active then DSet1.Close;
  DSet1.SQLs.SelectSQL.Text:='SELECT * FROM JO5_GET_ALL_SCH_OBORT('
                                 +IntToStr(pSelSch.IdRegUch)+','''
                                 +DateToStr(pSelSch.SelDate)+''','
                                 +IntToStr(pSelSch.IdSchTypeObj)+','
                                 +IntToStr(id_system)+')';


  DSet1.Open;
end;

procedure TdmRegSCH.Filter(NewKodSetup:Integer;NewDate:TDate;
                  pRegUchList:TStrings;RegIndex:Integer;NewIdSchTypeObj:Integer;id_system:Integer);
begin
  pSelSch.SelKodSetup  := NewKodSetup;
  pSelSch.SelDate      := NewDate;
  pSelSch.IdRegUch     :=TRegValue(pRegUchList.Objects[RegIndex]).id_reg;

  Refresh(id_system);
end;

function TdmRegSCH.ReturnRegUch(pRegUchList:TStrings; SelDate:TDateTime):integer;
var id_reg_uch:TRegValue;
    RC:Integer;
begin
  Result:=-1;
  pRegUchList.Clear;
  if DSet2.Active then DSet2.Close;
  DSet2.SQLs.SelectSQL.Text:='SELECT * FROM JO5_GET_ALL_REG_UCH_EX('+IntToStr(SysInfo.id_system)+','+''''+DateToStr(Seldate)+''''+')';
  DSet2.Open;
  DSet2.Last;
  RC:=DSet2.RecordCount+1;
  SetLength(pRegUchArray, RC);
  DSet2.First;
  while not DSet2.Eof do
  begin
        id_reg_uch:=TRegValue.Create;
        id_reg_uch.id_reg:=DSet2.FieldByName('OUT_ID_REG_UCH').Value;
        pRegUchList.AddObject(DSet2['OUT_REG_UCH_FULL_NAME'], TObject(id_reg_uch));

        pRegUchArray[DSet2.RecNo-1]:=DSet2['OUT_ID_REG_UCH'];

        if DSet2['OUT_ID_REG_UCH']=pSelSch.IdRegUch
        then Result:=DSet2.RecNo-1;

        DSet2.Next;
  end;
end;

function TdmRegSCH.GetKorParam:TJo5SchKor;
begin
  with Result do
   begin
    IdRegUch:=pSelSch.IdRegUch;
    IdSch:=DSet1['OUT_ID_SCH'];
    SelDate:=pSelSch.SelDate;
    HasChildren:=IfThen(DSet1['OUT_HAS_CHILDREN_BOOLEAN']=1,True,False);
    SchTitle:='� '+DSet1['OUT_SCH_NUMBER']+' - "'+ DSet1['OUT_SCH_TITLE']+'"';
    Oborots[0]:=DSet1['OUT_DB_SUMMA'];
    Oborots[1]:=DSet1['OUT_KR_SUMMA'];
   end;
end;

procedure  TdmRegSCH.SelectSch(Num:Integer);
begin
DSet1.RecNo:=Num+1;
end;

procedure TdmRegSCH.OpenSch;
var
  ModRes        : Integer;
  IdSCH         : Int64;
	IsOpen        : Boolean;
	IsClose       : Boolean;
	IsChild       : Boolean;
	MonthNum      : String;
  Handle        : String;
//	fmErrSch      : TfmErrorSch;
	IsSchSingle   : Boolean;
	ResultSchStr  : RESULT_STRUCTURE;
	PKernelSchStr : PKERNEL_SCH_MNGR_STRUCTURE;
begin
  Handle:=RegSch_Caption[PLanguageIndex];
  try
	try
        if not DSet1.IsEmpty
{1}     then begin
			//�������������� ����� ��� ���������������� ��������� ������ �������� �����
			if dstBuffer.Active	then dstBuffer.Close;
			dstBuffer.Open;

			IsOpen  := True;
            IsClose := not DSet1.FBN('OUT_IS_OPEN_BOOLEAN').AsBoolean;
            IsChild := not DSet1.FBN('OUT_HAS_CHILDREN_BOOLEAN').AsBoolean;

            //���������: �������� �� ���������� �������� �������� �����?
            if ( IsClose and IsChild )
{2}         then begin

                try
					IdSCH := DSet1.FBN('OUT_ID_SCH').AsVariant;

                    //��������� ��������� ��� ��������� ������
                    New( PKernelSchStr );
                    WriteTransaction.StartTransaction;

                    PKernelSchStr^.MODE     := Ord( mmOpenSch );
                    PKernelSchStr^.DBHANDLE := DSet1.Database.Handle;
                    PKernelSchStr^.TRHANDLE := WriteTransaction.Handle;

                    PKernelSchStr^.ID_SCH   := IdSCH;

                    //�������� �������� ������
                    ResultSchStr := SchManager( PKernelSchStr );
                    WriteTransaction.Commit;

                    //����������� ��������� �������� �������� �����
                    if ResultSchStr.RESULT_CODE = Ord( msrError )
{3}                 then begin
                        //���������� ���������� ��� �������������� �����
                        dstBuffer.Insert;
                        dstBuffer.FieldByName('SCH_NUMBER').Value := DSet1.FBN('OUT_SCH_NUMBER').AsString;
                        dstBuffer.FieldByName('SCH_TITLE' ).Value := DSet1.FBN('OUT_SCH_TITLE' ).AsString;
                        dstBuffer.FieldByName('SCH_ERROR' ).Value := ResultSchStr.RESULT_MESSAGE;
                        dstBuffer.Post;

                        IsOpen := False;
{-3}                end;
                finally
                    //����������� ����������� ���������� ������
                    if PKernelSchStr <> nil
{4}                 then begin
          						PKernelSchStr := nil;
                      Dispose( PKernelSchStr );
{-4}      					end;
			        	end;

                //��������� ������������ � ����������� �������� �������� ����� � ���������� ������
                if IsOpen
{5}             then begin
					//���������: �������� �� ������ ���� ������������ �������� � ������� �������?
					spcSchet.StoredProcName := 'JO5_IS_SCH_SINGLE_IN_CUR_PERIOD';
					spcSchet.ParamByName('IN_ID_SCH'  ).AsInt64   := IdSCH;
					spcSchet.ParamByName('IN_IS_CLOSE').AsInteger := Ord( smOpen );

					WriteTransaction.StartTransaction;
					spcSchet.Prepare;
					spcSchet.ExecProc;
					WriteTransaction.Commit;
					//�������� ��������� ��������
					IsSchSingle := Boolean( spcSchet.FN('OUT_SCH_IS_SINGLE_BOOLEAN').AsInteger );
					//����������� ������������� ����������� ���� ������� � ���������� ������
					if IsSchSingle
{6}     	then begin
						//��������� ������� � ���������� ������
						spcSchet.StoredProcName := 'JO5_INI_SETUP_UPDATE_KOD_PERIOD';
						spcSchet.ParamByName('IN_CLOSE_PERIOD_BOOL').AsInteger := Ord( smOpen );

						WriteTransaction.StartTransaction;
						spcSchet.Prepare;
						spcSchet.ExecProc;
						WriteTransaction.Commit;
 						//�������� ������ ��� �������� ������� �������
            SysInfo.KodSetup := spcSchet.FN('OUT_KOD_CURR_PERIOD' ).AsInteger;
            SysInfo.CurrDate := spcSchet.FN('OUT_DATE_CURR_PERIOD').AsDate;
  						//��������� �������� �������� �������
              MonthNum:=IntToStr(YearMonthFromKodSetup(SysInfo.KodSetup,False));
              if Length(MonthNum)=1 then MonthNum:='0'+MonthNum;
							//fmMain.mnuCurrPeriod.Caption := sMMenuCurrPeriodRUS + cBRAKET_OP + MonthNum + cBRAKET_CL + cSPACE + cMonthRUS[ StrToInt( MonthNum ) - 1 ] + cSPACE + IntToStr( YearOf( DateCurrPeriod ) ) + cYEAR_RUS_SHORT;
{-6}			end;
                    RefreshSchByID(IdSCH);

                    ZShowMessage(Handle, PChar( sMsgOKOpenSCH[PLanguageIndex] ),mtConfirmation,[mbOk]);
{-5}                end
{7}                else begin
                    ModRes := zShowMessage( Handle, PChar( sMsgErrOpenSCH[PLanguageIndex] ), mtError, [mbYes,mbNo]);

                    //���������� ����������� ������ ��� �������� �����
                    if ModRes = mrYes
{8}                    then begin
                ZShowMessage(Handle,ResultSchStr.RESULT_MESSAGE, mtInformation, [mbOk]);
{						try
							fmErrSch := TfmErrorSch.Create( Self, dstBuffer );
							fmErrSch.ShowModal;
						finally
							FreeAndNil( fmErrSch );
            end; }
{-8}                    end;

{-7}                end;

                dstBuffer.Close;

{-2}            end
{9}            else begin

                //�������� ������������ � �������� ������ � �������� �������� �����
                if not IsChild
                then
                    ZShowMessage( Handle, PChar( sMsgSchIsParentOp[PLanguageIndex] ), mtWarning, [mbOk] )
                else
                    if not IsClose
                    then
                        zShowMessage( Handle, PChar( sMsgSchIsOpened[PLanguageIndex] ), mtWarning , [mbOk] );
{-9}            end;

{-1}    end
        else begin
            ZShowMessage( Handle, PChar( sMsgSchIsAbsent[PLanguageIndex] ), mtError, [mbOk]);
        end;

	except
        //��������� �����������
        if WriteTransaction.InTransaction
        then
            WriteTransaction.Rollback;

        //����������� ������ ��� ��
        if dstBuffer.Active
        then
            dstBuffer.Close;

        //������������� ��
//		LogException( pSysOptions.LogFileName );
		Raise;
	end;

  except
	    on E: Exception
	    do begin
            ZShowMessage( Handle, ECaption[PLanguageIndex] + E.Message, mtError, [mbOk] );
        end;
  end;

end;

//��������� ������� ����
procedure TdmRegSCH.CloseSch;
var
  ModRes        : Integer;
  IdSCH         : Int64;
	IsOpen        : Boolean;
	IsClose       : Boolean;
	IsChild       : Boolean;
  NewSaldo      : Currency;
  Handle        : String;
	MonthNum      : String;
//	fmErrorSch    : TfmErrorSch;
	IsSchSingle   : Boolean;
	ResultSchStr  : RESULT_STRUCTURE;
	PKernelSchStr : PKERNEL_SCH_MNGR_STRUCTURE;
begin
  Handle:=RegSch_Caption[PLanguageIndex];
  try
	try
        if not DSet1.IsEmpty
        then begin
			//�������������� ����� ��� ���������������� ��������� ������ �������� �����
			if dstBuffer.Active then dstBuffer.Close;
			dstBuffer.Open;

			IsOpen  := DSet1.FBN('OUT_IS_OPEN_BOOLEAN').AsBoolean;
			IsChild := not DSet1.FBN('OUT_HAS_CHILDREN_BOOLEAN').AsBoolean;
			IsClose := True;

			//���������: �������� �� ���������� �������� �������� �����?
			if ( IsOpen and IsChild )
			then begin

				try
					IdSCH := DSet1.FBN('OUT_ID_SCH').AsVariant;

					//��������� ��������� ��� ��������� ������
					New( PKernelSchStr );
					WriteTransaction.StartTransaction;

					PKernelSchStr^.MODE         := Ord( mmCloseSch );
					PKernelSchStr^.DBHANDLE     := DSet1.Database.Handle;
					PKernelSchStr^.TRHANDLE     := WriteTransaction.Handle;

					PKernelSchStr^.ID_SCH       := IdSCH;
					PKernelSchStr^.DB_OBOR      := DSet1.FBN('OUT_DB_SUMMA'       ).AsCurrency;
					PKernelSchStr^.KR_OBOR      := DSet1.FBN('OUT_KR_SUMMA'       ).AsCurrency;
					PKernelSchStr^.DB_SALDO_IN  := DSet1.FBN('OUT_DB_SALDO_INPUT' ).AsCurrency;
					PKernelSchStr^.KR_SALDO_IN  := DSet1.FBN('OUT_KR_SALDO_INPUT' ).AsCurrency;
					PKernelSchStr^.DB_SALDO_OUT := DSet1.FBN('OUT_DB_SALDO_CUR'   ).AsCurrency;
					PKernelSchStr^.KR_SALDO_OUT := DSet1.FBN('OUT_KR_SALDO_CUR'   ).AsCurrency;

					//�������� �������� ������
					ResultSchStr := SchManager( PKernelSchStr );
					WriteTransaction.Commit;

					//����������� ��������� �������� �������� �����
					if ResultSchStr.RESULT_CODE = Ord( msrError )
					then begin
						//���������� ���������� ��� �������������� �����
						dstBuffer.Insert;
						dstBuffer.FieldByName('SCH_NUMBER').Value := DSet1.FBN('OUT_SCH_NUMBER').AsString;
						dstBuffer.FieldByName('SCH_TITLE' ).Value := DSet1.FBN('OUT_SCH_TITLE' ).AsString;
						dstBuffer.FieldByName('SCH_ERROR' ).Value := ResultSchStr.RESULT_MESSAGE;
						dstBuffer.Post;

						IsClose := False;
					end;

				finally
					//����������� ����������� ���������� ������
					if PKernelSchStr <> nil
					then begin
            PKernelSchStr := nil;
						Dispose( PKernelSchStr );
					end;
				end;

				//��������� ������������ � ����������� �������� �������� ����� � ��������� ������
				if IsClose
				then begin
					//���������: �������� �� ������ ���� ������������ ���������� � ������� �������?
					spcSchet.StoredProcName := 'JO5_IS_SCH_SINGLE_IN_CUR_PERIOD';
					spcSchet.ParamByName('IN_ID_SCH'  ).AsInt64   := IdSCH;
					spcSchet.ParamByName('IN_IS_CLOSE').AsInteger := Ord( smClose );

					WriteTransaction.StartTransaction;
					spcSchet.Prepare;
					spcSchet.ExecProc;
					WriteTransaction.Commit;

					//�������� ��������� ��������
					IsSchSingle := Boolean( spcSchet.FN('OUT_SCH_IS_SINGLE_BOOLEAN').AsInteger );

					//������ ������������ ������������� ������ ��� ���������� �������
					spcSchet.StoredProcName := 'JO5_DT_SALDO_DEL_EXT';

					spcSchet.ParamByName('IN_CLOSE_PERIOD_BOOL').AsInteger := Ord( smClose );
					spcSchet.ParamByName('IN_ID_SCH'           ).AsInt64 := IdSCH;

					WriteTransaction.StartTransaction;
					spcSchet.Prepare;
					spcSchet.ExecProc;

					//��������� ������������ ������������� ������ ��� ���������� �������
					spcSchet.StoredProcName := 'JO5_DT_SALDO_INS_EXT';

					spcSchet.ParamByName('IN_CLOSE_PERIOD_BOOL').AsInteger := Ord( smClose );
					spcSchet.ParamByName('IN_ID_SCH'           ).AsInt64   := IdSCH;
					spcSchet.Prepare;
					spcSchet.ExecProc;

                    //����������� ������������� ����������� ���� ������� � ��������� ������
                    if IsSchSingle
                    then begin
                        //��������� ������� � ��������� ������
						spcSchet.StoredProcName := 'JO5_INI_SETUP_UPDATE_KOD_PERIOD';
						spcSchet.ParamByName('IN_CLOSE_PERIOD_BOOL').AsInteger := Ord( smClose );

            spcSchet.Prepare;
						spcSchet.ExecProc;
            WriteTransaction.Commit;
						//�������� ������ ��� �������� ������� �������
            SysInfo.KodSetup := spcSchet.FN('OUT_KOD_CURR_PERIOD' ).AsInteger;
            SysInfo.CurrDate := spcSchet.FN('OUT_DATE_CURR_PERIOD').AsDate;
  						//��������� �������� �������� �������
              MonthNum:=IntToStr(YearMonthFromKodSetup(SysInfo.KodSetup,False));
              if Length(MonthNum)=1 then MonthNum:='0'+MonthNum;
							//fmMain.mnuCurrPeriod.Caption := sMMenuCurrPeriodRUS + cBRAKET_OP + MonthNum + cBRAKET_CL + cSPACE + cMonthRUS[ StrToInt( MonthNum ) - 1 ] + cSPACE + IntToStr( YearOf( DateCurrPeriod ) ) + cYEAR_RUS_SHORT;
						end;

                    RefreshSchByID(IdSCH);

                    ZShowMessage( Handle, PChar( sMsgOKCloseSCH[PLanguageIndex] ), mtInformation, [mbOk]);
                end
                else begin
                    ModRes := ZShowMessage( Handle, PChar( sMsgErrCloseSCH[PLanguageIndex] ), mtError, [mbYes, mbNo]);

                    //���������� ����������� ������ ��� �������� �����
                    if ModRes = mrYes
                    then begin
                ZShowMessage(Handle,ResultSchStr.RESULT_MESSAGE, mtInformation, [mbOk]);
{						try
							fmErrorSch := TfmErrorSch.Create( Self, dstBuffer );
							fmErrorSch.ShowModal;
						finally
							FreeAndNil( fmErrorSch );
                        end;}
                    end;

                end;

                dstBuffer.Close;

            end
            else begin

                //�������� ������������ � �������� ������ � �������� �������� �����
                if not IsChild
                then
                    ZShowMessage( Handle, PChar( sMsgSchIsParentCl[PLanguageIndex] ), mtWarning, [mbOk])
                else
                    if not IsOpen
                    then
                        ZShowMessage( Handle, PChar( sMsgSchIsClosed[PLanguageIndex] ), mtWarning, [mbOk]);
            end;

        end
        else begin
            ZShowMessage( Handle, PChar( sMsgSchIsAbsent[PLanguageIndex] ), mtError, [mbOk]);
        end;

	except
        //��������� �����������
        if WriteTransaction.InTransaction
        then
            WriteTransaction.Rollback;

        //����������� ������ ��� ��
        if dstBuffer.Active
        then
            dstBuffer.Close;

        //������������� ��
//		LogException( pSysOptions.LogFileName );
		Raise;
	end;

  except
	    on E: Exception
	    do begin
            ZShowMessage( Handle, ECaption[PLanguageIndex] + E.Message, mtError, [mbOk] );
        end;
  end;

end;


procedure TdmRegSCH.ReportGetValue(const VarName: String;
  var Value: Variant);
//const VisaText = '�����'+#13;
begin
   if VarName = 'Period' then
        Value := KodSetupToPeriod(pSelSch.SelKodSetup,4);
   if VarName = 'Visa' then
        Value :={ VisaText + }DateToStr( Date );
   if VarName = 'Order'
   then begin
        if pSelSch.IdRegUch<>-1
        then Value :=GetRegInfo(self,DB.Handle,pSelSch.IdRegUch)
        else Value := '5';
   end

end;

procedure TdmRegSCH.DoPrint;
const ReportName='Reports\JO5\JO5_ALL_SCH_INFO';
var
  FileName : String;
begin
  FileName:=ExtractFilePath(Application.ExeName)+ReportName+'.fr3';
  if FileExists(FileName) then
    begin
      DSet1.DisableControls;
      Refresh(SysInfo.id_system);
			//������� ����� �� �����
			Report.LoadFromFile(FileName,True);
{      if zDesignReport then Report.DesignReport
                       else} Report.ShowReport;
      DSet1.First;
      DSet1.EnableControls;
    end;
end;


procedure TdmRegSCH.RefreshSchByID(ID:Int64);
begin
    // ���������� ������
    DSet1.DisableControls;
    DSet1.SQLs.UpdateSQL.Text := 'execute procedure Z_EMPTY_PROC';
    DSet1.SQLs.RefreshSQL.Text :='select * from JO5_GET_SCH_OBORT_BY_ID('
                                 +IntToStr(pSelSch.IdRegUch)+','''
                                 +DateToStr(pSelSch.SelDate)+''','
                                 +IntToStr(pSelSch.IdSchTypeObj)+','
                                 +IntToStr(ID)+')';
    DSet1.Edit;
    DSet1.Post;
    DSet1.SQLs.UpdateSQL.Clear;
    DSet1.SQLs.RefreshSQL.Clear;
    DSet1.EnableControls;
end;

function TdmRegSCH.GetCurrIDSch:Int64;
begin
  Result:=DSet1['OUT_ID_SCH'];
end;

function TdmRegSCH.GetCurrSelDate:TDate;
begin
  Result:=pSelSch.SelDate;
end;
end.
