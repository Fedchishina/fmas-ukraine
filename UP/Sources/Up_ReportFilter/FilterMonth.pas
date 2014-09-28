unit FilterMonth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls,
  cxButtons, ComCtrls;

type
  TfrmFilterMonth = class(TForm)
    StatusBar1: TStatusBar;
    cxButtonEnter: TcxButton;
    cxButtonCancel: TcxButton;
    MonthComboBox: TcxComboBox;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxButtonEnterClick(Sender: TObject);
    procedure cxButtonCancelClick(Sender: TObject);
    procedure MonthComboBoxPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFilterMonth: TfrmFilterMonth;
  //Result:Variant;
  CurIndex:Integer;
  CurText:String;
implementation

{$R *.dfm}

procedure TfrmFilterMonth.FormShow(Sender: TObject);
begin
    MonthComboBox.Properties.Items.Add('ѳ����');
    MonthComboBox.Properties.Items.Add('�����');
    MonthComboBox.Properties.Items.Add('��������');
    MonthComboBox.Properties.Items.Add('������');
    MonthComboBox.Properties.Items.Add('�������');
    MonthComboBox.Properties.Items.Add('�������');
    MonthComboBox.Properties.Items.Add('������');
    MonthComboBox.Properties.Items.Add('�������');
    MonthComboBox.Properties.Items.Add('��������');
    MonthComboBox.Properties.Items.Add('�������');
    MonthComboBox.Properties.Items.Add('��������');
    MonthComboBox.Properties.Items.Add('�������');
    MonthComboBox.ItemIndex:=0;
    CurIndex:=0;
    CurText:='ѳ����';
end;

procedure TfrmFilterMonth.cxButtonEnterClick(Sender: TObject);
begin
   ModalResult:=mrOk;
end;

procedure TfrmFilterMonth.cxButtonCancelClick(Sender: TObject);
begin
    ModalResult:=mrCancel;
end;

procedure TfrmFilterMonth.MonthComboBoxPropertiesChange(Sender: TObject);
begin
    if MonthComboBox.ItemIndex=-1 then
    begin
       MonthComboBox.ItemIndex:=CurIndex;
       MonthComboBox.Properties.Items.ValueFromIndex[CurIndex];
    end
    else
    begin
       CurIndex:=MonthComboBox.ItemIndex;
       CurText:=MonthComboBox.Properties.Items.ValueFromIndex[CurIndex];
    end;
end;

end.
