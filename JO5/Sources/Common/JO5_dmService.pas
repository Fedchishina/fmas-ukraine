unit JO5_dmService;

interface

uses
  SysUtils, Classes, DB, FIBDataSet, pFIBDataSet, FIBDatabase, Jo5_Consts, IBase,
  pFIBDatabase, RxMemDS, Jo5_Types, FIBQuery, pFIBQuery, pFIBStoredProc, Windows;

const
  sMsgOKOpenSystem     = 'C������ ������� ���������� � ���������� ������';
  sMsgOKCloseSystem    = 'C������ ������� ���������� � ��������� ������';
	sMsgErrOpenSystem    = '�� ������� �������� ������� � ���������� ������...'#13'�������� ����������� ������ ��� ���� �������������� ������?';
	sMsgErrCloseSystem   = '�� ������� ��������� ������� � ��������� ������...'#13'�������� ����������� ������ ��� ���� ������������� ������?';
  sMsgNoneOpenSystem   = '�� ������� �������� ������� � ���������� ������,'#13'��������� � ������� ������� ����������� �������� �����';
  sMsgNoneCloseSystem  = '�� ������� ��������� ������� � ��������� ������,'#13'��������� � ������� ������� ����������� ���������� �����';
	sErrorText    = '       ������: ';
	sErrorCode    = '��� ������: ';
	sErrorAddr    = '����� ������: ';
	sErrorSearch  = ' �� ������';
	sErrorTextExt = '������: ';

	sMsgCaptionErr = '������';
	sMsgCaptionWrn = '��������������';
	sMsgCaptionInf = '����������';
	sMsgCaptionQst = '�������������';
type
  TJO5_ServiceDM = class(TDataModule)
    dbJO5: TpFIBDatabase;
    dstMain: TpFIBDataSet;
    trWrite: TpFIBTransaction;
    spcMain: TpFIBStoredProc;
    trRead: TpFIBTransaction;
    dstBuffer: TRxMemoryData;
    fldSCH_NUMBER: TStringField;
    fldSCH_TITLE: TStringField;
    fldSCH_ERROR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    Handle:HWND;
    function NextPeriod(id_system:Integer):Integer;
    function PrevPeriod(id_system:Integer):Integer;
    constructor Create(AOwner:TComponent;DB_Handle:TISC_DB_HANDLE); reintroduce;
  end;

implementation

{$R *.dfm}
uses Jo5_ErrorSch, Kernel, ComObj;

constructor TJO5_ServiceDM.Create(AOwner:TComponent;DB_Handle:TISC_DB_HANDLE);
begin
  inherited Create(AOwner);
//******************************************************************************
  dbJO5.Handle:=DB_Handle;
  trRead.Active:=True;
  trWrite.Active:=True;
end;
//��������� ������� � ��������� ������
function TJO5_ServiceDM.NextPeriod(id_system:Integer):Integer;
var
	i, n          : Integer;
	ModRes        : Byte;
	IsClose       : Boolean;
//	MonthNum      : String;
	fmErrSch      : TfmErrorSch;
	ResultSchStr  : RESULT_STRUCTURE;
	PKernelSchStr : PKERNEL_SCH_MNGR_STRUCTURE;
begin
  IsClose := True;
  Result:=-1;
  try

	try
		//�������� ��������� ������, ����������� � ������� ������� ��� �������� ������� � ��������� ������
		dstMain.Close;
		dstMain.SQLs.SelectSQL.Text := 'SELECT * FROM JO5_GET_INFO_TO_CLOSE_PERIOD('+IntToStr(id_system)+')';
		dstMain.Open;

//    dstMain.Last;
		n := dstMain.RecordCount - 1;
//    dstMain.First;

		//�������������� ����� ��� ���������������� ��������� ������ ������ �������� �������
		if dstBuffer.Active	then dstBuffer.Close;
		dstBuffer.Open;



		//�������� ��������� ������� � ��������� ������ �� ���� ������
		for i := 0 to n
		do begin

			try
			    //��������� ��������� ��� ��������� ������
			    New( PKernelSchStr );
  			  trWrite.StartTransaction;

				PKernelSchStr^.MODE         := Ord( mmCloseSch );
				PKernelSchStr^.DBHANDLE     := dbJO5.Handle;
				PKernelSchStr^.TRHANDLE     := trWrite.Handle;

				PKernelSchStr^.ID_SCH       := dstMain.FBN('OUT_ID_SUB_SCH'     ).AsVariant;
				PKernelSchStr^.DB_OBOR      := dstMain.FBN('OUT_DB_OBOROT'      ).AsCurrency;
				PKernelSchStr^.KR_OBOR      := dstMain.FBN('OUT_KR_OBOROT'      ).AsCurrency;
				PKernelSchStr^.DB_SALDO_IN  := dstMain.FBN('OUT_DB_SALDO_INPUT' ).AsCurrency;
				PKernelSchStr^.KR_SALDO_IN  := dstMain.FBN('OUT_KR_SALDO_INPUT' ).AsCurrency;
				PKernelSchStr^.DB_SALDO_OUT := dstMain.FBN('OUT_DB_SALDO_OUTPUT').AsCurrency;
				PKernelSchStr^.KR_SALDO_OUT := dstMain.FBN('OUT_KR_SALDO_OUTPUT').AsCurrency;

				  //�������� �������� ������
				  ResultSchStr := SchManager( PKernelSchStr );
				  trWrite.Commit;

				//����������� ��������� �������� �������� �����
				if ResultSchStr.RESULT_CODE = Ord( msrError )
				then begin
					//���������� ���������� ��� �������������� �����
					dstBuffer.Insert;
					dstBuffer.FieldByName('SCH_NUMBER').Value := dstMain.FBN('OUT_SUB_SCH_NUMBER').AsString;
					dstBuffer.FieldByName('SCH_TITLE' ).Value := dstMain.FBN('OUT_SUB_SCH_TITLE' ).AsString;
					dstBuffer.FieldByName('SCH_ERROR' ).Value := ResultSchStr.RESULT_MESSAGE;
					dstBuffer.Post;

					IsClose := False;
          Break;
				end;

			finally
				//����������� ����������� ���������� ������
				if PKernelSchStr <> nil
				then begin
					Dispose( PKernelSchStr );
					PKernelSchStr := nil;
				end;
			end;

			dstMain.Next;

		end;

		//��������� ������� � ��������� ������ + �������� �������� ������ �� ���� ������
		if IsClose
		then begin

			dstMain.First;
			trWrite.StartTransaction;

			//��������� �������� ������ �� ���� ������
			for i := 0 to n
			do begin
				//������ ������������ ������������� ������ ��� ���������� �������
				spcMain.StoredProcName := 'JO5_DT_SALDO_DEL_EXT';
        spcMain.Prepare;

				spcMain.ParamByName('IN_CLOSE_PERIOD_BOOL').AsInteger := Ord( smClose );
				spcMain.ParamByName('IN_ID_SCH'           ).AsInt64   := dstMain.FBN('OUT_ID_SUB_SCH').AsVariant;
        spcMain.ParamByName('ID_SYSTEM').asInteger            := id_system;
				spcMain.ExecProc;

				//��������� ������������ ������������� ������ ��� ���������� �������
				spcMain.StoredProcName := 'JO5_DT_SALDO_INS_EXT';
				spcMain.Prepare;
				spcMain.ParamByName('IN_CLOSE_PERIOD_BOOL').AsInteger := Ord( smClose );
				spcMain.ParamByName('IN_ID_SCH'           ).AsInt64   := dstMain.FBN('OUT_ID_SUB_SCH').AsVariant;
        spcMain.ParamByName('ID_SYSTEM').Value                := id_system;

				spcMain.ExecProc;

				dstMain.Next;
			end;

			//��������� ������� � ��������� ������
			if n <> -1
			then begin
				spcMain.StoredProcName := 'JO5_INI_SETUP_UPDATE_KOD_PERIOD';
        spcMain.Prepare;
        spcMain.ParamByName('IN_ID_SYSTEM').Value:=id_system;
				spcMain.ParamByName('IN_CLOSE_PERIOD_BOOL').AsInteger := Ord( smClose );

				spcMain.Prepare;
				spcMain.ExecProc;

				//�������� ������ ��� �������� ������� �������
        Result := spcMain.FN('OUT_KOD_CURR_PERIOD').AsInteger;
			end;

			trWrite.Commit;

			//��������� ������������ � ����������� �������� ������� � ��������� ������
			if n <> -1
			then
				MessageBox( Handle, PChar( sMsgOKCloseSystem ), PChar( sMsgCaptionInf ), MB_OK or MB_ICONINFORMATION )
			else
				MessageBox( Handle, PChar( sMsgNoneCloseSystem ), PChar( sMsgCaptionWrn ), MB_OK or MB_ICONWARNING );

		end
		else begin
			ModRes := MessageBox( Handle, PChar( sMsgErrCloseSystem ), PChar( sMsgCaptionErr ), MB_YESNO or MB_ICONERROR );

			//���������� ����������� ������ �� ������
			if ModRes = ID_YES
			then begin
				try
					fmErrSch := TfmErrorSch.Create( Self, dstBuffer );
					fmErrSch.ShowModal;
				finally
					FreeAndNil( fmErrSch );
				end;
			end;

		end;

		dstBuffer.Close;

	except
		//��������� �����������
		if trWrite.InTransaction
		then
			trWrite.Rollback;

		//����������� ������ ��� ��
		if dstBuffer.Active
		then
			dstBuffer.Close;

		//������������� ��
//		LogException( dmdDataModul.pSysOptions.LogFileName );
		Raise;
	end;

  except
		on E: Exception
		do begin
			MessageBox( Handle, PChar( sErrorTextExt + E.Message ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );
		end;
  end;

end;

//���������� ������� � ���������� ������
function TJO5_ServiceDM.PrevPeriod(id_system:Integer):Integer;
var
	i, n          : Integer;
	ModRes        : Byte;
	IsOpen        : Boolean;
//	MonthNum      : String;
	fmErrSch      : TfmErrorSch;
	ResultSchStr  : RESULT_STRUCTURE;
	PKernelSchStr : PKERNEL_SCH_MNGR_STRUCTURE;
begin
  Result:=-1;
  try

	try
		//�������� ��������� ������, ����������� � ������� ������� ��� ������ ������� � ���������� ������
		dstMain.Close;
		dstMain.SQLs.SelectSQL.Text := 'SELECT * FROM JO5_GET_ALL_SCH_TO_OPEN_PERIOD('+IntToStr(id_system)+')';
		dstMain.Open;

//    dstMain.Last;
		n := dstMain.RecordCount - 1;
//    dstMain.First;

		//�������������� ����� ��� ���������������� ��������� ������ ������ �������
		if dstBuffer.Active	then dstBuffer.Close;
		dstBuffer.Open;

		IsOpen := True;

		//�������� �������� ������� � ���������� ������ �� ���� ������
		for i := 0 to n
		do begin

			try
				//��������� ��������� ��� ��������� ������
				New( PKernelSchStr );
				trWrite.StartTransaction;

				PKernelSchStr^.MODE     := Ord( mmOpenSch );
				PKernelSchStr^.DBHANDLE := dbJO5.Handle;
				PKernelSchStr^.TRHANDLE := trWrite.Handle;
				PKernelSchStr^.ID_SCH   := dstMain.FBN('OUT_ID_SUB_SCH').AsVariant;

				//�������� �������� ������
				ResultSchStr := SchManager( PKernelSchStr );
				trWrite.Commit;

				//����������� ��������� ������ �������� �����
				if ResultSchStr.RESULT_CODE = Ord( msrError )
				then begin
					//���������� ���������� ��� ��������������� �����
					dstBuffer.Insert;
					dstBuffer.FieldByName('SCH_NUMBER').Value := dstMain.FBN('OUT_SUB_SCH_NUMBER').AsString;
					dstBuffer.FieldByName('SCH_TITLE' ).Value := dstMain.FBN('OUT_SUB_SCH_TITLE' ).AsString;
					dstBuffer.FieldByName('SCH_ERROR' ).Value := ResultSchStr.RESULT_MESSAGE;
					dstBuffer.Post;

					IsOpen := False;
				end;

			finally
				//����������� ����������� ���������� ������
				if PKernelSchStr <> nil
				then begin
					Dispose( PKernelSchStr );
					PKernelSchStr := nil;
				end;
			end;

			dstMain.Next;

		end;

		//��������� ������������ � ����������� ������ �������
		if IsOpen
		then begin

			//��������� ����� ������� � ���������� ������
			if n <> -1
			then begin
				//�������������� � ���������� ��������� ��� ������ ������� � ���������� ������
				spcMain.StoredProcName := 'JO5_INI_SETUP_UPDATE_KOD_PERIOD';
        spcMain.ParamByName('IN_ID_SYSTEM').AsInteger := id_system;
				spcMain.ParamByName('IN_CLOSE_PERIOD_BOOL').AsInteger := Ord( smOpen );

				//���������� ������� � ���������� ������
				trWrite.StartTransaction;
				spcMain.Prepare;
				spcMain.ExecProc;
				trWrite.Commit;

				//�������� ������ ��� �������� ������� �������
        Result := spcMain.FN('OUT_KOD_CURR_PERIOD').AsInteger;
			 {	with dmdDataModul.pSysOptions
				do begin
					KodCurrPeriod  := spcMain.FN('OUT_KOD_CURR_PERIOD' ).AsInteger;
					DateCurrPeriod := spcMain.FN('OUT_DATE_CURR_PERIOD').AsDate;

					//��������� �������� �������� �������
					MonthNum := IntToStr( MonthOf( DateCurrPeriod ) );
					SetFirstZero( MonthNum );
					mnuCurrPeriod.Caption := sMMenuCurrPeriodRUS + cBRAKET_OP + MonthNum + cBRAKET_CL + cSPACE + cMonthRUS[ StrToInt( MonthNum ) - 1 ] + cSPACE + IntToStr( YearOf( DateCurrPeriod ) ) + cYEAR_RUS_SHORT;
				end; }

				MessageBox( Handle, PChar( sMsgOKOpenSystem ), PChar( sMsgCaptionInf ), MB_OK or MB_ICONINFORMATION );
			end
			else begin
				MessageBox( Handle, PChar( sMsgNoneOpenSystem ), PChar( sMsgCaptionWrn ), MB_OK or MB_ICONWARNING );
			end;

		end
		else begin
            ModRes := MessageBox( Handle, PChar( sMsgErrOpenSystem ), PChar( sMsgCaptionErr ), MB_YESNO or MB_ICONERROR );

            //���������� ����������� ������ �� ������
            if ModRes = ID_YES
            then begin
				try
					fmErrSch := TfmErrorSch.Create( Self, dstBuffer );
					fmErrSch.ShowModal;
				finally
					FreeAndNil( fmErrSch );
				end;
			end;

        end;

		dstBuffer.Close;

	except

        //��������� �����������
        if trWrite.InTransaction
        then
            trWrite.Rollback;

        //����������� ������ ��� ��
        if dstBuffer.Active
        then
            dstBuffer.Close;

        //������������� ��
//		LogException( dmdDataModul.pSysOptions.LogFileName );
		Raise;
	end;

  except
	     on E: Exception
	     do begin
             MessageBox( Handle, PChar( sErrorTextExt + E.Message ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );
         end;
  end;

end;

end.
