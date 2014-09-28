unit uPI_Constants;

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
const nAction_GetDataFromEDBO   :array[0..1] of string[30] = ('�������� ��� � ����', '�������� ������ �� ����');
const nAction_UpdDataFromEDBO   :array[0..1] of string[30] = ('������ ����� �� �������', '������ ������ �� �������');
const nAction_GetOrderTypeFromEDBO :array[0..1] of string[50] = ('����������� ���� ������ � ����', '������������� ���� �������� �� ����');

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
const nHint_GetDataFromEDBO         : array[0..1] of string[30] = ('�������� ��� � ����', '�������� ������ �� ����');
const nHint_UpdDataFromEDBO         :array[0..1] of string[30] = ('������ ����� �� �������', '������ ������ �� �������');

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
const nMsgErrorWithEDBO         :array[0..1] of string[50]  =('������� ��� ����� � ������� �����䳿 � ����', '������ ��� ������ � ������� �������������� � ����');
const nMsgErrorConnectEDBO      :array[0..1] of string[70]  =('�������� ������ ���������, �� ������� ���������� ��''''���� � ����', '���������� ������ ����������, �� ������� ���������� ����� � ����');

const nMsgEmptyOrdersEDBO       :array[0..1] of string[80]  =('³����� ���� ��� �������. �������� ��������� �������� ��� � ����!', '����������� ������ ��� �������. ������� ���������� �������� ������ �� ����!');

const nMsgSaveOrderInfo         :array[0..1] of string[50]  =('�������� ���������� �� �������', '��������� ���������� �� �������');

const nMsgError                 :array[0..1] of string[50]  =('������� �������!', '�������� ������!');

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
const nCol_IdOrder        :array[0..1] of string[30]  =('��� ������','��� �������');
const nCol_NumOrder       :array[0..1] of string[30]  =('����� ������', '����� �������');
const nCol_OrderType      :array[0..1] of string[30]  =('��� ������', '��� �������');
const nCol_DateOrder      :array[0..1] of string[30]  =('���� ������', '���� �������');
const nCol_Verification   :array[0..1] of string[30]  =('���� �����������', '��������� �����������');
const nCol_Status         :array[0..1] of string[30]  =('������', '������');
const nCol_VerificationType :array[0..1] of string[30]=('��� �����������', '��� �����������');
const nCol_DateChange     :array[0..1] of string[30]  =('���� �������� ����', '���� ���������� ���������');
const nCol_StudCount      :array[0..1] of string[30]  =('ʳ������ ��������', '���������� ���������');
const nCol_IsSyncWithDB   :array[0..1] of string[30]  =('�����������', '������������');
const nCol_AcademicYears  :array[0..1] of string[30]  =(' ����������� ����', '�������������� ����');
const nCol_IsActive		  :array[0..1] of string[30]  =('�������� ��', '�������� ���');


const nGroupBoxMova          :array[0..1] of string[10]  =('����',          '����');
const nGroupBoxColorShem     :array[0..1] of string[15]  =('���� �����',   '���� �����');
const nFIO                   :array[0..1] of string[10]  =('ϲ�',           '���');
const nFacul                 :array[0..1] of string[10]  =('���������',     '���������');
const nSpeciality            :array[0..1] of string[20]  =('������������', '�������������');
const nKurs                  :array[0..1] of string[10]  =('����',          '����');
const nFormEduc              :array[0..1] of string[20]  =('����� ��������','����� ��������');
const nKatEduc               :array[0..1] of string[20]  =('��������',     '���������');
const nSeason                :array[0..1] of string[20]  =('������� �������','������� ��������');
const nDateFrom              :array[0..1] of string[10]  =('�',             '�');
const nDateto                :array[0..1] of string[10]  =('��',            '��');

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
const nHelp               :array[0..1] of string[10] =('������',      '');
const nItemSpravochniki   :array[0..1] of string[15] =('��������',   '');
const nReports            :array[0..1] of string[15] =('�������','');

const ndxAbout       :array[0..1] of string[50] =('��� �������','� �������');
const ndxWhatsNew       :array[0..1] of string[50] =('�� ������','��� ������');

const ndxBtnDocType      :array[0..1] of string[50] =('���� ���������','���� ����������');
const ndxBtnOznDohod     :array[0..1] of string[50] =('������ ������','�������� �������');
const ndxBtnVidOper      :array[0..1] of string[50] =('���� ��������','���� ��������');
const ndxBtnPeople       :array[0..1] of string[50] =('������� �������� ���','���������� ���������� ���');
const ndxBtnFilial       :array[0..1] of string[50] =('Գ����','�������');

const ndxBtn1dfReports   :array[0..1] of string[50] =('��� �� ������ 1��','����� �� ����� 1��');
const ndxBtnPrepareDoc   :array[0..1] of string[50] =('ϳ�������� ���������','���������� ����������');

// �������� ����
const nFormPI_Caption             :array[0..1] of string[100] =('ϳ�������� ��������� �� ���������� �������������� ������� � ̳��������� ������',   '���������� ���������� � ������������ ������������������� ���������� � ������������ �������');
const nFormLogin_Caption           :array[0..1] of string[100] =('ϳ�������� ��������� �� ���������� �������������� ������� � ̳��������� ������',   '���������� ���������� � ������������ ������������������� ���������� � ������������ �������');
const nFormOptionInterfase_Caption :array[0..1] of string[20] =('��������� ����������', '��������� ����������');
const nFormOptionWork_Caption      :array[0..1] of string[20] =('����� ������',         '����� ������');
const nFormPtint_Caption           :array[0..1] of string[20] =('����',                 '������');
//const nOrdersType_MainForm_Caption : array[0..1] of string[30] = ('������� ���� ������','���������� ����� ��������');
//const nOrders_MainForm_Caption     : array[0..1] of string[30] = ('����� ������ � ����', '������ �������� �� ����');
const nFormAcademicYears		:array[0..1] of string [40] = ('������� ���������� ����', '���������� ������������� �����');

//const nFormImportStud		:array[0..1] of string [50] = ('������ ����� �� ������������ ���������', '������ ������ �� ����������� ���������');


implementation

end.
