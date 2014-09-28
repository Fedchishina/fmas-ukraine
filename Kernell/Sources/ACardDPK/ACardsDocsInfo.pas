unit ACardsDocsInfo;

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
  TfrmACDocsInfo = class(TForm)
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
    fr3Report: TfrxReport;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure chkbxGroupClick(Sender: TObject);
    procedure chkbxFilterClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    Owner: TComponent;                   (* ������ ����� *)
    hConnection: TISC_DB_HANDLE;         (* handle ���� ������ *)
    ID_RAZDEL,                           (* ������������� ������� *)
    ID_KEKV:         Int64;              (* ������������� ���� *)
    Id_Lang:         Integer;            (* ����: 0 - ������� ����
                                                  1 - ���������� *)
    Date_Beg,                            (* ��������� ���� ������� ������� *)
    Date_End:        TDate;              (* �������� ���� ������� ������� *)

    ErrorMessageFIB: String;             (* ������ � ���������� �� ������ *)
    ErrorMessageInvalidSch: String;      (* ��������� � ���, ��� �� ������� ��� ����� *)

  public
    constructor Create(AOwner: TComponent;
                       AhConnection: TISC_DB_HANDLE;
                       id_param_set, AID_RAZDEL, AID_KEKV: Int64;
                       ADate_Beg, ADate_End, ADateProv: Variant;
                       AId_Lang: Integer;ProcName:String); overload;

    constructor Create(AOwner: TComponent;
                       AhConnection: TISC_DB_HANDLE; id_param_set, AID_RAZDEL, AID_KEKV: Int64;
                       ADate_Beg, ADate_End, ADateProv: Variant; AId_Lang, ID_reg_uch: Variant;
                       ProcName: String; with_dates:Boolean; with_regs:Integer); overload;

    constructor Create(AOwner: TComponent; AhConnection: TISC_DB_HANDLE; id_param_set :Int64;
                       ADate_Beg, ADate_End: Variant; id_row, id_column, row_type, thru_kekv: Variant;
                       ProcName: String; AId_Lang: Integer; id_session:int64); overload;

    constructor Create(AOwner: TComponent; AhConnection: TISC_DB_HANDLE; id_param_set :Int64;
                       MonthBeg:TDateTime; id_row, id_column, thru_kekv: Variant;
                       ProcName: String; AId_Lang: Integer; id_session:int64); overload;



    destructor Destroy; override;
    procedure Refresh;
    procedure SetLanguage(LenguageId: Integer);
  end;


implementation

{$R *.dfm}
constructor TfrmACDocsInfo.Create(AOwner: TComponent;
                       AhConnection: TISC_DB_HANDLE;
                       id_param_set, AID_RAZDEL, AID_KEKV: Int64;
                       ADate_Beg, ADate_End, ADateProv: Variant;
                       AId_Lang: Integer;ProcName:String);
begin
  (* ������� ����� � ��������� ��������� *)

  inherited Create(AOwner);

  SetLanguage(AId_Lang);

  Owner         := AOwner;
  hConnection   := AhConnection;

  ID_RAZDEL := AID_RAZDEL;
  ID_KEKV   := AID_KEKV;

  Date_Beg      := ADate_Beg;
  Date_End      := ADate_End;
  Id_Lang       := AId_Lang;

  (* ��������� ���������� ���������� � ����� *)
  pi_DataBase.Handle := hConnection;
  pi_DataBase.DefaultTransaction.Active;

  if ADateProv=null
  then begin
              if (AID_KEKV=-1)
            then begin
                      pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                      +IntToStr(id_param_set)+','
                      +''''+VarToStr(ADate_Beg)+''''+','
                      +''''+VarToStr(ADate_End)+''''+','
                      +'null'+','
                      +IntToStr(AID_RAZDEL)+',0)';
            end
            else begin
                      pi_DataSet.SelectSQL.Text:='select * from ' +ProcName+'('
                      +IntToStr(id_param_set)+','
                      +''''+VarToStr(ADate_Beg)+''''+','
                      +''''+VarToStr(ADate_End)+''''+','
                      +'null'+','
                      +IntToStr(AID_KEKV)+',1)';
            end;

  end
  else begin
            if (AID_KEKV=-1)
            then begin
                      pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                      +IntToStr(id_param_set)+','
                      +''''+VarToStr(ADate_Beg)+''''+','
                      +''''+VarToStr(ADate_End)+''''+','
                      +''''+VarToStr(ADateProv)+''''+','
                      +IntToStr(AID_RAZDEL)+',0)';
            end
            else begin
                      pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                      +IntToStr(id_param_set)+','
                      +''''+VarToStr(ADate_Beg)+''''+','
                      +''''+VarToStr(ADate_End)+''''+','
                      +''''+VarToStr(ADateProv)+''''+','
                      +IntToStr(AID_KEKV)+',1)';
            end;
  end;                                                                                   ;
  Refresh;
end;
(* ��������� �������� ���������� *)
destructor TfrmACDocsInfo.Destroy;
begin
     inherited Destroy;
end;
(* ������������� ������ � grid
   �������� Refresh *)
procedure TfrmACDocsInfo.btnRefreshClick(Sender: TObject);
begin
  Refresh;
end;
(* ���������� �����, ������� ����� ����� �����������
   �������� Print *)
procedure TfrmACDocsInfo.btnPrintClick(Sender: TObject);
begin
    {fr3Report.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Reports\Mbook\OborDocReestr.fr3',true);
    fr3Report.Variables['KR_DATA']  := '''' + '2 ' + '''';
    fr3Report.Variables['DB_DATA']  := '''' + '3 ' + '''';

    fr3Report.PrepareReport(true);
    fr3Report.ShowPreparedReport;}
end;
(* �������� ��������� grid'a dgrDocumentsView.OptionsView.GroupByBox
   �������� ��� ��������� ������ ��������� *)
procedure TfrmACDocsInfo.chkbxGroupClick(Sender: TObject);
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
procedure TfrmACDocsInfo.chkbxFilterClick(Sender: TObject);
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
procedure TfrmACDocsInfo.Refresh;
begin
     if pi_DataSet.Active then pi_DataSet.Close;
     pi_DataSet.Open;

end;
(* �������� ���� �������� �� ����� *)
procedure TfrmACDocsInfo.SetLanguage(LenguageId: Integer);
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
procedure TfrmACDocsInfo.dxBarLargeButton1Click(Sender: TObject);
begin
      if SaveDialog1.Execute
      then begin
                ExportGrid4ToExcel(SaveDialog1.FileName, dgrDocuments, false, true, false);
      end;
end;

constructor TfrmACDocsInfo.Create(AOwner: TComponent;
  AhConnection: TISC_DB_HANDLE; id_param_set, AID_RAZDEL, AID_KEKV: Int64;
  ADate_Beg, ADate_End, ADateProv: Variant; AId_Lang, ID_reg_uch: Variant;
  ProcName: String; with_dates:Boolean; with_regs:Integer);
begin
  (* ������� ����� � ��������� ��������� *)

  inherited Create(AOwner);

  SetLanguage(AId_Lang);

  Owner         := AOwner;
  hConnection   := AhConnection;

  ID_RAZDEL := AID_RAZDEL;
  ID_KEKV   := AID_KEKV;

  Date_Beg      := ADate_Beg;
  Date_End      := ADate_End;
  Id_Lang       := AId_Lang;

  (* ��������� ���������� ���������� � ����� *)
  pi_DataBase.Handle := hConnection;
  pi_DataBase.DefaultTransaction.Active;

  if (with_dates)
  then begin
            if ADateProv=null
            then begin
                      if (AID_KEKV=-1)
                      then begin
                                pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                                +IntToStr(id_param_set)+','
                                +''''+VarToStr(ADate_Beg)+''''+','
                                +''''+VarToStr(ADate_End)+''''+','
                                +'null'+','
                                +IntToStr(AID_RAZDEL)+',0,'
                                +'null'+',1, '+InttoStr(With_regs)+')';
                      end
                      else begin
                                pi_DataSet.SelectSQL.Text:='select * from ' +ProcName+'('
                                +IntToStr(id_param_set)+','
                                +''''+VarToStr(ADate_Beg)+''''+','
                                +''''+VarToStr(ADate_End)+''''+','
                                +'null'+','
                                +IntToStr(AID_KEKV)+',1,'
                                +'null'+',1, '+InttoStr(With_regs)+')';
                      end;

            end
            else begin
                      if (AID_KEKV=-1)
                      then begin
                                pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                                +IntToStr(id_param_set)+','
                                +''''+VarToStr(ADate_Beg)+''''+','
                                +''''+VarToStr(ADate_End)+''''+','
                                +''''+VarToStr(ADateProv)+''''+','
                                +IntToStr(AID_RAZDEL)+',0,'
                                +IntToStr(ID_reg_uch)+',1, '+InttoStr(With_regs)+')';
                      end
                      else begin
                                pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                                +IntToStr(id_param_set)+','
                                +''''+VarToStr(ADate_Beg)+''''+','
                                +''''+VarToStr(ADate_End)+''''+','
                                +''''+VarToStr(ADateProv)+''''+','
                                +IntToStr(AID_KEKV)+',1,'
                                +IntToStr(ID_reg_uch)+',1, '+InttoStr(With_regs)+')';

                      end;
            end;
  end
  else begin
            if ADateProv=null
            then begin
                      if (AID_KEKV=-1)
                      then begin
                                pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                                +IntToStr(id_param_set)+','
                                +''''+VarToStr(ADate_Beg)+''''+','
                                +''''+VarToStr(ADate_End)+''''+','
                                +'null'+','
                                +IntToStr(AID_RAZDEL)+',0,'
                                +'null'+',0, '+InttoStr(With_regs)+')';
                      end
                      else begin
                                pi_DataSet.SelectSQL.Text:='select * from ' +ProcName+'('
                                +IntToStr(id_param_set)+','
                                +''''+VarToStr(ADate_Beg)+''''+','
                                +''''+VarToStr(ADate_End)+''''+','
                                +'null'+','
                                +IntToStr(AID_KEKV)+',1,'
                                +'null'+',0, '+InttoStr(With_regs)+')';
                      end;

            end
            else begin
                      if (AID_KEKV=-1)
                      then begin
                                pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                                +IntToStr(id_param_set)+','
                                +''''+VarToStr(ADate_Beg)+''''+','
                                +''''+VarToStr(ADate_End)+''''+','
                                +''''+VarToStr(ADateProv)+''''+','
                                +IntToStr(AID_RAZDEL)+',0,'
                                +IntToStr(ID_reg_uch)+',0, '+InttoStr(With_regs)+')';
                      end
                      else begin
                                pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'('
                                +IntToStr(id_param_set)+','
                                +''''+VarToStr(ADate_Beg)+''''+','
                                +''''+VarToStr(ADate_End)+''''+','
                                +''''+VarToStr(ADateProv)+''''+','
                                +IntToStr(AID_KEKV)+',1,'
                                +IntToStr(ID_reg_uch)+',0, '+InttoStr(With_regs)+')';

                      end;
            end;
  end;
  Refresh;
end;

constructor TfrmACDocsInfo.Create(AOwner: TComponent; AhConnection: TISC_DB_HANDLE; id_param_set :Int64;
 ADate_Beg, ADate_End: Variant; id_row, id_column, row_type, thru_kekv: Variant; ProcName: String; AId_Lang: Integer; id_session:int64);
begin
     inherited Create(AOwner);
     SetLanguage(AId_Lang);
     Owner         := AOwner;
     hConnection   := AhConnection;

     Date_Beg      := ADate_Beg;
     Date_End      := ADate_End;
     Id_Lang       := AId_Lang;

     screen.Cursor:=crHourGlass;

     pi_DataBase.Handle := hConnection;
     pi_DataBase.DefaultTransaction.Active;
     pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'  ('+
     inttostr(id_param_set)+','+
     ''''+DateToStr(Date_Beg)+''''+','+
     ''''+DateToStr(Date_End)+''''+','+
     IntToStr(id_column)+','+
     IntToStr(id_row)+','+
     IntToStr(row_type)+','+
     IntToStr(id_session)+','+
     IntToStr(thru_kekv)+')';



     Refresh;

     screen.Cursor:=crDefault;
end;

constructor TfrmACDocsInfo.Create(AOwner: TComponent;
  AhConnection: TISC_DB_HANDLE; id_param_set: Int64; MonthBeg: TDateTime;
  id_row, id_column, thru_kekv: Variant; ProcName: String;
  AId_Lang: Integer; id_session: int64);
begin
     inherited Create(AOwner);
     SetLanguage(AId_Lang);
     Owner         := AOwner;
     hConnection   := AhConnection;

     Date_Beg      := MonthBeg;
     Id_Lang       := AId_Lang;

     screen.Cursor:=crHourGlass;

     pi_DataBase.Handle := hConnection;
     pi_DataBase.DefaultTransaction.Active;
     pi_DataSet.SelectSQL.Text:='select * from '+ProcName+'  ('+
     inttostr(id_param_set)+','+
     ''''+DateToStr(Date_Beg)+''''+','+
     IntToStr(id_column)+','+
     IntToStr(id_row)+','+
     IntToStr(id_session)+','+
     IntToStr(thru_kekv)+')';

     Refresh;

     screen.Cursor:=crDefault;
end;

end.
