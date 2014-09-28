unit PDVTaxInvoces_Add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxLabel, cxControls, cxContainer, cxEdit,
  cxTextEdit, StdCtrls, cxButtons, ExtCtrls,Ibase,TiCommonProc,TICommonLoader,
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,TiMessages, TICommonDates, DateUtils;

type
  TPDVTaxInvocesAddForm = class(TForm)
    InsertPanel: TPanel;
    YesButton: TcxButton;
    cxButton2: TcxButton;
    KodRangeLabel: TcxLabel;
    NameRangeLabel: TcxLabel;
    PriceRangeLabel: TcxLabel;
    DataBegDateEdit: TcxDateEdit;
    DataEndDateEdit: TcxDateEdit;
    PercentPDVCurrencyEdit: TcxCurrencyEdit;
    procedure cxButton2Click(Sender: TObject);
    procedure YesButtonClick(Sender: TObject);
    procedure DataBegDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure DataEndDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure PercentPDVCurrencyEditKeyPress(Sender: TObject;
      var Key: Char);
  private
    PRes           : Variant;
    PDb_Handle     : TISC_DB_HANDLE;
  public
    constructor Create(AOwner:TComponent;Db_Handle:TISC_DB_HANDLE);reintroduce;
    property Res:Variant read PRes;
  end;

var
  PDVTaxInvocesAddForm: TPDVTaxInvocesAddForm;

implementation

{$R *.dfm}

constructor TPDVTaxInvocesAddForm.Create(AOwner:TComponent;Db_Handle:TISC_DB_HANDLE);
begin
  inherited Create(AOwner);
  PDb_Handle            := Db_Handle;
end;

procedure TPDVTaxInvocesAddForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TPDVTaxInvocesAddForm.YesButtonClick(Sender: TObject);
var
  databegIns         : TDate;
  dataEndIns         : TDate;
  kod_setupIns       : Integer;
  error_message      : string;
  flag_error         : Integer;
  flag_Ins           : Integer;
begin
  error_message := '';
  flag_error    := 0; // ���� ������  1 - ���� ������ 0 - ��� ������
  flag_Ins      := 1;   // ���� ������� 1 - ��������� 0 - �� ���������

  if(DataBegDateEdit.Date>DataEndDateEdit.Date)then
  begin
    TiShowMessage('�����!','���� ������� ������ ����� ���� ���� ������!', mtError, [mbYes]);
    DataBegDateEdit.SetFocus;
    Exit;
  end;

  kod_setupIns := ConvertDateToKod(DataBegDateEdit.Date);
  databegIns   := ConvertKodToDate(kod_setupIns);
  dataEndIns   := EncodeDate(YearOf(DataEndDateEdit.Date), MonthOf(DataEndDateEdit.Date), 1) + DaysInMonth(DataEndDateEdit.Date) - 1;

  if (databegIns <> DataBegDateEdit.Date) then
  begin
    error_message := '��������� ���� ������ �� ������� � �������� �����. ����������?';
    flag_error := 1 ;
  end;

  if (dataEndIns <> DataEndDateEdit.Date) then
  begin
   error_message := 'ʳ����� ���� ������ �� ������� � ����� �����. ����������?';
   flag_error := 1 ;
  end;

  if ((databegIns <> DataBegDateEdit.Date) and (dataEndIns <> DataEndDateEdit.Date)) then
  begin
    error_message := '��������� ���� ������ �� ������� � �������� �����. ʳ����� ���� ������ �� ������� � ����� �����. ����������?';
    flag_error := 1 ;
  end;

  if flag_error = 1 then
    if TiShowMessage('�����!',error_message, mtConfirmation, [mbYes, mbNo])=mrNo then flag_Ins := 0;

  if flag_Ins = 1 then ModalResult := mrOk;
end;

procedure TPDVTaxInvocesAddForm.DataBegDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then DataEndDateEdit.SetFocus;
end;

procedure TPDVTaxInvocesAddForm.DataEndDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then PercentPDVCurrencyEdit.SetFocus;
end;

procedure TPDVTaxInvocesAddForm.PercentPDVCurrencyEditKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then YesButton.SetFocus;
end;

end.
