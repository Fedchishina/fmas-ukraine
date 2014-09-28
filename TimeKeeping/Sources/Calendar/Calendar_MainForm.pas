
{ -$Id: Calendar_MainForm.pas,v 1.1 2010/02/12 09:00:56 dimonl Exp $}
{******************************************************************************}
{               ������������������ ������� ���������� �����                    }

{               (c) �������� ������������ �����������, 2002-2009               }
{******************************************************************************}

{                             ������ "���������"                               }
{                     ������� ������ ����������� ����                          }
{                                            �������������: ���������� ������� ����������  }

unit Calendar_MainForm;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Grids, Db, IBCustomDataSet, IBQuery, StdCtrls, Buttons,
    ExtCtrls, Mask, Menus,
    DBGrids, cxDropDownEdit, cxControls,
    cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
    ibase, TuCommonProc, Calendar_DM, TuMessages, cxLabel, cxDBEdit,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, TuDates, dxBar,
  dxBarExtItems,AccMGMT;

type
    TFCalendar = class(TForm)
        DaysGrid: TStringGrid;
        Panel2: TPanel;
        Label2: TLabel;
        Label3: TLabel;
        FIOLabel: TLabel;
        DepartmentLabel: TLabel;
        PostLabel: TLabel;
        StatusPanel: TPanel;
        YearEdit: TcxSpinEdit;
        MonthBox: TcxComboBox;
    Panel3: TPanel;
    DBTextEditDay: TcxDBTextEdit;
    DBTextEditHoliday: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    pnl1: TPanel;
    GridDBTableView: TcxGridDBTableView;
    GridLevel: TcxGridLevel;
    Grid: TcxGrid;
    GridDBTableViewDBColumnDate: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    BtnRefresh: TdxBarLargeButton;
    BtnUpdate: TdxBarLargeButton;
    BtnExit: TdxBarLargeButton;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure RefreshButtonClick(Sender: TObject);
        procedure DaysGridDrawCell(Sender: TObject; ACol, ARow: Integer;
            Rect: TRect; State: TGridDrawState);
        procedure CancelButtonClick(Sender: TObject);
        procedure YearEditExit(Sender: TObject);
        procedure ModifyButtonClick(Sender: TObject);
        procedure DaysGridDblClick(Sender: TObject);
        procedure DaysGridSelectCell(Sender: TObject; ACol, ARow: Integer;
            var CanSelect: Boolean);
        procedure DaysGridMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
    procedure GridDBTableViewDBColumnDateGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    private
        procedure MakeCalendar(SelectToday: Boolean = False);
        procedure ReRead;
    public
        Cur_Date: TDate;
        Month_Beg: TDate;
        Month_End: TDate;
        MCalendar: array[1..31] of Bool;
        Days: Integer;
        Year, Month: Word;
        constructor Create(AOwner:TComponent;ADB_Handle:TISC_DB_HANDLE);reintroduce;
    end;

implementation

{$R *.DFM}

constructor TFCalendar.Create(AOwner:TComponent;ADB_Handle:TISC_DB_HANDLE);
var i: Integer;
    y, m, d: Word;
begin
  inherited Create(AOwner);
  DaysGrid.Cells[0, 0] := '��';
  DaysGrid.Cells[1, 0] := '��';
  DaysGrid.Cells[2, 0] := '��';
  DaysGrid.Cells[3, 0] := '��';
  DaysGrid.Cells[4, 0] := '��';
  DaysGrid.Cells[5, 0] := '��';
  DaysGrid.Cells[6, 0] := '��';


  if Cur_Date = 0 then Cur_Date := Date;
  DecodeDate(Cur_Date, y, m, d);
  YearEdit.Text                         := IntToStr(y);
  Caption                               := GetConst('Calendar','Form');
  GridDBTableViewDBColumnDate.Caption   := GetConst('Holidays','GridColumn');

  Label2.Caption                  := GetConst('Year','Label');
  Label3.Caption                  := GetConst('Moon','Label');
  cxLabel1.Caption                := GetConst('CountDay','Label');
  cxLabel2.Caption                := GetConst('CountHolidayDay','Label');
  Label2.Caption                  := GetConst('Year','Label');
  Label2.Caption                  := GetConst('Year','Label');
//------------------------------------------------------------------------------
  BtnRefresh.Caption       :=GetConst('Refresh','Button');
  BtnUpdate.Caption        :=GetConst('Update','Button');
  BtnExit.Caption          :=GetConst('Exit','Button');
//------------------------------------------------------------------------------
  MonthBox.Properties.Items.Text:=GetConst('MonthJanuary','OtherConsts')+#13+
                                  GetConst('MonthFebruary','OtherConsts')+#13+
                                  GetConst('MonthMarch','OtherConsts')+#13+
                                  GetConst('MonthApril','OtherConsts')+#13+
                                  GetConst('MonthMay','OtherConsts')+#13+
                                  GetConst('MonthJune','OtherConsts')+#13+
                                  GetConst('MonthJuly','OtherConsts')+#13+
                                  GetConst('MonthAutumn','OtherConsts')+#13+
                                  GetConst('MonthSeptember','OtherConsts')+#13+
                                  GetConst('MonthOctober','OtherConsts')+#13+
                                  GetConst('MonthNovember','OtherConsts')+#13+
                                  GetConst('MonthDecember','OtherConsts');
  MonthBox.ItemIndex := m - 1;
  DModule:=TDModule.Create(AOwner);
  DModule.DB.Handle:=ADB_Handle;
  ReRead;
  MakeCalendar(True);
  DBTextEditDay.DataBinding.DataSource:=DModule.DSource;
  DBTextEditDay.DataBinding.DataField:='DAY_COUNT';
  DBTextEditHoliday.DataBinding.DataSource:=DModule.DSource;
  DBTextEditHoliday.DataBinding.DataField:='HOLIDAY_COUNT';
  GridDBTableView.DataController.DataSource:=DModule.DSourceHoliday;
end;

procedure TFCalendar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FormStyle = fsMDIChild then Action := caFree;
end;

procedure TFCalendar.ReRead;
var i: Integer;
begin
  Month := MonthBox.ItemIndex + 1;
  Year := StrToInt(YearEdit.Text);
  with(DModule)do
  try
    DSetCalendar.Close;
    DSetWork.Close;
    DSetHoliday.Close;
    DSetCalendar.SelectSQL.Text:='SELECT * FROM GET_CALENDAR('+IntToStr(Year)+','+IntToStr(Month)+')';
    DSetWork.SelectSQL.Text:='SELECT * FROM TU_CALENDAR_INFO('+IntToStr(Year)+')';
    DSetHoliday.SelectSQL.Text:='SELECT * FROM HOLIDAYS_BETWEEN_2_DATES_EX2('''+DateToStr(EncodeDate(Year,1,1))+''','''+DateToStr(EncodeDate(Year,12,31))+''') order by HDATE';
    DSetCalendar.Open;
    DSetWork.Open;
    DSetHoliday.Open;
  except
    on e:Exception do
      TuShowMessage(GetConst('Caption','Error'),e.Message,mtError,[mbOK]);
  end;

  for i := 1 to 31 do
  begin
    if DModule.DSetCalendar.Locate('Tbl_Day', i, []) then
      MCalendar[i] := (DModule.DSetCalendar['Holiday'] = 'T')
    else
      MCalendar[i] := False;
  end;
end;

procedure TFCalendar.MakeCalendar(SelectToday: Boolean = False);
var i, j, k: Integer;
    d: Word;
begin
  for i := 0 to 6 do
    for j := 1 to 6 do
      DaysGrid.Cells[i, j] := '';
  Month_Beg := EncodeDate(Year, Month, 1);
  Days := 28;
  case Month of
    1, 3, 5, 7, 8, 10, 12: Days := 31;
    4, 6, 9, 11: Days := 30;
    2: if IsLeapYear(Year) then
         Days := 29
       else
         Days := 28;
  end;
  Month_End := EncodeDate(Year, Month, Days);

  j := DayOfWeek(EncodeDate(Year, Month, 1));
  dec(j);
  if j = 0 then j := 7;

  with(DModule)do
  try
    DSetCalendar.Close;
    DSetWork.Close;
    DSetHoliday.Close;
    DSetCalendar.SelectSQL.Text:='SELECT * FROM GET_CALENDAR('+IntToStr(Year)+','+IntToStr(Month)+')';
    DSetWork.SelectSQL.Text:='SELECT * FROM TU_CALENDAR_INFO('+IntToStr(Year)+')';
    DSetHoliday.SelectSQL.Text:='SELECT * FROM HOLIDAYS_BETWEEN_2_DATES_EX2('''+DateToStr(EncodeDate(Year,1,1))+''','''+DateToStr(EncodeDate(Year,12,31))+''') order by HDATE';
    DSetCalendar.Open;
    DSetWork.Open;
    DSetHoliday.Open;
  except
    on e:Exception do
      TuShowMessage(GetConst('Caption','Error'),e.Message,mtError,[mbOK]);
  end;

  k := 1;
  for i := 1 to Days do
    with DaysGrid do
    begin
      EncodeDate(Year, Month, i);
      Cells[j - 1, k] := IntToStr(i);

      if SelectToday then
      begin
        DecodeDate(Cur_Date, Year, Month, d);
        if d = i then
        begin
          Row := k;
          Col := j - 1;
        end;
      end;

      if j = 7 then
      begin
        j := 1;
        inc(k);
      end
      else
        inc(j);
    end;
end;

procedure TFCalendar.RefreshButtonClick(Sender: TObject);
begin
  ReRead;
  MakeCalendar;
end;

procedure TFCalendar.DaysGridDrawCell(Sender: TObject; ACol, ARow: Integer;
    Rect: TRect; State: TGridDrawState);
var d, w, h: Integer;
    s: string;
    sz: TSize;
    r: TRect;
begin
  w := DaysGrid.DefaultColWidth + DaysGrid.GridLineWidth;
  h := DaysGrid.DefaultRowHeight + DaysGrid.GridLineWidth;

  with DaysGrid.Canvas do
  if (ARow > 0) and (DaysGrid.Cells[ACol, ARow] <> '') then
  begin
    MoveTo(ACol * w - 1, ARow * h + h - 1);
    LineTo(ACol * w + w - 1, ARow * h - 1);

    d := StrToInt(DaysGrid.Cells[ACol, ARow]);
    if MCalendar[d] then
    begin
      s := '��';
      sz := TextExtent(s);
      Font.Color := clBlue;

      TextOut(ACol * w + w - 5 - sz.cx, ARow * h + h - 5 - sz.cy, s);
      s := IntToStr(d);
      sz := TextExtent(s);
      Font.Color := clRed;
      TextOut(ACol * w + 2, ARow * h + 2, s);
    end;

    if MCalendar[d] then
      Brush.Color := clRed
    else
      Brush.Color := clBlack;

    r.Left := ACol * w;
    r.Right := ACol * w + w - 1;
    r.Top := ARow * h;
    r.Bottom := ARow * h + h - 1;
    FrameRect(r);
  end;
end;

procedure TFCalendar.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFCalendar.YearEditExit(Sender: TObject);
begin
  if(Month<>0)then
  begin
    ReRead;
    MakeCalendar;
  end;
end;

procedure TFCalendar.ModifyButtonClick(Sender: TObject);
var d: Integer;
    CanSelect:boolean;
begin
  if (fibCheckPermission('/ROOT/TimeKeeping/TU_MainMenu/TU_Sprav/TU_Calendar','Edit')=0)
     or (fibCheckPermission('/ROOT/TimeKeeping/TU_MainMenu/TU_Sprav','Edit')=0)
  then
  else
  begin
     MessageBox(self.Handle, '�� �� ���� ������� �� ���� 䳿!','�����!', MB_OK or MB_ICONWARNING);
     exit;
  end;

  try
    d := StrToInt(DaysGrid.Cells[DaysGrid.Col, DaysGrid.Row]);
    MCalendar[d] := not MCalendar[d];
      with(DModule)do
    begin
      StProc.StoredProcName:='CALENDAR_CHANGE';
      StProc.Transaction.StartTransaction;
      StProc.Prepare;
      StProc.ParamByName('TBL_YEAR').AsInteger:=YearEdit.Value;
      StPRoc.ParamByName('TBL_MONTH').AsInteger:=MonthBox.ItemIndex+1;
      StProc.ParamByName('TBL_DAY').AsInteger:=d;
      if(MCalendar[d])then
        StProc.ParamByName('HOLIDAY').AsString:='T'
      else
        StProc.ParamByName('HOLIDAY').AsString:='F';
      StProc.ExecProc;
      StProc.Transaction.Commit;
      MakeCalendar;
    end
  except
    on e:Exception do
      TuShowMessage(GetConst('Caption','Error'),e.Message,mtError,[mbOK]);
  end;
  DaysGrid.OnSelectCell(TObject(DaysGrid),DaysGrid.Col, DaysGrid.Row, CanSelect);
end;

procedure TFCalendar.DaysGridDblClick(Sender: TObject);
begin
  BtnUpdate.Click;
end;

procedure TFCalendar.DaysGridSelectCell(Sender: TObject; ACol,
    ARow: Integer; var CanSelect: Boolean);
var Day: Integer;
begin
  if DaysGrid.Cells[ACol, ARow] = '' then
    StatusPanel.Caption := ''
  else
  try
    Day := StrToInt(DaysGrid.Cells[ACol, ARow]);
    if MCalendar[Day] then
      StatusPanel.Caption := GetConst('HolidaysDay','OtherConsts')
    else
      StatusPanel.Caption := GetConst('WorkDay','OtherConsts')
  except
    StatusPanel.Caption := '';
  end;
end;

procedure TFCalendar.DaysGridMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then BtnUpdate.Click;
end;

procedure TFCalendar.GridDBTableViewDBColumnDateGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  Atext:=DateNumToName(StrToDate(AText),1);
end;

end.
