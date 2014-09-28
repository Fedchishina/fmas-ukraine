unit gr_uCommonConsts;

interface

//******************************************************************************
//
//��������� ����
const Application_Caption          :array[1..2] of string = ('��������','���������');
const Access_Caption               :array[1..2] of string = ('����','����');
const Exit_Caption                 :array[1..2] of string = ('�����','�����');
const Add_Group                    :array[1..2] of string = ('������ �����','�������� ������');
const Delete_Group                 :array[1..2] of string = ('�������� �����','������� �����');
const Add_Paiment                  :array[1..2] of string = ('������ �������','�������� �������');
const DataStud_Caption             :array[1..2] of string = ('��� ��������','������ ���������');
const InformatData_Text            :array[1..2] of string = ('������','�������');
const Spisok_Text                  :array[1..2] of string = ('������','������');
const Group_Caption                :array[1..2] of string = ('�����','������');
const Sheets_Text                  :array[1..2] of string = ('³������','���������');
const Data_Text                    :array[1..2] of string = ('���','������');
const CurrentOperationsData_Text   :array[1..2] of string = ('��� �������� ��������','������ ������� ������');
const Service_Text                 :array[1..2] of string = ('�����','������');
const Sprav_Text                   :array[1..2] of string = ('��������','�����������');
const Nalogi_Text                  :array[1..2] of string = ('�������','������');
const ViewUsers_Text               :array[1..2] of string = ('�������� �����','�������� ������');
const ViewErrors_Text              :array[1..2] of string = ('�������� �������','�������� ������');
const People_Text                  :array[1..2] of string = ('Գ���� �����','���������� ����');
const VidOpl_Text                  :array[1..2] of string = ('���� ��������','���� ��������');
const Departments_Text             :array[1..2] of string = ('�����','������');
const TypePayment_Text             :array[1..2] of string = ('���� ������','���� ������');
const Information_Text             :array[1..2] of string = ('����������','����������');
const LastPeriodData_Text          :array[1..2] of string = ('��� ������� ������','������ ��������� ��������');
const UchVed_Text                  :array[1..2] of string = ('������� ���������','������� ����������');
const PeriodVed_Text               :array[1..2] of string = ('³������ ��������� ������','��������� �������� �������');
const ReeVed_Text                  :array[1..2] of string = ('������ ���������','������� ����������');
const LocateAndFilter_Text         :array[1..2] of string = ('Գ���� �� ����� ���������','������ � ����� ����������');
const Work_Text                    :array[1..2] of string = ('������','������');
const Current_Text                 :array[1..2] of string = ('������ �������','������� �������');
const QuickCount_Text              :array[1..2] of string = ('��������� ����������','������� ������');
const AllCount_Text                :array[1..2] of string = ('����������','������');
const Recount_Text                 :array[1..2] of string = ('�����������','��������');
const ViewVedData_Text             :array[1..2] of string = ('��� ���������','������ ����������');
const ViewAccData_Text             :array[1..2] of string = ('��� ����������','������ �������');
const ViewRecData_Text             :array[1..2] of string = ('��� �����������','������ ���������');
const OperationEnd_Text            :array[1..2] of string = ('��������� ��������','��������� ��������');
const Windows_Text                 :array[1..2] of string = ('³���','����');
const Cascade_Text                 :array[1..2] of string = ('��������','��������');
const TileGor_Text                 :array[1..2] of string = ('�������������','�������������');
const TileVer_Text                 :array[1..2] of string = ('�����������','�����������');
const Minimize_Text                :array[1..2] of string = ('̳��������','��������');
const Maximize_Text                :array[1..2] of string = ('������������','����������');
const Normalize_Text               :array[1..2] of string = ('������������','�������������');
const CloseAll_Text                :array[1..2] of string = ('������� ��','������� ���');
const Filter_Text                  :array[1..2] of string = ('Գ����','������');
const NotFilter_Text               :array[1..2] of string = ('��� �������','��� �������');
const SumMoreNull_Text             :array[1..2] of string = ('����>0','�����>0');
const SumLessNull_Text             :array[1..2] of string = ('����<0','�����<0');
const SumEqualsNull_Text           :array[1..2] of string = ('����=0','�����=0');
const SumIsNull_Text               :array[1..2] of string = ('���� - ����� ��������','����� - ������ ��������');
const CountContinue_Text           :array[1..2] of string = ('��� ����������','��� ������');
const PrepareDataContinue_Text     :array[1..2] of string = ('��� ��������� ������','��� ���������� ������');
const FormSheetsContinue_Text      :array[1..2] of string = ('��� ���������� ���������','��� ������������ ����������');
const AccDepart_Text               :array[1..2] of string = ('���������� ������','����������� ������');
const GrantRise_Text               :array[1..2] of string = ('ϳ��������','���������');
const GrantIndexation_Text         :array[1..2] of string = ('����������','����������');
const StudentCards_Caption         :array[1..2] of string = ('������� ��������','���������� ���������');
const SelAll_Caption               :array[1..2] of string = ('������ ��','������� ���');
// ��������� ������

const DeletePayment_Caption        :array[1..2] of string = ('�������� �������','������� �������');
const UpdateRecBtn_Caption         :array[1..2] of string = ('���������� �������','���. ���. �������');
const ApplyBtn_Caption             :array[1..2] of string = ('��������','���������');
const InsertBtn_Caption            :array[1..2] of string = ('������','��������');
const CorrentBtn_Caption           :array[1..2] of string = ('������ ������ �������','�������� �������� �������');
const GrantBtn_Caption             :array[1..2] of string = ('������ ��������','�������� ���������');
const UpdateBtn_Caption            :array[1..2] of string = ('����������','��������');
const DeleteBtn_Caption            :array[1..2] of string = ('��������','�������');
const DelAllBtn_Caption            :array[1..2] of string = ('�������� ���','������� ��');
const DetailBtn_Caption            :array[1..2] of string = ('��������','��������');
const AddManBtn_Caption            :array[1..2] of string = ('������ �����','�������� ��������');
const Man_Caption                  :array[1..2] of string = ('Գ����� �����','���������� ����');
const RefreshBtn_Caption           :array[1..2] of string = ('��������','��������');
const ExitBtn_Caption              :array[1..2] of string = ('�����','�����');
const YesBtn_Caption               :array[1..2] of string = ('��������','�������');
const CancelBtn_Caption            :array[1..2] of string = ('³������','��������');
const FilterBtn_Caption            :array[1..2] of string = ('Գ����','������');
const LocateBtn_Caption            :array[1..2] of string = ('������','������');
const LocateNextBtn_Caption        :array[1..2] of string = ('���','������');
const PrintBtn_Caption             :array[1..2] of string = ('����','������');
const SelectBtn_Caption            :array[1..2] of string = ('������','�������');
const ClearBtn_Caption             :array[1..2] of string = ('��������','��������');
const DoCountBtn_Caption           :array[1..2] of string = ('�����������','���������');
const InverseBtn_Caption           :array[1..2] of string = ('�����������','�������������');
const SnBtn_Caption                :array[1..2] of string = ('����� ��','����� ���');
const WhatsNewBtn_Caption          :array[1..2] of string = ('�� ������','��� ������');
const PrintSubItemSvods_Caption    :array[1..2] of string = ('����','������');
const PrintSvodBySch_Caption       :array[1..2] of string = ('��� �� ��������','������ �� ������');
const PrintReeAlimony_Caption      :array[1..2] of string = ('����� ����������','������ ������������');
const PrintReeDolg_Caption         :array[1..2] of string = ('����� �����','������ ������');
const PrintSvodVed_Caption         :array[1..2] of string = ('������� �������','������� ���������');
const PrintVedByFilter_Caption     :array[1..2] of string = ('��� �� ��������','����� �� �������');
const PrintSpDohSubs_Caption       :array[1..2] of string = ('������ ��� ������(�������)','������� � �������(��������)');
const PrintSpDoh_Caption           :array[1..2] of string = ('������ ��� ������','������� � �������');
const Indexation_Caption           :array[1..2] of string = ('����������','����������');
const MenuPrint_Caption            :array[1..2] of string = ('����','������');
const RecDeleteBtn_Caption         :array[1..2] of string = ('�������� � ����������','������� �� ���������');
const RecDeleteAllBtn_Caption      :array[1..2] of string = ('�������� ���','������� ����');
const PrintVedByMonth_Caption      :array[1..2] of string = ('³������ �� ������','��������� �� ������');
const InsertAll_Caption            :array[1..2] of string = ('������ ���','�������� ����');
//******************************************************************************
const LabelShifr_Caption           :array[1..2] of string = ('����','����');
const LabelFirm_Caption            :array[1..2] of string = ('ϳ���������','�����������');
const LabelStudent_Caption         :array[1..2] of string = ('�������','�������');
const LabelProgress_Caption        :array[1..2] of string = ('�������','��������');
const LabelFormSheet_Caption       :array[1..2] of string = ('��������� �������','����������� ���������');
const LabelStudentMoving_Caption   :array[1..2] of string = ('��������','��������');
const LabelVidOpl_Caption          :array[1..2] of string = ('��� ��������','��� ��������');
const LabelDepartment_Caption      :array[1..2] of string = ('�����','������');
const LabelKodDepartment_Caption   :array[1..2] of string = ('��� �����','��� ������');
const LabelNameDepartment_Caption  :array[1..2] of string = ('����� �����','�������� ������');
const LabelSmeta_Caption           :array[1..2] of string = ('��������','�����');
const LabelTypeSheet_Caption       :array[1..2] of string = ('��� �������','��� ���������');
const LabelCategory_Caption        :array[1..2] of string = ('��������','���������');
const LabelPost_Caption            :array[1..2] of string = ('������','������');
const LabelPeriod_Caption          :array[1..2] of string = ('�����','������');
const LabelPrikaz_Caption          :array[1..2] of string = ('�����','������');
const LabelSumma_Caption           :array[1..2] of string = ('����','�����');
const LabelMin_Caption             :array[1..2] of string = ('̳����','�������');
const LabelMax_Caption             :array[1..2] of string = ('�������','��������');
const LabelPercent_Caption         :array[1..2] of string = ('³������','�������');
const LabelWaitData_Caption        :array[1..2] of string = ('���������, ��� ���� �����!','���������, ���� ����� ������!');
const LabelDateBeg_Caption         :array[1..2] of string = ('�������','������');
const LabelDateEnd_Caption         :array[1..2] of string = ('���������','���������');
const LabelKod_Caption             :array[1..2] of string = ('���','���');
const LabelTin_Caption             :array[1..2] of string = ('���������������� �����','����������������� �����');
const LabelFIO_Caption             :array[1..2] of string = ('�.�.�.','�.�.�.');
const LabelName_Caption            :array[1..2] of string = ('�����','��������');
const LabelNameShort_Caption       :array[1..2] of string = ('��������� �����','����������� ��������');
const LabelNameFull_Caption        :array[1..2] of string = ('����� �����','������ ��������');
const LabelMonth_Caption           :array[1..2] of string = ('̳����','�����');
const LabelYear_Caption            :array[1..2] of string = ('г�','���');
const LabelHours_Caption           :array[1..2] of string = ('������','����');
const LabelDays_Caption            :array[1..2] of string = ('��','���');
const LabelNotFilter_Caption       :array[1..2] of string = ('��� �������','��� �������');
const LabelKvartal_Caption         :array[1..2] of string = ('�������','�������');
const LabelPachka_Caption          :array[1..2] of string = ('�����','�����');
const LabelNote_Caption            :array[1..2] of string = ('�������','����������');
const LabelKurs_Caption            :array[1..2] of string = ('����','����');
const LabelDocument_Caption        :array[1..2] of string = ('��������','��������');
const LabelSendPeople_Caption      :array[1..2] of string = ('�������','�������');
const LabelSendAdress_Caption      :array[1..2] of string = ('������','������');
const LabelBal_Caption             :array[1..2] of string = ('������� ���','������� ����');
const LabelShowContracts_Caption   :array[1..2] of string = ('���������� ������������','���������� �������������');
const LabelContracts_Caption       :array[1..2] of string = ('��������','��������');
const LabelButgets_Caption         :array[1..2] of string = ('������','������');
const LabelAcctCard_Caption        :array[1..2] of string = ('��������� �������','��������� ����');
const LabelTypePayment_Caption     :array[1..2] of string = ('��� �������','��� �������');
const LabelMonthFinish_Caption     :array[1..2] of string = ('ʳ���� �����','����� ������');
const LabelOperationsFilter_Caption:array[1..2] of string = ('Գ��������� ��������','����������� ��������');
const LabelIndexMinim_Caption      :array[1..2] of string = ('���������� �����','����������� �������');
const LabelIndexPercent_Caption    :array[1..2] of string = ('³������','�������');
const VidTraining_Caption          :array[1..2] of string = ('��� ��������','��� ��������');
const BasePeriod_Caption           :array[1..2] of string = ('������� �����','������� ������');

const MonthesList_Text             :array[1..2] of string = ('ѳ����'+#13+'�����'+#13+'��������'+#13+
                                                             '������'+#13+'�������'+#13+'�������'+#13+
                                                             '������'+#13+'�������'+#13+'��������'+#13+
                                                             '�������'+#13+'��������'+#13+'�������',
                                                             '������'+#13+'�������'+#13+'����'+#13+
                                                             '������'+#13+'���'+#13+'����'+#13+
                                                             '����'+#13+'������'+#13+'��������'+#13+
                                                             '�������'+#13+'������'+#13+'�������');
const ToBuffer_Caption             :array[1..2] of string = ('������� �� ������','���������� � �����');
//******************************************************************************
const Caption_Insert               :array[1..2] of string = ('��������� ������','���������� ������');
const Caption_Update               :array[1..2] of string = ('����������� ������','��������� ������');
const Caption_Delete               :array[1..2] of string = ('��������� ������','�������� ������');
const Caption_Detail               :array[1..2] of string = ('�������� ������','�������� ������');

const DeleteRecordQuestion_Text    :array[1..2] of string = ('�� ����� ������'+#13+'�������� ������� �����?',
                                                             '�� ������������� ������'+#13+'������� ��������� ������?');
const DeleteRecordQuestion_Text_Mas:array[1..2] of string = ('�� ����� ������'+#13+'�������� �� ����� ������?',
                                                             '�� ������������� ������'+#13+'������� ��� ��������� ������?');                                                             
const DelAllRecordsQuestion_Text   :array[1..2] of string = ('�� ����� ������'+#13+'�������� �� ������?',
                                                             '�� ������������� ������'+#13+'������� ��� ������?');
//******************************************************************************
// �������
const Q_DoYouWantExit_Text         :array[1..2] of string = ('�� ����� ������ �����?','�� ������������� ������ �����?');

//******************************************************************************
//Labels
const UserLabel_Caption            :array[1..2] of string = ('����������','������������');
const LoginLabel_Caption           :array[1..2] of string = ('������','������');
const SystemLabel_Caption          :array[1..2] of string = ('��������������'+#13+'��������� ����������'+#13+'������䳿','������������������'+#13+'������� �������'+#13+'���������');
const RightsLabel_Caption          :array[1..2] of string = ('����� �� ����� ������� ������� ���������� �� ���������� ��������������. �� ����� �������� �����.',
                                                             '����� �� ������ ������� ��������� ���������� � ������������� ����������������. ��� ����� ����������� �����.');
const VersionLabel_Caption         :array[1..2] of String = ('�����: ','������: ');

//******************************************************************************
const Yes_Text                     :array[1..2] of String = ('���','�� ');
const No_Text                      :array[1..2] of String = ('ͳ ','���');
const Contract_Text                :array[1..2] of String = ('�������� ','��������');
const Budget_Text                  :array[1..2] of String = ('������ ','������');
const Foundation_Text              :array[1..2] of String = ('������','���������');
const GrantData_Text               :array[1..2] of String = ('��� ������������� ������','������ �������������� ������');
const AlimonyData_Text             :array[1..2] of String = ('��� ��� �������','������ ��� ��������');
const Grant_Text                   :array[1..2] of String = ('��������','���������');
const Terms_Text                   :array[1..2] of String = ('������ ��������','����� ��������');
const Summary_Text                 :array[1..2] of String = ('������','�����');
const Vacation_Text                 :array[1..2] of String = ('³�������','������');

//******************************************************************************
//������
const ECaption                     :array[1..2] of string = ('�������','������');
const ELoadBplText                 :array[1..2] of string = ('�� ������� ����������� �����','���������� ��������� �����');
const ENotAccess                   :array[1..2] of string = ('�� �� ���� ���� ������� �� ���� �������!','� ��� ��� ���� ��� ����� � �������!');
const EOpenConfigText              :array[1..2] of string = ('�� ������� ����������� �� ����� ���������!','�� �������� ������������ � ����� ��������!');
const EOpenDBText                  :array[1..2] of string = ('�� ������� �''�������� � ����� �����!','�� �������� ����������� � ����� ������!');
const EDateNullText                :array[1..2] of string = ('�� ����� �� ������ ����!','���� �� ����� ���� �� ��������!');
const EInputKodSetups_Text         :array[1..2] of string = ('����� ������� ��'+#13+'���� ������ �� ����� ���������!',
                                                             '������ ����� ������'+#13+'���� ������ ������� ���������!');
const EInputTerms_Text             :array[1..2] of string = ('������� ������ 䳿 ��'+#13+'���� ������ �� ���������!',
                                                             '���� ������ ����� �������� ������'+#13+'���� ������ ���� ���������!');
const EnotInputData_Text           :array[1..2] of string = ('�� ������� ���!',
                                                             '�� ������ ������!');
const EManInput_Text               :array[1..2] of string = ('�� ������ ������� �����','�� ������� ���������� ����');
const EMonthInput_Text             :array[1..2] of string = ('�� ������ �����','�� ������ �����');
const EYearInput_Text              :array[1..2] of string = ('������� ����� ����','������ ����� ����');
const ESummaInput_Text             :array[1..2] of string = ('�� ������� ����','�� ������� �����');
const ECategoryInput_Text          :array[1..2] of string = ('�� ������ ��������','�� ������� ���������');
const EVidOplInput_Text            :array[1..2] of string = ('�� ������ ��� ��������','�� ������ ��� ������');
const EDepartmentInput_Text        :array[1..2] of string = ('�� ������ �����','�� ������� ������');
const EPostInput_Text              :array[1..2] of string = ('�� ������ ������','�� ������� ���������');
const ESmetaInput_Text             :array[1..2] of string = ('�� ������ ��������','�� ������� �����');
const EStudentMovingNotSelect_Text :array[1..2] of string = ('�� ������ ����� ��������','�� ������ ���� �������');
const EVidTraining_Text            :array[1..2] of string = ('�� ����� ��� ��������','�� ������ ��� ��������');

//******************************************************************************

//******************************************************************************
//������� ������
const GridClTn_Caption             :array[1..2] of string = ('�.�.','�.�.');
const GridClTin_Caption            :array[1..2] of string = ('��. ���','��. ���');
const GridClContract_Caption       :array[1..2] of string = ('��������','��������');
const GridClFIO_Caption            :array[1..2] of string = ('�.�.�.','�.�.�.');
const GridClCategory_Caption       :array[1..2] of string = ('��������','���������');
const GridClKurs_Caption           :array[1..2] of string = ('����','����');
const GridClViplata_Caption        :array[1..2] of string = ('��������','�������');
const GridClDeponir_Caption        :array[1..2] of string = ('����������','��������');
const GridClRaznoe_Caption         :array[1..2] of string = ('г���','������');
const GridClKod_Caption            :array[1..2] of string = ('���','���');
const GridClBirthDate_Caption      :array[1..2] of string = ('���� ����������','���� ��������');
const GridClDateBeg_Caption        :array[1..2] of string = ('�������','������');
const GridClDateEnd_Caption        :array[1..2] of string = ('���������','���������');
const GridClDateAcc_Caption        :array[1..2] of string = ('���� ����������','���� �������');
const GridClDate_Caption           :array[1..2] of string = ('����','����');
const GridClTypeAcc_Caption        :array[1..2] of string = ('����','����');
const GridClKodSetup_Caption       :array[1..2] of string = ('�����','������');
const GridClBegin_Caption          :array[1..2] of string = ('�������','������');
const GridClEnd_Caption            :array[1..2] of string = ('���������','���������');
const GridClKodVo_Caption          :array[1..2] of string = ('��','��');
const GridClSumma_Caption          :array[1..2] of string = ('����','�����');
const GridClSumma_Stud_Caption     :array[1..2] of string = ('����. ���� ����������','�����');
const GridClTypeCount_Caption      :array[1..2] of string = ('��� ����������','��� �������');
const GridClTypeCount_Acc_Text     :array[1..2] of string = ('����������','������');
const GridClTypeCount_Rec_Text     :array[1..2] of string = ('�����������','��������');
const GridClP1_Caption             :array[1..2] of string = ('+/-','+/-');
const GridClP1_Nar_Text            :array[1..2] of string = ('�����������','����������');
const GridClP1_Ud_Text             :array[1..2] of string = ('���������','���������');
const GridClNday_Caption           :array[1..2] of string = ('��','���');
const GridClNameVo_Caption         :array[1..2] of string = ('��� ��������','��� ��������');
const GridClKodSmeta_Caption       :array[1..2] of string = ('��.','��.');
const GridClNameSmeta_Caption      :array[1..2] of string = ('�����','�����');
const GridClKodDepartment_Caption  :array[1..2] of string = ('��.','��.');
const GridClNameDepartment_Caption :array[1..2] of string = ('�����','������');
const GridClTypeViplata_Caption    :array[1..2] of string = ('����','����');
const GridClPercent_Caption        :array[1..2] of string = ('%','%');
const GridClDolg_Caption           :array[1..2] of string = ('����','����');
const GridClBank_Caption           :array[1..2] of string = ('����','����');
const GridClMaxPercent_Caption     :array[1..2] of string = ('��������� %','���������� %');
const GridClPochtaPercent_Caption  :array[1..2] of string = ('�������� ���','�������� ����');
const GridClShifr_Caption          :array[1..2] of string = ('����','����');
const GridClTypePayment_Caption    :array[1..2] of string = ('��� �������','��� �������');
const ZPeopleProp_Caption          :array[1..2] of string = ('���������� �������� ���','�������� ���������� ���');
const GridClPropertyName_Caption   :array[1..2] of string = ('����������','��������');
const GridClBegPeriod_Caption      :array[1..2] of string = ('�������','������');
const GridClEndPeriod_Caption      :array[1..2] of string = ('���������','���������');
const GridClDateEndVac_Caption     :array[1..2] of string = ('���������','���������');
const GridClDateBegVac_Caption     :array[1..2] of string = ('�������','������');
const GridClPrikazVac_Caption      :array[1..2] of string = ('�����','������');
const GridPeriodCalc_Caption       :array[1..2] of string = ('����� ����������','������ �������');
const GridIndexInfl_Caption        :array[1..2] of string = ('������ ��������','������ ��������');
const GridLiveMin_Caption          :array[1..2] of string = ('����������� �����','����������� �������');
const GridHandEdit_Caption         :array[1..2] of string = ('����� ������','������ ������');
const GridClBal_Caption            :array[1..2] of string = ('������� ���','������� ���');
const GridClForma_Ob_Caption       :array[1..2] of string = ('����� ��������','����� ��������');
//******************************************************************************
//���������
const MReadParametersText          :array[1..2] of string = ('�������������� ����������','����������� ��������');
const MDBConnectingText            :array[1..2] of string = ('�������������� ���������� �� ��','��������������� ���������� � ��');

//******************************************************************************
//��������� ������
const TreeClGranted_Caption        :array[1..2] of string = ('ʳ������ ����������','���������� ������������');
const TreeClTotal_Caption          :array[1..2] of string = ('ʳ������ ��������','���������� ���������');

resourcestring
 INI_FILENAME = 'config.ini';
 PathReports  = '\Reports\Grant\';

implementation

end.
