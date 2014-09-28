unit uo_sp_type_potok_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  cxLookAndFeelPainters, ActnList, StdCtrls, cxButtons, cxMaskEdit,
  cxSpinEdit;

type
  Tfmuo_sp_type_potok_add = class(TForm)
    cxLabelName: TcxLabel;
    cxTextEditName: TcxTextEdit;
    cxLabelShortName: TcxLabel;
    cxTextEditShortName: TcxTextEdit;
    cxLabelKod: TcxLabel;
    cxSpinEditKod: TcxSpinEdit;
    cxLabelNPP: TcxLabel;
    cxSpinEditNPP: TcxSpinEdit;
    cxButtonOK: TcxButton;
    cxButtonCansel: TcxButton;
    ActionListKlassSpravEdit: TActionList;
    ActionOK: TAction;
    ActionCansel: TAction;
    procedure ActionOKExecute(Sender: TObject);
    procedure ActionCanselExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxSpinEditNPPKeyPress(Sender: TObject; var Key: Char);
    procedure cxSpinEditKodKeyPress(Sender: TObject; var Key: Char);
  private
           { Private declarations }
  public
    { Public declarations }
  end;

var
  fmuo_sp_type_potok_add: Tfmuo_sp_type_potok_add;

implementation

uses  uo_sp_type_potok_main;

{$R *.dfm}



procedure Tfmuo_sp_type_potok_add.ActionOKExecute(Sender: TObject);
begin

    if trim(cxTextEditName.Text)='' then
    begin
       ShowMessage('�������� �����!');
       cxTextEditName.SetFocus;
       exit;
    end;

    if trim(cxTextEditShortName.Text)='' then
    begin
        ShowMessage('�������� ������� �����!');
        cxTextEditShortName.SetFocus;
        exit;
    end;
    if trim(cxSpinEditKod.Value)='' then
    begin
        ShowMessage('�������� ���!');
        cxSpinEditKod.SetFocus;
        exit;
    end;

    if trim(cxSpinEditNPP.Value)='' then
    begin
        ShowMessage('�������� �����!');
        cxSpinEditNPP.SetFocus;
        exit;
    end;
   ModalResult := mrOk;
end;

procedure Tfmuo_sp_type_potok_add.ActionCanselExecute(Sender: TObject);
begin
   ModalResult:=mrCancel;
end;

procedure Tfmuo_sp_type_potok_add.FormCreate(Sender: TObject);
begin
    if Tfmuo_sp_type_potok_main(self.Owner).cap=0 then
        Caption:='������';
    if Tfmuo_sp_type_potok_main(self.Owner).cap=1 then
        Caption:='������';
    if Tfmuo_sp_type_potok_main(self.Owner).cap=2 then
        Caption:='��������';

    ActionOK.Caption     := '��������';
    ActionCansel.Caption := '³����';

    ActionOK.Hint        := '��������';
    ActionCansel.Hint    := '³����';

    cxLabelName.Caption  := '�����';
    cxLabelShortName.Caption :='������� �����';
    cxLabelKod.Caption   := '���';
    cxLabelNPP.Caption   := '�����';

end;

procedure Tfmuo_sp_type_potok_add.cxSpinEditNPPKeyPress(Sender: TObject;
  var Key: Char);
var
    x: Integer;
begin
    if not (key in ['0'..'9', #8]) then key := #0;
    x := Length(INTTOSTR(cxSpinEditNPP.Value))+1;
    if ( x>9)then  key := #0;
end;

procedure Tfmuo_sp_type_potok_add.cxSpinEditKodKeyPress(Sender: TObject;
  var Key: Char);
var
x : Integer;
begin
    if not (key in ['0'..'9',#8]) then key := #0;
    x := Length(IntToSTR(cxSpinEditKod.Value))+1;
    if (x>9)then key := #0;
end;

end.
