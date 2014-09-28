unit z_uWaitForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, ExtCtrls,
  zThread, Gauges;

type TzWaitFormType = (zwfLoadPackage,zwfLocateFunction,zwfSelectData,zwfPrepareData,zwfDeleteData,zwfDoFunction);

type
  TzWaitForm = class(TForm)
    Panel: TPanel;
    Memo: TcxMemo;
    Gauge1: TGauge;
  private
  public

  end;

function ShowWaitForm(AOwner: TForm;WaitFormType:TzWaitFormType): TForm;
procedure CloseWaitForm(wf: TForm);

implementation

const wfLoadPackage_Const = '�������: ��� ����� �� �������� ������!';
const wfLocateFunction_Const = '�������: ��� ����� �������!';
const wfSelectData_Const = '�������: ��� ����� �����!';
const wfPrepareData_Const = '�������: ��� ��������� �����!';
const wfDeleteData_Const = '�������: ��� ��������� �����!';
const wfDoFunction_Const = '�������: ��� ��������� ��������!';

{$R *.dfm}

function ShowWaitForm(AOwner: TForm;WaitFormType:TzWaitFormType): TForm;
var
 wf : TzWaitForm;
begin
 wf := TzWaitForm.Create(AOwner);
 case WaitFormType of
  zwfLoadPackage: Wf.Memo.Lines.Text:=#13+wfLoadPackage_Const;
  zwfLocateFunction: Wf.Memo.Lines.Text:=#13+wfLocateFunction_Const;
  zwfSelectData: Wf.Memo.Lines.Text:=#13+wfSelectData_Const;
  zwfPrepareData: Wf.Memo.Lines.Text:=#13+wfPrepareData_Const;
  zwfDoFunction: wf.Memo.Lines.Text:=#13+wfDoFunction_Const;
 end;
 Result         := wf;
 if AOwner <> nil then AOwner.Enabled := False;
 Result.Show;
 Result.Update;
end;

procedure CloseWaitForm(wf: TForm);
begin
 if wf.Owner <> nil then (wf.Owner as TForm).Enabled := True;
 wf.Free;
end;

end.
