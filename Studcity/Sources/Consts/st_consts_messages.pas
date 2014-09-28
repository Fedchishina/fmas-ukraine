unit st_Consts_Messages;

interface

const st_Error               :array[1..2] of String=('�������!','������!');
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

const st_warning_PercentSum  :array[1..2] of string=('���� �� ��������� �� ������� ������������ 100 % !','����� �� ��������� �� ������ ��������� 100 % !');
const st_warning_StageOpl    :array[1..2] of string=('�������� ����� ��������� ���, �� ���������� �� ��������!','������� ���������� ��������� ����������� � ������������!');


const st_warningVvod_Percent        :array[1..2] of string=('³������ �������� ������!','������� ������ �������!');
const st_warningVvod_Code           :array[1..2] of string=('��� �������� ������!','��� ������ �������!');
const st_warningVvod_Razdel         :array[1..2] of string=('��� ������ �������� ������! ������ ������ �� ����.','��� ������� ������ �������! ������� ������� �� ����������.');
const st_warningVvod_Stat           :array[1..2] of string=('��� ����� �������� ������! ���� ����� �� ����.','��� ������ ������ �������! ������ ������ �� ����������.');
const st_warningVvod_Kekv           :array[1..2] of string=('��� ���� �������� ������! ������ ���� �� ����.','��� ���� ������ �������! ������� ���� �� ����������.');
const st_warningVvod_Smeta          :array[1..2] of string=('��� ��������� �������� ������! ������ ��������� �� ����.','��� ����� ������ �������! ������ ����� �� ����������.');
const st_warning_PercentMoreThen100 :array[1..2] of string=('³������ �� ���� ���� ����, �� 100%','������� �� ����� ���� ����� 100 %');
const st_warning_SmRozdStat         :array[1..2] of string=('���������� ��������-�����-������ ������!','��������� �����-������-������ �������!');

const st_warning_SummaNotSame       :array[1..2] of string=('���� �������� �� ������� � ����������!', '����� �������� �� ��������� � ���������!');

const st_warning_Delete             :array[1..2] of string=('�� ����� ������ �������� ��� �����?','�� ������������� ������ ������� ��� ������?');
const st_warning_Execute            :array[1..2] of string=('�� ����� ������ �������� �� ��?','�� ������������� ������ ��������� ��� ��������?');

const st_warning_Preyskurant        :array[1..2] of string=('������� �������� �� ������ ����������� �� ��������. ������ ������� � ������������?','��������� �������� �� ������ ���������� �� �������. ������ ������� �� ������������?');

const  st_Faculty_Need              :array[1..2] of String=('��������� ��������� ���������!','���������� ��������� ���������!');
const  st_Spec_Need                 :array[1..2] of String=('��������� ��������� �����������!','���������� ��������� �������������!');
const  st_Group_Need                :array[1..2] of String=('��������� ��������� �����!','���������� ��������� ������!');
const  st_FormStud_Need             :array[1..2] of String=('��������� ��������� ����� ��������!','���������� ��������� ����� ��������!');
const  st_KatStud_Need              :array[1..2] of String=('��������� ��������� �������� ��������!','���������� ��������� ��������� ��������!');
const  st_National_Need             :array[1..2] of String=('��������� ��������� ������������!','���������� ��������� �����������!');
const  st_DateBeg_Need              :array[1..2] of String=('��������� ��������� ���� �������!','���������� ��������� ���� ������!');
const  st_DateEnd_Need              :array[1..2] of String=('��������� ��������� ���� ���������!','���������� ��������� ���� ���������!');
const  st_Sum_Need                  :array[1..2] of String=('��������� ��������� ����!','���������� ��������� �����!');
const  st_AllData_Need              :array[1..2] of String=('��������� ��������� �� ��� �� ����������!','���������� ��������� ��� ������ �� ���������!');

const  st_Dates_Prohibition         :array[1..2] of String=('���� ������� �� ���� ���� ����, �� ���� ���������!','���� ������ �� ����� ���� ������ ���� ���������!');
const  st_SummaNotNul_Prohibition   :array[1..2] of String=('���� �� ���� ���� ��������!', '����� �� ����� ���� �������!');
const  st_Period_Prohibition        :array[1..2] of String=('���� ��������� ������ �� ����� 䳿 ���������!', '���� ��������� ����� �� ������ �������� ���������!');

const  st_no_actual_price           :array[1..2] of String=('���� ��������� ����','��� ���������� ������');

{������}
const  st_lg_DateNakaz_Need         :array[1..2] of String=('��������� ��������� ���� ������!','���������� ��������� ���� �������!');
const  st_lg_NomNakaz_Need          :array[1..2] of String=('��������� ��������� ����� ������!','���������� ��������� ����� �������!');
const  st_lg_SumPerc_Need           :array[1..2] of String=('��������� ��������� ���� �� ������� !','���������� ��������� ����� ��� �������!');
const  st_lg_DateBeg_Need           :array[1..2] of String=('��������� ��������� ���� �������!','���������� ��������� ���� ������!');
const  st_lg_DateEnd_Need           :array[1..2] of String=('��������� ��������� ���� ���������!','���������� ��������� ���� ���������!');

const  st_PercentPeriods_Cross      :array[1..2] of String=('������ � ��������� �������������!','������� � ���������� ������������!');
const  st_SummaPeriods_Cross        :array[1..2] of String=('������ � ������ �������������!','������� � ������� ������������!');
const  st_PercentMore100            :array[1..2] of String=('³������ �� ���� ������������ 100%!','������� �� ����� ��������� 100%!');

const  st_ShortcutWhosCreate        :array[1..2] of String=('������ ���� ������ �������� �: ','������ ���� ������� ������� �: ');

const  st_DateDiss_Need             :array[1..2] of String=('��������� ��������� ���� ��������� ���������!','���������� ��������� ���� ����������� ���������!');
const  st_DateOrder_Need            :array[1..2] of String=('��������� ��������� ���� ������!','���������� ��������� ���� �������!');
const  st_NumOrder_Need             :array[1..2] of String=('��������� ��������� ����� ������!','���������� ��������� ����� �������!');

const  st_NoDeleteContract          :array[1..2] of String=('��������� ��������. �� ���������� ��� ���� ������.','���������� �������. �� ��������� ��� ���� ������.');
const  st_CheckNumDogFalse          :array[1..2] of String=('�������� � ����� ������� ��� ����!','�������� � ����� ������� ��� ����������!');

const  st_NotHaveRights             :array[1..2] of String=('�� �� ���� ����������� ��� ��������� ���� 䳿!',
                                                            '� ��� ��� ���� ��� ������������� ������� ��������!');
const  st_GoToAdmin                 :array[1..2] of String=('��������� �� ������������.','���������� � ��������������.');
const  st_ActionDenied              :array[1..2] of String=('ĳ� ����������','�������� ���������');

const  st_Name_Need                 :array[1..2] of String=('��������� ��������� ������������ !','���������� ��������� ������������!');
const  st_ShortName_Need            :array[1..2] of String=('��������� ��������� ������� ������������ !','���������� ��������� ������� ������������!');
const  st_Exec_Need                 :array[1..2] of String=('��������� ��������� ������ �������������!','���������� ��������� ��������� ��������������!');
const  st_Dekan_Need                :array[1..2] of String=('��������� ��������� ϲ� �������������!','���������� ��������� ��� ��������������!');

const  st_NonDeleteDependet         :array[1..2] of String=('��������� �������� - ����� �� ������ ������','���������� ������� - ������ ����� ��������� ������');

const  st_DelAll_Caption            :array[1..2] of String=('�������� ��','������� ���');
const  st_DelAll_Promt              :array[1..2] of String=('�� ����� ������ �������� �� ������ � ������� ?','�� ������������� ������� ������� ��� ������ �� �������?');
const  st_Accounts_Need             :array[1..2] of String=('��������� ��������� ������������� �������!','���������� ��������� ��������� ����!');

const  st_Some_Need                 :array[1..2] of String=('������� ���������� ����� �����. �� �� ���� ��������','������ ���������� ������ �����. �� ��� ���� ���������');
const  st_NotChangeRaport           :array[1..2] of String=('ĳ� ����������. ������ ��� ���������.','�������� ���������. ������ ��� ��������.');
const  st_MoreDateStart             :array[1..2] of String=('���� ������� �� ������� ���� �����, �� ���� ������� �������!',
                                                            '���� ������ �� ������ ���� ����� ���� ������� �������!');

const  st_NoDateBegVSBegRozbivka   :array[1..2] of String=('���� ������� ��������� �� �������� � ���������� ����� �������� �� �������� �����',
                                                           '���� ������ ��������� �� ��������� � ��������� ����� �������� �� �������� �����');
const  st_NoDateEndVSEndRozbivka   :array[1..2] of String=('���� ��������� ��������� �� �������� � ������� ����� �������� �� �������� �����',
                                                           '���� ��������� ��������� �� ��������� � �������� ����� �������� �� �������� �����');

const  st_PeriodsLessDateStart     :array[1..2] of String=('���� �� �������� ������ ���� �����, �� ���� ������ �������!','���� �� �������� ����� ������ ���� ������, ��� ���� ������� �������!');

const  st_DateBegNeedMoreDateEnd   :array[1..2] of String=('���� ��������� ������� ���� ������, �� ���� �������!','���� ��������� ������ ���� ������ ���� ������!');
const  st_DatesExists              :array[1..2] of String=('��� ������ ����� �������� � ����������� ������ ������� �� ���������!','��� ���������� ������ �������� � ������������ ������ ������ � ���������!');

const  st_AcademicPeriodsCheck     :array[1..2] of String=('����� �� ���� ������������ 1 ���������� ��!','������ �� ����� ��������� 1 ������������� ���!');

const  st_record_exist             :array[1..2] of String=('����� ����� ��� ����!','����� ������ ��� ����������!');
const  st_smet_Need                :array[1..2] of String=('������ �� ����������. ���������� ?','������ �� �����������. ���������� ?');

{const  st_ _Need                    :array[1..2] of String=('��������� ��������� !','���������� ��������� !');
const  st_ _Need                    :array[1..2] of String=('��������� ��������� !','���������� ��������� !');
}

implementation

end.
