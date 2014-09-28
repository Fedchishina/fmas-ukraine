unit uConsts_Messages;

interface

const bs_Error               :array[1..2] of String=('�������!','������!');
const OkBtnCaption           :array[1..2] of string=('��','��');
const CancelBtnCaption       :array[1..2] of string=('³������','��������');
const YesBtnCaption          :array[1..2] of string=('���','��');
const NoBtnCaption           :array[1..2] of string=('ͳ','���');
const AbortBtnCaption        :array[1..2] of string=('���������','��������');
const RetryBtnCaption        :array[1..2] of string=('���������','���������');
const IgnoreBtnCaption       :array[1..2] of string=('����������','����������');
const AllBtnCaption          :array[1..2] of string=('��','���');
const HelpBtnCaption         :array[1..2] of string=('��������','������');
const NoToAllBtnCaption      :array[1..2] of string=('ͳ ��� ���','��� ��� ����');
const YesToAllBtnCaption     :array[1..2] of string=('��� ��� ���','�� ��� ����');

const existsMan              :array[1..2] of string=('���� ������ ��� ������!','����� ������� ��� ��������!');
const existsKat              :array[1..2] of string=('���� ������� ��� ������!','����� ������ ��� ��������!');
const existsLgots            :array[1..2] of string=('���� ����� ��� ������!','����� ������ ��� ��������!');

const YesFromBufferCaption    :array[1..2] of string=('� ������','�� ������');
const NoFromBufferCaption     :array[1..2] of string=('������','�������');

const wfLoadPackage_Const    :array[1..2] of string=('�������! ��� ����� �� ������������ ������!','�����, ���� ����� � �������� ������!');
const wfLocateFunction_Const :array[1..2] of string=('�������! ��� ����� �������!','�����, ���� ����� �������!');
const wfSelectData_Const     :array[1..2] of string=('�������! ��� ����� �����!','�����, ���� ����� ������!');
const wfPrepareData_Const    :array[1..2] of string=('�������! ��� ��������� �����!','�����, ���� ���������� ������!');

const bs_warning_PercentSum  :array[1..2] of string=('���� �� ��������� �� ������� ������������ 100 % !','����� �� ��������� �� ������ ��������� 100 % !');
const bs_warning_StageOpl    :array[1..2] of string=('�������� ����� ��������� ���, �� ���������� �� ��������!','������� ���������� ��������� ����������� � ������������!');


const bs_warningVvod_Percent        :array[1..2] of string=('³������ �������� ������!','������� ������ �������!');
const bs_warningVvod_Code           :array[1..2] of string=('��� �������� ������!','��� ������ �������!');
const bs_warningVvod_Razdel         :array[1..2] of string=('��� ������ �������� ������! ������ ������ �� ����.','��� ������� ������ �������! ������� ������� �� ����������.');
const bs_warningVvod_Stat           :array[1..2] of string=('��� ����� �������� ������! ���� ����� �� ����.','��� ������ ������ �������! ������ ������ �� ����������.');
const bs_warningVvod_Kekv           :array[1..2] of string=('��� ���� �������� ������! ������ ���� �� ����.','��� ���� ������ �������! ������� ���� �� ����������.');
const bs_warningVvod_Smeta          :array[1..2] of string=('��� ��������� �������� ������! ������ ��������� �� ����.','��� ����� ������ �������! ������ ����� �� ����������.');
const bs_warning_PercentMoreThen100 :array[1..2] of string=('³������ �� ���� ���� ����, �� 100%','������� �� ����� ���� ����� 100 %');
const bs_warning_SmRozdStat         :array[1..2] of string=('���������� ��������-�����-������ ������!','��������� �����-������-������ �������!');

const bs_warning_SummaNotSame       :array[1..2] of string=('���� �������� �� ������� � ����������!', '����� �������� �� ��������� � ���������!');

const bs_warning_Delete             :array[1..2] of string=('�� ����� ������ �������� ��� �����?','�� ������������� ������ ������� ��� ������?');
const bs_warning_Execute            :array[1..2] of string=('�� ����� ������ �������� �� ��?','�� ������������� ������ ��������� ��� ��������?');

const bs_warning_Preyskurant        :array[1..2] of string=('������� �������� �� ������ ����������� �� ��������. ������ ������� � ������������?','��������� �������� �� ������ ���������� �� �������. ������ ������� �� ������������?');

const  bs_Faculty_Need              :array[1..2] of String=('��������� ��������� ���������!','���������� ��������� ���������!');
const  bs_Spec_Need                 :array[1..2] of String=('��������� ��������� �����������!','���������� ��������� �������������!');
const  bs_Group_Need                :array[1..2] of String=('��������� ��������� �����!','���������� ��������� ������!');
const  bs_FormStud_Need             :array[1..2] of String=('��������� ��������� ����� ��������!','���������� ��������� ����� ��������!');
const  bs_KatStud_Need              :array[1..2] of String=('��������� ��������� �������� ��������!','���������� ��������� ��������� ��������!');
const  bs_National_Need             :array[1..2] of String=('��������� ��������� ������������!','���������� ��������� �����������!');
const  bs_DateBeg_Need              :array[1..2] of String=('��������� ��������� ���� �������!','���������� ��������� ���� ������!');
const  bs_DateEnd_Need              :array[1..2] of String=('��������� ��������� ���� ���������!','���������� ��������� ���� ���������!');
const  bs_Sum_Need                  :array[1..2] of String=('��������� ��������� ����!','���������� ��������� �����!');
const  bs_AllData_Need              :array[1..2] of String=('��������� ��������� �� ���!','���������� ��������� ��� ������!');

const  bs_Dates_Prohibition         :array[1..2] of String=('���� ������� �� ���� ���� ����, �� ���� ���������!','���� ������ �� ����� ���� ������ ���� ���������!');
const  bs_SummaNotNul_Prohibition   :array[1..2] of String=('���� �� ���� ���� ��������!', '����� �� ����� ���� �������!');
const  bs_Period_Prohibition        :array[1..2] of String=('���� ��������� ������ �� ����� 䳿 ���������!', '���� ��������� ����� �� ������ �������� ���������!');

const  bs_no_actual_price           :array[1..2] of String=('���� ��������� ����','��� ���������� ������');

{������}
const  bs_lg_DateNakaz_Need         :array[1..2] of String=('��������� ��������� ���� ������!','���������� ��������� ���� �������!');
const  bs_lg_NomNakaz_Need          :array[1..2] of String=('��������� ��������� ����� ������!','���������� ��������� ����� �������!');
const  bs_lg_SumPerc_Need           :array[1..2] of String=('��������� ��������� ���� �� ������� !','���������� ��������� ����� ��� �������!');
const  bs_lg_DateBeg_Need           :array[1..2] of String=('��������� ��������� ���� �������!','���������� ��������� ���� ������!');
const  bs_lg_DateEnd_Need           :array[1..2] of String=('��������� ��������� ���� ���������!','���������� ��������� ���� ���������!');

const  bs_PercentPeriods_Cross      :array[1..2] of String=('������ � ��������� �������������!','������� � ���������� ������������!');
const  bs_SummaPeriods_Cross        :array[1..2] of String=('������ � ������ �������������!','������� � ������� ������������!');
const  bs_PercentMore100            :array[1..2] of String=('³������ �� ���� ������������ 100%!','������� �� ����� ��������� 100%!');

const  bs_ShortcutWhosCreate        :array[1..2] of String=('������ ���� ������ �������� �: ','������ ���� ������� ������� �: ');

const  bs_DateDiss_Need             :array[1..2] of String=('��������� ��������� ���� ��������� ���������!','���������� ��������� ���� ����������� ���������!');
const  bs_DateOrder_Need            :array[1..2] of String=('��������� ��������� ���� ������!','���������� ��������� ���� �������!');
const  bs_NumOrder_Need             :array[1..2] of String=('��������� ��������� ����� ������!','���������� ��������� ����� �������!');

const  bs_NoDeleteContract          :array[1..2] of String=('��������� ��������. �� ���������� ��� ���� ������.','���������� �������. �� ��������� ��� ���� ������.');
const  bs_CheckNumDogFalse          :array[1..2] of String=('�������� � ����� ������� ��� ����!','�������� � ����� ������� ��� ����������!');

const  bs_NotHaveRights             :array[1..2] of String=('�� �� ���� ����������� ��� ��������� ���� 䳿!', '� ��� ��� ���� ��� ������������� ������� ��������!');
const  bs_GoToAdmin                 :array[1..2] of String=('��������� �� ������������.','���������� � ��������������.');
const  bs_ActionDenied              :array[1..2] of String=('ĳ� ����������','�������� ���������');

const  bs_Name_Need                 :array[1..2] of String=('��������� ��������� ������������ !','���������� ��������� ������������!');
const  bs_ShortName_Need            :array[1..2] of String=('��������� ��������� ������� ������������ !','���������� ��������� ������� ������������!');
const  bs_Exec_Need                 :array[1..2] of String=('��������� ��������� ������ �������������!','���������� ��������� ��������� ��������������!');
const  bs_Dekan_Need                :array[1..2] of String=('��������� ��������� ϲ� �������������!','���������� ��������� ��� ��������������!');

const  bs_NonDeleteDependet         :array[1..2] of String=('��������� �������� - ����� �� ������ ������','���������� ������� - ������ ����� ��������� ������');

const  bs_DelAll_Caption            :array[1..2] of String=('�������� ��','������� ���');
const  bs_DelAll_Promt              :array[1..2] of String=('�� ����� ������ �������� �� ������ � ������� ?','�� ������������� ������� ������� ��� ������ �� �������?');
const  bs_Accounts_Need             :array[1..2] of String=('��������� ��������� ������������� �������!','���������� ��������� ��������� ����!');

const  bs_Some_Need                 :array[1..2] of String=('������� ���������� ����� �����. �� �� ���� ��������','������ ���������� ������ �����. �� ��� ���� ���������');
const  bs_NotChangeRaport           :array[1..2] of String=('ĳ� ����������. ������ ��� ���������.','�������� ���������. ������ ��� ��������.');
const  bs_MoreDateStart             :array[1..2] of String=('���� ������� �� ������� ���� �����, �� ���� ������� �������!',
                                                            '���� ������ �� ������ ���� ����� ���� ������� �������!');

const  bs_NoDateBegVSBegRozbivka   :array[1..2] of String=('���� ������� ��������� �� �������� � ���������� ����� �������� �� �������� �����',
                                                           '���� ������ ��������� �� ��������� � ��������� ����� �������� �� �������� �����');
const  bs_NoDateEndVSEndRozbivka   :array[1..2] of String=('���� ��������� ��������� �� �������� � ������� ����� �������� �� �������� �����',
                                                           '���� ��������� ��������� �� ��������� � �������� ����� �������� �� �������� �����');

const  bs_PeriodsLessDateStart     :array[1..2] of String=('���� �� �������� ������ ���� �����, �� ���� ������ �������!','���� �� �������� ����� ������ ���� ������, ��� ���� ������� �������!');

const  bs_DateBegNeedMoreDateEnd   :array[1..2] of String=('���� ��������� ������� ���� ������, �� ���� �������!','���� ��������� ������ ���� ������ ���� ������!');
const  bs_DatesExists              :array[1..2] of String=('��� ������ ����� �������� � ����������� ������ ������� �� ���������!','��� ���������� ������ �������� � ������������ ������ ������ � ���������!');

const  bs_AcademicPeriodsCheck     :array[1..2] of String=('����� �� ���� ������������ 1 ���������� ��!','������ �� ����� ��������� 1 ������������� ���!');

const  bs_record_exist             :array[1..2] of String=('����� ����� ��� ���� !','����� ������ ��� ���������� !');
const  bs_smet_Need                :array[1..2] of String=('������ �� ����������. ���������� ?','������ �� �����������. ���������� ?');

const  bs_NotCorrectCode           :array[1..2] of String=('������� ������� ���', '������ �������� ���');
const  bs_NotCorrectSmeta          :array[1..2] of String=('��� ��������� ������� ������. ������ ��������� �� ����', '��� ����� ������ �������. ������ �����  �� ����������');
const  bs_NotCorrectRazdel         :array[1..2] of String=('��� ������ ������� ������. ������ ������ �� ����', '��� ������� ������ �������. ������� ������� �� ����������');
const  bs_NotCorrectStat           :array[1..2] of String=('��� ����� ������� ������. ���� ����� �� ����', '��� ������ ������ �������. ������ ������ �� ����������');
const  bs_NotCorrectKekv           :array[1..2] of String=('��� ���� ������� ������. ������ ���� �� ����', '��� ���� ������ �������. ������� ���� �� ����������');

const  bs_NeedNumber_Smeta  :array[1..2] of String=('������ ����� ���������', '������� ����� �����');
const  bs_NeedNumber_Razdel :array[1..2] of String=('������ ����� ������', '������� ����� �������');
const  bs_NeedNumber_Stat   :array[1..2] of String=('������ ����� �����', '������� ����� ������');
const  bs_NeedNumber_KEKV   :array[1..2] of String=('������ ����� ����', '������� ����� ����');
const  bs_NotCorrect_summa  :array[1..2] of String=('���� ���������� ������� ������', '����� ���������� ������� �������');
const  bs_NotNull_Summa     :array[1..2] of String=('���� ���������� �� ���� ���� ��������', '����� ���������� �� ����� ���� �������');
const  bs_mess_Code_need    :array[1..2] of String=('�������� ��� �� �����', '������ �������� ���');
const  bs_NotCorrect_Istoch :array[1..2] of String=('���������� ��������-�����-������ ������� ������. ������ ����', '��������� �����-������-������ �������. ������� ���������');


const bs_NeedFillAllField  : array[1..2] of String=('��������� ��������� �� ����!', '���������� ��������� ��� ����!');

//----------------------���������� ����� ���������
 const bs_hydrometer_type_del  : array[1..2] of String=('�� ����� ������ �������� ��� �������', '�� ������������� ������ ������� ��� ��������');

//----------------------���������� ����� ���������
const bs_hydrometer_vid_del  : array[1..2] of String=('�� ����� ������ �������� ��� �������', '�� ������������� ������ ������� ��� ��������');

//----------------------���������� ����� ���������
 const bs_document_type_del  : array[1..2] of String=('�� ����� ������ �������� ��� ���������', '�� ������������� ������ ������� ��� ���������');

implementation

end.
