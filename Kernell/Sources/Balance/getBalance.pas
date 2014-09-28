unit getBalance;

interface

uses UBalance, USetFilter, Classes, IBase, Forms;

const
  btn_Add       = '������';
  btn_Edit      = '����������';
  btn_Del       = '��������';
  btn_Cancel    = '³������';
  btn_Ok        = '��������';
  btn_Exit      = '�����';
  btn_Print     = '���������';
  btn_CheckInSch= '���������';
  btnhint_CheckInSch      = '��������� ������ �� ��������� ��� �������';
  btnhint_DateChange      = '������ ���� ����������';

  page_Active             = '  �����  ';
  page_Passive            = '  �����  ';
  column_Name             = '�����';
  column_Code             = '��� �����';
  column_Order            = '��� ��� ����������';
  column_BegYear          = '�� ������� ����';
  column_EndPeriod        = '�� ����� �������� ������';
  column_BalanceName      = '����� �������';
  column_DKUD             = '����';
  column_KODU             = '����';
  column_RoundTo          = '��������� ��';
  column_CodeVydatkiv     = '��� ������ ������������ �������';

  rdbtn_frmlbycode        = '������� �� ������� �����';
  rdbtn_frmlbysch         = '������� �� ���������';
  rdbtn_frmlbysum         = 'ϳ������';
  checkbox_root           = '������� �������';
  checkbox_nosumm         = '�� ������������';

  frmCap_BalanceMain      = '������ ����������';
  frmCap_BalanceSetupAdd  = '��������� ����� �������';
  frmCap_BalanceSetupEdit = '����������� ����� �������';
  frmCap_AddBalance       = '��������� �������';
  frmCap_EditBalance      = '����������� �������';
  frmCap_Delete           = '���������';

  msg_Del                 = '�� ������ �������� �����';
  Lbl_NotIncludedSch      = '�������, ���� ���� �          ';

procedure get_Balance(AOwner:TComponent; DB_handler:TISC_DB_HANDLE; id_user:int64);stdcall;
exports get_Balance;

implementation

procedure get_Balance(AOwner:TComponent; DB_handler:TISC_DB_HANDLE; id_user:int64);
var
  FormFilter : TfrmSetFilter;
begin
    FormFilter:=  TfrmSetFilter.Create(AOwner);
    if FormFilter.ShowModal=6
    then TfrmBalance.Create(AOwner, DB_handler, FormFilter.PeriodDate, id_user);    
end;

end.
 