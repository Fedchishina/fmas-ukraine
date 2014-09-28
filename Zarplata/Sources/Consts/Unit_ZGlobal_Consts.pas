unit Unit_ZGlobal_Consts;

interface

const ShowGroupBoxBtn_Caption      :array[1..2] of string = ('�������� �����','�������� ������');
const HideGroupBoxBtn_Caption      :array[1..2] of string = ('������ �����','������ ������');
const InsertBtn_Caption            :array[1..2] of string = ('������','��������');
const AddAllBtn_Caption            :array[1..2] of string = ('������ ���','�������� ����');
const DelAllBtn_Caption            :array[1..2] of string = ('�������� ���','������� ����');
const ProgressBar_Caption          :array[1..2] of string = ('�������','��������');
const UpdateBtn_Caption            :array[1..2] of string = ('����������','��������');
const FormBtn_Caption              :array[1..2] of string = ('���������','�����������');
const DeleteBtn_Caption            :array[1..2] of string = ('��������','�������');
const DetailBtn_Caption            :array[1..2] of string = ('��������','��������');
const BreakBtn_Caption             :array[1..2] of string = ('���������','��������');
const ExportBtn_Caption            :array[1..2] of string = ('�������','�������');
const ShowDetailsBtn_Caption       :array[1..2] of string = ('���������','������');
const AddManBtn_Caption            :array[1..2] of string = ('������ �����','�������� ��������');
const RefreshBtn_Caption           :array[1..2] of string = ('�������','��������');
const ExitBtn_Caption              :array[1..2] of string = ('�����','�����');
const YesBtn_Caption               :array[1..2] of string = ('��������','�������');
const CancelBtn_Caption            :array[1..2] of string = ('³������','��������');
const FilterBtn_Caption            :array[1..2] of string = ('Գ����','������');
const LocateBtn_Caption            :array[1..2] of string = ('������','������');
const LocateNextBtn_Caption        :array[1..2] of string = ('���','������');
const ReportsBtn_Caption           :array[1..2] of string = ('����','������');
const PrintBtn_Caption             :array[1..2] of string = ('����','������');
const NewPrintBtn_Caption          :array[1..2] of string = ('����� ����','����� ������');
const SelectBtn_Caption            :array[1..2] of string = ('������','�������');
const SelectWithDependence_Caption :array[1..2] of string = ('������ � ���������','������� � ������������');
const PrintSvodBtn_Caption         :array[1..2] of string = ('���� ����','������ �����');
const LineViewBtn_Caption          :array[1..2] of string = ('˳����','�������');
const TableBtn_Caption             :array[1..2] of string = ('������','������');
const SaveBtn_Caption              :array[1..2] of string = ('��������','���������');
const ClearBtn_Caption             :array[1..2] of string = ('��������','��������');
const AddReport_Caption            :array[1..2] of string = ('��������','�������');
const DelReport_Caption            :array[1..2] of string = ('��������','�������');
const FileToBankBtn_Caption        :array[1..2] of string = ('���� ��� �����','���� � ����');
const EditManBtn_Caption           :array[1..2] of string = ('������ ���. �����','�������� ���. ����');
const EditManWithZamenaBtn_Caption :array[1..2] of string = ('������ ���. ����� �� ����','�������� ���. ���� � �����');
const EditData_Caption             :array[1..2] of string = ('����������� �����','��������� ������');
const Finish_Caption               :array[1..2] of string = ('���������','���������');
const Report_Caption               :array[1..2] of string = ('���','�����');
const ToCorrect_Caption            :array[1..2] of string = ('�� �����������','� �������������');
const CountBtn_Caption             :array[1..2] of string = ('�����������','����������');
const PropertiesBtn_Caption        :array[1..2] of string = ('����������','��������');

const GoodFinish_Text              :array[1..2] of string = ('�������� ���� ����� ���������','�������� ���� ������� ���������');
const CreateReport_Caption         :array[1..2] of string = ('��������� ����','�������� ������');
const Add_SP_Const_type            :array[1..2] of string = ('������ ��� ��������','�������� ��� ��������');
const Upd_SP_Const_type            :array[1..2] of string = ('���������� ��� ��������','������������� ��� ��������');
const Del_SP_Const_type            :array[1..2] of string = ('�������� ��� ��������','������� ��� ��������');

const InsertBtn_Hint               :array[1..2] of string = ('Ins - ������','Ins - ��������');
const UpdateBtn_Hint               :array[1..2] of string = ('F2 - ����������','F2 - ��������');
const DeleteBtn_Hint               :array[1..2] of string = ('Del - ��������','Del - �������');
const DetailBtn_Hint               :array[1..2] of string = ('Space - ��������','Space - ��������');
const SelectBtn_Hint               :array[1..2] of string = ('Enter - ������','Enter - �������');
const ExitBtn_Hint                 :array[1..2] of string = ('Esc - �����','Esc - �����');
const YesBtn_Hint                  :array[1..2] of string = ('F10 - ��������','F10 - �������');
const CancelBtn_Hint               :array[1..2] of string = ('Esc - ³������','Esc - ��������');
const ToBufferBtn_Hint             :array[1..2] of string = ('F9 - �������� � �����','F9 - ��������� � �����');
const RefreshBtn_Hint              :array[1..2] of string = ('F5 - �������','F5 - ��������');
const LocateBtn_Hint               :array[1..2] of string = ('F7 - ������','F7 - ������');
const LocateNextBtn_Hint           :array[1..2] of string = ('Ctrl+F7 - ���','Ctrl+F7 - ������');
const AddManBtn_Hint               :array[1..2] of string = ('Ctrl+Ins - ���. �����','Ctrl+Ins - ���. ��������');
const FilterBtn_Hint               :array[1..2] of string = ('F8 - Գ����','F8 - ������');
const LineViewBtn_Hint             :array[1..2] of string = ('Ctrl+F8 - ˳����','Ctrl+F8 - �������');
const TableBtn_Hint                :array[1..2] of string = ('Space - ������','Space - ������');
const SaveBtn_Hint                 :array[1..2] of string = ('F10 - ��������','F10 - ���������');
const PrintBtn_Hint                :array[1..2] of string = ('F9 - ����','F9 - ������');
const FileToBankBtn_Hint           :array[1..2] of string = ('������� ���� ��� �����','������� ���� ��� �����');
const ClearReestrBtn_Hint          :array[1..2] of string = ('�������� �����','�������� ������');
const AddSheetsToReestrBtn_Hint    :array[1..2] of string = ('������ ������� �� ������','�������� ��������� � ������');
const DelSheetFromReestrBtn_Hint   :array[1..2] of string = ('�������� �������� � ������','������� ��������� �� �������');

const Caption_Form                 :array[1..2] of string = ('����������','������������');
const Caption_Insert               :array[1..2] of string = ('���������','����������');
const Caption_Update               :array[1..2] of string = ('�����������','���������');
const Caption_Delete               :array[1..2] of string = ('���������','��������');
const Caption_Detail               :array[1..2] of string = ('��������','��������');
const Caption_Confirmation         :array[1..2] of string = ('ϳ�����������','�������������');

const Message_Data_Nothing_Selected:array[1..2] of string = ('�� ����� ������� ����� �� ��������!',
                                                             '�� ������ ������� ������ �� �������!');

const OperationWasEnded_Text       :array[1..2] of string = ('�������� ���� ���������!','�������� ���������!');

const Information_Caption          :array[1..2] of string = ('����������','����������');

const Confirm_Caption              :array[1..2] of string = ('ϳ���������� ��������',
                                                             '������������� ��������');
const DeleteRecordQuestion_Text    :array[1..2] of string = ('�� ����� ������'+#13+
                                                             '�������� ������� �����?',
                                                             '�� ������������� ������'+#13+
                                                             '������� ��������� ������?');
const DelAllRecordsQuestion_Text   :array[1..2] of string = ('�� ����� ������'+#13+
                                                             '�������� �� ������?',
                                                             '�� ������������� ������'+#13+
                                                             '������� ��� ������?');
const DelAllRecords_Text           :array[1..2] of string = ('� ���������� ���� �������� ������ ������� �� ������ ����� ����.'+#13+
                                                             '�� ����� ������ �������� ������� ��� ��������?',
                                                             'C ��������� ���� �������� ����� ������� ��� ������ ����� ����.'+#13+
                                                             '�� ������������� ������� ������� ��������� ��� ��������?');
const ClearReestrQuestion_Text     :array[1..2] of string = ('�� ����� ������'+#13+
                                                             '�������� �����?',
                                                             '�� ������������� ������'+#13+
                                                             '�������� ������?');
const SaveDataQuestion_Text        :array[1..2] of string = ('�������, �� ����'+#13+
                                                             '���� �� ���� ���������.'+#13+
                                                             '��������?',
                                                             '��������, ��� ��������� ������'+#13+
                                                             '�� ���� ���������.'+#13+
                                                             '���������?');
const AreYouSureQuestion_Text      :array[1..2] of string = ('�� �������?','�� �������?');

const Error_Caption                :array[1..2] of string = ('�������','������');
const EFileNotSelected_Caption     :array[1..2] of string = ('���� �� ������','���� �� ������');
const EFileCanNotCreate_Caption    :array[1..2] of string = ('��������� �������� ����','���������� ������� ����');

const Term_Text                    :array[1..2] of string = ('�����','������');
const Net_Text                     :array[1..2] of string = ('ѳ��','����');
const Options_Text                 :array[1..2] of string = ('����������','��������');
const NonTerm_Caption              :array[1..2] of string = ('��� ������','��� �������');
const NonDate_Caption              :array[1..2] of string = ('��� ����','��� ����');
const Order_Text                   :array[1..2] of string = ('�������','�������');
const FIO_Text                     :array[1..2] of string = ('�. �. �.','�. �. �.');
const Tn_Text                      :array[1..2] of string = ('�. �.','�. �.');
const Spisok_Text                  :array[1..2] of string = ('������','������');
const Table_Text                   :array[1..2] of string = ('������','������');

const GridClTn_Caption             :array[1..2] of string = ('�.�.','�.�.');
const GridClName_Caption           :array[1..2] of string = ('�����','��������');
const GridClKoefficicent_Caption   :array[1..2] of string = ('����������','�����������');
const GridClMinAmount_Caption      :array[1..2] of string = ('�������� �������','���������� ����������');
const GridClMaxAmount_Caption      :array[1..2] of string = ('�������� �������','���������� ����������');
const GridClMan_Caption            :array[1..2] of string = ('Գ�. �����','���. ����');
const GridClFIO_Caption            :array[1..2] of string = ('�. �. �.','�. �. �.');
const GridClKodSmeta_Caption       :array[1..2] of string = ('����.','��.');
const GridClKodDepartment_Caption  :array[1..2] of string = ('ϳ��.','����.');
const GridClKodVidOpl_Caption      :array[1..2] of string = ('��','��');
const GridClBudget_Caption         :array[1..2] of string = ('������','������');
const GridClNameVidopl_Caption     :array[1..2] of string = ('��� ��������','��� ��������');
const GridClKodSetup_Caption       :array[1..2] of string = ('�����','������');
const GridClSumma_Caption          :array[1..2] of string = ('����','�����');
const GridClPercent_Caption        :array[1..2] of string = ('³������','�������');
const GridClCount_Caption          :array[1..2] of string = ('����������','������');
const GridClViplata_Caption        :array[1..2] of string = ('�������','�������');
const GridClDeponir_Caption        :array[1..2] of string = ('��������','��������');
const GridClRaznoe_Caption         :array[1..2] of string = ('г���','������');
const GridClFullNumberSch_Caption  :array[1..2] of string = ('����� �������','����� �����');
const GridClFullNameSch_Caption    :array[1..2] of string = ('����� �������','�������� �����');
const GridClKod_Caption            :array[1..2] of string = ('���','���');
const GridClExpense_Caption        :array[1..2] of string = ('ʳ������','����������');
const GridClNamePriv_Caption       :array[1..2] of string = ('����� ������','�������� ������');
const GridClFlagVipl_Caption       :array[1..2] of string = ('��������','���������');
const GridClNumber_Caption         :array[1..2] of string = ('�����','�����');
const GridClTypePayment_Caption    :array[1..2] of string = ('��� �������','��� �������');
const GridClTypeSheet_Caption      :array[1..2] of string = ('��� �������','��� ���������');
const GridClFullNameLong_Caption   :array[1..2] of string = ('����� �����','������ ��������');
const GridClShortNameLong_Caption  :array[1..2] of string = ('��������� �����','����������� ��������');
const GridClType_Caption           :array[1..2] of string = ('���','���');
const GridClFullName_Caption       :array[1..2] of string = ('�����','���������');
const GridClShortName_Caption      :array[1..2] of string = ('���������','����������');
const GridClNote_Caption           :array[1..2] of string = ('�������','����������');
const GridClPropertyName_Caption   :array[1..2] of string = ('����������','��������');
const GridClPropertyUse_Caption    :array[1..2] of string = ('�����.','���');
const GridClP1_Caption             :array[1..2] of string = ('+/-','+/-');
const GridClP1_Text_True           :array[1..2] of string = ('�����������','����������');
const GridClP1_Text_False          :array[1..2] of string = ('���������','���������');
const GridClTaxName_Caption        :array[1..2] of string = ('�������','������');
const GridClBegPeriod_Caption      :array[1..2] of string = ('�������','������');
const GridClEndPeriod_Caption      :array[1..2] of string = ('���������','���������');
const GridClBirthDate_Caption      :array[1..2] of string = ('г� ������.','��� ����.');
const GridClFrom_Caption           :array[1..2] of string = ('³�','��');
const GridClTo_Caption             :array[1..2] of string = ('��','��');
const GridClPercentSiqn_Caption    :array[1..2] of string = ('%','%');
const GridClPlus_Caption           :array[1..2] of string = ('+','+');
const GridClAddText_Caption        :array[1..2] of string = ('����� ��� ���� ��������','����� ��� ���� ������');
const GridClFact_Caption           :array[1..2] of string = ('ĳ����','����������');
const GridClPlan_Caption           :array[1..2] of string = ('�� ������','�� �����');
const GridClHours_Caption          :array[1..2] of string = ('ĳ����','����������');
const GridClGHours_Caption         :array[1..2] of string = ('�� ������','�� �����');
const GridClTarif_Caption          :array[1..2] of string = ('�����','�����');
const GridClClock_Caption          :array[1..2] of string = ('������','����');
const GridClDayMonth_Caption       :array[1..2] of string = ('����','����');
const GridClDolg_Caption           :array[1..2] of string = ('����','����');
const GridClMaxPercent_Caption     :array[1..2] of string = ('��������� �������','���������� �������');
const GridClPochtaPercent_Caption  :array[1..2] of string = ('�������� ���','�������� ����');
const GridClDate_Caption           :array[1..2] of string = ('����','����');
const GridClNday_Caption           :array[1..2] of string = ('��','���');
const GridClStavkaPercent_Caption  :array[1..2] of string = ('��./%','��./%');
const GridClDateTimePrint_Caption  :array[1..2] of string = ('���� �� ��� �����','���� � ����� ������');
const GridClSystems_Caption        :array[1..2] of string = ('�������','�������');
const GridClYesNo_Caption          :array[1..2] of string = ('���/ͳ','��/���');
const GridClYear_Caption           :array[1..2] of string = ('г�','���');
const GridClKvartal_Caption        :array[1..2] of string = ('�������','�������');
const GridClDateCame_Caption       :array[1..2] of string = ('���������','��������');
const GridClDateLeave_Caption      :array[1..2] of string = ('���������','����������');
const GridClKod1DF_Caption         :array[1..2] of string = ('������ ������','��� ������');
const GridClLgota_Caption          :array[1..2] of string = ('ϳ����','������');
const GridClTerm_Caption           :array[1..2] of string = ('�����','������');
const GridClSumNar_Caption         :array[1..2] of string = ('����������','���������');
const GridClSumVipl_Caption        :array[1..2] of string = ('��������','���������');
const GridClSumUd_Caption          :array[1..2] of string = ('��������','��������');
const GridClSumPerer_Caption       :array[1..2] of string = ('������������','�����������');
const GridClTin_Caption            :array[1..2] of string = ('��. ���','��.���');
const GridClNameSovmest_Caption    :array[1..2] of string = ('��� ������','��� ������');
const GridClNumberShort_Caption    :array[1..2] of string = ('�','�');
const GridClAll_Caption            :array[1..2] of string = ('������','�����');
const GridClPensSum_Caption        :array[1..2] of string = ('��� ����','��� ������');
const GridClHospSum_Caption        :array[1..2] of string = ('˳������','����������');
const GridClVznosSum_Caption       :array[1..2] of string = ('������','������');
const GridClStaj_Caption           :array[1..2] of string = ('����','����');

const LabelDateCame_Caption        :array[1..2] of string = ('���� ���������','���� ��������');
const LabelDateLeave_Caption       :array[1..2] of string = ('���� ���������','���� ����������');
const LabelKod1DF_Caption          :array[1..2] of string = ('��� 1��','��� 1��');
const LabelSumNar_Caption          :array[1..2] of string = ('����������','���������');
const LabelSumVipl_Caption         :array[1..2] of string = ('��������','���������');
const LabelSumUd_Caption           :array[1..2] of string = ('��������','��������');
const LabelSumPerer_Caption        :array[1..2] of string = ('������������','�����������');
const LabelTin_Caption             :array[1..2] of string = ('���������������� ���','����������������� ���');
const LabelFirm_Caption            :array[1..2] of string = ('ϳ���������','�����������');
const LabelMan_Caption             :array[1..2] of string = ('Գ����� �����','���������� ����');
const LabelVidOpl_Caption          :array[1..2] of string = ('��� ��������','��� ��������');
const LabelDepartment_Caption      :array[1..2] of string = ('ϳ������','�������������');
const LabelSmeta_Caption           :array[1..2] of string = ('��������','�����');
const LabelCategory_Caption        :array[1..2] of string = ('��������','���������');
const LabelPeriod_Caption          :array[1..2] of string = ('�����','������');
const LabelDepDate_Caption         :array[1..2] of string = ('���� ����������� ��������','���� ������������ �����������');
const LabelPrikaz_Caption          :array[1..2] of string = ('�����','������');
const LabelSumma_Caption           :array[1..2] of string = ('����','�����');
const LabelMin_Caption             :array[1..2] of string = ('̳����','�������');
const LabelMax_Caption             :array[1..2] of string = ('��������','��������');
const LabelPercent_Caption         :array[1..2] of string = ('³������','�������');
const LabelAddSumma_Caption        :array[1..2] of string = ('����, �� ��������','����� ��� ����������');
const LabelAddTextForVO_Caption    :array[1..2] of string = ('����� ��� ����������� � ����� ������','����� ��� ����������� � ����� ������');
const LabelTypePayment_Caption     :array[1..2] of string = ('������','������');
const LabelManMoving_Caption       :array[1..2] of string = ('�������� ����������','����������� �����������');
const LabelWaitData_Caption        :array[1..2] of string = ('���������, ��� ���� �����!','���������, ���� ����� ������!');
const LabelDateBeg_Caption         :array[1..2] of string = ('�������','������');
const LabelDateEnd_Caption         :array[1..2] of string = ('���������','���������');
const LabelSender_Caption          :array[1..2] of string = ('���������','����������');
const LabelAdress_Caption          :array[1..2] of string = ('������','�����');
const LabelDocument_Caption        :array[1..2] of string = ('ϳ������','���������');
const LabelMaxPercent_Caption      :array[1..2] of string = ('��������� �������','���������� �������');
const LabelDolg_Caption            :array[1..2] of string = ('����','����');
const LabelPochtaPercent_Caption   :array[1..2] of string = ('�������� ���','�������� ����');
const LabelPrivilege_Caption       :array[1..2] of string = ('ϳ����','������');
const LabelExpense_Caption         :array[1..2] of string = ('ʳ������','����������');
const LabelKod_Caption             :array[1..2] of string = ('���','���');
const LabelFIO_Caption             :array[1..2] of string = ('�.�.�.','�.�.�.');
const LabelTn_Caption              :array[1..2] of string = ('��������� �����','��������� �����');
const LabelName_Caption            :array[1..2] of string = ('�����','��������');
const LabelNameShort_Caption       :array[1..2] of string = ('��������� �����','����������� ��������');
const LabelNameFull_Caption        :array[1..2] of string = ('����� �����','������ ��������');
const LabelMinAmount_Caption       :array[1..2] of string = ('�������� ������� �������','����������� ����������');
const LabelMaxAmount_Caption       :array[1..2] of string = ('�������� ������� �������','������������ ����������');
const LabelKoefficient_Caption     :array[1..2] of string = ('����������','�����������');
const LabelAvgSum_Caption          :array[1..2] of string = ('������� ����','������� �����');
const LabelByDays_Caption          :array[1..2] of string = ('�� ����','�� ����');
const LabelByHours_Caption         :array[1..2] of string = ('�� �������','�� �����');
const LabelMonth_Caption           :array[1..2] of string = ('̳����','�����');
const LabelYear_Caption            :array[1..2] of string = ('г�','���');
const LabelHours_Caption           :array[1..2] of string = ('������','����');
const LabelDays_Caption            :array[1..2] of string = ('��','���');
const LabelNotFilter_Caption       :array[1..2] of string = ('��� �������','��� �������');
const LabelKvartal_Caption         :array[1..2] of string = ('�������','�������');
const LabelPachka_Caption          :array[1..2] of string = ('�����','�����');
const LabelNote_Caption            :array[1..2] of string = ('�������','����������');
const LabelType_Caption            :array[1..2] of string = ('���','���');
const LabelNotTinPeople_Caption    :array[1..2] of string = ('�� ���������� �� ��. ����','������� ���������� �� ��. ����');

const LabelOkpo_Caption            :array[1..2] of string = ('����','����');
const LabelCntShtat_Caption        :array[1..2] of string = ('��������� � ����','���������� � �����');
const LabelCntSovmest_Caption      :array[1..2] of string = ('��������','�������������');
const LabelCity_Caption            :array[1..2] of string = ('̳���','�����');
const LabelDirector_Caption        :array[1..2] of string = ('��������','��������');
const LabelGlavBuhg_Caption        :array[1..2] of string = ('�������� ���������','������� ���������');
const LabelTel_Caption             :array[1..2] of string = ('�������','�������');
const LabelPost_Caption            :array[1..2] of string = ('������','���������');

const LabelWorker_Caption          :array[1..2] of string = ('���������','�������');
const LabelStud_Caption            :array[1..2] of string = ('�������','�������');

const PanelDockProperty_Caption    :array[1..2] of string = ('����������','��������');

const BarMainButtons_Caption       :array[1..2] of string = ('�������','�������');

const ComboNameFields_Hint         :array[1..2] of string = ('������ ������� ��� ������','�������� ������� ��� ������');
const ComboNameFields_Caption      :array[1..2] of string = ('�������','�������');
const BarEditLocate_Hint           :array[1..2] of string = ('������� ����� ��� ������','�������� ����� ��� ������');
const BarEditLocate_Caption        :array[1..2] of string = ('�����','�����');

const MonthesList_Text             :array[1..2] of string = ('ѳ����'+#13+'�����'+#13+'��������'+#13+
                                                             '������'+#13+'�������'+#13+'�������'+#13+
                                                             '������'+#13+'�������'+#13+'��������'+#13+
                                                             '�������'+#13+'��������'+#13+'�������',
                                                             '������'+#13+'�������'+#13+'����'+#13+
                                                             '������'+#13+'���'+#13+'����'+#13+
                                                             '����'+#13+'������'+#13+'��������'+#13+
                                                             '�������'+#13+'������'+#13+'�������');

const ZeFileNotExist_Text                 :array[1..2] of string = ('���� �� ����','���� �� ����������');
const ZeFieldNotExist_Text                :array[1..2] of string = ('������� �� ����','������� �� ����������');
const ZePrikaz_ErrorText                  :array[1..2] of string = ('�� ������� �������','�� �������� ���������');
const ZeInputError_Caption                :array[1..2] of string = ('������� �����','������ �����');
const ZeManMoving_NotAvailable_Text       :array[1..2] of string = ('�� ������� ������'+#13+'�������� ����������!!!',
                                                              '�� �������� �������'+#13+'��������� � �������������!!!');
const ZeInputTerms_ErrorText              :array[1..2] of string = ('������� ������ 䳿 ��'+#13+'���� ������ �� ���������!',
                                                             '���� ������ ����� �������� ������'+#13+'���� ������ ���� ���������!');
const ZeInputKodSetups_ErrorText          :array[1..2] of string = ('������� �� ���� ������ �� ���������!',
                                                                    '������ ������ ���� ������ ���������!');

const ZeInputErrorAddSum_Text             :array[1..2] of string = ('����, �� �������� ��'+#13+'���� ������ �� ��������!',
                                                                    '����� ��� ���������� ������'+#13+'���� ������ ��������');
const ZeInputErrorMinMax_Text             :array[1..2] of string = ('̳���� �� ���� ������ �� ��������!',
                                                                    '������� ������ ���� ������ ���������!');
const ZeNotInputData_Error_Text           :array[1..2] of string = ('��������� ������ ����','���������� ������ ������');
const ZeInputProp_Error_Text              :array[1..2] of string = ('��������� ������ ����������','���������� ������� ��������');
const ZeInputDocument_Error_Text          :array[1..2] of string = ('�� ������� �������','�� �������� ���������');
const ZeInputDolg_Error_Text              :array[1..2] of string = ('�� ������� ����','�� ������ ����');
const ZeInputPercent_Error_Text           :array[1..2] of string = ('�� ������� ������� ������','�� ������ �������');
const ZeInputMaxPercent_Error_Text        :array[1..2] of string = ('�� ������� �������� �������','�� ������ ���������� ��������� �������');
const ZeInputPochtaPercent_Error_Text     :array[1..2] of string = ('�� ������� �������� �������','�� ������ �������� ����');
const ZeInputSender_Error_Text            :array[1..2] of string = ('�� ������� ����� - ����������','�� ������ �������');
const ZeInputAddress_Error_Text           :array[1..2] of string = ('�� ������� ������','�� ������ �����');
const ZeInputPercents_Error_Text          :array[1..2] of string = ('�� ���� ������� ��������','�� ��������� ������� ��������');
const ZeInputPrivilege_Error_Text         :array[1..2] of string = ('�� ������� ������','�� ������� ������');
const ZeInputExpense_Error_Text           :array[1..2] of string = ('�� ������� �������','�� ������� ����������');
const ZePrintShablonNotFound_Error_Text   :array[1..2] of string = ('�� �������� ������ ��� �����!','�� ������� ������ ��� ������!');

const ManInput_ErrorText                  :array[1..2] of string = ('�� ������ ������� �����','�� ������� ���������� ����');
const MonthInput_ErrorText                :array[1..2] of string = ('�� ������ �����','�� ������ �����');
const YearInput_ErrorText                 :array[1..2] of string = ('������� ����� ����','������ ����� ����');
const SummaInput_ErrorText                :array[1..2] of string = ('�� ������� ����','�� ������� �����');
const CategoryInput_ErrorText             :array[1..2] of string = ('�� ������ ��������','�� ������� ���������');
const VidOplInput_ErrorText               :array[1..2] of string = ('�� ������ ��� ��������','�� ������ ��� ������');
const DepartmentInput_ErrorText           :array[1..2] of string = ('�� ������ �������','�� ������� �������������');
const SmetaInput_ErrorText                :array[1..2] of string = ('�� ������ ��������','�� ������� �����');


const NonSpisok_Caption            :array[1..2] of string = ('����� ���� �������','������������ ������');

const ReeVed_Caption               :array[1..2] of string = ('������ ���������','������� ����������');
const ReeVed_PrintVedOpl_Caption   :array[1..2] of string = ('³�������','���������');
const ReeVed_PrintReeVed_Caption   :array[1..2] of string = ('³������ ������','��������� �������');
const ReeVed_PrintSvodRee_Caption  :array[1..2] of string = ('������� ��������','��������� ���������');
const ReeVed_Control_Caption       :array[1..2] of string = ('��������� ������','���������� �������');
const ReeVed_VedToAdd_Caption      :array[1..2] of string = ('��������� ��������� �� ������','���������� ���������� � ������');
const ReeVeds_Text                 :array[1..2] of string = ('������',   '�������');
const SheetPeopleData_Text         :array[1..2] of string = ('��������� ������� �����','������ ����������� ����');
const SheetData_Text               :array[1..2] of string = ('��������� ���������','������ ����������');
const ReeVed_Text                  :array[1..2] of string = ('�����',   '������');
const Sheet_Text                   :array[1..2] of string = ('³������','���������');


const RefreshSKR_Caption           :array[1..2] of string = ('³��������� ���','���������� ��������� ������');
const LabelBank_Caption            :array[1..2] of string = ('����','����');
const LabelFile_Caption            :array[1..2] of string = ('���� ��� ����������','���� ��� ����������');

const Monthes_Const                :array[1..2] of string = ('̳�����','�������');
const EveryMonth_Const             :array[1..2] of string = ('���������','����������');

const Sp_Department_Caption        :array[1..2] of string = ('������� ��������','���������� �������������');

const Itogo_Caption                :array[1..2] of string = ('������','�����');


//******************************************************************************
const ZAuthor_Caption              :array[1..2] of string = ('��� ������','�� �������');
const ZAuthor_LabelProgrammer_Text :array[1..2] of string = ('����������: Ѻ��� �.�., ������ �.�.','������������: ����� �.�., ���������� �.');
const ZAuthor_LabelPostanov_Text   :array[1..2] of string = ('�����������: ������� �.�.','�����������: �������� �.�.');
const ZAuthor_LabelPeriod_Text     :array[1..2] of string = ('2004-2005 ��.','2004-2005 ��.');
const ZAuthor_LabelFirm_Text       :array[1..2] of string = ('��������� ������������ ����������','�������� ������������ �����������');

//******************************************************************************
const ZTaxes_Caption               :array[1..2] of string = ('������� �������','������� �������');
const ZTaxesTerms_Caption_Insert   :array[1..2] of string = ('��������� ������ ����������� ������ ��������� �������',
                                                             '���������� ������� ������������ ������ ��������� �������');
const ZTaxesTerms_Caption_Update   :array[1..2] of string = ('����������� ������ ����������� ������ ��������� �������',
                                                             '��������� ������� ������������ ������ ��������� �������');
const ZTaxesTerms_Caption_Delete   :array[1..2] of string = ('��������� ������',
                                                             '�������� �������');
const ZTaxesTerms_Caption_Detail   :array[1..2] of string = ('�������� ������ ����������� ������ ��������� �������',
                                                             '�������� ������� ������������ ������ ��������� �������');
const ZTaxNets_Caption_Insert      :array[1..2] of string = ('��������� ������� ���������',
                                                             '���������� ������� ���������');
const ZTaxNets_Caption_Update      :array[1..2] of string = ('����������� ������� ���������',
                                                             '��������� ������� ���������');
const ZTaxNets_Caption_Delete      :array[1..2] of string = ('��������� �������',
                                                             '�������� �������');
const ZTaxNets_Caption_Detail      :array[1..2] of string = ('�������� ������� ���������',
                                                             '�������� ������� ���������');

//******************************************************************************
const ZCurrent_Caption             :array[1..2] of string = ('������ ��������',
                                                             '������� ��������');
const ZCurrent_CheckBoxFilterOperation_Caption :array[1..2] of string = ('Գ��������� ��������',
                                                             '����������� ��������');

const ZCurrentCtrl_Caption_Insert  :array[1..2] of string = ('��������� ��������',
                                                             '���������� ��������');
const ZCurrentCtrl_Caption_Update  :array[1..2] of string = ('����������� ��������',
                                                             '��������� ��������');
const ZCurrentCtrl_Caption_Delete  :array[1..2] of string = ('��������� ��������',
                                                             '�������� ��������');
const ZCurrentCtrl_Caption_Detail  :array[1..2] of string = ('�������� ��������',
                                                             '�������� ��������');
const ZCurrentLineView_Filter_Caption :array[1..2] of string = ('����������/������� ������ �� ������� �������� � ������� �����',
                                                                '����������/�������� ������ �� ���������� �������� � ����������� ����');

//******************************************************************************
const ZRemont_Caption              :array[1..2] of string = ('�� ��������� �������','���������� ���������');
const ZRemont_Caption_Short        :array[1..2] of string = ('�������','���������');

//******************************************************************************
const ZDedConst_Caption            :array[1..2] of string = ('������ ���������',
                                                             '���������� ���������');
const ZDedConstCtrl_Caption_Insert :array[1..2] of string = ('��������� ���������',
                                                             '���������� ���������');
const ZDedConstCtrl_Caption_Update :array[1..2] of string = ('����������� ���������',
                                                             '��������� ���������');
const ZDedConstCtrl_Caption_Delete :array[1..2] of string = ('��������� ���������',
                                                             '�������� ���������');
const ZDedConstCtrl_Caption_Detail :array[1..2] of string = ('�������� ���������',
                                                             '�������� ���������');


//******************************************************************************

const ZManHosp_Caption        :array[1..2] of string = ('����s ���������������',
                                                             '���������� �����');
const ZManHosp_Caption_Insert :array[1..2] of string = ('��������� ����� ���������������',
                                                             '���������� ����������� �����');
const ZManHosp_Caption_Update :array[1..2] of string = ('����������� ����� ���������������',
                                                             '��������� ����������� �����');
const ZManHosp_Caption_Delete :array[1..2] of string = ('��������� ����� ���������������',
                                                             '�������� ����������� �����');
const ZManHosp_Caption_Detail :array[1..2] of string = ('�������� ����� ���������������',
                                                             '�������� ����������� �����');

//******************************************************************************
const ZLoan_Caption             :array[1..2] of string = ('������� �����',
                                                          '������� �����');
const ZLoanCtrl_Caption_Insert  :array[1..2] of string = ('��������� �����',
                                                          '���������� �����');
const ZLoanCtrl_Caption_Update  :array[1..2] of string = ('����������� �����',
                                                          '��������� �����');
const ZLoanCtrl_Caption_Delete  :array[1..2] of string = ('��������� �����',
                                                          '�������� �����');
const ZLoanCtrl_Caption_Detail  :array[1..2] of string = ('�������� �����',
                                                          '�������� �����');
//******************************************************************************
const ZDopNach_Caption             :array[1..2] of string = ('�������� �����������',
                                                             '�������������� ����������');
const ZDopNachCtrl_Caption_Insert  :array[1..2] of string = ('��������� �����������',
                                                             '���������� ����������');
const ZDopNachCtrl_Caption_Update  :array[1..2] of string = ('����������� �����������',
                                                             '��������� ����������');
const ZDopNachCtrl_Caption_Delete  :array[1..2] of string = ('��������� �����������',
                                                             '�������� ���������');
const ZDopNachCtrl_Caption_Detail  :array[1..2] of string = ('�������� ����������',
                                                             '�������� ����������');

//******************************************************************************
const ZPeopleProp_Caption          :array[1..2] of string = ('���������� �������� ���',
                                                             '�������� ���������� ���');
const ZPeoplePropCtrl_Caption_Insert :array[1..2] of string = ('��������� ����������',
                                                               '���������� ��������');
const ZPeoplePropCtrl_Caption_Update :array[1..2] of string = ('����������� ����������',
                                                               '��������� ��������');
const ZPeoplePropCtrl_Caption_Delete :array[1..2] of string = ('��������� ����������',
                                                               '�������� ��������');

const ZPeopleWorkModeCtrl_Caption_Delete :array[1..2] of string = ('��������� ������ ������',
                                                               '�������� ������ ������');


const ZPeoplePropCtrl_Caption_Detail :array[1..2] of string = ('�������� ����������',
                                                               '�������� ��������');

//******************************************************************************
const ZAlimony_Caption               :array[1..2] of string = ('������� �� ���� ���.�����',
                                                               '�������� � ������ ������.�����');
const ZAlimonyCtrl_Caption_Insert    :array[1..2] of string = ('��������� ����� ��� ������� �� ���� ���.�����',
                                                               '���������� ������ �� ��������� � ������ ������.�����');
const ZAlimonyCtrl_Caption_Update    :array[1..2] of string = ('����������� ����� ��� ������� �� ���� ���.�����',
                                                               '��������� ������ �� ��������� � ������ ������.�����');
const ZAlimonyCtrl_Caption_Delete    :array[1..2] of string = ('��������� ����� ��� ������� �� ���� ���.�����',
                                                               '�������� ������ �� ��������� � ������ ������.�����');
const ZAlimonyCtrl_Caption_Detail    :array[1..2] of string = ('�������� ����� ��� ������� �� ���� ���.�����',
                                                               '�������� ������ �� ��������� � ������ ������.�����');

//******************************************************************************
const ZPeoplePriv_Caption            :array[1..2] of string = ('�� ����� �����','���������');
const ZPeoplePrivCtrl_Caption_Insert :array[1..2] of string = ('��������� ����� �� �������','���������� ������ � �������');
const ZPeoplePrivCtrl_Caption_Update :array[1..2] of string = ('����������� ����� �� �������','��������� ������ � �������');
const ZPeoplePrivCtrl_Caption_Delete :array[1..2] of string = ('��������� ����� �� �������','�������� ������ � �������');
const ZPeoplePrivCtrl_Caption_Detail :array[1..2] of string = ('�������� ����� �� �������','�������� ������ � �������');

//******************************************************************************
const ZSp_Privilege_Caption          :array[1..2] of string = ('������� ����','���������� �����');
const ZSp_Privilege_Caption_Insert   :array[1..2] of string = ('��������� �����','���������� ������');
const ZSp_Privilege_Caption_Update   :array[1..2] of string = ('����������� �����','��������� ������');
const ZSp_Privilege_Caption_Delete   :array[1..2] of string = ('��������� �����','�������� ������');
const ZSp_Privilege_Caption_Detail   :array[1..2] of string = ('�������� �����','�������� ������');
//******************************************************************************
const ZInvalid_Caption               :array[1..2] of string = ('������ �������','������ ���������');
//******************************************************************************
const ZNonSpisok_Caption             :array[1..2] of string = ('����� ���� �������','������������ ������');

const ZOptionsSvod_Caption           :array[1..2] of string = ('���� ���������','������� ���������');

const Svods_Caption                  :array[1..2] of string = ('����','�����');
const Svods_docs_Caption             :array[1..2] of string = ('�������� �������','����� �����');
const Reestrs_Caption                :array[1..2] of string = ('������','�������');
const Reestrs_docs_Caption           :array[1..2] of string = ('������� �� ���������','���������� �� ������');

const RaschVed_Caption               :array[1..2] of string = ('��������','�����');

const SvodBySch_Caption              :array[1..2] of string = ('��� ��� ����������� �� ��������� (���������)','�� ������ (����� �����)');
const SvodBySchNP7_Caption           :array[1..2] of string = ('��� ��� ����������� �� ��������� (����� � �-7)','�� ������ (����� � �-7');
const SvodByFot_Caption              :array[1..2] of string = ('������ �� ��� �� ����� ��������','������� �� ��� � ������ ��������');
const SvodByFod_Caption              :array[1..2] of string = ('��������� ������� ���� ������ ������','����������� �������� ���� ������ ������');
const SvodByDep_Caption              :array[1..2] of string = ('�� ���������','�� ��������������');

const ReestrHospLists_Caption        :array[1..2] of string = ('����� ��������� �����','������ ���������� ������');
const ReestrHospLists_docs_Caption   :array[1..2] of string = ('����� ����� ��������� ���������������','������ ������ ��������� ������������������');
const ReestrHospListsByTn_Caption    :array[1..2] of string = ('�� ���������� ��������','�� ��������� �������');
const ReestrHospListsByDep_Caption   :array[1..2] of string = ('�� ����������','�� ��������������');
const ReestrDuty_Caption             :array[1..2] of string = ('����� �����','������ ������');
const ReestrDodPlat_Caption          :array[1..2] of string = ('����� ���������� �������','������ �������������� ��������');
const ReestrStrah_Caption            :array[1..2] of string = ('����� ��������� ������','������ �������� �������');
const ReestrAlimony_Caption          :array[1..2] of string = ('����� ������� �� ����� ���. �����','������ ��������� � ������ ������. ������');
const ReestrOtherUd_Caption          :array[1..2] of string = ('����� ����� ��������','������ ������ ���������');
const ReestrPensFond_Caption         :array[1..2] of string = ('����� ������ �� ��������� �����','������ ������� � ���������� ����');
const ReestrPFU_Caption              :array[1..2] of string = ('����� ���������� �� ��� ','������ ���������� � ���');
const ReestrMoreSum_Caption          :array[1..2] of string = ('����� �������','������ ���������� ����������');
const ReestrInvalid_Caption          :array[1..2] of string = ('����� �������','������ ���������');
const ReestrPererah_Caption          :array[1..2] of string = ('����� �����������','������ ����������');
const ReestrCredit_Caption           :array[1..2] of string = ('����� ��������� �������','������ ��������� ��������');
const ReeAccrualSingle_Caption       :array[1..2] of string = ('����� ���������� ��� (������������)','������ ���������� ������� �. �.');
const ReeAccrualSingleForMan_Caption        :array[1..2] of string = ('����� ���������� ��� (�� ������������)','������ ���������� ������� �. �. �� �����������');
const ReeAccrualSingleForManAll_Caption     :array[1..2] of string = ('��','���');
const ReeAccrualSingleForManInvalid_Caption :array[1..2] of string = ('�� ����� ����������','�� ���������');
const ReeAccrualSingleForManOwer_Caption    :array[1..2] of string = ('�� ����� �����������','������� ����� ����������');

const Full_Const                     :array[1..2] of string = ('�������','���������');
const Short_Const                    :array[1..2] of string = ('���������','����������');
const ByHours_Const                  :array[1..2] of string = ('�� �������','�� �����');
const Average_Const                  :array[1..2] of string = ('������','�������');
const PrevPeriod_Const               :array[1..2] of string = ('��������� �����','���������� ������');
const CorrectSvod_Const              :array[1..2] of string = ('����������� ����','������������� �����');
const OfPeople_Const                 :array[1..2] of string = ('���','�����');
const OfRecords_Const                :array[1..2] of string = ('������','�������');
const Reestr_Const                   :array[1..2] of string = ('�����','������');
const Ostatok_Const                  :array[1..2] of string = ('�������','�������');
const NotFilter_Const                :array[1..2] of string = ('��� �������','��� �������');
const SumMoreNull_Const              :array[1..2] of string = ('���� > 0','���� > 0');
const SumLessNull_Const              :array[1..2] of string = ('���� < 0','���� < 0');
const SumEqualNull_Const             :array[1..2] of string = ('���� = 0','���� = 0');
const SumIsNull_Const                :array[1..2] of string = ('���� - ����� ��������','���� - ����� ��������');
const Acc_Const                      :array[1..2] of string = ('����������','������');
const Sheets_Const                   :array[1..2] of string = ('³������','���������');

const FRaschVed_SelDepartment_Caption:array[1..2] of string = ('������ ������� ��� ���������� ������������� ���������',
                                                               '�������� ������������� ��� ������������ ��������� ����������');

const DatesAcc_Saves_Caption         :array[1..2] of string = ('��������� �� �������� ������',
                                                               '������ �� ���������� �������');
const DatesAcc_NotSaves_Caption      :array[1..2] of string = ('��������� ���������� ���������� ��������� ������',
                                                               '������ ���������� ������� �������� �������');

const SelectRecordForCorrectSvod_Const :array[1..2] of string = ('������ ����� ��� ����������� ����','�������� ������ ��� ��������������� �����');


//******************************************************************************
const FUV_RefreshSkr_FieldNames_Caption               :array[1..2] of string = ('����� ����','�������� �����');
const FUV_RefreshSkr_FieldNamesTin_Caption            :array[1..2] of string = ('���������������� �����','���������������� �����');
const FUV_RefreshSkr_FieldNamesAcctCard_Caption       :array[1..2] of string = ('��������� �������','��������� ����');
const FUV_RefreshSkr_FieldNamesTin_NotInput_Text      :array[1..2] of string = ('�� ������� ����� ����:'+#13+'���������������� �����!',
                                                                                '�� ������� �������� ����:'+#13+'���������������� �����');
const FUV_RefreshSkr_FieldNamesAcctCard_NotInput_Text :array[1..2] of string = ('�� ������� ����� ����:'+#13+'��������� �������',
                                                                                '�� ������� �������� ����:'+#13'��������� ����');

const Label_Acct_Card                                 :array[1..2] of string = ('��������� �������','��������� ����');
const ETypePayment_NotSelect_Text                     :array[1..2] of string = ('�� ������ ��� �������','�� ������ ��� �������');

const FRefreshSKR_CheckBoxNewFieldsDBFtable_Caption   :array[1..2] of string = ('������ ����� ���� � DBF-�������',
                                                                                '������ �������� ����� � DBF-�������');
const SvodOtchislen_Caption                           :array[1..2] of string = ('��� ����������',
                                                                                '���� ����������');

const ArhivPrintedSheet_Caption                       :array[1..2] of string = ('���� ���������',
                                                                                '������ ����������');

const ZSetup_Caption                                  :array[1..2] of string = ('������ ����������',
                                                                                '����� �����������');


//Vidopl
 SpravPropVidOplBtn_Caption                           :array[1..2] of string = ('����������','��������');
 SpravGroupVidOplPropBtn_Caption                      :array[1..2] of string = ('����� ������������','������ �������');
 SpravTypeVidOplPropBtn_Caption                       :array[1..2] of string = ('���� ���� ����� ��� �����','���� ����� ����� ��� ������'); 
 SpravGroupVidOplBtn_Caption                          :array[1..2] of string = ('����� ���� �����','������ ����� ��������');
 TabSheetNar_Caption                                  :array[1..2] of string = ('�����������','����������');
 TabSheetUd_Caption                                   :array[1..2] of string = ('���������','���������');
 TabSheetCorespond_Caption                            :array[1..2] of string = ('��������������','��������������');
 TabSheetConstsVo_Caption                             :array[1..2] of string = ('��������� �������','��������� �������');
 UpdateAllBtn_Caption                                 :array[1..2] of string = ('����������','�������������');
 LocateResult_Caption                                 :array[1..2] of string = ('�����','�����');
 LocateResult_NotLocateText                           :array[1..2] of string = ('ͳ���� �� ��������','������ �� �������');

//FVOLocate
 FVOLocate_Caption                                    :array[1..2] of string = ('�����','�����');
 FVOLocate_RadioGroupTypeLocate_Caption               :array[1..2] of string = ('��','��');
 FVOLocate_GroupBoxLocate_Caption                     :array[1..2] of string = ('�����','�����');
 FVOLocate_RadioGroupTypeLocate_Text1                 :array[1..2] of string = ('����� ��','�������� ��');
 FVOLocate_RadioGroupTypeLocate_Text2                 :array[1..2] of string = ('��� ��','��� ��');
 FVOLocate_RadioGroupTypeLocate_Text3                 :array[1..2] of string = ('���������','���������');

// FCorespondEdit
 FCorespondEdit_Caption                               :array[1..2] of string = ('����������� ��������������','��������� ���������������');
 FCorespondEdit_LabelVidOplName_Caption               :array[1..2] of string = ('��� ������','��� ������');
 FCorespondEdit_LabelCorespond_Caption                :array[1..2] of string = ('����� ��������������','�������� ���������������');

//FVoplIniGroupControl
 FVoplIniGroupControl_Caption_Insert_Group             :array[1..2] of string = ('��������� ����� ��� ������������','���������� ������ �������');
 FVoplIniGroupControl_Caption_Update_Group             :array[1..2] of string = ('����������� ����� ��� ������������','��������� ������ �������');
 FVoplIniGroupControl_Caption_Delete_Group             :array[1..2] of string = ('��������� ����� ��� ������������','�������� ������ �������');
 FVoplIniGroupControl_Caption_Insert_Prop              :array[1..2] of string = ('��������� ����������','���������� ��������');
 FVoplIniGroupControl_Caption_Update_Prop              :array[1..2] of string = ('����������� ����������','��������� ��������');
 FVoplIniGroupControl_Caption_Delete_Prop              :array[1..2] of string = ('��������� ����������','�������� ��������');
 FVoplIniGroupControl_LabelFullName_Caption            :array[1..2] of string = ('�����','��������');

 //FZSp_VidOpl
 FZSp_VidOpl_Caption                                   :array[1..2] of string = ('������� ���� �����','���������� ����� �����');
 FZSp_VidOpl_GridColumnVidOpl_Name_Caption             :array[1..2] of string = ('�����','��������');
 FZSp_VidOpl_GridColumnOptionsName_Caption             :array[1..2] of string = ('����������','��������');
 FZSp_VidOpl_GridColumnOptionsUse_Caption              :array[1..2] of string = ('� 䳿','���.');
 FZSp_VidOpl_GridColumnOptionsGroup_Caption            :array[1..2] of string = ('�����','������');
 FZSp_VidOpl_GridColumnOptionsNameGroup_Caption        :array[1..2] of string = ('�����','������');
 FZSp_VidOpl_DockPanelGridOptions_Caption              :array[1..2] of string = ('����������','��������');
 FZSp_VidOpl_GridColumnVidOplNachisl_Caption           :array[1..2] of string = ('����������','����������');
 FZSp_VidOpl_GridColumnVidOplCash_Caption              :array[1..2] of string = ('��������','��������');
 FZSp_VidOpl_GridColumnVidOplKod_Caption               :array[1..2] of string = ('���','���');
 FZSp_VidOpl_GridColumnVidOplGroup_Caption             :array[1..2] of string = ('�����','������');

 FZSp_VidOpl_GridCorColumnNameProp_Caption             :array[1..2] of string = ('��� ��������������','��� ��������������');
 FZSp_VidOpl_GridConstsColumnNameProp_Caption          :array[1..2] of string = ('����� ���������','�������� ���������');

 FZSp_VidOpl_LabelTipNach_Caption                      :array[1..2] of string = ('��� �����������:','��� ����������');
 FZSp_VidOpl_LabelTipFund_Caption                      :array[1..2] of string = ('����:','����:');
 FZSp_VidOpl_LabelDateBeg_Caption                      :array[1..2] of string = ('�������:','������:');
 FZSp_VidOpl_LabelDateEnd_Caption                      :array[1..2] of string = ('���������:','���������:');
 FZSp_VidOpl_SaveChanges_Caption                       :array[1..2] of string = ('����������','����������');
 FZSp_VidOpl_SaveChanges_Text1                         :array[1..2] of string = ('���� ���������� ���� ������:'+#13,'��������� �������� ���� �����:'+#13);
 FZSp_VidOpl_SaveChanges_Text2                         :array[1..2] of string = (#13+'���� ������. ��������?',#13+'���� ��������. ���������?');

 //ZFVidOplControl
 ZFVidOplControl_Caption_Insert                        :array[1..2] of string = ('��������� ���� ������','���������� ���� ������');
 ZFVidOplControl_Caption_Update                        :array[1..2] of string = ('����������� ���� ������','��������� ���� ������');
 ZFVidOplControl_Caption_Delete                        :array[1..2] of string = ('��������� ���� ������','�������� ���� ������');
 ZFVidOplControl_IdentificatonBox_Caption              :array[1..2] of string = ('��� ������','��� ������');
 ZFVidOplControl_OptionsBox_Caption                    :array[1..2] of string = ('����������','��������');
 ZFVidOplControl_NameLabel_Caption                     :array[1..2] of string = ('�����:','��������:');
 ZFVidOplControl_KodLabel_Caption                      :array[1..2] of string = ('���:','���:');
 ZFVidOplControl_Kod1dfLabel_Caption                   :array[1..2] of string = ('��� 1��:','��� 1��:');
 ZFVidOplControl_CheckCash_Caption                     :array[1..2] of string = ('�������� ���','�������� ���');
 ZFVidOplControl_CheckNachisl_Caption                  :array[1..2] of string = ('����������','����������');
 ZFVidOplControl_TypeNachislLabel_Caption              :array[1..2] of string = ('��� ����������:','��� ����������');
 ZFVidOplControl_TypeFundLabel_Caption                 :array[1..2] of string = ('��� �����:','��� �����:');
 ZFVidOplControl_PeriodBox_Caption                     :array[1..2] of string = ('����� 䳿','���� ��������');
 ZFVidOplControl_DateBegLabel_Caption                  :array[1..2] of string = ('�������:','������:');
 ZFVidOplControl_DateEndLabel_Caption                  :array[1..2] of string = ('����������:','���������:');
 ZFVidOplControl_LabelGroup_Caption                    :array[1..2] of string = ('������ ��� �����������:','������ ��� �����������');

 //1��
 f1Df_Caption                                          :array[1..2] of string = ('����� 1��','����� 1��');
 FSpAsupIniWorkReason_Caption                          :array[1..2] of string = ('������� ���������','���������� �����������');
 //FZ_Vopl_Filter
 FZ_Vopl_Filter_Caption                                :array[1..2] of string = ('������� ���� ���� �����','���������� ����� ����� �����');
 FZ_Vopl_Filter_GridColumnName_Caption                 :array[1..2] of string = ('����� �����','�������� ������');

 //VoplFilterControl
 VoplFilterControl_Caption_Insert                      :array[1..2] of string = ('��������� �����','���������� ������');
 VoplFilterControl_Caption_Update                      :array[1..2] of string = ('����������� �����','�������������� ������');
 VoplFilterControl_LabelFullName_Caption               :array[1..2] of string = ('����� �����:','�������� ������:');

 //VoplPropControlForm_
 VoplPropControlForm_Caption                           :array[1..2] of string = ('����������� ������������','�������������� �������');
 VoplPropControlFormTreeListColumnName_Caption         :array[1..2] of string = ('�����������','��������');
 VoplPropControlFormTreeListColumnUse_Caption          :array[1..2] of string = ('������������','�������������');

 //FZ_Vopl_Prop
 FZ_Vopl_Prop_Caption                                  :array[1..2] of string = ('������� ������������ ���� �����','���������� ������� ����� �����');
 FZ_Vopl_Prop_GridColumnName_Caption                   :array[1..2] of string = ('����� ����������','�������� ��������');
 FZ_Vopl_Prop_GridChColumnGroupName_Caption            :array[1..2] of string = ('����� �����','�������� ������');
 FZ_Vopl_Prop_GridChColumnGroupUse_Caption             :array[1..2] of string = ('���������','������������');

 //FZ_Vopl_PropGroup
 FZ_Vopl_PropGroup_Caption                             :array[1..2] of string = ('������� ���� ������������ ���� �����','���������� ����� ������� ����� �����');
 FZ_Vopl_PropGroup_GridColumnName_Caption              :array[1..2] of string = ('����� �����','�������� ������');
 FZ_Vopl_PropGroup_GridColumnKod_Caption               :array[1..2] of string = ('���','���');
 FZ_Vopl_PropGroup_GridColumnNameGroup_Caption         :array[1..2] of string = ('���','���');
 FZ_Vopl_PropGroup_GridChColumnGroupName_Caption       :array[1..2] of string = ('����������','��������');
 FZ_Vopl_PropGroup_GridChColumnGroupUse_Caption        :array[1..2] of string = ('���������','����������');

 //FSpVoplIniPropGroupControl
 FSpVoplIniPropGroupControl_Caption                    :array[1..2] of string = ('����������','��������');
 FSpVoplIniPropGroupControl_CheckAllBtn_Caption        :array[1..2] of string = ('�������� ��','������� ���');
 FSpVoplIniPropGroupControl_UnCheckAllBtn_Caption      :array[1..2] of string = ('³������ ��','�������� ���');

 //VoplPropGroupControl
 VoplPropGroupControl_Caption_Insert                   :array[1..2] of string = ('��������� �����','���������� ������');
 VoplPropGroupControl_Caption_Update                   :array[1..2] of string = ('����������� �����','�������������� ������');
 VoplPropGroupControl_LabelFullName_Caption            :array[1..2] of string = ('����� �����','�������� ������');
 VoplPropGroupControl_LabelKod_Caption                 :array[1..2] of string = ('��� �����','��� ������');
 VoplPropGroupControl_LabelNameFilter_Caption          :array[1..2] of string = ('��� ����� ���������� ���� ������','��� ������ ������� ����� �����');
 VoplPropGroupControl_ComboBoxFilter_Name_Caption      :array[1..2] of string = ('����� ���� �����','�������� ���� ������');

 VoplSystems_Caption                                   :array[1..2] of string = ('Գ���� ���� �������� �� ��������','������ ����� �������� �� ��������');

 DonNU_Name_Full                                       :array[1..2] of string = ('��������� ������������ ����������','�������� ������������ �����������');
 DonNU_Name_Short                                      :array[1..2] of string = ('�����','�����');
 WhatsNew_Caption                                      :array[1..2] of string = ('�� ������','��� ������');

 //ParSetup
 FZ_ParSetup_Caption                                   :array[1..2] of string = ('³����� ����������','�������� ����������');
 FZ_ParEdit_Caption                                    :array[1..2] of string = ('����������� ������ ������','�������������� �������� �������');
 FZ_AvansCount_Caption                                 :array[1..2] of string = ('���������� ������','������ ������');
 FZ_FullCount_Caption                                  :array[1..2] of string = ('����������','������');


 FZ_Personification_Caption                            :array[1..2] of string = ('�������������','��������������');
 CheckBoxFormSheet_Caption                             :array[1..2] of string = ('��������� �������','����������� ���������');
 GridClKodSetupEnd_Caption                             :array[1..2] of string = ('���� ���������','���� ���������');
 GridClProcPens_Caption                                :array[1..2] of string = ('������� ����','���������� ����');
 GridClProcProf_Caption                                :array[1..2] of string = ('��������','��������');
 GridClProcInv_Caption                                 :array[1..2] of string = ('������� ���� �������','���������� ���� ���������');
 GridClProcNSluch_Caption                              :array[1..2] of string = ('������ �������','���������� ������');
 GridClProcSoc_Caption                                 :array[1..2] of string = ('��������� �����������','���������� �����������');
 GridClProcZan_Caption                                 :array[1..2] of string = ('����������� �� ������� ���������','����������� �� ������ �����������');
 EmptyFields_Message                                   :array[1..2] of string = ('�� �� ���� ��������!','�� ��� ���� ���������!');
 NullFields_Message                                    :array[1..2] of string = ('�� ���� �� ������'+#13+'���� ������ ��������!','��� ���� �� �����'+#13+'����� ������� ��������!');

 Exception_Caption                                     :array[1..2] of string = ('�������','����������');
 PostFilterCheckBox_Caption                            :array[1..2] of string = ('Գ���� ��������� ���������','����� ����������� �����������');
 ReestrDate_beg_Caption                                :array[1..2] of string = ('���� �������','���� ������');

 Show_working_Caption                                  :array[1..2] of string = ('���������� ����� ���������', '���������� ������ ����������');
 Filter_Department_Caption                             :array[1..2] of string = ('Գ��������� ��  ���������', '����������� �� �������������');
 Filter_FIO_TN_Caption                                 :array[1..2] of string = ('Գ��������� (ϲ�/� ��� ��)', '����������� (��� ��� ��)');
 ON_date_Caption                                       :array[1..2] of string = ('�� ����', '�� ����');
 Filter_Rus_FIO_Caption                                :array[1..2] of string = ('�������� �.�.�/�', '��� ��-������');
 ZHosp_page_main                                       :array[1..2] of string = ('������� ����������', '�������� ����������');
 ZHosp_page_additional                                 :array[1..2] of string = ('���������', '�������������');
 ZHosp_list                                            :array[1..2] of string = ('����', '����������');
 ZHosp_Seria                                           :array[1..2] of string = ('����', '�����');
 ZHosp_Nomer                                           :array[1..2] of string = ('�����', '�����');
 ZHosp_Cont                                            :array[1..2] of string = ('����������� ����� �', '����������� ����������� �');
 ZHosp_Form                                            :array[1..2] of string = ('����� ����� ���������������', '����� ����������� �����');
 ZHosp_Illness                                         :array[1..2] of string = ('������������', '�����������');
 ZHosp_Illness_Type                                    :array[1..2] of string = ('��� ������������', '��� �����������');
 ZHosp_Illness_Shifr                                   :array[1..2] of string = ('���� ������������', '���� �����������');
 ZHosp_Illness_Ending                                  :array[1..2] of string = ('������� ��������', '�������������� ������');
 ZHosp_DateBeg                                         :array[1..2] of string = ('���� �������', '���� ������');
 ZHosp_DateEnd                                         :array[1..2] of string = ('���� ���������', '���� ���������');
 ZHosp_Payment                                         :array[1..2] of string = ('������', '������');
 ZHosp_Payment_Procent                                 :array[1..2] of string = ('������� �� ������', '������� � ������');
 ZHosp_Payment_vid                                     :array[1..2] of string = ('��� ������', '��� ������');
 ZHosp_Exception_Mode                                  :array[1..2] of string = ('��������� ������', '��������� ������');
 ZHosp_Note                                            :array[1..2] of string = ('�������', '����������');
 ZHosp_Rmoving                                         :array[1..2] of string = ('�������� ������', '�������� �������');
 ZHosp_Work_Mode                                       :array[1..2] of string = ('����� �����', '����� ������');
 ZHosp_Shift                                           :array[1..2] of string = ('����', '�������');
 ZHosp_working_day                                     :array[1..2] of string = ('������� ���', '������� ����');
 ZHosp_weekend_day                                     :array[1..2] of string = ('�������� ���', '�������� ����');
 ZHosp_weekend_day_list                                :array[1..2] of string = ('������ ��', '�������� ���');
 ZHosp_Z                                               :array[1..2] of string = ('�', '�');
 ZHosp_Po                                              :array[1..2] of string = ('��', '��');
 ZHosp_Rmoving_type                                    :array[1..2] of string = ('��� ��. �����', '��� ��. ����������');
 ZHosp_POst                                            :array[1..2] of string = ('������', '���������');
 ZHosp_Ok                                              :array[1..2] of string = ('��������', '�������');
 ZHosp_Cancel                                          :array[1..2] of string = ('³������', '��������');
 ZHosp_GetMode                                         :array[1..2] of string = ('������� ������', '������� ������');
 ZHosp_No_Change_Opl                                   :array[1..2] of string = ('��� ������ ����������� ��������� ������ ���������������!', '��� ������ ������������ ���������� ���������� ������');
 ZHosp_No_Change_IllType                               :array[1..2] of string = ('��� ������������ ����������� ��������� ������ ���������������!', '��� ����������� ������������ ���������� ���������� ������');
 ZHosp_No_Change_Date_beg                              :array[1..2] of string = ('���� ������� ����������� ��������� ������ ���������������!', '���� ������ ������������ ���������� ���������� ������');

 implementation

end.
