unit uSetPrtMOParams;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uSetPrtMOParams                                                            *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	������ ������ ���������� ������ ������������� ������.                      *
*                                                                              *
* Copyright  �  ��� 2006,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDatabase, pFIBDatabase,
  DB, RxMemDS, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ImgList, dxBar,
  dxBarExtItems, cxContainer, cxLabel, Menus, FIBDataSet, pFIBDataSet,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox, IBase,
  frxClass, cxTextEdit, frxDBSet, cxLookAndFeelPainters, StdCtrls,
  cxButtons, frxExportPDF, frxExportImage, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportTXT;

type

  //������������� ��� ��� ����������� ������� ������������
  TSelectionMode = (  smSelectAll, smUnSelectAll, smInvert );

  //������ ��� �������� ���������� �������� ������
  TRec_InputParams = record
      Owner         : TComponent;
	  DBHandle      : TISC_DB_HANDLE;
      ReportPath    : String;
      PeriodDateBeg : TDate;
      PeriodDateEnd : TDate;
  end;
  
  TfmSetPrtMOParams = class( TForm )
  
    imlToolBar              : TImageList;
    imlPopupMenu            : TImageList;

    btnOK                   : TcxButton;
    btnCancel               : TcxButton;

    dsrWork                 : TDataSource;
    dstWork                 : TRxMemoryData;

    dbWork                  : TpFIBDatabase;
    dstBuffer               : TpFIBDataSet;
    trRead                  : TpFIBTransaction;
    trWrite                 : TpFIBTransaction;
    spcWork                 : TpFIBStoredProc;

    pnlForButtons           : TPanel;

    lblDescription          : TcxLabel;

    brmWork                 : TdxBarManager;

    srpWork                 : TcxStyleRepository;

    cxsHeader               : TcxStyle;
    cxsFooter               : TcxStyle;
    cxHotTrack              : TcxStyle;
    cxsContent              : TcxStyle;
    cxsInactive             : TcxStyle;
    cxsIndicator            : TcxStyle;
    cxsSelection            : TcxStyle;
    cxBackground            : TcxStyle;
    cxsGroupByBox           : TcxStyle;
    cxsContentOdd           : TcxStyle;
    cxsContentEven          : TcxStyle;
    cxsColumnHeader         : TcxStyle;
    cxsColumnHeaderClassic  : TcxStyle;

    btnInvert               : TdxBarLargeButton;
    btnRefresh              : TdxBarLargeButton;
    btnSelectAll            : TdxBarLargeButton;
    btnUnSelectAll          : TdxBarLargeButton;

    edtYearBeg              : TdxBarSpinEdit;
    edtYearEnd              : TdxBarSpinEdit;
    edtMonthBeg             : TdxBarCombo;
    edtMonthEnd             : TdxBarCombo;

    pmnuWork                : TPopupMenu;
    pmnuInvert              : TMenuItem;
    pmnuRefresh             : TMenuItem;
    pmnuDelimiter           : TMenuItem;
    pmnuSelectAll           : TMenuItem;
    pmnuUnSelectAll         : TMenuItem;

    fnID_PKV                : TLargeintField;
    fnCHECKED               : TBooleanField;
    fnMO_CHAR               : TStringField;
    fnPKV_CODE              : TStringField;
    fnPKV_NAME              : TStringField;
    fnID_TYPE_FINANCE       : TLargeintField;
    fnTYPE_FINANCE_CODE     : TIntegerField;
    fnTYPE_FINANCE_NAME     : TStringField;

    gdWork                  : TcxGrid;
    lvlWork                 : TcxGridLevel;
    tvwWork                 : TcxGridDBBandedTableView;

    cmnID_PKV               : TcxGridDBBandedColumn;
    cmnCHECKED              : TcxGridDBBandedColumn;
    cmnMO_CHAR              : TcxGridDBBandedColumn;
    cmnPKV_CODE             : TcxGridDBBandedColumn;
    cmnPKV_NAME             : TcxGridDBBandedColumn;
    cmnID_TYPE_FINANCE      : TcxGridDBBandedColumn;
    cmnTYPE_FINANCE_CODE    : TcxGridDBBandedColumn;
    cmnTYPE_FINANCE_NAME    : TcxGridDBBandedColumn;
    frdsWork                : TfrxDBDataset;
    frrWork: TfrxReport;
    frxTXTExport1: TfrxTXTExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxPDFExport1: TfrxPDFExport;

    procedure FormShortCut                                          (var Msg: TWMKey; var Handled: Boolean);

    procedure edtMonthBegChange                                     (Sender: TObject);
    procedure edtYearBegButtonClick                                 (Sender: TdxBarSpinEdit;Button: TdxBarSpinEditButton);
    
    procedure btnInvertClick                                        (Sender: TObject);
    procedure btnRefreshClick                                       (Sender: TObject);
    procedure btnSelectAllClick                                     (Sender: TObject);
    procedure btnUnSelectAllClick                                   (Sender: TObject);

    procedure dstWorkAfterOpen                                      (DataSet: TDataSet);
    procedure dstWorkAfterClose                                     (DataSet: TDataSet);

    procedure tvwWorkKeyDown                                        (Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure tvwWorkCellClick                                      (Sender: TcxCustomGridTableView;ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;AShift: TShiftState; var AHandled: Boolean);
    procedure tvwWorkDataControllerSummaryFooterSummaryItemsSummary (ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;var OutArguments: TcxSummaryEventOutArguments);

    procedure btnOKClick                                            (Sender: TObject);
    procedure frrWorkGetValue                                       (const VarName: String; var Value: Variant);

  private
	  FReportPath       : String;
	  FSelectedRecCount : Integer;

      function  GetReportPath       : String;
	  function  GetSelectedRecCount : Integer;
	  procedure SetSelectedRecCount ( aValue: Integer );

      function  LoadFromBuffer : Boolean;
      procedure SelectRecords( const aSelectionMode: TSelectionMode );
  public
      constructor Create( aInputParams: TRec_InputParams ); reintroduce;

      property pReportPath       : String  read GetReportPath;
	  property pSelectedRecCount : Integer read GetSelectedRecCount write SetSelectedRecCount;
  end;

    procedure SetPrtMOParamsExt( aInputParams: TRec_InputParams ); stdcall;

    exports
        SetPrtMOParamsExt;
    
implementation

uses DateUtils;

const

	{*****************************************}
    {   *** ��������� ������ ���������� ***   }
    {*****************************************}

    cZERO                = 0;
    cTICK                = '''';
    cSEMICOLON           = ',';
    cBRACKET_OPEN        = '(';
    cBRACKET_CLOSE       = ')'; 
    cDEF_REPORT_PATH     = 'Reports\JO5\JO5_PRT_MO.fr3';
    cDEF_KEY_FIELD_NAMES = 'OUT_ID_PKV;OUT_ID_TYPE_FINANCE';

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

    //�������� ����� ��
    sID_PKV_FN              = 'OUT_ID_PKV';
	sCHECKED_FN             = 'CHECKED';
	sMO_CHAR_FN             = 'OUT_MO_CHAR';
    sPKV_CODE_FN            = 'OUT_PKV_CODE';
    sPKV_NAME_FN            = 'OUT_PKV_NAME';
    sKEY_SESSION_FN         = 'OUT_KEY_SESSION';
    sID_TYPE_FINANCE_FN     = 'OUT_ID_TYPE_FINANCE';
    sTYPE_FINANCE_CODE_FN   = 'OUT_TYPE_FINANCE_CODE';
    sTYPE_FINANCE_NAME_FN   = 'OUT_TYPE_FINANCE_NAME';

    //������������ SQL-��������          
    sSQL_SEL_MOData     = 'SELECT * FROM JO5_GET_DATA_FOR_PRT_MO(';
    sSQL_SEL_MOParams   = 'SELECT * FROM JO5_GET_MO_PARAMS(';
    sSQL_SEL_KeySession = 'SELECT * FROM JO5_GET_KEY_SESSION(1)';

    //��������� �� �������
    sERR_InvertUA               = ' ����������� ����,';
    sERR_EmptyDSUA              = '������� ������ ������ ������';
    sERR_SelectAllUA            = ' ������� �� ������,';
    sERR_NoAbilityUA            = '���������';
    sERR_UnSelectAllUA          = ' ����� ���� ��� ��� ������,';
	sERR_ReportCreateUA         = '������� ���������� ������ �����: ';
	sERR_LoadToBufferUA         = '������� ������������ ����� �� ������: ';
	sERR_InvalidPeriodUA        = '��� ��������� ������ ��������� ������������ ������ ������.'#13'��������� ������� ����� ����� �� �������� "�������".';
    sERR_NoSelectedRecUA        = '��������� ���������� ���, �������'#13'�� ������ ������� ���������!';
	sERR_ReportNotFoundUA       = '��������� ���������� ���, �������'#13'�� ������� ������ ���� ����� �����!';
	sERR_LoadFromBufferUA       = '������� ������������ ����� �� ������: ';
	sERR_InvalidBordersPeriodUA = '�� ���� ������� ������� ������!';

    //�������� ��������� ���������� ������
    sFRN_DateBeg = 'DateBeg';
    sFRN_DateEnd = 'DateEnd';
 
{$R *.dfm}

function TfmSetPrtMOParams.GetSelectedRecCount: Integer;
begin
  Result := FSelectedRecCount;
end;

function TfmSetPrtMOParams.GetReportPath: String;
begin
  Result := FReportPath;
end;

procedure TfmSetPrtMOParams.SetSelectedRecCount(aValue: Integer);
begin
  FSelectedRecCount := aValue;
end;

function TfmSetPrtMOParams.LoadFromBuffer: Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	LoadFromBuffer                                                             *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* ������������ ������ �� ������ �� � ������.                                   *
*                                                                              *
* RESULT: Boolean                                                              *
*                                                                              *
*        ���� �������� ���� ������� ������ �������, ����� True. ����� - False. *
*                                                                              *
*******************************************************************************}
var
    i, n : Integer;
begin
    try
        n := dstBuffer.RecordCount - 1;
        
        try
            dstBuffer.DisableControls;
            dstBuffer.First;

            if dstWork.Active then dstWork.Close;
            dstWork.DisableControls;
            dstWork.Open;

            for i := 0 to n
            do begin
                dstWork.Append;                                           
                dstWork.FieldByName( sMO_CHAR_FN           ).AsString  := dstBuffer.FBN( sMO_CHAR_FN           ).AsString;
                dstWork.FieldByName( sID_PKV_FN            ).AsBCD     := dstBuffer.FBN( sID_PKV_FN            ).AsBCD;
                dstWork.FieldByName( sPKV_CODE_FN          ).AsString  := dstBuffer.FBN( sPKV_CODE_FN          ).AsString;
                dstWork.FieldByName( sPKV_NAME_FN          ).AsString  := dstBuffer.FBN( sPKV_NAME_FN          ).AsString;
                dstWork.FieldByName( sID_TYPE_FINANCE_FN   ).AsBCD     := dstBuffer.FBN( sID_TYPE_FINANCE_FN   ).AsBCD;
                dstWork.FieldByName( sTYPE_FINANCE_CODE_FN ).AsInteger := dstBuffer.FBN( sTYPE_FINANCE_CODE_FN ).AsInteger;
                dstWork.FieldByName( sTYPE_FINANCE_NAME_FN ).AsString  := dstBuffer.FBN( sTYPE_FINANCE_NAME_FN ).AsString;
                dstWork.Post;
                dstBuffer.Next;
            end;
            
            dstWork.First;
            Result := True;
            
        finally
            dstWork.EnableControls;
            dstBuffer.EnableControls;
        end;
    except
        on E: Exception
        do begin
            Result := False;
            if dstWork.Active then dstWork.Close;
            MessageBox( Handle, PChar( sERR_LoadFromBufferUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

procedure TfmSetPrtMOParams.SelectRecords(const aSelectionMode: TSelectionMode);

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	SelectRecords                                                              *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
* �������� ��������� ������� �� ������ ������ � ����������� �� ���� ������.    *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aSelectionMode - ����� ������ ��������� �������.                        *
*                                                                              *
*******************************************************************************}
var
    i, n  : Integer;
begin
    n := dstWork.RecordCount - 1;
    SetSelectedRecCount(cZERO);

    try
        dstWork.DisableControls;
        dstWork.First;

        case aSelectionMode of

          smInvert      : begin
                              for i := 0 to n
                              do begin
                                  dstWork.Edit;
                                  if dstWork.FieldByName(sCHECKED_FN).AsBoolean
                                  then begin
                                      dstWork.FieldByName(sCHECKED_FN).AsBoolean := False;
                                  end
                                  else begin
                                      dstWork.FieldByName(sCHECKED_FN).AsBoolean := True;
                                      Inc( FSelectedRecCount );
                                  end;
                                  dstWork.Post;
                                  dstWork.Next;
                              end;
                          end;


          smSelectAll   : begin
                              SetSelectedRecCount( n + 1 );

                              for i := 0 to n
                              do begin
                                  dstWork.Edit;
                                  dstWork.FieldByName(sCHECKED_FN).AsBoolean := True;
                                  dstWork.Post;
                                  dstWork.Next;
                              end;
                          end;

          smUnSelectAll : begin
                              for i := 0 to n
                              do begin
                                  dstWork.Edit;
                                  dstWork.FieldByName(sCHECKED_FN).AsBoolean := False;
                                  dstWork.Post;
                                  dstWork.Next;
                              end;
                          end;
        end;
        
    finally
        dstWork.EnableControls;
    end;
    
end;

//������� ��������� ��� ������ ������ ������ ��
procedure SetPrtMOParamsExt( aInputParams: TRec_InputParams );
var
    fmSetPrtMOParams : TfmSetPrtMOParams;
begin
    try
        try
            fmSetPrtMOParams := TfmSetPrtMOParams.Create( aInputParams );
            fmSetPrtMOParams.ShowModal;
        finally
            if TfmSetPrtMOParams <> nil then FreeAndNil( fmSetPrtMOParams );
        end;
    except
        on E: Exception
        do begin
            MessageBox( 0, PChar( sErrorTextExtUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//�������������� ���� ������ � ���������� ����������
constructor TfmSetPrtMOParams.Create( aInputParams: TRec_InputParams );
begin
    //�������������� ���� ������ � ���������� ����������
    inherited Create( aInputParams.Owner );

    FSelectedRecCount := cZERO;

    if FileExists( aInputParams.ReportPath )
    then begin
        FReportPath := aInputParams.ReportPath;
    end
    else begin
        FReportPath := cDEF_REPORT_PATH;
    end;
    
    dbWork.Handle := aInputParams.DBHandle;
    trRead.StartTransaction;

    //��������� ��������� ���������� �� ���������
    edtYearBeg.CurValue      := YearOf ( aInputParams.PeriodDateBeg );
    edtYearEnd.CurValue      := YearOf ( aInputParams.PeriodDateEnd );
    edtMonthBeg.CurItemIndex := MonthOf( aInputParams.PeriodDateBeg ) - 1;
    edtMonthEnd.CurItemIndex := MonthOf( aInputParams.PeriodDateEnd ) - 1;

    //�������� ���������� ��������� ���������� ��� ������������ ������������ ����������
    try
        if dstBuffer.Active then dstBuffer.Close;
        dstBuffer.SQLs.SelectSQL.Text := sSQL_SEL_MOParams + cTICK + DateToStr( aInputParams.PeriodDateBeg ) + cTICK + cSEMICOLON +
                                                             cTICK + DateToStr( aInputParams.PeriodDateEnd ) + cTICK + cBRACKET_CLOSE;
        try
            dstBuffer.Open;

            if not dstBuffer.IsEmpty
            then begin
                LoadFromBuffer;
            end
            else begin
                MessageBox( Handle, PChar( sERR_InvalidPeriodUA ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
                if tvwWork.Visible then tvwWork.Control.SetFocus;
            end
        finally
            dstBuffer.Close;
        end;
        
    except
        on E: Exception
        do begin
            MessageBox( Handle, PChar( sERR_LoadToBufferUA + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//������������ ������� �������
procedure TfmSetPrtMOParams.FormShortCut(var Msg: TWMKey;
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

//���������� �������� ������������� ��������
procedure TfmSetPrtMOParams.edtYearBegButtonClick(Sender: TdxBarSpinEdit;
  Button: TdxBarSpinEditButton);
begin
	Sender.Value := Sender.CurValue;
end;

//������� ����� ������ ��� ��������� ��������� ����������
procedure TfmSetPrtMOParams.edtMonthBegChange(Sender: TObject);
begin
    dstWork.Close;
end;

//�������� ��� ������
procedure TfmSetPrtMOParams.btnSelectAllClick(Sender: TObject);
var
    IdPKV         : int64;
    IdTypeFinance : int64;
begin
    try
        if not dstWork.IsEmpty
        then begin
            //��������� ���������� �� ��������� �������
            if pSelectedRecCount <> dstWork.RecordCount
            then begin
                try
                    tvwWork.DataController.BeginUpdate;
                    //�������� �������� ��� ����������� ����������������
                    IdPKV         := dstWork.FieldByName(sID_PKV_FN         ).Value;
                    IdTypeFinance := dstWork.FieldByName(sID_TYPE_FINANCE_FN).Value;
                    SelectRecords( smSelectAll );

                    //��������������� �� �������� �� �������������� ������
                    tvwWork.DataController.BeginLocate;
                    dstWork.Locate( cDEF_KEY_FIELD_NAMES, VarArrayOf( [IdPKV, IdTypeFinance] ), [] );
                finally
                    tvwWork.DataController.EndLocate;
                    tvwWork.DataController.EndUpdate;
                end;
            end;
        end
        else begin
			MessageBox( Handle, PChar( sERR_NoAbilityUA + sERR_SelectAllUA + #13 + sERR_EmptyDSUA ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
            if tvwWork.Visible then tvwWork.Control.SetFocus;
        end;
    except
        on E: Exception
        do begin
            MessageBox( Handle, PChar( sErrorTextExtUA + e.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//������� ��������� ��� ���� �������
procedure TfmSetPrtMOParams.btnUnSelectAllClick(Sender: TObject);
var
    IdPKV         : int64;
    IdTypeFinance : int64;
begin
    try
        if not dstWork.IsEmpty
        then begin
            //��������� ���������� ��������� �������
            if pSelectedRecCount <> 0
            then begin
                try
                    tvwWork.DataController.BeginUpdate;
                    //�������� �������� ��� ����������� ����������������
                    IdPKV         := dstWork.FieldByName(sID_PKV_FN         ).Value;
                    IdTypeFinance := dstWork.FieldByName(sID_TYPE_FINANCE_FN).Value;
                    SelectRecords( smUnSelectAll );

                    //��������������� �� �������� �� �������������� ������
                    tvwWork.DataController.BeginLocate;
                    dstWork.Locate( cDEF_KEY_FIELD_NAMES, VarArrayOf( [IdPKV, IdTypeFinance] ), [] );
                finally
                    tvwWork.DataController.EndUpdate;
                    tvwWork.DataController.EndLocate;
                end;
            end;
        end
        else begin
			MessageBox( Handle, PChar( sERR_NoAbilityUA + sERR_UnSelectAllUA + #13 + sERR_EmptyDSUA ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
            if tvwWork.Visible then tvwWork.Control.SetFocus;
        end;
    except
        on E: Exception
        do begin
            MessageBox( Handle, PChar( sErrorTextExtUA + e.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//����������� ���������
procedure TfmSetPrtMOParams.btnInvertClick(Sender: TObject);
var
    IdPKV         : int64;
    IdTypeFinance : int64;
begin
	try
		if not dstWork.IsEmpty
		then begin
            try
                tvwWork.DataController.BeginUpdate;
                //�������� �������� ��� ����������� ����������������
                IdPKV         := dstWork.FieldByName(sID_PKV_FN         ).Value;
                IdTypeFinance := dstWork.FieldByName(sID_TYPE_FINANCE_FN).Value;
                SelectRecords( smInvert );

                //��������������� �� �������� �� �������������� ������
                tvwWork.DataController.BeginLocate;
                dstWork.Locate( cDEF_KEY_FIELD_NAMES, VarArrayOf( [IdPKV, IdTypeFinance] ), [] );
            finally
                tvwWork.DataController.EndUpdate;
                tvwWork.DataController.EndLocate;
            end;
		end
		else begin
			MessageBox( Handle, PChar( sERR_NoAbilityUA + sERR_InvertUA + #13 + sERR_EmptyDSUA ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
            if tvwWork.Visible then tvwWork.Control.SetFocus;
		end;
	except
        on E: Exception
        do begin
            MessageBox( Handle, PChar( sErrorTextExtUA + e.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
	end
end;

//��������� ����� ��������� ���������� ������ � ������������ � ���������� ���������� ����������
procedure TfmSetPrtMOParams.btnRefreshClick(Sender: TObject);
var
    DateBeg  : TDate;
    DateEnd  : TDate;
    YearBeg  : Integer;
    YearEnd  : Integer;
    MonthBeg : Integer;
    MonthEnd : Integer;
begin
    try
        //�������� ���� ������ � ��������� �������
        YearBeg  := edtYearBeg.IntCurValue;
        YearEnd  := edtYearEnd.IntCurValue;
        MonthBeg := edtMonthBeg.CurItemIndex + 1;
        MonthEnd := edtMonthEnd.CurItemIndex + 1;

        DateBeg  := StartOfAMonth( YearBeg, MonthBeg );
        DateEnd  := EndOfAMonth  ( YearEnd, MonthEnd );

        //�������� ���������� ��������� ���������� ��� ������������ ������������ ����������
        if dstBuffer.Active then dstBuffer.Close;
        dstBuffer.SQLs.SelectSQL.Text := sSQL_SEL_MOParams + cTICK + DateToStr( DateBeg ) + cTICK + cSEMICOLON +
                                                             cTICK + DateToStr( DateEnd ) + cTICK + cBRACKET_CLOSE;
        try
            dstBuffer.Open;

            if not dstBuffer.IsEmpty
            then begin
                //��������� ��������� ���������� ��� ������������ ��
                LoadFromBuffer;
            end
            else begin
                MessageBox( Handle, PChar( sERR_InvalidPeriodUA ), PChar( sMsgCaptionInfUA ), MB_OK or MB_ICONINFORMATION );
                if tvwWork.Visible then tvwWork.Control.SetFocus;
            end
        finally
            dstBuffer.Close;
        end;
        
    except
        on E: Exception
        do begin
            MessageBox( Handle, PChar( sERR_LoadToBufferUA  + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//�������� �����, ����������� ������������ ��� ��������� �����
procedure TfmSetPrtMOParams.dstWorkAfterOpen(DataSet: TDataSet);
begin
    lblDescription.Visible := False;
end;

//���������� �����, ����������� ������������ ��� ��������� �����
procedure TfmSetPrtMOParams.dstWorkAfterClose(DataSet: TDataSet);
begin
	lblDescription.Visible := True;
    SetSelectedRecCount( cZERO );
    tvwWork.DataController.Summary.FooterSummaryValues[cmnCHECKED.Index] := cZERO;
    tvwWork.DataController.Summary.FooterSummaryValues[cmnMO_CHAR.Index] := cZERO;
end;

//��������(������� �������) ��� ��������� ������������� ������
procedure TfmSetPrtMOParams.tvwWorkCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    //��������(������� �������) ��� ��������� ������������� ������
    if ( ACellViewInfo.Item.Name = cmnCHECKED.Name ) and ( AButton = mbLeft )
    then begin
        try
            aHandled := False;
            dstWork.Edit;

            if dstWork.FieldByName(sCHECKED_FN).AsBoolean
            then begin
                dstWork.FieldByName(sCHECKED_FN).AsBoolean := False;
                pSelectedRecCount := pSelectedRecCount - 1;
            end
            else begin
                dstWork.FieldByName(sCHECKED_FN).AsBoolean := True;
                pSelectedRecCount := pSelectedRecCount + 1;
            end;

            dstWork.Post;
        finally
            aHandled := True;
        end;
    end;
end;

//��������(������� �������) ��� ��������� ������������� ������
procedure TfmSetPrtMOParams.tvwWorkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //��������(������� �������) ��� ��������� ������������� ������
    if not dstWork.IsEmpty AND ( Key = VK_SPACE )
    then begin
        dstWork.Edit;

        if dstWork.FieldByName(sCHECKED_FN).AsBoolean
        then begin
            dstWork.FieldByName(sCHECKED_FN).AsBoolean := False;
            pSelectedRecCount := pSelectedRecCount - 1;
        end
        else begin
            dstWork.FieldByName(sCHECKED_FN).AsBoolean := True;
            pSelectedRecCount := pSelectedRecCount + 1;
        end;

        dstWork.Post;
    end;
end;

//���������� ���������� ���������� ������� � "��������" ������
procedure TfmSetPrtMOParams.tvwWorkDataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
begin
   //��������� ���-�� ���������� ������
   if Arguments.SummaryItem.Index = cmnCHECKED.Index
   then begin
	   OutArguments.SummaryValue := pSelectedRecCount;
   end;
end;

//��������� �������� ����� ������������� ������
procedure TfmSetPrtMOParams.btnOKClick(Sender: TObject);
var
    i, n          : Integer;
    IdPKV         : Int64;
    DateBeg       : TDate;
    DateEnd       : TDate;
    YearBeg       : Integer;
    YearEnd       : Integer;
    MonthBeg      : Integer;
    MonthEnd      : Integer;
    KeySession    : Int64;
    IdTypeFinance : Int64;
begin
    try
        //���������: ������ �� ������������ ���� �� ���� �������� ��� ����������� ��?
        if pSelectedRecCount < 1
        then begin
            ModalResult := mrNone;
            MessageBox( Handle, PChar( sERR_NoSelectedRecUA ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
            if tvwWork.Visible then tvwWork.Control.SetFocus;
            Exit;
        end;

        //�������� ���� ������ � ��������� �������
        YearBeg  := edtYearBeg.IntCurValue;
        YearEnd  := edtYearEnd.IntCurValue;
        MonthBeg := edtMonthBeg.CurItemIndex + 1;
        MonthEnd := edtMonthEnd.CurItemIndex + 1;

        DateBeg  := StartOfAMonth( YearBeg, MonthBeg );
        DateEnd  := EndOfAMonth  ( YearEnd, MonthEnd );

        //���������: ������������ ������ �������?
        if DateBeg > DateEnd
        then begin
            ModalResult := mrNone;
            MessageBox( Handle, PChar( sERR_InvalidBordersPeriodUA ), PChar( sMsgCaptionWrnUA ), MB_OK or MB_ICONWARNING );
            if tvwWork.Visible then tvwWork.Control.SetFocus;
            Exit;
        end;

        //�������� ������������� ������
        try
            if dstBuffer.Active then dstBuffer.Close;
            dstBuffer.SQLs.SelectSQL.Text := sSQL_SEL_KeySession;
            dstBuffer.Open;
            
            KeySession := dstBuffer.FBN('OUT_KEY_SESSION').Value;
        finally
            dstBuffer.Close;
        end;
        
        //��������� ����� ���������� ��������� ������������� ����������
        n             := dstWork.RecordCount - 1;
        IdPKV         := dstWork.FieldByName(sID_PKV_FN         ).Value;
        IdTypeFinance := dstWork.FieldByName(sID_TYPE_FINANCE_FN).Value;
        
        spcWork.StoredProcName := 'JO5_BUFFER_MO_INS';
        
        try
            dstWork.DisableControls;
            dstWork.First;
            trWrite.StartTransaction;
            
            for i := 0 to n
            do begin

                if dstWork.FieldByName(sCHECKED_FN).AsBoolean
                then begin
                    spcWork.ParamByName('IN_KEY_SESSION'    ).AsInt64 := KeySession;
                    spcWork.ParamByName('IN_ID_PKV'         ).AsInt64 := dstWork.FieldByName(sID_PKV_FN         ).Value;
                    spcWork.ParamByName('IN_ID_TYPE_FINANCE').AsInt64 := dstWork.FieldByName(sID_TYPE_FINANCE_FN).Value;
                    spcWork.ParamByName('IN_DATE_BEG'       ).AsDate  := DateBeg;
                    spcWork.ParamByName('IN_DATE_END'       ).AsDate  := DateEnd;
                
                    //��������� ������ � �����
                    spcWork.Prepare;
                    spcWork.ExecProc;
                end;
                
                dstWork.Next;
            end;
            
        finally
            trWrite.Commit;
            if spcWork.Open then spcWork.Close;
            
            dstWork.Locate( cDEF_KEY_FIELD_NAMES, VarArrayOf( [ IdPKV, IdTypeFinance ] ), [] );
            dstWork.EnableControls;
        end;

        //�������� ������ ��� ������������ �������� �����
        try 
            if dstBuffer.Active then dstBuffer.Close;
            dstBuffer.SQLs.SelectSQL.Text := sSQL_SEL_MOData + IntToStr( KeySession ) + cBRACKET_CLOSE;

            if trRead.InTransaction 
            then begin
                trRead.Commit;
                trRead.StartTransaction;
            end;

            dstBuffer.Open;

            //��������� ���� ������
            if frrWork.LoadFromFile(pReportPath)
            then begin
                //���������� ������ ����� ������
                frrWork.PrepareReport;
                frrWork.ShowPreparedReport;
            end
            else begin
                ModalResult := mrNone;
                MessageBox( Handle, PChar( sERR_ReportNotFoundUA ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
                if tvwWork.Visible then tvwWork.Control.SetFocus;
            end;
            
        finally
            dstBuffer.Close;
        end;

        //������� �����
        spcWork.StoredProcName := 'JO5_BUFFER_MO_DEL';
        spcWork.ParamByName('IN_KEY_SESSION').AsInt64 := KeySession;
        
        try
            trWrite.StartTransaction;
            spcWork.Prepare;
            spcWork.ExecProc;
        finally
            trWrite.Commit;
            spcWork.Close;
        end;
        
    except
        on E: Exception
        do begin
            if trWrite.InTransaction then trWrite.Commit;
            ModalResult:= mrNone;
            MessageBox( Handle, PChar( sERR_ReportCreateUA  + E.Message ), PChar( sMsgCaptionErrUA ), MB_OK or MB_ICONERROR );
        end;
    end;
end;

//�������� �������� ��� ������������ ���������� ������
procedure TfmSetPrtMOParams.frrWorkGetValue(const VarName: String;
  var Value: Variant);
var
    YearBeg       : Integer;
    YearEnd       : Integer;
    MonthBeg      : Integer;
    MonthEnd      : Integer;
begin

    //�������� ���� ������ �������
    if VarName = sFRN_DateBeg
    then begin
        YearBeg  := edtYearBeg.IntCurValue;
        MonthBeg := edtMonthBeg.CurItemIndex + 1;
        Value    := StartOfAMonth( YearBeg, MonthBeg );
    end;

    //�������� ���� ��������� �������
    if VarName = sFRN_DateEnd
    then begin
        YearEnd  := edtYearEnd.IntCurValue;
        MonthEnd := edtMonthEnd.CurItemIndex + 1;
        Value    := DateToStr( EndOfAMonth( YearEnd, MonthEnd ) );
    end;

end;

end.

