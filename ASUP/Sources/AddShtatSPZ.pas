
{ -$Id: AddShtatSPZ.pas,v 1.2 2007/01/30 15:48:52 oleg Exp $}
{******************************************************************************}
{               ������������������ ������� ���������� ����������               }

{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{       ������ "���������� �������� ������� �������� ���������� �� ���"        }
{       ��������� ����� ������ ������ ������� �������� ����������,             }
{       ���������� �� ������� ���                                              }
{                                                  �������������: ���� ������  }

unit AddShtatSPZ;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, Mask, CheckEditUnit, SpComboBox, Buttons;

type
    TAddShtatSPZForm = class(TForm)
        OkButton: TBitBtn;
        CancelButton: TBitBtn;
        Label1: TLabel;
        Label2: TLabel;
        SPZBox: TSpComboBox;
        KolStavokEdit: TCheckEdit;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure OkButtonClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
    private
    { Private declarations }
    public
        KolStavok: Double;
    end;

var
    AddShtatSPZForm: TAddShtatSPZForm;

implementation

{$R *.DFM}

procedure TAddShtatSPZForm.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    SPZBox.SaveIntoRegistry;
    if FormStyle = fsMDIChild then Action := caFree;
end;

procedure TAddShtatSPZForm.OkButtonClick(Sender: TObject);
begin
    if SPZBox.GetId <= 0 then
    begin
        MessageDlg('������� ������� ���', mtWarning, [mbOk], 0);
        SPZBox.SetFocus;
        ModalResult := 0;
        Exit;
    end;
    try
        KolStavok := StrToFloat(KolStavokEdit.Text);
    except
        on EConvertError do
        begin
            MessageDlg('������ ������ ������� ������',
                mtWarning, [mbOk], 0);
            KolStavokEdit.SetFocus;
            ModalResult := 0;
            Exit;
        end;
    end;
end;

procedure TAddShtatSPZForm.FormCreate(Sender: TObject);
begin
    SPZBox.ItemIndex := -1;
end;

end.
