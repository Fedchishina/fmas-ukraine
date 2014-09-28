{******************************************************************************}
{               ������������������ ������� ���������� ����������               }
{                                                                              }
{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                      ����� "���������� ��������"                             }
{                 ������ �������� �������� ��������                            }
{                                               �������������: �������� �����  }
unit U_SP_Post_Del;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, U_DataModule;

type
  TF_SP_Raise_Del = class(TForm)
    DT_DateEnd: TDateTimePicker;
    SbCancel: TBitBtn;
    SbOk: TBitBtn;
    procedure SbOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Id_raise:integer;
    date_beg, date_end_old:TDate;
  end;

var
  F_SP_Raise_Del: TF_SP_Raise_Del;

implementation

{$R *.dfm}

procedure TF_SP_Raise_Del.SbOkClick(Sender: TObject);
begin

  if (DT_DateEnd.Date<date_beg) then
   begin
     MessageDlg('�� ������� ������� ����� �� '+DateToStr(date_beg+1),mtError,[mbYes],0);
     ModalResult := 0;
     Exit;
   end;

  if (DT_DateEnd.Date>date_end_old) then
   begin
     MessageDlg('�� ������� ������� ����� �� '+DateToStr(date_end_old),mtError,[mbYes],0);
     ModalResult := 0;
     Exit;
   end;

  DMod.FIBQuery.SQL.Text:='execute procedure sp_raise_d('+IntToStr(Id_raise)+', '''+DateToStr(date_end_old)+''','''+DateToStr(DT_DateEnd.Date)+''');';
  with DMod do
  try
     FIBWriteTransaction.StartTransaction;
     FIBQuery.ExecProc;
     FIBWriteTransaction.Commit;
  except on e: Exception do
  begin
    MessageDlg('�� ������� ������� �����: '+e.Message,mtError,[mbYes],0);
    FIBWriteTransaction.RollBack;
  end;
  end;
end;

procedure TF_SP_Raise_Del.FormCreate(Sender: TObject);
begin
  DT_DateEnd.Date:=Date;
end;

end.
