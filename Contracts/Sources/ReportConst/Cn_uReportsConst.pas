unit Cn_uReportsConst;

interface
{Message}
const Studcity_MESSAGE_NO_CHOOSE_SUMMA :array[1..2] of String=('�� ������ ��� �������������','�� ������ ��� �������������');
const Studcity_MESSAGE_WARNING_CONST   :array[1..2] of String=('�����','��������');
const Studcity_MESSAGE_WAIT_CONST      :array[1..2] of String=('�������! ��� ������� ������!','�����! ���� ��������� ������!');
const Studcity_MESSAGE_SCH_DB          :array[1..2] of String=('�� ������ ��������� �������','�� ������ ��������� ����');
const Studcity_MESSAGE_SCH_KD          :array[1..2] of String=('�� ������ ���������� �������','�� ������ ���������� ����');
const Studcity_MESSAGE_SMETA           :array[1..2] of String=('�� ������� ������','�� ������� �����');
{Button}
const  cn_ButtonView                   :array[1..2] of String=('��������(F12)','��������(F12)');
const  cn_ButtonCancel                 :array[1..2] of String=('³������','��������');


const  cn_RepFIO                     :array[1..2] of String=('�.�.�.','�.�.�.');
const  cn_RepDog                     :array[1..2] of String=('������ �','������� �');
const  cn_RepDateDog                 :array[1..2] of String=('���� ����������','���� ����������');
const  cn_RepDogperiod               :array[1..2] of String=('����� 䳿 ��������','������ �������� ��������');
const  cn_RepDogPay                  :array[1..2] of String=('������� �� ��������','���������� �� ��������');
const  cn_RepDogSumEnd               :array[1..2] of String=('���� ��������, ���','����� ��������, ���');
const  cn_RepDogSumNeed              :array[1..2] of String=('���. �� ���� ����������, ���','���. �� ���� �������, ���');
const  cn_RepDogSumPay               :array[1..2] of String=('��������, ���','��������, ���');
const  cn_RepDogSumOverPay           :array[1..2] of String=('���������, ���','���������, ���');
const  cn_RepDogSumNeedPay           :array[1..2] of String=('��������������, ���','�������������, ���');
const  cn_RepDogSumDate              :array[1..2] of String=('�������� ��','�������� ��');
const  cn_RepDogSumTextOver          :array[1..2] of String=('���� ���������','����� ���������');
const  cn_RepDogSumText              :array[1..2] of String=('����� ������','������ ������');
const  cn_RepDogSumTextNEED          :array[1..2] of String=('���� ��������������','����� �������������');
const  cn_RepDatePayNeed             :array[1..2] of String=('�������������� ��','������������� ��');
const cn_RepSumAll                    :array[1..2] of String=('������:','�����:');
{�����}
const  cn_RepStudFT                  :array[1..2] of String=('�����/������� ��������  ���, �� ����������','������/������� ���������');
const  cn_RepStudPayFT               :array[1..2] of String=('�����/������� ��������  �������� �� ��������','������/������� ��������� �� ��������');
const  cn_RepStudSVFT                :array[1..2] of String=('������� ��������  ���, �� ����������','������� ����� ���������� ���������');
const  cn_RepStudPeriod              :array[1..2] of String=('����� ��������','������ ��������');
const  cn_RepStudPeriodBeg           :array[1..2] of String=('�','�');
const  cn_RepStudPeriodEnd           :array[1..2] of String=('��','��');
const  cn_RepStudFilter              :array[1..2] of String=('³��� ��������� ��������(F7)','��������� ���������� ��������(F7)');
const  cn_RepStudRun                 :array[1..2] of String=('���������(F10)','�����������(F10)');
const  cn_RepStudCancel              :array[1..2] of String=('³����','������');
const  cn_RepStudQuit                :array[1..2] of String=('�����','�����');
const  cn_RepStudMainDog             :array[1..2] of String=('������ ��������','�������� ��������');
const  cn_RepStudDopDog              :array[1..2] of String=('�������� ��������','�������������� ��������');
const  cn_RepStudView                :array[1..2] of String=('��������(F12)','��������(F12)');
const  cn_RepStudDOC                 :array[1..2] of String=('�������� �������� ���������','�������� �������� ���������');
const  cn_RepStudDOC_Message         :array[1..2] of String=('�������� ��������� �������� ���i���','�������� ��������� �������� �������');
const  cn_RepStudDOC_Message_Err_del :array[1..2] of String=('������� ��� ����������i ���������','������ ��� ��������������� ���������');
const  cn_RepStudSelFiled            :array[1..2] of String=('��������� ��','������������ ��');
const  cn_RepRestr                   :array[1..2] of String=('�����','������');
const  cn_RepRestr_ex                :array[1..2] of String=('�����(�����������)','������(�����������)');
const  cn_RepSV                      :array[1..2] of String=('�������','�������');
const  cn_RepSVPAY                   :array[1..2] of String=('������� ����� ��������������','������� ����� � �������������');
const  cn_RepSVPAYPERE               :array[1..2] of String=('������� ����� ���������','������� ����� � ���������');
const  cn_RepSVPAY1                  :array[1..2] of String=('�� ������ �������� �� �������� ��','�� ������ ��������� �� �������� ��');
const  cn_RepALL                     :array[1..2] of String=('�������� ������� ����������:','����� ���������� ������������:');
const  cn_RepSVALL                   :array[1..2] of String=('������','�����');
const  cn_RepMainDog                 :array[1..2] of String=('��������, �� ���������� �� ��������� ����������','��������� �� �������� ���������');
const  cn_RepDopDog                  :array[1..2] of String=('��������, �� ���������� �� ����������� ����������','��������� �� �������������� ���������');
const  cn_RepPeiodDog                :array[1..2] of String=('�� �����','� ������');
const  cn_RepPere                    :array[1..2] of String=('��������, �� ����������� �� ��������','������������� �� ��������');
const  cn_RepNeed                    :array[1..2] of String=('��������, �� ����������� �� ��������','��������� �� ��������');
const  cn_RepToch                    :array[1..2] of String=('��������, �� ������� �������� �� ��������','��������� ����������');
const  cn_RepOpldate                 :array[1..2] of String=('���������� ���� �� ������ ��','������ ����� � ������ ��');
const  cn_RepMainDogEX               :array[1..2] of String=('�� ��������� ����������','�� �������� ���������');
const  cn_RepDopDogEX                :array[1..2] of String=('�� ����������� ����������','�� �������������� ���������');
const  cn_RepFormZad                 :array[1..2] of String=('��������������','�������������');
const  cn_RepFormToch                :array[1..2] of String=('����� ������','������ ������');
const  cn_RepFormPere                :array[1..2] of String=('���������','���������');

const  cn_RepDogNotArhiv             :array[1..2] of String=('ĳ��� ��������','����������� ��������');
const  cn_RepDogArhiv                :array[1..2] of String=('�� ���� ��������','�� ����������� ��������');

{������}
const  cn_RepFilterFT                :array[1..2] of String=('��������� ��������','��������� ��������');

const  cn_RepFacult                  :array[1..2] of String=('���������','���������');
const  cn_RepSpec                    :array[1..2] of String=('������������','�������������');
const  cn_RepNational                :array[1..2] of String=('������������','�����������');
const  cn_RepFormStud                :array[1..2] of String=('����� ��������','����� ��������');
const  cn_RepKatStud                 :array[1..2] of String=('�������� ��������','��������� ��������');
const  cn_RepKurs                    :array[1..2] of String=('����','����');
const  cn_RepGroup                   :array[1..2] of String=('�����','������');
const  cn_Zamov                      :array[1..2] of String=('�������� ������', '��������������� ����');
const  cn_Type_Stage                 : array[1..2] of string = ('����������� ������','������������� ������');  

const cn_RepFilterFac                :array[1..2] of String=('���� ����������','����� �����������');
const cn_RepFilterSpec               :array[1..2] of String=('���� ��������������','����� ��������������');
const cn_RepFilterNational           :array[1..2] of String=('���� ���������������','����� ���������������');
const cn_RepFilterFormStud           :array[1..2] of String=('���� ���� ��������','����� ���� ��������');
const cn_RepFilterKatStud            :array[1..2] of String=('���� �������� ��������','����� ��������� ��������');
const cn_RepFilterCurs               :array[1..2] of String=('���� �����','����� ������');
const cn_RepFilterGroup              :array[1..2] of String=('���� ����','����� �����');

const cn_RepFilterFacL               :array[1..2] of String=('������� ����������:','������� �����������:');
const cn_RepFilterSpecL              :array[1..2] of String=('������� ��������������:','������� ��������������:');
const cn_RepFilterNationalL          :array[1..2] of String=('������� ���������������:','������� ���������������:');
const cn_RepFilterFormStudL          :array[1..2] of String=('������� ���� ��������:','������� ���� ��������:');
const cn_RepFilterKatStudL           :array[1..2] of String=('������� �������� ��������:','������� ��������� ��������:');
const cn_RepFilterCursL              :array[1..2] of String=('������� �����:','������� ������:');
const cn_RepFilterGroupL             :array[1..2] of String=('������� ����:','������� �����:');

{�����������}
const  cn_RepFormFilter              :array[1..2] of String=('������� ������������','��������� ��������������');
const  cn_RepFormFilterSmNotProv     :array[1..2] of String=('������'''+''''+'���� ��������� ������','������������� ��������� ������');
const  cn_RepFormFilterSmNotProvGet  :array[1..2] of String=('³������ ������'''+''''+'���� ��������� ������','�������� ������������� ��������� ������');

const  cn_RepDocProv                 :array[1..2] of String=('�����/������� �������� ���������� �� ��������','������/������� ����������� �� ��������');
const  cn_RepDocProvROS              :array[1..2] of String=('����� ���������� �� �������� �� ��������� ����������','������ ����������� �� �������� �� �������� ���������');
const  cn_RepDocProvRDop             :array[1..2] of String=('����� ���������� �� �������� �� ����������� ����������','������ ����������� �� �������� �� �������������� ���������');
const  cn_RepDocProvR                :array[1..2] of String=('������� �������� ���������� �� ��������','������� ����������� �� ��������');
const  cn_RepDocProvR1               :array[1..2] of String=('� ����� ������ ������������','� ������� ���������� ��������������');
const  cn_RepDocProvR2               :array[1..2] of String=('�� ����� �','�� ������ �');
const  cn_RepDocProvR3               :array[1..2] of String=('��','��');
const  cn_RepDocProvRT1              :array[1..2] of String=('������������ �������','������������ �����');
const  cn_RepDocProvRT2              :array[1..2] of String=('����� ������ ����','������ ������ ����');
const  cn_RepDocProvRT3              :array[1..2] of String=('�����','�����');
const  cn_RepDocProvRT4              :array[1..2] of String=('�����','������');
const  cn_RepDocProvRT5              :array[1..2] of String=('����� �� �������','����� �� �����');
const  cn_RepDocProvRT6              :array[1..2] of String=('����, ���','�����, ���');
const  cn_RepDocProvSch              :array[1..2] of String=('� ��������� �� ��������','� ��������� �� ������');
const  cn_RepDocProvSm               :array[1..2] of String=('� ��������� �� ��������','� ��������� �� ������');
const  cn_RepDocPrintProvSm          :array[1..2] of String=('������� �� ���. ���. ','������� �� ���. ���.');
const  cn_RepDocProvRT7              :array[1..2] of String=('�������� �','�������� �');
const  cn_RepDocProvRT8              :array[1..2] of String=('���� ���������','���� ���������');
const  cn_RepDocProvRT9              :array[1..2] of String=('�������/  ���������','����������/ ����������');
const  cn_RepDocProvRT10             :array[1..2] of String=('����������� �������','���������� �������');
const  cn_RepDocProvRT11             :array[1..2] of String=('���� ����������','����� �����������');
const  cn_RepDocProvRT12             :array[1..2] of String=('��','��');
const  cn_RepDocProvRT13             :array[1..2] of String=('���. ���.','���. ���.');

const  cn_RepSchDB                   :array[1..2] of String=('������� �������','��������� �����');
const  cn_RepSchKD                   :array[1..2] of String=('�������� �������','���������� �����');
const  cn_RepSmeta                   :array[1..2] of String=('��\����\��\����','��\����\��\����');
const  cn_RepSmetaName               :array[1..2] of String=('����� �������','�������� �����');
const  cn_RepDocAllSum               :array[1..2] of String=('����������� ���� ����������','������������� ����� �����������');
const  cn_RepDocAllDoc               :array[1..2] of String=('�������� ������� ����������','����� ����� �����������');
{���������� ��� �������}
const  cn_RepDONGUETOtdel            :array[1..2] of String=('³�������','���������');
const  cn_RepDONGUETCNT              :array[1..2] of String=('ʳ�-���','���-��');
const  cn_RepDONGUETCNTOtdel         :array[1..2] of String=('������ �� �����','����� �� ���������');
const  cn_RepDONGUETAll              :array[1..2] of String=('������ �� ����','����� �� ������');

{������������� �����}
const  cn_RepRAnalyz                 :array[1..2] of String=('���������� ����� ������ �� ��������','������������� ������ �� ������ �� ��������');
const  cn_RepSVAnalyz                :array[1..2] of String=('��������� ��� ������ �� ��������','������������� ������� �� ������ �� ��������');
const  cn_RepRAnalyzIN               :array[1..2] of String=('������ ������, ���','�������� ������, ���');
const  cn_RepRAnalyzNEED             :array[1..2] of String=('������� ����, ���.','����������� �����, ���');
const  cn_RepRAnalyzPAY              :array[1..2] of String=('��������, ���','����������� �����, ���');
const  cn_RepRAnalyzOUT              :array[1..2] of String=('������� ������, ���','��������� ������, ���');
const  cn_RepRAnalyzAllSaldo         :array[1..2] of String=('������ ������� ������','����� ��������� ������, ���');
const  cn_RepRAnalyzCNT              :array[1..2] of String=('�������� �������','����� ����� ���������');
const  cn_RepRAnalyzSUMPrint         :array[1..2] of String=('����������� ����','������������� �����');
const  cn_RepRAnalyzAll              :array[1..2] of String=('��������� ������','����� ������');
{������ � ������� ���������� ��������������}
const  cn_RepRAnalyzSmetaSV          :array[1..2] of String=('����� ������ �� �������� �� ��������� ������������','������ ������ �������� � ������� ���������� ��������������');
const  cn_RepSVAnalyzSmName          :array[1..2] of String=('������� ������������','�������� ��������������');
const  cn_RepSVAnalyzSmOstNach       :array[1..2] of String=('������� �� ������� ������','������� �� ������ �������');
const  cn_RepSVAnalyzSmOstNow        :array[1..2] of String=('�������� �����','������� ������');
const  cn_RepSVAnalyzSmOstBeg        :array[1..2] of String=('������� �� ���� ������','������� �� ����� ������');
const  cn_RepSVAnalyzSmDolg          :array[1..2] of String=('����','����');
const  cn_RepSVAnalyzSmPere          :array[1..2] of String=('���������','���������');
const  cn_RepSVAnalyzSmIn            :array[1..2] of String=('������ ������','�������� ������');
const  cn_RepSVAnalyzSmOut           :array[1..2] of String=('³����� ������','��������� ������');
const  cn_RepSVAnalyzSmNach          :array[1..2] of String=('����������','���������');
const  cn_RepSVAnalyzSmOpl           :array[1..2] of String=('��������','��������');
const  cn_RepSVAnalyzSmZad           :array[1..2] of String=('��������������','�������������');

{������������� ���������}
const  cn_RepSVDPDocShort            :array[1..2] of String=('�������������� �������','������������� ���������');
const  cn_RepSVDPDoc                 :array[1..2] of String=('�������������� ������� ������ �� ��������','������������� ��������� ������ �� ��������');
const  cn_RepSVDPDocNumber           :array[1..2] of String=('��','��');
const  cn_RepSVDPDocDate             :array[1..2] of String=('����','����');
const  cn_RepSVDPDocCNT              :array[1..2] of String=('ʳ�-���','���-��');
const  cn_RepSVDPDocSumma            :array[1..2] of String=('����, ���','�����, ���');
const  cn_RepSVDPDocAll              :array[1..2] of String=('�����','�����');
{����� ����������� ���������� ���������}
const  cn_RepSVPercent              :array[1..2] of String=('����� ����������� ��������� �������� �� ��������','����� ����������� ���������� ���������');
const  cn_RepSVPercentPay           :array[1..2] of String=('������ ��������','������ ��������');
const  cn_RepSVPercentCNT           :array[1..2] of String=('�������� ��-��� ��������','����� ���-�� ���������');
const  cn_RepSVPercentCNTShort      :array[1..2] of String=('ʳ�-���','���-��');
const  cn_RepSVPercentPeriod        :array[1..2] of String=('�����','������');

{��������������� �����}
const  cn_RepUnSumName              :array[1..2] of String=('�����/������� �������� ����, �� �� �������','������/������� ��������������� ����');
const  cn_RepUnSumSV                :array[1..2] of String=('������� ����� ���, �� �� ������� �� ��������','������� ����� ��������������� ���� �� ��������');
const  cn_RepUnSumR                 :array[1..2] of String=('����� ���, �� �� ������� �� ��������','������ ��������������� ���� �� ��������');
const  cn_RepUnSumNew               :array[1..2] of String=('ҳ���� ���������','����� �����������');
const  cn_RepUnSumCNT               :array[1..2] of String=('ʳ�-���','���-��');
const  cn_RepUnSumSum               :array[1..2] of String=('����, ���','�����, ���');
const  cn_RepUnSumSumALL            :array[1..2] of String=('�������� ����','����� �����');
const  cn_RepUnRSumCNT              :array[1..2] of String=('�������� �������, �� ���������','����� ����� ���������');
const  cn_RepUnRSumSum              :array[1..2] of String=('����, �� �� �������, ���','��������������� �����, ���');
const  cn_RepUnRSumSumALL           :array[1..2] of String=('����������� ����','������������� �����');
const  cn_RepUnRSumALL              :array[1..2] of String=('������ �� �������','����� ������������');
const  cn_RepSVPeriod               :array[1..2] of String=('�����','������');

{������� �����������}
const  cn_RepSVDiss                 :array[1..2] of String=('������� ����������� ��������� �����������','������� ����������� ��������� �����������');
const  cn_RepSVDISSDISS             :array[1..2] of String=('³����.','������.');
const  cn_RepSVDISSUNDISS           :array[1..2] of String=('����.','����.');
const  cn_RepSVDISSPERSENT          :array[1..2] of String=('³�., %','���., %');
const  cn_RepSVDissChPersent        :array[1..2] of String=('³�������� �������','���������� �������');
const  cn_RepSVDissChCNT            :array[1..2] of String=('���������, �� �������','������������ � �������������');
const  cn_RepSVDissType             :array[1..2] of String=('������������ ������� �������� �� ������','������������ ������� �������� � �����');
const  cn_RepSVDissArchName         :array[1..2] of String=('ʳ������ ����������� �� ������','���������� ������������ � �����');


implementation



end.
