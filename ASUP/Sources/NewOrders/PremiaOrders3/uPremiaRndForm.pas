unit uPremiaRndForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FIBDatabase, pFIBDatabase, uFormControl, ActnList, StdCtrls,
  Buttons, uInvisControl, uCharControl, uIntControl, uDateControl,
  uFControl, uLabeledFControl, uSpravControl, uCommonSp, qFTools, DB,
  FIBDataSet, pFIBDataSet, uSelectForm, DateUtils, dmPremiaOrder2,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxControls, cxContainer, cxEdit,
  cxLabel;

type
  TfmRndForm = class(TForm)
    OkButton: TBitBtn;
    KeyList: TActionList;
    OkAction: TAction;
    CancelAction: TAction;
    RndLabel: TcxLabel;
    RndComboBox: TcxComboBox;
    procedure CancelActionExecute(Sender: TObject);
    procedure OkActionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  fmRndForm: TfmRndForm;

implementation

{$R *.dfm}

procedure TfmRndForm.CancelActionExecute(Sender: TObject);
begin
    Close;
end;

procedure TfmRndForm.OkActionExecute(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TfmRndForm.FormShow(Sender: TObject);
begin
  RndComboBox.Properties.Items.Add('�� ������');
  RndComboBox.Properties.Items.Add('�� 10 ���.');
  RndComboBox.Properties.Items.Add('�� 100 ���.');
end;

initialization
  RegisterClass(TfmRndForm);

end.
