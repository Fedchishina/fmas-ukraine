//******************************************************************************
// Contracts
// ���� ��������� ��������
// ���������� �.�.                             
// ��������� ��������� ������ �.�. 27/10/2008
//******************************************************************************
unit cnConsts;

interface
{Windows}  
const cn_Windows_Tiltle              :array[1..2] of String=('³���','����');
const cn_WindowsCacade               :array[1..2] of String=('������','������');
const cn_WindowsHorizontal           :array[1..2] of String=('�������������','�������������');
const cn_WindowsVertical             :array[1..2] of String=('�����������','�����������');
const cn_WindowsMinimizeAll          :array[1..2] of String=('�������� ��','�������� ���');
const cn_WindowsCloseAll             :array[1..2] of String=('������� ��','������� ���');

{Form_Titles}
const cn_ReestrContracts_Tiltle      :array[1..2] of String=('����� ���������','������ ����������');
const cn_DBInfo_Tiltle               :array[1..2] of String=('ϳ��������� �� ��','����������� � ��');
const cn_FileVersion                 :array[1..2] of String=('�����','������');
const cn_AssemblingVersion           :array[1..2] of String=('������','������');
const cn_ConnectionInfo              :array[1..2] of String=('���������� ��� �''�������','���������� ��� �����������');
const cn_ApplicationName             :array[1..2] of String=('��''� �����: ','��� ����������: ');
const cn_ApplicationWay              :array[1..2] of String=('��������� �����: ','���� � ����������: ');
const cn_FileVersionFull             :array[1..2] of String=('����� �����: ','������ �����: ');
const cn_AssemblingDate              :array[1..2] of String=('���� ������: ','���� ������: ');
const cn_DBWay                       :array[1..2] of String=('��������� ����� ��: ','���� � ���� ������: ');
const cn_FilterText                  :array[1..2] of String=('������ �������','������� �������');
const cn_HelpText                    :array[1..2] of String=('��������','������');
const cn_ContractsReestrText         :array[1..2] of String=('����� ���������','������ ����������');
const cn_NowDate_Caption             :array[1..2] of String=('�������: ','�������: ');
const cn_RaschetSchet_Title          :array[1..2] of String=('������������� �������','��������� ����');
const cn_UserFio                     :array[1..2] of String=('�.�.�. �����������: ','��� ������������: ');
const cn_Login                       :array[1..2] of String=('����: ','�����: ');
const cn_UserInfo                    :array[1..2] of String=('���������� ��� �����������: ','���������� ��� ������������');
const cn_grid_ADDVerName             :array[1..2] of String=('����� ���� ������������','�������� ������ ������������'); 
{Date_Formats}
const cn_Year_Short                  :array[1..2] of String=(' ��.',' ��.');


{ShortCuts}
const cn_HelpBtn_ShortCut            :array[1..2] of String=('F1 ', 'F1 ');
const cn_InsertBtn_ShortCut          :array[1..2] of String=('Ins ', 'Ins ');
const cn_EditBtn_ShortCut            :array[1..2] of String=('F2 ','F2 ');
const cn_DeleteBtn_ShortCut          :array[1..2] of String=('Del ','Del ');
const cn_RefreshBtn_ShortCut         :array[1..2] of String=('F5 ', 'F5 ');
const cn_ExitBtn_ShortCut            :array[1..2] of String=('Esc ','Esc ');
const cn_FilterBtn_ShortCut          :array[1..2] of String=('Ctrl+F ','Ctrl+F ');
const cn_EnterBtn_ShortCut           :array[1..2] of String=('Enter ','Enter ');
const cn_PaymentBtn_ShortCut         :array[1..2] of String=('F6 ','F6 ');
const cn_PrintBtn_ShortCut           :array[1..2] of String=('Ctrl+P ','Ctrl+P ');
const cn_ModeBtn_ShortCut            :array[1..2] of String=('F9 ','F9 ');
const cn_F10Btn_ShortCut             :array[1..2] of String=('F10 ','F10 ');
const cn_F3Btn_ShortCut              :array[1..2] of String=('F3 ','F3 ');

{All_Actions}
const cn_HelpBtn_Caption             :array[1..2] of String=('��������','������');
const cn_InsertBtn_Caption           :array[1..2] of String=('������','��������');
const cn_EditBtn_Caption             :array[1..2] of String=('������','��������');
const cn_DeleteBtn_Caption           :array[1..2] of String=('��������','�������');
const cn_RefreshBtn_Caption          :array[1..2] of String=('�������', '��������');
const cn_ExitBtn_Caption             :array[1..2] of String=('  �����  ','  �����  ');
const cn_FilterBtn_Caption           :array[1..2] of String=('Գ����','������');
const cn_FilterParams_Need           :array[1..2] of String=('�� ������ ��������� ��� ����������!','�� ������� ��������� ��� ����������!');
const cn_SearchBtn_Caption           :array[1..2] of String=('�����','�����');
const cn_Print_Caption               :array[1..2] of String=(' ���� ',' ������ ');
const cn_Pay_Caption                 :array[1..2] of String=(' ������ ',' ������ ');
const cn_Lgota_Caption               :array[1..2] of String=(' ϳ���� ',' ������ ');
const cn_EntryRest_Caption           :array[1..2] of String=('������� �������','�������� �������');
const cn_History                     :array[1..2] of String=('������','�������');
const cn_SelectBtn_Caption           :array[1..2] of String=('�������','�������');
const cn_ModeBtn_Caption             :array[1..2] of String=('���� ������','����� ������');
const cn_PrintShort_Caption          :array[1..2] of String=('����','������');
const cn_ViewShort_Caption           :array[1..2] of String=('��������','��������');
const cn_AutoShort_Caption           :array[1..2] of String=('�����������','�����������');
const cn_Credit_Caption              :array[1..2] of String=('������','������');
const cn_Upload_Caption              :array[1..2] of String=('������������','������������');
const cn_BreakDown_Caption           :array[1..2] of String=('��������','�����������');
const  cn_PayerInfoData              :array[1..2] of String=('��� ��� ��������','������ � �����������');
const  cn_Pri4inaRastorg             :array[1..2] of String=('������� ���������','������� �����������');
const cn_ViewAll                     :array[1..2] of String=('���������� ��','���������� ���');
const cn_HidenAll                    :array[1..2] of String=('�������� ��','�������� ���');
{Confirms}
const cn_Confirmation_Caption        :array[1..2] of String=('ϳ�����������','�������������');
const cn_Uvaga_Caption               :array[1..2] of String=('�����!','��������!');
const cn_ExitPromt                   :array[1..2] of String=('�� ������ �����?', '�� ������ �����?');
const cn_DeletePromt                 :array[1..2] of String=('�� ����� ������ �������� �����?', '�� ������������� ������ ������� ������?');
const cn_Accept                      :array[1..2] of String=('��������','�������');
const cn_Cancel                      :array[1..2] of String=('³������','������');
const cn_ClearBufferPromt            :array[1..2] of String=('�� ����� ������ �������� �����?', '�� ������������� ������ �������� �����?');
{ApplicationInitialise}
const cn_Application_Caption         :array[1..2] of String=('���������','���������');
const cn_Main_Ready_Caption          :array[1..2] of String=('�������','�����');
const cn_Main_StatusBar_Caption      :array[1..2] of String=('������ ����������','������ ����������');
const cn_HotKeys                     :array[1..2] of String=('������ ������','������� �������');
{MainButtons}
const cn_Main_WorkBtn_Caption        :array[1..2] of String=('������','������');
const cn_Main_SpravBtn_Caption       :array[1..2] of String=('��������','�����������');
const cn_Main_AboutBtn_Caption       :array[1..2] of String=('��� ��������','� ���������');
const cn_Main_ExitBtn_Caption        :array[1..2] of String=('�����','�����');

{Errors}
const cn_Error_Caption               :array[1..2] of String=('�������','������');
const cn_Error_LoadBPL_Text          :array[1..2] of String=('������� ��� ����������� ������','������ ��� �������� ������');

{MainGuides}
const  cn_Main_TypeLgot              :array[1..2] of String=('������� ���� ����', '���������� ����� �����');
const  cn_Main_PayerType             :array[1..2] of String=('������� ���� ��������', '���������� ����� ������������');
const  cn_Main_FacultySpeciality     :array[1..2] of String=('������� c������������� �� ����', '���������� �������������� � �����');
const  cn_Main_FormStudy             :array[1..2] of String=('������� ���� ��������', '���������� ���� ��������');
const  cn_Main_Faculty               :array[1..2] of String=('������� ����������', '���������� �����������');
const  cn_Main_Nationality           :array[1..2] of String=('������� ���������������', '���������� ���������������');
const  cn_Main_CategoryStudy         :array[1..2] of String=('������� �������� ��������', '���������� ��������� ��������');
const  cn_Main_IniPeriodic           :array[1..2] of String=('������� ������������� �����', '���������� ������������� �����');
const  cn_Main_FaculSpecGroup        :array[1..2] of String=('������� ����������, c������������� �� ����', '���������� �����������, �������������� � �����');
const  cn_PaymentAnalysis            :array[1..2] of String=('����� ������ ������', '����� ������� ������');
const  cn_Main_SpRoles               :array[1..2] of String=('������� ���� ������������ �� ���������','���������� ����� ������������� � ����');
const  cn_Main_SpActions             :array[1..2] of String=('������� ��','���������� ��������');
const  cn_Main_SpSignature           :array[1..2] of String=('������� ������','���������� ��������');
const  cn_Main_SpSpec                :array[1..2] of String=('������� c�������������','���������� ��������������');
const  cn_Main_SpDepartment          :array[1..2] of String=('������� ��������','���������� �������������');
const  cn_Main_SpDogStatus           :array[1..2] of String=('������� ������� ���������','���������� �������� ����������');
const  cn_Main_SpPeople              :array[1..2] of String=('������� �������� ���','���������� ���������� ���');
const  cn_Main_SpYurLiza             :array[1..2] of String=('������� �������� ���','���������� ����������� ���');
const  cn_Main_SpRapStatus           :array[1..2] of String=('������� ������� �������','���������� �������� ��������');
const  cn_Main_SpTypeDocum           :array[1..2] of String=('������� ���� ����� ���������','���������� ����� ��������� ����������');
const  cn_Main_SpOrderTypes          :array[1..2] of String=('������� ���� ������','���������� ����� ��������');
const  cn_Main_SpNamesReport         :array[1..2] of String=('������� ����������� ����','���������� ������������ �������');
const  cn_Main_SpTypeDog             :array[1..2] of String=('������� ���� ���������','���������� ����� ����������');
const  cn_Main_SpDatePay             :array[1..2] of String=('������� ��� �����','���������� ��� �����');

const  cn_Main_DawaVCImport          :array[1..2] of String=('������ ����� � ��','������ ������ �� ��');
const  cn_Main_DawaVCPrimary         :array[1..2] of String=('������ �������� � �����','������ �������� � �����');
const  cn_Main_DawaVCLinks           :array[1..2] of String=('������ �������� � ������','������ ��������� �� ������');
const  cn_Main_DawaVCBuffer          :array[1..2] of String=('����� ���������','����� ����������');

const  cn_Main_RaportOtchisl         :array[1..2] of String=('������� �� �����������','������� �� ����������');
const  cn_Main_RaportVotanovl        :array[1..2] of String=('������� �� ����������','������� �� ��������������');

const  cn_print_RZ_Postyp            :array[1..2] of String=('�����/������� ����� ���������� �� ��������','������/������� ����� ����������� �� ��������');

{Contracts_Grid}
const  cn_grid_FIO_Column            :array[1..2] of String=('�.�.�.', '�.�.�.');
const  cn_grid_Date_Dog_Column       :array[1..2] of String=('���� ���������', '���� ����������');
const  cn_grid_Num_Dog_Column        :array[1..2] of String=('����� ��������', '����� ��������');
const  cn_grid_Date_Beg              :array[1..2] of String=('���� �������', '���� ������');
const  cn_grid_Date_End              :array[1..2] of String=('���� ���������', '���� ���������');
const  cn_grid_IsDiss_Column         :array[1..2] of String=('�� �����', '�� �����������');
const  cn_IS_Deleted_Column         :array[1..2] of String=('��������', '�������');

{Contracts_Footer}
const  cn_footer_Faculty             :array[1..2] of String=('���������', '���������');
const  cn_footer_Spec                :array[1..2] of String=('������������', '�������������');
const  cn_footer_Group               :array[1..2] of String=('�����', '������');
const  cn_footer_FormStudy           :array[1..2] of String=('����� ��������', '����� ��������');
const  cn_footer_CategoryStudy       :array[1..2] of String=('�������� ��������', '��������� ��������');
const  cn_footer_Kurs                :array[1..2] of String=('����', '����');
const  cn_Gragdanstvo                :array[1..2] of String=('������������', '�����������');
const  cn_srok_study                 :array[1..2] of String=('����� ��������','���� ��������');

//-----{Contracts_Components}------------------------------------------------------------------//

{Contracts_Components_GroupBox}
const  cn_BasicInfo_GroupBox         :array[1..2] of String=('������� ����������', '�������� ����������');
const  cn_Study_GroupBox             :array[1..2] of String=('���������� ��� ���, �� ����������', '�����������');
const  cn_Studer_Osoba               :array[1..2] of String=('�����, �� ���������', '�����������');
const  cn_Payer_Osoba                :array[1..2] of String=('�������', '����������');
const  cn_Payers_GroupBox            :array[1..2] of String=('��������', '�����������');
const  cn_Periods_GroupBox           :array[1..2] of String=('������ ������', '������� ������');
const  cn_Istochniki_GroupBox        :array[1..2] of String=('������� ������������', '��������� ��������������');
{Contracts_Components_Lables}
const  cn_Num_Dog_Label              :array[1..2] of String=('����� ��������', '����� ��������');
const  cn_Date_Zakl_Label            :array[1..2] of String=('���� ���������', '���� ����������');
const  cn_Date_Beg_Label             :array[1..2] of String=('���� �������', '���� ������');
const  cn_Date_End_Label             :array[1..2] of String=('���� ���������', '���� ���������');
const  cn_Type_Dog_Label             :array[1..2] of String=('��� ��������', '��� ��������');
const  cn_Basic_Dog_Label            :array[1..2] of String=('��������', '��������');
const  cn_Addit_Dog_Label            :array[1..2] of String=('����������', '��������������');
{Contracts_Components_Grid_Captions}
const  cn_Payer_Column               :array[1..2] of String=('�������', '����������');
const  cn_Period_Column              :array[1..2] of String=('�����������', '�������������');
const  cn_Persent_Column             :array[1..2] of String=('³������', '�������');
const  cn_Date_Opl_Column            :array[1..2] of String=('���� ������', '���� ������');
const  cn_Summa_Column               :array[1..2] of String=('����', '�����');
const  cn_Name_Column                :array[1..2] of String=('������������', '������������');
const  cn_cntMonth_Column            :array[1..2] of String=('ʳ������ ������', '���-�� �������');

const  cn_ParamStudyModify_Caption   :array[1..2] of String=('���������� ��������� ��������', '������������� ��������� ��������');
const  cn_FIOModify_Caption          :array[1..2] of String=('���������� �����, �� ���������', '������������� ������������');
const  cn_add_new_summ               :array[1..2] of String=('������ ���� ����', '�������� ����� ����');
const  cn_add_new_summ_by_param      :array[1..2] of String=('������ ���� ���� �� ������ ��������� ���������', '�������� ����� ���� �� ������ ��������� ����������');

{Smeta-Razdel-Statya-Kekv}
const  cn_Smeta                      :array[1..2] of String=('��������', '�����');
const  cn_Razdel                     :array[1..2] of String=('�����', '������');
const  cn_Statya                     :array[1..2] of String=('������', '������');
const  cn_Kekv                       :array[1..2] of String=('����', '����');
{Contracts_Components_Filtration}
const  cn_Filtration                 :array[1..2] of String=('Գ��������', '����������');
const  cn_FiltrByFIO                 :array[1..2] of String=('�.�.�.', '�.�.�.');
const  cn_FiltrByNum                 :array[1..2] of String=('�����', '�����');
const  cn_FiltrHint                  :array[1..2] of String=('Գ��������� �������!', '����������� ����������!');

{Contracts_Add_Edit_Messages}
const  cn_Num_Dog_Need               :array[1..2] of String=('��������� ��������� ����� ��������!','���������� ��������� ����� ��������!');
const  cn_Date_Dog_Need              :array[1..2] of String=('��������� ��������� ���� ��������� ��������!','���������� ��������� ���� ���������� ��������!');
const  cn_summ_prices_Need           :array[1..2] of string=('��������� ������ ����!','���������� ������ �����!');

//--------------{Contracts_Payer_AE}-------------------------------------------------------------
const  cn_FizOsoba                  :array[1..2] of String=('Գ����� �����', '���������� ����');
const  cn_YurOsoba                  :array[1..2] of String=('�������� �����','����������� ����');
const  cn_PayerType                 :array[1..2] of String=('��� ��������','��� �����������');
const  cn_MFO_Caption               :array[1..2] of String=('���','���');
const  cn_RasSchet_Caption          :array[1..2] of String=('������������� �������','��������� ����');
{Contracts_Payer_AE_Messages}
const  cn_Payer_Need                :array[1..2] of String=('��������� ��������� ��������!','���������� ��������� �����������!');
const  cn_Percent_Need              :array[1..2] of String=('��������� ��������� �������!','���������� ��������� �������!');
const  cn_Period_Need               :array[1..2] of String=('��������� ��������� �����������!','���������� ��������� �������������!');
//--------------{Contracts_Studer_AE}-------------------------------------------------------------
const  cn_Studer                    :array[1..2] of String=('�����, �� ���������','�����������');
const  cn_Studer_Need               :array[1..2] of String=('��������� ��������� �����, �� ���������!','���������� ��������� ������������!');

const  cn_LowSpecimen               :array[1..2] of String=('������� ����������� ��������','�������� ������������� ��������');
const  cn_LowSpecimen_Need          :array[1..2] of String=('��������� ������ �������� ������������ ��������','���������� ������� ��������� ������������� ��������');
//--------------{Contracts_Periods_AE}-------------------------------------------------------------
const  cn_Periods_DateOpl           :array[1..2] of String=('���� ������','���� ������');
{Contracts_Periods_AE_Messages}
const  cn_Periods_Date_Beg_Need     :array[1..2] of String=('��������� ��������� ���� �������!','���������� ��������� ���� ������!');
const  cn_Periods_Date_End_Need     :array[1..2] of String=('��������� ��������� ���� ���������!','���������� ��������� ���� ���������!');
const  cn_Periods_Date_Pay_Need     :array[1..2] of String=('��������� ��������� ���� ������!','���������� ��������� ���� ������!');
const  cn_Periods_Date_PaySum_Need  :array[1..2] of String=('��������� ��������� ����!','���������� ��������� �����!');
//-----------------------------------------------------------------------------------------------
{Contracts_Istochniki_AE_Messages}
const  cn_Smeta_Need                :array[1..2] of String=('��������� ��������� ��������!','���������� ��������� �����!');
const  cn_Razdel_Need               :array[1..2] of String=('��������� ��������� �����!','���������� ��������� ������!');
const  cn_Stat_Need                 :array[1..2] of String=('��������� ��������� ������!','���������� ��������� ������!');
const  cn_Kekv_Need                 :array[1..2] of String=('��������� ��������� ����!','���������� ��������� ����!');

{Contracts_StudyParams_Title}
const  cn_StudyParams_Title         :array[1..2] of String=(' ��������� ��������',' ��������� ��������');

const  cn_CollectDog                :array[1..2] of String=('�����������','������������');
const  cn_EntryRest                 :array[1..2] of String=('������� �������','�������� �������');
const  cn_EntryRestShort            :array[1..2] of String=('��.�������','��.�������');

{Oplata_Analiz}
const  cn_Beg_Opl                    :array[1..2] of String=('������� ������', '������ �������');
const  cn_End_Opl                    :array[1..2] of String=('��������� ������', '����� �������');
const  cn_Summa_Opl                  :array[1..2] of String=('������� ��������', '��������� ��������');
const  cn_PercentLg_Opl              :array[1..2] of String=('³������ �����, %', '������� ������, %');
const  cn_SummaLg_Opl                :array[1..2] of String=('���� �����', '����� ������');
const  cn_MonthCount_Opl             :array[1..2] of String=('ʳ�-��� ������', '���-�� �������');
const  cn_SummFinal_Opl              :array[1..2] of String=('���� �� �����', '����� �� ������');
const  cn_NumDoc_Pay                 :array[1..2] of String=('�������� �', '�������� �');
const  cn_DateDoc_Pay                :array[1..2] of String=('���� �����.', '���� �����.');
const  cn_Summa_Pay                  :array[1..2] of String=('����', '�����');
const  cn_Need_Pay                   :array[1..2] of String=('����� ��������:', '���� ��������:');
const  cn_Was_Pay                    :array[1..2] of String=('��� ��������:', '��� ��������:');
const  cn_PayPo_Pay                  :array[1..2] of String=('�������� �� ', '�������� �� ');
const  cn_Now_Pay                    :array[1..2] of String=('�� ������ �� �������', '� ������ �� �������:');
const  cn_Itogo_Pay                  :array[1..2] of String=('�����', '�����');
const  cn_Zadolg_Pay                 :array[1..2] of String=('�������������:', '�������������:');
const  cn_Hint_Pay                   :array[1..2] of String=('��������� ������ �� ��������', '��������� ������ �� �������');
const  cn_Hint_CALC                  :array[1..2] of String=('��������� ���������� �� ��������', '��������� ���������� �� �������');
const  cn_DateBorn                   :array[1..2] of String=('���� ����������: ', '���� ��������:');
const  cn_DSetRecordCount            :array[1..2] of String=('ʳ������ ������: ', '���������� �������: ');
const  cn_FullPay                    :array[1..2] of String=('C������� �������','�������� ���������');

const  cn_FullName                   :array[1..2] of String=('����� �����', '������ ��������');
const  cn_ShortName                  :array[1..2] of String=('��������� �����', '������� ��������');


const  cn_sp_ContractsList           :array[1..2] of String=('������� ���, �� ���������� �� ����������', '���������� ����������� �� ���������');
const  cn_OplataCaption              :array[1..2] of String=('������ ���������','������ ���������');
const  cn_ActionDates                :array[1..2] of String=('����� 䳿','������ ��������');
const  cn_PayPeriod                  :array[1..2] of String=('������ �� �����','������ �� ������');
const  cn_SumCheck                   :array[1..2] of String=('�� ����������� ����','� ��������� �����');
const  cn_NeedPay                    :array[1..2] of String=('����� ��������','���� ��������');
const  cn_WhosPay                    :array[1..2] of String=('��� ��������','��� ��������');
const  cn_Borg                       :array[1..2] of String=('��������������','�������������');
const  cn_EnterSum                   :array[1..2] of String=('����, �� ���������','�������� �����');
const  cn_Z                          :array[1..2] of String=('�','�');
const  cn_Po                         :array[1..2] of String=('��','��');

const  cn_View                       :array[1..2] of String=('��������','��������');
const  cn_Pay                        :array[1..2] of String=('������','������');

const  cn_Zaborgov                   :array[1..2] of String=('��������������','�������������');
const  cn_Pereplata                  :array[1..2] of String=('���������','���������');

const  cn_Lgots_Sp                   :array[1..2] of String=('ϳ���� �� ����������','������ �� ���������');
const  cn_NomPrikaz                  :array[1..2] of String=('����� ������','����� �������');
const  cn_DatePrikaz                 :array[1..2] of String=('���� ������','���� �������');
const  cn_Osnovanie                  :array[1..2] of String=('ϳ������','���������');

const  cn_BegDate_Short              :array[1..2] of String=('���� ���.','���� ���.');
const  cn_EndDate_Short              :array[1..2] of String=('���� ����.','���� �����.');
const  cn_RateAcc_Default            :array[1..2] of String=('������� ������������� �������','���������� ��������� ������');
const  cn_RateAcc_Rate               :array[1..2] of String=('������������� �������','��������� ����');

const  cn_SearchCaption_Ex           :array[1..2] of String=('���������� ������','����������� ������');
const  cn_Search_Ex                  :array[1..2] of String=('������ ��','������ ��');
const  cn_TIN_Ex                     :array[1..2] of String=('���������������� ���������� �������','������������������ ���������� ������');
const  cn_Need_TIN                   :array[1..2] of String=('��������� ��������� ���������������� ���������� �����!','���������� ��������� ����������������� ��������� �����!');
const  cn_Payer_Ex                   :array[1..2] of String=('���������','�����������');

const  cn_Config                     :array[1..2] of String=('������������','������������');
const  cn_Tunning                    :array[1..2] of String=('���������...','���������...');
const  cn_Desctop                    :array[1..2] of String=('������� ���','������� ����');
const  cn_StartMenu                  :array[1..2] of String=('���� "����"','���� "����"');
const  cn_CreateIcons                :array[1..2] of String=('�������� ������ �� ...','��������� ������ �� ...');
const  cn_Icons                      :array[1..2] of String=('������','������');

const  cn_WhatsNew                   :array[1..2] of String=('���������: ������ �����','���������: ������� ������');
const  cn_WhatsNew_Cap               :array[1..2] of String=('�� ������?','��� ������?');
const  cn_Exit                       :array[1..2] of String=('�����','�����');
// DogDiss
const  cn_InfoDiss                   :array[1..2] of String=('���������� ��� ���������','���������� ��� �����������');
const  cn_DateDiss                   :array[1..2] of String=('���� ���������','���� �����������');
const  cn_DateOrderDiss              :array[1..2] of String=('���� ������','���� �������');
const  cn_NumOrderDiss               :array[1..2] of String=('����� ������','����� �������');
const  cn_CommentDiss                :array[1..2] of String=('��������','�����������');

const  cn_TypeLg_Label               :array[1..2] of String=('��� �����','��� ������');
const  cn_TypeDiss                   :array[1..2] of String=('�������(��� ���������)','�������(��� �����������)');
const  cn_sp_IniTypeDiss             :array[1..2] of String=('������� ���� ��������� ���������','���������� ����� ����������� ���������');
const  cn_Confirm                    :array[1..2] of String=('ϳ�����������','�������������');
const  cn_Interface                  :array[1..2] of String=('���������','���������');
const  cn_NoExitConfirm              :array[1..2] of String=('�� ������������� �����','�� ������������ �����');


const  cn_DateProv                   :array[1..2] of String=('���� ��������','���� ��������');
const  cn_ProvNote                   :array[1..2] of String=('ϳ������','���������');
const  cn_Pevdonim                   :array[1..2] of String=('��������','���������');
const  cn_Kr                         :array[1..2] of String=('������','������');
const  cn_Db                         :array[1..2] of String=('�����','�����');
const  cn_DogNumProv                 :array[1..2] of String=('������ �','������� �');
const  cn_Dodatki                    :array[1..2] of String=('�������� 䳿','�������������� ��������');

const  cn_Cookies                     :array[1..2] of String=('��������� �����������(����� � �����)','��������� �������������(����� �� �������)');
const  cn_Language                    :array[1..2] of String=('���� (������� ���������������� ��������)','���� (���������� ������������ ���������)');
const  cn_Rus_Lang                    :array[1..2] of String=('��������','�������');
const  cn_Ukr_Lang                    :array[1..2] of String=('���������','����������');
const  cn_LangReload                  :array[1..2] of String=('��������� ���������������� ��������','����� ��������� �������� � ���� ��������� ���������� ���������');
const  cn_Baloon                      :array[1..2] of String=('ϳ������','���������');
const  cn_Welcome                     :array[1..2] of String=('������� "���������" ���� ��� ������ ������... ','������� "���������" ������ ��� �������� ������...');

const  cn_PreyskurantWork             :array[1..2] of String=('������ � �������������','������ � �������������');
const  cn_FizLizoEdit                 :array[1..2] of String=('���������� ��� ���.�����','������������� ������ ���.����');

// Tree
const  cn_tree_FullOpen               :array[1..2] of String=('�������� ������ ������','�������� ������ �������');
const  cn_tree_FullClose              :array[1..2] of String=('�������� ������ ������','�������� ������ �������');
const  cn_tree_BranchOpen             :array[1..2] of String=('�������� ����','�������� �����');
const  cn_tree_BranchClose            :array[1..2] of String=('�������� ����','�������� �����');
const  cn_tree_FullScreen             :array[1..2] of String=('������ �����','������ �����');

const  cn_Preved                      :array[1..2] of String=('�� ���������� ������ ��� ����������� ','�� ���������� ����������� ��� ��������');
const  cn_PrevedSelf                  :array[1..2] of String=('������ ���� ��� ������ ��������� �� �����������','������� ���� ���� ������� ����������� ��� �����������');
const  cn_PrevedHint                  :array[1..2] of String=('��� �������� ���������� ������� ���� ������','��� ��������� ���������� �������� ���� ������');

const  cn_PayerSelect                 :array[1..2] of String=('���� �������� �� ���������','����� ����������� �� ��������');

// preyskurant
const  cn_Spec_Kod                    :array[1..2] of String=('��� ������������','��� �������������');

const  cn_ViewPrice_Hint              :array[1..2] of String=('�������� ��������� �����','�������� ���������� ������');
const  cn_grid_VerName                :array[1..2] of String=('����� ���� ������������','�������� ������ ������������');
const  cn_showVerssions               :array[1..2] of String=('���������� ����','���������� ������');
const  cn_AddVerssion                 :array[1..2] of String=('������ �����','�������� ������');
const  cn_Preyskurant                 :array[1..2] of String=('�����������...','�����������...');
const  cn_PreyskurantHint             :array[1..2] of String=('������� ��� � ������������','������� ������ �� ������������');

const  cn_roles_Kod                   :array[1..2] of String=('���','���');
const  cn_roles_Group                 :array[1..2] of String=('����� ������������','������ �������������');
const  cn_roles_Smets                 :array[1..2] of String=('���������','�����');

const  cn_AcademYear                  :array[1..2] of String=('������. ��','������. ���');
const  cn_StudInfWarning              :array[1..2] of String=('���������� ��� ���, �� ���������� ��������� ���� ��������. ������ �������� ���!','���������� ��� ����������� ��������� ���� ��������. ����������� ��������� ������!');

const  cn_Service                     :array[1..2] of String=('������','������');
const  cn_VC_Import                   :array[1..2] of String=('������ ���������','������ ����������');
const  cn_VC_ClearBuffer              :array[1..2] of String=('�������� �����','�������� �����');
const  cn_VC_AllBuffer                :array[1..2] of String=('����� ������','����� �������');
const  cn_VC_BufferCaption            :array[1..2] of String=('DBF-�����','DBF-�����');
const  cn_VCBuffer_or_Not             :array[1..2] of String=('������ � ������ �� ������?','�������� �� ������ ��� �������?');

const  cn_Log                         :array[1..2] of String=('���-������ ������ � ����������','���-������� ������ � ����������');
const  cn_User                        :array[1..2] of String=('����������','������������');
const  cn_Action                      :array[1..2] of String=('ĳ�','��������');
const  cn_Stamp                       :array[1..2] of String=('����\���','����\�����');

const  cn_Use_Beg                     :array[1..2] of String=('���. 䳿','���. ������.');
const  cn_Use_End                     :array[1..2] of String=('ʳ���� 䳿','�����. ������.');

const  cn_RaxynokNaSplaty             :array[1..2] of String=('������� �� ������ �������� �','���� �� ������ �������� �');
const  cn_SymaPaxynky                 :array[1..2] of String=('���� �������','����� �����');
const  cn_NDS                         :array[1..2] of String=('���','���');
const  cn_PazomZNDS                   :array[1..2] of String=('����� � ���','����� � ���');
const  cn_RaxynokNaSplatyCaption      :array[1..2] of String=('������� ������� �� ������ ��������','������� ����� �� ������ ��������');
const  cn_Vid                         :array[1..2] of String=('��','��');

const  cn_SysOptions                  :array[1..2] of String=('������� ���������','��������� ���������');
const  cn_Signature                   :array[1..2] of String=('ϳ����','�������');
const  cn_Signature_off               :array[1..2] of String=('����� �����','����� �������');
const  cn_Signature_on                :array[1..2] of String=('��������� �����','��������� �������');
const  cn_TransferToNextCurs          :array[1..2] of String=('����������� �� ����. ����','������� �� ����. ����');

const  cn_ForEach                     :array[1..2] of String=('ϳ����������� ��� ������� ��������','������������� ��� ������� ��������');
const  cn_AvtoRastorg                 :array[1..2] of String=('����������� ��������� ���������','������������� ���������� ���������');
const  cn_ParamsOtbor                 :array[1..2] of String=('��������� ��������� ������','��������� ���������� ������');
const  cn_Params                      :array[1..2] of String=('���������','���������');
const  cn_CurrentTaskPercent          :array[1..2] of String=('³������ ���������','������� ����������');
const  cn_Admit                       :array[1..2] of String=('����������','����������');
const  cn_Admit_All                   :array[1..2] of String=('���������� ��','���������� ���');
const  cn_NewPeriod                   :array[1..2] of String=('����� ����� ��������','����� ������ ��������');

const  cn_Role                        :array[1..2] of String=('�����','������');

const  cn_AllForAdmin                 :array[1..2] of String=('����� �������� ���!','������ ��������� ��!');
const  cn_DotypSmetiTitle             :array[1..2] of String=('������� ���������','��������� �����');

const  cn_NextCursAvto                :array[1..2] of String=('������ ��������� ���� �����������','�������� ��������� ���� �����������');

const  cn_RahunokWork                 :array[1..2] of String=('������ � ���������','������ �� �������');

const  cn_Relation                    :array[1..2] of String=('��''����','�����');
const  cn_RelDepartment               :array[1..2] of String=('��''���� � ���������','����� � ��������������');
const  cn_NoRelDepartment             :array[1..2] of String=('��''���� � ��������� �� ��������','����� � �������������� �� ����������');
const  cn_DepGrName                   :array[1..2] of String=('����� � �������','������ � �������������');
const  cn_NameExec                    :array[1..2] of String=('������ �������������','��������� ��������������');
const  cn_Dekan                       :array[1..2] of String=('ϲ� �������������','��� ��������������');
const  cn_SearchAll                   :array[1..2] of String=('��','���');
const  cn_Write                       :array[1..2] of String=('�����','������');

const  cn_Sort                        :array[1..2] of String=('����������','����������');

const  cn_Success                     :array[1..2] of String=('������!','�������!');
const  cn_WasFullWork                 :array[1..2] of String=('��������� ������: ','���������� �����: ');
const  cn_WasBreak                    :array[1..2] of String=('��������: ','�����������: ');
const  cn_WasTransfer                 :array[1..2] of String=('���������� �� ��������� ����: ','���������� �� ��������� ����: ');
const  cn_WasAdmit                    :array[1..2] of String=('���������: ','���������: ');

const  cn_Add_List                    :array[1..2] of String=('������ ������','�������� ������');
const  cn_Status                      :array[1..2] of String=('������','������');
const  cn_Type                        :array[1..2] of String=('���','���');
const  cn_DateCalc                    :array[1..2] of String=('���� ����������','���� �������');
const  cn_RaportAvto                  :array[1..2] of String=('������ ����������� �� ���� ����������','�������� ������������� �� ���� �������');
const  cn_RaportAvtoComments          :array[1..2] of String=('����������� ��������� ��� ���������, �� ����� �������������� �� ���� ���������� ','�������������� ���������� ���� ����������, ������� ����� ������������� �� ���� �������');

const  cn_Lgota                       :array[1..2] of String=('ϳ����:','������:');
const  cn_OnovnieTypeDoc              :array[1..2] of String=('������','��������');
const  cn_DodatkovTypeDoc             :array[1..2] of String=('��������','��������������');

const  cn_Recovery                    :array[1..2] of String=('³���������','��������������');
const  cn_grid_Actual                 :array[1..2] of String=('�����������','������������');
const  cn_price_already_signed        :array[1..2] of String=('����������� ��� ���������.','����������� ��� ��������.');

const  fr_Reports_CALC_NameREP0       :array[1..2] of String=('���������� ��','������ ��');
const  fr_Reports_CALC_NameREP        :array[1..2] of String=('������ �','������� �');
const  fr_Reports_CALC_NameREP1       :array[1..2] of String=('��� ���� ��������� �������� �� ��������','� ��������� ���������� �������� �� ��������');
const  fr_Reports_CALC_NameREP2       :array[1..2] of String=('������ �','������� �');
const  fr_Reports_CALC_NameStuder     :array[1..2] of String=('�����, �� ���������','���������');

const  fr_Reports_CALC_Beg            :array[1..2] of String=('������� ������','������ �������');
const  fr_Reports_CALC_End            :array[1..2] of String=('ʳ���� ������','����� �������');
const  fr_Reports_CALC_Stoimost       :array[1..2] of String=('������� ����.','��������� ����.');
const  fr_Reports_CALC_SummaLg        :array[1..2] of String=('������ �����','�������� ������');
const  fr_Reports_CALC_PersentLg      :array[1..2] of String=('³������ �����, %','������� ������, %');
const  fr_Reports_CALC_DolgBeg        :array[1..2] of String=('���� �� �������','���� �� ������');
const  fr_Reports_CALC_AllPeriod      :array[1..2] of String=('���� �� �����','����� �� ������');
const  fr_Reports_CALC_SumPay         :array[1..2] of String=('����, �� �������','����������� �����');
const  fr_Reports_CALC_DolgEnd        :array[1..2] of String=('���� �� �����','���� �� �����');

const  fr_Reports_CALC_SumDolg        :array[1..2] of String=('���� �� ������','����� � ������');
const  fr_Reports_CALC_WhasPay         :array[1..2] of String=('��� ��������','��� ��������');

const  fr_Reports_CALC_All            :array[1..2] of String=('�����:','�����:');
const  fr_Reports_CALC_PayConf        :array[1..2] of String=('��������','��������');
const  fr_Reports_CALC_PayConf1       :array[1..2] of String=('�������','���������');

const  fr_Reports_SUMMA_K_OPLATE      :array[1..2] of String=('���� ������','����� � ������');
const  fr_Reports_UGE_OPLACHENO       :array[1..2] of String=('��� ��������','��� ��������');
const  fr_Reports_SUMMA_DOLGA         :array[1..2] of String=('���� �����','����� �����');

const  fr_Reports_CALC_KydaVidana     :array[1..2] of String=('������ ������ ��� ����''''������� �� ����� ������','������� ������ ��� ������������ �� ����� ����������.');
const  fr_Reports_CALC_Buhg           :array[1..2] of String=('���������','���������');

const  fr_Reports_PrintSpravkaCalc    :array[1..2] of String=('���� ������','������ �������');
const  fr_Reports_PayDocs             :array[1..2] of String=('��������� � ������� ������ ��������','��������� � ���� ������ ��������');
const  fr_Reports_CalcDocs            :array[1..2] of String=('��� ���� ��������� ��������','� ��������� ���������� ��������');

const  fr_Stud                        :array[1..2] of String=('�����/������� ����� ���, �� ����. �� �����������','������/������� ����� ������������');
const  fr_Pay                         :array[1..2] of String=('�����/������� ����� �������� �� ��������','������/������� ����� ��������� �� ��������');
const  fr_Zvit                        :array[1..2] of String=('���� �����','�������� �����');

const  frSplataIstochnikiBtn          :array[1..2] of String=('����� ������ �� ����. �� ��������� ������.',
                                                              '������ ������ �� ����. �� ���������� ������.');
const  frPercentValueBtn              :array[1..2] of String=('³�������� ��������� �������� �� ��������',
                                                              '���������� ���������� ��������� �� ��������');
const  frLgotaAnalisBtn               :array[1..2] of String=('����� ������� ���� �� ������ �� ��������',
                                                              '������ ������ ����� �� ������ �� ��������');

const  frReestrSvodPoOplate           :array[1..2] of String=('�����/�����. ��� �� ����� �� ��������','������\��������. ������� �� ������ �� ��������');
const  frSvodNepostupSummBtn          :array[1..2] of String=('�����/������� ����� ���,�� �� �������','������\������� ����� ��������������� ����');
const  frSvodPoOtchislenim            :array[1..2] of String=('������� ����� �� �����������','������� ����� �� �����������');

const  cn_Execution                   :array[1..2] of String=('��������','���������');

const  frVikonannya_Btn               :array[1..2] of String=('���������� ���, ��������� �������� �� ��������',
                                                              '������������� ����, ���������� ��������� �� ��������');

const  cn_Orders                      :array[1..2] of String=('������','�������');

const  cn_OrderType                   :array[1..2] of String=('��� ������','��� �������');
const  cn_NumOrd                      :array[1..2] of String=('�����','�����');
const  cn_DateOrd                     :array[1..2] of String=('����','����');
const  cn_Zvit                        :array[1..2] of String=('���','�����');
const  cn_TagOrder                    :array[1..2] of String=('��������','���������');

const  cn_IsVisibleReestr             :array[1..2] of String=('������� � �����','������� � �������');
const  cn_IsVisibleOplata             :array[1..2] of String=('������� � �����','������� � ������');
const  cn_IsVisibleReestrShort        :array[1..2] of String=('� �����','� �������');
const  cn_IsVisibleOplataShort        :array[1..2] of String=('� �����','� ������');

const  cn_BasicContract               :array[1..2] of String=('��������','��������');

const  cn_ContractPrint               :array[1..2] of String=('���� ���������','������ ���������');
const  cn_Day                         :array[1..2] of String=('����','����');
const  cn_Month                       :array[1..2] of String=('̳����','�����');
const  cn_Full_Name                   :array[1..2] of String=('����� ������������','������ ������������');
const  cn_CopyPrintCount              :array[1..2] of String=('ʳ��-��� ���� ��� �����','���-�� ����� ��� ������');

const  cn_OsosbaCustomer              :array[1..2] of String=('�����, ��� ������ ��������','����, ����������� ��������');
const  cn_DeletedShow                 :array[1..2] of String=('������� ���������','��������� ���������');
const  cn_DeletedMode                 :array[1..2] of String=('����� ��������� ��������� ���������','����� ��������� ��������� ����������');
const  cn_ExportData                  :array[1..2] of String=('������� ����� ���������','������� ������ ���������');

const  cn_KillAll                     :array[1..2] of String=('�������� ��','������� ���');
const  cn_KillOnlyOne                 :array[1..2] of String=('�������� �� ��������','������� �� �������');

const  cn_TwainShort                  :array[1..2] of String=('����','����');
const  cn_Twain                       :array[1..2] of String=('����������','����������');
const  cn_CreditNote                  :array[1..2] of String=('��������� ����','��������� ������');
const  cn_CreditBank                  :array[1..2] of String=('�������� ������','����������� ������');
const  cn_LimitSum                    :array[1..2] of String=('���� ���� �������','������ ����� �������');
const  cn_LimitDogs                   :array[1..2] of String=('���� �-�� ���������','������ ���-�� ����������');
const  cn_CreditImage                 :array[1..2] of String=('ҳ���� � ��������','������ � ��������');
const  cn_Reestr                      :array[1..2] of String=('�����','������');
const  cn_Image                       :array[1..2] of String=('������','������');
const  cn_DogSum                      :array[1..2] of String=('���� ��������','����� ��������');
const  cn_PrintRangeImage             :array[1..2] of String=('���� �������� ������...','������ ��������� �������...');
const  cn_Main_SpCreditStatus         :array[1..2] of String=('������� ������� �������','���������� �������� �������');

const  cn_PrintAllPages               :array[1..2] of String=('�� �������','��� ��������');
const  cn_PrintChetPages              :array[1..2] of String=('���� �������','������ ��������');
const  cn_PrintNeChetPages            :array[1..2] of String=('������ �������','�������� ��������');

const  cn_btnSeparate                 :array[1..2] of String=('���''�������','����������');
const  cn_btnUnion                    :array[1..2] of String=('��''�������','�����������');

const  cn_CopyPrice                   :array[1..2] of String=('��������','����������');

const  cn_ImportDbf                   :array[1..2] of String=('������ � DBF','������ �� DBF');
const  cn_ImportAdd                   :array[1..2] of String=('��������','����������');
const  cn_ImportAddAll                :array[1..2] of String=('�������� ��','���������� ���');
const  cn_is_Def                      :array[1..2] of String=('�� �������������','�� ���������');

{
const  cn_                           :array[1..2] of String=('','');
const  cn_                           :array[1..2] of String=('','');
const  cn_                           :array[1..2] of String=('','');
const  cn_                           :array[1..2] of String=('','');
}

//-----------------------------REG----------------------------------------------
const cn_Can_not_delete              :array[1..2] of String=('����� ��������� � �� ���� ���� ���������!','������ �������� � �� ����� ���� ������!');
//-----------------------------Message------------------------------------------
const cn_msg_WARNING              :array[1..2] of String=('������������','��������������');
const cn_msg_INFO                 :array[1..2] of String=('����������','����������');

implementation

end.
