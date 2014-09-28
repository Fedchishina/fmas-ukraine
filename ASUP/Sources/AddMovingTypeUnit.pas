{-$Id: AddMovingTypeUnit.pas,v 1.1.1.1 2005/07/07 10:35:05 oleg Exp $}
{******************************************************************************}
{               ������������������ ������� ���������� ����������               }

{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                       ������ "���������� ���� �����������"                   }
{    ��������� ��� ����������� � ���������� �����������                        }
{    �������������: ������ ��������                                            }

unit AddMovingTypeUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TAddMovingTypeForm = class(TForm)
    MovingTypeEdit: TEdit;
    OkButton: TBitBtn;
    CancelButton: TBitBtn;
    Label1: TLabel;
    Is_First: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OkButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
  FormType  : Integer; {0 - Add, 1 - Modify}
  ID_ACTION : Integer;
    { Public declarations }
  end;

var
  AddMovingTypeForm: TAddMovingTypeForm;

implementation

{$R *.DFM}

procedure TAddMovingTypeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FormStyle = fsMDIChild then Action := caFree;;
end;

procedure TAddMovingTypeForm.OkButtonClick(Sender: TObject);
begin
  if (MovingTypeEdit.Text = '')
  then begin
    MessageDlg('������ ����� ������ ���� ����������!', mtError, [mbOk], 0);
    ModalResult := mrNone;
  end;
end;

procedure TAddMovingTypeForm.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

end.
