
{-$Id: AddChangeManBonusUnit.pas,v 1.2 2007/01/30 15:48:52 oleg Exp $}
{******************************************************************************}
{               ������������������ ������� ���������� ����������               }

{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                       ������ "�������������� ��������� ��������"             }
{    ����������� �������� ���������� �� ��������� ��������                     }
{    �������������: ������ ��������                                            }

unit AddChangeManBonusUnit;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ComCtrls, StdCtrls, ExtCtrls, SpComboBox, Mask, CheckEditUnit,
    Buttons;

type
    TAddChangeManBonusForm = class(TForm)
        OkButton: TBitBtn;
        CancelButton: TBitBtn;
        GroupBox1: TGroupBox;
        Label4: TLabel;
        Label5: TLabel;
        Label6: TLabel;
        GroupBox2: TGroupBox;
        SumEdit: TCheckEdit;
        Label8: TLabel;
        NewDateBeg: TDateTimePicker;
        Label9: TLabel;
        NewDateEnd: TDateTimePicker;
        Label10: TLabel;
        RadioGroup1: TRadioGroup;
        Percent: TCheckEdit;
        Summa: TCheckEdit;
        Label7: TLabel;
        OldDateBeg: TLabel;
        OldDateEnd: TLabel;
        OldBonusName: TLabel;
        OldBonus: TLabel;
        VoplComboBox: TSpComboBox;
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    AddChangeManBonusForm: TAddChangeManBonusForm;

implementation

{$R *.dfm}

end.
