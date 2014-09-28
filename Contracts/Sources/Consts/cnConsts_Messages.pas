unit cnConsts_Messages;

interface

const cn_Error               :array[1..2] of String=('�������!','������!');
const OkBtnCaption           :array[1..2] of string=('��','��');
const CancelBtnCaption       :array[1..2] of string=('³������','��������');
const YesBtnCaption          :array[1..2] of string=('���','��');
const NoBtnCaption           :array[1..2] of string=('ͳ','���');
const AbortBtnCaption        :array[1..2] of string=('���������','��������');
const RetryBtnCaption        :array[1..2] of string=('���������','���������');
const IgnoreBtnCaption       :array[1..2] of string=('����������','����������');
const AllBtnCaption          :array[1..2] of string=('��','���');
const NowBtnCaption          :array[1..2] of string=('������','�������');
const NeverBtnCaption        :array[1..2] of string=('�����','�������');
const HelpBtnCaption         :array[1..2] of string=('��������','������');
const NoToAllBtnCaption      :array[1..2] of string=('ͳ ��� ���','��� ��� ����');
const YesToAllBtnCaption     :array[1..2] of string=('��� ��� ���','�� ��� ����');

const YesFromBufferCaption    :array[1..2] of string=('� ������','�� ������');
const NoFromBufferCaption     :array[1..2] of string=('������','�������');

const wfLoadPackage_Const    :array[1..2] of string=('�������! ��� ����� �� ������������ ������!','�����, ���� ����� � �������� ������!');
const wfLocateFunction_Const :array[1..2] of string=('�������! ��� ����� �������!','�����, ���� ����� �������!');
const wfSelectData_Const     :array[1..2] of string=('�������! ��� ����� �����!','�����, ���� ����� ������!');
const wfPrepareData_Const    :array[1..2] of string=('�������! ��� ��������� �����!','�����, ���� ���������� ������!');

const cn_warning_PercentSum  :array[1..2] of string=('���� �� ��������� �� ������� ������������ 100 % !','����� �� ��������� �� ������ ��������� 100 % !');
const cn_warning_StageOpl    :array[1..2] of string=('�������� ����� ��������� ���, �� ���������� �� ��������!','������� ���������� ��������� ����������� � ������������!');


const cn_warningVvod_Percent        :array[1..2] of string=('³������ �������� ������!','������� ������ �������!');
const cn_warningVvod_Code           :array[1..2] of string=('��� �������� ������!','��� ������ �������!');
const cn_warningVvod_Razdel         :array[1..2] of string=('��� ������ �������� ������! ������ ������ �� ����.','��� ������� ������ �������! ������� ������� �� ����������.');
const cn_warningVvod_Stat           :array[1..2] of string=('��� ����� �������� ������! ���� ����� �� ����.','��� ������ ������ �������! ������ ������ �� ����������.');
const cn_warningVvod_Kekv           :array[1..2] of string=('��� ���� �������� ������! ������ ���� �� ����.','��� ���� ������ �������! ������� ���� �� ����������.');
const cn_warningVvod_Smeta          :array[1..2] of string=('��� ��������� �������� ������! ������ ��������� �� ����.','��� ����� ������ �������! ������ ����� �� ����������.');
const cn_warning_PercentMoreThen100 :array[1..2] of string=('³������ �� ���� ���� ����, �� 100%','������� �� ����� ���� ����� 100 %');
const cn_warning_SmRozdStat         :array[1..2] of string=('���������� ��������-�����-������ ������!','��������� �����-������-������ �������!');

const cn_warning_SummaNotSame       :array[1..2] of string=('���� �������� �� ������� � ����������!', '����� �������� �� ��������� � ���������!');

const cn_warning_Delete             :array[1..2] of string=('�� ����� ������ �������� ��� �����?','�� ������������� ������ ������� ��� ������?');
const cn_warning_Execute            :array[1..2] of string=('�� ����� ������ �������� �� ��?','�� ������������� ������ ��������� ��� ��������?');

const cn_warning_Preyskurant        :array[1..2] of string=('������� �������� �� ������ ����������� �� ��������. ������ ������� � ������������?','��������� �������� �� ������ ���������� �� �������. ������ ������� �� ������������?');

const  cn_Faculty_Need              :array[1..2] of String=('��������� ��������� ���������!','���������� ��������� ���������!');
const  cn_Spec_Need                 :array[1..2] of String=('��������� ��������� �����������!','���������� ��������� �������������!');
const  cn_Group_Need                :array[1..2] of String=('��������� ��������� �����!','���������� ��������� ������!');
const  cn_FormStud_Need             :array[1..2] of String=('��������� ��������� ����� ��������!','���������� ��������� ����� ��������!');
const  cn_KatStud_Need              :array[1..2] of String=('��������� ��������� �������� ��������!','���������� ��������� ��������� ��������!');
const  cn_National_Need             :array[1..2] of String=('��������� ��������� ������������!','���������� ��������� �����������!');
const  cn_DateBeg_Need              :array[1..2] of String=('��������� ��������� ���� �������!','���������� ��������� ���� ������!');
const  cn_DateEnd_Need              :array[1..2] of String=('��������� ��������� ���� ���������!','���������� ��������� ���� ���������!');
const  cn_Sum_Need                  :array[1..2] of String=('��������� ��������� ����!','���������� ��������� �����!');
const  cn_AllData_Need              :array[1..2] of String=('��������� ��������� �� ��� �� ����������!','���������� ��������� ��� ������ �� ���������!');

const  cn_Dates_Prohibition         :array[1..2] of String=('���� ������� �� ���� ���� ����, �� ���� ���������!','���� ������ �� ����� ���� ������ ���� ���������!');
const  cn_SummaNotNul_Prohibition   :array[1..2] of String=('���� �� ���� ���� ��������!', '����� �� ����� ���� �������!');
const  cn_Period_Prohibition        :array[1..2] of String=('���� ��������� ������ �� ����� 䳿 ���������!', '���� ��������� ����� �� ������ �������� ���������!');

const  cn_no_actual_price           :array[1..2] of String=('���� ��������� ����','��� ���������� ������');

{������}
const  cn_lg_DateNakaz_Need         :array[1..2] of String=('��������� ��������� ���� ������!','���������� ��������� ���� �������!');
const  cn_lg_NomNakaz_Need          :array[1..2] of String=('��������� ��������� ����� ������!','���������� ��������� ����� �������!');
const  cn_lg_SumPerc_Need           :array[1..2] of String=('��������� ��������� ���� �� ������� !','���������� ��������� ����� ��� �������!');
const  cn_lg_DateBeg_Need           :array[1..2] of String=('��������� ��������� ���� �������!','���������� ��������� ���� ������!');
const  cn_lg_DateEnd_Need           :array[1..2] of String=('��������� ��������� ���� ���������!','���������� ��������� ���� ���������!');

const  cn_PercentPeriods_Cross      :array[1..2] of String=('������ � ��������� �������������!','������� � ���������� ������������!');
const  cn_SummaPeriods_Cross        :array[1..2] of String=('������ � ������ �������������!','������� � ������� ������������!');
const  cn_PercentMore100            :array[1..2] of String=('³������ �� ���� ������������ 100%!','������� �� ����� ��������� 100%!');

const  cn_ShortcutWhosCreate        :array[1..2] of String=('������ ���� ������ �������� �: ','������ ���� ������� ������� �: ');

const  cn_DateDiss_Need             :array[1..2] of String=('��������� ��������� ���� ��������� ���������!','���������� ��������� ���� ����������� ���������!');
const  cn_DateOrder_Need            :array[1..2] of String=('��������� ��������� ���� ������!','���������� ��������� ���� �������!');
const  cn_NumOrder_Need             :array[1..2] of String=('��������� ��������� ����� ������!','���������� ��������� ����� �������!');

const  cn_NoDeleteContract          :array[1..2] of String=('��������� ��������. �� ���������� ��� ���� ������.','���������� �������. �� ��������� ��� ���� ������.');
const  cn_CheckNumDogFalse          :array[1..2] of String=('�������� � ����� ������� ��� ����!','�������� � ����� ������� ��� ����������!');

const  cn_NotHaveRights             :array[1..2] of String=('�� �� ���� ����������� ��� ��������� ���� 䳿!',
                                                            '� ��� ��� ���� ��� ������������� ������� ��������!');
const  cn_GoToAdmin                 :array[1..2] of String=('��������� �� ������������.','���������� � ��������������.');
const  cn_ActionDenied              :array[1..2] of String=('ĳ� ����������','�������� ���������');

const  cn_Name_Need                 :array[1..2] of String=('��������� ��������� ������������ !','���������� ��������� ������������!');
const  cn_ShortName_Need            :array[1..2] of String=('��������� ��������� ������� ������������ !','���������� ��������� ������� ������������!');
const  cn_Exec_Need                 :array[1..2] of String=('��������� ��������� ������ �������������!','���������� ��������� ��������� ��������������!');
const  cn_Dekan_Need                :array[1..2] of String=('��������� ��������� ϲ� �������������!','���������� ��������� ��� ��������������!');

const  cn_NonDeleteDependet         :array[1..2] of String=('��������� �������� - ����� �� ������ ������','���������� ������� - ������ ����� ��������� ������');

const  cn_DelAll_Caption            :array[1..2] of String=('�������� ��','������� ���');
const  cn_DelAll_Promt              :array[1..2] of String=('�� ����� ������ �������� �� ������ � ������� ?','�� ������������� ������� ������� ��� ������ �� �������?');
const  cn_Accounts_Need             :array[1..2] of String=('��������� ��������� ������������� �������!','���������� ��������� ��������� ����!');

const  cn_Some_Need                 :array[1..2] of String=('������� ���������� ����� �����. �� �� ���� ��������','������ ���������� ������ �����. �� ��� ���� ���������');
const  cn_NotChangeRaport           :array[1..2] of String=('ĳ� ����������. ������ ��� ���������.','�������� ���������. ������ ��� ��������.');
const  cn_MoreDateStart             :array[1..2] of String=('���� ������� �� ������� ���� �����, �� ���� ������� �������!',
                                                            '���� ������ �� ������ ���� ����� ���� ������� �������!');

const  cn_NoDateBegVSBegRozbivka   :array[1..2] of String=('���� ������� ��������� �� �������� � ���������� ����� �������� �� �������� �����',
                                                           '���� ������ ��������� �� ��������� � ��������� ����� �������� �� �������� �����');
const  cn_NoDateEndVSEndRozbivka   :array[1..2] of String=('���� ��������� ��������� �� �������� � ������� ����� �������� �� �������� �����',
                                                           '���� ��������� ��������� �� ��������� � �������� ����� �������� �� �������� �����');

const  cn_PeriodsLessDateStart     :array[1..2] of String=('���� �� �������� ������ ���� �����, �� ���� ������ �������!','���� �� �������� ����� ������ ���� ������, ��� ���� ������� �������!');

const  cn_DateBegNeedMoreDateEnd   :array[1..2] of String=('���� ��������� ������� ���� ������, �� ���� �������!','���� ��������� ������ ���� ������ ���� ������!');
const  cn_DatesExists              :array[1..2] of String=('��� ������ ����� �������� � ����������� ������ ������� �� ���������!','��� ���������� ������ �������� � ������������ ������ ������ � ���������!');

const  cn_AcademicPeriodsCheck     :array[1..2] of String=('����� �� ���� ������������ 1 ���������� ��!','������ �� ����� ��������� 1 ������������� ���!');

const  cn_record_exist             :array[1..2] of String=('����� ����� ��� ����!','����� ������ ��� ����������!');
const  cn_smet_Need                :array[1..2] of String=('������ �� ����������. ���������� ?','������ �� �����������. ���������� ?');

{const  cn_ _Need                    :array[1..2] of String=('��������� ��������� !','���������� ��������� !');
const  cn_ _Need                    :array[1..2] of String=('��������� ��������� !','���������� ��������� !');
}

implementation

end.
