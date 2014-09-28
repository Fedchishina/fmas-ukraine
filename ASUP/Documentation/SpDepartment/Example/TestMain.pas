unit TestMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FIBDatabase, pFIBDatabase, DB, RxMemDS,
  Menus, ExtCtrls, uCommonSp, iniFiles;

type
  TTestForm = class(TForm)
    MainMenu1: TMainMenu;
    OpenSpravItem: TMenuItem;
    Panel1: TPanel;
    SelectOneButton: TButton;
    Label1: TLabel;
    OutMemo: TMemo;
    MultiSelect: TButton;
    Database: TpFIBDatabase;
    procedure OpenSpravItemClick(Sender: TObject);
    procedure SelectOneButtonClick(Sender: TObject);
    procedure MultiSelectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestForm: TTestForm;

implementation

{$R *.dfm}

procedure TTestForm.OpenSpravItemClick(Sender: TObject);
var
    sp: TSprav;
begin
        // ������� ����������
    sp := GetSprav('SpDepartment');
    if sp <> nil then
    begin
            // ��������� ������� ���������
        with sp.Input do
        begin
            Append;
                // ��������� ����� ���� ������
            FieldValues['DBHandle'] := Integer(Database.Handle);
                // MDI-����
            FieldValues['ShowStyle'] := 1;
                // ��� �������
            FieldValues['Select'] := 0;

                // � ���������� ���������� �������� ������������� 2612
            FieldValues['Root_Department'] := 2612;
                // ������� �� ������� ����
            FieldValues['Actual_Date'] := Date;
            Post;
        end;
    end;
        // ������ �������� ����������
    sp.Show;
end;

procedure TTestForm.SelectOneButtonClick(Sender: TObject);
var
    sp: TSprav;
begin
        // ������� ����������
    sp :=  GetSprav('SpDepartment');
    if sp <> nil then
    begin
            // ��������� ������� ���������
        with sp.Input do
        begin
            Append;
            FieldValues['DBHandle'] := Integer(Database.Handle);
                // ��������� �����
            FieldValues['ShowStyle'] := 0;
                // ��������� �������
            FieldValues['Select'] := 1;

            FieldValues['Root_Department'] := 2612;
            FieldValues['Actual_Date'] := Date;
            Post;
        end;
    end;
        // �������� ���������� � ���������������� ��������� (����� ������ ����.)
    sp.Show;
    if sp.Output = nil then
        ShowMessage('BUG: Output is NIL!!!')
    else
    if not sp.Output.IsEmpty then
        Label1.Caption := IntToStr(sp.Output['Id_Department']) + ' ' +
            sp.Output['Name_Short'];
    sp.Free;
end;

procedure TTestForm.MultiSelectClick(Sender: TObject);
var
    sp: TSprav;
begin
        // ������� ����������
    sp :=  GetSprav('SpDepartment');
    if sp <> nil then
    begin
            // ��������� ������� ���������
        with sp.Input do
        begin
            Append;
            FieldValues['DBHandle'] := Integer(Database.Handle);
                // ��������� �����
            FieldValues['ShowStyle'] := 0;
                // ������������� �����
            FieldValues['Select'] := 2;

            FieldValues['Root_Department'] := 2612;
            FieldValues['Actual_Date'] := Date;
            Post;
        end;
    end;

        // ������� ��������� �������������
    sp.Show;
    if sp.Output = nil then
        ShowMessage('Output is NIL!!!')
    else
    begin
        sp.Output.First;
        while not sp.Output.Eof do
        begin
            OutMemo.Lines.Add(sp.Output['Name_Full']);
            sp.Output.Next;
        end;
    end;
    sp.Free;
end;

procedure TTestForm.FormCreate(Sender: TObject);
var
	reg: TIniFile;
begin
		// ��������� ��������� ���� �� ini-�����
	reg := TIniFile.Create('.\test.ini');
    with Database do
    begin
        DatabaseName := reg.ReadString('Database','Path', '');
		DBParams.Clear;
		DBParams.Add('user_name=' +
    	reg.ReadString('Database','USER','SYSDBA'));
		DBParams.Add('password=' +
			reg.ReadString('Database','PASSWORD','masterkey'));
		DBParams.Add('lc_ctype=' +
			reg.ReadString('Database','CHARSET','WIN1251'));
        Connected := True;
    end;
end;

end.
