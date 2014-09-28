unit uReportExport;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxLookAndFeelPainters, cxButtons, cxControls,
    cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, DB,
    FIBDataSet, pFIBDataSet, OleServer, ExcelXP, cxCheckListBox,
    cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
    cxCheckBox, cxGridCustomTableView, cxGridTableView, cxClasses,
    cxGridCustomView, cxGridLevel, cxGrid, CheckLst, ActnList, ExtCtrls;

type
  TfmExport = class(TForm)
    cxFileName: TcxButtonEdit;
    cxCheckListFields: TCheckListBox;
    cxButtonNone: TcxButton;
    cxButtonID: TcxButton;
    cxButtonAll: TcxButton;
    cxExport: TcxButton;
    cxExit: TcxButton;
    Label2: TLabel;
    SaveDialog1: TSaveDialog;
    ActionList1: TActionList;
    acExit: TAction;
    procedure cxFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonNoneClick(Sender: TObject);
    procedure cxButtonIDClick(Sender: TObject);
    procedure cxButtonAllClick(Sender: TObject);
    procedure cxExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FDataSet: TpFIBDataSet;
    constructor Create(aOwner: TComponent; aDataSet: TpFIBDataSet);
  end;
  function GetRusName (EngName:string):string;
var
    fmExport: TfmExport;

implementation

{$R *.dfm}

uses NagScreenUnit;

procedure TfmExport.cxFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if SaveDialog1.Execute then
        cxFileName.Text:=SaveDialog1.FileName;
end;

procedure TfmExport.cxExitClick(Sender: TObject);
begin
    Close;
end;

constructor TfmExport.Create(aOwner: TComponent; aDataSet: TpFIBDataSet);
begin
    inherited Create(aOwner);
    FDataSet:=aDataSet;
end;

procedure TfmExport.FormCreate(Sender: TObject);
var
 C: integer;
begin
 Caption := '��� � �������� �������� � 2 :: �������';
 cxExport.Caption := '������������';
 cxExit.Caption := '³����';
 for C := 0 to FDataSet.FieldCount - 1 do
 begin
  cxCheckListFields.Items.Add(GetRusName(FDataSet.Fields[C].DisplayLabel));
 end;
 for C := 0 to FDataSet.FieldCount - 1 do
  cxCheckListFields.Checked[C]:=True;
end;

function GetRusName(EngName:string):string;
var Names:array of array of string;
    flag_search:Boolean;
    i,n:Integer;
begin
    n:=70;
    SetLength(Names,2,n);
    Names[0,1]:='ID_TYPE_POST';
    Names[1,1]:='������������� ���� ��������� (ID)';
    Names[0,2]:='NAME_TYPE_POST';
    Names[1,2]:='��� ���������';
    Names[0,3]:='NAME_CATEGORY';
    Names[1,3]:='��������';
    Names[0,4]:='NAME_POST_GROUP';
    Names[1,4]:='����� ������';
    Names[0,5]:='ID_POST_L';
    Names[1,5]:='������������� ������ (ID)';
    Names[0,6]:='POST_NAME';
    Names[1,6]:='������';
    Names[0,7]:='ADD_NAME';
    Names[1,7]:='������� �� ������';
    Names[0,8]:='NUM_DIGIT';
    Names[1,8]:='������';
    Names[0,9]:='KOEFF';
    Names[1,9]:='³������';
    Names[0,10]:='KOL_STAVOK';
    Names[1,10]:='ʳ������ ������';
    Names[0,11]:='ID_SMETA_KOD';
    Names[1,11]:='������������� ���� ������� (ID)';
    Names[0,12]:='SMETA_KOD';
    Names[1,12]:='��� �������';
    Names[0,13]:='SMETA_TITLE';
    Names[1,13]:='����� �������';
    Names[0,14]:='PKV_KOD';
    Names[1,14]:='��� ��������';
    Names[0,15]:='PKV_TITLE';
    Names[1,15]:='����� ��������';
    Names[0,16]:='TYPE_FINANCE_CODE';
    Names[1,16]:='��� ������������';
    Names[0,17]:='TYPE_FINANCE_NAME';
    Names[1,17]:='����� ������������';
    Names[0,18]:='SUMMA_NADB';
    Names[1,18]:='���� ��������';
    Names[0,19]:='SUMMA_DOPL';
    Names[1,19]:='���� ������';
    Names[0,20]:='BASE_OKLAD';
    Names[1,20]:='������� �����';
    Names[0,21]:='SALARY_SUM';
    Names[1,21]:='����� ������';
    Names[0,22]:='SUMM_OKL';
    Names[1,22]:='���� ������';
    Names[0,23]:='Rate_Count_Fact';
    Names[1,23]:='�������� ������� ������ (��� ����������)';
    Names[0,24]:='Rate_Count_Fact_Q';
    Names[1,24]:='�������� ������� ������';
    { ����� ����� ��� �����, ���� �� ���� � ���� ��������� :)
    Names[0,25]:='IS_SKLAD';
    Names[1,25]:='IS_SKLAD';
    Names[0,26]:='IS_INV_OBJ';
    Names[1,26]:='IS_INV_OBJ';
    Names[0,27]:='FIO';
    Names[1,27]:='���';
    Names[0,28]:='SFIO';
    Names[1,28]:='��� (���������)';
    Names[0,29]:='NOMN';
    Names[1,29]:='�������������� �';
    Names[0,30]:='LINKTO';
    Names[1,30]:='LINKTO';  *}
    i:=0;
    flag_search:=False;
    while ((i<n)and (flag_search=False)) do
    begin
        if EngName=Names[0,i] then flag_search:=True;
        i:=i+1;
    end;
    if flag_search=True then Result:=Names[1,i-1]
    else Result:=EngName;
end;

procedure TfmExport.cxButtonNoneClick(Sender: TObject);
var
  C: Integer;
begin
 for C := 0 to FDataSet.FieldCount - 1 do
  cxCheckListFields.Checked[C]:=False;
end;

procedure TfmExport.cxButtonIDClick(Sender: TObject);
var
  C: Integer;
begin
 for C := 0 to FDataSet.FieldCount - 1 do
 begin
  if Pos('ID', cxCheckListFields.Items[C])>0 then
   cxCheckListFields.Checked[C]:=False;
 end;
end;

procedure TfmExport.cxButtonAllClick(Sender: TObject);
var
  C: Integer;
begin
 for C := 0 to FDataSet.FieldCount - 1 do
  cxCheckListFields.Checked[C]:=True;
end;

procedure TfmExport.cxExportClick(Sender: TObject);
var
  fXl  : TExcelApplication;
  lcid: cardinal;
  R,C, i: integer;
  ASheet: _Worksheet;
  vData: Variant;
  nRec, nf: integer;
  NagScreen: TNagScreen;
begin
    if SaveDialog1.FileName='' then
    begin
        ShowMessage('������� ������� ����� �����!');
        exit;
    end;

    NagScreen := TNagScreen.Create(Application.MainForm);
    NagScreen.Show;
    NagScreen.SetStatusText('³��������� �������');
    FDataSet.FetchAll;
    lcid := GetUserDefaultLCId;
    fXL := TExcelApplication.Create(nil);
    
    try
        fXL.ConnectKind := ckNewInstance;
        fXl.Application.AutomationSecurity := 1;
        fXL.DisplayAlerts[lcid] := False;
        fXL.AutoQuit := false;
        fXL.Visible[lcid] := false;
        fXL.Connect;
        fXl.Workbooks.Add(1, lcid);

        nf:=0;
        for C := 0 to cxCheckListFields.Items.Count - 1 do
            if cxCheckListFields.Checked[C] then Inc(nf);

        vData := VarArrayCreate([0, FDataSet.RecordCount, 1, nf ], varVariant);

        i:=1;
        for C := 0 to cxCheckListFields.Items.Count - 1 do
        begin
            if cxCheckListFields.Checked[C] then
            begin
                vData[0, i] := GetRusName(FDataSet.Fields[C].DisplayLabel);
                Inc(i);
            end;
        end;
        nRec:=FDataSet.RecNo;
        FDataSet.DisableControls;
        FDataSet.First;
        R := 1;
        while not FDataSet.Eof do
        begin
            C := 0;
            for i := 0 to FDataSet.FieldCount - 1 do
            begin
                if cxCheckListFields.Checked[i] then
                begin
                    Inc(C);
                    case FDataSet.Fields[i].DataType of ftString, ftFixedChar, ftWideString:
                       vData[R, C] := #39 + FDataSet.Fields[i].Value;
                    else vData[R, C] := FDataSet.Fields[i].Value;
                end;
            end;
            end;
            Inc(R);
            FDataSet.Next;
        end;
        ASheet := (fXL.ActiveWorkbook.ActiveSheet as _Worksheet);
        with ASheet do
            with Range['A1', Cells.Item[FDataSet.RecordCount + 1, nf]] do
                Formula := vData;
        fXL.UserControl := false;
        ASheet.SaveAs(SaveDialog1.FileName, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
        fXL.Quit;
        fXL.Disconnect;
        FreeAndNil(fXL);
        FDataSet.RecNo:=nRec;
        FDataSet.EnableControls;
    except on E : Exception
        do begin
            ShowMessage(E.Message);
            Close;
        end;
    end;
    NagScreen.Free;
    NagScreen := nil;
    Close;
end;

end.
