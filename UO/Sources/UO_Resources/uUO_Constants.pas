unit uUO_Constants;

interface
                                                 {���}       {���}
const nLayoutLang  :array[0..1] of PAnsiChar =('00000422','00000419');

const nFormKlassSpravEdit_Add      :array[0..1] of string[15] =(' ������.',   '');
const nFormKlassSpravEdit_Change   :array[0..1] of string[15] =(' ������.',  '');
const nFormKlassSpravEdit_View     :array[0..1] of string[15] =(' ��������.', '');

const nCaptionFirstLevelPreim      :array[0..1] of string[30] =('  ������� �������',  '  ��������� �����������');
const nCaptionSecondLevelPreim     :array[0..1] of string[20] =('  ��������',           '  ������������');

const nCaptionFirstLevelPredm      :array[0..1] of string[30] =('  �������� ����������� �����',  '  �������� ����������� �����');
const nCaptionSecondLevelPredm     :array[0..1] of string[20] =('  �������� ��������',           '  �������� ���������');

const nCaptionFirstLevelNapr      :array[0..1] of string[50] =(' ������� ���������',  ' ��������� ����������');
const nCaptionSecondLevelNapr     :array[0..1] of string[30] =(' �������� ���������',   ' ����������� ����������');


const nAction_Add          :array[0..1] of string[10] =('������',              '��������');
const nAction_Change       :array[0..1] of string[10] =('������',             '');
const nAction_Del          :array[0..1] of string[10] =('��������',            '');
const nAction_View         :array[0..1] of string[10] =('��������',            '');
const nActiont_Obnov       :array[0..1] of string[10] =('�������',             '');
const nAction_Vibrat       :array[0..1] of string[10] =('�������',             '');
const nActiont_Otmena      :array[0..1] of string[10] =('³������',           '');
const nAction_Exit         :array[0..1] of string[10] =('�����',               '');
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
const nAction_ChangeEkzRasp:array[0..1] of string[20] =('������ ���� ���.',   '�������� ���� ���.');
const nAction_Del_PiV      :array[0..1] of string[40] =('�������� �������� � �������',
                                                        '������� ����������� �� ���������');
const nAction_Sklasti      :array[0..1] of string[10] =('�������',             '���������');
const nAction_DelVedom     :array[0..1] of string[20] =('�������� �������',            '');
const nActionSaveOcenka    :array[0..1] of string[15] =('�������� ������',     '���������');
const nAction_AddEkzRasp   :array[0..1] of string[20] =('������ ���� ���.',    '�������� ���� ���.');
const nActionPrintRecDoZarah    :array[0..1] of string[20] =('���. �� �����.',    '���. � ������.');
const nActionPrintPovidProZarah :array[0..1] of string[20] =('����. ��� �����.', '�����. ��� ������.');
const nActionChangeCN_Status    :array[0..1] of string[20] =('������ ������',    '�������� ������');
const nActionAddExistPr         :array[0..1] of string[30] =('������ �������� �����',    '�������� ������������ ������');
const nAction_ChangeRekvizit    :array[0..1] of string[20] =('������ ��������', '');
const nActionAbitShow           :array[0..1] of string[20] =('�������',        '����������');
const nAction_Edit              :array[0..1] of string[15] =('����������',        '�������������');
const nActionFiltr              :array[0..1] of string[15] =('Գ���������',       '�����������');
const nActionCopyPlanNabora     :array[0..1] of string[15] =('�������� ����',    '���������� ����');
const nActionMakeOld            :array[0..1] of string[15] =('��������',         '����������');


const nHintAction_Add         :array[0..1] of string[10] =('������',        '��������');
const nHintAction_Change      :array[0..1] of string[10] =('������',       '');
const nHintAction_Del         :array[0..1] of string[10] =('��������',      '');
const nHintAction_View        :array[0..1] of string[10] =('��������',      '');
const nHintAction_Obnov       :array[0..1] of string[10] =('�������',       '');
const nHintAction_Vibrat      :array[0..1] of string[10] =('�������',       '');
const nHintAction_Otmena      :array[0..1] of string[10] =('³������',     '');
const nHintAction_Exit        :array[0..1] of string[10] =('�����',         '');
const nHintActiont_OK         :array[0..1] of string[5]  =('��',            '��');
const nHintActiont_Cansel     :array[0..1] of string[10] =('³������',     '');
const nHintActionCalc         :array[0..1] of string[10] =('ϳ��������',    '�������');
const nHintActionCalcDeleteRec:array[0..1] of string[15] =('�������� �����','������� ������');
const nHintActionSave         :array[0..1] of string[20] =('��������',      '���������');
const nHintActiontPrint       :array[0..1] of string[10] =('����',          '������');
const nHintActionChangeEkzRasp:array[0..1] of string[25] =('������ ���� ������',     '�������� ���� ��������');
const nHintAction_Add_PiV     :array[0..1] of string[40] =('������ �������� � �������',
                                                           '�������� ����������� � ���������');
const nHintAction_SklastiVedom      :array[0..1] of string[20] =('������� �������',           '��������� ���������');
const nHintActionSaveVedom          :array[0..1] of string[20] =('�������� �������',          '��������� ���������');
const nHintAction_SklastiRecDoZarah :array[0..1] of string[25] =('������� ������������',        '��������� ������������');
const nHintActionSaveRecDoZarah     :array[0..1] of string[25] =('�������� ������������',       '��������� ������������');
const nHintActionPrintRecDoZarah    :array[0..1] of string[30] =('������������ �� �����������', '������������ � ����������');
const nHintActionPrintPovidProZarah :array[0..1] of string[30] =('����������� ��� �����������','��������� ��� ����������');
const nHintActionChangeCN_Status    :array[0..1] of string[40] =('������ ������ �������� �� ��������',    '�������� ������ �������� �� ��������');
const nHintAction_ChangeRekvizit    :array[0..1] of string[20] =('������ ��������', '');
const nHintActionAbitShowProtokol   :array[0..1] of string[40] =('�������� �������� � ��������',      '');
const nHintActionAbitShowPrikaz     :array[0..1] of string[40] =('�������� �������� � �������',        '');
const nHintActionFiltrOK            :array[0..1] of string[20] =('Գ���������',                            '�����������');
const nHintAction_Edit              :array[0..1] of string[15] =('����������',        '�������������');
const nHintActionFiltr              :array[0..1] of string[15] =('Գ���������',       '�����������');
const nHintActionCopyPlanNabora     :array[0..1] of string[25] =('�������� ���� ������','���������� ���� ������');
const nHintActionMakeOld            :array[0..1] of string[20] =('������� ���������',   '������� ����������');

const nStatBarAdd         :array[0..1] of string[20] =('Ins - ������',   '');
const nStatBarChange      :array[0..1] of string[20] =('F2 - ������',   '');
const nStatBarDel         :array[0..1] of string[20] =('Del - ��������', '');
const nStatBarView        :array[0..1] of string[20] =('F3 - ��������',  '');
const nStatBarVibrat      :array[0..1] of string[20] =('Enter - �������','');
const nStatBarObnov       :array[0..1] of string[20] =('F5 - ��������',  '');
const nStatBarExit        :array[0..1] of string[20] =('Esc - �����',    '');

const nPopMenuCountSerBal :array[0..1] of string[15] =('ϳ���������',    '����������');
const nPopMenuClear       :array[0..1] of string[15] =('��������',       '��������');


const nMsgToAdmin         :array[0..1] of string[60]  =('���������, ���������, �� ������������',
                                                       '');
const nMsgTryAgain        :array[0..1] of string[20]  =('��������� �� ���.','');
const nMsgOr              :array[0..1] of string[5]   =(' ��� ','');
const nMsgBoxTitle        :array[0..1] of PAnsiChar   =('�����','');
const nMsgDel             :array[0..1] of string[60]  =('�� ����� ������ �������� ��� �����',
                                                       '');
const nMsgDelAbit         :array[0..1] of string[60]  =('�� ����� ������ �������� ������ ����� ���������',
                                                       '');
const nMsgDelContract     :array[0..1] of string[60]  =('�� ����� ������ �������� �������� ����� ���������',
                                                       '');
const nMsgCannotEdit      :array[0..1] of string[60]  =('�� �� ���� ��������� ���������� ��� �����',
                                                       '');
const nMsgERRORDel        :array[0..1] of string[50]  =('��������� �������� �����!',
                                                       '');
const nMsgErrorTransaction:array[0..1] of string[50]  =('��������� ��������� �����!',
                                                       '');
const nMsgDelVedom        :array[0..1] of string[60]  =('�� ����� ������ �������� �� �������',
                                                       '');
const nMsgChangeCN_Status :array[0..1] of string[60]  =('�� ����� ������ ������ ������ �������� �� ��������',
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
const nMsgCannotDelProtZach :array[0..1] of string[200] =('��������� �������� ��������' +chr(13)+'������� �������� �� ������ � ����� ���������',
                                                          '');


const nMsgSrBalOn5System     :array[0..1] of string[80]  =('����� ������� ��� �� ���� ������������� '+CHR(13)+' �� �`��� ������ ������',    '����� ������� ���� �� ����� ����������� '+CHR(13)+' �� ���� ������� �������');
const nMsgOcenkaOn5System    :array[0..1] of string[80]  =('���� ������ �� ���� ������ '+CHR(13)+' �� �`��� ������ ������',   '����� ������ �� ����� ������ '+CHR(13)+' �� ���� ������� �������');
const nMsgSaveAbitWasOk      :array[0..1] of string[80]  =('��� ��������� ���� ������ ��������',   '������ ����������� ���� ������� ���������');
const nMsgSaveDataWasOk      :array[0..1] of string[80]  =('��� ���� ������ ��������',  '������ ���� ������� ���������');


const nMsgSaveAbitVedomOcenkaWasOk      :array[0..1] of string[80]  =('�� ������ ���� ������ ��������',   '��� ������ ���� ������� ���������');
const nMsgSaveRecDoZarah                :array[0..1] of string[80]  =('������������ �� ����������� ���� ������ ��������',   '������������ � ���������� ���� ������� ���������');
const nMsgSaveProtokolWasOk             :array[0..1] of string[80]  =('�������� ��� ������ ����������',     '�������� ��� ������� ��������');



const nMsgEmptyVinitPadeg :array[0..1] of string[40]  =('������ ��������� ������','');
const nMsgEmptyRoditPadeg :array[0..1] of string[40]  =('������ ������� ������',  '');
const nMsgEmptyDateBeg    :array[0..1] of string[40]  =('������ ���� �������',      '');
const nMsgEmptyDateEnd    :array[0..1] of string[40]  =('������ ���� ���������',   '');
const nMsgEmptySHIFR      :array[0..1] of string[15]  =('������ ����',              '');
const nMsgEmptyMinPerelikPrim  :array[0..1] of string[40]  =('������� ������� �������', '����� ������� ����������');
const nMsgEmptyNameSpec   :array[0..1] of string[40]  =('������� ������� ������������', '����� ������� �������������');
const nMsgEmptyNameStud   :array[0..1] of string[40]  =('������� ������� �.�. �����',   '����� ������� �.�. �������');
const nMsgEmptyNameObuchKateg   :array[0..1] of string[60]  =('������� ������� �������� ����� ��������', '����� ������� ��������� ����� ��������');
const nMsgEmptyLicenseValue     :array[0..1] of string[40]  =('������ ˳�������� ����',               '');
const nMsgEmptyLicenseDateEnd   :array[0..1] of string[50]  =('������ ���� ��������� ����糿',        '');
const nMsgEmptyCnFaculSpec      :array[0..1] of string[50]  =('������� ������� ������������',          '����� ������� �������������');
const nMsgEmptyNameCnKatStud    :array[0..1] of string[50]  =('������� ������� �������� ��������',     '');
const nMsgEmptyCnFormStud       :array[0..1] of string[50]  =('������� ������� ����� ��������',         '');
const nMsgEmptyGodNabora        :array[0..1] of string[50]  =('������� ���� ������ ��������',       '');
const nMsgEmptyDergZakaz        :array[0..1] of string[50]  =('������� �������� ����������/������',    '');
const nMsgEmptyKurs             :array[0..1] of string[50]  =('������� ���� ��������',                  '');
const nMsgEmptySrokOb           :array[0..1] of string[50]  =('������� ����� ��������',                 '');
const nMsgEmptyPlanValue        :array[0..1] of string[50]  =('������ �������� ����',                  '');
const nMsgEmptyTypeDoc          :array[0..1] of string[50]  =('������� ��� ��������� ��� �����',       '');
const nMsgEmptySeria            :array[0..1] of string[50]  =('������ ����',                           '');
const nMsgEmptyNomer            :array[0..1] of string[50]  =('������ �����',                           '');
const nMsgEmptyDATE_VIDACHI     :array[0..1] of string[50]  =('������� ���� ������',                    '');
const nMsgEmptyCannotDate       :array[0..1] of string[50]  =('���� �� ���� ���� ������',                '');
const nMsgEmptyTypeUchz         :array[0..1] of string[50]  =('������� ��� ����������� �������',        '');
const nMsgEmptyUCHZ             :array[0..1] of string[80]  =('�������  ��� ������ ������������ ����������� �������', '');
const nMsgEmptyAdressUchz       :array[0..1] of string[50]  =('������� ���� ������������ ����. ����.', '');
const nMsgEmptyCopyOrig         :array[0..1] of string[50]  =('������� ���� �� �������',              '');
const nMsgEmptyPredm            :array[0..1] of string[50]  =('������� �������',                        '');
const nMsgEmptyEKZ_FORM         :array[0..1] of string[50]  =('������� ������ ������������',           '');
const nMsgEmptyEKZFORM_PRB      :array[0..1] of string[50]  =('������� ����� ������ ������������',    '');
const nMsgDateBegMoreDateEnd    :array[0..1] of string[50]  =('���� ������� ����� ���� ���������',     '���� ������ ������ ���� ���������');
const nMsgCannotDelVerhLevel    :array[0..1] of string[75]  =('�� �� ���� ����� �������� �����,'+Chr(13)+' ���������� � ��� ���� �����',
                                                              '�� �� ������ ����� ������� �������,'+Chr(13)+' ���������� � ���� ������ ���������');
const nMsgEmptyEKZ_DATE         :array[0..1] of string[50]  =('������� ���� ������',                    '�������� ���� ��������');
const nMsgEmptyPerelik_EKZ      :array[0..1] of string[99]  =('�� ����� ����� ���� ��������'+Chr(13)+'������� ��������� ���� � �������� "������ ������"',
                                                              '�� ���� ������ ��� ��������'+Chr(13)+'����� ��������� ��� � ����������� "�������� ���������"');
const nMsgEmptyIN_LANG          :array[0..1] of string[25]  =('������� ����',                           '�������� ����');
const nMsgEmptyLEVEL_VLADEN     :array[0..1] of string[30]  =('������� ����� ��������',               '�������� ������� ��������');
const nMsgEmptyFIO              :array[0..1] of string[30]  =('������� ϲ�',                            '�������� ���');
const nMsgEmptyDOLJNOST         :array[0..1] of string[30]  =('������� ������',                         '�������� ���������');
const nMsgEmptyFOB_PROT         :array[0..1] of string[50]  =('������� ����� �������� ��� ���������',   '');

const nMsgEmptyCel_Zamovnik     :array[0..1] of string[50]  =('������� ��������� ��������� ��������',   '�������� ��������� �������� �����������');
const nMsgEmptyNPK              :array[0..1] of string[50]  =('������� �������� ������ �����. ����', '�������� ����. ������ �������� ��������');
const nMsgEmptyVID_DII          :array[0..1] of string[50]  =('������� ��� 䳿',                        '�������� ��� ��������');
const nMsgEmptyFioAbit          :array[0..1] of string[50]  =('������� ��������',                    '�������� �����������');
const nMsgEmptyUkr_Lang         :array[0..1] of string[50]  =('������� ����� ������ ���������� ����',  '�������� ������� ������ ���������� �����');
const nMsgEmptyGurtog           :array[0..1] of string[50]  =('����������� � ����������� ����������',   '������������ � �������������� ���������');
const nMsgEmptyCn_National      :array[0..1] of string[50]  =('������� �������������',                 '�������� ��������������');
const nMsgEmptyOCENKA           :array[0..1] of string[50]  =('������� ��������� ������ �� ����. ���������',   '����� ��������� ������ �� ����. ���������');
const nMsgEmptyTypeDepart       :array[0..1] of string[50]  =('������� �������',                      '�������� �������������');
const nMsgEmptyFacul            :array[0..1] of string[50]  =('������� ���������',                      '�������� ���������');
const nMsgEmptyPotok            :array[0..1] of string[50]  =('������� ����',                          '�������� �����');
const nMsgEmptyTypePerekl       :array[0..1] of string[50]  =('������� ��� ������������',               '�������� ��� ��������������');
const nMsgEmptyDataDocEducation :array[0..1] of string[50]  =('������� ��������� ��������� ��� �����', '����� ��������� ��������� �� �����������');
const nMsgEmptySrBal            :array[0..1] of string[50]  =('������� ������ ������� ���',            '����� ������ ������� ���');
const nMsgEmptyMainDoc          :array[0..1] of string[70]  =('������� �������, ��� �� ���� �������� ��� ����� �� ��������',
                                                              '����� �������, ���� �� ���� �������� �� ����������� �� �������');
const nMsgEmptyISPIT_VEDOM_TYPE :array[0..1] of string[50]  =('������� ��� ������������� �������','�������� ��� ��������������� ���������');
const nMsgEmptyDataInLang       :array[0..1] of string[70]  =('������� ������� ��� �������� ���� ������ �������',
                                                              '����� ������� ����� ����������� ���� ������ ����������');
const nMsgEmtyDateReestracii    :array[0..1] of string[50]  =('������� ���� ���������',                '�������� ���� �����������');
const nMsgEmptyDATE             :array[0..1] of string[50]  =('������� ����',                           '�������� ����');
const nMsgEmptySelectAbit       :array[0..1] of string[50]  =('�������� ������� ��� �� ������ ��������','');
const nMsgNomerMoreZero         :array[0..1] of string[50]  =('����� ������� ���� ����� ����','');
const nMsgEmptyModuleName       :array[0..1] of string[50]  =('������ ����� ������',                     '');
const nMsgEmptyId               :array[0..1] of string[50]  =('������ �����������',                      '������� �����������');
const nMsgEmptyComponent        :array[0..1] of string[50]  =('������� ���������',                       '');
const nMsgEmptySELECT_STATEMENT :array[0..1] of string[50]  =('������ ����� �������',                    '');
const nMsgEmptyWHERE_STATEMENT  :array[0..1] of string[50]  =('������ ������� �������',                  '');
const nMsgSelectedBefore        :array[0..1] of string[40]  =('������� �����',                           '');
const nMsgEmptyDataAfterFiltr   :array[0..1] of string[90]  =('�� ����� �������� ���� �����!'+CHR(13)+'��������� ������ ����� �������',
                                                              '');
const nMsgEmptyRelationFormStudForProt    :array[0..1] of string[60]  =('�������� ������� ��������� ���� �������� �� ��� ���������','');
const nMsgCopyPlanNabora        :array[0..1] of string[255] =('�� ����� ������ �������� ����� ������ ������� ����?'+#13+'���� ���, �� ������ �� � ������� ������.','�� ������������� ������ ���������� ����� ������ ������� �����?'+#13+'���� ��, �� �������� ��� � �������� ������.');
const nMsgCopyPlanNaboraWOCel   :array[0..1] of string[50]  =('�������� ��� ��������� ������','���������� ��� �������� ������');
const nMsgCopyPlanNaboraWCel    :array[0..1] of string[50]  =('�������� � �������� �������','���������� � ������� �������');
const nMsgCopyPlanNaboraCancel  :array[0..1] of string[50]  =('�� ��������','�� ����������');
const nMsgMakeOld               :array[0..1] of string[200] =('�� ����� ������ ������� ��� ����� �� ���������?'+#13+'� ������ ��� �� �� ���� ������������ � ��������.',
                                                              '�� ������������� ������ �������� ��� ������ ��� ����������?'+#13+'� ����� ������ ��� �� ����� ������������ � �����������.');
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
const ncolIS_SPIVBESIDA   :array[0..1] of string[15]  =('��������',        '�������������');
const ncolIS_ZALIK        :array[0..1] of string[10]  =('����',             '�����');
const ncolOCENKA_NUM      :array[0..1] of string[10]  =('������',            '������');
const ncolDATE_BEGIN      :array[0..1] of string[25]  =('���� �������',      '���� ������');
const ncolDATE_END        :array[0..1] of string[25]  =('���� ���������',   '���� ���������');
const ncolIS_FIZL_LGOTA   :array[0..1] of string[10]  =('ϳ����',            '������');
const ncolSHIFR           :array[0..1] of string[5]   =('����',              '����');
const nColSHORT_NAME_PRIM :array[0..1] of string[10]  =('�������',          '����������');
const ncolNAME_SPEC       :array[0..1] of string[15]  =('������������',     '�������������');
const ncolNAME_FAK        :array[0..1] of string[15]  =('���������',         '���������');
const ncolNAME_STUD       :array[0..1] of string[25]  =('���.-����. �����', '�����.-����. �������');
const ncolSHORT_NAME_KATEGORY :array[0..1] of string[25]  =('���. ����� ��������', '���. ����� ��������');
const ncolLICENCE_VALUE   :array[0..1] of string[20]  =('˳�������� ����',       '������������ �����');
const ncolLICENCE_DATE_END:array[0..1] of string[30]  =('���� ��������� ����糿','���� ��������� ��������');
const ncolNAME_CN_FACUL_SPEC     :array[0..1] of string[15] =('������������',     '');
const ncolSHORT_NAME_CN_KAT_STUD :array[0..1] of string[20] =('�������� ��������','');
const ncolSHORT_NAME_CN_FORM_STUD:array[0..1] of string[15] =('����� ��������',    '');
const ncolPLAN_VALUE             :array[0..1] of string[20] =('�������� ����',    '�������� �����');
const ncolYEARS_KOLVO            :array[0..1] of string[15] =('ʳ�-�� ����',      '���-�� ���');
const ncolMONTHES_KOLVO          :array[0..1] of string[20] =('ʳ�-�� ������',    '���-�� �������');
const ncolNAME_DOK_OBR           :array[0..1] of string[15] =('��� ���������',     '');
const ncolSERIA                  :array[0..1] of string[10] =('����',             '');
const ncolNOMER                  :array[0..1] of string[10] =('�����',             '');
const ncolDATE_VIDACHI           :array[0..1] of string[15] =('���� ������',       '');
const ncolTYPE_UCHZ              :array[0..1] of string[20] =('��� ����. �������', '');
const ncolIS_MAIN_BOOK           :array[0..1] of string[25] =('�������� ���.',     '');
const ncolNAME_IS_COPY           :array[0..1] of string[10] =('����',             '');
const ncolPREDM                  :array[0..1] of string[10] =('�������',           '');
const ncolEKZ_FORM               :array[0..1] of string[15] =('����� ������',      '����� ���.');
const ncolIS_KOLVO_BALLOV        :array[0..1] of string[20] =('����. ����. ���',   '����. ����. ���.');
const ncolIS_PROF_PREDMET        :array[0..1] of string[15] =('����. �������',     '');
const ncolNamePreimKat           :array[0..1] of string[25] =('������� �������', '��������� �����������');
const ncolNamePreim              :array[0..1] of string[15] =('��������',          '������������');
const ncolIS_SELECTED            :array[0..1] of string[15] =('����',             '�����');
const ncolSpecStaj               :array[0..1] of string[15] =('����. ����',        '����. ����');
const ncolOCENKA                 :array[0..1] of string[15] =('������',            '������');
const ncolIS_OLD_AT              :array[0..1] of string[20] =('�`��������� ����.', '����������� ����.');
const ncolNamePreimSelect        :array[0..1] of string[25] =('������ ��������',  '��������� ������������');
const ncolCEL_ZAMOV              :array[0..1] of string[15] =('��������',          '��������');
const ncolFIO                    :array[0..1] of string[5]  =('ϲ�',               '���');
const ncolNUM_DOG                :array[0..1] of string[5]  =('�����',             '�����');
const ncolDATE_DOG               :array[0..1] of string[5]  =('����',              '����');
const ncolSUMMA                  :array[0..1] of string[5]  =('����',              '�����');
const ncolIS_LOCKED              :array[0..1] of string[15] =('�����������',       '��������.');
const ncolNAME_VEDOM_TYPE        :array[0..1] of string[15] =('��� ���. ����.',   '��� ���. �����.');
const ncolIS_OCENKA_Vedom        :array[0..1] of string[15] =('������� ������',    '�������. ������');
const ncolEKZ_DATE               :array[0..1] of string[15] =('���� ������',       '���� ��������');
const ncolIS_NO_ROZPISKA         :array[0..1] of string[20] =('�� ����� � ����',  '�� ����� � �����');
const ncolIN_LANG                :array[0..1] of string[20] =('��. ����',          '��. ����');
const ncolLEVEL_VLADEN           :array[0..1] of string[20] =('г���� ��������',  '������� ��������');
const ncolDERG_ZAKAZ             :array[0..1] of string[20] =('����.�����/������','���. �����/�������');
const ncolNOMER_DELA             :array[0..1] of string[15] =('� ������',          '� ����');
const ncolKolVo                  :array[0..1] of string[15] =('ʳ�-��',            '���-��');
const ncolVSEGO                  :array[0..1] of string[10] =('������',            '�����');
const ncolKOLVO_BALLOV           :array[0..1] of string[15] =('ʳ�-�� ����',      '���-�� ������');
const ncolMEDALISTI              :array[0..1] of string[15] =('��������',         '���������');
const ncolINSHI                  :array[0..1] of string[15] =('����',              '������');
const ncolKOLVO_VEDOM            :array[0..1] of string[15] =('ʳ�-�� ����.',     '���-�� �����.');
const ncolKOLVO_IN_VEDOM         :array[0..1] of string[15] =('ʳ�-�� � ����.',   '���-�� � �����.');
const ncolIS_REK_ZACHISL         :array[0..1] of string[20] =('���. �� �����.',    '���. � ������.');
const ncolIS_CEL_NABOR           :array[0..1] of string[15] =('ֳ������ ����',    '������� �����');
const ncolDOLGNOST               :array[0..1] of string[15] =('������',            '���������');
const ncolPRIM                   :array[0..1] of string[15] =('�������',          '����������');
const ncolNAME_FOB_PROT          :array[0..1] of string[30] =('����� �������� ��� ���������',   '����� �������� ��� ���������');
const ncolDATE_FORM              :array[0..1] of string[20] =('���� ����������',   '���� ������������');
const ncolNOMER_Prikaz           :array[0..1] of string[15] =('����� ������',      '����� �������');
const ncolDATE_PRIKAZ            :array[0..1] of string[15] =('���� ������',       '���� �������');
const ncolDATE_ZARAX             :array[0..1] of string[15] =('���� �����.',       '���� ������.');
const ncolNAME_SROK_OB           :array[0..1] of string[15] =('����� ��������',    '���� ��������');
const ncolZamestitel             :array[0..1] of string[15]  =('���������',        '�����������');
const ncolSmRSt                  :array[0..1] of string[25]  =('��������/�����/������',  '�����/������/������');
const nColDateReg                :array[0..1] of string[15]  =('���� ���������',    '');
const nColNameZabrDoc            :array[0..1] of string[20]  =('������ ���������',   '');
const nColDateZabrDoc            :array[0..1] of string[15]  =('���� ����. ���.',    '');
const ncolKat_Pri_D              :array[0..1] of string[20]  =('�������. �������',   '');
const ncolKat_Pri_X              :array[0..1] of string[20]  =('�������. �������(�)','');
const ncolPeriod                 :array[0..1] of string[15]  =('�����',             '������');
const ncolPrizn_zachisl          :array[0..1] of string[15]  =('�����. �����.',      '������ ������');
const ncolIs_nedopusk            :array[0..1] of string[15]  =('��������',           '��������');
const ncolMODULE_NAME            :array[0..1] of string[15]  =('����� ������',       '�������� ������');
const ncolCondition              :array[0..1] of string[15]  =('�����',              '�������');
const ncolFRAZA_Protokola        :array[0..1] of string[15]  =('����� ���������',    '');
const ncolNAME_PREIM             :array[0..1] of string[15]  =('��������',           '');
const ncolORDER_ZACH             :array[0..1] of string[15]  =('������� �����.',     '');
const ncolIS_ZACH_RULE           :array[0..1] of string[20]  =('�����./������ ���.', '');
const ncolNAME_ZACH_TYPE         :array[0..1] of string[20]  =('��� �����������',    '��� ����������');
const ncolPOTOK                  :array[0..1] of string[15]  =('����',              '�����');
const ncolTYPE_DISC_NAME         :array[0..1] of string[15]  =('��� ��������',  '��� ���������');
const ncolMIN_PERELIK_SPEC_NAME  :array[0..1] of string[30]  =('����� ������������','�������� �������������');
const ncolIS_OLD                 :array[0..1] of string[15]  =('��������',          '����������');
const ncolMOVA                   :array[0..1] of string[15]  =('����',               '����');
const ncolUSPEC_NAME             :array[0..1] of string[35]  =('����� �������� ������������','�������� ����������� �������������');


const nNewItemRowInfoText    :array[0..1] of string[50]  =('������ ���� ��� ������� ������ ������',  '�������� ���� ��� ������. ����� ������');

const nGroupBoxMova          :array[0..1] of string[10]  =('����',       '����');
const nGroupBoxColorShem     :array[0..1] of string[15]  =('���� �����','���� �����');

const ncxGroupBoxNapr        :array[0..1] of string[30]  =('�������� ���������',               '����������� ����������');
const ncxGroupBoxSpec        :array[0..1] of string[50]  =('������ �������������� �� ��������','�������� �������������� �� �����������');
const ncxGroupBoxPlanNabora  :array[0..1] of string[50]  =('�������� ����',                    '�������� �����');
const ncxGroupBoxPerIspit    :array[0..1] of string[50]  =('������ ������',                   '�������� ���������');
const ncxGroupBoxOtec        :array[0..1] of string[30]  =('��� ������',                       '������ ����');
const ncxGroupBoxMother      :array[0..1] of string[30]  =('��� �����',                       '������ ������');
const nGroupBoxCalcWorkStaj  :array[0..1] of string[30]  =('ϳ�������� �������� �����',         '������� �������� �����');
const ncxGroupBoxOcenki      :array[0..1] of string[30]  =('������ �� ����. ���������',         '������ �� ����. ���������');
const ncxGroupBoxSredniyBal  :array[0..1] of string[30]  =('������� ���',                      '������� ���');
const ncxGroupBoxPlanSelNabor:array[0..1] of string[30]  =('ֳ������ ����',                    '������� �����');
const ncxGroupBoxDate        :array[0..1] of string[30]  =('Գ���� �� ���',                    '������ �� ����');
const ncxGroupBoxContracts   :array[0..1] of string[30]  =('���������',                         '���������');
const nGroupBoxEkzRasp       :array[0..1] of string[30]  =('������� ������',                   '���������� ���������');
const ncxGroupBoxDopDoc      :array[0..1] of string[30]  =('�������� ���������',               '�������������� ���������');
const ncxGroupBoxInLang      :array[0..1] of string[30]  =('�������� ��������� �����',         '�������� ����������� ������');
const ncxGroupBoxFilter      :array[0..1] of string[15]  =('Գ����',                            '������');
const ncxGroupBoxPrKPrikZ    :array[0..1] of string[15]  =('������',                            '�������');
const ncxGroupBoxFiltrKategory    :array[0..1] of string[25]  =('������� �������',            '');
const ncxGroupBoxSelectedFiltrKat :array[0..1] of string[25]  =('������ �������',            '');
const ncxGroupBoxDataFoFiltr :array[0..1] of string[70]  =('���� ��� �������� ������ ��� ������������',            '');


const ncxRadioButtonUkr    :array[0..1] of string[15]  =('���������',            '');
const ncxRadioButtonRus    :array[0..1] of string[15]  =('��������',             '');
const ncxRadioButtonYellow :array[0..1] of string[15]  =('�����',                 '');
const ncxRadioButtonBlue   :array[0..1] of string[15]  =('��������',              '');
const ncxRadioButtonAll    :array[0..1] of string[15]  =('��',                   '���');
const ncxRadioButtonBezCn  :array[0..1] of string[20]  =('��� ��������� ������',  '��� �������� ������');
const ncxRadioButtonSCn    :array[0..1] of string[20]  =('�� �������� �������',   '� ������� �������');
const ncxRadioButtonNumDela     :array[0..1] of string[25]  =('� ������',                   '');
const ncxRadioButtonKatPriem    :array[0..1] of string[25]  =('�������� �������',          '');
const ncxRadioButtonProtDop     :array[0..1] of string[25]  =('�������� ��� ������',        '');
const ncxRadioButtonProtZarah   :array[0..1] of string[25]  =('�������� ��� �����.',        '');
const ncxRadioButtonPriznZarah  :array[0..1] of string[25]  =('������� �����.',             '');
const ncxRadioButtonNakazi      :array[0..1] of string[25]  =('������',                     '');
const ncxRadioButtonNedopysk    :array[0..1] of string[25]  =('��������',                   '');
const ncxRadioButtonZabrDok     :array[0..1] of string[25]  =('������ ���������',           '');
const nRadioButtonThisGodNab    :array[0..1] of string[25]  =('�������� �� ������',        '');
const nRadioButtonNotThisGodNab :array[0..1] of string[25]  =('���� ���� ������',           '');
const ncxRadioButtonPovidProDopusk :array[0..1] of string[25]  =('����������� ��� ������', '');


const ncxLabelMustOverload :array[0..1] of string[40]  =('������� ���������������� ��������',  '');
const nLabelLogin              :array[0..1] of string[10]  =('����',              '�����');
const nLabelPassword           :array[0..1] of string[10]  =('������',             '������');

const nDBTextEditKat_Pri_D     :array[0..1] of string[30]  =('�� �������� �����','�� �������� �����');

const nLabelName               :array[0..1] of string[10]  =('�����',             '');
const nLabelShortName          :array[0..1] of string[15]  =('������� �����',     '');
const nLabelKod                :array[0..1] of string[5]   =('���',               '');
const nLabelNpp                :array[0..1] of string[20]  =('���������� �����',  '� �/�');
const nLabelVinitPadeg         :array[0..1] of string[25]  =('��������� ������','����������� �����');
const nLabelRoditPadeg         :array[0..1] of string[25]  =('������� ������',  '����������� �����');
const nLabelDateBeg            :array[0..1] of string[25]  =('���� �������',      '���� ������');
const nLabelDateEnd            :array[0..1] of string[25]  =('���� ���������',   '���� ���������');
const nLabelIsSpivbesida       :array[0..1] of string[15]  =('��������',        '�������������');
const nLabelIsZalik            :array[0..1] of string[10]  =('����',             '�����');
const nLabelOcenka             :array[0..1] of string[10]  =('������',            '������');
const nLabelIS_FIZL_LGOTA      :array[0..1] of string[25]  =('ϳ���� ���. �����', '������ ���. ����');
const nLabelSHIFR              :array[0..1] of string[5]   =('����',              '����');
const nLabelMinPerelikPrim     :array[0..1] of string[35]  =('������� �� ������������',     '���������� � �������������');
const nLabelNameSpec           :array[0..1] of string[15]  =('������������',                  '�������������');
const nLabelNameStud           :array[0..1] of string[60]  =('�������-�������������� �����','��������������-���������������� �������');
const nLabelNameObuchKat       :array[0..1] of string[50]  =('�������� ����� ��������',       '��������� ����� ��������');
const nLabelLicenseValue       :array[0..1] of string[40]  =('˳�������� ����',              '������������ �����');
const nLabelLicenseDateEnd     :array[0..1] of string[50]  =('���� ��������� ����糿',       '���� ��������� ��������');
const nLabelCnFaculSpec        :array[0..1] of string[50]  =('���������� �� ������������',    '');
const nLabelCnKatStud          :array[0..1] of string[50]  =('�������� ��������',             '');
const nLabelCnFormStud         :array[0..1] of string[50]  =('����� ��������',                 '');
const nLabelFOB_PROT           :array[0..1] of string[50]  =('����� �������� ��� ���������',   '');
const nLabelGodNabora          :array[0..1] of string[50]  =('г� ������ ��������',        '��� ������ ������.');
const nLabelDergZakaz          :array[0..1] of string[50]  =('����. ����������/������',       '���. �����/�������');
const nLabelPlanValue          :array[0..1] of string[50]  =('������� ������� ������',       '�������� ���-�� ������');
const nLabelNameCnFak          :array[0..1] of string[15]  =('���������',                      '���������');
const nLabelKurs               :array[0..1] of string[15]  =('���� ��������',                  '���� ��������');
const nLabelYearsKolvo         :array[0..1] of string[35]  =('ʳ�-�� ���� ��������',          '���-�� ��� ��������');
const nLabelMonthesKolvo       :array[0..1] of string[35]  =('ʳ�-�� �������� ������',        '���-�� �������� �������');
const nLabelSrokOb             :array[0..1] of string[35]  =('����� ��������',                 '');
const nLabelTypeDoc            :array[0..1] of string[35]  =('��� ��������� ��� �����',       '');
const nLabelSeria              :array[0..1] of string[35]  =('����',                          '');
const nLabelNomer              :array[0..1] of string[35]  =('�����',                          '');
const nLabelDATE_VIDACHI       :array[0..1] of string[35]  =('���� ������',                    '');
const nLabelTypeUchz           :array[0..1] of string[35]  =('��� ����������� �������',        '');
const nLabelUchz               :array[0..1] of string[35]  =('������������ ����������� �������',        '');
const nLabelAdressUchz         :array[0..1] of string[35]  =('̳��� ������������ ����. ����.', '');
const nLabelIS_COPY            :array[0..1] of string[35]  =('����/�������',                 '');
const nLabelIS_MAIN_BOOK       :array[0..1] of string[35]  =('�������� ��������',              '');
const nLabelPredm              :array[0..1] of string[35]  =('�������',                        '');
const nLabelEKZ_FORM           :array[0..1] of string[35]  =('����� ������',                   '');
const nLabelEKZFORM_PRB        :array[0..1] of string[35]  =('����� �������� ������',          '');
const nLabelIS_KOLVO_BALLOV    :array[0..1] of string[35]  =('����. ����. ���',                '����. ����. ���.');
const nLabelIS_PROF_PREDMET    :array[0..1] of string[35]  =('����������� �������',            '������������� �������');
const nLabelIS_ACTIVE          :array[0..1] of string[35]  =('�������� ��������',              '�������� ��������');
const nLabelParentFam          :array[0..1] of string[15]  =('�������',                       '�������');
const nLabelParentName         :array[0..1] of string[15]  =('��`�',                           '���');
const nLabelParentOtch         :array[0..1] of string[20]  =('�� �������',                    '��������');
const nLabelParentMestoRaboti  :array[0..1] of string[20]  =('̳��� ������',                   '����� ������');
const nLabelParentDoljnost     :array[0..1] of string[15]  =('������',                         '���������');
const nLabelParentTel          :array[0..1] of string[15]  =('�������',                        '�������');
const nLabelFioAbit            :array[0..1] of string[30]  =('������� ϲ� ��������',       '�������� ��� �����������');
const nLabelMestoRaboti        :array[0..1] of string[20]  =('̳��� ������',                   '����� ������');
const nLabelDoljnost           :array[0..1] of string[15]  =('������',                         '���������');
const nLabelAllStaj            :array[0..1] of string[20]  =('������ ����(��.)',              '������ ����(���.)');
const nLabelSpecStaj           :array[0..1] of string[20]  =('����. ����(��.)',               '����. ����(���.)');
const nLabelBalOn5System       :array[0..1] of string[20]  =('�`��������� �������',            '����������� �������');
const nLabelCalcSerednBal      :array[0..1] of string[30]  =('ϳ�������� ���������� ����',     '������� �������� ����');
const nLabelCel_Zamovnik       :array[0..1] of string[30]  =('�������� ��������� ��������',    '�������� �������� �����������');
const nLabelVid_Dii            :array[0..1] of string[30]  =('��� 䳿',                        '��� ��������');
const nLabelNpk                :array[0..1] of string[30]  =('�������� ������ �����. ����', '����. ������ �������� ��������');
const nLabelNPK_Short          :array[0..1] of string[30]  =('�������� ������ ����',        '����. ������ ��������');
const nLabelPotok              :array[0..1] of string[30]  =('����',                          '�����');
const nLabelTypePerekl         :array[0..1] of string[30]  =('��� ������������',               '��� ��������������');
const nLabelUkr_Lang           :array[0..1] of string[30]  =('������ ��������� ����',        '������ ����������� �����');
const nLabelGurtog             :array[0..1] of string[30]  =('������� � ����������',           '����������� � ���������');
const nLabelVID_DOG            :array[0..1] of string[30]  =('��� ��������',                   '��� ��������');
const nLabelCn_National        :array[0..1] of string[30]  =('�������������',                 '��������������');
const nLabelIS_SB_OTKAZ        :array[0..1] of string[30]  =('³����� �� ��������',         '����� �� �������������');
const nLabelNomerDela          :array[0..1] of string[30]  =('����� ������',                   '����� ����');
const nLabelFiltrOnDate        :array[0..1] of string[30]  =('Գ���� �� ��� ��������',        '������ �� ���� �����');
const nLabelFrom               :array[0..1] of string[5]   =('³�',                            '��');
const nLabelTo                 :array[0..1] of string[5]   =('��',                             '��');
const nLabelOnToday            :array[0..1] of string[15]  =('�� �������',                    '�� �������');
const nLabelOnPeriod           :array[0..1] of string[15]  =('�� �����',                      '�� ������');
const nLabelTypeDepart         :array[0..1] of string[20]  =('ϳ������',                      '�������������');
const nLabelNAME_DOG_STATUS    :array[0..1] of string[20]  =('������',                         '������');
const nLabelNAME_DOG_TYPE      :array[0..1] of string[20]  =('���',                            '���');
const nLabelMFO                :array[0..1] of string[20]  =('���',                            '���');
const nLabelFIO_PAYER          :array[0..1] of string[20]  =('�������',                        '����������');
const nLabelInfoNewData        :array[0..1] of string[20]  =('��� ���',                      '����� ������');
const nLabelInfoChangeData     :array[0..1] of string[20]  =('���� �����',                    '��������� ������');
const nLabelInfoDelData        :array[0..1] of string[20]  =('��������� ������',               '�������� ��������');
const nLabelInfoViewData       :array[0..1] of string[20]  =('�������� �����',                 '�������� ������');
const nLabelDateBegObuch       :array[0..1] of string[30]  =('���� ������� ��������',          '���� ������ ��������');
const nLabelDateEndObuch       :array[0..1] of string[30]  =('���� ��������� ��������',       '���� ��������� ��������');
const nLabelISPIT_VEDOM_TYPE   :array[0..1] of string[30]  =('��� ������������� �������',   '��� ��������������� ���������');
const nLabelIS_OCENKA_VSTUP    :array[0..1] of string[40]  =('������������ �� ������� ������', '����������� ��� ������������� ������');
const nLabelEKZ_DATE           :array[0..1] of string[40]  =('���� ������� ������',            '���� ������ ��������');
const nLabelIsNoRozpiska       :array[0..1] of string[40]  =('�� ���������� � ����',          '�� ���������� � ���������');
const nLabelCustomers          :array[0..1] of string[20]  =('����������',                     '����������');
const nLabelOTR_SPEC           :array[0..1] of string[25]  =('�������� ������������',         '���������� �������������');
const nLabelIN_LANG            :array[0..1] of string[30]  =('�������� ����',                  '����������� ����');
const nLabelLEVEL_VLADEN       :array[0..1] of string[20]  =('г���� ��������',               '������� ��������');
const nLabelTip_ISPIT          :array[0..1] of string[20]  =('��� ������',                     '��� ��������');
const nLabelZAREESTROVANI_DO   :array[0..1] of string[25]  =('����������� ��',               '������������������ ��');
const nLabelDate_Prov          :array[0..1] of string[20]  =('���� ����������',                '���� ����������');
const nLabelPRIM               :array[0..1] of string[20]  =('�������',                       '����������');
const nLabelFIO                :array[0..1] of string[20]  =('���',                            'ϲ�');
const nLabelDate               :array[0..1] of string[20]  =('����',                           '����');
const nLabelDatePrikaz         :array[0..1] of string[15]  =('���� ������',                    '���� �������');
const nLabelDateZarah          :array[0..1] of string[20]  =('���� �����������',               '���� ����������');
const nLabelDateForm           :array[0..1] of string[20]  =('���� ����������',                '���� ������������');
const nLabelZamestitel         :array[0..1] of string[20]  =('���������',                      '�����������');
const nLabel_Smeta             :array[0..1] of string[20]  =('��������',                       '�����');
const nLabel_Statiya           :array[0..1] of string[20]  =('������',                         '������');
const nLabel_Razdel            :array[0..1] of string[20]  =('�����',                         '������');
const nLabelFiltrOnFio         :array[0..1] of string[20]  =('Գ��������� �� ϲ�',             '����������� �� ���');
const nLabelTYP_KT_STD         :array[0..1] of string[60]  =('�������-�������������� �����','��������������-���������������� �������');
const nLabelModuleName         :array[0..1] of string[60]  =('����� ������',                   '������������ ������');
const nLabelID                 :array[0..1] of string[60]  =('�����������',                    '�����������');
const nLabelComponentName      :array[0..1] of string[60]  =('����� ����������',               '');
const nLabelSELECT_STATEMENT   :array[0..1] of string[60]  =('����� �������',                  '');
const nLabelWHERE_STATEMENT    :array[0..1] of string[60]  =('���� �������',                   '');
const nLabelKolVo_Records      :array[0..1] of string[60]  =('ʳ������ ������',              '');
const nLabelFRAZA_Protokola    :array[0..1] of string[15]  =('����� ���������',                '');
const nLabelNAME_PREIM         :array[0..1] of string[15]  =('��������',                       '');
const nLabelORDER_ZACH         :array[0..1] of string[20]  =('������� ������������',           '');
const nLabelIS_ZACH_RULE       :array[0..1] of string[30]  =('�����������/������ ���������',  '');
const nLabelNOMER_PRAVIL       :array[0..1] of string[30]  =('����� ������ �� ������ �������', '');
const nLabelKAT_PRI_D          :array[0..1] of string[30]  =('�������� ������� ���������',   '');
const nLabelDatePerekl         :array[0..1] of string[20]  =('���� ������������',              '���� ��������������');
const nLabelFiltrOnPerekl      :array[0..1] of string[30]  =('��� �����������',                '��� �����������');
const nLabelFiltrOnZach        :array[0..1] of string[30]  =('���������',                     '�����������');
const nLabelTypeDisc           :array[0..1] of string[20]  =('��� ���������',                 '��� ����������');
const nLabelMinPerelikSpec     :array[0..1] of string[50]  =('������������ � ������� �������������� ���',
                                                             '������������� �� ������� �������������� ���');


const nTabSheetVstup          :array[0..1] of string[15]  =('�����',                    '�����������');
const nTabSheetDocEducation   :array[0..1] of string[25]  =('��������� ��� �����',     '��������� �� �����������');
const nTabSheetOcenki         :array[0..1] of string[10]  =('������',                   '������');
const nTabSheetPerevagi       :array[0..1] of string[15]  =('��������',                 '������������');
const nTabSheetDopolnVedomosti:array[0..1] of string[25]  =('�������� �������',      '�������������� ��������');

const nTabSheetWorkStaj     :array[0..1] of string[15]  =('���� ������',              '���� ������');
const nTabSheetParents      :array[0..1] of string[15]  =('������',                   '��������');
const nTabSheetFioAbit      :array[0..1] of string[20]  =('ϲ� ��������',          '��� �����������');
const nTabSheetGodNabora    :array[0..1] of string[15]  =('г� ������',               '��� ������');


const nButton_Enter       :array[0..1] of string[5]  =('OK','��');
const nButton_Cansel      :array[0..1] of string[10] =('³������','');

// �������� � ������� ���� �� ������� �����
const nItemWork           :array[0..1] of string[10] =('������',      '');
const nItemSpravochniki   :array[0..1] of string[15] =('��������',   '');
const nConfiguraciya      :array[0..1] of string[15] =('������������','');

const ndxBarSubItemPlanNabora         :array[0..1] of string[50] =('����� ������ �� ��������','����� ������ �� ��������');
const ndxBarSubItemIspit              :array[0..1] of string[50] =('������ ������������',    '������������� ���������');
const ndxBarSubItemFacSpecForm        :array[0..1] of string[50] =('����������, ������������, ����� ��������',
                                                                   '����������, �������������, ����� ��������');
const ndxBarSubItemPreim              :array[0..1] of string[50] =('�������� ��������',    '�������� ��������');
const ndxBarSubItemObuch              :array[0..1] of string[50] =('�������������� ��������', '�������������� ��������');
const ndxBarSubItemHaraktWorkPrK      :array[0..1] of string[50] =('�������������� ������ ���������� ����',
                                                                   '�������������� ������ ���������� ��������');
const ndxBarSubItemObrazov            :array[0..1] of string[50] =('��������� ����� ���������',
                                                                   '���������� ����������� �����������');
const ndxBarSubItemPerelikNaprAndSpec :array[0..1] of string[50] =('������ ������� �� �������������� (���)',
                                                                   '�������� ����������� � �������������� (���)');
const ndxBarSubItemOtherSprav         :array[0..1] of string[50] =('���� ��������',          '������ �����������');
const ndxBarSubItemZarah              :array[0..1] of string[50] =('�����������',             '����������');
const ndxBarSubItemReports            :array[0..1] of string[50] =('����',                   '������');


const ndxBarStaticLabelGodNabora :array[0..1] of string[20]  =('г� ������',  '��� ������');

const ndxBtnOptionInterfase :array[0..1] of string[20] =('��������� ����������',        '');
const ndxBtnOptionWork      :array[0..1] of string[20] =('����� ������',         '����� ������');

const ndxBtnFormStudy        :array[0..1] of string[30] =('������� ���� ��������',     '');
const ndxBtnCategoryStudy    :array[0..1] of string[99] =('������� �������� �������� �� �������-�������������� �����',
                                                          '���������� ��������� �������� �� ��������������-���������������� �������');
const ndxBtnPeople           :array[0..1] of string[20] =('������� Գ�. ���',         '');
const ndxBtnSpDepartment     :array[0..1] of string[35] =('������� ��������',       '');
const ndxBtnFacultySpecGroup :array[0..1] of string[70] =('������� ���������� �� ��������������','');
const ndxBtnCustomers        :array[0..1] of string[40] =('������� �����������','');


const ndxBtnPrK_SP_DERG_ZAKAZ      :array[0..1] of string[60] =('������� (�������� ����������/������)',
                                                                '���������� (���. �����/�������)');
const ndxBtnPrK_SP_EXZFORM         :array[0..1] of string[70] =('������� ���� �������� �����������',
                                                                '���������� ���� ������������� ���������');
const ndxBtnPRK_SP_FOB_PROT        :array[0..1] of string[60] =('������� ���� �������� ��� ���������',
                                                                '���������� ���� �������� ��� ���������');
const ndxBtnPRK_SP_FORM_OBUCH_KATEGORY  :array[0..1] of string[60] =('������� �������� ����� ��������',
                                                                     '���������� ��������� ����� ��������');
const ndxBtnPRK_SP_GOD_NABORA      :array[0..1] of string[100]=('������� ���� ������ ��������',
                                                                '���������� ����� ������ ������������');
const ndxBtnPrK_SP_GURTOG          :array[0..1] of string[50] =('������� ������� � ����������',
                                                                '���������� ����������� � ���������');
const ndxBtnPrK_SP_IN_LANG         :array[0..1] of string[50] =('������� ��������� ���',
                                                                '���������� ����������� ������');
const ndxBtnPrK_SP_IS_COPY         :array[0..1] of string[50] =('�������(����/�������)',
                                                                '���������� (�����/��������)');
const ndxBtnPrK_SP_KAT_PRI_X       :array[0..1] of string[150]=('������� ������� ������� ��������� ��� X�D�TOG',
                                                                '���������� ��������� ������ ���������� ��� XIDITOG');
const ndxBtnPrK_SP_KURS            :array[0..1] of string[50] =('������� ����� ��������',
                                                                '���������� ������ ��������');
const ndxBtnPrK_SP_LEVEL_VLADEN    :array[0..1] of string[150]=('������� ���� �������� ��������� �����',
                                                                '���������� ������� �������� ����������� ������');
const ndxBtnPrK_SP_MOVA            :array[0..1] of string[50] =('������� ��� ��������',
                                                                '���������� ������ ��������');
const ndxBtnPrK_SP_NPK             :array[0..1] of string[150]=('������� �������� ������ ���������� ����',
                                                                '���������� ����������� ������ �������� ��������');
const ndxBtnPRK_SP_OCENKA          :array[0..1] of string[100]=('������� ������ �������� �����������',
                                                                '���������� ������ ������������� ���������');
const ndxBtnPrK_SP_OLD_PRICH       :array[0..1] of string[50] =('������� ������ ������� ��������',
                                                                '���������� ������ �������� ��������');
const ndxBtnPrK_SP_PREDM_u         :array[0..1] of string[60] =('������� �������� ����������� �����',
                                                                '���������� ��������� ����������� �����');
const ndxBtnPrK_SP_PREDM           :array[0..1] of string[60] =('������� �������� ��������',
                                                                '���������� ��������� ��������');
const ndxBtnPrK_SP_PREIM           :array[0..1] of string[100] =('������� ������� �������� ��� �����',
                                                                 '���������� ����������� ����������� ��� �����������');
const ndxBtnPrK_SP_PRICH           :array[0..1] of string[50] =('������� ������ ������',
                                                                '���������� ������ ������');
const ndxBtnPrK_SP_PRIZN_ZACHISL   :array[0..1] of string[50] =('������� ����� �����������',
                                                                '���������� ��������� ����������');
const ndxBtnPrK_SP_RISH_TYPE       :array[0..1] of string[60] =('������� ����� ���������� ����',
                                                                '���������� ������� �������� ��������');
const ndxBtnPrK_SP_TYPE_DOK_OBR    :array[0..1] of string[100]=('������� ���� ��������� ��� �����',
                                                                '���������� ����� ���������� �� �����������');
const ndxBtnPrK_SP_TYPE_PEREKL     :array[0..1] of string[100]=('������� ���� ������������ ���������',
                                                                '���������� ����� �������������� ����������');
const ndxBtnPrK_SP_TYPE_RAZN       :array[0..1] of string[100]=('������� ���� ���������� ������',
                                                                '���������� ����� ������������� ������');
const ndxBtnPrK_SP_TYPE_UCHZ       :array[0..1] of string[100]=('������� ���� ������ �������',
                                                                '���������� ����� ��������������� ����������');
const ndxBtnPrK_SP_UKR_LANG        :array[0..1] of string[100]=('������� ������ ��������� ����',
                                                                '���������� ������ ����������� �����');
const ndxBtnPrK_SP_VID_DII         :array[0..1] of string[50] =('������� ���� 䳿',
                                                                '���������� ����� ��������');
const ndxBtnPRK_SP_VID_DOG         :array[0..1] of string[60] =('������� ����������� ���� ��������',
                                                                '���������� ������������ ����� ���������');
const ndxBtnPrK_SP_ZABR            :array[0..1] of string[100]=('������� ������ "������ ���������"',
                                                                '���������� �������� "������ ���������"');
const ndxBtnPRK_SP_KAT_PRI_D       :array[0..1] of string[150]=('������� ������� ������� ���������',
                                                                '���������� ��������� ������ ����������');


const ndxBtnPrK_SP_MIN_PERELIK_PRIM :array[0..1] of string[100]=('������� ������� �� ������� ��������������',
                                                                '���������� ���������� � ������� ��������������');
const ndxBtnPrK_SP_MIN_PERELIK_SPEC :array[0..1] of string[100]=('������� ������� ��������������',
                                                                '���������� ������� ��������������');
const ndxBtnPrK_SP_TYPE_KAT_STUD    :array[0..1] of string[100]=('������� �������-�������������� ����',
                                                                 '���������� ��������������-���������������� �������');
const ndxBtnPrK_SP_MIN_PERELIK_SHIFR:array[0..1] of string[100]=('������� ����� ��������������',
                                                                 '���������� ������ ��������������');
const ndxBtnPRK_SP_VUZ_LICENCE      :array[0..1] of string[100]=('������� �� ������ ���� �� ��������� ��������',
                                                                 '���������� � ��������� ���� �� ���������� ������������');
const ndxBtnPrK_SP_PLAN_NABORA      :array[0..1] of string[50] =('���� ������ �� ��������',
                                                                 '���� ������ �� ��������');
const ndxBtnPrK_SP_SROK_OB          :array[0..1] of string[50] =('������� ������ ��������',
                                                                 '���������� ������ ��������');
const ndxBtnPRK_SP_EDUCORG          :array[0..1] of string[70] =('������� ������ �������',
                                                                 '���������� ��������������� ����������');
const ndxBtnPRK_SP_PERELIK_ISPIT    :array[0..1] of string[50] =('������ ������',
                                                                 '�������� ���������');
const ndxBtnPRK_SP_CEL_ZAMOVNIK     :array[0..1] of string[50] =('������� ��������� ��������� ������',
                                                                 '���������� ���������� �������� ������');
const ndxBtnPRK_SP_PLAN_CEL_NABOR   :array[0..1] of string[50] =('���� ��������� ������',
                                                                 '���� �������� ������');
const ndxBtnPRK_SP_POTOK            :array[0..1] of string[50] =('������� ������ ������',
                                                                 '���������� ������� ������');
const ndxBtnPRK_SP_ISPIT_VEDOM_TYPE :array[0..1] of string[50] =('������� ���� �������������� ���������',
                                                                 '���������� ����� ��������������� ����������');
const ndxBtnPRK_SP_TYPE_DOP_DOK     :array[0..1] of string[50] =('������� ���� ����� ���������',
                                                                 '���������� ����� ������ ����������');
const ndxBtnPRK_SP_EKZ_RASP         :array[0..1] of string[80] =('������� ���������� �������� ����������� �� �����',
                                                                 '���������� ���������� ������������� ��������� �� �����');
const ndxBtnPRK_REK_DO_ZARAH        :array[0..1] of string[50] =('������������ �� �����������',
                                                                 '������������ � ����������');
const ndxBtnPRK_SP_DOLGNOST_PK      :array[0..1] of string[50] =('������� ����� ���������� ����',
                                                                 '���������� ���������� �������� ��������');
const ndxBtnPRK_SP_SOSTAV_PK        :array[0..1] of string[50] =('������� ������ ���������� ����',
                                                                 '���������� ������� �������� ��������');
const ndxBtnPRK_SP_FORM_STUD_FOB_PROT:array[0..1] of string[50]=('��`���� "���������" ���� �������� � ��� ���������',
                                                                 '����� "�������" ���� �������� � ��� ���������');
const ndxBtnPrK_PROT_ZACH           :array[0..1] of string[50] =('��������� �� ������ ��� �����������',
                                                                 '��������� � ������� � ����������');
const ndxBtnPrK_PROT_DOPUSK         :array[0..1] of string[50] =('���������  ��� ������',
                                                                 '���������  � �������');
const ndxBtnPRK_SP_COUNTING_RULE    :array[0..1] of string[100]=('������� ������ �����������, �� ����������� �������� ������ ���� �� ��',
                                                                 '���������� ������ ����������, ������� ������������ �������� ������������ ������� �� ��');
const ndxBtnPrKKlassViewWithFilter  :array[0..1] of string[50] =('������ ��������� ������ �����',
                                                                 '�������� �������� ������ ������');
const ndxBtnAbit                    :array[0..1] of string[50] =('������� ������ ��������',
                                                                 '������� �������� �����������');
const ndxBtnAbitPrK_Ekz_Vedom       :array[0..1] of string[50] =('������������ ������',
                                                                 '��������������� ���������');
const ndxBtnPrK_Filtr               :array[0..1] of string[50] =('����� ����� ��� ��������',
                                                                 '����� ������ ��� ������������');


const nButtonAbitPrintZAYAVA     :array[0..1] of string[25] =('�����',       '���������');
const nButtonAbitPrinEKZ_LIST    :array[0..1] of string[25] =('���. ������', '���. ����');
const nButtonAbitPrinROSPISKA    :array[0..1] of string[25] =('��������',    '��������');



// �������� ����
const nFormPrK_Caption             :array[0..1] of string[20] =('���������� �����',   '�������� ��������');
const nFormLogin_Caption           :array[0..1] of string[20] =('���������� �����',   '�������� ��������');
const nFormOptionInterfase_Caption :array[0..1] of string[20] =('��������� ����������', '��������� ����������');
const nFormOptionWork_Caption      :array[0..1] of string[20] =('����� ������',         '����� ������');
const nFormPtint_Caption           :array[0..1] of string[20] =('����',                 '������');
const nFormWhatsNew_Caption        :array[0..1] of string[20] =('�� ������',            '��� ������');

// �������� ������������
const nFormPUB_SP_MOVA_Caption              :array[0..1] of string[50] =('������� ��� ��������','���������� ������ ��������');
const nFormPUB_SP_USPEC_Caption             :array[0..1] of string[50] =('������� �������������� (��� ���� ��������)','���������� �������������� (��� ����� ��������)');
const nFormPUB_SP_SPEC_Caption              :array[0..1] of string[50] =('������� ��������������','���������� ��������������');
const nForm_JN_FAK_SPEC_Caption             :array[0..1] of string[50] =('���������� �� ������������','���������� � �������������');
//******************************************************************************

const nActionPerekl                         :array[0..1] of string[10] =('����������','����������');
const nOldData                              :array[0..1] of string[30] =('�������� �������','���������� ��������');
const nNewData                              :array[0..1] of string[30] =('��� �������','����� ��������');
const nFormPRK_Perekl_Caption               :array[0..1] of string[100] =('������������ ������ ��������',
                                                                          '�������������� ���� �����������');
const ndxBtnPrK_SP_TYPE_ZACH_Caption        :array[0..1] of string[100]=('������� ���� �����������',
                                                                         '���������� ����� ����������');
const nFormPRK_SP_TYPE_ZACH_Caption         :array[0..1] of string[100]=('������� ���� �����������','���������� ����� ����������');
const nFormPRK_SP_TYPE_DISC_Caption         :array[0..1] of string[100]=('������� ���� ��������','���������� ����� ���������');

const nFormPRK_SP_DISC_Caption              :array[0..1] of string[150]=('������� ��������','���������� ���������');

const nLabelFinanceForm                     :array[0..1] of string[20] =('Գ����������','��������������');
const nFinance_Budjet                       :array[0..1] of string[10] =('������','������');
const nFinance_Kontrakt                     :array[0..1] of string[10] =('��������','��������');

const nLabelFormObuch                       :array[0..1] of string[20] =('����� ��������','����� ��������');
const nFormObuch_Stacionar                  :array[0..1] of string[10] =('���������','���������');
const nFormObuch_Zaochn                     :array[0..1] of string[10] =('������','�������');
const nFormObuch_Vechern                    :array[0..1] of string[10] =('�������','��������');

const nLabelDocType                         :array[0..1] of string[20] =('��� ���������','��� ���������');
const nLabelDocType_SvidRojden              :array[0..1] of string[30] =('�������� ��� ����������','������������� � ��������');
const nLabelDocType_Passport                :array[0..1] of string[30] =('�������','�������');
const nLabelDocType_VoenBilet               :array[0..1] of string[30] =('³�������� ������','������� �����');

const nLabelDeistvDo                        :array[0..1] of string[20] =('ĳ����� ��','������������ ��');
const nLabelDataVidach                      :array[0..1] of string[20] =('���� ������','���� ������');

const nLabelGroup                           :array[0..1] of string[10] =('�����','������');
const nLabelQualification                   :array[0..1] of string[20] =('�����������','������������');

const nError                               :array[0..1] of string[10] =('�������!','������!');
const nMsgEmptyExportPassTypes             :array[0..1] of string     =('������� ��������� � ���������� ���� � ������ � ��������� ���� ��������� �������� � ���� �����','���������� ��������� � ����������� ���� �� ������ �� ����������� ����� ���������� �������� �� ���� ������');
const nMsgEmptyExportFormObuch             :array[0..1] of string     =('������� ��������� � ���������� ���� � ���� � ��������� ���� �������� �������� � ���� �����','���������� ��������� � ����������� ���� �� ����� �� ����������� ���� �������� �������� �� ���� ������');

const nActiontPrintTitul                   :array[0..1] of string[30] =('���� ���.�����',                '������ ���.�����');
const nHintActiontPrintTitul               :array[0..1] of string[30] =('���� ���������� �����',         '������ ���������� �����');
const nActiontPrintVitiag                  :array[0..1] of string[30] =('���� ������ � ������',          '������ �������� �� �������');
const nHintActiontPrintVitiag              :array[0..1] of string[30] =('���� ������ � ������',          '������ �������� �� �������');
implementation

end.
