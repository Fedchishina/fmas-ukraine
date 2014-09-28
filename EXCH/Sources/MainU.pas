{******************************************************************************}
{*                        ������������������ �������                          *}
{*       ������ ������� ����� ������������ ��������������� ������������       *}
{*            (c) �������� ������������ �����������, 2003-2007                *}
{******************************************************************************}

{                      ������ "������� ������ �������"                         }
{ ������� � ������ ������ (�������������� ���������/������������ �������).     }
{ ������ ������. ��������� ������������ ������ ������ (���� � ������)          }
{ �������������� ���������/������������ �������                                }
{                                               �������������: ������ ���������}
unit MainU;

interface

uses
  Windows,  Messages,  SysUtils,  Variants,  Classes,  Graphics,  Controls,  Forms,
  Dialogs, StdCtrls, DB, FIBDataSet,  pFIBDataSet,  Buttons,  FIBQuery,  pFIBQuery,
  ExtCtrls,  ComCtrls, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxCheckBox, cxImage, cxProgressBar, cxRadioGroup,
  cxButtons, cxContainer, cxMaskEdit, cxCalendar, cxSplitter, pFIBProps,
  dxStatusBar, DateUtils, cxShellDlgs, cxShellBrowserDialog, AppEvnts,
  dxBar, pFIBStoredProc,Accmgmt;

type
 TServerRecord = packed record
  _id_Server      : integer;
  _Exp_id_Log_Rec : int64;
  _Imp_id_Log_Rec : int64;
  _Last_Exp       : int64;
 end;

 TSubjAreaRecord = packed record
  _id_SubjArea   : integer;
  _Name_SubjArea : string;
 end;

 TTableFieldsRecord = packed record
  _FieldName     : string;
  _Use_It        : boolean; // shows that value can be inserted into this field (this field should be in DB's table)
  _Is_Exch_Field : boolean; // shows thant this field containes in exch key fields
 end;

 TFieldLinksRecord = packed record
  _Name_Field : string;
  _Value      : string;
 end;

 fTableRecord = packed record
  _Name_Table : string;
  _id_Log_Rec : string;
  _Servers    : string;
 end;

 TSubjAreaArray    = array of TSubjAreaRecord;
 TFieldLinksArray  = array of TFieldLinksRecord;
 TServersArray     = array of TServerRecord;
 TTableFieldsArray = array of TTableFieldsRecord;
 TfTableArray      = array of fTableRecord;

 TTableRecord = packed record
  _id_SubjArea   : integer;
  _NameTable     : string;
  _ExprFields    : string;
  _Fields        : string;
  _TableFields   : TTableFieldsArray;
  _EFields       : TTableFieldsArray;
  _Do_First_Init : boolean;
  _DI_Fields     : TTableFieldsArray; // �������� �����, �� ������� ����� ������� ������ �� ������� ����� ����������� ������ � ������. ����.
  _Has_FK        : boolean;
 end;

 TIntArray        = array of integer;
 TStringArray     = array of string;
 TTableArray      = array of TTableRecord;

 TObmen_Form = class(TForm)
   StatusBar: TdxStatusBar;
   dxStatusBar1Container0: TdxStatusBarContainerControl;
   AboutButton: TSpeedButton;
   StatusBarContainer1: TdxStatusBarContainerControl;
   DBEdit: TcxTextEdit;
   StatusBarContainer3: TdxStatusBarContainerControl;
   ReconnectButton: TSpeedButton;
   BarManager: TdxBarManager;
   Shape1: TShape;
   DateLabel: TLabel;
   Label2: TLabel;
   Label4: TLabel;
   InitButton: TSpeedButton;
   SavePathButton: TSpeedButton;
   InitTableButton: TSpeedButton;
   OpenButton: TcxButton;
   Panel1: TPanel;
   InfoMemo: TcxMemo;
   StatusMemo: TcxMemo;
   Splitter: TcxSplitter;
   DateEdit: TcxDateEdit;
   RadioGroup: TcxRadioGroup;
   StartButton: TcxButton;
   ClearButton: TcxButton;
   ProgressBar: TcxProgressBar;
   ExpImage: TcxImage;
   ImpImage: TcxImage;
   ServerCheckBox: TcxCheckBox;
   ServersPopupEdit: TcxPopupEdit;
   ServGrid: TcxGrid;
   TableView: TcxGridDBTableView;
   ID_SERVER_COLUMN: TcxGridDBColumn;
   NAME_SERVER_COLUMN: TcxGridDBColumn;
   NAME_DEPARTMENT_COLUMN: TcxGridDBColumn;
   ServGridLevel: TcxGridLevel;
   CloseButton: TcxButton;
   cbSaveStatus: TcxCheckBox;
   cbShowStatus: TcxCheckBox;
   DataSet: TpFIBDataSet;
   OpenDialog: TOpenDialog;
   SaveDialog: TSaveDialog;
   ServersDataSet: TpFIBDataSet;
   ServersDataSource: TDataSource;
   WriteQuery: TpFIBQuery;
   InitWQuery: TpFIBQuery;
   InitQuery: TpFIBDataSet;
   Query: TpFIBDataSet;
   ShellBrowserDialog: TcxShellBrowserDialog;
   ApplicationEvents: TApplicationEvents;
   InitRQuery: TpFIBDataSet;
   dxBarButton1: TdxBarButton;
   dxBarSubItem1: TdxBarSubItem;
   OpenButton2: TdxBarButton;
   StartButton2: TdxBarButton;
   dxBarButton4: TdxBarButton;
   dxBarButton5: TdxBarButton;
   dxBarSubItem2: TdxBarSubItem;
   InitTableButton2: TdxBarButton;
   InitButton2: TdxBarButton;
   SavePathButton2: TdxBarButton;
   dxBarButton9: TdxBarButton;
   dxBarButton10: TdxBarButton;
   HistStoredProc: TpFIBStoredProc;
   AdminLabel: TLabel;
   StopRecNoEdit: TcxTextEdit;
   StopRecLabel: TLabel;
   StopRecCheckBox: TcxCheckBox;
   CurRecLabelCap: TLabel;
   CurRecNoLabel: TLabel;
   procedure FormCreate(Sender: TObject);
   procedure OpenButtonClick(Sender: TObject);
   procedure RadioGroupPropertiesChange(Sender: TObject);
   procedure StartButtonClick(Sender: TObject);
   procedure ClearButtonClick(Sender: TObject);
   procedure ServersPopupEditPropertiesPopup(Sender: TObject);
   procedure ServersPopupEditPropertiesCloseUp(Sender: TObject);
   procedure ServerCheckBoxPropertiesChange(Sender: TObject);
   procedure TableViewDblClick(Sender: TObject);
   procedure CloseButtonClick(Sender: TObject);
   procedure FormResize(Sender: TObject);
   procedure cbShowStatusPropertiesChange(Sender: TObject);
   procedure SplitterBeforeOpen(Sender: TObject; var AllowOpen: Boolean);
   procedure SplitterBeforeClose(Sender: TObject;
     var AllowClose: Boolean);
   procedure SplitterCanResize(Sender: TObject; var NewSize: Integer;
     var Accept: Boolean);
   procedure AboutButtonClick(Sender: TObject);
   procedure DBEditDblClick(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure ReconnectButtonClick(Sender: TObject);
   procedure InitButtonClick(Sender: TObject);
   procedure TimerTimer(Sender: TObject);
   procedure ImpImageClick(Sender: TObject);
   procedure SavePathButtonClick(Sender: TObject);
   procedure ApplicationEventsException(Sender: TObject; E: Exception);
   procedure InitTableButtonClick(Sender: TObject);
   procedure StopRecCheckBoxPropertiesChange(Sender: TObject);
   procedure StopRecNoEditKeyPress(Sender: TObject; var Key: Char);
   procedure StopRecNoEditPropertiesChange(Sender: TObject);
 private
   ProgressPosition : integer;
   procedure AddInfo;
   procedure ProgressBarStepIt(Step  : integer = 1);
   procedure EnableButtons(Flag : boolean);
//   procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
 public
   ExpDir     : string;
   ExpDirName : string;
   BLDir      : string;
   BL_Count   : integer;

   RecNo      : integer;
   id_Log_Rec : string;

   QueryText  : string;
   QueryText2 : string;

   id_History : int64;
   id_From    : string;
   id_To      : string;

   StopRecNo  : int64;

   RepeatApply : boolean; // ��������� ���������� ������

   function  CreateRARProcess(const aAppName, aCommandLine: PAnsiChar; aWindowState: Word) : boolean;
   procedure MakeRAR;
   function  UnRAR : boolean;

   procedure Make_Export;
   procedure Make_Import;
   function  SelectTables(FromDate : TDate) : integer;

   function  DelFirstInitData(TableIndex : integer) : boolean;

   procedure Status(S : string);
   function  CreateFieldLinks(Fields, Values, TableName : string; vDivider : char = ',') : TFieldLinksArray;

   function  GetServersFromString(Str : string) : TIntArray;
   function  GetServersInfo(Str : string) : TServerRecord;

   procedure CheckFirstInit;
   function  TableFirstInit(NameTable : string; NS : boolean) : boolean;

   function  StartHistory : boolean;
   function  EndHistory : boolean;

   function  DelDir(dir: string) : boolean;
 end;

var
  Obmen_Form: TObmen_Form;

implementation

uses DataModule, Math, ShellAPI, SYS_OPTIONS, VarUtils, Splash,
     StrUtils, FIBDatabase, BaseTypes, SetInitOptions, SysAdmin;

{$R *.dfm}

var
 Flash           : boolean;

 SubjAreaArray   : TSubjAreaArray;

 ServersEArray   : TServersArray;//         for
 TableEArray     : TTableArray; //           export

 TableIArray     : TTableArray; // for import

 id_Server       : integer;
 id_I_Server     : integer;
 id_I_Log_Rec    : int64; // ������������� ��������� ���������������� ������

 ExpText         : TextFile;
 ImpText         : TextFile;
 StatusText      : TextFile;
 ExpTextName     : string;
 ImpTextName     : string;

 LastPixel       : integer = 0;

 Import_Errors   : boolean; // ��������� �� ��, ��� ��� ������� ���� �������������� � ��������� ��� ������

function ParseStr(str : string; const divider : char = #128) : TStringArray;
var
 p : integer;
begin
 Result := nil;
 if str = '' then exit;
 p := pos(divider, str);
 while p <> 0 do begin
  SetLength(Result, Length(Result) + 1);
  Result[Length(Result) - 1] := Copy(str, 1, p-1);
  Delete(str, 1, p);
  p := pos(divider, str);
 end;
 SetLength(Result, Length(Result) + 1);
 Result[Length(Result) - 1] := str;
end;
 
procedure TObmen_Form.Status(S : string);
begin
 if cbShowStatus.Checked then
  StatusMemo.Lines.Add(S);

 if cbSaveStatus.Checked then
  Writeln(StatusText, S);
end;

procedure TObmen_Form.EnableButtons(Flag: boolean);
begin
 ReconnectButton.Enabled  := Flag;
 StartButton.Enabled      := Flag;
 ClearButton.Enabled      := Flag;
 OpenButton.Enabled       := Flag;
 CloseButton.Enabled      := Flag;

 if EXCH_ADMIN then begin
  InitTableButton.Visible  := Flag;
  InitButton.Visible       := Flag;

  if Flag then
   InitTableButton2.Visible := ivAlways
  else
   InitTableButton2.Visible := ivNever;

  if Flag then
   InitButton2.Visible := ivAlways
  else
   InitButton2.Visible := ivNever;
 end;

 SavePathButton.Visible   := Flag;

 StatusBar.Panels[2].Visible := Flag;

 ServerCheckBox.Enabled   := Flag;
 ServersPopupEdit.Enabled := Flag;
 DateEdit.Enabled         := Flag;

 RadioGroup.Enabled       := Flag;
end;

procedure TObmen_Form.FormCreate(Sender: TObject);
begin
 AddInfo;
 Flash := False;

 if not EXCH_ADMIN then begin
  InitTableButton.Visible  := False;
  InitTableButton2.Visible := ivNever;

  InitButton.Visible  := False;
  InitButton2.Visible := ivNever;
 end;

 AdminLabel.Visible      := EXCH_ADMIN;
 StopRecLabel.Visible    := EXCH_ADMIN;
 StopRecNoEdit.Visible   := EXCH_ADMIN;
 StopRecCheckBox.Visible := EXCH_ADMIN;
 CurRecLabelCap.Visible  := EXCH_ADMIN;
 CurRecNoLabel.Visible   := EXCH_ADMIN;

 if not FileExists('Rar.exe') then ShowMessage('���� ���������� [Rar.exe] �� ��������!'
 + #13 + #13 + '����������� ���������/������������ ������ ����� ���������!');

 SysAdmin.InitializaAdminSystem(Self, dm.Database.Handle, 666, id_user, ADMIN_MODE);

 RadioGroupPropertiesChange(Sender);
end;

function TObmen_Form.CreateFieldLinks(Fields, Values, TableName : string; vDivider : char = ',') : TFieldLinksArray;
var
 i          : integer;
 k, p       : integer;
 TempArray  : TFieldLinksArray;
 TempArray2 : TFieldLinksArray;
 Flag       : boolean;
begin
 TempArray  := nil;
 TempArray2 := nil;

 if Length(Fields) = 0 then Exit;

 SetLength(TempArray, 1);
 k := pos(',', Fields);
 p := pos(vDivider, Values);

 if ((p = 0) and (k <> 0)) or ((p <> 0) and (k = 0)) then begin
  Flag := True;
  if RadioGroup.ItemIndex = 0 then begin
   InfoMemo.Lines.Add('� ����������� ����� � ������� ' + TableName +
   ' ������� �����, �� ������� �� ���������� �����, �� �������� � ����� � ������� �����!');
   InfoMemo.Lines.Add(TimeToStr(Now) +  ' - ���������� �������� ���������!');

   ShowMessage('�������� �������! ���������� �������� ���������.');
  end
  else begin
   dm.WriteTransaction.Rollback;
   InfoMemo.Lines.Add('� ����������� �����  � ������� ' + TableName +
   ' ������� �����, �� ������� �� ���������� �����, �� �������� � ����� � ������� ��!');
   InfoMemo.Lines.Add(TimeToStr(Now) +  ' - ������ ����� ���������!');
   InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ��������.');

   ShowMessage('�������� �������! ���������� ������� ���������. ϳ����������� ���������� ���������.');
  end;

  if Flag then begin
   Result := nil;
   Exit;
  end;
 end;

 if k = 0 then
  TempArray[0]._Name_Field := Fields
 else
  TempArray[0]._Name_Field := Copy(Fields, 1, k - 1);

 if p = 0 then
  TempArray[0]._Value      := Values
 else
  TempArray[0]._Value      := Copy(Values, 1, p - 1);

 if k = 0 then begin
  Result := TempArray;
  Exit;
 end;

 TempArray2 := nil;
 TempArray2 := CreateFieldLinks(Copy(Fields, k + 1, Length(Fields) - 1), Copy(Values, p + 1, Length(Values) - 1), TableName, vDivider);

 if Length(TempArray2) = 0 then begin
  Result := nil;
  Exit;
 end;

 for i := 0 to Length(TempArray2) - 1 do begin
  SetLength(TempArray, Length(TempArray) + 1);
  TempArray[Length(TempArray) - 1] := TempArray2[i];
 end;

 Result := TempArray;
end;

function TObmen_Form.SelectTables(FromDate: TDate) : integer;
var
 i         : integer;
 Count     : integer;
begin
 Result := 0;

 ServersEArray  := nil;
 SubjAreaArray := nil;
 TableEArray   := nil;
 Count         := 0;

 DataSet.Close;
 QueryText := 'select * from EXCH_PROC_INI_SERVERS_SEL';
 Status(QueryText);
 DataSet.SQLs.SelectSQL.Text := QueryText;
 DataSet.Open;

 while not DataSet.Eof do begin
  SetLength(ServersEArray, Length(ServersEArray) + 1);

  with ServersEArray[Length(ServersEArray) - 1] do begin
   _id_Server      := DataSet['ID_SERVER'];
   _Exp_id_Log_Rec := DataSet['EXPORT_ID_LOG_REC_PARAM'];
   _Imp_id_Log_Rec := DataSet['IMPORT_ID_LOG_REC_PARAM'];
   _Last_Exp       := DataSet['LAST_EXPORT_PARAM'];
  end;

  DataSet.Next;
 end;

 DataSet.Close;

 if Length(ServersEArray) = 0 then Exit;

 DataSet.Close;
 QueryText := 'select * from EXCH_INI_SUBJECT_AREA';
 Status(QueryText);
 DataSet.SQLs.SelectSQL.Text := QueryText;
 DataSet.Open;

 while not DataSet.Eof do begin
  SetLength(SubjAreaArray, Length(SubjAreaArray) + 1);

  with SubjAreaArray[Length(SubjAreaArray) - 1] do begin
   _id_SubjArea   := DataSet.Fields[0].AsInteger;
   _Name_SubjArea := DataSet.Fields[1].AsString;
  end;

  DataSet.Next;
 end;

 DataSet.Close;

 for i := 0 to Length(SubjAreaArray) - 1 do begin
  QueryText := 'select * from EXCH_PROC_INI_TABLE_S_AREA_SEL(' + IntToStr(SubjAreaArray[i]._id_SubjArea) + ')';
  Status(QueryText);
  DataSet.SQLs.SelectSQL.Text := QueryText;
  DataSet.Open;

  while not DataSet.Eof do begin
   SetLength(TableEArray, Length(TableEArray) + 1);

   with  TableEArray[Length(TableEArray) - 1] do begin
    _id_SubjArea   := SubjAreaArray[i]._id_SubjArea;
    _NameTable     := UpperCase(DataSet['NAME_TABLE']);
    _ExprFields    := DataSet['EXPRESSION_FIELDS'];
    _Do_First_Init := DataSet['DO_FIRST_INIT'] = 1;
    _Has_FK        := DataSet['HAS_FK'] = 1;
   end;

   DataSet.Next;
  end;

  DataSet.Close;
 end;

 Result := Count;
end;

procedure TObmen_Form.Make_Export;
var
 i, j, k, t : integer;
 _          : integer;
 v          : TIntArray;
 
 Name_Table : string;

 Action     : string;
 ValueExpr  : string; // as in dataset
 _ValueExpr : string;// as in script
 _Data      : string;
 _Servers   : string;

 s, n        : string;
 Flag        : boolean;
 LinksArray  : TFieldLinksArray;

 f           : TFormatSettings;

 CloseCount  : integer;

 AppDir      : string;
 Dep_Name    : string;

 BL_File     : string;

 d           : int64;

 _FK_Values  : string;
 _FK_Names   : string;
 _FK_Links   : TFieldLinksArray;

 fTables     : array of string;
 fFlag       : boolean;

 function SetEnters(Input : string) : string;
 var
  k : integer;
 begin
  Result := Input;
  k := pos(#$D#$A, Input);
  if k = 0 then Exit;
  Result := Copy(Input, 1, k - 1) + '|||' + Copy(Input, k + 2, Length(Input) - k - 1);

  Result := SetEnters(Result);
 end;

 function ReplaceWrongLetters(s : string) : string;
 var
  i : integer;
 begin
  Result := '';

  for i := 1 to Length(s) do begin
   case s[i] of
    '�' : Result := Result + 'e';
    '�' : Result := Result + 'E';
    '�' : Result := Result + 'i';
    '�' : Result := Result + 'I';
    '�' : Result := Result + 'i';
    '�' : Result := Result + 'I';
   else
    Result := Result + s[i];
   end; 
  end;
 end;
begin
{Tags list:
              </FromServer>
              </ServersInfo>  - the record after this contains [id_Server#Import_Id_Log_Rec;Last_Export_id_Log_Rec]
              </TablesInfo>  - First - tables's name, after it - list of fields that take part in exchange, end at the last is list of fields of the table
              </Data> - data :) and nothihg else! It looks like
                  ID_LOG_REC<NAME_TABLE/ACTION>FIELD1#128FIELD2#128FIELD3#128...FIELDn&#Server1;Server2;Server3...
                       ����� ����������� '&#' ���� ����� ',' �������� ��������, ��� ������� ��������� ��� ������
                ACTION:
                 A - add
                 D - del
                 U - upd
                 F - first initialization
                 N - unknown (null)
}

 LinksArray := nil;
 id_Log_Rec := '';


 id_From := '';
 id_To   := ''; 

 Dep_Name := EXCH_NAME_DEPARTMENT;

// ���������� ����� ��������

 f.DateSeparator := '-';
 f.TimeSeparator := '-';
 f.ShortDateFormat := 'yyyy-mm-dd';
 f.LongDateFormat  := 'yyyy-mm-dd';
 f.ShortTimeFormat := 'hh-nn-ss';
 f.LongTimeFormat  := 'hh-nn-ss';

 AppDir := ExtractFileDir(Application.ExeName);

 if DEF_EXP_PATH = '' then begin
  ExpDir := AppDir + '\Exports';

  if not DirectoryExists(ExpDir) then if not CreateDir(ExpDir) then begin
   InfoMemo.Lines.Add('�� ���� �������� ����� ��������� ����� �������� [' + ExpDir + ']');
   InfoMemo.Lines.Add('�������� �������! ����������� �������� ���������!');
   ShowMessage('�� ���� �������� ����� ��������� ����� �������� [' + ExpDir + ']');
   Exit;
  end;
 end
 else ExpDir := DEF_EXP_PATH;

 if ExpDir[Length(ExpDir)] <> '\' then ExpDir := ExpDir + '\';

 ExpDirName := Dep_Name + '(' + DateTimeToStr(Now, f) + ')';

 ExpDir := ExpDir + ExpDirName;

 // ���� �������
 if not StartHistory then begin
  InfoMemo.Lines.Add('�� ���� ������������ ����� � ����� �����!' + #13 + '����������� ����� ���������!');
  ShowMessage('�� ���� ������������ ����� � ����� �����!' + #13 + '����������� ����� ���������!');
  Exit;
 end;

 //������ ����� 

 if not FileExists(ExpDir + '\') then if not CreateDir(ExpDir + '\') then begin
  InfoMemo.Lines.Add('�� ���� �������� ����� ��������� ����� �������� [' + ExpDir + '\' + ']');
  InfoMemo.Lines.Add('�������� �������! ����������� �������� ���������!');
  ShowMessage('�� ���� �������� ����� ��������� ����� �������� [' + ExpDir + '\' + ']');
  Exit;
 end;


 BLDir := ExpDir + '\BLOBs\';
 if not FileExists(BLDir) then if not CreateDir(BLDir) then begin
  InfoMemo.Lines.Add('�� ���� �������� ����� ��������� ����� �������� BLOB-���� [' + BLDir + '\' + ']');
  InfoMemo.Lines.Add('�������� �������! ����������� �������� ���������!');
  ShowMessage('�� ���� �������� ����� ��������� ����� �������� BLOB-���� [' + BLDir + '\' + ']');
  Exit;
 end;

 ExpTextName := ExpDir + '\Export.txt';

 // ������ ���� ��������
 AssignFile(ExpText, ExpTextName);
 Rewrite(ExpText);

// �������

 InfoMemo.Lines.Add(TimeToStr(Now) + ' - ������� ����� ������');
 InfoMemo.Lines.Add('���� �� ����� �������� [' + ExpDir + '\' + ']');
 InfoMemo.Lines.Add('����������� �������...');

 v := nil;

 SelectTables(DateEdit.Date);

 //�������� ���� � �������

 Writeln(ExpText, '/������ ������ ������: ' + DateToStr(FileDateToDateTime(FileAge(Application.ExeName))));
 Writeln(ExpText, '/��� �������: ' + SYS_DEF_NAME_DEPARTMENT);

 // ����� ������������ ��������� ������������� (��� ������, � ������� ���������� �������)
 CheckFirstInit;

 InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';

 ProgressBar.Position := 0;

 InfoMemo.Lines.Add('��������� �������� ����������...');

 Query.Close;
 Status('select max(id_log_rec) from exch_ini_log_rec');

 Query.SelectSQL.Text := 'select max(id_log_rec) from exch_ini_log_rec';
 Query.Open;
 Writeln(ExpText, '</FromServer>');
 d := Query.Fields[0].AsVariant;
 Writeln(ExpText, IntToStr(SYS_SERVER) + ';' + IntToStr(d));
 Query.Close;

 Writeln(ExpText, '</ServersInfo>');
 for i := 0 to Length(ServersEArray) - 1 do begin
  Writeln(ExpText, IntToStr(ServersEArray[i]._id_Server) + '#'
  + IntToStr(ServersEArray[i]._Imp_id_Log_Rec) + ';' + IntToStr(ServersEArray[i]._Last_Exp));
 end;

 InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';

 //////////

 Status('select * from EXCH_GET_TABLES_INFO_ALL');
 Query.SelectSQL.Text := 'select * from EXCH_GET_TABLES_INFO_ALL';
 Query.Open;
 Writeln(ExpText, '</TablesInfo>');

 while not Query.Eof do begin
  s := Query.FieldByName('NAME_TABLE').AsString + '<' + Query.FieldByName('EXCH_FIELDS').AsString + '>'
  + '<' + Query.FieldByName('FIELDS').AsString + '>';

  Writeln(ExpText, s);

  Query.Next;
 end;

 Query.Close;

 /////----------------->>>>>>>>>>>>>


 InfoMemo.Lines.Add('���� �����...');

 if not ServerCheckBox.Checked then
  QueryText := 'select * from EXCH_PROC_INI_LOG_REC_SEL(0,null,null)'
 else
  QueryText := 'select * from EXCH_PROC_INI_LOG_REC_SEL(1,'
  + IntToStr(id_Server) + ',' + #39 + DateToStr(DateEdit.Date) + #39 + ')';

 QueryText := QueryText + ' where ID_LOG_REC <= ' + IntToStr(d);

 Status(QueryText);
 DataSet.SelectSQL.Text := QueryText;
 DataSet.PrepareOptions := DataSet.PrepareOptions + [psAskRecordCount];
 DataSet.Open;

 ProgressBar.Properties.Max := DataSet.RecordCount;
 ProgressPosition           := 0;

 InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';

 CloseCount := 0;
 Name_Table := '';

//!~~~~~~~~~~~~~~~~~~~~~~~~~

 InfoMemo.Lines.Add('���������� �������...');

 Writeln(ExpText, '</Data>');

 if not DataSet.Eof then id_From := DataSet.FieldByName('ID_LOG_REC').AsString;

 while not DataSet.Eof do begin
  Inc(CloseCount);
  if CloseCount >= 500 then begin
   Flush(ExpText);   // ������ ����� ������
   CloseCount := 0;
  end;

  Name_Table := UpperCase(DataSet.FieldByName('NAME_TABLE').AsString);
  ValueExpr  := DataSet.FieldByName('VALUE_EXPRESSIONS').AsString;
  Action     := UpperCase(DataSet.FieldByName('EXCH_ACTION').AsString);
  id_Log_Rec := DataSet.FieldByName('ID_LOG_REC').AsString;
  _FK_Values := DataSet.FieldByName('FK_VALUES').AsString;
  _FK_Names  := DataSet.FieldByName('FK_FIELD_NAMES').AsString;

  if StrToInt64(id_Log_Rec) > d then begin
   ProgressBarStepIt;
   DataSet.Next;
   Continue;
  end;

  Flag := True;
  for j := 0 to Length(TableEArray) - 1 do
   if TableEArray[j]._NameTable = Name_Table then begin
    Flag := False;
    Break;
   end;

  if Flag then begin
   ProgressBarStepIt;
   DataSet.Next;
   Continue;
  end;

  k := Pos('&#', ValueExpr);
  if k <= 0 then begin
   ProgressBarStepIt;
   DataSet.Next;
   Continue;
  end;

  _ValueExpr := Copy(ValueExpr, 1, k - 1);
  _Servers   := Copy(ValueExpr, k + 2, Length(ValueExpr) - k - 1);

  _FK_Links := nil;

  if TableEArray[j]._Has_FK and not ((_FK_Names = '') or (_FK_Values = '')) then begin
   _FK_Links  := CreateFieldLinks(_FK_Names, _FK_Values, Name_Table);

   if Length(_FK_Links) = 0 then begin
    InfoMemo.Lines.Add('ʳ������ ������� ����� ������� ' + TableEArray[j]._NameTable + ' �� �������� �� ������� ������� ����� � ������� �����!');
    InfoMemo.Lines.Add('�������� ������������ ����� ��� ������� ' + TableEArray[j]._NameTable + '!');
    InfoMemo.Lines.Add('�������� �������! ����������� �������� ���������!');
    Exit;
   end;
  end;

  // ���������� ������� ���������� ��������� ������������� �������
  if Action = 'S' then begin
   fFlag := False;
   for t := 0 to Length(fTables) - 1 do
    if fTables[t] = Name_Table then begin
     fFlag := True;
     Break;
    end;

   if not fFlag then begin
    SetLength(fTables, Length(fTables) + 1);
    fTables[Length(fTables) - 1] := Name_Table;

    Writeln(ExpText, '/��������� ������������� ������� [' + Name_Table + '] � ������ �� �������');
    Writeln(ExpText, 'FIRST_INIT_NATIVE<' + Name_Table + '>' + id_Log_Rec + '&#' + _Servers);
   end;
  end;

  QueryText := 'select * from ' + Name_Table + ' where ';

  LinksArray := CreateFieldLinks(TableEArray[j]._ExprFields, _ValueExpr, Name_Table);
  if Length(LinksArray) = 0 then begin
   InfoMemo.Lines.Add('ʳ������ ����� ������� ' + TableEArray[j]._NameTable + ' �� �������� �� ������� ����� � ������� �����!');
   InfoMemo.Lines.Add('�������� ������������ ����� ��� ������� ' + TableEArray[j]._NameTable + '!');
   InfoMemo.Lines.Add('�������� �������! ����������� �������� ���������!');
   Exit;
  end;

  if Length(LinksArray) = 0 then begin
   ProgressBarStepIt;
   DataSet.Next;
   Continue;
  end;

  s := '';

  for j := 0 to Length(LinksArray) - 1 do begin
   if j > 0 then begin
    QueryText := QueryText + ' and ';
    s := s + ',';
   end;

   QueryText := QueryText + UpperCase(LinksArray[j]._Name_Field) + '='
   + QuotedStr(LinksArray[j]._Value);
   s := s + QuotedStr(LinksArray[j]._Value);
  end;

  _ValueExpr := s;

  if Action = 'D' then begin  // �������� � ������ ������ ��������
   Writeln(ExpText, id_Log_Rec + '<' + Name_Table + '/D>' + AnsiReplaceStr(_ValueExpr, #39, '') + '&#' + _Servers);
  end
  else begin // �������� � ������ ������ ��������� / ����������
   Status(QueryText);
   Query.SelectSQL.Text := QueryText;
   Query.Open;

   if Query.Eof and (Action = '') then begin
    // ���� ���� �� ������ ������ � ���� �� �������, �� �������� � ������ ������ ��������
    Writeln(ExpText, id_Log_Rec + '<' + Name_Table + '/D>' + AnsiReplaceStr(_ValueExpr, #39, '') + '&#' + _Servers);
   end
   else while not Query.Eof do begin
    _Data := '';

    for j := 0 to Query.FieldCount - 1 do begin
     if j > 0 then _Data := _Data + #128;

     if VarIsNull(Query.Fields[j].AsVariant) then
      _Data := _Data + 'null'
     else if Query.Fields[j] is TBLOBField then begin
      Inc(BL_Count);

      BL_File := 'BLOB' + IntToStr(BL_Count);

      _Data := _Data + '$B$' + BL_File + '$/B$';

      (Query.Fields[j] as TBLOBField).SaveToFile(BLDir + '\' + BL_File);
     end
     else begin
      Flag := False;
      for _ := 0 to Length(_FK_Links) - 1 do begin
       if _FK_Links[_]._Name_Field = Query.Fields[j].FieldName then begin
        Flag := True;
        Break;
       end;
      end;

      if Flag then
       _Data := _Data + _FK_Links[_]._Value // ����� ������ �������� �����
      else
       _Data := _Data + Query.Fields[j].AsString;
     end;
    end;

    _Data := SetEnters(_Data);

    if _Data <> '' then begin
     if Action = '' then
      Writeln(ExpText, id_Log_Rec + '<' + Name_Table + '/N>' + _Data + '&#' + _Servers)
     else
      Writeln(ExpText, id_Log_Rec + '<' + Name_Table + '/' + Action + '>' + _Data + '&#' + _Servers);
    end;

    Query.Next;
   end;

   Query.Close;
  end;

  DataSet.Next;
  ProgressBarStepIt;
 end;

 InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1]
 + '(' + IntToStr(DataSet.RecordCount) + ' ��� ���������!)';

 if not VarIsNull(DataSet.FieldByName('ID_LOG_REC').AsVariant) then id_To := DataSet.FieldByName('ID_LOG_REC').AsString;

 DataSet.Close;

 Writeln(ExpText,'');

 InfoMemo.Lines.Add('');
 InfoMemo.Lines.Add(TimeToStr(Now) +  ' - ������� ����� ������ ���������!');

 CloseFile(ExpText);

 DataSet.PrepareOptions := DataSet.PrepareOptions - [psAskRecordCount];

 MakeRAR;
end;

procedure TObmen_Form.Make_Import;
var
 k, j        : integer;
 tl          : TFieldLinksArray;
 TempLinks   : TFieldLinksArray;

 v           : TIntArray;
 Flag        : boolean;

 s, q, w     : string;
 b           : string;
 r           : TServerRecord;
 Count       : integer;

 id_DB_Log_R : int64;
 Old_Count   : integer; // ���-�� ���������, ����������� � ���������� ������� ������

 NameTable   : string;
 Action      : string;
 FieldsName  : string;
 ExprFields  : string;
 ValueExpr   : string;
 Data        : string;
 Servers     : string;

 i, t        : integer;
 d           : integer;

 Flag2       : boolean;
 QueryParams : TStringArray;
 STQuery     : string;

 PK          : int64;
 Next_Table  : boolean; // ������� ���� ������������� ��������� ������� �������
 DeQValue    : string;

 ind         : integer;
 str         : TStringArray;

 bl_name     : string;

 z           : string;
 ImpFileName : string;

 fTables     : TfTableArray;
 fFlag       : boolean;

 CanUsePack  : boolean;

 function ParseFields (s : string) : TTableFieldsArray;
 var
  k : integer;
 begin
  Result := nil;

  while Length(s) > 0 do begin
   SetLength(Result, Length(Result) + 1);

   with Result[Length(Result) - 1] do begin
    k := Pos(',', s);

    if k > 0 then _FieldName := Copy(s, 1, k - 1)
    else _FieldName := s;

    _Use_It    := False;
   end;

   k := Pos(',', s);

   if k > 0 then s := Copy(s, k + 1, Length(s) - k)
   else s := '';

   Trim(s);
  end;
 end;

 function SetTable(index : integer) : string;
 var
  i, k   : integer;
  Fields : string;
  v1, v2 : TTableFieldsArray;
  DI_Fi  : string;
 begin
  Result := '';
  TableIArray[index]._TableFields := nil;
  Fields := TableIArray[index]._Fields;
  if Fields = '' then Exit;

  TableIArray[index]._TableFields := ParseFields(Fields);

  QueryText := 'select * from EXCH_GET_TABLES_INFO_ALL where NAME_TABLE = '
  + QuotedStr(TableIArray[index]._NameTable);
  Status(QueryText);
  Query.SelectSQL.Text := QueryText;
  Query.Open;

  DI_Fi := Query.FieldByName('SERVER_FIELD').AsString;
  TableIArray[index]._DI_Fields := nil;

  if DI_Fi <> '' then begin
   v1 := nil;
   v1 := ParseFields(DI_Fi);

   SetLength(TableIArray[index]._DI_Fields, Length(v1));
   TableIArray[index]._DI_Fields := Copy(v1, 0, Length(v1));
  end;

  v1 := nil;
  v2 := nil;

  v1 := ParseFields(TableIArray[index]._ExprFields);
  v2 := ParseFields(Query.FieldByName('EXCH_FIELDS').AsString);

  if Length(v1) <> Length(v2) then begin
   InfoMemo.Lines.Add('�����! � ����������� ����� � ������� ' + TableIArray[index]._NameTable
   + ' ������ ����� ����� (' + TableIArray[index]._ExprFields + ')'
   + ' �� �������� � ������� ����� ����� � ������� ��� (' + Query.FieldByName('EXCH_FIELDS').AsString + ')');

   Import_Errors := True;
  end;

  SetLength(TableIArray[index]._EFields, Length(v1));
  TableIArray[index]._EFields := Copy(v1, 0, Length(v1));

  v1 := nil;
  v1 := ParseFields(TableIArray[index]._Fields);

  TableIArray[index]._TableFields := nil;
  for i := 0 to Length(v1) - 1 do with TableIArray[index] do begin
   SetLength(_TableFields, Length(_TableFields) + 1);
   _TableFields[Length(_TableFields) - 1]._FieldName := v1[i]._FieldName;
   _TableFields[Length(_TableFields) - 1]._Use_It    := True;
  end;

  v2 := ParseFields(Query.FieldByName('FIELDS').AsString);

  if Length(v1) <> Length(v2) then begin
   InfoMemo.Lines.Add('�����! � ����������� ����� � ������� ' + TableIArray[index]._NameTable
   + ' ������ ����� (' + TableIArray[index]._Fields + ')'
   + ' �� �������� � ������� ����� � ������� ��� (' + Query.FieldByName('FIELDS').AsString + ')');

   Import_Errors := True;
  end;

  Query.Close;

  for i := 0 to Length(TableIArray[index]._TableFields) - 1 do
   for k := 0 to Length(TableIArray[index]._EFields) - 1 do
    if TableIArray[index]._TableFields[i]._FieldName = TableIArray[index]._EFields[k]._FieldName then begin
     TableIArray[index]._TableFields[i]._Is_Exch_Field := True;
     Break;
    end;
 end;

 function SetValues(Values : string; index : integer) : string; // returns only those values whose fields are to be used
 var
  i        : integer;
  ValArray : TStringArray;
 begin
  Result := '';
  ValArray := nil;
  if Length(TableIArray[index]._TableFields) = 0 then Exit;

  ValArray := ParseStr(Values);

  for i := 0 to Length(TableIArray[index]._TableFields) - 1 do
   if TableIArray[index]._TableFields[i]._Use_It then begin
    if Result = '' then Result := QuotedStr(ValArray[i])
    else Result := Result + ',' + QuotedStr(ValArray[i]);
   end;
 end;

 function GetEnters(Input : string) : string;
 var
  k : integer;
 begin
  Result := Input;
  k := pos('|||', Input);
  if k = 0 then Exit;
  Result := Copy(Input, 1, k - 1) + #$D#$A + Copy(Input, k + 3, Length(Input) - k - 3);

  Result := GetEnters(Result);
 end;

 function GetQueryParams(s : string) : TStringArray;
 var
  k : integer;
  p : string;
  t : integer;
 begin
  Result := nil;
  if s = '' then Exit;

  if s[1] = #39 then Delete(s, 1, 1);
  if s[Length(s)] = #39 then Delete(s, Length(s), 1);

  k := pos(#39 + ',' + #39, s);
  while k > 0 do begin
   SetLength(Result, Length(Result) + 1);

   p := Copy(s, 1, k - 1);

   t := pos('null', p);
   if t > 0 then begin
    if p[t - 1] = #39 then begin
     Delete(p, t - 1, 1);
     Dec(t);
    end;

    if p[t + 4 + 1] = #39 then Delete(p, t + 3 + 1, 1);
   end;

   Result[Length(Result) - 1] := AnsiReplaceStr(p, #39 + #39, #39);

   s := Copy(s, k + 3, Length(s) - k - 2);
   k := pos(#39 + ',' + #39, s);
  end;

  SetLength(Result, Length(Result) + 1);
  Result[Length(Result) - 1] := AnsiReplaceStr(s, #39 + #39, #39);
 end;

 procedure FinishImport;
 begin
  CloseFile(ImpText);

  InfoMemo.Lines.Add('���������� ������ � ����� - ' + IntToStr(Count));
  InfoMemo.Lines.Add('��������� ������ � ����� - ' + IntToStr(Old_Count));

  if Import_Errors then begin
   InfoMemo.Lines.Add(TimeToStr(Now) +  ' - ������ ����� ���������!');
   InfoMemo.Lines.Add('����� � ���������!');

   if SYS_EXCH_ROLLBACK then begin
    WriteQuery.Transaction.Rollback;
    InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ��������.');
   end
   else begin
    if MessageDlg('ϳ�����������', '������ ���������! ����� � ���������! �� ������ �� ���������� ����?',
    mtConfirmation, [mbYes, mbNo]) = mrYes then begin
     WriteQuery.Transaction.Commit;
     InfoMemo.Lines.Add('���������� �����������.');
    end
    else begin
     WriteQuery.Transaction.Rollback;
     InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ������������.');
    end;
   end;
  end
  else begin
   InfoMemo.Lines.Add(TimeToStr(Now) +  ' - ������ ����� ������ ���������!');

   if MessageDlg('ϳ�����������', '������ ������ ���������! �� ������ �� ���������� ����?',
   mtConfirmation, [mbYes, mbNo]) = mrYes then begin
    WriteQuery.Transaction.Commit;
    InfoMemo.Lines.Add('���������� �����������.');
   end
   else begin
    WriteQuery.Transaction.Rollback;
    InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ������������.');
   end;
  end;

  if not DelDir(z) then begin
   InfoMemo.Lines.Add('������ �� ������� �������� ���������� ���� [' + z + ']');
   ShowMessage('������ �� ������� �������� ���������� ���� [' + z + ']');
  end;
 end; 

 function GoToNextRecord : boolean;
 begin
  Result := True;

  Readln(ImpText, s);
  Inc(RecNo);
  ProgressBarStepIt;

  QueryText  := '';       
  QueryText2 := '';

  if StopRecCheckBox.Checked then begin
   if (StopRecNo < 0) or (StopRecNo > RecNo) then Exit;

   InfoMemo.Lines.Add('����� �������� �� �������! [Debug mode ON]');
   InfoMemo.Lines.Add('������ �������� �� ����� [' + IntToStr(StopRecNo) + ']');
   FinishImport;

   Result := False;
  end;
 end;

 procedure LogImportRecord(s : string);
 var
  a  : PAnsiChar;
  qt : string;
 begin
  a := PAnsiChar(s);
  qt := 'execute procedure EXCH_PROC_INI_LOG_REC_ADD_IMP(' + IntToStr(id_I_Server)
  + ',0,' + QuotedStr(NameTable) + ',' + AnsiExtractQuotedStr(a, #39) + ','
  + QuotedStr(id_Log_Rec) + ')';

  Status(qt);
  WriteQuery.SQL.Text := qt;
  WriteQuery.ExecQuery;
  WriteQuery.Close;
 end;
begin
 Old_Count         := 0;
 id_I_Server       := 0;
 Query.Transaction := dm.ReadTransaction;

 id_From := '';
 id_To   := '';

 RecNo             := 0;

 TempLinks         := nil;
 v                 := nil;
 QueryParams       := nil;

 RepeatApply := False;

 if (ImpTextName = '') or not FileExists(ImpTextName) then begin
  ShowMessage('�� �� ������ ����, �� ����� �����������!');
  Exit;
 end;

 if UpperCase(ExtractFileExt(ImpTextName)) = '.RAR' then begin
  if not UnRAR then begin
   InfoMemo.Lines.Add(TimeToStr(Now) + ' - ������������ ����� ������� ��������� ��������!');
   InfoMemo.Lines.Add('����������� ������� ���������!');
   ShowMessage('������������ ����� ������� ��������� ��������!' + #13 + #13 + '����������� ������� ���������!');
   Exit;
  end
  else begin
   InfoMemo.Lines.Add(TimeToStr(Now) + ' - ������������ ����� ������� ���������!');
   z := Copy(ImpTextName, 1, Length(ImpTextName) - Length(ExtractFileExt(ImpTextName)));
   ImpFileName := z + '\Export.txt';

   if not FileExists(ImpFileName) then begin
    InfoMemo.Lines.Add(TimeToStr(Now) + ' - �������������� ����� ������� ������ ��������� ���!');
    InfoMemo.Lines.Add('����������� ������� ���������!');
    ShowMessage('�������������� ����� ������� ������ ��������� ���!' + #13 + #13 + '����������� ������� ���������!');
    Exit;
   end;
  end;
 end
 else if UpperCase(ExtractFileExt(ImpTextName)) = '.TXT' then ImpFileName := ImpTextName
 else begin
  InfoMemo.Lines.Add(TimeToStr(Now) + ' - ����� ������� ������ ��������� ���!');
  InfoMemo.Lines.Add('����������� ������� ���������!');
  ShowMessage('����� ������� ������ ��������� ���!' + #13 + #13 + '����������� ������� ���������!');
  Exit;
 end;

 // ���� �������
 if not StartHistory then begin
  InfoMemo.Lines.Add('�� ���� ������������ ����� � ����� �����!' + #13 + '����������� ����� ���������!');
  ShowMessage('�� ���� ������������ ����� � ����� �����!' + #13 + '����������� ����� ���������!');
  Exit;
 end;

 AssignFile(ImpText, ImpFileName);
 Reset(ImpText);

 InfoMemo.Lines.Add(TimeToStr(Now) +  ' - ������ ����� ������!');

 i := 0;
 while not Eof(ImpText) do begin
  Inc(i);
  ReadLn(ImpText, s);
  Inc(RecNo);

  if Copy(s, 1, 18) = 'FIRST_INIT_NATIVE<' then begin
   SetLength(fTables, Length(fTables) + 1);

   fTables[Length(fTables) - 1]._Name_Table := Copy(s, 19, Pos('>', s) - 19);
   fTables[Length(fTables) - 1]._id_Log_Rec := Copy(s, Pos('>', s) + 1, Pos('&#', s) - Pos('>', s) - 1);
   fTables[Length(fTables) - 1]._Servers    := Copy(s, Pos('&#', s) + 2, Length(s) - Pos('&#', s) - 1);
  end;
 end;

 Reset(ImpText);
 RecNo := 0;

 ProgressBar.Position       := 0;
 ProgressBar.Properties.Max := i;
 ProgressPosition           := 0;

 WriteQuery.Transaction := dm.WriteTransaction;
 WriteQuery.Transaction.StartTransaction;

 //|       Import Script is reading from the File           |\\
// |Updating, deleting and inserting records from the table | \\

 if not GoToNextRecord then Exit;

// FromServer  := False;
// ServersInfo := False;

 Count := 0;

 while not Eof(ImpText) do begin
  Flag2 := True;

  if s[1] = '/' then begin
   if not GoToNextRecord then Exit;
   Continue;
  end;

  if s = '</FromServer>' then begin
   if not GoToNextRecord then Exit;

   if (Trim(s) = '') or (s[1] = '/') or (s[1] = '<') then begin
    if not GoToNextRecord then Exit;
    Continue;
   end;

   id_I_Server  := StrToInt(Copy(s, 1, pos(';', s) - 1));
   id_I_Log_Rec := StrToInt64(Copy(s, pos(';', s) + 1, Length(s) - 1));

   InfoMemo.Lines.Add('����� �������� ����������...');

   Query.Close;
   QueryText := 'select IMPORT_ID_LOG_REC from  EXCH_INI_SERVERS'
   + ' where ID_SERVER=' + IntToStr(id_I_Server);

   Status(QueryText);
   Query.SelectSQL.Text := QueryText;
   Query.Open;

   if not VarIsNull(Query.Fields[0].AsVariant) then begin
    id_DB_Log_R := StrToInt64(Query.Fields[0].AsString);

    if id_DB_Log_R >= id_I_Log_Rec then begin
     if EXCH_ADMIN then begin
      InfoMemo.Lines.Add('���������� ����� ����� ������� �������!');

      if MessageDlg('�����!', '���������� ����� ����� ������� �������!' + #13 + #13 + '�� ������ �� �������� ��������� ������ ������?'
        + #13 + '!!!(������ �������� - �� ���� ������� ����, �� ���� �������� ���� ������� ������������ ������!)' , mtConfirmation, [mbYes, mbNo]) = mrYes
      then begin
       InfoMemo.Lines.Add('������ ��������� ����������. ����� ���������� ������������ ������ ��������... ³������ ');
       RepeatApply := True
      end
      else begin
       InfoMemo.Lines.Add('����������� ������� ���������');
       Exit;
      end;
     end
     else begin
      InfoMemo.Lines.Add('���������� ����� ����� ������� �������!');
      InfoMemo.Lines.Add('����������� ������� ���������');
      ShowMessage('���������� ����� ����� ������� �������!' + #13 + #13 + '����������� ������� ���������');
      Exit;
     end;
    end;
   end;

   Query.Close;

   InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';
  end
  else if s = '</ServersInfo>' then begin
   InfoMemo.Lines.Add('³��������� �������� ����������...');

   if not GoToNextRecord then Exit;

   CanUsePack := False;

   while not Eof(ImpText) do begin
    Flag2 := True;
    if (Trim(s) = '') or (s[1] = '/') then begin
     if not GoToNextRecord then Exit;
     Continue;
    end
    else if Copy(s, 1, 2) = '</' then begin
     Flag2 := False;
     Break;
    end;

    r := GetServersInfo(s);

    if r._id_Server = SYS_SERVER then begin
     CanUsePack := True;

     QueryText := 'update EXCH_INI_SERVERS set EXPORT_ID_LOG_REC='
     + IntToStr(r._Imp_id_Log_Rec) + ', IMPORT_ID_LOG_REC='
     + IntToStr(id_I_Log_Rec) + ' where ID_SERVER=' + IntToStr(id_I_Server);

     Status(QueryText);
     WriteQuery.SQL.Text := QueryText;
     WriteQuery.ExecQuery;
     WriteQuery.Close;

     Break;
    end;

    if not Flag2 then Continue;

    if not GoToNextRecord then Exit;
   end;

   InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';

   if not CanUsePack then begin
    WriteQuery.Transaction.Rollback;

    InfoMemo.Lines.Add('��� ����� �� ���������� ��� ������� �� ����� ������!');
    InfoMemo.Lines.Add('����������� ������� ���������');
    InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ��������.');
    ShowMessage('�����! ��� ����� �� ���������� ��� ������� �� ����� ������!'
    + #13 + '����������� ������� ���������' + #13 + #13 + 'ϳ����������� ���������� ��������� ��������.');
    Exit;
   end;
  end
  else if s = '</TablesInfo>' then begin
   InfoMemo.Lines.Add('�������� ������� �����...');

   if not GoToNextRecord then Exit;

   Flag2 := True;

   while not Eof(ImpText) do begin
    if (Trim(s) = '') or (s[1] = '/') then begin
     if not GoToNextRecord then Exit;
     Continue;
    end
    else if Copy(s, 1, 2) = '</' then begin
     Flag2 := False;
     Break;
    end;

    SetLength(TableIArray, Length(TableIArray) + 1);
    with TableIArray[Length(TableIArray) - 1] do begin
     _NameTable  := Copy(s, 1, Pos('<', s) - 1);
     s           := Copy(s, Pos('<', s) + 1, Length(s) - Pos('<', s));
     _ExprFields := Copy(s, 1, Pos('>', s) - 1);
     s           := Copy(s, Pos('<', s) + 1, Length(s) - Pos('<', s));
     _Fields     := Copy(s, 1, Pos('>', s) - 1);
    end;

    SetTable(Length(TableIArray) - 1);

    if not GoToNextRecord then Exit;
   end;

   InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';

   QueryText := 'select NAME_TABLE from EXCH_INI_TABLE_CONNECT order by EXCH_ORDER desc';
   Status(QueryText);
   InitWQuery.SQL.Text := QueryText;
   InitWQuery.ExecQuery;

   while not InitWQuery.eof do begin
    for i := 0 to Length(fTables) - 1 do 
     if InitWQuery.FieldByName('NAME_TABLE').AsString = fTables[i]._Name_Table then begin
      if id_DB_Log_R >= StrToInt64(fTables[i]._id_Log_Rec) then Break;

      v    := nil;
      v    := GetServersFromString(fTables[i]._Servers);

      fFlag := False;
      for k := 0 to Length(v) - 1 do
       if v[k] = SYS_SERVER then begin
        fFlag := True;
        Break;
       end;

      if not fFlag then Break;

      fFlag := False;
      for j := 0 to Length(TableIArray) - 1 do
       if TableIArray[j]._NameTable = fTables[i]._Name_Table then begin
        fFlag := True;
        Break;
       end;

      if not fFlag then begin
       WriteQuery.Transaction.Rollback;

       InfoMemo.Lines.Add('�������! �� ���� �������� �������� ����������� ������� [' + fTables[i]._Name_Table + ']!' + ' ������� �� ����������� ��� �����!');
       InfoMemo.Lines.Add('����������� ������� ���������');
       InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ��������.');
       ShowMessage('�������! �� ���� �������� �������� ����������� ������� [' + fTables[i]._Name_Table + ']!'
       + #13 + ' ������� �� ����������� ��� �����!'
       + #13 + '����������� ������� ���������' + #13 + #13 + 'ϳ����������� ���������� ��������� ��������.');
       Exit;
      end
      else DelFirstInitData(j);
     end;

    InitWQuery.Next;
   end;

   InitWQuery.Close;

   InfoMemo.Lines.Add('������ �����...');
  end
  else if s = '</Data>' then begin
   if not GoToNextRecord then Exit;

   while not Eof(ImpText) do begin
    if (Trim(s) = '') or (s[1] = '/') then begin
     if not GoToNextRecord then Exit;
     Continue;
    end;

    if Copy(s, 1, 18) = 'FIRST_INIT_NATIVE<' then begin
     // ��������� ������ ������, �.�. ��� ������ ��������� ����. (���������� �����)

     if not GoToNextRecord then Exit;
     Continue;
    end;

    id_Log_Rec := Copy(s, 1, Pos('<', s) - 1);
    if id_From = '' then id_From := id_Log_Rec;

    if id_DB_Log_R >= StrToInt64(id_Log_Rec) then begin
     if not RepeatApply then begin
      // ��������� ������ ������, �.�. ��� ���� ������������� � ���������� �������

      Inc(Old_Count);

      if not GoToNextRecord then Exit;
      Continue;
     end;
    end;

    NameTable  := Copy(s, Pos('<', s) + 1, Pos('/', s) - Pos('<', s) - 1);
    Action     := Copy(s, Pos('/', s) + 1, 1);
    k          := Pos('&#', s);

    Next_Table := False;

    Flag := False;
    for i := 0 to Length(TableIArray) - 1 do
     if TableIArray[i]._NameTable = NameTable then begin
      Flag := True;
      ind  := i;
      Break;
     end;

    ExprFields := TableIArray[ind]._ExprFields;
    FieldsName := TableIArray[ind]._Fields;

    if not Flag then begin
     InfoMemo.Lines.Add('������� ' + QuotedStr(NameTable)
     + ' �� ���� ������������� � ���� ����� �� ��, �� ����� �����������!');

     Import_Errors := True;
     Next_Table    := True;
    end;

    if Action = 'D' then
     ValueExpr := Copy(s, Pos('>', s) + 1, k - 1 - Pos('/', s) - 2)
    else
     Data := Copy(s, Pos('>', s) + 1, k - 1 - Pos('/', s) - 2);

    ////  ��� ��������� ���������� ������ �������------------
    if RepeatApply and (Action <> 'D') then Action := 'F';//|
    //// ----------------------------------------------------

    Servers    := Copy(s, k + 2, Length(s));

    v    := nil;
    v    := GetServersFromString(Servers);

    Flag := True;
    for k := 0 to Length(v) - 1 do
     if v[k] = SYS_SERVER then begin
      Flag := False;
      Break;
     end;

    if Flag then begin
     if not GoToNextRecord then Exit;
     Continue;
    end;

    if Action = 'D' then begin
     str := ParseStr(ValueExpr, ',');
     b   := '';
     for i := 0 to Length(str) - 1 do begin
      if b <> '' then b := b + #128;
      b := b + QuotedStr(str[i]);
     end;

     TempLinks := CreateFieldLinks(ExprFields, b, NameTable, #128);
    end
    else begin
     str := ParseStr(Data);
     b   := '';
     for i := 0 to Length(str) - 1 do begin
      if b <> '' then b := b + #128;
      b := b + QuotedStr(str[i]);
     end;

     tl := CreateFieldLinks(FieldsName, b, NameTable, #128);

     TempLinks := nil;
     d         := -1;

     for i := 0 to Length(tl) - 1 do begin
      for k := 0 to Length(TableIArray[ind]._TableFields) - 1 do
       if (tl[i]._Name_Field = TableIArray[ind]._TableFields[k]._FieldName)
       and (TableIArray[ind]._TableFields[k]._Is_Exch_Field)
       then begin
        SetLength(TempLinks, Length(TempLinks) + 1);
        TempLinks[Length(TempLinks) - 1] := tl[i];

        Break;
       end;
     end;
    end;

    if Length(TempLinks) = 0 then begin
     WriteQuery.Transaction.Rollback;

     InfoMemo.Lines.Add('�������! �� ���� ���������� ��''��� �� ������ �� ������ ������� [' + NameTable + ']');
     InfoMemo.Lines.Add('����������� ������� ���������');
     InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ��������.');
     ShowMessage('�������! �� ���� ���������� ��''��� �� ������ �� ������ ������� [' + NameTable + ']'
     + #13 + '����������� ������� ���������' + #13 + #13 + 'ϳ����������� ���������� ��������� ��������.');
     Exit;
    end;

    s := '';
    for i := 0 to Length(TempLinks) - 1 do begin
     if SYS_EXCH_CHECK_ID then begin
      DeQValue := AnsiDequotedStr(TempLinks[i]._Value, #39);
      if TryStrToInt64(DeQValue, PK) then begin
       if StrToInt(Copy(DeQValue, Length(DeQValue) - 1, 2)) = SYS_SERVER then begin
        InfoMemo.Lines.Add('������ ������ ��� ������� ' + QuotedStr(NameTable)
        + ', �� ���� ������� � ������� ��� �����, ��� ������ ���, �������������'
        + ' ���� �������� ������� ��� �����!');

        Import_Errors := True;
        Next_Table    := True;
       end;
      end;
     end;

     if i > 0 then s := s + ',';
     s := s + TempLinks[i]._Value;
    end;

    if Next_Table then Break;

    if (Action = 'F') or (Action = 'N') or (Action = 'S') then begin
     // FIRST INITIALIZATION
     // ���� ������ ��������� ��������� ��������������, �� � ���� ���������� ���� A ���o U

     q := ' where ';


     for k := 0 to Length(TempLinks) - 1 do begin
      if k > 0 then q := q + ' and ';

      q := q + '"' + UpperCase(TempLinks[k]._Name_Field) + '"' + ' = ' + TempLinks[k]._Value;
     end;

     QueryText := 'select * from ' + UpperCase(NameTable) + q;

     Status(QueryText);
     WriteQuery.SQL.Text := QueryText;
     WriteQuery.ExecQuery;
     if WriteQuery.Eof then Action := 'A'
     else Action := 'U';
     WriteQuery.Close;
    end;

    if (Action = 'D') then begin
     // DELETING DELETING DELETING
     LogImportRecord(s);

     QueryText := 'delete from ' + UpperCase(NameTable) + ' where ';

     for k := 0 to Length(TempLinks) - 1 do begin
      if k > 0 then QueryText := QueryText + ' and ';

      QueryText := QueryText + '"' + UpperCase(TempLinks[k]._Name_Field) + '"' + '=' + TempLinks[k]._Value
     end;

     Status(QueryText);
     WriteQuery.SQL.Text := QueryText;
     WriteQuery.ExecQuery;
     WriteQuery.Close;
    end;

    if (Action = 'U') then begin
     // UPDATING UPDATING UPDATING UPDATING UPDATING UPDATING UPDATING

     Data := SetValues(Data, ind);

     v    := nil;
     v    := GetServersFromString(Servers);
     Flag := True;
     for k := 0 to Length(v) - 1 do
      if v[k] = SYS_SERVER then begin
       Flag := False;
      end;

     if Flag then Continue;

     QueryParams := nil;
     QueryParams := GetQueryParams(Data);

     // �������� ������ ��� �������

     QueryText2 := '';
     w := '';

     for k := 0 to Length(TableIArray[ind]._TableFields) - 1 do begin
      Flag := True;
      for t := 0 to Length(TableIArray[ind]._EFields) - 1 do
       if TableIArray[ind]._TableFields[k]._FieldName = TableIArray[ind]._EFields[t]._FieldName then begin
        if w = '' then w := ' where '
        else w := w + ' and ';

        if Pos('$B$', QueryParams[k]) > 0 then
         w := w + '"' + TableIArray[ind]._TableFields[k]._FieldName + '" = null'
        else
         w := w + '"' + TableIArray[ind]._TableFields[k]._FieldName + '" = ' + QuotedStr(GetEnters(QueryParams[k]));

        Flag := False;
        Break;
       end;

      if Flag or (Length(TableIArray[ind]._TableFields) = Length(TableIArray[ind]._EFields)) then begin
       // � ��� ����� ����� ���������� ����� �� ��� ������, ���� � PK ������ ������ ��� ���� �������
       if QueryText2 = '' then
        QueryText2 := 'update ' + UpperCase(NameTable) + ' set '
       else
        QueryText2 := QueryText2 + ', ';

       if Pos('$B$', QueryParams[k]) > 0 then
        QueryText2 := QueryText2 + '"' + TableIArray[ind]._TableFields[k]._FieldName + '" = null'
       else if QueryParams[k] = 'null' then
        QueryText2 := QueryText2 + '"' + TableIArray[ind]._TableFields[k]._FieldName + '"  = null'
       else
        QueryText2 := QueryText2 + '"' + TableIArray[ind]._TableFields[k]._FieldName + '"  = ' + QuotedStr(GetEnters(QueryParams[k]));
      end;
     end;

     QueryText2 := QueryText2 + w;
     Status(QueryText2);

     QueryText := '';
     w := '';

     // �������� ������ ��� ����������

     for k := 0 to Length(TableIArray[ind]._TableFields) - 1 do begin
      Flag := True;
      for t := 0 to Length(TableIArray[ind]._EFields) - 1 do
       if TableIArray[ind]._TableFields[k]._FieldName = TableIArray[ind]._EFields[t]._FieldName then begin
        if w = '' then w := ' where '
        else w := w + ' and ';

        w := w + '"' + TableIArray[ind]._TableFields[k]._FieldName + '"' + ' = :Param' + IntToStr(k);

        Flag := False;
        Break;
       end;

      if Flag or (Length(TableIArray[ind]._TableFields) = Length(TableIArray[ind]._EFields)) then begin
       // � ��� ����� ����� ���������� ����� �� ��� ������, ���� � PK ������ ������ ��� ���� �������
       if QueryText = '' then
        QueryText := 'update ' + UpperCase(NameTable) + ' set '
       else
        QueryText := QueryText + ', ';

       QueryText := QueryText + '"' + TableIArray[ind]._TableFields[k]._FieldName + '"' + ' = :Param' + IntToStr(k);
      end;
     end;

     QueryText := QueryText + w;

     LogImportRecord(s);

     WriteQuery.SQL.Text := QueryText;
     Status(QueryText);
     WriteQuery.Prepare;

     for t := 0 to Length(QueryParams) - 1 do begin
      k := Pos('$B$', QueryParams[t]);

      if QueryParams[t] = 'null' then WriteQuery.ParamByName('Param' + IntToStr(t)).Value := null
      else if k > 0 then begin
       bl_name := Copy(QueryParams[t], k + 3, Length(QueryParams[t]) - k - 2);
       k := Pos('$/B$', bl_name);

       bl_name := Copy(bl_name, 1, k - 1);

       WriteQuery.ParamByName('Param' + IntToStr(t)).LoadFromFile(ExtractFileDir(ImpFileName) + '\BLOBs\' + bl_name);
      end
      else WriteQuery.ParamByName('Param' + IntToStr(t)).Value := GetEnters(QueryParams[t]);
     end;

     WriteQuery.ExecQuery;


     WriteQuery.Close;
    end;

    if (Action = 'A') then begin
     // INSERTING UPDATING INSERTING UPDATING INSERTING UPDATING

     Data := SetValues(Data, ind);

     v    := nil;
     v    := GetServersFromString(Servers);
     Flag := True;
     for k := 0 to Length(v) - 1 do
      if v[k] = SYS_SERVER then begin
       Flag := False;
      end;

     if Flag then Continue;

      q := '';

      for k := 0 to Length(tl) - 1 do begin
       if k > 0 then q := q + ', ';

       q := q + '"' + UpperCase(tl[k]._Name_Field) + '"';
      end;

     QueryText2 := 'insert into ' + UpperCase(NameTable) + '(' + q + ')'
     + ' values(' + GetEnters(Data) + ')';

     Status(QueryText2);

     QueryParams := nil;
     QueryParams := GetQueryParams(Data);

     // �������� ������ ��� ����������

     QueryText := 'insert into ' + UpperCase(NameTable) + '(' + q + ')'
     + ' values(';

     for t := 0 to Length(QueryParams) - 1 do begin
      if t > 0 then QueryText := QueryText + ',';
      QueryText := QueryText + ':Param' + IntToStr(t);
     end;

     QueryText := QueryText + ')';

     LogImportRecord(s);

     WriteQuery.SQL.Text := QueryText;
     Status(QueryText);
     WriteQuery.Prepare;

     for t := 0 to Length(QueryParams) - 1 do begin
      k := Pos('$B$', QueryParams[t]);

      if QueryParams[t] = 'null' then WriteQuery.ParamByName('Param' + IntToStr(t)).Value := null
      else if k > 0 then begin
       bl_name := Copy(QueryParams[t], k + 3, Length(QueryParams[t]) - k - 2);
       k := Pos('$/B$', bl_name);

       bl_name := Copy(bl_name, 1, k - 1);

       WriteQuery.ParamByName('Param' + IntToStr(t)).LoadFromFile(ExtractFileDir(ImpFileName) + '\BLOBs\' + bl_name);
      end
      else WriteQuery.ParamByName('Param' + IntToStr(t)).Value := GetEnters(QueryParams[t]);
     end;

     WriteQuery.ExecQuery;


     WriteQuery.Close;
    end;

    if not GoToNextRecord then Exit;

    Inc(Count);
   end;
  end;

  if Flag2 then if not GoToNextRecord then Exit;
 end;

 id_To := id_Log_Rec;

 FinishImport;
end;

procedure TObmen_Form.OpenButtonClick(Sender: TObject);
begin
 if RadioGroup.ItemIndex <> 1 then Exit;
 if not OpenDialog.Execute then Exit;
 ImpTextName := OpenDialog.FileName;
 InfoMemo.Lines.Add('����������� ������ ������� � ����� ' + ImpTextName);
end;

procedure TObmen_Form.RadioGroupPropertiesChange(Sender: TObject);
begin
 if RadioGroup.ItemIndex = 0 then begin
  Caption := '������� �����';
  Application.Title := Caption;

  StartButton.Caption    := '������ �������';
  StartButton2.Caption   := '������ �������';

  OpenButton.Visible  := False;
  OpenButton2.Visible := ivNever;
  FormResize(Sender);

  Application.ProcessMessages;

  ExpImage.Visible := True;
  ImpImage.Visible := False;

  SavePathButton.Visible  := True;
  SavePathButton2.Visible := ivAlways;

  ServerCheckBox.Visible := True;
  ServerCheckBoxPropertiesChange(Sender);
//  DragAcceptFiles(Handle, False);

  StopRecLabel.Visible    := False;
  StopRecNoEdit.Visible   := False;
  StopRecCheckBox.Visible := False;
  CurRecLabelCap.Visible  := False;
  CurRecNoLabel.Visible   := False;
 end
 else if RadioGroup.ItemIndex = 1 then begin
  Caption := '������ �����';
  Application.Title := Caption;

  StartButton.Caption    := '������ ������';
  StartButton2.Caption   := '������ ������';

  OpenButton.Visible  := True;
  OpenButton2.Visible := ivAlways;
  FormResize(Sender);

  Application.ProcessMessages;

  ExpImage.Visible := False;
  ImpImage.Visible := True;

  SavePathButton.Visible  := False;
  SavePathButton2.Visible := ivNever;

  ServerCheckBox.Visible := False;
  ServerCheckBoxPropertiesChange(Sender);
//  DragAcceptFiles(Handle, True);

  StopRecLabel.Visible    := EXCH_ADMIN;
  StopRecNoEdit.Visible   := EXCH_ADMIN;
  StopRecCheckBox.Visible := EXCH_ADMIN;
  CurRecLabelCap.Visible  := EXCH_ADMIN;
  CurRecNoLabel.Visible   := EXCH_ADMIN;
 end
 else Exit;
end;

procedure TObmen_Form.StartButtonClick(Sender: TObject);
var
 Hour        : word;
 Min         : word;
 Sec         : word;
 MSec        : word;

 Dep_Name    : string;
begin
 Import_Errors := False;

 CurRecNoLabel.Caption := '--------';

 if RadioGroup.ItemIndex < 0 then begin
  ShowMessage('������ ��� ��������!');
  Exit;
 end;

 if (RadioGroup.ItemIndex = 0) and ServerCheckBox.Checked then
   if ServersPopupEdit.Text = '' then begin
    ShowMessage('������ ������, ��� ����� �� ������ ��������� ���!');
    Exit;
   end;

 EnableButtons(False);
 StatusMemo.Lines.Clear;

 if cbSaveStatus.Checked then begin
  DecodeTime(Now, Hour, Min, Sec, MSec);

  Dep_Name := EXCH_NAME_DEPARTMENT;

  SaveDialog.InitialDir := 'exports\';

  SaveDialog.FileName := Dep_Name + '(' + StringReplace(DateToStr(Now), '.', '-', [rfReplaceAll])
  + '_' + IntToStr(Hour) + '-' + IntToStr(Min) + '-' + IntToStr(Sec) + ')_SCR.txt';

  if not SaveDialog.Execute then begin
   ReconnectButton.Enabled := True;
   InitButton.Enabled      := True;
   Exit;
  end;

  AssignFile(StatusText, SaveDialog.FileName);
  Rewrite(StatusText);
 end;

// SetCurrentDirectory(
 //SaveDialog.InitialDir :=  '..\';
 cbSaveStatus.Enabled := False;

 if RadioGroup.ItemIndex = 0 then Make_Export
 else if RadioGroup.ItemIndex = 1 then Make_Import;

// if id_Log_Rec <> '' then InfoMemo.Lines.Add('������� ���������� id_Log_Rec = ' + id_Log_Rec);

 if cbSaveStatus.Checked then CloseFile(StatusText);

 EndHistory;

 cbSaveStatus.Enabled := True;
 EnableButtons(True);
 RadioGroupPropertiesChange(Sender);
end;

{procedure TObmen_Form.WMDropFiles(var Msg: TWMDropFiles);
var
 CFileName : array[0..MAX_PATH] of Char;
  s : string;
begin
 if RadioGroup.ItemIndex = 0 then Exit;
 try
  if DragQueryFile(Msg.Drop, 0, CFileName, MAX_PATH) > 0 then begin
   s := CFileName;

   if (UpperCase(ExtractFileExt(s)) <> '.TXT') and (UpperCase(ExtractFileExt(s)) <> '.RAR') then begin
    ShowMessage('���� �� �������� ��������� � �� �������� RAR-�������!');
    Exit;
   end;

   ImpTextName := s;
   InfoMemo.Lines.Add('����������� ������ ������� � ����� ' + ImpTextName);
   Msg.Result := 0;
  end;
 finally
  DragFinish(Msg.Drop);
 end;
end;}

procedure TObmen_Form.ClearButtonClick(Sender: TObject);
begin
 InfoMemo.Lines.Clear;
 StatusMemo.Lines.Clear;

 Import_Errors := False;

 ProgressBar.Position := 0;
 ImpTextName          := '';
end;

procedure TObmen_Form.ProgressBarStepIt(Step: integer = 1);
var
 k : integer;
 s : string;

 procedure ShowCurRecNo;
 var
  s : string;
 begin
{  if RecNo < 100 then begin
   CurRecNoLabel.Caption := IntToStr(RecNo);
   Application.ProcessMessages;
  end
  else} if RecNo mod 100 = 0 then CurRecNoLabel.Caption := IntToStr(RecNo);
 end;
begin
 if EXCH_ADMIN and (RadioGroup.ItemIndex = 1) then ShowCurRecNo;

 inc(ProgressPosition, Step);



 k := Trunc(ProgressPosition / ProgressBar.Properties.Max * ProgressBar.Width);
 if k = LastPixel then Exit;

 ProgressBar.Position := ProgressPosition;

////////////
 LastPixel := k;

 if RadioGroup.ItemIndex = 0 then
  s := IntToStr(Round(ProgressBar.Position / ProgressBar.Properties.Max * 100)) + '% - �������'
 else if RadioGroup.ItemIndex = 1 then
  s := IntToStr(Round(ProgressBar.Position / ProgressBar.Properties.Max * 100)) + '% - ������'
 else
  s := IntToStr(Round(ProgressBar.Position / ProgressBar.Properties.Max * 100)) + '% - �����������';


 Caption := s;
 Application.Title := s;

 Application.ProcessMessages;
end;

procedure TObmen_Form.ServersPopupEditPropertiesPopup(Sender: TObject);
begin
 ServersDataSet.Open;
end;

procedure TObmen_Form.ServersPopupEditPropertiesCloseUp(Sender: TObject);
begin
 if TableView.DataController.FocusedRecordIndex < 0 then Exit;

 id_Server             := TableView.ViewData.Records[TableView.DataController.FocusedRecordIndex].Values[0];
 ServersPopupEdit.Text := TableView.ViewData.Records[TableView.DataController.FocusedRecordIndex].Values[1];

 ServersDataSet.Close;
end;

procedure TObmen_Form.ServerCheckBoxPropertiesChange(Sender: TObject);
begin
 DateLabel.Visible        := ServerCheckBox.Checked and ServerCheckBox.Visible;
 Label4.Visible           := ServerCheckBox.Checked and ServerCheckBox.Visible;
 ServersPopupEdit.Visible := ServerCheckBox.Checked and ServerCheckBox.Visible;
 DateEdit.Visible         := ServerCheckBox.Checked and ServerCheckBox.Visible;

 if  ServerCheckBox.Visible then begin
  if ServerCheckBox.Checked then
   DateEdit.Date := Now
 end;
end;

procedure TObmen_Form.TableViewDblClick(Sender: TObject);
begin
 ServersPopupEdit.DroppedDown := False;
end;

procedure TObmen_Form.CloseButtonClick(Sender: TObject);
begin
 Close;

end;

function TObmen_Form.GetServersFromString(Str: string): TIntArray;
var
 Flag : boolean;
 k    : integer;
begin
 Result := nil;
 if Str = '' then Exit;

 Flag := False;
 while not Flag do begin
  SetLength(Result, Length(Result) + 1);
  k := pos(';', Str);
  if k >= Length(Str) then Flag := True;

  if k > 0 then begin
   Result[Length(Result) - 1] := StrToInt(Copy(Str, 1, k - 1));
   Str := Copy(Str, k + 1, Length(Str) - k);
  end
  else begin
   Result[Length(Result) - 1] := StrToInt(Str);
   Break;
  end;

 end;
end;

function TObmen_Form.GetServersInfo(Str: string): TServerRecord;
var
 k : integer;
begin
 if Str = '' then Exit;

 k := pos('#', Str);
 if k >= Length(Str) then Exit;

 Result._id_Server := StrToInt(Copy(Str, 1, k - 1));

 Str := Copy(Str, k + 1, Length(Str)- k);
 k   := pos(';', Str);
 Result._Imp_id_Log_Rec := StrToInt64(Copy(Str, 1, k - 1));

 if (k = 0) or (k >= Length(Str)) then Exit;

 Result._Last_Exp := StrToInt64(Copy(Str, k + 1, Length(Str) - k));
end;

procedure TObmen_Form.FormResize(Sender: TObject);
var
 BWidth : integer;
begin
 StatusBar.Panels[1].Width := Width - 20 - 150;
 AdminLabel.Left := (Width - AdminLabel.Width) div 2;

 if RadioGroup.ItemIndex = 0 then begin
  BWidth := (Width - 6 - 6 - 6 - 4*2) div 3;

  StartButton.Width := BWidth;
  ClearButton.Width := BWidth;
  CloseButton.Width := BWidth;

  StartButton.Left  := 6;
  ClearButton.Left  := 6 + BWidth + 4;
  CloseButton.Left  := 6 + BWidth + 4 + BWidth + 4;
 end
 else begin
  BWidth := (Width - 6 - 6 - 6 - 4*3) div 4;

  StartButton.Width := BWidth;
  ClearButton.Width := BWidth;
  OpenButton.Width  := BWidth;
  CloseButton.Width := BWidth;

  StartButton.Left  := 6;
  ClearButton.Left  := 6 + BWidth + 4;
  OpenButton.Left   := 6 + BWidth + 4 + BWidth + 4;
  CloseButton.Left  := 6 + BWidth + 4 + BWidth + 4 + BWidth + 4;
 end;
end;

procedure TObmen_Form.cbShowStatusPropertiesChange(Sender: TObject);
begin
 if cbShowStatus.Checked then
  Splitter.OpenSplitter
 else
  Splitter.CloseSplitter;
end;

procedure TObmen_Form.SplitterBeforeOpen(Sender: TObject;
  var AllowOpen: Boolean);
begin
 AllowOpen := cbShowStatus.Checked;
end;

procedure TObmen_Form.SplitterBeforeClose(Sender: TObject;
  var AllowClose: Boolean);
begin
 AllowClose := not cbShowStatus.Checked;
end;

procedure TObmen_Form.SplitterCanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
 Accept := cbShowStatus.Checked;
end;

procedure TObmen_Form.AboutButtonClick(Sender: TObject);
var
 f : TSplashForm;
begin
 f := TSplashForm.Create(Self);
 f.ConnectLabel.Visible := False;
 f.Height := 288;
 f.ShowInfo;
 f.Show;
end;

procedure TObmen_Form.DBEditDblClick(Sender: TObject);
var
  zFileName, zDir: array[0..79] of Char;
begin
  ShellExecute(Handle, nil,
    StrPCopy(zFileName, APP_PATH + INI_FILENAME), '',
    StrPCopy(zDir, ExtractFileDir(APP_PATH + INI_FILENAME)), SW_SHOWNORMAL);
end;

procedure TObmen_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SysAdmin.FinalizeAdminSystem;
// dm.ReadTransaction.Rollback;
end;

procedure TObmen_Form.ReconnectButtonClick(Sender: TObject);
begin
 if dm.WriteTransaction.State <> tsClosed then Exit;

 DM.ReadTransaction.Rollback;
 SysAdmin.FinalizeAdminSystem;
 DM.DataBase.Close;

 ClearButtonClick(Sender);

 ReadIniFile;
 DM.DataBase.DBName := DB_PATH;
 DM.DataBase.ConnectParams.UserName := DB_USER;
 DM.DataBase.ConnectParams.Password := DB_PASSWORD;

 try
  dm.DataBase.Open;
  dm.ReadTransaction.StartTransaction;
 except
  ShowMessage('�� ���� ���������� �''������� � ��!');
  Exit;
 end;

 sys_ReadOptions(dm.ReadTransaction);

 SysAdmin.InitializaAdminSystem(Self, dm.Database.Handle, 111, id_user, ADMIN_MODE);

 DateEdit.Date := Now;
 AddInfo;
end;

procedure TObmen_Form.InitButtonClick(Sender: TObject);
var
 s         : String;
 i         : Integer;
 QueryText : String;
begin
 if MessageDlg('�����!', '�� �������� �� ��� � ������� �������� �� ���� � ��� ���� ������� � ���!'
 + #13 + '�� ������ �� ����������?', mtWarning, [mbYes, mbNo]) <> mrYes then Exit;

 InitQuery.SelectSQL.Text := 'SELECT DISTINCT a.NAME_TABLE,'
     + ' a.EXPRESSION_FIELDS '
     + ' FROM EXCH_INI_TABLE_CONNECT a,'
     + ' EXCH_INI_TABLE_SUBJECT_AREA b,'
     + ' EXCH_JN_SERVERS_SUBJECT_AREA c'
     + ' WHERE a.name_table = b.name_table'
     + ' and b.id_subject_area = c.id_subject_area'
     + ' order by a.EXCH_ORDER';

 EnableButtons(False);
 RadioGroup.ItemIndex := -1;

 ClearButtonClick(Sender);

 dm.WriteTransaction.StartTransaction;

 InfoMemo.Lines.Add('��������� ����� � ������� ��������...');

 InitWQuery.Close;
 QueryText := 'DELETE FROM EXCH_INI_DATE_LOG_REC';
 Status(QueryText);
 InitWQuery.SQL.Text := QueryText;
 InitWQuery.ExecQuery;

 InitWQuery.Close;
 QueryText := 'DELETE FROM EXCH_INI_LOG_REC';
 Status(QueryText);
 InitWQuery.SQL.Text := QueryText;
 InitWQuery.ExecQuery;

 InitWQuery.Close;
 QueryText := 'DELETE FROM EXCH_INI_LOG_REC_SERVERS';
 Status(QueryText);
 InitWQuery.SQL.Text := QueryText;
 InitWQuery.ExecQuery;

 InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';

 InfoMemo.Lines.Add('�������� ����������� �����, ���������...');
 InitQuery.Close;
 QueryText := InitQuery.SelectSQL.Text;
 Status(QueryText);
 InitQuery.Open;

 ProgressBar.Properties.Max := InitQuery.RecordCount; // ����� ������������: �� ���� ��� ���������� �����
 ProgressPosition           := 0;

 while not InitQuery.Eof do begin
  s := InitQuery['EXPRESSION_FIELDS'];

  InitRQuery.Close;

  InfoMemo.Lines.Add('������������ ������� "' + InitQuery['NAME_TABLE'] + '" ...');

  QueryText := 'SELECT ' + s + ' FROM ' + InitQuery['NAME_TABLE'];

  Status(QueryText);

  InitRQuery.SelectSQL.text := QueryText;
  InitRQuery.Open;

  while not InitRQuery.Eof do begin
   s := '';

   for i := 0 to InitRQuery.FieldCount - 1 do begin
    s := s + InitRQuery.Fields[i].AsString;
    if i <> InitRQuery.FieldCount - 1 then s := s + ',';
   end;

   InitWQuery.Close;
   QueryText := 'EXECUTE PROCEDURE EXCH_PROC_INI_LOG_REC_ADD_EX (0,' + QuotedStr(InitQuery['NAME_TABLE'])
   + ',' + QuotedStr(s) + ', ' + QuotedStr('F') + ')';

   Status(QueryText);
   InitWQuery.SQL.Text := QueryText;
   InitWQuery.ExecProc;

   InitRQuery.Next;
  end;

  ProgressBarStepIt;

  InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';
  InitQuery.Next;
 end;

 InfoMemo.Lines.Add('�������� ����������� ����� ������ ���������!');

 if MessageDlg('ϳ�����������', '�������� ����������� ����� ������ ���������! �� ������ �� ���������� ����?',
 mtConfirmation, [mbYes, mbNo]) = mrYes then begin
  InitWQuery.Transaction.Commit;
  InfoMemo.Lines.Add('���������� �����������.');
 end
 else begin
  InitWQuery.Transaction.Rollback;
  InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ������������.');
 end;

 EnableButtons(True);
 RadioGroup.ItemIndex := 0;
end;

procedure TObmen_Form.AddInfo;
begin
 cbShowStatusPropertiesChange(nil);
 ServerCheckBoxPropertiesChange(nil);

 DBEdit.Text := '���� ����� [' + DB_PATH + ']';
 StatusBar.Panels[3].Text := '�����: ' + DateToStr(FileDateToDateTime(FileAge(Application.ExeName))) + ' �.';

 Import_Errors := False;
end;

procedure TObmen_Form.TimerTimer(Sender: TObject);
begin
 FlashWindow(Obmen_Form.Handle, Flash);
 Flash := not Flash;
end;

procedure TObmen_Form.ImpImageClick(Sender: TObject);
begin
 if RadioGroup.Enabled then RadioGroup.ItemIndex := 1 - RadioGroup.ItemIndex;
end;

function TObmen_Form.CreateRARProcess(const aAppName, aCommandLine: PAnsiChar; aWindowState: Word) : boolean;
     { IN:
     aAppName     - ������ ���� � ������������ ����������.
     aCommandLine - ��������� ���������� ������.
     aWindowState - ��� ���������� ���� ����������.}
var
 Res         : Boolean;
 ExitCode    : Cardinal;
 ProcessInfo : TProcessInformation;
 StartUpInfo : TStartupInfo;

 s           : string;
begin
 Result := False;

 try
  //�������������� ����������� ���������
  FillChar(StartUpInfo, SizeOf(TStartUpInfo), 0);

  with StartUpInfo do begin
   cb          := SizeOf(TStartUpInfo);
   dwFlags     := STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
   wShowWindow := aWindowState;
  end;

  //������ �������
  Res := CreateProcess(aAppName, aCommandLine, nil, nil, False, NORMAL_PRIORITY_CLASS, nil, nil, StartUpInfo, ProcessInfo);

  if Res then
   with ProcessInfo do begin
    WaitForInputIdle(hProcess, INFINITE);                  // ���� ���������� �������������
    WaitforSingleObject(ProcessInfo.hProcess, INFINITE);   // ���� ���������� ��������
    GetExitCodeProcess(ProcessInfo.hProcess, ExitCode);   // �������� ��� ����������
    CloseHandle(hThread);                                 // ��������� ���������� ��������
    CloseHandle(hProcess);                                // ��������� ���������� ������

    if ExitCode <> 0 then begin
     s := '������� ��� ���������!';

     case ExitCode of
      1   : s := s + ' ������������! ������� ���������� �������.';
      2   : s := s + ' �������� �������! ������� �������� �������.';
      3   : s := s + ' ������� CRC! ϳ� ��� ���������� �������� ������� CRC.';
      4   : s := s + ' ����� �����������!';
      5   : s := s + ' ������� �����������! ������� ����������� �� ����.';
      6   : s := s + ' ������� ���������! ������� ������� ��������� �����.';
      7   : s := s + ' ������� ����������! ������� ��� ��������� �������/��������� � ���������� �����.';
      8   : s := s + ' ������� ���''��! ����������� ���''�� ��� ��������� ��������.';
      9   : s := s + ' ������� ���������! ������� �� ��� ��������� �����';
      255 : s := s + ' ��������� ������������! �������� ���� ��������� ������������.';
     end;

     InfoMemo.Lines.Add(s);
     Exit;
    end;
   end
  else Exit;
 except
  Exit;
 end;

 Result := True;
end;

procedure TObmen_Form.MakeRAR;
var
 Res         : boolean;
 CommandLine : string;
 AAppName    : string;
begin
 CommandLine := 'rar m -hp' + SYS_PASSWORD + ' -ep1 -k -- "' + ExtractFileDir(ExpDir) + '\' + ExpDirName + '" "'
 + ExpDir + '"';

 AAppName := APP_PATH + 'rar.exe';

 Res := CreateRARProcess(PAnsiChar(AAppName), PAnsiChar(CommandLine), SW_HIDE);

 if not Res then InfoMemo.Lines.Add(TimeToStr(Now) + ' - ��������� ����� �������� ��������� ��������!')
 else InfoMemo.Lines.Add(TimeToStr(Now) + ' - ��������� ����� �������� ������ ���������!');

{ if not DelDir(ExpDir) then begin
  InfoMemo.Lines.Add('������ �� ������� �������� ���������� ���� [' + ExpDir + ']');
  ShowMessage('������ �� ������� �������� ���������� ���� [' + ExpDir + ']');
 end;}
end;

function TObmen_Form.UnRAR : boolean;
var
 CommandLine : string;
 AAppName    : string;
begin
 CommandLine := 'rar x -hp' + SYS_PASSWORD + ' -y -- "' + ImpTextName + '"';

 AAppName := APP_PATH + 'rar.exe';

 Result := CreateRARProcess(PAnsiChar(AAppName), PAnsiChar(CommandLine), SW_HIDE);
end;

procedure TObmen_Form.SavePathButtonClick(Sender: TObject);
begin
 if not ShellBrowserDialog.Execute then Exit;

 DEF_EXP_PATH := ShellBrowserDialog.Path;
end;

procedure TObmen_Form.ApplicationEventsException(Sender: TObject;
  E: Exception);
begin
 if (QueryText <> '') and not cbShowStatus.Checked then begin
  InfoMemo.Lines.Add('������ ��������� �� �� (�������):');
  InfoMemo.Lines.Add(QueryText);

  if QueryText2 <> '' then begin
   InfoMemo.Lines.Add('������ ��������� �� �� (�������������):');
   InfoMemo.Lines.Add(QueryText2);
  end;
 end;

 if RadioGroup.ItemIndex = 1 then begin
  InfoMemo.Lines.Add('������� ���������� �����: ' + IntToStr(RecNo));

  if QueryText2 <> '' then
   ShowMessage(E.Message + #13 + #13 + '!������ ��������� �� ��:' + #13 + QueryText2
   + #13 + #13 + '!������� ���������� �����: ' + IntToStr(RecNo))
  else
   ShowMessage(E.Message + #13 + #13 + '!������ ��������� �� ��:' + #13 + QueryText
   + #13 + #13 + '!������� ���������� �����: ' + IntToStr(RecNo));
 end
 else begin
  if QueryText2 <> '' then
   ShowMessage(E.Message + #13 + #13 + '!������ ��������� �� ��:' + #13 + QueryText2)
  else
   ShowMessage(E.Message + #13 + #13 + '!������ ��������� �� ��:' + #13 + QueryText);
 end;

 if id_Log_Rec <> '' then
  InfoMemo.Lines.Add('������� ��������� ����: ' + id_Log_Rec);
end;

procedure TObmen_Form.InitTableButtonClick(Sender: TObject);
var
 f : TSetInitOptions_Form;

 Name_Table : string;
 Cur_Server : boolean;
begin
 f := TSetInitOptions_Form.Create(Self);
 if f.ShowModal <> mrOk then Exit;

 Name_Table := f.TableComboBox.Text;
 Cur_Server := f.CheckBox.Checked;

 if MessageDlg('�����!', '�� �������� �� ��� ������� [' + Name_Table + '] � ������� �������� �� ���� � ��� ���� ������� � ���!'
 + #13 + '�� ������ �� ����������?', mtWarning, [mbYes, mbNo]) <> mrYes then Exit;

 EnableButtons(False);
 RadioGroup.ItemIndex := -1;

 ClearButtonClick(Sender);

 dm.WriteTransaction.StartTransaction;

 if not TableFirstInit(Name_Table, Cur_Server) then begin
  InitWQuery.Transaction.Rollback;
  InfoMemo.Lines.Add('�������� ����������� ����� ��������� ��������!');
  InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ��������.');
  EnableButtons(True);
  RadioGroup.ItemIndex := 0;

  Exit;
 end;

 InfoMemo.Lines.Add('�������� ����������� ����� ������ ���������!');

 if MessageDlg('ϳ�����������', '�������� ����������� ����� ������ ���������! �� ������ �� ���������� ����?',
 mtConfirmation, [mbYes, mbNo]) = mrYes then begin
  InitWQuery.Transaction.Commit;
  InfoMemo.Lines.Add('���������� �����������.');
 end
 else begin
  InitWQuery.Transaction.Rollback;
  InfoMemo.Lines.Add('ϳ����������� ���������� ��������� ������������.');
 end;

 EnableButtons(True);
 RadioGroup.ItemIndex := 0;
end;

function TObmen_Form.TableFirstInit(NameTable: string; NS : boolean) : boolean;
var
 s, f, m : string; 
 i : integer;
 native_init : boolean;
 srv_fields  : string;
 sf : TStringArray;
begin
 InfoMemo.Lines.Add('��������� ����� � ������� ��������...');

 InitWQuery.Close;
 QueryText := 'DELETE FROM EXCH_INI_LOG_REC_SERVERS where id_log_rec in (select ID_LOG_REC from EXCH_INI_LOG_REC where NAME_TABLE = '
 + QuotedStr(NameTable) + ')';
 Status(QueryText);
 InitWQuery.SQL.Text := QueryText;
 InitWQuery.ExecQuery;

 InitWQuery.Close;
 QueryText := 'DELETE FROM EXCH_INI_LOG_REC where NAME_TABLE = ' + QuotedStr(NameTable);
 Status(QueryText);
 InitWQuery.SQL.Text := QueryText;
 InitWQuery.ExecQuery;

 InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';

 InfoMemo.Lines.Add('�������� ����������� �����, ���������...');
 InitQuery.Close;

 QueryText := 'SELECT DISTINCT a.NAME_TABLE,'
     + ' a.EXPRESSION_FIELDS,'
     + ' a.INIT_NATIVE, a.SERVER_FIELD'
     + ' FROM EXCH_INI_TABLE_CONNECT a,'
     + ' EXCH_INI_TABLE_SUBJECT_AREA b,'
     + ' EXCH_JN_SERVERS_SUBJECT_AREA c'
     + ' WHERE a.name_table = b.name_table'
     + ' and b.id_subject_area = c.id_subject_area'
     + ' and a.name_table=' + QuotedStr(NameTable)
     + ' order by a.EXCH_ORDER';

 InitQuery.SelectSQL.Text := QueryText;
 Status(QueryText);
 InitQuery.Open;

 if InitQuery.Eof then begin
  InfoMemo.Lines.Add('������ ������� [' + NameTable + '] �� ����������� ������� ��� �����!' + #13 + '�������� ������� ������������ �����!');
//  ShowMessage('������ ������� [' + NameTable + '] �� ����������� ������� ��� �����!' + #13 + #13 + '�������� ������� ������������ �����!');
  Result := False;
  Exit;
 end;

 s := InitQuery['EXPRESSION_FIELDS'];

 native_init := False;
 if not VarIsNull(InitQuery['INIT_NATIVE']) then if InitQuery['INIT_NATIVE'] = 1 then native_init := True;
 if not VarIsNull(InitQuery['SERVER_FIELD']) then  srv_fields := InitQuery['SERVER_FIELD'];


 InitRQuery.Close;

 f  := '';

 if (native_init or NS) and not VarIsNull(InitQuery['SERVER_FIELD']) then begin
  sf := nil;

  m := InitQuery['SERVER_FIELD'];
  
  sf := ParseStr(m, ',');

  for i := 0 to Length(sf) - 1 do begin
   if i > 0 then f := f + ' AND ';

   f := f + '(' + sf[i] + ' LIKE ' + QuotedStr('%' + IntToStr(SYS_SERVER)) + ')';
  end;
 end;

 QueryText := 'SELECT ' + s + ' FROM ' + InitQuery['NAME_TABLE'];

 if f <> '' then QueryText := QueryText + ' WHERE ' + f;

 Status(QueryText);

 InitRQuery.SelectSQL.text := QueryText;
 InitRQuery.Open;

 InfoMemo.Lines.Add('������������ ������� "' + InitQuery['NAME_TABLE'] + '" ...');

 ProgressBar.Properties.Max := InitRQuery.RecordCount; // ����� ������������: �� ���� ��� ���������� �����
 ProgressPosition           := 0;

 while not InitRQuery.Eof do begin
  s := '';

  for i := 0 to InitRQuery.FieldCount - 1 do begin
   s := s + InitRQuery.Fields[i].AsString;
   if i <> InitRQuery.FieldCount - 1 then s := s + ',';
  end;

  InitWQuery.Close;

  if native_init then
   QueryText := 'EXECUTE PROCEDURE EXCH_PROC_INI_LOG_REC_ADD_EX (0,' + QuotedStr(InitQuery['NAME_TABLE'])
   + ',' + QuotedStr(s) + ', ' + QuotedStr('S') + ')'
  else
   QueryText := 'EXECUTE PROCEDURE EXCH_PROC_INI_LOG_REC_ADD_EX (0,' + QuotedStr(InitQuery['NAME_TABLE'])
   + ',' + QuotedStr(s) + ', ' + QuotedStr('F') + ')';

  Status(QueryText);
  InitWQuery.SQL.Text := QueryText;
  InitWQuery.ExecProc;

  InitRQuery.Next;

  ProgressBarStepIt;
 end;

 InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������ ������ �� ������� ����� '
 + IntToStr(InitRQuery.RecordCount) + ' ������';

 InitRQuery.Close;

 Result := True;
end;

procedure TObmen_Form.CheckFirstInit;
var
 i    : integer;
 Flag : boolean;
begin
 dm.WriteTransaction.StartTransaction;

 Flag := False;

 for i := 0 to Length(TableEArray) - 1 do begin
  if not TableEArray[i]._Do_First_Init then Continue;

  Flag := True;

  TableFirstInit(TableEArray[i]._NameTable, False);

  InitWQuery.Close;
  QueryText := 'update EXCH_INI_TABLE_CONNECT set DO_FIRST_INIT = 0, INIT_NATIVE = 0 where NAME_TABLE=' + QuotedStr(TableEArray[i]._NameTable);

  Status(QueryText);
  InitWQuery.SQL.Text := QueryText;
  InitWQuery.ExecQuery;
  InitWQuery.Close;
 end;

 dm.WriteTransaction.Commit;

 if Flag then begin
  InfoMemo.Lines.Add('�������� ����������� ����� ������ ���������!');
  InfoMemo.Lines.Add('���������� �����������.');
 end; 
end;

function TObmen_Form.DelDir(dir: string): Boolean;
var
 fos: TSHFileOpStruct;
begin
 ZeroMemory(@fos, SizeOf(fos));

 with fos do begin
  wFunc  := FO_DELETE;
  fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
  pFrom  := PChar(dir + #0);
 end;

 Result := (0 = ShFileOperation(fos));
end;

function TObmen_Form.DelFirstInitData(TableIndex: integer): boolean;
var
 i : integer;
begin
 Result := False;

 if Length(TableIArray[TableIndex]._DI_Fields) = 0 then Exit;

 InfoMemo.Lines.Add('��������� ����� ������� [' + TableIArray[TableIndex]._NameTable + '] ����� ��������� ������������...');

 QueryText := 'delete from "' + TableIArray[TableIndex]._NameTable + '" where ';

 for i := 0 to Length(TableIArray[TableIndex]._DI_Fields) - 1 do begin
  if i > 0 then QueryText := QueryText + ' and ';

  QueryText := QueryText + '("' + TableIArray[TableIndex]._DI_Fields[i]._FieldName + '" like '
  + QuotedStr('%' + IntToStr(id_I_Server)) + ')';
 end;

 Status(QueryText);
 WriteQuery.SQL.Text := QueryText;
 WriteQuery.ExecQuery;
 WriteQuery.Close;

 InfoMemo.Lines[InfoMemo.Lines.Count - 1] := InfoMemo.Lines[InfoMemo.Lines.Count - 1] + '������';
end;

function TObmen_Form.StartHistory: boolean;
var
 s : string;
begin
 Result := False;

 try
  HistStoredProc.Transaction.StartTransaction;

  HistStoredProc.StoredProcName := 'EXCH_INI_HISTORY_ADD';
  HistStoredProc.Prepare;

  if RadioGroup.ItemIndex = 0 then begin
   if Length(ExpDir) > 500 then s := Copy(ExpDir, Length(ExpDir) - 500, 500)
   else s := ExpDir;

   HistStoredProc.ParamByName('ID_SERVER').AsInteger   := SYS_SERVER;
   HistStoredProc.ParamByName('EXCH_ACTION').AsInteger := 1;
   HistStoredProc.ParamByName('NAME_PACKAGE').AsString := s;
  end
  else if RadioGroup.ItemIndex = 1 then begin
   if Length(ImpTextName) > 500 then s := Copy(ImpTextName, Length(ImpTextName) - 500, 500)
   else s := ImpTextName;

   HistStoredProc.ParamByName('ID_SERVER').AsInteger   := id_Server;
   HistStoredProc.ParamByName('EXCH_ACTION').AsInteger := 2;
   HistStoredProc.ParamByName('NAME_PACKAGE').AsString := s;
  end;

  HistStoredProc.ExecProc;

  id_History := HistStoredProc.Fields[0].AsInt64;

  HistStoredProc.Transaction.Commit;
 except
  Exit;
 end;

 Result := True;
end;

procedure TObmen_Form.StopRecCheckBoxPropertiesChange(Sender: TObject);
begin
 if not StopRecCheckBox.Checked then Exit;

 if not TryStrToInt64(StopRecNoEdit.Text, StopRecNo) then StopRecNo := -1;
end;

procedure TObmen_Form.StopRecNoEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (Key in ['0'..'9', #8, #3, #22]) then Key := #0;
end;

procedure TObmen_Form.StopRecNoEditPropertiesChange(Sender: TObject);
begin
 if not StopRecCheckBox.Checked then Exit;

 if not TryStrToInt64(StopRecNoEdit.Text, StopRecNo) then StopRecNo := -1;
end;

function TObmen_Form.EndHistory: boolean;
var
 s : string;
begin
 Result := False;

 s := InfoMemo.Text;

 if id_From <> '' then s := s + #13 + #13 + 'id_Log_Rec_From = ' + id_From;
 if id_To   <> '' then s := s + #13 + #13 + 'id_Log_Rec_To = '   + id_To;

 try
  HistStoredProc.Transaction.StartTransaction;

  HistStoredProc.StoredProcName := 'EXCH_INI_HISTORY_MOD';
  HistStoredProc.Prepare;

  HistStoredProc.ParamByName('ID_HISTORY').AsInteger  := id_History;
//  HistStoredProc.ParamByName('ERR_MASSAGE').AsInteger := 2;
  HistStoredProc.ParamByName('END_MESSAGE').AsString  := s;


  HistStoredProc.ExecProc;

  HistStoredProc.Transaction.Commit;
 except
  Exit;
 end;

 Result := True;
end;

end.
