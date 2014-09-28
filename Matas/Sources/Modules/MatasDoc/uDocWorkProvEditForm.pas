{               "���� �������-������������ ���������, ��, ��� � ���"           }
{                        ������ ������ � �����������                           }
{                                                                              }
{               (c) ������� �.�. 2004-2007                                     }
{                                                                              }
unit uDocWorkProvEditForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, ibase, uSpMatSch, uPackageManager, GlobalSPR,
  FIBDatabase, pFIBDatabase, Grids, DBGrids, DB, uMatasVars, uMatasUtils, uResources,
  cxCheckBox, Kernel;

type
  TDocWorkProvEditForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CancelButton: TcxButton;
    OkButton: TcxButton;
    cxKolDoc: TcxCurrencyEdit;
    cxKolMat: TcxCurrencyEdit;
    cxSumma: TcxCurrencyEdit;
    cxPrice: TcxCurrencyEdit;
    Label6: TLabel;
    cxNameDbSch: TcxButtonEdit;
    Label7: TLabel;
    Label8: TLabel;
    cxNameKrSch: TcxButtonEdit;
    cxName: TcxTextEdit;
    cxUnit: TcxTextEdit;
    Label9: TLabel;
    cxDbSmeta: TcxButtonEdit;
    Label10: TLabel;
    cxKRSmeta: TcxButtonEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxKRKEKV: TcxButtonEdit;
    Label15: TLabel;
    cxDBKEKV: TcxButtonEdit;
    Label16: TLabel;
    Label17: TLabel;
    cxDogEdit: TcxButtonEdit;
    cxCheckKr: TcxCheckBox;
    cxDbSchManage: TcxButton;
    cxKrSchManage: TcxButton;
    cxDBRazdel: TcxTextEdit;
    cxDBStatya: TcxTextEdit;
    cxKRStatya: TcxTextEdit;
    cxKRRazdel: TcxTextEdit;
    procedure OkButtonClick(Sender: TObject);
    procedure cxNameDBSchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxNameDbSchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxNameDbSchExit(Sender: TObject);
    procedure cxNameKrSchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxNameKrSchExit(Sender: TObject);
    procedure cxNameKrSchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxDbSmetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxKRSmetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDbSmetaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxKRSmetaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBKEKVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxKRKEKVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBKEKVPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxKRKEKVPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCheckKrPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDbSchManageClick(Sender: TObject);
    procedure cxKrSchManageClick(Sender: TObject);
  private
//
  public
   DBHANDLE : TISC_DB_HANDLE;
   DB_KOD_DOG, DB_ID_DOG: int64;
   KR_KOD_DOG, KR_ID_DOG: int64;
   DB_ID_SCH, KR_ID_SCH: integer;
   DB_ID_SM, DB_ID_RZ, DB_ID_ST, DB_ID_KEKV: integer;
   KR_ID_SM, KR_ID_RZ, KR_ID_ST, KR_ID_KEKV: integer;
   DB_NAME_SM, KR_NAME_SM, DB_NAME_RZ, KR_NAME_RZ, DB_NAME_ST, KR_NAME_ST, DB_NAME_KEKV, KR_NAME_KEKV: string;
   DB_KOD_SM, KR_KOD_SM, DB_KOD_RZ, KR_KOD_RZ, DB_KOD_ST, KR_KOD_ST, DB_KOD_KEKV, KR_KOD_KEKV: integer;
   IS_FACED: boolean;
   FACED_ID_PROV: int64;
  end;

var
  DocWorkProvEditForm: TDocWorkProvEditForm;

implementation

uses uDocWorkOstForm, uDocWorkForm, uDocWorkProv, uDocWorkMarks;
{$R *.dfm}

procedure TDocWorkProvEditForm.OkButtonClick(Sender: TObject);
var
 STRU:WIZARD_GET_PROV_INFO;
begin
 if (DB_ID_SCH>0) and (KR_ID_SCH>0) then
 begin
  if _CHECK_PROV_BY_MANAGER then
  begin
    // ��������� �������� ��������
    STRU.DBHANDLE:=DBHANDLE;
    STRU.ACTUAL_DATE:=_MATAS_PERIOD;
    STRU.MODE:=11;
    STRU.WIZARD_FORM_SH:=false;
    STRU.INFO_PANEL_SH:=true;
    STRU.NOT_DIF_BDG_FG:=not cxCheckKr.Checked;
    STRU.PROP_BUDG_NUM:=0;
    STRU.ID_LANGUAGE:=1;
    STRU.SCH_SET_FLAG:=0;
    STRU.CR_BY_DT:=0;
    STRU.ID_FORM_UCH:=0;
    STRU.ID_REG_UCH:=0;
    STRU.ID_SCH_IN:=KR_ID_SCH;
    STRU.AOWNER:=self;

    STRU.ID_OPER:=0;
    STRU.KR_ID_SCH:=KR_ID_SCH;
    STRU.KR_ID_SCH_KOD:='';
    STRU.KR_ID_SCH_TIT:='';

    STRU.DB_ID_SCH:=DB_ID_SCH;
    STRU.DB_ID_SCH_KOD:='';
    STRU.DB_ID_SCH_TIT:='';

    STRU.DB_ID_SMETA:=DB_ID_SM;
    STRU.DB_KOD_SMETA:=DB_KOD_SM;
    STRU.DB_TITLE_SMETA:='';

    STRU.DB_ID_RAZD:=DB_ID_RZ;
    STRU.DB_KOD_RAZD:=DB_KOD_RZ;
    STRU.DB_TITLE_RAZD:='';

    STRU.DB_ID_STAT:=DB_ID_ST;
    STRU.DB_KOD_STAT:=DB_KOD_ST;
    STRU.DB_TITLE_STAT:='';

    STRU.DB_ID_SM_GR:=0;
    STRU.DB_TITLE_SM_GR:='';

    STRU.DB_ID_KEKV:=DB_ID_KEKV;
    STRU.DB_KOD_KEKV:=DB_KOD_KEKV;
    STRU.DB_KEKV_TITLE:='';

    STRU.KR_ID_SMETA:=KR_ID_SM;
    STRU.KR_KOD_SMETA:=KR_KOD_SM;
    STRU.KR_TITLE_SMETA:='';

    STRU.KR_ID_RAZD:=KR_ID_RZ;
    STRU.KR_KOD_RAZD:=KR_KOD_RZ;
    STRU.KR_TITLE_RAZD:='';

    STRU.KR_ID_STAT:=KR_ID_ST;
    STRU.KR_KOD_STAT:=KR_KOD_ST;
    STRU.KR_TITLE_STAT:='';

    STRU.KR_ID_SM_GR:=0;
    STRU.KR_TITLE_SM_GR:='';

    STRU.KR_ID_KEKV:=KR_ID_KEKV;
    STRU.KR_KOD_KEKV:=KR_KOD_KEKV;
    STRU.KR_KEKV_TITLE:='';

    STRU.FACED_ID_DOC:=0;
    STRU.FACED_ID_PROV:=0;
    STRU.FACED_FLAG:=false;

{       FACED_FLAG       : Boolean;         // ���� (true=�������� ������ ��������� �� ������������ ��������, false=)
       FACED_ID_DOC     : Int64;           // ������������ ���������, �� �������� �������� ����� �������������� ���������
       FACED_ID_PROV    : Int64;           // ������������ ��������� �������� �� ������� ����� �������������� ���������
       FACED_CR_BY_DT   : Integer;         // ������� ���� �������� �� ������� ����� �������������� ���������
       FACED_PROV_SUMMA : Currency;        // ����� �������� �� ������� ����� �������������� ���������
       FACED_ID_DOG     : Int64;           // ������� �������� �� ������� ����� �������������� ���������
       FACED_KOD_DOG    : Int64 ;          // ��� ������� �������� �� ������� ����� �������������� ���������
       FACED_ID_MAN     : Int64;           // ��� ���� �������� �� ������� ����� �������������� ���������
       FACED_ID_PAYER   : Int64;           // ���������� �������� �� ������� ����� �������������� ���������
}

    STRU.DB_ANALIZE1:=0;           // ��������� ���������
    STRU.DB_ANALIZE2:=0;           // ��������� ���������
    STRU.DB_ANALIZE3:=0;           // ��������� ���������
    STRU.DB_ANALIZE4:=0;           // ��������� ���������
    STRU.DB_ANALIZE5:=0;           // ��������� ���������
    STRU.DB_ANALIZE6:=0;           // ��������� ���������
    STRU.DB_ANALIZE7:=0;           // ��������� ���������
    STRU.DB_ANALIZE8:=0;           // ��������� ���������
    STRU.DB_ANALIZE9:=0;           // ��������� ���������
    STRU.DB_ANALIZE10:=0;          // ��������� ���������

    STRU.KR_ANALIZE1:=0;           // ���������� ���������
    STRU.KR_ANALIZE2:=0;           // ���������� ���������
    STRU.KR_ANALIZE3:=0;           // ���������� ���������
    STRU.KR_ANALIZE4:=0;           // ���������� ���������
    STRU.KR_ANALIZE5:=0;           // ���������� ���������
    STRU.KR_ANALIZE6:=0;           // ���������� ���������
    STRU.KR_ANALIZE7:=0;           // ���������� ���������
    STRU.KR_ANALIZE8:=0;           // ���������� ���������
    STRU.KR_ANALIZE9:=0;           // ���������� ���������
    STRU.KR_ANALIZE10:=0;          // ���������� ���������
    if Kernel.WizardGetProvInfo(@STRU)=true then
    begin
     //������ �������� �� �������� �� ���������
     DB_ID_SCH:=STRU.DB_ID_SCH;
     DB_ID_SM:=STRU.DB_ID_SMETA;
     DB_ID_RZ:=STRU.DB_ID_RAZD;
     DB_ID_ST:=STRU.DB_ID_STAT;
     DB_ID_KEKV:=STRU.DB_ID_KEKV;
     DB_NAME_SM:=STRU.DB_TITLE_SMETA;
     KR_NAME_SM:=STRU.KR_TITLE_SMETA;
     DB_NAME_RZ:=STRU.DB_TITLE_RAZD;
     KR_NAME_RZ:=STRU.KR_TITLE_RAZD;
     DB_NAME_ST:=STRU.DB_TITLE_STAT;
     KR_NAME_ST:=STRU.KR_TITLE_STAT;
     DB_NAME_KEKV:=STRU.DB_KEKV_TITLE;
     KR_NAME_KEKV:=STRU.KR_KEKV_TITLE;
     DB_KOD_SM:=STRU.DB_KOD_SMETA;
     KR_KOD_SM:=STRU.KR_KOD_SMETA;
     DB_KOD_RZ:=STRU.DB_KOD_RAZD;
     KR_KOD_RZ:=STRU.KR_KOD_RAZD;
     DB_KOD_ST:=STRU.DB_KOD_STAT;
     KR_KOD_ST:=STRU.KR_KOD_STAT;
     DB_KOD_KEKV:=STRU.DB_KOD_KEKV;
     KR_KOD_KEKV:=STRU.KR_KOD_KEKV;
     cxNameDbSch.EditText:=STRU.DB_ID_SCH_KOD;
     cxNameKrSch.EditText:=STRU.KR_ID_SCH_KOD;
     cxDbSmeta.EditText:=IntToStr(STRU.DB_KOD_SMETA);
     cxDBRazdel.Text:=IntToStr(STRU.DB_KOD_RAZD);
     cxDBStatya.Text:=IntToStr(STRU.DB_KOD_STAT);
     cxDBKEKV.EditText:=IntToStr(STRU.DB_KOD_KEKV);
     cxKrSmeta.EditText:=IntToStr(STRU.KR_KOD_SMETA);
     cxKrRazdel.Text:=IntToStr(STRU.KR_KOD_RAZD);
     cxKrStatya.Text:=IntToStr(STRU.KR_KOD_STAT);
     cxKrKEKV.EditText:=IntToStr(STRU.KR_KOD_KEKV);
     ModalResult:=mrOk;
    end;
  end
  else
   ModalResult:=mrOk;
 end
 else
  ShowMessage('���������� ��������� ��� ����!');
end;

procedure TDocWorkProvEditForm.cxNameDBSchPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  Res : Variant;
begin
 Res:=GlobalSPR.GetSch(self,DBHandle, fsNormal, _MATAS_PERIOD, _ID_SCH_ROOT, -1, DB_ID_SCH);
 if VarArrayDimCount(Res)>0 then
 begin
   DB_ID_Sch := Res[0][0];
   cxNameDbSch.Text := VarToStr(RES[0][3]);
  end;
end;

procedure TDocWorkProvEditForm.cxNameDbSchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key=VK_RETURN then
  cxNameKrSch.SetFocus;
end;

procedure TDocWorkProvEditForm.cxNameDbSchExit(Sender: TObject);
begin
  if (Owner as TDocWorkProv).PubSchDataSet.Locate('SCH_NUMBER',cxNameDBSch.Text,[]) then
  begin
   DB_ID_SCH := (Owner as TDocWorkProv).PubSchDataSetID_SCH.Value;
   cxNameDbSch.Text := (Owner as TDocWorkProv).PubSchDataSetSCH_NUMBER.Value;
  end
  else
  begin
   ShowMessage('��������� ���� �� ������ � ����������� ������');
   DB_ID_SCH:=0;
  end;
end;

procedure TDocWorkProvEditForm.cxNameKrSchPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  Res : Variant;
begin
 Res:=GlobalSPR.GetSch(self,DBHandle, fsNormal, _MATAS_PERIOD, _ID_SCH_ROOT, -1, KR_ID_SCH);
 if VarArrayDimCount(Res)>0 then
 begin
   KR_ID_Sch := Res[0][0];
   cxNameKRSch.Text := VarToStr(RES[0][3]);
  end;
end;

procedure TDocWorkProvEditForm.cxNameKrSchExit(Sender: TObject);
begin
  if (Owner as TDocWorkProv).PubSchDataSet.Locate('SCH_NUMBER',cxNameKrSch.Text,[]) then
  begin
   KR_ID_SCH := (Owner as TDocWorkProv).PubSchDataSetID_SCH.Value;
   cxNameKrSch.Text := (Owner as TDocWorkProv).PubSchDataSetSCH_NUMBER.Value;
  end
  else
  begin
   ShowMessage('��������� ���� �� ������ � ����������� ������');
   KR_ID_SCH:=0;
  end;
end;

procedure TDocWorkProvEditForm.cxNameKrSchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key=VK_RETURN then
  OkButton.SetFocus;
end;

procedure TDocWorkProvEditForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_RETURN) and (Shift<>[ssCtrl])  then
  Key:=VK_TAB;
 if Key=VK_ESCAPE	then
  CancelButton.SetFocus;
 if (Key=VK_F10) or ((Key=VK_END) and (Shift=[ssCtrl])) then
  OkButton.SetFocus;
end;

procedure TDocWorkProvEditForm.FormCreate(Sender: TObject);
begin
  OkButton.Caption:=MAT_BUTTON_OK_CONST;
  CancelButton.Caption:=MAT_BUTTON_CANCEL_CONST;
  DB_ID_SCH:=0;
  cxNameDbSch.Text:='';
  KR_ID_SCH:=0;
  cxNameKrSch.Text:='';
  DB_ID_SM:=0;
  DB_ID_RZ:=0;
  DB_ID_ST:=0;
  DB_ID_KEKV:=0;
  KR_ID_SM:=0;
  KR_ID_RZ:=0;
  KR_ID_ST:=0;
  KR_ID_KEKV:=0;
  IS_FACED:=false;
  FACED_ID_PROV:=0;
end;

procedure TDocWorkProvEditForm.cxDbSmetaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key=VK_BACK) or (Key=VK_DELETE) then
 begin
  cxDBSmeta.Text:='';
  DB_ID_SM:=0;
  DB_NAME_SM:='';
  DB_KOD_SM:=0;
 end;

end;

procedure TDocWorkProvEditForm.cxKRSmetaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key=VK_BACK) or (Key=VK_DELETE) then
 begin
  cxKRSmeta.Text:='';
  KR_ID_SM:=0;
  KR_NAME_SM:='';
  KR_KOD_SM:=0;
 end;

end;

procedure TDocWorkProvEditForm.cxDbSmetaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id:variant;
begin
  id:=GlobalSPR.GetSmetsEx(self, DBHandle, _MATAS_PERIOD, psmRazdSt, DB_ID_SM, DB_ID_RZ, DB_ID_ST);
  if VarArrayDimCount(id)>0
  then begin
   if id[0]<>NULL
   then begin
    DB_ID_SM:=id[0];
    DB_ID_RZ:=id[1];
    DB_ID_ST:=id[2];
    DB_NAME_SM:=id[6];
    DB_NAME_RZ:=id[4];
    DB_NAME_ST:=id[5];
    DB_KOD_SM:=id[9];
    DB_KOD_RZ:=id[7];
    DB_KOD_ST:=id[8];
    cxDbSmeta.Text:=IntToStr(DB_KOD_SM);
    cxDBRazdel.Text:=IntToStr(DB_KOD_RZ);
    cxDBStatya.Text:=IntToStr(DB_KOD_ST);
    if (KR_ID_SM=0) or (not cxCheckKr.Checked) then
    begin
     KR_ID_SM:=id[0];
     KR_ID_RZ:=id[1];
     KR_ID_ST:=id[2];
     KR_NAME_SM:=id[6];
     KR_NAME_RZ:=id[4];
     KR_NAME_ST:=id[5];
     KR_KOD_SM:=id[9];
     KR_KOD_RZ:=id[7];
     KR_KOD_ST:=id[8];
     cxKRSmeta.Text:=IntToStr(KR_KOD_SM);
     cxKRRazdel.Text:=IntToStr(KR_KOD_RZ);
     cxKRStatya.Text:=IntToStr(KR_KOD_ST);
    end
  end;
 end;
end;

procedure TDocWorkProvEditForm.cxKRSmetaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id:variant;
begin
  id:=GlobalSPR.GetSmetsEx(self, DBHandle, _MATAS_PERIOD, psmRazdSt, KR_ID_SM, KR_ID_RZ, KR_ID_ST);
  if VarArrayDimCount(id)>0
  then begin
   if id[0]<>NULL
   then begin
    KR_ID_SM:=id[0];
    KR_ID_RZ:=id[1];
    KR_ID_ST:=id[2];
    KR_NAME_SM:=id[6];
    KR_NAME_RZ:=id[4];
    KR_NAME_ST:=id[5];
    KR_KOD_SM:=id[9];
    KR_KOD_RZ:=id[7];
    KR_KOD_ST:=id[8];
    cxKRSmeta.Text:=IntToStr(KR_KOD_SM);
    cxKRRazdel.Text:=IntToStr(KR_KOD_RZ);
    cxKRStatya.Text:=IntToStr(KR_KOD_ST);
    if (DB_ID_SM=0) then
    begin
     DB_ID_SM:=id[0];
     DB_ID_RZ:=id[1];
     DB_ID_ST:=id[2];
     DB_NAME_SM:=id[6];
     DB_NAME_RZ:=id[4];
     DB_NAME_ST:=id[5];
     DB_KOD_SM:=id[9];
     DB_KOD_RZ:=id[7];
     DB_KOD_ST:=id[8];
     cxDbSmeta.Text:=IntToStr(DB_KOD_SM);
     cxDBRazdel.Text:=IntToStr(DB_KOD_RZ);
     cxDBStatya.Text:=IntToStr(DB_KOD_ST);
    end;
  end;
 end;
end;

procedure TDocWorkProvEditForm.cxDBKEKVKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key=VK_BACK) or (Key=VK_DELETE) then
 begin
  cxDBKekv.Text:='';
  DB_ID_KEKV:=0;
  DB_NAME_KEKV:='';
  DB_KOD_KEKV:=0;
 end;
end;

procedure TDocWorkProvEditForm.cxKRKEKVKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key=VK_BACK) or (Key=VK_DELETE) then
 begin
  cxKRKekv.Text:='';
  KR_ID_KEKV:=0;
  KR_NAME_KEKV:='';
  KR_KOD_KEKV:=0;
 end;
end;

procedure TDocWorkProvEditForm.cxDBKEKVPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id:variant;
begin
 id:=GlobalSPR.GetKEKVSpr(self, DBHandle, fsNormal, Date, DEFAULT_ROOT_ID);
 if VarArrayDimCount(id)>0 then
 begin
  if id[0][0]<>NULL then begin
{           id[0][0]  - ������������� �����
           id[0][1]  - ������������ �����
           id[0][2]  - ��� �����
}
   DB_ID_KEKV:=id[0][0];
   DB_NAME_KEKV:=id[0][1];
   DB_KOD_KEKV:=id[0][2];
   cxDBKEKV.Text:=IntToStr(DB_KOD_KEKV);
   if (KR_ID_KEKV=0) or (not cxCheckKr.Checked) then begin
    KR_ID_KEKV:=id[0][0];
    KR_NAME_KEKV:=id[0][1];
    KR_KOD_KEKV:=id[0][2];
    cxKRKEKV.Text:=IntToStr(KR_KOD_KEKV);
   end
  end;
 end;
end;

procedure TDocWorkProvEditForm.cxKRKEKVPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id:variant;
begin
 id:=GlobalSPR.GetKEKVSpr(self, DBHandle, fsNormal, Date, DEFAULT_ROOT_ID);
 if VarArrayDimCount(id)>0 then
 begin
  if id[0][0]<>NULL then begin
{           id[0][0]  - ������������� �����
           id[0][1]  - ������������ �����
           id[0][2]  - ��� �����
}
   KR_ID_KEKV:=id[0][0];
   KR_NAME_KEKV:=id[0][1];
   KR_KOD_KEKV:=id[0][2];
   cxKRKEKV.Text:=IntToStr(KR_KOD_KEKV);
   if DB_ID_KEKV=0 then begin
    DB_ID_KEKV:=id[0][0];
    DB_NAME_KEKV:=id[0][1];
    DB_KOD_KEKV:=id[0][2];
    cxDBKEKV.Text:=IntToStr(DB_KOD_KEKV);
   end
  end;
 end;
end;

procedure TDocWorkProvEditForm.cxCheckKrPropertiesChange(Sender: TObject);
begin
 if cxCheckKr.Checked then
 begin
  cxKRSmeta.Enabled:=true;
  cxKRRazdel.Enabled:=true;
  cxKRStatya.Enabled:=true;
  cxKRKEKV.Enabled:=true;
 end;
end;

procedure TDocWorkProvEditForm.cxButton1Click(Sender: TObject);
begin

end;

{
{��������� ���������� ��� ������� ������ ���������� �� ��������
WIZARD_GET_PROV_INFO = record

       {�������� ��� ��������� �������
       DBHANDLE         : TISC_DB_HANDLE;  // պ��� ����������                           (������������ ��������)
       ACTUAL_DATE      : TDateTime;       // ������� ������ �������
                                           // (�� ��������� ������� ������ ������� �����)(������������ ��������)
       MODE             : Integer;         // ����� ���������������� �������(1,2,3,4)    (������������ ��������)
       WIZARD_FORM_SH   : Boolean;         // ����:���������� �� ����� ������������� � ����� ������ ������� (�� ��������� true)
       INFO_PANEL_SH    : Boolean;         // ����:���������� �� �������������� ������, �� ������� ������������ ��� ������ ������� (�� ��������� true)
       NOT_DIF_BDG_FG   : Boolean;         // ����:���������� ��������� �� ������� ��� ���������� � ��������� ����� (�� ��������� true)
       PROP_BUDG_NUM    : Integer;         // ����� �������� �� �������� ���� ����� �������� (���� 0 �� ���������� ��� �������)

       ID_LANGUAGE      : Integer;         // ���� ������� 0-�������(�� ���������), 1-����������
       SCH_SET_FLAG     : Integer;         // ����: ����� �� ������ ����������� 0-����������, 1- ���������
       CR_BY_DT         : Integer;         // ����: ����� ������ ��������� �������� 0-����������, 1-���������
       ID_FORM_UCH      : Integer;         // ������������ ������� �����
       ID_REG_UCH       : Integer;         // ������������ �������� �������������� �����
       ID_SCH_IN        : Int64;           // ������������ ������������ �����
       AOWNER           : TComponent;      // ��������� ��������� ��� ������� ����� ������(���������� ���������,����� WIZARD_FORM_SH=true)

       {�������� ��� ����������� ���������� �� ������
       ID_OPER          : Int64;           // ������������ ��������
       KR_ID_SCH        : Int64;           // ������������ ����������� �����
       KR_ID_SCH_KOD    : String;          // ��� ����������� �����
       KR_ID_SCH_TIT    : String;          // ������������ ����������� �����

       DB_ID_SCH        : Int64;           // ������������ ���������� �����
       DB_ID_SCH_KOD    : String;          // ��� ���������� �����
       DB_ID_SCH_TIT    : String;          // ������������ ���������� �����

       {�������� ��� ����������� ���������� �� ��������
       DB_ID_SMETA      : Int64;           // ������������� �����
       DB_KOD_SMETA     : Integer;         // ��� �����
       DB_TITLE_SMETA   : String;          // ������������ ����� (���+������������)

       DB_ID_RAZD       : Int64;           // ������������� �������
       DB_KOD_RAZD      : Integer;         // ��� �������
       DB_TITLE_RAZD    : String;          // ������������ ������� (���+������������)

       DB_ID_STAT       : Int64;           // ������������� ������
       DB_KOD_STAT      : Integer;         // ��� ������
       DB_TITLE_STAT    : String;          // ������������ ������ (���+������������)

       DB_ID_SM_GR      : Int64;           // ������������ ������ �����
       DB_KOD_SM_GR     : Integer;         // ��� ������ ����
       DB_TITLE_SM_GR   : String;          // ������������ ������ ����� (���+������������)

       DB_ID_KEKV       : Int64;           // ������������ ���� ������
       DB_KOD_KEKV      : Integer;         // ��� ���� ������
       DB_KEKV_TITLE    : String;          // ������������ ���� ������ (���+������������)

       KR_ID_SMETA      : Int64;           // ������������� �����
       KR_KOD_SMETA     : Integer;         // ��� �����
       KR_TITLE_SMETA   : String;          // ������������ ����� (���+������������)

       KR_ID_RAZD       : Int64;           // ������������� �������
       KR_KOD_RAZD      : Integer;         // ��� �������
       KR_TITLE_RAZD    : String;          // ������������ ������� (���+������������)

       KR_ID_STAT       : Int64;           // ������������� ������
       KR_KOD_STAT      : Integer;         // ��� ������
       KR_TITLE_STAT    : String;          // ������������ ������ (���+������������)

       KR_ID_SM_GR      : Int64;           // ������������ ������ �����
       KR_KOD_SM_GR     : Integer;         // ��� ������ ����
       KR_TITLE_SM_GR   : String;          // ������������ ������ ����� (���+������������)

       KR_ID_KEKV       : Int64;           // ������������ ���� ������
       KR_KOD_KEKV      : Integer;         // ��� ���� ������
       KR_KEKV_TITLE    : String;          // ������������ ���� ������ (���+������������)

       {�������� ��� ����������� ���������� �� ���������� ���������
       FACED_FLAG       : Boolean;         // ���� (true=�������� ������ ��������� �� ������������ ��������, false=)
       FACED_ID_DOC     : Int64;           // ������������ ���������, �� �������� �������� ����� �������������� ���������
       FACED_ID_PROV    : Int64;           // ������������ ��������� �������� �� ������� ����� �������������� ���������
       FACED_CR_BY_DT   : Integer;         // ������� ���� �������� �� ������� ����� �������������� ���������
       FACED_PROV_SUMMA : Currency;        // ����� �������� �� ������� ����� �������������� ���������
       FACED_ID_DOG     : Int64;           // ������� �������� �� ������� ����� �������������� ���������
       FACED_KOD_DOG    : Int64 ;          // ��� ������� �������� �� ������� ����� �������������� ���������
       FACED_ID_MAN     : Int64;           // ��� ���� �������� �� ������� ����� �������������� ���������
       FACED_ID_PAYER   : Int64;           // ���������� �������� �� ������� ����� �������������� ���������

       {���������� �� ��������� ������
       EXIST_DB_AN   : Boolean;            // ���� ������� ���������� ���� �� ������� ��������� �� ������
       EXIST_KR_AN   : Boolean;            // ���� ������� ���������� ���� �� ������� ��������� �� �������

       DB_ANALIZE1   : Integer;            // ��������� ���������
       DB_ANALIZE2   : Integer;            // ��������� ���������
       DB_ANALIZE3   : Integer;            // ��������� ���������
       DB_ANALIZE4   : Integer;            // ��������� ���������
       DB_ANALIZE5   : Integer;            // ��������� ���������
       DB_ANALIZE6   : Integer;            // ��������� ���������
       DB_ANALIZE7   : Integer;            // ��������� ���������
       DB_ANALIZE8   : Integer;            // ��������� ���������
       DB_ANALIZE9   : Integer;            // ��������� ���������
       DB_ANALIZE10  : Integer;            // ��������� ���������
       KR_ANALIZE1   : Integer;            // ���������� ���������
       KR_ANALIZE2   : Integer;            // ���������� ���������
       KR_ANALIZE3   : Integer;            // ���������� ���������
       KR_ANALIZE4   : Integer;            // ���������� ���������
       KR_ANALIZE5   : Integer;            // ���������� ���������
       KR_ANALIZE6   : Integer;            // ���������� ���������
       KR_ANALIZE7   : Integer;            // ���������� ���������
       KR_ANALIZE8   : Integer;            // ���������� ���������
       KR_ANALIZE9   : Integer;            // ���������� ���������
       KR_ANALIZE10  : Integer;            // ���������� ���������
end;
}

procedure TDocWorkProvEditForm.cxDbSchManageClick(Sender: TObject);
var
 STRU:WIZARD_GET_PROV_INFO;
 fu: integer;
begin
  if (Owner as TDocWorkProv).PubSchDataSet.Locate('SCH_NUMBER',cxNameDbSch.Text,[]) then
    fu := (Owner as TDocWorkProv).PubSchDataSetID_SYSTEM.Value
  else
    fu:=2;
  // ��������� �������� ��������
  STRU.DBHANDLE:=DBHANDLE;
  STRU.ACTUAL_DATE:=_MATAS_PERIOD;
  STRU.MODE:=21;
  STRU.WIZARD_FORM_SH:=true;
  STRU.INFO_PANEL_SH:=true;
  STRU.NOT_DIF_BDG_FG:=not cxCheckKr.Checked;
  STRU.PROP_BUDG_NUM:=0;
  STRU.ID_LANGUAGE:=1;
  STRU.SCH_SET_FLAG:=0;
  STRU.CR_BY_DT:=1;
  STRU.ID_FORM_UCH:=fu;
  STRU.ID_REG_UCH:=0;
  STRU.ID_SCH_IN:=DB_ID_SCH;
  STRU.AOWNER:=self;

  STRU.ID_OPER:=0;
  STRU.KR_ID_SCH:=KR_ID_SCH;
  STRU.KR_ID_SCH_KOD:='';
  STRU.KR_ID_SCH_TIT:='';

  STRU.DB_ID_SCH:=DB_ID_SCH;
  STRU.DB_ID_SCH_KOD:='';
  STRU.DB_ID_SCH_TIT:='';

  STRU.DB_ID_SMETA:=DB_ID_SM;
  STRU.DB_KOD_SMETA:=DB_KOD_SM;
  STRU.DB_TITLE_SMETA:='';

  STRU.DB_ID_RAZD:=DB_ID_RZ;
  STRU.DB_KOD_RAZD:=DB_KOD_RZ;
  STRU.DB_TITLE_RAZD:='';

  STRU.DB_ID_STAT:=DB_ID_ST;
  STRU.DB_KOD_STAT:=DB_KOD_ST;
  STRU.DB_TITLE_STAT:='';

  STRU.DB_ID_SM_GR:=0;
  STRU.DB_TITLE_SM_GR:='';

  STRU.DB_ID_KEKV:=DB_ID_KEKV;
  STRU.DB_KOD_KEKV:=DB_KOD_KEKV;
  STRU.DB_KEKV_TITLE:='';

  STRU.KR_ID_SMETA:=KR_ID_SM;
  STRU.KR_KOD_SMETA:=KR_KOD_SM;
  STRU.KR_TITLE_SMETA:='';

  STRU.KR_ID_RAZD:=KR_ID_RZ;
  STRU.KR_KOD_RAZD:=KR_KOD_RZ;
  STRU.KR_TITLE_RAZD:='';

  STRU.KR_ID_STAT:=KR_ID_ST;
  STRU.KR_KOD_STAT:=KR_KOD_ST;
  STRU.KR_TITLE_STAT:='';

  STRU.KR_ID_SM_GR:=0;
  STRU.KR_TITLE_SM_GR:='';

  STRU.KR_ID_KEKV:=KR_ID_KEKV;
  STRU.KR_KOD_KEKV:=KR_KOD_KEKV;
  STRU.KR_KEKV_TITLE:='';

  STRU.FACED_ID_DOC:=0;
  STRU.FACED_ID_PROV:=0;
  //STRU.FACED_FLAG:=IS_FACED;

  STRU.DB_ANALIZE1:=0;           // ��������� ���������
  STRU.DB_ANALIZE2:=0;           // ��������� ���������
  STRU.DB_ANALIZE3:=0;           // ��������� ���������
  STRU.DB_ANALIZE4:=0;           // ��������� ���������
  STRU.DB_ANALIZE5:=0;           // ��������� ���������
  STRU.DB_ANALIZE6:=0;           // ��������� ���������
  STRU.DB_ANALIZE7:=0;           // ��������� ���������
  STRU.DB_ANALIZE8:=0;           // ��������� ���������
  STRU.DB_ANALIZE9:=0;           // ��������� ���������
  STRU.DB_ANALIZE10:=0;          // ��������� ���������

  STRU.KR_ANALIZE1:=0;           // ���������� ���������
  STRU.KR_ANALIZE2:=0;           // ���������� ���������
  STRU.KR_ANALIZE3:=0;           // ���������� ���������
  STRU.KR_ANALIZE4:=0;           // ���������� ���������
  STRU.KR_ANALIZE5:=0;           // ���������� ���������
  STRU.KR_ANALIZE6:=0;           // ���������� ���������
  STRU.KR_ANALIZE7:=0;           // ���������� ���������
  STRU.KR_ANALIZE8:=0;           // ���������� ���������
  STRU.KR_ANALIZE9:=0;           // ���������� ���������
  STRU.KR_ANALIZE10:=0;          // ���������� ���������
  if Kernel.WizardGetProvInfo(@STRU)=true then
  begin
     //������ �������� �� �������� �� ���������
     DB_ID_SCH:=STRU.DB_ID_SCH;
     DB_ID_SM:=STRU.DB_ID_SMETA;
     DB_ID_RZ:=STRU.DB_ID_RAZD;
     DB_ID_ST:=STRU.DB_ID_STAT;
     DB_ID_KEKV:=STRU.DB_ID_KEKV;
     KR_ID_SCH:=STRU.KR_ID_SCH;
     KR_ID_SM:=STRU.KR_ID_SMETA;
     KR_ID_RZ:=STRU.KR_ID_RAZD;
     KR_ID_ST:=STRU.KR_ID_STAT;
     KR_ID_KEKV:=STRU.KR_ID_KEKV;
     DB_NAME_SM:=STRU.DB_TITLE_SMETA;
     KR_NAME_SM:=STRU.KR_TITLE_SMETA;
     DB_NAME_RZ:=STRU.DB_TITLE_RAZD;
     KR_NAME_RZ:=STRU.KR_TITLE_RAZD;
     DB_NAME_ST:=STRU.DB_TITLE_STAT;
     KR_NAME_ST:=STRU.KR_TITLE_STAT;
     DB_NAME_KEKV:=STRU.DB_KEKV_TITLE;
     KR_NAME_KEKV:=STRU.KR_KEKV_TITLE;
     DB_KOD_SM:=STRU.DB_KOD_SMETA;
     KR_KOD_SM:=STRU.KR_KOD_SMETA;
     DB_KOD_RZ:=STRU.DB_KOD_RAZD;
     KR_KOD_RZ:=STRU.KR_KOD_RAZD;
     DB_KOD_ST:=STRU.DB_KOD_STAT;
     KR_KOD_ST:=STRU.KR_KOD_STAT;
     DB_KOD_KEKV:=STRU.DB_KOD_KEKV;
     KR_KOD_KEKV:=STRU.KR_KOD_KEKV;
     cxNameDbSch.EditText:=STRU.DB_ID_SCH_KOD;
     cxNameKrSch.EditText:=STRU.KR_ID_SCH_KOD;
     cxDbSmeta.EditText:=IntToStr(STRU.DB_KOD_SMETA);
     cxDBRazdel.Text:=IntToStr(STRU.DB_KOD_RAZD);
     cxDBStatya.Text:=IntToStr(STRU.DB_KOD_STAT);
     cxDBKEKV.EditText:=IntToStr(STRU.DB_KOD_KEKV);
     cxKrSmeta.EditText:=IntToStr(STRU.KR_KOD_SMETA);
     cxKrRazdel.Text:=IntToStr(STRU.KR_KOD_RAZD);
     cxKrStatya.Text:=IntToStr(STRU.KR_KOD_STAT);
     cxKrKEKV.EditText:=IntToStr(STRU.KR_KOD_KEKV);
     IS_FACED:=STRU.FACED_FLAG;
     FACED_ID_PROV:=STRU.FACED_ID_PROV;
  end;
end;

procedure TDocWorkProvEditForm.cxKrSchManageClick(Sender: TObject);
var
 STRU:WIZARD_GET_PROV_INFO;
 fu: integer;
begin
    if (Owner as TDocWorkProv).PubSchDataSet.Locate('SCH_NUMBER',cxNameDbSch.Text,[]) then
      fu := (Owner as TDocWorkProv).PubSchDataSetID_SYSTEM.Value
    else
      fu:=2;
    // ��������� �������� ��������
    STRU.DBHANDLE:=DBHANDLE;
    STRU.ACTUAL_DATE:=_MATAS_PERIOD;
    STRU.MODE:=11;
    STRU.WIZARD_FORM_SH:=true;
    STRU.INFO_PANEL_SH:=true;
    STRU.NOT_DIF_BDG_FG:=not cxCheckKr.Checked;
    STRU.PROP_BUDG_NUM:=0;
    STRU.ID_LANGUAGE:=1;
    STRU.SCH_SET_FLAG:=0;
    STRU.CR_BY_DT:=0;
    STRU.ID_FORM_UCH:=fu;
    STRU.ID_REG_UCH:=0;
    STRU.ID_SCH_IN:=KR_ID_SCH;
    STRU.AOWNER:=self;

    STRU.ID_OPER:=0;
    STRU.KR_ID_SCH:=0;
    STRU.KR_ID_SCH_KOD:='';
    STRU.KR_ID_SCH_TIT:='';

    STRU.DB_ID_SCH:=DB_ID_SCH;
    STRU.DB_ID_SCH_KOD:='';
    STRU.DB_ID_SCH_TIT:='';

    STRU.DB_ID_SMETA:=DB_ID_SM;
    STRU.DB_KOD_SMETA:=DB_KOD_SM;
    STRU.DB_TITLE_SMETA:='';

    STRU.DB_ID_RAZD:=DB_ID_RZ;
    STRU.DB_KOD_RAZD:=DB_KOD_RZ;
    STRU.DB_TITLE_RAZD:='';

    STRU.DB_ID_STAT:=DB_ID_ST;
    STRU.DB_KOD_STAT:=DB_KOD_ST;
    STRU.DB_TITLE_STAT:='';

    STRU.DB_ID_SM_GR:=0;
    STRU.DB_TITLE_SM_GR:='';

    STRU.DB_ID_KEKV:=DB_ID_KEKV;
    STRU.DB_KOD_KEKV:=DB_KOD_KEKV;
    STRU.DB_KEKV_TITLE:='';

    STRU.KR_ID_SMETA:=KR_ID_SM;
    STRU.KR_KOD_SMETA:=KR_KOD_SM;
    STRU.KR_TITLE_SMETA:='';

    STRU.KR_ID_RAZD:=KR_ID_RZ;
    STRU.KR_KOD_RAZD:=KR_KOD_RZ;
    STRU.KR_TITLE_RAZD:='';

    STRU.KR_ID_STAT:=KR_ID_ST;
    STRU.KR_KOD_STAT:=KR_KOD_ST;
    STRU.KR_TITLE_STAT:='';

    STRU.KR_ID_SM_GR:=0;
    STRU.KR_TITLE_SM_GR:='';

    STRU.KR_ID_KEKV:=KR_ID_KEKV;
    STRU.KR_KOD_KEKV:=KR_KOD_KEKV;
    STRU.KR_KEKV_TITLE:='';

    STRU.FACED_ID_DOC:=0;
    STRU.FACED_ID_PROV:=0;
    STRU.FACED_FLAG:=IS_FACED;

    STRU.DB_ANALIZE1:=0;           // ��������� ���������
    STRU.DB_ANALIZE2:=0;           // ��������� ���������
    STRU.DB_ANALIZE3:=0;           // ��������� ���������
    STRU.DB_ANALIZE4:=0;           // ��������� ���������
    STRU.DB_ANALIZE5:=0;           // ��������� ���������
    STRU.DB_ANALIZE6:=0;           // ��������� ���������
    STRU.DB_ANALIZE7:=0;           // ��������� ���������
    STRU.DB_ANALIZE8:=0;           // ��������� ���������
    STRU.DB_ANALIZE9:=0;           // ��������� ���������
    STRU.DB_ANALIZE10:=0;          // ��������� ���������

    STRU.KR_ANALIZE1:=0;           // ���������� ���������
    STRU.KR_ANALIZE2:=0;           // ���������� ���������
    STRU.KR_ANALIZE3:=0;           // ���������� ���������
    STRU.KR_ANALIZE4:=0;           // ���������� ���������
    STRU.KR_ANALIZE5:=0;           // ���������� ���������
    STRU.KR_ANALIZE6:=0;           // ���������� ���������
    STRU.KR_ANALIZE7:=0;           // ���������� ���������
    STRU.KR_ANALIZE8:=0;           // ���������� ���������
    STRU.KR_ANALIZE9:=0;           // ���������� ���������
    STRU.KR_ANALIZE10:=0;          // ���������� ���������
    if Kernel.WizardGetProvInfo(@STRU)=true then
    begin
       //������ �������� �� �������� �� ���������
       DB_ID_SCH:=STRU.DB_ID_SCH;
       DB_ID_SM:=STRU.DB_ID_SMETA;
       DB_ID_RZ:=STRU.DB_ID_RAZD;
       DB_ID_ST:=STRU.DB_ID_STAT;
       DB_ID_KEKV:=STRU.DB_ID_KEKV;
       KR_ID_SCH:=STRU.KR_ID_SCH;
       KR_ID_SM:=STRU.KR_ID_SMETA;
       KR_ID_RZ:=STRU.KR_ID_RAZD;
       KR_ID_ST:=STRU.KR_ID_STAT;
       KR_ID_KEKV:=STRU.KR_ID_KEKV;
       DB_NAME_SM:=STRU.DB_TITLE_SMETA;
       KR_NAME_SM:=STRU.KR_TITLE_SMETA;
       DB_NAME_RZ:=STRU.DB_TITLE_RAZD;
       KR_NAME_RZ:=STRU.KR_TITLE_RAZD;
       DB_NAME_ST:=STRU.DB_TITLE_STAT;
       KR_NAME_ST:=STRU.KR_TITLE_STAT;
       DB_NAME_KEKV:=STRU.DB_KEKV_TITLE;
       KR_NAME_KEKV:=STRU.KR_KEKV_TITLE;
       DB_KOD_SM:=STRU.DB_KOD_SMETA;
       KR_KOD_SM:=STRU.KR_KOD_SMETA;
       DB_KOD_RZ:=STRU.DB_KOD_RAZD;
       KR_KOD_RZ:=STRU.KR_KOD_RAZD;
       DB_KOD_ST:=STRU.DB_KOD_STAT;
       KR_KOD_ST:=STRU.KR_KOD_STAT;
       DB_KOD_KEKV:=STRU.DB_KOD_KEKV;
       KR_KOD_KEKV:=STRU.KR_KOD_KEKV;
       cxNameDbSch.EditText:=STRU.DB_ID_SCH_KOD;
       cxNameKrSch.EditText:=STRU.KR_ID_SCH_KOD;
       cxDbSmeta.EditText:=IntToStr(STRU.DB_KOD_SMETA);
       cxDBRazdel.Text:=IntToStr(STRU.DB_KOD_RAZD);
       cxDBStatya.Text:=IntToStr(STRU.DB_KOD_STAT);
       cxDBKEKV.EditText:=IntToStr(STRU.DB_KOD_KEKV);
       cxKrSmeta.EditText:=IntToStr(STRU.KR_KOD_SMETA);
       cxKrRazdel.Text:=IntToStr(STRU.KR_KOD_RAZD);
       cxKrStatya.Text:=IntToStr(STRU.KR_KOD_STAT);
       cxKrKEKV.EditText:=IntToStr(STRU.KR_KOD_KEKV);
       IS_FACED:=STRU.FACED_FLAG;
       FACED_ID_PROV:=STRU.FACED_ID_PROV;
    end;
end;

end.
