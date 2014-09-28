{               "���� �������-������������ ���������, ��, ��� � ���"           }
{                                                                              }
{               (c) ������� �.�. 2004-2007                                     }
{                                                                              }
unit uSpDogWork;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Forms, Controls,
  Dialogs, DogLoaderUnit, StdCtrls, ibase, FIBDatabase, pFIBDatabase,
  uMatasVars;

procedure ShowSpDog(AOwner:TComponent;
                    DBHANDLE : TISC_DB_HANDLE;
                    R_TR_HANDLE : TISC_DB_HANDLE;
                    W_TR_HANDLE : TISC_DB_HANDLE;
                    READ_TR     : TpFIBTransaction;
                    aFormStyle: TFormStyle;
                    aID_USER : INT64);stdcall;
exports ShowSpDog;

implementation

procedure ShowSpDog(AOwner:TComponent; DBHANDLE : TISC_DB_HANDLE; R_TR_HANDLE : TISC_DB_HANDLE; W_TR_HANDLE : TISC_DB_HANDLE; READ_TR: TpFIBTransaction; aFormStyle: TFormStyle; aID_USER : INT64);stdcall;
var
 ID_USER : Int64;
 input : TDogInput;
 dog_filter: TDogFilter;
 res   : TDogResult;
 s: string;
 i: integer;
begin
 ID_USER:=aID_USER;
 LoadSysData(READ_TR);
 input.Owner      := AOwner;
 input            := SYS_DEFAULT_DOG_INPUT;
 input.DBHandle   := DBHandle;
 input.ReadTrans  := R_TR_Handle;
 input.WriteTrans := W_TR_Handle;
 input.FormStyle  := aFormStyle;
 input.isZayav    := false;
 input.id_Group_add := _GROUP_DOG_ADD_COMMON;
 input.id_Group   := _GROUP_DOG_SEL_COMMON;
 input.Summa := 0.00;
 with dog_filter do
 begin
  bUseFilter :=true;      // �������� �� ������
  bShowFilterForm:=false; // ���������� �� ����� ���������� ��� �������� ���������
//  RegNum     : string;       // ������ �� ���. ������
  bRegNum    :=false;      // ��������� �� ������ �� ���. ������
//  SummaFrom  : currency;     // ������ �� �����
//  SummaTo    : currency;     // ������ �� �����
  bSumma     :=false;      // ��������� �� ������ �� �����
//  DateBeg    : TDate;        // ������ �� ����
//  DateEnd    : TDAte;        // ������ �� ����
  bDate      := false;      // ��������� �� ������ �� ����
//  DateBeg    := Date;        // ������ �� ����
//  DateEnd    := Date;        // ������ �� ����
  ShowClosed :=1;      // ���������� ��������
  NameCust   :='';       // ������ �� �������� �����������
  bNameCust  :=false;      // ��������� �� ������ �� �������� �����������
  id_cust    :=0;      // ������ �� �������������� �����������
  bID_Cust   :=false;      // ��������� �� ������ �� �������������� �����������
  NameTipDog :='';       // �������� �������� ���� ��������
  id_tip_dog :=0;      // ������ �� ���� ��������
  bTipdog    :=false;      // ��������� �� ������ �� ���� ��������
 end;
 SYS_ID_USER:=_CURRENT_USER_ID;
 input.filter:=dog_filter;
 res := ShowDogMain(input);
{ if res.ModalResult=mrOk then
 begin
  s:='SMETA:';
  for i:=0 to High(res.Smets) do
   s:=s+'['+IntToStr(res.Smets[i].NumSmeta)
       +'/'+IntToStr(res.Smets[i].NumRazd)
       +'/'+IntToStr(res.Smets[i].NumStat)+']='+
       FloatToStr(res.Smets[i].Summa)+'/'+FloatToStr(res.Smets[i].NSumma)+chr(13)+chr(10);

  ShowMessage('kod_dog='+VarToStr(res.kod_dog)+chr(13)+chr(10)+
              'id_dog='+VarToStr(res.id_dog)+chr(13)+chr(10)+
              'id_tip_dog='+VarToStr(res.id_tip_dog)+chr(13)+chr(10)+
              'name_tip_dog='+VarToStr(res.name_tip_dog)+chr(13)+chr(10)+
              'n_dog='+VarToStr(res.n_dog)+chr(13)+chr(10)+
              'd_dog='+VarToStr(res.d_dog)+chr(13)+chr(10)+
              'id_customer='+VarToStr(res.id_customer)+chr(13)+chr(10)+
              'name_customer='+VarToStr(res.name_customer)+chr(13)+chr(10)+
              'summa='+VarToStr(res.summa)+chr(13)+chr(10)+
              'dog_note='+VarToStr(res.dog_note)+chr(13)+chr(10)+s);
 end;
}
end;

{
TDogFilter = record         // ������������� ��� ����������
  bUseFilter : boolean;      // �������� �� ������
  bShowFilterForm : boolean; // ���������� �� ����� ���������� ��� �������� ���������
  RegNum     : string;       // ������ �� ���. ������
  bRegNum    : boolean;      // ��������� �� ������ �� ���. ������
  SummaFrom  : currency;     // ������ �� �����
  SummaTo    : currency;     // ������ �� �����
  bSumma     : boolean;      // ��������� �� ������ �� �����
  DateBeg    : TDate;        // ������ �� ����
  DateEnd    : TDAte;        // ������ �� ����
  bDate      : boolean;      // ��������� �� ������ �� ����
  ShowClosed : integer;      // ���������� ��������
  NameCust   : string;       // ������ �� �������� �����������
  bNameCust  : boolean;      // ��������� �� ������ �� �������� �����������
  id_cust    : integer;      // ������ �� �������������� �����������
  bID_Cust   : boolean;      // ��������� �� ������ �� �������������� �����������
  NameTipDog : string;       // �������� �������� ���� ��������
  id_tip_dog : integer;      // ������ �� ���� ��������
  bTipdog    : boolean;      // ��������� �� ������ �� ���� ��������
 end;

 TDogInput = record             // ������ ������������� ��� �������� �������� ����������
  Owner      : TComponent;      // ������������ �����
  DBHandle   : TISC_DB_HANDLE;  // ����� ��
  WriteTrans : TISC_TR_HANDLE;  // ����� ������� ����������
  ReadTrans  : TISC_TR_HANDLE;  // ����� �������� ����������
  FormStyle  : TFormStyle;      // ����� �����
  isZayav    : boolean;         // ���������� ����������� ��� ������ ������ � ������
  FormCaption : string;         // ��������� ����� ���������
  //--------------------------
  Summa       : Currency;       // ����� ������������ ��� ��������
  id_TypeDog  : integer;        // �� �������������
  id_Group    : integer;        // ID ������ ������� ������������ ������ ���������;
  id_Group_add: integer;        // ID ������ ������� ������������ ������ ������;
  id_Customer : integer;        // �� �������������
  MFO         : string;         // �� �������������
  RateAcc     : string;         // �� �������������
  DateSys     : TDate;          // �� �������������
  NumDoc      : string;         // �� �������������
  DateDoc     : TDate;          // �� �������������
  id_dog      : integer;        // �� �������������
  id_doc      : integer;        // ������������� ������� ������������ ��� ������� ����� ������ �� ALL_PROV
  lInfo       : TDogLocateInfo; // ������������� ��� ����������������
  filter      : TDogFilter;     // ������������� ��� ����������
  columns     : TDogColumns;    // ������� ������� ���������� ����������
 end;

 TDogLocateInfo = record // ���������� ��� ����������������
  summa : Variant; // �� �����
  name_customer : Variant; // �� �������� �����������
  rate_acc : Variant; // �� �/�
 end;

 TDogSmeta = record
  NumSmeta : integer;
  NumRazd  : integer;
  NumStat  : integer;
  NumKekv  : integer;
  id_people: integer;
  Summa    : currency;
  NSumma   : currency;
  tn       : string[20];
  kod_payer: string[20];
 end;

 TDogResult = record
  ModalResult     : integer;
  kod_dog         : Variant;
  id_dog          : Variant;
  id_tip_dog      : Variant;
  name_tip_dog    : Variant;
  n_dog           : Variant;
  d_dog           : Variant;
  nomn_dog        : Variant;
  nomd_dog        : Variant;
  id_customer     : Variant;
  name_customer   : Variant;
  id_rate_acc     : Variant;
  rate_acc        : Variant;
  mfo             : Variant;
  bank            : Variant;
  id_rate_acc_nat : Variant;
  date_beg        : Variant;
  date_end        : Variant;
  summa           : Variant;
  continue        : Variant;
  not_summa       : Variant;
  close           : Variant;
  dog_note        : Variant;
  fio_donnu       : Variant;
  fio_postav      : Variant;
  krit_date       : Variant;
  nds_sum         : Variant;
  nds_pay         : Variant;
  sum_fulfil      : Variant;
  sum_pay         : Variant;
  sum_today       : Variant;
  before_pay      : Variant;
  before_prcn     : Variant;
  regest_num      : Variant;
  comment         : Variant;
  name_shablon    : Variant;
  id_bl_account   : int64;
  Smets           : array of TDogSmeta;
  handle          : THandle;
 end;

}
end.
