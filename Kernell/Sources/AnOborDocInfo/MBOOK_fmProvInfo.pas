unit MBOOK_fmProvInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxCheckBox,
  ExtCtrls, ibase, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet, frxClass, frxDBSet, cxTextEdit,
  cxMemo, cxDBEdit, StdCtrls, cxExport, cxGridDBDataDefinitions, cxExportGrid4Link ;

type
  TfmProvInfo = class(TForm)
    dgrDocuments: TcxGrid;
    dgrDocumentsLevelFirst: TcxGridLevel;
    dgrDocumentsView: TcxGridDBTableView;
    brmngButtons: TdxBarManager;
    btnRefresh: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    pnlChkBx: TPanel;
    chkbxFilter: TcxCheckBox;
    pi_DataBase: TpFIBDatabase;
    pi_DataSet: TpFIBDataSet;
    pi_ReadTransaction: TpFIBTransaction;
    pi_DataSource: TDataSource;
    fr3DataSet: TfrxDBDataset;
    clmnDocNumber: TcxGridDBColumn;
    clmnTypeDoc: TcxGridDBColumn;
    clmnDate: TcxGridDBColumn;
    clmnUser: TcxGridDBColumn;
    clmnDocNote: TcxGridDBColumn;
    clmnSumma: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    columnst: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    chkbxGroup: TcxCheckBox;
    Panel1: TPanel;
    cxDBMemo1: TcxDBMemo;
    Label1: TLabel;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    fr3Report: TfrxReport;
    dgrDocumentsViewDBColumn1: TcxGridDBColumn;
    dgrDocumentsViewDBColumn2: TcxGridDBColumn;
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure chkbxGroupClick(Sender: TObject);
    procedure chkbxFilterClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    Owner: TComponent;                   (* ������ ����� *)
    hConnection: TISC_DB_HANDLE;         (* handle ���� ������ *)
    D_ID_SCH,                            (* ������������� ���������� ����� *)
    K_ID_SCH,                            (* ������������� ����������� ����� *)
    ID_SMETA,                            (* ������������� ����� *)
    ID_RAZDEL,                           (* ������������� ������� *)
    ID_STAT,                             (* ������������� ������ *)
    ID_KEKV:         Int64;              (* ������������� ���� *)
    D_OR_K_OBOROT,                       (* ����: 0 - �������� ������ �� ������
                                                  1 - �� ������� *)
    Id_Lang:         Integer;            (* ����: 0 - ������� ����
                                                  1 - ���������� *)
    Date_Beg,                            (* ��������� ���� ������� ������� *)
    Date_End:        TDate;              (* �������� ���� ������� ������� *)

    ErrorMessageFIB: String;             (* ������ � ���������� �� ������ *)
    ErrorMessageInvalidSch: String;      (* ��������� � ���, ��� �� ������� ��� ����� *)

    SchState: Boolean;                   (* True, ���� ������ ���� �� ���� ���� *)
  public
    constructor Create(AOwner: TComponent;
                       AhConnection: TISC_DB_HANDLE;
                       AD_ID_SCH, AK_ID_SCH, AID_SMETA, AID_RAZDEL, AID_STAT, AID_KEKV: Int64;
                       AD_OR_K_OBOROT: Integer;
                       ADate_Beg, ADate_End: TDateTime;
                       AId_Lang: Integer); reintroduce;
    destructor Destroy; override;
    procedure Refresh;
    procedure SetLanguage(LenguageId: Integer);
  end;


implementation

{$R *.dfm}
constructor TfmProvInfo.Create(AOwner: TComponent;
                               AhConnection: TISC_DB_HANDLE;
                               AD_ID_SCH, AK_ID_SCH, AID_SMETA, AID_RAZDEL, AID_STAT, AID_KEKV: Int64;
                               AD_OR_K_OBOROT: Integer;
                               ADate_Beg, ADate_End: TDateTime;
                               AId_Lang: Integer);
begin
  (* ������� ����� � ��������� ��������� *)

  inherited Create(AOwner);

  SetLanguage(AId_Lang);

  Owner         := AOwner;
  hConnection   := AhConnection; 
  (* �������������� ��������� �� ���� �������� ���������.
     ���������� �������� �� �������������� ���������. *)
  D_ID_SCH      := AD_ID_SCH;
  K_ID_SCH      := AK_ID_SCH;

  ID_SMETA  := AID_SMETA;
  ID_RAZDEL := AID_RAZDEL;
  ID_STAT   := AID_STAT;
  ID_KEKV   := AID_KEKV;

  Date_Beg      := ADate_Beg;
  Date_End      := ADate_End;
  D_OR_K_OBOROT := AD_OR_K_OBOROT;
  Id_Lang       := AId_Lang;

  (* ��������� ���������� ���������� � ����� *)
  pi_DataBase.Handle := hConnection;
  pi_DataBase.DefaultTransaction.Active;

  SchState := true;
  (* ��� ���������� ���������� ���������� � ������ ���������.
       ��������� ���������� ��������. *)
  if (D_ID_SCH = -1) and (K_ID_SCH = -1) then
  begin
    SchState := false;
    MessageDlg(ErrorMessageInvalidSch, mtError, [mbOk], 0);
  end
  else
  begin
    (* NOP *);
  end;
  Refresh;
end;
(* ��������� �������� ���������� *)
destructor TfmProvInfo.Destroy;
begin
     inherited Destroy;
end;
(* ������������� ������ � grid
   �������� Refresh *)
procedure TfmProvInfo.btnRefreshClick(Sender: TObject);
begin
  Refresh;
end;
(* ���������� �����, ������� ����� ����� �����������
   �������� Print *)
procedure TfmProvInfo.btnPrintClick(Sender: TObject);
begin
    fr3Report.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Reports\Mbook\OborDocReestr.fr3',true);
    fr3Report.Variables['KR_DATA']  := '''' + '2 ' + '''';
    fr3Report.Variables['DB_DATA']  := '''' + '3 ' + '''';

    fr3Report.PrepareReport(true);
    fr3Report.ShowPreparedReport;
end;
(* �������� ��������� grid'a dgrDocumentsView.OptionsView.GroupByBox
   �������� ��� ��������� ������ ��������� *)
procedure TfmProvInfo.chkbxGroupClick(Sender: TObject);
var i: Integer;  (* ������� �� �������������� ��������� *)
begin
  with dgrDocumentsView do
  begin
     OptionsView.GroupByBox := chkbxGroup.Checked;
     if not OptionsView.GroupByBox then
        (* '����������������' *)
        for i := GroupedColumnCount - 1 downto 0 do
        begin
             with GroupedColumns[i] do
             begin
                 Visible := true;
                 GroupIndex := -1;
             end;
        end;
  end;
end;
(* �������� ��������� grid'a dgrDocumentsView.OptionsCustomize.ColumnFiltering
   �������� ��� ��������� ������ ��������� *)
procedure TfmProvInfo.chkbxFilterClick(Sender: TObject);
begin
  with dgrDocumentsView do
  begin
      OptionsCustomize.ColumnFiltering := chkbxFilter.Checked;
      if not OptionsCustomize.ColumnFiltering then
      begin
          (* ������� ������� *)
          Filtering.Visible := fvNever;
          DataController.Filter.Active := false;
      end
      else
          (* ���������� ������, ���� ���� ������ *)
          Filtering.Visible := fvNonEmpty;
  end;
end;
(* ������������� ������ � grid
   �������� Refresh *)
procedure TfmProvInfo.Refresh;
begin
  if SchState then
  begin
    try
      with pi_DataSet do
      begin
        (* ���� TpFIBDataSet ��� ������, ��������� ���, ����� ����������. *)
        if Active then
          Close;
        (* ��������� � DataSet �������� ��������� � �������� �� ��� ��� ������ *)
        (* ���� ������ ���� � �������� *)
        SelectSQL.Text := ' select * ' +
                          '   from MBOOK_SP_GET_OBOR_PROV_INFO(' + IntToStr(D_ID_SCH) + ',' +
                                                                   IntToStr(K_ID_SCH) + ',' +
                                                                   QuotedStr(DateToStr(Date_Beg)) + ',' +
                                                                   QuotedStr(DateToStr(Date_End)) + ',' +
                                                                   IntToStr(D_OR_K_OBOROT) + ',' +
                                                                   IntToStr(ID_SMETA)  + ',' +
                                                                   IntToStr(ID_RAZDEL) + ',' +
                                                                   IntToStr(ID_STAT)   + ',' +
                                                                   IntToStr(ID_KEKV)   + ')';
      end;
      (* ������������ ���������� �� ���� *)
      pi_DataSet.Open;
    except on E: Exception do
    begin
      (* ��� ���������� ���������� ���������� � ������ ���������.
         ��������� ���������� ��������. *)
      MessageDlg(ErrorMessageFIB, mtError, [mbOk], 0);
    end;
    end;
  end
  else
  begin
    (* NOP *);
  end;
end;
(* �������� ���� �������� �� ����� *)
procedure TfmProvInfo.SetLanguage(LenguageId: Integer);
begin
    case LenguageId of
    0:
    begin
        (* ������� �� ����� *)
        //Caption := '�������������� ���������� �� ��������';
        btnRefresh.Caption := '��������';
        btnPrint.Caption := '������';
        chkbxGroup.Properties.Caption := '������������ �������������� �����������';
        chkbxFilter.Properties.Caption := '������������ �������������� ������';
        (* �������� �������� � cxGrid *)
        clmnDocNumber.Caption := '����� ���������';
        clmnTypeDoc.Caption := '��� ���������';
        clmnDate.Caption := '���� ����������';
        clmnUser.Caption := '������������� ������������';
        clmnDocNote.Caption := '�����������';
        clmnSumma.Caption := '����� ��������';
        (* ���������� ��������� *)
        ErrorMessageFIB := '���������� ������� ���������� �� ����. ���������� � ��������������.';
        ErrorMessageInvalidSch := '�� ������ �� ��������� �� ���������� ����. ���������� � ��������������.';
    end;
    1:
    begin
        (* ������� �� ����� *)
        //Caption := '��������� ���������� �� �����������';
        btnRefresh.Caption := '�������';
        btnPrint.Caption := '����';
        chkbxGroup.Properties.Caption := '��������������� ����������� �����������';
        chkbxFilter.Properties.Caption := '��������������� ������������ ������';
        (* �������� �������� � cxGrid *)
        clmnDocNumber.Caption := '����� ���������';
        clmnTypeDoc.Caption := '��� ���������';
        clmnDate.Caption := '���� ����������';
        clmnUser.Caption := '������������� �����������';
        clmnDocNote.Caption := '���������';
        clmnSumma.Caption := '���� ��������';
        (* ���������� ��������� *)
        ErrorMessageFIB := '��������� ������� ���������� � ���� ������. ��������� �� ������������.';
        ErrorMessageInvalidSch := '�� ������ � ��������� � ���������� �������. ��������� �� ������������.';
    end;
    end;
end;
procedure TfmProvInfo.dxBarLargeButton1Click(Sender: TObject);
begin
      if SaveDialog1.Execute
      then begin
                ExportGrid4ToExcel(SaveDialog1.FileName, dgrDocuments, false, true, false);
      end;
end;

end.
