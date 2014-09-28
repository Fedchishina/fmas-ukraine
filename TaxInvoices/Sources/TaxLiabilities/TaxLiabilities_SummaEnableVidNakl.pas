unit TaxLiabilities_SummaEnableVidNakl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxCheckBox, cxContainer, cxEdit, cxLabel,
  cxDBLabel, StdCtrls, cxButtons, cxControls, Ibase,cxGroupBox,TaxLiabilities_DM,
  cxTextEdit, cxDBEdit;

type
  TTaxLiabilitiesSummaEnableVidNaklForm = class(TForm)
    NameTaxLiabilitiesGroupBox: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    YesButton: TcxButton;
    CancelButton: TcxButton;
    SummaTaxable20CheckBox: TcxCheckBox;
    SummaPDVCheckBox: TcxCheckBox;
    SummaTaxableCheckBox: TcxCheckBox;
    SummaExemptCheckBox: TcxCheckBox;
    SummaExportCheckBox: TcxCheckBox;
    SummaEnableDBTextEdit: TcxDBTextEdit;
    procedure CancelButtonClick(Sender: TObject);
    procedure YesButtonClick(Sender: TObject);
  private
    PDb_Handle : TISC_DB_HANDLE;
  public
    constructor Create(AOwner:TComponent;Db_Handle:TISC_DB_HANDLE);reintroduce;
  end;

var
  TaxLiabilitiesSummaEnableVidNaklForm: TTaxLiabilitiesSummaEnableVidNaklForm;

implementation

{$R *.dfm}

constructor TTaxLiabilitiesSummaEnableVidNaklForm.Create(AOwner:TComponent;Db_Handle:TISC_DB_HANDLE);
begin
  inherited Create(AOwner);
  PDb_Handle := Db_Handle;
end;

procedure TTaxLiabilitiesSummaEnableVidNaklForm.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TTaxLiabilitiesSummaEnableVidNaklForm.YesButtonClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
