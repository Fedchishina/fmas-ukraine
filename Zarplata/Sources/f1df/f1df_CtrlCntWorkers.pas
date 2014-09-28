unit f1df_CtrlCntWorkers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxLookAndFeelPainters, ExtCtrls, StdCtrls, cxButtons, cxLabel,
  zProc, Unit_zGlobal_Consts;

type
  TFEditCntWorkers = class(TForm)
    SpinEditCntShtat: TcxSpinEdit;
    SpinEditCntSovmest: TcxSpinEdit;
    LabelCntShtat: TcxLabel;
    YesBtn: TcxButton;
    Bevel1: TBevel;
    LabelCntSovmest: TcxLabel;
  private
    PLanguageIndex:Byte;
  public
    constructor Create(AOwner:TComponent);reintroduce;
  end;

procedure EditCntWorkers(AOwner:TComponent;var CntShtat:integer;var CntSovmest:integer);
implementation

{$R *.dfm}

procedure EditCntWorkers(AOwner:TComponent;var CntShtat:integer;var CntSovmest:integer);
var FormEdit:TFEditCntWorkers;
begin
 FormEdit := TFEditCntWorkers.Create(AOwner);
 FormEdit.SpinEditCntShtat.Value := CntShtat;
 FormEdit.SpinEditCntSovmest.Value := CntSovmest;
 FormEdit.ShowModal;
 CntShtat := FormEdit.SpinEditCntShtat.Value;
 CntSovmest := FormEdit.SpinEditCntSovmest.Value;
 FormEdit.Destroy;
end;

constructor TFEditCntWorkers.Create(AOwner:TComponent);
begin
 inherited Create(AOwner);
 PLanguageIndex := LanguageIndex;
 Caption := EditData_Caption[PLanguageIndex];
 YesBtn.Caption := YesBtn_Caption[PLanguageIndex];
 LabelCntShtat.Caption := LabelCntShtat_Caption[PLanguageIndex];
 LabelCntSovmest.Caption := LabelCntSovmest_Caption[PLanguageIndex];
end;

end.
