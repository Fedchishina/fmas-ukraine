unit AddTextShablonUnit;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, ExtCtrls, Buttons, ActnList, PersonalCommon;

type
    TAddTextShablonForm = class(TForm)
        Panel1: TPanel;
        Label1: TLabel;
        Memo1: TMemo;
        Panel2: TPanel;
        Label2: TLabel;
        Memo2: TMemo;
        OkButton: TBitBtn;
        CancelButton: TBitBtn;
        ActionList: TActionList;
        OkAction: TAction;
        CancelAction: TAction;
        Panel3: TPanel;
        CheckBox1: TCheckBox;
        procedure FormShow(Sender: TObject);
        procedure OkActionExecute(Sender: TObject);
        procedure CancelActionExecute(Sender: TObject);
    private
    { Private declarations }
    public
        ID_TYPE: Integer;
    end;

var
    AddTextShablonForm: TAddTextShablonForm;

implementation

{$R *.dfm}

procedure TAddTextShablonForm.FormShow(Sender: TObject);
begin
    case ID_TYPE of
        1: begin
                Panel2.Visible := False;
                Caption := '������ ������ ������';
                Label1.Caption := '�����';
            end;

        2: begin
                Panel2.Visible := False;
                Caption := '������ ����������� ������ ������';
                Label1.Caption := '�����';
            end;
        3: begin
                Panel2.Visible := False;
                Caption := '�����, �� ��� �����';
                Label1.Caption := '�.�.�.';
            end;
        4: begin
                Panel2.Visible := False;
                Caption := '�����, �� ����������� � �������';
                Label1.Caption := '�.�.�.';
            end;
        5: begin
                Panel2.Visible := False;
                Caption := '�����, �� ������� �����';
                Label1.Caption := '�.�.�.';
            end;
        6: begin
                Caption := '�����, �� ������ ��������� ����� ������';
                Label1.Caption := '�.�.�.';
                Label2.Caption := '������';

                if NewOrders then begin
                    Panel3.Visible := True;
                    CheckBox1.Caption := '����������� �������� �� ����� ������';
                end;
            end;
        7: begin
                Panel2.Visible := False;
                Caption := '��������� �����';
                Label1.Caption := '�����';
            end;
        8: begin
                Panel2.Visible := False;
                Caption := '����� �� ������';
                Label1.Caption := '�����';
            end;
        9: begin
            //Panel2.Visible := False;
                if not NewOrders then
                    Caption := '��������� ������'
                else
                    Caption := '������ ������ �������';

                Label1.Caption := '�.�.�/�';
                Label2.Caption := '������';
            end;
        10: begin
                Panel2.Visible := False;
                Caption := '����� ������ ������';
                Label1.Caption := '�����';
            end;
        16: begin
                Panel2.Visible := False;
                Caption := '����� ������� �������';
                Label1.Caption := '�����';
            end;
        17: begin
                Panel2.Visible := False;
                Caption := '����� ����� ������';
                Label1.Caption := '�����';
            end;
        13, 14, 15: begin
                Caption := '³������/�����������/������������';
                Label1.Caption := '�.�.�.';
                Label2.Caption := '������';

                if NewOrders then begin
                    Panel3.Visible := True;
                    CheckBox1.Caption := '����������� �������� �� ����� ������';
                end;
            end;
    end;
end;

procedure TAddTextShablonForm.OkActionExecute(Sender: TObject);
begin
    if (Memo1.Text = '') and (Panel1.Visible)
        then begin
        MessageDlg('������� ��������� ���� "' + Label1.Caption + '"', mtError, [mbOk], 0);
        ModalResult := mrNone;
        Memo1.SetFocus;
        exit;
    end;

    if (Memo2.Text = '') and (Panel2.Visible)
        then begin
        MessageDlg('������� ��������� ���� "' + Label2.Caption + '"', mtError, [mbOk], 0);
        ModalResult := mrNone;
        Memo2.SetFocus;
        exit;
    end;
end;

procedure TAddTextShablonForm.CancelActionExecute(Sender: TObject);
begin
    Close;
end;

end.
