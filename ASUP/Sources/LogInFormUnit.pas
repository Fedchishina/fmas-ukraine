
{ -$Id: LogInFormUnit.pas,v 1.10 2009/10/27 15:31:23 mzagurskaya Exp $}
{******************************************************************************}
{               ������������������ ������� ���������� ����������               }

{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                    ������ "������������� ������������"                       }
{  ������ ����� � ������ ������������, ����� � �������� ������������� �������  }
{                                                  �������������: ���� ������  }

unit LogInFormUnit;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, Buttons, PersonalCommon, AccMGMT, DB, IBCustomDataSet, IBQuery,
    Registry, ExtCtrls, SysAdmin;

type
    TLogInForm = class(TForm)
        OkButton: TBitBtn;
        CancelButton: TBitBtn;
        Label1: TLabel;
        Label2: TLabel;
        LogInEdit: TEdit;
        PasswordEdit: TEdit;
        Timer1: TTimer;
        procedure OkButtonClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure Timer1Timer(Sender: TObject);
    private
    { Private declarations }
    public
        Count: Integer; // ���������� ������� �����
        AccResult: TResultInfo;
    end;

var
    LogInForm: TLogInForm;

implementation

{$R *.DFM}

procedure TLogInForm.FormCreate(Sender: TObject);
var
    reg: TRegistry;
    i: Integer;
begin
    AdminMode := False;
    Count := 0;
    reg := TRegistry.Create;

    try
        reg.RootKey := HKEY_CURRENT_USER;

        if reg.OpenKey('\Software\ASUP\LogIn\', False) then
        begin
            LogInEdit.Text := reg.ReadString('Login');
            try
                PasswordEdit.Text := reg.ReadString('Password');
            except
            end;
        end
    finally
        reg.Free;
    end;

    for i := 1 to ParamCount do
    begin
        if Pos('login:', ParamStr(i)) = 1 then
            LogInEdit.Text := Copy(ParamStr(i), Length('login:') + 1, 200);
        if Pos('password:', ParamStr(i)) = 1 then
            PasswordEdit.Text := Copy(ParamStr(i), Length('password:') + 1, 200);
    end;
end;

procedure TLogInForm.OkButtonClick(Sender: TObject);
var
    reg: TRegistry;
begin
 // ��������� ����� ������� �����


    // ������� ������� ����� � ������
    CurrentLogin := LoginEdit.Text;
    CurrentPassword := PasswordEdit.Text;

    reg := TRegistry.Create;

    try
        reg.RootKey := HKEY_CURRENT_USER;

        if reg.OpenKey('\Software\ASUP\LogIn\', True) then
        begin
            reg.WriteString('Login', CurrentLogin);
        end
    finally
        reg.Free;
    end;

    // ����������� � �������� ������������
    try
        AccResult := fibInitConnection(CurrentLogin, CurrentPassword);
    except on e: Exception do
        begin
            MessageDlg('�������� ������� � ������ ������� : ' +
                e.Message, mtError, [mbOk], 0);
            ModalResult := mrCancel;
            Exit;
        end;
    end;

    if AccResult.ErrorCode <> ACCMGMT_OK then // ������
    begin
   // ���������� ��������� �� ������
        MessageDlg(AcMgmtErrMsg(AccResult.ErrorCode), mtError, [mbOk], 0);

            // ���� 3 ���� �����������, �����
        if Count >= 3 then
            Application.Terminate
        else inc(Count);
        begin
            ModalResult := 0; // ����� ���� ����������� ���
            Exit;
        end;
    end
    else // ��� ������
    begin
        CurrentID_PCARD := fibGetCurrentUserInfo.UserIdExt; // ������� PCARD
        CurrentUserName := fibGetCurrentUserInfo.UserFullName + ' (' +
            fibGetCurrentUserInfo.UserName + ')';
   // �� ������ ������ ���� �����
        if CurrentID_PCARD = 0 then
        begin
            MessageDlg('������� � ������ �������!', mtError, [mbOk], 0);
            ModalResult := mrCancel;
            Exit;
        end;

   //���� � ������������ ��� ����� �� ���� �������, �������
        if fibCheckPermission('/ROOT/ASUP', 'Belong') <> 0 then
        begin
            MessageDlg('�� �� ���� ���� ������� �� ���� �������!', mtError, [mbOK], 0);
            Update;
            PasswordEdit.Text := '';
            ModalResult := mrCancel;
            Exit;
        end;

       // �������� ������ ������������

        if CheckAccess('/ROOT/Otdel_Kadrov', 'Belong') = 0 then Id_Otdel := 1;

        if CheckAccess('/ROOT/OTIZ', 'Belong') = 0 then Id_Otdel := 2;

        if CheckAccess('/ROOT/AdminGroup', 'Belong') = 0 then
            AdminMode := True
        else
            AdminMode := False;

         // ���������� ���������� ���������
        LoadKeyboardLayout('00000422', KLF_ACTIVATE or KLF_SUBSTITUTE_OK);
    end;
    ModalResult := mrOk;
end;

procedure TLogInForm.FormShow(Sender: TObject);
begin
    if LogInEdit.Text <> '' then PasswordEdit.SetFocus;
    if PasswordEdit.Text <> '' then Timer1.Enabled := True;
end;

procedure TLogInForm.Timer1Timer(Sender: TObject);
begin
    if PasswordEdit.Text <> '' then
        OkButtonClick(OkButton);
    Timer1.Enabled := False;
end;

end.
