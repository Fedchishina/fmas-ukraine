unit AboutForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, MainDM, Placemnt;

type
  TFormAbout = class(TForm)
    ButtonOk: TButton;
    MemoInfo: TMemo;
    FormStorage1: TFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure ButtonOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TFormAbout.FormCreate(Sender: TObject);
begin
     MemoInfo.Lines.Add('�����: ' + scSystemName);
     MemoInfo.Lines.Add('----------------------------------------------------');
     MemoInfo.Lines.Add('���������� ���������: ' + scDevOrganization + #13#10);
     MemoInfo.Lines.Add('����������: ' + scDeveloper + #13#10);
     MemoInfo.Lines.Add('���� ������� �������: ' + scStartDate + #13#10);
     MemoInfo.Lines.Add('----------------------------------------------------');
     MemoInfo.Lines.Add('���� �����: ' + DMMain.KruAccessDB.DatabaseName + #13#10);
     MemoInfo.Lines.Add('����������: '+ DMMain.KruAccessDB.Params.Values['user_name']);
end;

procedure TFormAbout.ButtonOkClick(Sender: TObject);
begin
     ModalResult:=mrYes;
end;

procedure TFormAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//     Action := caFree;
end;

procedure TFormAbout.Button1Click(Sender: TObject);
begin
    ModalResult:=mrNo;
end;

end.
