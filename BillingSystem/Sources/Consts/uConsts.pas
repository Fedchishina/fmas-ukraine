//******************************************************************************
// ������ "������������" (bs)
// ���� ��������� ��������
// ������ 18/01/2010
// ��������� ��������� ������ �.�. 18/01/2010
//******************************************************************************
unit uConsts;

interface
{Set Language}
const bs_Lang                        :array[1..3] of string=('00000409', '00000419', '00000422'); 



{Options}
const bs_max_sys_timestamp           :array[1..2] of String=('���������� ����','����������� ����');
const bs_date_start                  :array[1..2] of String=('���� ������ �������','���� ������ �������');

{Windows}
const bs_Windows_Tiltle              :array[1..2] of String=('³���','����');
const bs_WindowsCacade               :array[1..2] of String=('������','������');
const bs_WindowsHorizontal           :array[1..2] of String=('�������������','�������������');
const bs_WindowsVertical             :array[1..2] of String=('�����������','�����������');
const bs_WindowsMinimizeAll          :array[1..2] of String=('�������� ��','�������� ���');
const bs_WindowsCloseAll             :array[1..2] of String=('������� ��','������� ���');

{Form_Titles}
const bs_ReestrContracts_Tiltle      :array[1..2] of String=('����� ���������','������ ����������');
const bs_DBInfo_Tiltle               :array[1..2] of String=('ϳ��������� �� ��','����������� � ��');
const bs_FileVersion                 :array[1..2] of String=('�����','������');
const bs_AssemblingVersion           :array[1..2] of String=('������','������');
const bs_ConnectionInfo              :array[1..2] of String=('���������� ��� �''�������','���������� ��� �����������');
const bs_ApplicationName             :array[1..2] of String=('��''� �����: ','��� ����������: ');
const bs_ApplicationWay              :array[1..2] of String=('��������� �����: ','���� � ����������: ');
const bs_FileVersionFull             :array[1..2] of String=('����� �����: ','������ �����: ');
const bs_AssemblingDate              :array[1..2] of String=('���� ������: ','���� ������: ');
const bs_DBWay                       :array[1..2] of String=('��������� ����� ��: ','���� � ���� ������: ');
const bs_FilterText                  :array[1..2] of String=('������ �������','������� �������');
const bs_HelpText                    :array[1..2] of String=('��������','������');
const bs_WorkWithPopulation          :array[1..2] of String=('������ � ����������','������ � ����������');
const bs_WorkWithEnterprise          :array[1..2] of String=('������ � ������������','������ � �������������');
const bs_WorkWitDogs                 :array[1..2] of String=('������ � ����������','������ � ����������');
const bs_NowDate_Caption             :array[1..2] of String=('�������: ','�������: ');
const bs_RaschetSchet_Title          :array[1..2] of String=('������������� �������','��������� ����');
const bs_UserFio                     :array[1..2] of String=('�.�.�. �����������: ','��� ������������: ');
const bs_Login                       :array[1..2] of String=('����: ','�����: ');
const bs_UserInfo                    :array[1..2] of String=('���������� ��� �����������: ','���������� ��� ������������');
const bs_grid_ADDVerName             :array[1..2] of String=('����� ���� ������������','�������� ������ ������������');

{Date_Formats}
const bs_Year_Short                  :array[1..2] of String=(' ��.',' ��.');

{ShortCuts}
const bs_InsertBtn_ShortCut          :array[1..2] of String=('Ins ', 'Ins ');
const bs_EditBtn_ShortCut            :array[1..2] of String=('F2 ','F2 ');
const bs_DeleteBtn_ShortCut          :array[1..2] of String=('Del ','Del ');
const bs_RefreshBtn_ShortCut         :array[1..2] of String=('F5 ', 'F5 ');
const bs_ExitBtn_ShortCut            :array[1..2] of String=('Esc ','Esc ');
const bs_FilterBtn_ShortCut          :array[1..2] of String=('Ctrl+F ','Ctrl+F ');
const bs_EnterBtn_ShortCut           :array[1..2] of String=('Enter ','Enter ');
const bs_PaymentBtn_ShortCut         :array[1..2] of String=('F6 ','F6 ');
const bs_PrintBtn_ShortCut           :array[1..2] of String=('Ctrl+P ','Ctrl+P ');
const bs_ModeBtn_ShortCut            :array[1..2] of String=('F9 ','F9 ');
const bs_F10Btn_ShortCut             :array[1..2] of String=('F10 ','F10 ');
const bs_F3Btn_ShortCut              :array[1..2] of String=('F3 ','F3 ');

{All_Actions}
const bs_InsertBtn_Caption           :array[1..2] of String=('������','��������');
const bs_EditBtn_Caption             :array[1..2] of String=('������','��������');
const bs_DeleteBtn_Caption           :array[1..2] of String=('��������','�������');
const bs_RefreshBtn_Caption          :array[1..2] of String=('�������', '��������');
const bs_ExitBtn_Caption             :array[1..2] of String=('  �����  ','  �����  ');
const bs_FilterBtn_Caption           :array[1..2] of String=('Գ����','������');
const bs_FilterParams_Need           :array[1..2] of String=('�� ������ ��������� ��� ����������!','�� ������� ��������� ��� ����������!');
const bs_SearchBtn_Caption           :array[1..2] of String=('�����','�����');
const bs_Print_Caption               :array[1..2] of String=(' ���� ',' ������ ');
const bs_Pay_Caption                 :array[1..2] of String=(' ������ ',' ������ ');
const bs_Lgota_Caption               :array[1..2] of String=(' ϳ���� ',' ������ ');
const bs_living_Caption              :array[1..2] of String=('����������','�����������');
const bs_Kat_Caption                 :array[1..2] of String=('�������','������');
const bs_Subsidy_Caption             :array[1..2] of String=('�����䳿','��������');
const bs_EntryRest_Caption           :array[1..2] of String=('������� �������','�������� �������');
const bs_History                     :array[1..2] of String=('������','�������');
const bs_SelectBtn_Caption           :array[1..2] of String=('�������','�������');
const bs_ModeBtn_Caption             :array[1..2] of String=('���� ������','����� ������');
const bs_PrintShort_Caption          :array[1..2] of String=('����','������');
const bs_ViewShort_Caption           :array[1..2] of String=('��������','��������');
const bs_AutoShort_Caption           :array[1..2] of String=('�����������','�����������');
const bs_Credit_Caption              :array[1..2] of String=('������','������');
const bs_Upload_Caption              :array[1..2] of String=('������������','������������');
const bs_BreakDown_Caption           :array[1..2] of String=('��������','�����������');
const  bs_PayerInfoData              :array[1..2] of String=('��� ��� ��������','������ � �����������');
const  bs_Pri4inaRastorg             :array[1..2] of String=('������� ���������','������� �����������');
const bs_ViewAll                     :array[1..2] of String=('���������� ��','���������� ���');
const bs_HidenAll                    :array[1..2] of String=('�������� ��','�������� ���');
{Confirms}
const bs_Confirmation_Caption        :array[1..2] of String=('ϳ�����������','�������������');
const bs_Uvaga_Caption               :array[1..2] of String=('�����!','��������!');
const bs_ExitPromt                   :array[1..2] of String=('�� ������ �����?', '�� ������ �����?');
const bs_DeletePromt                 :array[1..2] of String=('�� ����� ������ �������� �����?', '�� ������������� ������ ������� ������?');
const bs_Accept                      :array[1..2] of String=('��������','�������');
const bs_Cancel                      :array[1..2] of String=('³������','������');
const bs_ClearBufferPromt            :array[1..2] of String=('�� ����� ������ �������� �����?', '�� ������������� ������ �������� �����?');

{ApplicationInitialise}
const bs_Application_Caption         :array[1..2] of String=('������������','������������');
const bs_Reestr_Main_Caption         :array[1..2] of String=('������ ��������','������ ���������');
const bs_Main_Ready_Caption          :array[1..2] of String=('�������','�����');
const bs_Main_StatusBar_Caption      :array[1..2] of String=('������ ����������','������ ����������');
const bs_HotKeys                     :array[1..2] of String=('������ ������','������� �������');
{MainButtons}
const bs_Main_WorkBtn_Caption        :array[1..2] of String=('������','������');
const bs_Main_SpravBtn_Caption       :array[1..2] of String=('��������','�����������');
const bs_Main_AboutBtn_Caption       :array[1..2] of String=('��� ��������','� ���������');
const bs_Main_ExitBtn_Caption        :array[1..2] of String=('�����','�����');

{Errors}
const bs_Error_Caption               :array[1..2] of String=('�������','������');
const bs_Error_LoadBPL_Text          :array[1..2] of String=('������� ��� ����������� ������','������ ��� �������� ������');

{MainGuides}
const  bs_Main_Lgot              :array[1..2] of String=('������� ���� ����', '���������� ����� �����');
const  bs_Main_PayerType             :array[1..2] of String=('������� ���� ��������', '���������� ����� ������������');
const  bs_Main_FacultySpeciality     :array[1..2] of String=('������� c������������� �� ����', '���������� �������������� � �����');
const  bs_Main_FormStudy             :array[1..2] of String=('������� ���� ��������', '���������� ���� ��������');
const  bs_Main_Faculty               :array[1..2] of String=('������� ����������', '���������� �����������');
const  bs_Main_Nationality           :array[1..2] of String=('������� ���������������', '���������� ���������������');
const  bs_Main_Kat                   :array[1..2] of String=('������� ������', '���������� �����');
const  bs_Main_Subsidy               :array[1..2] of String=('������� �������', '���������� ��������');
const  bs_Main_IniPeriodic           :array[1..2] of String=('������� ������������� �����', '���������� ������������� �����');
const  bs_Main_FaculSpecGroup        :array[1..2] of String=('������� ����������, c������������� �� ����', '���������� �����������, �������������� � �����');
const  bs_PaymentAnalysis            :array[1..2] of String=('����� ������ ������', '����� ������� ������');
const  bs_Main_SpRoles               :array[1..2] of String=('������� ���� ������������ �� ���������','���������� ����� ������������� � ����');
const  bs_Main_SpActions             :array[1..2] of String=('������� ��','���������� ��������');
const  bs_Main_SpSignature           :array[1..2] of String=('������� ������','���������� ��������');
const  bs_Main_SpSpec                :array[1..2] of String=('������� c�������������','���������� ��������������');
const  bs_Main_SpDepartment          :array[1..2] of String=('������� ��������','���������� �������������');
const  bs_Main_SpDogStatus           :array[1..2] of String=('������� ������� ���������','���������� �������� ����������');
const  bs_Main_SpPeople              :array[1..2] of String=('������� �������� ���','���������� ���������� ���');
const  bs_Main_SpYurLiza             :array[1..2] of String=('������� �������� ���','���������� ����������� ���');
const  bs_Main_SpRapStatus           :array[1..2] of String=('������� ������� �������','���������� �������� ��������');
const  bs_Main_SpTypeDocum           :array[1..2] of String=('������� ���� ����� ���������','���������� ����� ��������� ����������');
const  bs_Main_SpOrders              :array[1..2] of String=('������� ������','���������� ��������');
const  bs_Main_SpNamesReport         :array[1..2] of String=('������� ����������� ����','���������� ������������ �������');
const  bs_Main_SpTypeDog             :array[1..2] of String=('������� ���� ���������','���������� ����� ����������');
const  bs_Main_SpDatePay             :array[1..2] of String=('������� ��� �����','���������� ��� �����');

const  bs_Main_DawaVCImport          :array[1..2] of String=('������ ����� � ��','������ ������ �� ��');
const  bs_Main_DawaVCPrimary         :array[1..2] of String=('������ �������� � �����','������ �������� � �����');
const  bs_Main_DawaVCLinks           :array[1..2] of String=('������ �������� � ������','������ ��������� �� ������');
const  bs_Main_DawaVCBuffer          :array[1..2] of String=('����� ���������','����� ����������');

const  bs_Main_RaportOtchisl         :array[1..2] of String=('������� �� �����������','������� �� ����������');
const  bs_Main_RaportVotanovl        :array[1..2] of String=('������� �� ����������','������� �� ��������������');

const  bs_print_RZ_Postyp            :array[1..2] of String=('�����/������� ����� ���������� �� ��������','������/������� ����� ����������� �� ��������');

{Contracts_Grid}
const  bs_grid_FIO_Column            :array[1..2] of String=('�.�.�.', '�.�.�.');
const  bs_grid_Date_Dog_Column       :array[1..2] of String=('���� ���������', '���� ����������');
const  bs_grid_Num_Dog_Column        :array[1..2] of String=('����� ��������', '����� ��������');
const  bs_grid_Date_Beg              :array[1..2] of String=('���� �������', '���� ������');
const  bs_grid_Date_End              :array[1..2] of String=('���� ���������', '���� ���������');
const  bs_grid_IsDiss_Column         :array[1..2] of String=('�� �����', '�� �����������');
const  bs_grid_IsNotDiss_Column      :array[1..2] of String=('ĳ����', '�����������');
{Contracts_Footer}
const  bs_footer_Faculty             :array[1..2] of String=('���������', '���������');
const  bs_footer_Spec                :array[1..2] of String=('������������', '�������������');
const  bs_footer_Group               :array[1..2] of String=('�����', '������');
const  bs_footer_FormStudy           :array[1..2] of String=('����� ��������', '����� ��������');
const  bs_footer_CategoryStudy       :array[1..2] of String=('�������� ��������', '��������� ��������');
const  bs_footer_Kurs                :array[1..2] of String=('����', '����');
const  bs_Gragdanstvo                :array[1..2] of String=('������������', '�����������');
const  bs_srok_study                 :array[1..2] of String=('����� ��������','���� ��������');

//-----{Contracts_Components}------------------------------------------------------------------//

{Contracts_Components_GroupBox}
const  bs_BasicInfo_GroupBox         :array[1..2] of String=('������� ����������', '�������� ����������');
const  bs_Study_GroupBox             :array[1..2] of String=('���������� ��� ���, �� ����������', '�����������');
const  bs_Studer_Osoba               :array[1..2] of String=('�����, �� ���������', '�����������');
const  bs_Payer_Osoba                :array[1..2] of String=('�������', '����������');
const  bs_Payers_GroupBox            :array[1..2] of String=('��������', '�����������');
const  bs_Periods_GroupBox           :array[1..2] of String=('������ ������', '������� ������');
const  bs_Istochniki_GroupBox        :array[1..2] of String=('������� ������������', '��������� ��������������');
{Contracts_Components_Lables}
const  bs_Num_Dog_Label              :array[1..2] of String=('����� ��������', '����� ��������');
const  bs_Date_Zakl_Label            :array[1..2] of String=('���� ���������', '���� ����������');
const  bs_Date_Beg_Label             :array[1..2] of String=('���� �������', '���� ������');
const  bs_Date_End_Label             :array[1..2] of String=('���� ���������', '���� ���������');
const  bs_Type_Dog_Label             :array[1..2] of String=('��� ��������', '��� ��������');
const  bs_Basic_Dog_Label            :array[1..2] of String=('��������', '��������');
const  bs_Addit_Dog_Label            :array[1..2] of String=('����������', '��������������');
const  bs_Status_Dog_Label           :array[1..2] of String=('������ ��������', '������ ��������');

{Contracts_Components_Grid_Captions}
const  bs_Payer_Column               :array[1..2] of String=('�������', '����������');
const  bs_Period_Column              :array[1..2] of String=('�����������', '�������������');
const  bs_Persent_Column             :array[1..2] of String=('³������', '�������');
const  bs_Date_Opl_Column            :array[1..2] of String=('���� ������', '���� ������');
const  bs_Summa_Column               :array[1..2] of String=('����', '�����');
const  bs_Name_Column                :array[1..2] of String=('������������', '������������');
const  bs_IS_Deleted_Column          :array[1..2] of String=('��������', '�������');
const  bs_CntMonth_Column            :array[1..2] of String=('ʳ������ ������', '���-�� �������');

const  bs_ParamStudyModify_Caption   :array[1..2] of String=('���������� ��������� ��������', '������������� ��������� ��������');
const  bs_FIOModify_Caption          :array[1..2] of String=('���������� �����, �� ���������', '������������� ������������');
const  bs_add_new_summ               :array[1..2] of String=('������ ���� ����', '�������� ����� ����');
const  bs_add_new_summ_by_param      :array[1..2] of String=('������ ���� ���� �� ������ ��������� ���������', '�������� ����� ���� �� ������ ��������� ����������');

{Smeta-Razdel-Statya-Kekv}
const  bs_Smeta                      :array[1..2] of String=('��������', '�����');
const  bs_Razdel                     :array[1..2] of String=('�����', '������');
const  bs_Statya                     :array[1..2] of String=('������', '������');
const  bs_Kekv                       :array[1..2] of String=('����', '����');
{Contracts_Components_Filtration}
const  bs_Filtration                 :array[1..2] of String=('Գ��������', '����������');
const  bs_FiltrByFIO                 :array[1..2] of String=('�.�.�.', '�.�.�.');
const  bs_FiltrByNum                 :array[1..2] of String=('�����', '�����');
const  bs_FiltrHint                  :array[1..2] of String=('Գ��������� �������!', '����������� ����������!');
const  bs_FiltrBarCode               :array[1..2] of string=('����� ���','����� ���');

{Contracts_Add_Edit_Messages}
const  bs_Num_Dog_Need               :array[1..2] of String=('��������� ��������� ����� ��������!','���������� ��������� ����� ��������!');
const  bs_Date_Dog_Need              :array[1..2] of String=('��������� ��������� ���� ��������� ��������!','���������� ��������� ���� ���������� ��������!');
const  bs_summ_prices_Need           :array[1..2] of string=('��������� ������ ����!','���������� ������ �����!');

//--------------{Contracts_Payer_AE}-------------------------------------------------------------
const  bs_FizOsoba                  :array[1..2] of String=('Գ����� �����', '���������� ����');
const  bs_YurOsoba                  :array[1..2] of String=('�������� �����','����������� ����');
const  bs_PayerType                 :array[1..2] of String=('��� ��������','��� �����������');
const  bs_MFO_Caption               :array[1..2] of String=('���','���');
const  bs_RasSchet_Caption          :array[1..2] of String=('������������� �������','��������� ����');
{Contracts_Payer_AE_Messages}
const  bs_Payer_Need                :array[1..2] of String=('��������� ��������� ��������!','���������� ��������� �����������!');
const  bs_Percent_Need              :array[1..2] of String=('��������� ��������� �������!','���������� ��������� �������!');
const  bs_Period_Need               :array[1..2] of String=('��������� ��������� �����������!','���������� ��������� �������������!');
//--------------{Contracts_Studer_AE}-------------------------------------------------------------
const  bs_Studer                    :array[1..2] of String=('�����, �� ���������','�����������');
const  bs_Studer_Need               :array[1..2] of String=('��������� ��������� �����, �� ���������!','���������� ��������� ������������!');
//--------------{Contracts_Periods_AE}-------------------------------------------------------------
const  bs_Periods_DateOpl           :array[1..2] of String=('���� ������','���� ������');
{Contracts_Periods_AE_Messages}
const  bs_Periods_Date_Beg_Need     :array[1..2] of String=('��������� ��������� ���� �������!','���������� ��������� ���� ������!');
const  bs_Periods_Date_End_Need     :array[1..2] of String=('��������� ��������� ���� ���������!','���������� ��������� ���� ���������!');
const  bs_Periods_Date_Pay_Need     :array[1..2] of String=('��������� ��������� ���� ������!','���������� ��������� ���� ������!');
const  bs_Periods_Date_PaySum_Need  :array[1..2] of String=('��������� ��������� ����!','���������� ��������� �����!');
//-----------------------------------------------------------------------------------------------
{Contracts_Istochniki_AE_Messages}
const  bs_Smeta_Need                :array[1..2] of String=('��������� ��������� ��������!','���������� ��������� �����!');
const  bs_Razdel_Need               :array[1..2] of String=('��������� ��������� �����!','���������� ��������� ������!');
const  bs_Stat_Need                 :array[1..2] of String=('��������� ��������� ������!','���������� ��������� ������!');
const  bs_Kekv_Need                 :array[1..2] of String=('��������� ��������� ����!','���������� ��������� ����!');

{Contracts_StudyParams_Title}
const  bs_StudyParams_Title         :array[1..2] of String=(' ��������� ��������',' ��������� ��������');

const  bs_CollectDog                :array[1..2] of String=('�����������','������������');
const  bs_EntryRest                 :array[1..2] of String=('������� �������','�������� �������');
const  bs_EntryRestShort            :array[1..2] of String=('��.�������','��.�������');

{Oplata_Analiz}
const  bs_Beg_Opl                    :array[1..2] of String=('������� ������', '������ �������');
const  bs_End_Opl                    :array[1..2] of String=('��������� ������', '����� �������');
const  bs_Summa_Opl                  :array[1..2] of String=('������� ��������, ���', '��������� ��������, ���');
const  bs_PercentLg_Opl              :array[1..2] of String=('³������ �����, %', '������� ������, %');
const  bs_SummaLg_Opl                :array[1..2] of String=('���� �����, ���', '����� ������, ���');
const  bs_MonthCount_Opl             :array[1..2] of String=('ʳ�-��� ������', '���-�� �������');
const  bs_SummFinal_Opl              :array[1..2] of String=('���� �� �����, ���', '����� �� ������, ���');
const  bs_NumDoc_Pay                 :array[1..2] of String=('�������� �', '�������� �');
const  bs_DateDoc_Pay                :array[1..2] of String=('���� �����.', '���� �����.');
const  bs_Summa_Pay                  :array[1..2] of String=('����, ���.', '�����, ���.');
const  bs_Need_Pay                   :array[1..2] of String=('����� ��������:', '���� ��������:');
const  bs_Was_Pay                    :array[1..2] of String=('��� ��������:', '��� ��������:');
const  bs_PayPo_Pay                  :array[1..2] of String=('�������� �� ', '�������� �� ');
const  bs_Now_Pay                    :array[1..2] of String=('�� ������ �� �������', '� ������ �� �������:');
const  bs_Itogo_Pay                  :array[1..2] of String=('�����', '�����');
const  bs_Zadolg_Pay                 :array[1..2] of String=('�������������:', '�������������:');
const  bs_Hint_Pay                   :array[1..2] of String=('��������� ������ �� ��������', '��������� ������ �� �������');
const  bs_DateBirth                  :array[1..2] of String=('���� ����������: ', '���� ��������:');
const  bs_DSetRecordCount            :array[1..2] of String=('ʳ������ ������: ', '���������� �������: ');
const  bs_FullPay                    :array[1..2] of String=('C������� �������','�������� ����������');

const  bs_FullName                   :array[1..2] of String=('����� �����', '������ ��������');
const  bs_ShortName                  :array[1..2] of String=('��������� �����', '������� ��������');


const  bs_sp_ContractsList           :array[1..2] of String=('������� ���, �� ���������� �� ����������', '���������� ����������� �� ���������');
const  bs_OplataCaption              :array[1..2] of String=('������ ���������','������ ���������');
const  bs_ActionDates                :array[1..2] of String=('����� 䳿','������ ��������');
const  bs_PayPeriod                  :array[1..2] of String=('������ �� �����','������ �� ������');
const  bs_SumCheck                   :array[1..2] of String=('�� ����������� ����','� ��������� �����');
const  bs_NeedPay                    :array[1..2] of String=('����� ��������','���� ��������');
const  bs_WhosPay                    :array[1..2] of String=('��� ��������','��� ��������');
const  bs_Borg                       :array[1..2] of String=('��������������','�������������');
const  bs_EnterSum                   :array[1..2] of String=('����, �� ���������','�������� �����');
const  bs_Z                          :array[1..2] of String=('�','�');
const  bs_Po                         :array[1..2] of String=('��','��');

const  bs_View                       :array[1..2] of String=('��������','��������');
const  bs_Pay                        :array[1..2] of String=('������','������');

const  bs_Zaborgov                   :array[1..2] of String=('��������������','�������������');
const  bs_Pereplata                  :array[1..2] of String=('���������','���������');

const  bs_Lgots_Sp                   :array[1..2] of String=('ϳ���� �� ����������','������ �� ���������');
const  bs_NomPrikaz                  :array[1..2] of String=('����� ������','����� �������');
const  bs_DatePrikaz                 :array[1..2] of String=('���� ������','���� �������');
const  bs_Osnovanie                  :array[1..2] of String=('ϳ������','���������');

const  bs_BegDate_Short              :array[1..2] of String=('���� ���.','���� ���.');
const  bs_EndDate_Short              :array[1..2] of String=('���� ����.','���� �����.');
const  bs_RateAcc_Default            :array[1..2] of String=('������� ������������� �������','���������� ��������� ������');
const  bs_RateAcc_Rate               :array[1..2] of String=('������������� �������','��������� ����');

const  bs_SearchCaption_Ex           :array[1..2] of String=('���������� ������','����������� ������');
const  bs_Search_Ex                  :array[1..2] of String=('������ ��','������ ��');
const  bs_TIN_Ex                     :array[1..2] of String=('���������������� ���������� �������','������������������ ���������� ������');
const  bs_Need_TIN                   :array[1..2] of String=('��������� ��������� ���������������� ���������� �����!','���������� ��������� ����������������� ��������� �����!');
const  bs_Payer_Ex                   :array[1..2] of String=('���������','�����������');

const  bs_Config                     :array[1..2] of String=('������������','������������');
const  bs_Tunning                    :array[1..2] of String=('���������...','���������...');
const  bs_Desctop                    :array[1..2] of String=('������� ���','������� ����');
const  bs_StartMenu                  :array[1..2] of String=('���� "����"','���� "����"');
const  bs_CreateIcons                :array[1..2] of String=('�������� ������ �� ...','��������� ������ �� ...');
const  bs_Icons                      :array[1..2] of String=('������','������');

const  bs_WhatsNew                   :array[1..2] of String=('���������: ������ �����','���������: ������� ������');
const  bs_WhatsNew_Cap               :array[1..2] of String=('�� ������?','��� ������?');
const  bs_Exit                       :array[1..2] of String=('�����','�����');
// DogDiss
const  bs_InfoDiss                   :array[1..2] of String=('���������� ��� ���������','���������� ��� �����������');
const  bs_DateDiss                   :array[1..2] of String=('���� ���������','���� �����������');
const  bs_DateOrderDiss              :array[1..2] of String=('���� ������','���� �������');
const  bs_NumOrderDiss               :array[1..2] of String=('����� ������','����� �������');
const  bs_CommentDiss                :array[1..2] of String=('��������','�����������');

const  bs_TypeLg_Label               :array[1..2] of String=('��� �����','��� ������');
const  bs_TypeDiss                   :array[1..2] of String=('�������(��� ���������)','�������(��� �����������)');
const  bs_sp_IniTypeDiss             :array[1..2] of String=('������� ���� ��������� ���������','���������� ����� ����������� ���������');
const  bs_Confirm                    :array[1..2] of String=('ϳ�����������','�������������');
const  bs_Interface                  :array[1..2] of String=('���������','���������');
const  bs_NoExitConfirm              :array[1..2] of String=('�� ������������� �����','�� ������������ �����');


const  bs_DateProv                   :array[1..2] of String=('���� ��������','���� ��������');
const  bs_ProvNote                   :array[1..2] of String=('ϳ������','���������');
const  bs_Pevdonim                   :array[1..2] of String=('��������','���������');
const  bs_Kr                         :array[1..2] of String=('������','������');
const  bs_Db                         :array[1..2] of String=('�����','�����');
const  bs_DogNumProv                 :array[1..2] of String=('������ �','������� �');
const  bs_Dodatki                    :array[1..2] of String=('�������� 䳿','�������������� ��������');

const  bs_Cookies                     :array[1..2] of String=('��������� �����������(����� � �����)','��������� �������������(����� �� �������)');
const  bs_Language                    :array[1..2] of String=('���� (������� ���������������� ��������)','���� (���������� ������������ ���������)');
const  bs_Rus_Lang                    :array[1..2] of String=('��������','�������');
const  bs_Ukr_Lang                    :array[1..2] of String=('���������','����������');
const  bs_LangReload                  :array[1..2] of String=('��������� ���������������� ��������','����� ��������� �������� � ���� ��������� ���������� ���������');
const  bs_Baloon                      :array[1..2] of String=('ϳ������','���������');
const  bs_Welcome                     :array[1..2] of String=('������� "������������" ���� ��� ������ ������... ','������� "������������" ������ ��� �������� ������...');

const  bs_PreyskurantWork             :array[1..2] of String=('������ � �������������','������ � �������������');
const  bs_FizLizoEdit                 :array[1..2] of String=('���������� ��� ���.�����','������������� ������ ���.����');

// Tree
const  bs_tree_FullOpen               :array[1..2] of String=('�������� ������ ������','�������� ������ �������');
const  bs_tree_FullClose              :array[1..2] of String=('�������� ������ ������','�������� ������ �������');
const  bs_tree_BranchOpen             :array[1..2] of String=('�������� ����','�������� �����');
const  bs_tree_BranchClose            :array[1..2] of String=('�������� ����','�������� �����');
const  bs_tree_FullScreen             :array[1..2] of String=('������ �����','������ �����');

const  bs_Preved                      :array[1..2] of String=('�� ���������� ������ ��� ����������� ','�� ���������� ����������� ��� ��������');
const  bs_PrevedSelf                  :array[1..2] of String=('������ ���� ��� ������ ��������� �� �����������','������� ���� ���� ������� ����������� ��� �����������');
const  bs_PrevedHint                  :array[1..2] of String=('��� �������� ���������� ������� ���� ������','��� ��������� ���������� �������� ���� ������');

const  bs_PayerSelect                 :array[1..2] of String=('���� �������� �� ���������','����� ����������� �� ��������');

// preyskurant
const  bs_ViewPrice_Hint              :array[1..2] of String=('�������� ��������� �����','�������� ���������� ������');
const  bs_grid_VerName                :array[1..2] of String=('����� ���� ������������','�������� ������ ������������');
const  bs_showVerssions               :array[1..2] of String=('���������� ����','���������� ������');
const  bs_AddVerssion                 :array[1..2] of String=('������ �����','�������� ������');
const  bs_Preyskurant                 :array[1..2] of String=('�����������...','�����������...');
const  bs_PreyskurantHint             :array[1..2] of String=('������� ��� � ������������','������� ������ �� ������������');

const  bs_roles_Kod                   :array[1..2] of String=('���','���');
const  bs_roles_Group                 :array[1..2] of String=('����� ������������','������ �������������');
const  bs_roles_Smets                 :array[1..2] of String=('���������','�����');

const  bs_AcademYear                  :array[1..2] of String=('������. ��','������. ���');
const  bs_StudInfWarning              :array[1..2] of String=('���������� ��� ���, �� ���������� ��������� ���� ��������. ������ �������� ���!','���������� ��� ����������� ��������� ���� ��������. ����������� ��������� ������!');

const  bs_Service                     :array[1..2] of String=('������','������');
const  bs_VC_Import                   :array[1..2] of String=('������ ���������','������ ����������');
const  bs_VC_ClearBuffer              :array[1..2] of String=('�������� �����','�������� �����');
const  bs_VC_AllBuffer                :array[1..2] of String=('����� ������','����� �������');
const  bs_VC_BufferCaption            :array[1..2] of String=('DBF-�����','DBF-�����');
const  bs_VCBuffer_or_Not             :array[1..2] of String=('������ � ������ �� ������?','�������� �� ������ ��� �������?');

const  bs_Log                         :array[1..2] of String=('���-������ ������ � ����������','���-������� ������ � ����������');
const  bs_User                        :array[1..2] of String=('����������','������������');
const  bs_Action                      :array[1..2] of String=('ĳ�','��������');
const  bs_Stamp                       :array[1..2] of String=('����\���','����\�����');

const  bs_Use_Beg                     :array[1..2] of String=('���. 䳿','���. ������.');
const  bs_Use_End                     :array[1..2] of String=('ʳ���� 䳿','�����. ������.');

const  bs_RaxynokNaSplaty             :array[1..2] of String=('������� �� ������ �������� �','���� �� ������ �������� �');
const  bs_SymaPaxynky                 :array[1..2] of String=('���� �������','����� �����');
const  bs_NDS                         :array[1..2] of String=('���','���');
const  bs_PazomZNDS                   :array[1..2] of String=('����� � ���','����� � ���');
const  bs_RaxynokNaSplatyCaption      :array[1..2] of String=('������� ������� �� ������ ��������','������� ����� �� ������ ��������');
const  bs_Vid                         :array[1..2] of String=('��','��');

const  bs_SysOptions                  :array[1..2] of String=('������� ���������','��������� ���������');
const  bs_Signature                   :array[1..2] of String=('ϳ����','�������');
const  bs_Signature_off               :array[1..2] of String=('����� �����','����� �������');
const  bs_Signature_on                :array[1..2] of String=('��������� �����','��������� �������');
const  bs_TransferToNextCurs          :array[1..2] of String=('����������� �� ����. ����','������� �� ����. ����');

const  bs_ForEach                     :array[1..2] of String=('ϳ����������� ��� ������� ��������','������������� ��� ������� ��������');
const  bs_AvtoRastorg                 :array[1..2] of String=('����������� ��������� ���������','������������� ���������� ���������');
const  bs_ParamsOtbor                 :array[1..2] of String=('��������� ��������� ������','��������� ���������� ������');
const  bs_Params                      :array[1..2] of String=('���������','���������');
const  bs_CurrentTaskPercent          :array[1..2] of String=('³������ ���������','������� ����������');
const  bs_Admit                       :array[1..2] of String=('����������','����������');
const  bs_Admit_All                   :array[1..2] of String=('���������� ��','���������� ���');
const  bs_NewPeriod                   :array[1..2] of String=('����� ����� ��������','����� ������ ��������');

const  bs_Role                        :array[1..2] of String=('�����','������');

const  bs_AllForAdmin                 :array[1..2] of String=('����� �������� ���!','������ ��������� ��!');
const  bs_DotypSmetiTitle             :array[1..2] of String=('������� ���������','��������� �����');

const  bs_NextCursAvto                :array[1..2] of String=('������ ��������� ���� �����������','�������� ��������� ���� �����������');

const  bs_RahunokWork                 :array[1..2] of String=('������ � ���������','������ �� �������');

const  bs_Relation                    :array[1..2] of String=('��''����','�����');
const  bs_RelDepartment               :array[1..2] of String=('��''���� � ���������','����� � ��������������');
const  bs_NoRelDepartment             :array[1..2] of String=('��''���� � ��������� �� ��������','����� � �������������� �� ����������');
const  bs_DepGrName                   :array[1..2] of String=('����� � �������','������ � �������������');
const  bs_NameExec                    :array[1..2] of String=('������ �������������','��������� ��������������');
const  bs_Dekan                       :array[1..2] of String=('ϲ� �������������','��� ��������������');
const  bs_SearchAll                   :array[1..2] of String=('��','���');
const  bs_Write                       :array[1..2] of String=('�����','������');

const  bs_Sort                        :array[1..2] of String=('����������','����������');

const  bs_Success                     :array[1..2] of String=('������!','�������!');
const  bs_WasFullWork                 :array[1..2] of String=('��������� ������: ','���������� �����: ');
const  bs_WasBreak                    :array[1..2] of String=('��������: ','�����������: ');
const  bs_WasTransfer                 :array[1..2] of String=('���������� �� ��������� ����: ','���������� �� ��������� ����: ');
const  bs_WasAdmit                    :array[1..2] of String=('���������: ','���������: ');

const  bs_Add_List                    :array[1..2] of String=('������ ������','�������� ������');
const  bs_Status                      :array[1..2] of String=('������','������');
const  bs_Type                        :array[1..2] of String=('���','���');
const  bs_DateCalc                    :array[1..2] of String=('���� ����������','���� �������');
const  bs_RaportAvto                  :array[1..2] of String=('������ ����������� �� ���� ����������','�������� ������������� �� ���� �������');
const  bs_RaportAvtoComments          :array[1..2] of String=('����������� ��������� ��� ���������, �� ����� �������������� �� ���� ���������� ','�������������� ���������� ���� ����������, ������� ����� ������������� �� ���� �������');

const  bs_Lgota                       :array[1..2] of String=('ϳ����:','������:');
const  bs_OnovnieTypeDoc              :array[1..2] of String=('������','��������');
const  bs_DodatkovTypeDoc             :array[1..2] of String=('��������','��������������');

const  bs_Recovery                    :array[1..2] of String=('³���������','��������������');
const  bs_grid_Actual                 :array[1..2] of String=('�����������','������������');
const  bs_price_already_signed        :array[1..2] of String=('ϳ��������','����������');

const  fr_Reports_CALC_NameREP0       :array[1..2] of String=('���������� ��','������ ��');
const  fr_Reports_CALC_NameREP        :array[1..2] of String=('������ �','������� �');
const  fr_Reports_CALC_NameREP1       :array[1..2] of String=('��� ���� ��������� �������� �� ��������','� ��������� ���������� �������� �� ��������');
const  fr_Reports_CALC_NameREP2       :array[1..2] of String=('������ �','������� �');
const  fr_Reports_CALC_NameStuder     :array[1..2] of String=('�����, �� ���������','���������');

const  fr_Reports_CALC_Beg            :array[1..2] of String=('������� ������','������ �������');
const  fr_Reports_CALC_End            :array[1..2] of String=('ʳ���� ������','����� �������');
const  fr_Reports_CALC_Stoimost       :array[1..2] of String=('������� ����., ���','��������� ����., ���');
const  fr_Reports_CALC_SummaLg        :array[1..2] of String=('������ �����, ���','�������� ������, ���');
const  fr_Reports_CALC_PersentLg      :array[1..2] of String=('³������ �����, %','������� ������, %');
const  fr_Reports_CALC_DolgBeg        :array[1..2] of String=('���� �� �������, ���','���� �� ������, ���');
const  fr_Reports_CALC_AllPeriod      :array[1..2] of String=('���� �� �����, ���','����� �� ������, ���');
const  fr_Reports_CALC_SumPay         :array[1..2] of String=('����, �� �������, ���','����������� �����, ���');
const  fr_Reports_CALC_DolgEnd        :array[1..2] of String=('���� �� �����, ���','���� �� �����, ���');

const  fr_Reports_CALC_SumDolg        :array[1..2] of String=('���� �� ������, ���','����� � ������, ���');
const  fr_Reports_CALC_WhasPay         :array[1..2] of String=('��� ��������, ���','��� ��������, ���');

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

const  bs_Execution                   :array[1..2] of String=('��������','���������');

const  frVikonannya_Btn               :array[1..2] of String=('���������� ���, ��������� �������� �� ��������',
                                                              '������������� ����, ���������� ��������� �� ��������');

const  bs_Orders                      :array[1..2] of String=('������','�������');

const  bs_OrderType                   :array[1..2] of String=('��� ������','��� �������');
const  bs_NumOrd                      :array[1..2] of String=('�����','�����');
const  bs_DateOrd                     :array[1..2] of String=('����','����');
const  bs_Zvit                        :array[1..2] of String=('���','�����');
const  bs_TagOrder                    :array[1..2] of String=('��������','���������');

const  bs_IsVisibleReestr             :array[1..2] of String=('������� � �����','������� � �������');
const  bs_IsVisibleOplata             :array[1..2] of String=('������� � �����','������� � ������');
const  bs_IsVisibleReestrShort        :array[1..2] of String=('� �����','� �������');
const  bs_IsVisibleOplataShort        :array[1..2] of String=('� �����','� ������');

const  bs_BasicContract               :array[1..2] of String=('��������','��������');

const  bs_ContractPrint               :array[1..2] of String=('���� ���������','������ ���������');
const  bs_Day                         :array[1..2] of String=('����','����');
const  bs_Month                       :array[1..2] of String=('̳����','�����');
const  bs_Full_Name                   :array[1..2] of String=('����� ������������','������ ������������');
const  bs_CopyPrintCount              :array[1..2] of String=('ʳ��-��� ���� ��� �����','���-�� ����� ��� ������');
const  bs_LowSpecimen                 :array[1..2] of String=('������� ����������� ��������','�������� ������������� ��������');
const  bs_OsosbaCustomer              :array[1..2] of String=('�����, ��� ������ ��������','����, ����������� ��������');
const  bs_DeletedShow                 :array[1..2] of String=('������� ���������','��������� ���������');
const  bs_DeletedMode                 :array[1..2] of String=('����� ��������� ��������� ���������','����� ��������� ��������� ����������');
const  bs_ExportData                  :array[1..2] of String=('������� ����� ���������','������� ������ ���������');

const  bs_KillAll                     :array[1..2] of String=('�������� ��','������� ���');
const  bs_KillOnlyOne                 :array[1..2] of String=('�������� �� ��������','������� �� �������');

const  bs_TwainShort                  :array[1..2] of String=('����','����');
const  bs_Twain                       :array[1..2] of String=('����������','����������');
const  bs_CreditNote                  :array[1..2] of String=('��������� ����','��������� ������');
const  bs_CreditBank                  :array[1..2] of String=('�������� ������','����������� ������');
const  bs_LimitSum                    :array[1..2] of String=('���� ���� �������','������ ����� �������');
const  bs_LimitDogs                   :array[1..2] of String=('���� �-�� ���������','������ ���-�� ����������');
const  bs_CreditImage                 :array[1..2] of String=('ҳ���� � ��������','������ � ��������');
const  bs_Reestr                      :array[1..2] of String=('�����','������');
const  bs_Image                       :array[1..2] of String=('������','������');
const  bs_DogSum                      :array[1..2] of String=('���� ��������','����� ��������');
const  bs_PrintRangeImage             :array[1..2] of String=('���� �������� ������...','������ ��������� �������...');
const  bs_Main_SpCreditStatus         :array[1..2] of String=('������� ������� �������','���������� �������� �������');

const  bs_PrintAllPages               :array[1..2] of String=('�� �������','��� ��������');
const  bs_PrintChetPages              :array[1..2] of String=('���� �������','������ ��������');
const  bs_PrintNeChetPages            :array[1..2] of String=('������ �������','�������� ��������');

const  bs_btnSeparate                 :array[1..2] of String=('���''�������','����������');
const  bs_btnUnion                    :array[1..2] of String=('��''�������','�����������');

const  bs_CopyPrice                   :array[1..2] of String=('��������','����������');

const  bs_Fam                         :array[1..2] of String=('�������','�������');
const  bs_Name                        :array[1..2] of String=('��''�','���');
const  bs_otch                        :array[1..2] of String=('�� �������','��������');

{
const  bs_                           :array[1..2] of String=('','');
const  bs_                           :array[1..2] of String=('','');
const  bs_                           :array[1..2] of String=('','');
const  bs_                           :array[1..2] of String=('','');
}

//-----------------------------REG----------------------------------------------
const bs_Can_not_delete              :array[1..2] of String=('����� ��������� � �� ���� ���� ���������!','������ �������� � �� ����� ���� ������!');
//-----------------------------Message------------------------------------------
const bs_msg_WARNING              :array[1..2] of String=('������������','��������������');
const bs_msg_INFO                 :array[1..2] of String=('����������','����������');


const bs_sp_input      : array[1..2] of String=('������� �����','���������� ������');
const bs_sp_hydrometer : array[1..2] of String=('������� �������','���������� ���������');
const bs_short_cut     : array[1..2] of String=('������ ������','������� �������');

//----------------------���������� ����� ���������
const bs_sp_hydrometer_type      :array[1..2] of String=('������� ���� �������','���������� ����� ���������');
const bs_name_hydrometer_type    :array[1..2] of String=('����� ���� �������','�������� ���� ��������');
const bs_caliber_hydrometer      :array[1..2] of String=('����� �������','������ ��������');
const bs_id_unit_meas            :array[1..2] of String=('������� ����� ������ �������','������� ��������� ������� ��������');
const bs_capacity_hydrometer     :array[1..2] of String=('���������� �������','����������� ��������');
const bs_accuracy_hydrometer     :array[1..2] of String=('������� �������','�������� ��������');
const bs_note_hydrometer         :array[1..2] of String=('�������','����������');
const bs_factory_hydrometer      :array[1..2] of String=('�������� �������','������������� ��������');

//----------------------���������� ����� ���������
const bs_sp_hydrometer_vid      :array[1..2] of String=('������� ���� �������','���������� ����� ���������');
const bs_name_hydrometer_vid    :array[1..2] of String=('����� ���� �������','�������� ���� ��������');

//----------------------���������� ����� ����������
const bs_sp_document_type      :array[1..2] of String=('������� ���� ���������','���������� ����� ����������');
const bs_name_document_type    :array[1..2] of String=('����� ���� ���������','�������� ���� ���������');


//------------�����---
const BsClFieldIsEmpty = $00DDBBFF;

implementation


end.
