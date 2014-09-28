unit TiAccessForm;
                              
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxLookAndFeelPainters, cxLabel, StdCtrls, cxButtons, ExtCtrls,
  AccMGMT, Registry, TiMessages, ActnList, Buttons, TiCommonTypes,
  TiCommonProc, jpeg, RxGIF;

type
  TFAccess = class(TForm)
    ActionList: TActionList;
    ActionYes: TAction;
    Image5: TImage;
    Image4: TImage;
    UserEdit: TcxTextEdit;
    LoginEdit: TcxTextEdit;
    SpeedButton1: TSpeedButton;
    CloseSpeedButton: TSpeedButton;
    CancelBtn: TSpeedButton;
    YesBtn: TSpeedButton;
    ActionCancel: TAction;
    Image1: TImage;
    Label1: TLabel;
    procedure CancelBtnClick(Sender: TObject);
    procedure UserEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionYesExecute(Sender: TObject);
    procedure LoginEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SaveUserData(Sender:TObject);
    procedure CloseSpeedButtonClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ActionCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    AccessResult:TUser;
    countoftry:byte;
    pIsAlready:boolean;
  public
    constructor Create(AOwner:TComponent);override;
    Property Result:TUser read AccessResult;
    property IsAlready:Boolean read pIsAlready;
  end;

function ShowAccess(AOwner:TComponent):TUser;stdcall;
 exports ShowAccess;

implementation

{$R *.dfm}


function ShowAccess(AOwner:TComponent):TUser;stdcall;
var FormAccess:TFAccess;
    Res:TUser;
begin
 FormAccess:=TFAccess.Create(AOwner);
 Res.ID:=0;
 if (FormAccess.IsAlready) or (FormAccess.ShowModal=mrYes) then
    Res:=FormAccess.Result;
    
 FormAccess.Free;
 Result:=Res;
end;

constructor TFAccess.Create(AOwner:TComponent);
var reg: TRegistry;
begin
 inherited Create(AOwner);
 pIsAlready:=False;
 countoftry := 0;
 Caption := GetConst('Access','Form');
 YesBtn.Hint        := YesBtn.Caption;
 CancelBtn.Hint     := CancelBtn.Caption+' (Esc)';
 reg:=TRegistry.Create;
 try
  reg.RootKey:=HKEY_CURRENT_USER;
  if  reg.OpenKey('\Software\TaxInvoices\Login\',False) then
  begin
   UserEdit.Text:=reg.ReadString('Login');
  end ;
  //----!!
   if  reg.OpenKey('\Software\TaxInvoices\Pass\',False) then
  begin
   LoginEdit.Text:=reg.ReadString('Pass');
   ActionYesExecute(nil);
  end
   //----!!
 finally
  reg.Free;
 end;
end;

procedure TFAccess.CancelBtnClick(Sender: TObject);
begin
ModalResult:=mrNo;
end;

procedure TFAccess.UserEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_RETURN then LoginEdit.SetFocus;
end;

procedure TFAccess.ActionYesExecute(Sender: TObject);
var
  ResultInfo:TResultInfo;
Label GameOver;
begin
	inc(countoftry);
//******************************************************************************
// ����������� � �������� ������������
 try
   ResultInfo := fibInitConnection(UserEdit.Text,LoginEdit.Text);
   if ResultInfo.ErrorCode <> ACCMGMT_OK then		// ������
     begin
       TiShowMessage(GetConst('Caption','Error'),AcMgmtErrMsg(ResultInfo.ErrorCode),mtError,[mbOk]);
       LoginEdit.SetFocus;
     end
   else		// ��� ������
     begin
       AccessResult.Id:=GetUserId;
       AccessResult.Id_Card:=GetCurrentUserIDExt;
       AccessResult.Fio := GetUserFIO;
       AccessResult.Name:=UserEdit.Text;
       AccessResult.DB_Handle:=ResultInfo.DBHandle;
       AccessResult.DbPath := fibGetCurrentDBPath;
       pIsAlready:=True;
       SaveUserData(Sender);
       if fibCheckPermission('/ROOT/TaxInvoices','Belong')=0 then ModalResult:=mrYes
       else
       begin
         TiShowMessage('�������','�� �� ���� ���� �� ���� �� ���� �������',mtError,[mbOK]);
        try
          CloseConnection;
        except
         on e: Exception do
          MessageDlg('�������� ������� � ������ ������� : ' + e.Message, mtError,[mbOk],0);
        end;
         GoTo GameOver;
          //******************************************************************************
         GameOver:
         if (countoftry>=3) and (ModalResult<>mrYes) then Application.Terminate;
       end;
     end;
 except
 on e: Exception do
  begin
 	 MessageDlg('�������� ������� � ������ ������� : ' + e.Message, mtError,[mbOk],0);
   if CountOfTry>=3 then Application.Terminate
   else Exit;
  end;
 end;
//******************************************************************************
 if countoftry>=3 then Application.Terminate;

end;

procedure TFAccess.LoginEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_RETURN then ActionYesExecute(Sender);
end;

procedure TFAccess.FormCreate(Sender: TObject);
var Reg:TRegistry;
begin
 reg:=TRegistry.Create;
 try
  reg.RootKey:=HKEY_CURRENT_USER;
  if  reg.OpenKey('\Software\TaxInvoices\Login\',False) then
  begin
   UserEdit.Text:=reg.ReadString('Login');
   if reg.OpenKey('\Software\TaxInvoices\Login\PassWord',False) then
     begin
      LoginEdit.Text:=reg.ReadString('PassWord');
      if LoginEdit.Text<>'' then ActionYesExecute(Sender);
     end;
  end
 finally
  reg.Free;
 end;
end;

procedure TFAccess.SaveUserData(Sender:TObject);
var
 reg: TRegistry;
begin
 reg:=TRegistry.Create;
 try
  reg.RootKey:=HKEY_CURRENT_USER;
  if  reg.OpenKey('\Software\TaxInvoices\Login\',True) then
  begin
   reg.WriteString('Login',UserEdit.Text);
   if reg.OpenKey('\Software\TaxInvoices\Login\Password\',False) then
      reg.WriteString('Password',LoginEdit.Text);
  end
 finally
  reg.Free;
 end;
end;

procedure TFAccess.CloseSpeedButtonClick(Sender: TObject);
begin
Close;
end;

procedure TFAccess.SpeedButton1Click(Sender: TObject);
begin
ShowWindow(Application.Handle, SW_SHOWMINIMIZED);
end;

procedure TFAccess.ActionCancelExecute(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TFAccess.FormShow(Sender: TObject);
begin
  if  UserEdit.Text <> '' then
    LoginEdit.SetFocus;
end;

end.
