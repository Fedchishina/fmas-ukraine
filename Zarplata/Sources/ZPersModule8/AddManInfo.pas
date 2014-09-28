unit AddManInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, uCharControl, uIntControl, uSpravControl,
  uFControl, uLabeledFControl, uDateControl, AllPeopleUnit, RxMemDS, uMainForm8,
  qfTools, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Dates, BaseTypes;

type
  TfrmAddManInfo = class(TForm)
    ManEdit: TqFSpravControl;
    TypeStagEdit: TqFSpravControl;
    CountDays: TqFIntControl;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    cxDateBegEdit: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxDateEndEdit: TcxDateEdit;
    GroupBoxSezon: TGroupBox;
    SezonTrue: TRadioButton;
    SezonFalse: TRadioButton;
    Label3: TLabel;
    cxPeriodText: TcxTextEdit;
    procedure ManEditOpenSprav(Sender: TObject; var Value: Variant;
      var DisplayText: String);
    procedure TypeStagEditOpenSprav(Sender: TObject; var Value: Variant;
      var DisplayText: String);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDateBegEditExit(Sender: TObject);
    procedure cxDateEndEditExit(Sender: TObject);
    function  CheckInfo: Boolean;
    procedure UpdatePeriod;
  private
    { Private declarations }
  public
        Kod: Integer;
        Kod_Setup : Integer;
  end;

var
  frmAddManInfo: TfrmAddManInfo;

implementation

{$R *.dfm}

uses DateUtils, uUnivSprav;

procedure TfrmAddManInfo.ManEditOpenSprav(Sender: TObject;
  var Value: Variant; var DisplayText: String);
var
    Result:Variant;
begin
    try
        result := AllPeopleUnit.GetManForASUP(Self, TfrmZPersModule8(owner).WorkDatabase.Handle, False, True);
        if (not VarIsNull(result)) and not (VarType(result) = varNull) and
        not (VarArrayDimCount(result) = 0) then
        begin
            Value := result[0];
            DisplayText := result[1];
        end;
    except on e:Exception do
        begin
            qFErrorDialog('��������� ����������� ������� �������� ���! ������� �������: "' +
                        e.Message + '"');

            exit;
        end;
    end;
end;
procedure TfrmAddManInfo.TypeStagEditOpenSprav(Sender: TObject;
  var Value: Variant; var DisplayText: String);
var
    Params: TUnivParams;
    OutPut: TRxMemoryData;
begin
    Params.FormCaption := '������� ���� �����';
    Params.ShowMode := fsmSelect;
    Params.ShowButtons := [fbExit];
    Params.TableName := 'INI_STAJ_SELECT';
    Params.Fields := 'NAME_STAJ,ID_STAJ';
    Params.FieldsName := '����� ���� �����';
    Params.KeyField := 'ID_STAJ';
    Params.ReturnFields := 'NAME_STAJ,ID_STAJ';
    Params.DBHandle := Integer(TfrmZPersModule8(Owner).WorkDatabase.Handle);

    OutPut := TRxMemoryData.Create(self);

    if GetUnivSprav(Params, OutPut) then
    begin
        Value := OutPut['ID_STAJ'];
        DisplayText := VarToStr(OutPut['NAME_STAJ']);
    end;
end;

procedure TfrmAddManInfo.btnOkClick(Sender: TObject);
var
    Date1: TDateTime;
    Yr1, Mth1, Dy1: Word;
begin
    if CheckInfo then
    begin
        Date1 := cxDateBegEdit.Date;
        DecodeDate(Date1, Yr1, Mth1, Dy1);
        Kod_Setup:=PeriodToKodSetup(Yr1,Mth1);
        ModalResult:=mrYes;
    end;
end;

procedure TfrmAddManInfo.btnCancelClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmAddManInfo.FormCreate(Sender: TObject);
begin
    Kod := TfrmZPersModule8(Owner).getKodSetup;
    cxDateBegEdit.Date := ConvertKodToDate(Kod);
    cxDateEndEdit.Date := ConvertKodToDate(Kod+1)-1;
    CountDays.Value := cxDateEndEdit.Date - cxDateBegEdit.Date + 1;
end;

procedure TfrmAddManInfo.cxDateBegEditExit(Sender: TObject);
begin
    if (not VarIsNull(cxDateBegEdit.EditValue) and not VarIsNull(cxDateBegEdit.EditValue)) then
    begin
        if (cxDateBegEdit.Date <= cxDateEndEdit.Date) then
            CountDays.Value := cxDateEndEdit.Date - cxDateBegEdit.Date + 1
        else CountDays.Clear;
        UpdatePeriod;
    end
    else CountDays.Clear;

end;

procedure TfrmAddManInfo.cxDateEndEditExit(Sender: TObject);
begin
    if (not VarIsNull(cxDateBegEdit.EditValue) and not VarIsNull(cxDateBegEdit.EditValue)) then
    begin
        if (cxDateBegEdit.Date <= cxDateEndEdit.Date) then
            CountDays.Value := cxDateEndEdit.Date - cxDateBegEdit.Date + 1
        else CountDays.Clear;
        UpdatePeriod;
    end
    else CountDays.Clear;
end;

function TfrmAddManInfo.CheckInfo: Boolean;
var
    Date1, Date2: TDateTime;
    Yr1, Yr2, Mth1, Mth2, Dy1, Dy2: Word;
begin
    CheckInfo := False;
    if VarIsNull(ManEdit.Value) then
    begin
        MessageDlg('�� ������ ������� �����!', mtError, [mbOk], 0);
        ManEdit.SetFocus;
        Exit;
    end;
    if VarIsNull(TypeStagEdit.Value) then
    begin
        MessageDlg('�� ������ ��� �����!', mtError, [mbOk], 0);
        TypeStagEdit.SetFocus;
        Exit;
    end;
    if VarIsNull(cxDateBegEdit.EditValue) then
    begin
        MessageDlg('�� ������� ���� ������� ������!', mtError, [mbOk], 0);
        cxDateBegEdit.SetFocus;
        Exit;
    end;
    if VarIsNull(cxDateEndEdit.EditValue) then
    begin
        MessageDlg('�� ������� ���� ���� ������!', mtError, [mbOk], 0);
        cxDateEndEdit.SetFocus;
        Exit;
    end;
    if VarIsNull(CountDays.Value) then
    begin
        MessageDlg('�� ������� ������� ��� �� �����!', mtError, [mbOk], 0);
        CountDays.ShowFocus;
        Exit;
    end;
    if (cxDateBegEdit.Date > cxDateEndEdit.Date) then
    begin
        MessageDlg('���� ������� ������ ����� ����� �� ���� ���������!', mtError, [mbOk], 0);
        cxDateBegEdit.SetFocus;
        Exit;
    end;
    Date1 := cxDateBegEdit.Date;
    Date2 := cxDateEndEdit.Date;
    DecodeDate(Date1, Yr1, Mth1, Dy1);
    DecodeDate(Date2, Yr2, Mth2, Dy2);
    if ((Mth1 <> Mth2) or (Yr1 <> Yr2)) then
    begin
        MessageDlg('������ ���� ������ ���� � ����� ������ �����!', mtError, [mbOk], 0);
        cxDateBegEdit.SetFocus;
        Exit;
    end;
    if ((Mth2 > YearMonthFromKodSetup(kod,False)) and (Yr2 >= YearMonthFromKodSetup(kod))) then
    begin
        MessageDlg('�������� ����� �� ���� ���� ������ �� ����� ��������� ���������!', mtError, [mbOk], 0);
        cxDateBegEdit.SetFocus;
        Exit;
    end;
    if (CountDays.Value > (cxDateEndEdit.Date - cxDateBegEdit.Date + 1)) then
    begin
        MessageDlg('ʳ������ ��� ����� �� ���� ������������ ������� ��� � �����!', mtError, [mbOk],0);
        CountDays.SetFocus;
        Exit;
    end;
    CheckInfo := True;
end;

procedure TfrmAddManInfo.UpdatePeriod;
var
    Date1, Date2: TDateTime;
    Yr1, Yr2, Mth1, Mth2, Dy1, Dy2: Word;
begin
    if (not VarIsNull(cxDateBegEdit.EditValue) and not VarIsNull(cxDateBegEdit.EditValue)) then
    begin
        Date1 := cxDateBegEdit.Date;
        Date2 := cxDateEndEdit.Date;
        DecodeDate(Date1, Yr1, Mth1, Dy1);
        DecodeDate(Date2, Yr2, Mth2, Dy2);
        if ((Mth1 = Mth2) and (Yr1 = Yr2)) then
        begin
            if Mth1 < 10 then
                cxPeriodText.Text := IntToStr(Yr1) + ' - ' + '0' + IntToStr(Mth1)
            else cxPeriodText.Text := IntToStr(Yr1) + ' - ' + IntToStr(Mth1)
        end
        else cxPeriodText.Text := '�� ���������';
    end;
end;

end.
