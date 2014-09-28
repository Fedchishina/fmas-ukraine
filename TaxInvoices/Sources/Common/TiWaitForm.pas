unit TiWaitForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, ExtCtrls;

type TWaitFormType = (wfLoadPackage,wfLocateFunction,wfSelectData,wfPrepareData, wfImportData);

type
  TWaitForm = class(TForm)
    Panel: TPanel;
    Memo: TcxMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowWaitForm(AOwner: TForm;WaitFormType:TWaitFormType): TForm;
procedure CloseWaitForm(wf: TForm);

implementation

const wfLoadPackage_Const = '�������: ��� ����� �� �������� ������!';
const wfLocateFunction_Const = '�������: ��� ����� �������!';
const wfSelectData_Const = '�������: ��� ����� �����!';
const wfPrepareData_Const = '�������: ��� ��������� �����!';
const wfImportData_Const = '�������: ��� ������ �����!';

{$R *.dfm}

function ShowWaitForm(AOwner: TForm;WaitFormType:TWaitFormType): TForm;
var
 wf : TWaitForm;
begin
 wf := TWaitForm.Create(AOwner);
 case WaitFormType of
  wfLoadPackage: Wf.Memo.Lines.Text:=#13+wfLoadPackage_Const;
  wfLocateFunction: Wf.Memo.Lines.Text:=#13+wfLocateFunction_Const;
  wfSelectData: Wf.Memo.Lines.Text:=#13+wfSelectData_Const;
  wfPrepareData: Wf.Memo.Lines.Text:=#13+wfPrepareData_Const;
  wfImportData: Wf.Memo.Lines.Text:=#13+wfImportData_Const;
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
