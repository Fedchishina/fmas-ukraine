//------------------------------------------
// Studcity
// ���� ��������� ��������
// ���������� �.�.
//------------------------------------------
unit st_ConstUnit;

interface
{Windows}
const  st_Application                :array[1..2] of String=('�����������', '�����������');

const st_Windows_Tiltle              :array[1..2] of String=('³���','����');
const st_WindowsCacade               :array[1..2] of String=('������','������');
const st_WindowsHorizontal           :array[1..2] of String=('�������������','�������������');
const st_WindowsVertical             :array[1..2] of String=('�����������','�����������');
const st_WindowsMinimizeAll          :array[1..2] of String=('�������� ��','�������� ���');
const st_WindowsCloseAll             :array[1..2] of String=('������� ��','������� ���');
const st_WindowsOnTop                :array[1..2] of String=('³�������','������������');
{Form_Titles}
const st_Connect_Tiltle              :array[1..2] of String=('�''�������: ','����������: ');
const st_ReestrContracts_Tiltle      :array[1..2] of String=('����� ���������','������ ����������');
const st_DBInfo_Tiltle               :array[1..2] of String=('ϳ��������� �� ��','����������� � ��');
const st_FileVersion                 :array[1..2] of String=('�����: ','������: ');
const st_AssemblingVersion           :array[1..2] of String=('������: ','������: ');
const st_ConnectionInfo              :array[1..2] of String=('���������� ��� �''�������','���������� ��� �����������');
const st_ApplicationName             :array[1..2] of String=('��''� �����: ','��� ����������: ');
const st_ApplicationWay              :array[1..2] of String=('��������� �����: ','���� � ����������: ');
const st_FileVersionFull             :array[1..2] of String=('����� �����: ','������ �����: ');
const st_AssemblingDate              :array[1..2] of String=('���� ������: ','���� ������: ');
const st_DBWay                       :array[1..2] of String=('��������� ����� ��: ','���� � ���� ������: ');
const st_FilterText                  :array[1..2] of String=('������ �������','������� �������');
const st_HelpText                    :array[1..2] of String=('��������','������');
const st_ContractsReestrText         :array[1..2] of String=('����� ���������','������ ����������');
const st_NowDate_Caption             :array[1..2] of String=('�������: ','�������: ');
const st_RaschetSchet_Title          :array[1..2] of String=('������������� �������','��������� ����');
const st_PaspDataCaption             :array[1..2] of String=('�������� ���','���������� ������'); 
{LoginInfo}
const st_Login                       :array[1..2] of String=('����: ','�����: ');
const st_User                        :array[1..2] of String=('����������: ','������������: ');
const st_UserUser                    :array[1..2] of String=('����:  ','��������� (�����): ');
const st_FIOUser                     :array[1..2] of String=('ϲ�:  ','���:  ');
const st_UserRole                    :array[1..2] of String=('����� (����):  ','������ (����):  ');


const st_Hint                        :array[1..2] of String=('ϳ������ : ','��������� : ');
const st_FirstBootHint               :array[1..2] of String=('�������� ��� - ������������ ����� �Ū����ֲ� �����������','������� ������ ����� ������� ���� - �������� ����� ����������� �����������');
{Date_Formats}
const st_Year_Short                  :array[1..2] of String=(' ��.',' ��.');

{ShortCuts}
const st_HelpBtn_ShortCut            :array[1..2] of String=('F1 ', 'F1 ');
const st_InsertBtn_ShortCut          :array[1..2] of String=('Ins ', 'Ins ');
const st_EditBtn_ShortCut            :array[1..2] of String=('F2 ','F2 ');
const st_DeleteBtn_ShortCut          :array[1..2] of String=('Del ','Del ');
const st_RefreshBtn_ShortCut         :array[1..2] of String=('F5 ', 'F5 ');
const st_ExitBtn_ShortCut            :array[1..2] of String=('Esc ','Esc ');
const st_FilterBtn_ShortCut          :array[1..2] of String=('Ctrl+F ','Ctrl+F ');
const st_EnterBtn_ShortCut           :array[1..2] of String=('Enter ','Enter ');
const st_F6Btn_ShortCut              :array[1..2] of String=('F6 ','F6 ');
const st_CtrlF8Btn_ShortCut          :array[1..2] of String=('Ctrl+F8 ','Ctrl+F8 ');
const st_F9Btn_ShortCut              :array[1..2] of String=('F9 ','F9 ');
const st_F8Btn_ShortCut              :array[1..2] of String=('F8 ','F8 ');
const st_PrintBtn_ShortCut           :array[1..2] of String=('Ctrl+P ','Ctrl+P ');

{All_Actions}
const st_HelpBtn_Caption             :array[1..2] of String=('������','��������');
const st_InsertBtn_Caption           :array[1..2] of String=('������','��������');
const st_EditBtn_Caption             :array[1..2] of String=('����������','�������������');
const st_DeleteBtn_Caption           :array[1..2] of String=('��������','�������');
const st_RefreshBtn_Caption          :array[1..2] of String=('��������', '��������');
const st_ExitBtn_Caption             :array[1..2] of String=('  �����  ','  �����  ');
const st_FilterBtn_Caption           :array[1..2] of String=('Գ����','������');
const st_FilterZBtn_Caption          :array[1..2] of String=('Գ���� �','������ �');
const st_SearchBtn_Caption           :array[1..2] of String=('�����','�����');
const st_Print_Caption               :array[1..2] of String=('���������',' ������ ');
const st_Pay_Caption                 :array[1..2] of String=('������','������');
const st_Lgota_Caption               :array[1..2] of String=('ϳ����','������');
const st_EntryRest_Caption           :array[1..2] of String=('������� �������','�������� �������');
const st_History                     :array[1..2] of String=('������','�������');
const st_SelectBtn_Caption           :array[1..2] of String=('�������','�������');
const st_ViewBtn_Caption             :array[1..2] of String=('��������','��������');
const st_PropiBtn_Caption            :array[1..2] of String=('��������','��������');
const st_NarushBtn_Caption           :array[1..2] of String=('���������','���������');
const st_NakazBtn_Caption            :array[1..2] of String=('������','�������');
const st_ProgressBtn_Caption         :array[1..2] of String=('³������ ��������� ��������� ��������','������� ����������  ������� ������');
const st_SearchByIdFIOCaption        :array[1..2] of String=('�� �.�.�.','�� ���');
const st_SearchByIdNalogCaption      :array[1..2] of String=('�� ��.�����','�� ��.����');
const st_SearchByBarcodeCaption      :array[1..2] of String=('�� ����� �����','�� ����� ����'); 
const st_SpyMonutor_Caption          :array[1..2] of String=('�������� ������','���������� ������');
const st_ZaNom                       :array[1..2] of String=('�� �������', '�� ������');
const st_ZaName                      :array[1..2] of String=('�� ����.', '�� ����.');
const st_Select_Caption              :array[1..2] of String=('������� ', '�������');
const st_WhatsNew_Caption            :array[1..2] of String=('�� ������?', '��� ������?');
const st_Inc_Caption                 :array[1..2] of String=('���', '���');
const st_Inc_Hint                    :array[1..2] of String=('��������������� ����� � ������� �� ��������', '��������������� ����� � ������� �� �������');
const st_BuildNum_Caption            :array[1..2] of String=('����� �������', '����� ����');

{Hints}
const st_FioSearch_Hint              :array[1..2] of String=('Գ���� �� �������� �� ��������� �������','������ �� �������\���������� ������');
const st_ReestrFilter_Hint           :array[1..2] of String=('Գ���� �� ������� ���������','���������� �� ������� �����������');
const st_CancelFilter_Hint           :array[1..2] of String=('³������ ������','�������� ������');
const st_GoFilter_Hint               :array[1..2] of String=('����������� ������','������������� ������');
const st_NalofFilter_Hint            :array[1..2] of String=('Գ���� �� ���������� �������','������ �� ���������� ������');
const st_FIOFilter_Hint              :array[1..2] of String=('Գ���� �� ��������','������ �� �������');
const st_Combo_Hint                  :array[1..2] of String=('','������� ��������� ��� ����� ������� ���� ��.����');
const st_Subsidy_Modify              :array[1..2] of String=('������ �����䳿','�������� ��������');
const st_Lgots_Modify                :array[1..2] of String=('������ �����','�������� ������');
{const st_ Hint           :array[1..2] of String=('','');
const st_ Hint           :array[1..2] of String=('','');
}
{Confirms}
const st_Confirmation_Caption        :array[1..2] of String=('ϳ�����������','�������������');
const st_ExitPromt                   :array[1..2] of String=('�� ����� ������ �����?', '�� ������������� ������ �����?');
const st_DeletePromt                 :array[1..2] of String=('�� ����� ������ �������� �����?', '�� ������������� ������ ������� ������?');
const st_Accept                      :array[1..2] of String=('��������','�������');
const st_Cancel                      :array[1..2] of String=('³������','������');
const st_SafeData                    :array[1..2] of String=('�������� ���?','��������� ������?');
{ApplicationInitialise}
const st_Application_Caption         :array[1..2] of String=('�����������','�����������');
const st_Main_Ready_Caption          :array[1..2] of String=('�������','�����');
const st_Main_StatusBar_Caption      :array[1..2] of String=('������ ����������','������ ����������');
const st_HotKeys                     :array[1..2] of String=('������ ������','������� �������');
{MainButtons}
const st_Main_WorkBtn_Caption        :array[1..2] of String=('������','������');
const st_Main_SpravBtn_Caption       :array[1..2] of String=('��������','�����������');
const st_Main_ZvitBtn_Caption        :array[1..2] of String=('����','������');
const st_Main_SlygBtn_Caption        :array[1..2] of String=('������','������');
const st_Main_OptionsBtn_Caption     :array[1..2] of String=('�����','�����');
const st_Main_AboutBtn_Caption       :array[1..2] of String=('��� ��������','� ���������');
const st_Main_ExitBtn_Caption        :array[1..2] of String=('�����','�����');
{MainWork}
const st_Main_Registration           :array[1..2] of String=('���������','�����������');
const st_BuildRoomLook               :array[1..2] of String=('�������� ����� ��� ���������� �� ������','�������� ������ �� ���������� � ��������');
const st_ROVDList                    :array[1..2] of String=('������ ��� �� �������� ��� ���� ','������ ���� �� ��������');
const st_UniversalVisa               :array[1..2] of String=('������ ���, �� �������� ����������� ����������','������ ���, ���������� ������������� �������');
const st_SchWork                     :array[1..2] of String=('������ � ���������','������ �� �������');
const st_Subcidy                     :array[1..2] of String=('�����䳿','��������');
{SubMain}
const st_SubcidyList                 :array[1..2] of String=('������ �� �������','������ �������������');
const st_EntrySubcidyList            :array[1..2] of String=('������ ������ �� �������','����� ������ ���������������');
const st_WorkEntrySubcidyList        :array[1..2] of String=('������� ������ �� �������','��������� ������ �������������');
const st_UsersLook                   :array[1..2] of String=('�������� ������ ������������','�������� ������ �������������');
const st_ErrorsLook                  :array[1..2] of String=('�������� ������ �������','�������� ������ ������');
const st_UserInfo                    :array[1..2] of String=('���������� ��� �����������','���������� � ������������');
const st_LoginHide                   :array[1..2] of String=('������ ����','�������� �����');
const st_TrayHide                    :array[1..2] of String=('�������� � ����','����������� � ����');
const st_printsForms                 :array[1..2] of String=('������ �����','�������� �����');
const st_System                      :array[1..2] of String=('�������','�������');
const st_Site                        :array[1..2] of String=('���� ����������','���� �������������');
const st_Mail                        :array[1..2] of String=('���� �� ����������','������ �������������');
const st_Forum                       :array[1..2] of String=('�����','�����');
const st_NeedRelax                   :array[1..2] of String=('����� ��������?','����� ���������?');
const st_PaykPlay                    :array[1..2] of String=('��������� ��������� ������� "�����"!','���������� ��������� ������� "����"!');
const st_About                       :array[1..2] of String=('��� ��������','� ���������');

const st_SubSystem                   :array[1..2] of String=('ϳ�������� �����������','���������� �����������');
const st_LastCompile                 :array[1..2] of String=('������� ������ ��: ','��������� ������ ��: ');

{Errors}
const st_Error_Caption               :array[1..2] of String=('�������','������');
const st_Error_LoadBPL_Text          :array[1..2] of String=('������� ��� ����������� ������','������ ��� �������� ������');

{MainGuides}
const  st_main_fiz_lica              :array[1..2] of String=('������� �������� ���', '���������� ���������� ���');
const  st_Main_Lgot                  :array[1..2] of String=('������� ����', '���������� �����');
const  st_Main_Kat                   :array[1..2] of String=('������� �������� ������', '���������� ��������� ������');
const  st_Main_Builds                :array[1..2] of String=('������� ����������', '���������� ���������');
const  st_Main_Propi_Builds          :array[1..2] of String=('������� ����� ��������', '���������� ������� ��������');
const  st_Main_Subsidy               :array[1..2] of String=('������� �������', '���������� ��������');
const  st_Main_Pidpozdiliv           :array[1..2] of String=('������� ��������', '���������� �������������');
const  st_Main_KatClass              :array[1..2] of String=('������� ����� ��������', '���������� ������� ���������');
const  st_Main_KatType               :array[1..2] of String=('������� ���� ��������', '���������� ����� ���������');
const  st_Main_SubStage              :array[1..2] of String=('������� ����� �������', '���������� ��������� ��������');
const  st_Main_TypeRoom              :array[1..2] of String=('������� ���� �����', '���������� ����� ������');
const  st_Main_LiveInBuilds          :array[1..2] of String=('������� ���, ��� ����� � ����������', '���������� ����������� � ����������');
const  St_Services_title             :array[1..2] of string=('������� ������', '���������� �����');

{Report_name}
const st_report_lgot                 :array[1..2] of string=('��� �� ����������', '����� �� ����������');
const st_report_hist_propisk         :array[1..2] of string=('������ ����������', '������� ����������');

{Registration_Grid}
const  st_grid_FIO_Column            :array[1..2] of String=('�.�.�.', '�.�.�.');
const  st_grid_Date_Dog_Column       :array[1..2] of String=('���� ���������', '���� ����������');
const  st_grid_Num_Nalog_Column      :array[1..2] of String=('�����.�����', '�����.�����');
const  st_grid_Date_Beg              :array[1..2] of String=('���� �������', '���� ������');
const  st_grid_Date_End              :array[1..2] of String=('���� ���������', '���� ���������');
const  st_grid_Hostel                :array[1..2] of String=('����.', '���.');
const  st_grid_HostelRoom            :array[1..2] of String=('ʳ�����', '�������');


const  st_footer_Faculty             :array[1..2] of String=('���������', '���������');
const  st_footer_Spec                :array[1..2] of String=('������������', '�������������');
const  st_footer_Group               :array[1..2] of String=('�����', '������');
const  st_footer_FormStudy           :array[1..2] of String=('����� ��������', '����� ��������');
const  st_footer_Category            :array[1..2] of String=('��������', '���������');
const  st_footer_Kurs                :array[1..2] of String=('����', '����');
const  st_Gragdanstvo                :array[1..2] of String=('������������', '�����������');
const  st_Status                     :array[1..2] of String=('������', '������');
const  st_Dog                        :array[1..2] of String=('������', '�������');
const  st_Propuk                     :array[1..2] of String=('����������', '�������');

const  st_Fam                        :array[1..2] of String=('�������', '�������');
const  st_Name                       :array[1..2] of String=('��''�', '���');
const  st_Otch                       :array[1..2] of String=('�� �������', '��������');
const  st_DateBorn                   :array[1..2] of String=('���� ����������', '���� ��������');
const  st_Sex                        :array[1..2] of String=('�����', '���');
const  st_Inostr                     :array[1..2] of String=('���������', '����������');
const  st_WithPropi                  :array[1..2] of String=('� ���������', '� ���������');
const  st_PropPrint                  :array[1..2] of String=('��������� ����������', '�������� �������');
const  st_Nomer                      :array[1..2] of String=('�����', '�����');
const  st_Room                       :array[1..2] of String=('ʳ�����', '�������');
const  st_Type                       :array[1..2] of String=('���', '���');
const  st_Identify                   :array[1..2] of String=('�������������', '�������������');
const  st_Study                      :array[1..2] of String=('��������', '��������');
const  st_Pidrozdil                  :array[1..2] of String=('ϳ������', '�������������');
const  st_Live                       :array[1..2] of String=('����������', '����������');
const  st_Category                   :array[1..2] of String=('��������', '���������');
const  st_Z                          :array[1..2] of String=('�', '�');
const  st_Po                         :array[1..2] of String=('��', '��');
const  st_DogNomer                   :array[1..2] of String=('����� ��������', '����� ��������');
const  st_DogDate                    :array[1..2] of String=('���� ��������', '���� ��������');
const  st_TabNomer                   :array[1..2] of String=('���.�����', '���.�����');
const  st_NalogNomer                 :array[1..2] of String=('������.�����', '�����.�����');
const  st_CategoryAll                :array[1..2] of String=('�������', '���������');
const  st_dop_serv                   :array[1..2] of string=('���. �������','���. ������');
const  st_SubsAll                    :array[1..2] of String=('�����䳿', '��������');
const  st_LgotsAll                   :array[1..2] of String=('ϳ����', '������');
const  st_Aditional                  :array[1..2] of String=('����������', '�����������');
const  st_EntryRest                  :array[1..2] of String=('��.�������', '��.�������');
const  st_Hostel                     :array[1..2] of String=('����������', '���������');
const  st_CategoryCode               :array[1..2] of String=('��� �������', '��� ���������');
const  st_Begin                      :array[1..2] of String=('�������', '������');
const  st_End                        :array[1..2] of String=('���������', '���������');
const  st_KolVoMes                   :array[1..2] of String=('ʳ��-��� ��.', '���-�� ���.');
const  st_State                      :array[1..2] of String=('����', '���������');
const  st_Sum                        :array[1..2] of String=('����', '�����');
const  st_LgCode                     :array[1..2] of String=('��� �����', '��� ������');
const  st_PikazDate                  :array[1..2] of String=('���� ������', '���� �������');
const  st_PrikazNomer                :array[1..2] of String=('����� ������', '����� �������');
const  st_WorkPlace                  :array[1..2] of String=('̳��� ������', '����� ������');
const  st_WorkPosada                 :array[1..2] of String=('������', '���������');
const  st_Rasch                      :array[1..2] of String=('����������', '������');
const  st_IstFinance                 :array[1..2] of String=('������� ������������', '��������� ��������������');
const  st_IstFinanceHint             :array[1..2] of String=('������� ���� �����������  | ����������� �������� ���� �� ��������� ������������ ', '������� ����� �������������  | �������������� ��������� ����� �� ���������� ��������������');
const  st_HostelNomer                :array[1..2] of String=('� �������', '� ������');
const  st_RoomNomer                  :array[1..2] of String=('� ������', '� �������');
const  st_RoomType                   :array[1..2] of String=('��� ������', '��� �������');
const  st_SubType                    :array[1..2] of String=('��� �����䳿', '��� ��������');
const  st_Comments                   :array[1..2] of String=('��������', '�����������');
const  st_LgNomer                    :array[1..2] of String=('����� �����', '����� ������');
const  st_Smeta                      :array[1..2] of String=('��������', '�����');
const  st_Razdel                     :array[1..2] of String=('�����', '������');
const  st_Stat                       :array[1..2] of String=('������', '������');
const  st_KEKV                       :array[1..2] of String=('����', '����');
{Oplata_Analiz}
const  st_Form_Opl                   :array[1..2] of String=('����� ������ ������', '����� ������� ������');
const  st_Beg_Opl                    :array[1..2] of String=('������� ������', '������ �������');
const  st_End_Opl                    :array[1..2] of String=('��������� ������', '����� �������');
const  st_Summa_Opl                  :array[1..2] of String=('���� ������ �� �����, ���', '����� ������ � �����, ���');
const  st_Percent_Opl                :array[1..2] of String=('³������ ������, %', '������� ������, %');
const  st_SubsSumma_Opl              :array[1..2] of String=('���� ������� �����䳿, ���', '����� �������� ��������, ���');
const  st_MonthCount_Opl             :array[1..2] of String=('ʳ�-��� ������', '���-�� �������');
const  st_SummFinal_Opl              :array[1..2] of String=('���� ������. ���', '����� � ������, ���');
const  st_NumDoc_Pay                 :array[1..2] of String=('�������� �', '�������� �');
const  st_DateDoc_Pay                :array[1..2] of String=('���� �����.', '���� �����.');
const  st_Percent                    :array[1..2] of String=('³������', '�������');
const  st_Summa                      :array[1..2] of String=('����', '�����');
const  st_Summa_Pay                  :array[1..2] of String=('����, ���.', '�����, ���.');
const  st_Need_Pay                   :array[1..2] of String=('����� ��������:', '���� ��������:');
const  st_Was_Pay                    :array[1..2] of String=('��� ��������:', '��� ��������:');
const  st_PayPo_Pay                  :array[1..2] of String=('�������� �� ', '�������� �� ');
const  st_Now_Pay                    :array[1..2] of String=('�� ������ �� �������', '� ������ �� �������:');
const  st_Itogo_Pay                  :array[1..2] of String=('�����', '�����');
const  st_Zadolg_Pay                 :array[1..2] of String=('�������������:', '�������������:');
const  st_Hint_Pay                   :array[1..2] of String=('��������� ������ �� ��������', '��������� ������ �� �������');
{Wait_Form}
const  st_GoingWait                  :array[1..2] of String=('��� ������� ������', '���� ��������� �������');
const  st_PleaseWait                 :array[1..2] of String=('���� �����, ���������...', '����������, ���������...');

const st_Zareestr                    :array[1..2] of String=('�����������: ', '���������������: ');
const st_DateZareestr                :array[1..2] of String=('���� ���������: ', '���� �����������: ');
const st_Izmenil                     :array[1..2] of String=('�����: ', '�������:');
const st_DateIzmenil                 :array[1..2] of String=('���� �������: ', '���� ���������:');


const  st_ShortLable                 :array[1..2] of String=('����������:', '����������:');
const  st_TypeLable                  :array[1..2] of String=('���:', '���:');
const  st_ClassLable                 :array[1..2] of String=('����:', '�����:');
const  st_NameLable                  :array[1..2] of String=('������������', '������������');

{Category's}
const  st_Stud_Cat                   :array[1..2] of String=('����������� ��������', '������������ ���������');
const  st_Month_Cat                  :array[1..2] of String=('������ ��������', '������ ���������');
const  st_NoLivers_Cat               :array[1..2] of String=('��� ����������', '��� ����������');
const  st_PropiOnly_Cat              :array[1..2] of String=('ҳ���� ��������', '������ ��������');
const  st_PaySum_Cat                 :array[1..2] of String=('���� ������', '����� ������');
const  st_SubsMax_Cat                :array[1..2] of String=('����. ����.', '����. ����.');
const  st_SubsSum_Cat                :array[1..2] of String=('����. ����', '����. �����');
const  st_Sums_Cat                   :array[1..2] of String=('����', '�����');
const  st_CopyCells                  :array[1..2] of String=('��������', '����������');
const  st_CopyCellsFullName          :array[1..2] of String=('�������� �����', '���������� ������');
const  st_SubPercent                 :array[1..2] of String=('³������ �����䳿', '������� ��������');
const  st_SummaSliv                  :array[1..2] of String=('���� ����������', '����� ����������');
const  st_PercentSliv                :array[1..2] of String=('³������ ����������', '������� ����������');
const  st_SubSumma                   :array[1..2] of String=('���� �����䳿', '����� ��������');
const  st_PercentOnly                :array[1..2] of String=('³������', '�������');

{�����}
const  st_Search_Name             :array[1..2] of String=('����� �� �������������', '����� �� ������������');
const  st_Search_Num              :array[1..2] of String=('����� �� �������', '����� �� ������');
const  st_FindNow                 :array[1..2] of String=('������!', '�����!');

{Messages}
const  st_mess_NoCategoryDelete   :array[1..2] of String=('�������� ���������. ���� �������� ���������������.', '������� ����������. ������ ��������� ������������.');
const  st_mess_NoSubsidyDelete    :array[1..2] of String=('�������� ���������. ���� ������� ���������������.', '������� ����������. ������ �������� ������������.');
const  st_mess_NoSubStateDelete   :array[1..2] of String=('�������� ���������. ����� ���� �����䳿  ���������������.', '������� ����������. ������ ��������� �������� ������������.');

const  st_mess_NoItemDelete       :array[1..2] of String=('�������� ���������. ���� ������������ ���������������.', '������� ����������. ������ ������������ ������������.');

const  st_mess_Code_need          :array[1..2] of String=('�������� ��� �� �����', '������ �������� ���');
const  st_mess_ShortName_need     :array[1..2] of String=('��������� ������ ��������� �����', '���������� ������ ����������� ������������');
const  st_mess_FullName_need      :array[1..2] of String=('��������� ������ ������������', '���������� ������ ������������');
const  st_mess_TypeLive_need      :array[1..2] of String=('��������� ������� ��� ����������', '���������� ������� ��� ����������');
const  st_mess_ClassLive_need     :array[1..2] of String=('��������� ������� ���� ����������', '���������� ������� ����� ����������');
const  st_mess_Summs_need         :array[1..2] of String=('��������� ��������� ����', '���������� ��������� �����');
const  st_NotHaveRights           :array[1..2] of String=('�� �� ���� �������� ���� ��� ��������� ���� 䳿!', '� ��� ������������ ���� ��� ���������� ������� ��������.');
const  st_GoToAdmin               :array[1..2] of String=('��� ���������� ����� ����������� ��������� �� ������������.', '��� ���������� ����� ���������� ���������� � ��������������.');
const  st_ActionDenied            :array[1..2] of String=('ĳ� ����������!','�������� ���������!');

const  st_SubsName_need           :array[1..2] of String=('��������� ������ ������������ �����䳿', '���������� ������ ������������ ��������');
const  st_SubsShort_need          :array[1..2] of String=('��������� ������ ��������� ������������ �����䳿', '���������� ������ ������������ ������������ ��������');
const  st_SubsMin_need            :array[1..2] of String=('��������� ������ ��������� ����� �����䳿', '���������� ������ ����������� ������ ��������');
const  st_SubsMax_need            :array[1..2] of String=('��������� ������ ������������ ����� �����䳿', '���������� ������ ������������ ������ ��������');
const  st_SubsMonth_need          :array[1..2] of String=('��������� ������� ������', '���������� ������ ���-�� �������');
const  st_SubsMinNotCorrect       :array[1..2] of String=('̳�������� ����� �����䳿 �������� ������', '����������� ������ �������� ������ �������');
const  st_SubsMaxNotCorrect       :array[1..2] of String=('������������ ����� �������� ������', '������������ ������ �������� ������ �������');
const  st_SubsMinMaxMore_need     :array[1..2] of String=('̳�������� ����� ������� ���� �� �����, �� ������������', '����������� ������ ������ ���� �� ������ �������������');
const  st_SubsMonthNotCorrect     :array[1..2] of String=('ʳ������ ������ ������� ������', '���-�� ������� ������� �������');

const  st_CatAddBegDate_need             :array[1..2] of String=('��������� ������ ���� �������', '���������� ������ ���� ������');
const  st_CatAddEndDate_need             :array[1..2] of String=('��������� ������ ���� ���������', '���������� ������ ���� ���������');
const  st_CatAddBegMoreEnd_need          :array[1..2] of String=('���� ������� ������� ���� ������, �� ���� ���������', '���� ������ ������ ���� ������ ���� ���������');
const  st_CatAddSummNotCorrect           :array[1..2] of String=('���� ������� ������', '����� ������� �������');
const  st_CatAddSubsSumNotCorrect        :array[1..2] of String=('����. ���� ������� ������', '����. ����� ������� �������');
const  st_CatAddIstFinaceNotCorrect      :array[1..2] of String=('��������� ������ ������� ������������', '���������� ������ ��������� ��������������');
const  st_CatAddSumPercSubsNotCorrect    :array[1..2] of String=('�������� ������� �� ��������� �� ���� ������������ (�� ���� �����) 100%. ������ ����.', '��������� ������� �� ��������� �� ����� ��������� (���� ���� �����) 100%. ������� ���������');
const  st_CatAddSumPercOtchNotCorrect    :array[1..2] of String=('�������� ������� ���������� �� ���� ������������ (�� ���� �����) 100%. ������ ����.', '��������� ������� ���������� �� ����� ��������� (���� ���� �����) 100%. ������� ���������');
const  st_CatAddPercSubsSubSTONotCorrect :array[1..2] of String=('³������ �� ��������� �� ���� ���� ����, �� ', '������� �������� �� ����� ���� ����� 100%. ������� ���������');
const  st_CatAddFinSubsNotCorrect        :array[1..2] of String=('�������� �����䳿 �� ������� � �������� ��������� ��������. ������ ����.', '�������� �������� �� ��������� � ��������� ��������� ��������. ������� ���������');
const  st_CatAddFinSumNotCorrect         :array[1..2] of String=('�������� ���� ������ �� ������� � �������� ��������� ��������. ������ ����.', '�������� c���� ������ �� ��������� � ��������� ��������� ��������. ������� ���������');
const  st_CatAddOtchPercSTOMORE_need     :array[1..2] of String=('�������� ������� ���������� (������� �� ���������) �� ���� ������������ 100%', '��������� ������� ���������� (������� ��������) �� ����� ��������� 100%');
const  st_Percent_need                   :array[1..2] of String=('��������� ������ �������', '���������� ������ �������');
const  st_PercentNotCorrect              :array[1..2] of String=('³������ ������� ������', '������� ������ �������');
const  st_PercentMoreCTONotCorrect       :array[1..2] of String=('³������ ������� ������: �� ���� ������������ 100%', '������� ������ �������: �� ����� ��������� 100%');
const  st_CategoryDontAdd                :array[1..2] of String=('��������� ������! ��� ���� �������� � ����� �����!', '���������� ��������! ��������� � ����� ����� ��� ����������!');

const  st_SafeQuery                       :array[1..2] of String=('�������� ���?', '��������� ������ ?');
const  st_Query                           :array[1..2] of String=('�����!', '��������!');
{��������� ��������������}
const  st_1                        :array[1..2] of String=('������ ������� ����������', '������� ������� ����������');
const  st_2                        :array[1..2] of String=('������ ����� ���������', '������� ����� �����');
const  st_3                        :array[1..2] of String=('������ ����� ������', '������� ����� �������');
const  st_4                        :array[1..2] of String=('������ ����� �����', '������� ����� ������');
const  st_5                        :array[1..2] of String=('������ ����� ����', '������� ����� ����');
const  st_6                        :array[1..2] of String=('���� ���������� ������� ������', '����� ���������� ������� �������');
const  st_7                        :array[1..2] of String=('³������ ���������� ������� ������', '������� ���������� ������ �������');
const  st_8                        :array[1..2] of String=('³������ ���������� �� ���� ������������ 100%', '������� ���������� �� ����� ���� ����� 100 %');
const  st_9                        :array[1..2] of String=('³������ �� ��������� �� ���� ������������ 100%', '������� �������� �� ����� ���� ����� 100 %');
const  st_10                       :array[1..2] of String=('���� ���������� �� ���� ���� ��������', '����� ���������� �� ����� ���� �������');
const  st_11                       :array[1..2] of String=('���������� ��������-�����-������ ������� ������. ������ ����', '��������� �����-������-������ �������. ������� ���������');
const  st_NeedSum                  :array[1..2] of String=('������ ����', '������� �����');
const  st_serves                   :array[1..2] of String=('�������', '������');

const  st_CannotDelete_Lgota       :array[1..2] of String=('��������� ��������. ���� ����� ���������������.', '������� ����������. ������ ������ ������������.');
const  st_CannotDelete_Name        :array[1..2] of String=('��������� ��������. ������������ ���������������!', '���������� �������. ������������ ������������!');

{Lgots}
const  st_GosCheck                 :array[1..2] of String=('�������� �����', '��������������� ������');
const  st_MedCheck                 :array[1..2] of String=('������� �����', '����������� ������');
const  st_Gos                      :array[1..2] of String=('��������', '���������������');
const  st_Med                      :array[1..2] of String=('�������', '�����������');

const  st_LgPerc                   :array[1..2] of String=('³������ �����', '�������� ������');
const  st_Periods                  :array[1..2] of String=('������', '�������');
const  st_MinPeriod                :array[1..2] of String=('̳�. �����', '���. ������');
const  st_MaxPeriod                :array[1..2] of String=('����. �����', '����. ������');

const  st_LgCodeExists             :array[1..2] of String=('�������� ��� �������. ����� ��� ����� ��� ����', '������ �������� ���. ������ ��� ������ ��� ����������');
const  st_LgZamknytost             :array[1..2] of String=('�������� ���������� �� ��������. ������ ����', '�������� ����������� �� ��������. ������� ���������');
const  st_LgPercent_need           :array[1..2] of String=('��������� ��������� ������� �����', '���������� ��������� �������� ������');

const  st_SpravSmet                :array[1..2] of String=('���������� ������', '������������ �������');
const  st_LoadProcess              :array[1..2] of String=('������ ����� ������ ����! �� ����� ������ ��������� ������? ', '������� ������ ����� �������! �� ������������� ������ ��������� �������? ');
const  st_GoodFormuv               :array[1..2] of String=('���������� ������ ��������!', '������������ ������� ���������!');
const  st_SpravCaption             :array[1..2] of String=('���������� ������', '������������ �������');

const  st_AvtoSummaCheckBox        :array[1..2] of String=('������������ ���� �� ���������', '������������ ����� �� ���������');
const  st_Electorat                :array[1..2] of String=('���������', '���������');
const  st_ElectoratQuery           :array[1..2] of String=('�� ����� ������ ������ �� ����� �� ������ ����������?', '�� ������������� ������ �������� ����� �������� � ������ ����������?');
const  st_GoodAdd                  :array[1..2] of String=('������ ������� � ������!', '������� �������� � ������!');
const  st_ElectoratPlus            :array[1..2] of String=('������ � ������', '�������� � ������');
const  st_ElectoratMinus           :array[1..2] of String=('�������� � ������', '������� �� ������');
const  st_ElectoratQueryMinus      :array[1..2] of String=('�� ����� ������ �������� �� ����� � ������ ����������?', '�� ������������� ������ ������� ����� �������� �� ������ ����������?');
const  st_GoodRemove               :array[1..2] of String=('������ ��������� � ������!', '������� ������ �� ������!');
const  st_FullOplata               :array[1..2] of String=('�������� �������', '�������� ���������');
const  st_Short                    :array[1..2] of String=('����������', '����������');
const  st_MaxCountLivers           :array[1..2] of String=('����. ����� ������', '����. ����� �������');
const  st_SquareM2                 :array[1..2] of String=('�����, �.��.', '�������, �.��.');

{Loading_Splash}
const  st_Load_Splash              :array[1..2] of String=('������������', '��������');
const  st_ReadIni                  :array[1..2] of String=('������ ������� INI-����� ...', '������� ������ INI-����� ...');
const  st_ReadDB                   :array[1..2] of String=('������ �''������� � ����� ����� ...', '������� ���������� � ����� ������ ...');
const  st_GoodLoad                 :array[1..2] of String=('������!', '�������!');
const  st_AllMostOver              :array[1..2] of String=('����� ������ ...', '����� ������ ...');
const  st_SystemEnter              :array[1..2] of String=('���� �� �������', '���� � �������');

{Ini_Type_Room}
const  st_NeedNameRoom             :array[1..2] of String=('��������� ������ ������������ ���� ������', '���������� ������ ������������ ���� �������');
const  st_NeedMaxCount             :array[1..2] of String=('��������� ������ ����������� ������� ������', '���������� ������ ������������ ���������� �������');
const  st_NeedSquare               :array[1..2] of String=('��������� ������ ����� ������', '���������� ������ ������� �������');
const  st_CountNotValid            :array[1..2] of String=('ʳ������ ������ ������� ������', '���������� ������� ������� �������');
const  st_SquareNotValid           :array[1..2] of String=('����� ������� ������', '������� ������� �������');

const  st_MestNotValid            :array[1..2] of String=('ʳ������ ���� ������� ������', '���������� ���� ������� �������');
{Propiska}

const  st_PropVipis                :array[1..2] of String=('�������� - �������', '�������� - �������');
const  st_SafeNExit                :array[1..2] of String=('�������� �� �����', '��������� � �����');
const  st_prp_History              :array[1..2] of String=('������', '�������');
const  st_prp_Prodovg              :array[1..2] of String=('����������', '��������');
const  st_prp_Vipisat              :array[1..2] of String=('��������', '��������');
const  st_prp_MisceNarodgen        :array[1..2] of String=('̳��� ������.', '����� ����.  ');
const  st_prp_Propiska             :array[1..2] of String=('��������      ', '��������      ');
const  st_prp_Dopovnenn            :array[1..2] of String=('����������   ', '����������   ');
const  st_prp_ViyskOblik           :array[1..2] of String=('³����. ����', '�������� ����');
const  st_prp_Pass                 :array[1..2] of String=('�������       ', '�������       ');
const  st_prp_Batko                :array[1..2] of String=('������          ', '����            ');
const  st_prp_Mati                 :array[1..2] of String=('����            ', '����            ');
const  st_prp_SimStan              :array[1..2] of String=('ѳ�. ����   ', '���. �����. ');
const  st_prp_Vipiska              :array[1..2] of String=('�������        ', '�������        ');

const  st_prp_MestoNarodg          :array[1..2] of String=('̳��� ����������', '����� ��������');
const  st_prp_Kraina               :array[1..2] of String=('�����', '������');
const  st_prp_Rayon                :array[1..2] of String=('�����', '�����');
const  st_prp_Selo                 :array[1..2] of String=('����', '����');
const  st_prp_Index                :array[1..2] of String=('������', '������');

const  st_prp_WhosPropi            :array[1..2] of String=('��� ����������', '��� ��������');
const  st_prp_Vyliza               :array[1..2] of String=('������', '�����');
const  st_prp_Bydinok              :array[1..2] of String=('���.', '���');
const  st_prp_Kvartira             :array[1..2] of String=('��������', '��������');
const  st_prp_DataPribytiya        :array[1..2] of String=('���� ��������', '���� ��������');
const  st_prp_Poto4naPropiska      :array[1..2] of String=('������� ��������', '������� ��������');
const  st_prp_Po4atokPropiski      :array[1..2] of String=('������� ��������', '������ ��������');
const  st_prp_Zakin4ennyaProp      :array[1..2] of String=('��������� ��������', '��������� ��������');
const  st_prp_AdresaPropiski       :array[1..2] of String=('������ ��������', '����� ��������');
const  st_prp_DodatkovaInfo        :array[1..2] of String=('��������� ����������', '�������������� ����������');

const  st_prp_add_Info              :array[1..2] of String=('��������� ����������', '�������������� ����������');
const  st_prp_add_ProgYMisti        :array[1..2] of String=('�������� � ���� ������� �', '�������� � ����� ������ �');
const  st_prp_add_BasicResonPriizd  :array[1..2] of String=('������� ������� ������', '�������� ������� �������');
const  st_prp_add_Strok             :array[1..2] of String=('�� ���� �����', '�� ����� ����');
const  st_prp_add_BasicResonPereizd :array[1..2] of String=('������� ������� �������', '�������� ������� ��������');
const  st_prp_add_GdeRab            :array[1..2] of String=('�� ��������', '��� �������');
const  st_prp_add_Posada            :array[1..2] of String=('������', '���������');
const  st_prp_add_Osvita            :array[1..2] of String=('�����', '�����������');
const  st_prp_add_VchenStypin       :array[1..2] of String=('������ ������', '������ �������');
const  st_prp_add_Gromadyanstvo     :array[1..2] of String=('������������', '�����������');
const  st_prp_add_Nationality       :array[1..2] of String=('�������������', '��������������');
const  st_prp_add_HomePhone         :array[1..2] of String=('���.�������', '���.�������');

const  st_prp_warrior_VO            :array[1..2] of String=('³�������� ����', '�������� ����');
const  st_prp_warrior_FromRVK       :array[1..2] of String=('�� ����� ��� ������ �� ����', '�� ������ ��� ������ �� ����');
const  st_prp_warrior_Postavlen     :array[1..2] of String=('����������� �� ��������� ����', '��������� �� �������� ����');
const  st_prp_warrior_Snyat         :array[1..2] of String=('������ � ���������� ������', '���� � ��������� �����');
const  st_prp_warrior_Notes         :array[1..2] of String=('�������', '����������');

const  st_prp_pass_Pass             :array[1..2] of String=('�������', '�������');
const  st_prp_pass_History          :array[1..2] of String=('������ ��������', '������� ���������');
const  st_prp_pass_Vidan            :array[1..2] of String=('�������: ', '�����: ');
const  st_prp_pass_Date             :array[1..2] of String=('���� ��� �������: ', '���� ������: ');
const  st_prp_pass_Type             :array[1..2] of String=('���', '���');
const  st_prp_pass_Seriya           :array[1..2] of String=('����', '�����');
const  st_prp_pass_Nomer            :array[1..2] of String=('�����', '�����');
const  st_prp_Kem                   :array[1..2] of String=('��� �������', '��� �����');
const  st_prp_Kogda                 :array[1..2] of String=('���� �������', '����� �����');
const  st_prp_Pidstava              :array[1..2] of String=('ϳ������', '���������');
const  st_prp_TypeDoc               :array[1..2] of String=('��� ���������', '��� ���������');

const  st_prp_WorkPlace             :array[1..2] of String=('̳��� ������', '����� ������');
const  st_prp_WorkPhone             :array[1..2] of String=('���.�������', '���.�������');
const  st_prp_Oblast                :array[1..2] of String=('�������', '�������');
const  st_prp_Dad                   :array[1..2] of String=('������', '����');
const  st_prp_Mom                   :array[1..2] of String=('����', '����');

const  st_prp_SimStanEx               :array[1..2] of String=('ѳ������ ����', '�������� ���������');
const  st_prp_Both                  :array[1..2] of String=('����� � ��������(��������)', '������ � �������� (��)');
const  st_prp_Kinder                :array[1..2] of String=('ĳ��', '����');
const  st_prp_RodstvSvyaz           :array[1..2] of String=('������ ��''����', '����������� �����');
const  st_prp_Sex                   :array[1..2] of String=('�����', '���');
const  st_prp_TypeRS                :array[1..2] of String=('��� �����.����.', '��� ������.�����');
const  st_prp_KinderFIO             :array[1..2] of String=('ϲ� ������', '��� �������');

const  st_vip_Vip                   :array[1..2] of String=('�������', '�������');
const  st_vip_DateVip               :array[1..2] of String=('���� �������', '���� �������');
const  st_vip_ToTown                :array[1..2] of String=('����� � ���� ', '���� � ����� ');

const  st_vip_AddInfo               :array[1..2] of String=('��������� ���������� ��� �������', '�������������� ���������� � �������');
const  st_vip_ResonPereezd          :array[1..2] of String=('������� ������� �������', '�������� ������� ��������');

const  st_LongPropi_Mode            :array[1..2] of String=(' ����������� ��������-', ' ��������� ��������-');
const  st_Vip_Mode                  :array[1..2] of String=(' �������-', ' �������-');

const  st_prp_his_History           :array[1..2] of String=('������ ��������', '������� ��������');
const  st_prp_his_StanPeriody       :array[1..2] of String=('���� ��������', '��������� �������');
const  st_prp_his_DelPeriod         :array[1..2] of String=('�������� �����', '������� ������');
const  st_prp_his_Choose            :array[1..2] of String=('�������', '�������');
const  st_prp_EslinerabotalTo       :array[1..2] of String=('���� �� ��������, ��', '���� �� �������, ��');


const  st_prp_DelHisPart1           :array[1..2] of String=(
                                      '��������� ������ �������� �������� ��������� ��� ����� �� ��� �������.',
                                      '�������� ������� �������� �������� �������� ���� ������ �� ����� �������.');
const  st_prp_DelHisPart2           :array[1..2] of String=('�������� �����?', '�� �������, ��� ������ ������� ������?');
const  st_WhatsNew                  :array[1..2] of String=('�����������: ������ �����', '�����������: ������� ������');
const  st_dt_OrderNum               :array[1..2] of String=('����� ������', '����� ������');

const  st_Spisanie                  :array[1..2] of String=('������ � ����������� �� ��������', '������ � ����������� ��������');
const  st_ErrorData                 :array[1..2] of String=('������� ���������� �����', '������ ���������� ������');
const  st_NeedFio                   :array[1..2] of String=('������� ��������� �.�.�.', '���������� ��������� ���');
const  st_NeedSumma                 :array[1..2] of String=('������� ��������� ����', '���������� ��������� �����');
const  st_SummaNotSumma             :array[1..2] of String=('�������� �� ����� ���������� �� �� �����', '�������� �� ����� ��������� ��� �������');

const  st_NotCorrectCode            :array[1..2] of String=('������� ������� ���', '������ �������� ���');
const  st_NotCorrectSmeta           :array[1..2] of String=('��� ��������� ������� ������. ������ ��������� �� ����', '��� ����� ������ �������. ������ �����  �� ����������');
const  st_NotCorrectRazdel          :array[1..2] of String=('��� ������ ������� ������. ������ ������ �� ����', '��� ������� ������ �������. ������� ������� �� ����������');
const  st_NotCorrectStat            :array[1..2] of String=('��� ����� ������� ������. ���� ����� �� ����', '��� ������ ������ �������. ������ ������ �� ����������');
const  st_NotCorrectKekv            :array[1..2] of String=('��� ���� ������� ������. ������ ���� �� ����', '��� ���� ������ �������. ������� ���� �� ����������');
const  st_NotCorrectMore100Pers     :array[1..2] of String=('��������� ������ ����� 100%', '���������� ������ ����� 100%');

const  st_Language                  :array[1..2] of String=('����', '����');
const  st_RusLng                    :array[1..2] of String=('��������', '�������');
const  st_UkrLng                    :array[1..2] of String=('���������', '����������');
const  st_NeedReboot                :array[1..2] of String=('��� ��������� ��� ��������� ��������������� ��������', '��� ���������� ��������� ���������� ������������� ���������');

const  st_CatClassSprav             :array[1..2] of String=('������� ����� �������� ������ ����������', '���������� ������� ��������� ������ ����������');
const  st_CatTypeSprav              :array[1..2] of String=('������� ���� �������� ������ ����������', '���������� ����� ��������� ������ ����������');
const  st_KolvoLudey                :array[1..2] of String=('�-��� �����', '���-�� �����');
const  st_KolvoMest                 :array[1..2] of String=('�-��� ����', '���-�� ����');
const  st_KontextPoisk              :array[1..2] of String=('����������� �����', '����������� ����');
const  st_ByMonth                   :array[1..2] of String=('������ ��������', '������ ���������');

const st_Some_Need                  :array[1..2] of String=('������� ���������� ����� �����. �� �� ���� ��������','������ ���������� ������ �����. �� ��� ���� ���������');
{
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
const  st_prp_                        :array[1..2] of String=('', '');
}

const st_prp_Title_String          : array[1..2] of string =('���������� ��� ��������', '���������� � ��������');
const st_prp_OkButton_Local_String : array[1..2] of string =('�������� ���� ������� �������', '��������� ��������� ������� �������');
const  st_PropProdleniePinudit     :array[1..2] of String=('��������� �����������', '�������������� ���������');

{
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
const  st_                        :array[1..2] of String=('', '');
}
implementation

end.
