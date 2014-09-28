unit uCS_Constants;

interface
                                                 {���}       {���}
const nLayoutLang  :array[0..1] of PAnsiChar =('00000422','00000419');

const nFormKlassSpravEdit_Add      :array[0..1] of string[15] =(' ������.',   '');
const nFormKlassSpravEdit_Change   :array[0..1] of string[15] =(' ������.',  '');
const nFormKlassSpravEdit_View     :array[0..1] of string[15] =(' ��������.', '');

const nCaptionFirstLevelPreim      :array[0..1] of string[30] =('  ������� �������',  '  ��������� �����������');
const nCaptionSecondLevelPreim     :array[0..1] of string[20] =('  ��������',           '  ������������');

const nAction_Add          :array[0..1] of string[10] =('������',              '��������');
const nAction_Change       :array[0..1] of string[10] =('������',             '��������');
const nAction_Del          :array[0..1] of string[10] =('��������',            '�������');
const nAction_Old          :array[0..1] of string[10] =('��������',           '����������');
const nAction_View         :array[0..1] of string[10] =('��������',            '��������');
const nActiont_Obnov       :array[0..1] of string[10] =('�������',             '��������');
const nAction_Vibrat       :array[0..1] of string[10] =('�������',             '�������');
const nActiont_Otmena      :array[0..1] of string[10] =('³������',           '��������');
const nAction_Exit         :array[0..1] of string[10] =('�����',               '�����');
const nActiont_OK          :array[0..1] of string[5]  =('��',                  '��');
const nActiont_Cansel      :array[0..1] of string[10] =('³������',           '');
const nActionCalc          :array[0..1] of string[10] =('ϳ��������',          '�������');
const nActionCalcDeleteRec :array[0..1] of string[15] =('�������� �����',      '������� ������');
const nActionAddCN         :array[0..1] of string[20] =('������ ������',      '�������� �������');
const nActionChangeCN      :array[0..1] of string[20] =('������ ������',     '');
const nActionDelCN         :array[0..1] of string[20] =('�������� ������',    '');
const nActionDelAbit       :array[0..1] of string[20] =('�������� ������','');
const nActionSave          :array[0..1] of string[20] =('��������',            '���������');
const nActionExit          :array[0..1] of string[20] =('�����',               '');
const nActiontPrint        :array[0..1] of string[10] =('����',                '������');
const nAction_Edit              :array[0..1] of string[15] =('����������',        '�������������');
const nActionFiltr              :array[0..1] of string[15] =('Գ���������',       '�����������');
const nActionMakeOld            :array[0..1] of string[15] =('��������',         '����������');

const nHintAction_Add         :array[0..1] of string[10] =('������',        '��������');
const nHintAction_Change      :array[0..1] of string[10] =('������',       '��������');
const nHintAction_Del         :array[0..1] of string[10] =('��������',      '�������');
const nHintAction_Old         :array[0..1] of string[40] =('������� ����� ���������',      '������� ������ ����������');
const nHintAction_View        :array[0..1] of string[10] =('��������',      '��������');
const nHintAction_Obnov       :array[0..1] of string[10] =('�������',       '��������');
const nHintAction_Vibrat      :array[0..1] of string[10] =('�������',       '�������');
const nHintAction_Otmena      :array[0..1] of string[10] =('³������',     '��������');
const nHintAction_Exit        :array[0..1] of string[10] =('�����',         '�����');
const nHintActiont_OK         :array[0..1] of string[5]  =('��',            '��');
const nHintActiont_Cansel     :array[0..1] of string[10] =('³������',     '��������');
const nHintActionCalc         :array[0..1] of string[10] =('ϳ��������',    '�������');
const nHintActionCalcDeleteRec:array[0..1] of string[15] =('�������� �����','������� ������');
const nHintActionSave         :array[0..1] of string[20] =('��������',      '���������');
const nHintActiontPrint       :array[0..1] of string[10] =('����',          '������');

const nHintActionFiltrOK            :array[0..1] of string[20] =('Գ���������',                            '�����������');
const nHintAction_Edit              :array[0..1] of string[15] =('����������',        '�������������');
const nHintActionFiltr              :array[0..1] of string[15] =('Գ���������',       '�����������');

const nStatBarAdd                   :array[0..1] of string[20] =('Ins - ������',   '');
const nStatBarChange                :array[0..1] of string[20] =('F2 - ������',   '');
const nStatBarDel                   :array[0..1] of string[20] =('Del - ��������', '');
const nStatBarView                  :array[0..1] of string[20] =('F3 - ��������',  '');
const nStatBarVibrat                :array[0..1] of string[20] =('Enter - �������','');
const nStatBarObnov                 :array[0..1] of string[20] =('F5 - ��������',  '');
const nStatBarExit                  :array[0..1] of string[20] =('Esc - �����',    '');

const nPopMenuCountSerBal           :array[0..1] of string[15] =('ϳ���������',    '����������');
const nPopMenuClear                 :array[0..1] of string[15] =('��������',       '��������');


const nMsgToAdmin                   :array[0..1] of string[60]  =('���������, ���� �����, �� ������������',
                                                       '');
const nMsgTryAgain                  :array[0..1] of string[20]  =('��������� �� ���.','');
const nMsgOr                        :array[0..1] of string[5]   =(' ��� ','');
const nMsgBoxTitle                  :array[0..1] of PAnsiChar   =('�����','');
const nMsgOld                       :array[0..1] of string[60]  =('�� ����� ������ ������� ��� ����� ���������',
                                                       '');
const nMsgDel                       :array[0..1] of string[60]  =('�� ����� ������ �������� ��� �����',
                                                       '');
const nMsgCannotEdit                :array[0..1] of string[60]  =('�� �� ���� ��������� ���������� ��� �����',
                                                       '');
const nMsgERRORDel                  :array[0..1] of string[50]  =('��������� �������� �����!',
                                                       '');
const nMsgErrorTransaction          :array[0..1] of string[50]  =('��������� ��������� �����!',
                                                       '');


const nMsgEmptyName         :array[0..1] of string[20]  =('������ �����',            '');
const nMsgEmptyShortName    :array[0..1] of string[40]  =('������ ��������� �����',  '');
const nMsgEmptyKod          :array[0..1] of string[20]  =('������ ���',              '');
const nMsgZerroKod          :array[0..1] of string[40]  =('��� �� ���� ���� �������.','');
const nMsgThisKodExist      :array[0..1] of string[50]  =('����� ��� ��� ����! ������ �����.',             '');
const nMsgEmptyNpp          :array[0..1] of string[50]  =('������ ���������� �����', '');
const nMsgZerroNpp          :array[0..1] of string[50]  =('���������� ����� �� ���� ���� �������.',          '');
const nMsgThisNppExist      :array[0..1] of string[60]  =('����� ���������� ����� ��� ����! ������ �����.','');
const nMsgCannotDelSecLevel :array[0..1] of string[200] =('��������� �������� ������ �����.' +chr(13)+'������ ����� ������� ������ �� ����� ���� ���',
                                                          '');
const nMsgFreeNomer         :array[0..1] of string[60]  =('³����� �����:','��������� �����:');
const nMsgExistProfPredm    :array[0..1] of PAnsiChar   =('��������� �������� �����!'+CHR(13)+'�������� ������� ��������� ����� ������. �������'+CHR(13)+'���� �� ������� �������� �������� �����',
                                                          '���������� ������� ������!'+CHR(13)+'������� ����� ��������� ������ ������. �������!'+CHR(13)+'����� �� ������� ������� ������� ������');

const nMsgEmptyVinitPadeg :array[0..1] of string[40]  =('������ ��������� ������','');
const nMsgEmptyRoditPadeg :array[0..1] of string[40]  =('������ ������� ������',  '');
const nMsgEmptyDateBeg    :array[0..1] of string[40]  =('������ ���� �������',      '');
const nMsgEmptyDateEnd    :array[0..1] of string[40]  =('������ ���� ���������',   '');

const nMsgEmptyModuleName       :array[0..1] of string[50]  =('������ ����� ������',                     '');
const nMsgEmptyId               :array[0..1] of string[50]  =('������ �����������',                      '������� �����������');
const nMsgEmptyComponent        :array[0..1] of string[50]  =('������� ���������',                       '');
const nMsgEmptySELECT_STATEMENT :array[0..1] of string[50]  =('������ ����� �������',                    '');
const nMsgEmptyWHERE_STATEMENT  :array[0..1] of string[50]  =('������ ������� �������',                  '');
const nMsgSelectedBefore        :array[0..1] of string[40]  =('������� �����',                           '');
const nMsgEmptyDataAfterFiltr   :array[0..1] of string[90]  =('�� ����� �������� ���� �����!'+CHR(13)+'��������� ������ ����� �������',
                                                              '');
const nMsgCopyPlanNaboraCancel  :array[0..1] of string[50]  =('�� ��������','�� ����������');
const nMsgEmptyFields           :array[0..1] of string[40]  =('�� �� ���� ���������!','�� ��� ���� ���������!');


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


const nColName            :array[0..1] of string[10]  =('�����',        '');
const nColShortName       :array[0..1] of string[15]  =('������� �����','');
const nColFullName        :array[0..1] of string[15]  =('����� �����','������ ��������');
const nColKod             :array[0..1] of string[5]   =('���',          '');
const nColNpp             :array[0..1] of string[10]  =('��/�',         '��/�');
const ncolVINIT_PADEG     :array[0..1] of string[25]  =('��������� ������','����������� �����');
const ncolRODIT_PADEG     :array[0..1] of string[25]  =('������� ������',  '����������� �����');

const nGroupBoxMova          :array[0..1] of string[10]  =('����',       '����');
const nGroupBoxColorShem     :array[0..1] of string[15]  =('���� �����','���� �����');

const ncxGroupBoxDataFoFiltr :array[0..1] of string[70]  =('���� ��� �������� ������ ��� ������������',            '');

const ncxRadioButtonUkr    :array[0..1] of string[15]  =('���������',            '');
const ncxRadioButtonRus    :array[0..1] of string[15]  =('��������',             '');
const ncxRadioButtonYellow :array[0..1] of string[15]  =('�����',                 '');
const ncxRadioButtonBlue   :array[0..1] of string[15]  =('��������',              '');
const ncxRadioButtonAll    :array[0..1] of string[15]  =('��',                   '���');

const ncxLabelMustOverload :array[0..1] of string[40]  =('������� ���������������� ��������',  '');
const nLabelLogin              :array[0..1] of string[10]  =('����',              '�����');
const nLabelPassword           :array[0..1] of string[10]  =('������',             '������');

// �������� � ������� ���� �� ������� �����
const nItemWork           :array[0..1] of string[10] =('������',      '');
const nItemSpravochniki   :array[0..1] of string[15] =('��������',   '');
const nService            :array[0..1] of string[15] =('�����','');


const ndxBtnKont         :array[0..1] of string[50] =('����������','����������');
const ndxBtnOrderds      :array[0..1] of string[50] =('������','�������');
const ndxBtnReports      :array[0..1] of string[50] =('�������','����������');

const ndxBtnGrantSize    :array[0..1] of string[50] =('������ ��������','������� ���������');
const ndxBtnMinGrant     :array[0..1] of string[50] =('̳������� ��������','����������� ���������');
const ndxBtnGrantType    :array[0..1] of string[50] =('���� ��������','���� ���������');
const ndxBtnOrderType    :array[0..1] of string[50] =('���� ������','���� ��������');
const ndxBtnPeople       :array[0..1] of string[50] =('������� �������� ���','���������� ���������� ���');
const ndxBtnStreetType   :array[0..1] of string[50] =('���� ������','���� ����');

const ndxBtnOptionInterfase :array[0..1] of string[20] =('��������� ����������',        '');
const ndxBtnOptionWork      :array[0..1] of string[20] =('����� ������',         '����� ������');

// �������� ����
const nFormCS_Caption             :array[0..1] of string[20] =('���������� ��������',   '���������� ���������');
const nFormLogin_Caption           :array[0..1] of string[20] =('���������� ��������',   '���������� ���������');
const nFormOptionInterfase_Caption :array[0..1] of string[20] =('��������� ����������', '��������� ����������');
const nFormOptionWork_Caption      :array[0..1] of string[20] =('����� ������',         '����� ������');
const nFormPtint_Caption           :array[0..1] of string[20] =('����',                 '������');

implementation

end.
