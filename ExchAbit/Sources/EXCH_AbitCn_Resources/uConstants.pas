unit uConstants;

interface
                                                 {���}       {���}
const nLayoutLang  :array[0..1] of PAnsiChar =('00000422','00000419');

const nActiont_OK          :array[0..1] of string[5]  =('��',                  '��');
const nActiont_Cansel      :array[0..1] of string[10] =('³������',           '');

const nHintActiont_OK         :array[0..1] of string[5]  =('��',            '��');
const nHintActiont_Cansel     :array[0..1] of string[10] =('³������',     '');

const nMsgDlgOk           :array[0..1] of string[5]   =('���',          '');
const nMsgDlgCansel       :array[0..1] of string[10]  =('ͳ',           '');
const nMsgDlgYes          :array[0..1] of string[5]   =('���',          '');
const nMsgDlgNo           :array[0..1] of string[5]   =('ͳ',           '');
const nMsgDlgAbort        :array[0..1] of string[10]  =('³������',    '');
const nMsgDlgRetry        :array[0..1] of string[10]  =('���������',    '');
const nMsgDlgIgnore       :array[0..1] of string[15]  =('����������',   '');
const nMsgDlgAll          :array[0..1] of string[5]   =('���',          '');
const nMsgDlgHelp         :array[0..1] of string[10]  =('��������',     '');
const nMsgDlgNoToAll      :array[0..1] of string[15]  =('ͳ ��� ���',  '');
const nMsgDlgYesToAll     :array[0..1] of string[15]  =('��� ��� ���', '');


const nLabelLogin              :array[0..1] of string[10]  =('����',              '�����');
const nLabelPassword           :array[0..1] of string[10]  =('������',             '������');


const nFormLogin_Caption           :array[0..1] of string[25] =('��������� ��������',   '��������� ������������');
const nFormAbitCn_Caption          :array[0..1] of string[25] =('��������� ��������',   '��������� ������������');
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
const nActiont_Obnov       :array[0..1] of string[10] =('�������',             '��������');
const nAction_Exit         :array[0..1] of string[10] =('�����',               '�����');
const nActionAddCN         :array[0..1] of string[20] =('������ ������',      '�������� �������');
const nActionChangeCN      :array[0..1] of string[20] =('������ ������',     '�������� �������');
const nActionDelCN         :array[0..1] of string[20] =('�������� ������',    '������� �������');
const nActionChangeCN_Status    :array[0..1] of string[20] =('������ ������',    '�������� ������');
const nActiontPrint        :array[0..1] of string[10] =('����',                '������');

const nHintAction_Obnov       :array[0..1] of string[10] =('�������',       '��������');
const nHintAction_Exit        :array[0..1] of string[10] =('�����',         '�����');
const nHintAction_Add         :array[0..1] of string[10] =('������',        '��������');
const nHintAction_Change      :array[0..1] of string[10] =('������',       '��������');
const nHintAction_Del         :array[0..1] of string[10] =('��������',      '�������');
const nHintActiontPrint       :array[0..1] of string[10] =('����',          '������');
const nHintActionChangeCN_Status    :array[0..1] of string[40] =('������ ������ �������� �� ��������',    '�������� ������ �������� �� ��������');
const nHintActiontSign        :array[0..1] of string[10] =('ϳ�������',     '���������');
const nHintActiontUnsign      :array[0..1] of string[15] =('����� �����',  '����� �������');
const nHintActiontPriceCurrent     :array[0..1] of string[15] =('�����������',  '�����������');

const nStatBarObnov       :array[0..1] of string[20] =('F5 - ��������',  '');
const nStatBarExit        :array[0..1] of string[20] =('Esc - �����',    '');

const ncolFIO                    :array[0..1] of string[5]  =('ϲ�',               '���');
const ncolNOMER_DELA             :array[0..1] of string[15] =('� ������',          '� ����');
const ncolNAME_FAK        :array[0..1] of string[15]  =('���������',         '���������');
const ncolNAME_SPEC       :array[0..1] of string[15]  =('������������',     '�������������');
const ncolSHORT_NAME_CN_FORM_STUD:array[0..1] of string[15] =('����� ����.',    '����� ����.');
const ncolSHORT_NAME_CN_KAT_STUD :array[0..1] of string[20] =('���','���');
const ncolIS_LOCKED              :array[0..1] of string[15] =('��������',       '��������');

const ncxGroupBoxContracts   :array[0..1] of string[30]  =('���������',                         '���������');
const ncxGroupBoxFilter      :array[0..1] of string[15]  =('Գ����',                            '������');

const nLabelOnToday            :array[0..1] of string[15]  =('�� �������',                    '�� �������');
const nLabelOnAll           :array[0..1] of string[15]  =('��',                      '���');
const nLabelButtonFilter           :array[0..1] of string[15]  =('Գ���������',                      '�����������');
const nLabelTIN           :array[0..1] of string[20]  =('���������� �����',                      '��������� �����');
const LabelSpec           :array[0..1] of string[15]  =('������������',                      '�������������');
const nLabelFIO           :array[0..1] of string[15]  =('�������',                      '�������');

const nLabelBeg                :array[0..1] of string[5]   =('���.',                            '���.');
const nLabelEnd                :array[0..1] of string[5]   =('ʳ�.',                             '���.');

const ncolNUM_DOG                :array[0..1] of string[5]  =('�����',             '�����');
const ncolDATE_DOG               :array[0..1] of string[5]  =('����',              '����');
const ncolSUMMA                  :array[0..1] of string[5]  =('����',              '�����');

const nLabelNAME_DOG_STATUS    :array[0..1] of string[20]  =('������',                         '������');
const nLabelNAME_DOG_TYPE      :array[0..1] of string[20]  =('���',                            '���');
const nLabelMFO                :array[0..1] of string[20]  =('���',                            '���');
const nLabelFIO_PAYER          :array[0..1] of string[20]  =('�������',                        '����������');

const nMsgErrorTransaction:array[0..1] of string[50]  =('��������� ��������� �����!',
                                                       '���������� ��������� ������');
const nMsgTryAgain        :array[0..1] of string[20]  =('��������� �� ���.','���������� ���');
const nMsgOr              :array[0..1] of string[5]   =(' ��� ',' ��� ');
const nMsgBoxTitle        :array[0..1] of PAnsiChar   =('�����','��������');
const nMsgToAdmin         :array[0..1] of string[60]  =('���������, ���� �����, �� ������������',
                                                       '���������� � ��������������');
const nMsgDelContract     :array[0..1] of string[60]  =('�� ����� ������ �������� �������� ����� ���������',
                                                       '�� ������������� ������ ������� �������� ����� �����������');

const nMsgChangeCN_Status :array[0..1] of string[60]  =('�� ����� ������ ������ ������ �������� �� ��������',
                                                       '�� ������������� ������ �������� ������ �������� �� ��������');
const nActionLink           :array[0..1] of string[15]  =('��`�����',                      '�������');
const nActionPrikzObnov3           :array[0..1] of string[15]  =('����� 3 ��',                      '������ 3 ��');
const nActionPrikzObnov12           :array[0..1] of string[15]  =('����� 1,2,4 ��',                      '������ 1,2,4 ��');

const nMsgIsSigned     :array[0..1] of string[60]  =('��� �������� ��� �������!','���� �������� ��� ��������!');
const nMsgIsNotSigned     :array[0..1] of string[60]  =('��� �������� �� �� �������!','���� �������� ��� �� ��������!');
const nMsgIsActSigned     :array[0..1] of string[60]  =('K������� �������!','K������� ��������!');
const nMsgIsActNotSigned     :array[0..1] of string[60]  =('� ��������� ���� �����!','� ��������� ����� �������!');

const  nMsgNotHaveRights             :array[0..1] of String=('�� �� ���� ����������� ��� ��������� ���� 䳿!',
                                                            '� ��� ��� ���� ��� ������������� ������� ��������!');
const  nMsgGoToAdmin           :array[0..1] of String=('��������� �� ������������.','���������� � ��������������.');
const  nMsgActionDenied        :array[0..1] of String=('ĳ� ����������','�������� ���������');
const  nMsgEditDenied          :array[0..1] of String=('�� �� ���� ���� ���������� ��� ��������','�� �� ������ ���� ������������� ���� ��������');
const  nMsgUnadded             :array[0..1] of String=('�������� ��������� ������ ��������!','������� ���������� �������� ��������');
const  nMsgSignDeny            :array[0..1] of String=('�� �� ���� ���� �� ����� ��������� ��������!','�� �� ������ ���� �� ������� ���������� ������������');
const  nMsgUnSignDeny           :array[0..1] of String=('�� �� ���� ���� �� ������ ������ � ��������� ��������!','�� �� ������ ���� �� ������ ������� � ���������� ������������!');

const  nMsgDeny          :array[0..1] of String=('�� �� ���� ���� ���������� �� ��!','�� �� ������ ���� �� ��������� ����� ��������!');
implementation

end.
