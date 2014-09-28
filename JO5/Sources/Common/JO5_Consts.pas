unit JO5_Consts;

interface

//******************************************************************************
//
//��������� ����
const Application_Caption          :array[1..2] of string = ('������-����� �5','������-����� �5');
const MainMenu_Caption             :array[1..2] of string = ('������� ���������� �������� ����� �� ������䳿 [�/� �5]','������� ������� ���������� ����� � ��������� [�/� �5]');
const Access_Caption               :array[1..2] of string = ('����','����');
const RegSch_Caption               :array[1..2] of string = ('����� �������','������ ������');
const KorToSch_Caption             :array[1..2] of string = ('�������������� �������','��������������� �����');
const DopKorToSch_Caption          :array[1..2] of string = ('���������� �������','����������� �����');
const Print_Caption                :array[1..2] of string = ('���� �������','������ �������');

const LabelRegUch_Caption          :array[1..2] of string = ('������ �����','������� �����');
const LabelCurrentRegUch_Caption   :array[1..2] of string = ('�������� ������ �����','������� ������� �����');
const LabelFilterPeriod_Caption    :array[1..2] of string = ('����� ����������','������ ����������');
const LabelSelectKorType_Caption   :array[1..2] of string = ('������ ��� ��������������','�������� ��� ��������������');
const LabelKorType_Caption         :array[1..2] of string = ('��� ��������������','��� ��������������');
const LabelDbKorType_Caption       :array[1..2] of string = ('��������','���������');
const LabelKrKorType_Caption       :array[1..2] of string = ('���������','����������');
const LabelExpandAll_Caption       :array[1..2] of string = ('���������� ���','���������� ���');
const LabelCloseAll_Caption        :array[1..2] of string = ('�������� ���','�������� ���');
const LabelIsNotOpenSch_Caption    :array[1..2] of string = ('������� �������','���� ������');
const LabelIsLockedSch_Caption     :array[1..2] of string = ('������� �����������','���� ������������');
const LabelCurrPeriod_Caption      :array[1..2] of string = ('�������� �����','������� ������');
const LabelDataType_Caption        :array[1..2] of string = ('������ ��� �����','�������� ��� ������');
const LabelDocs_Caption            :array[1..2] of string = ('���������','���������');
const LabelSCHs_Caption            :array[1..2] of string = ('�������','�����');

// ��������� ������
const ApplyBtn_Caption             :array[1..2] of string = ('��������','���������');
const InsertBtn_Caption            :array[1..2] of string = ('������','��������');
const UpdateBtn_Caption            :array[1..2] of string = ('����������','��������');
const DeleteBtn_Caption            :array[1..2] of string = ('��������','�������');
const DelAllBtn_Caption            :array[1..2] of string = ('�������� ���','������� ��');
const DetailBtn_Caption            :array[1..2] of string = ('��������','��������');
const AddManBtn_Caption            :array[1..2] of string = ('������ �����','�������� ��������');
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
const AdditionalBtn_Caption        :array[1..2] of string = ('���������','�������������');

const OpenSchBtn_Caption           :array[1..2] of string = ('³������','�������');
const CloseSchBtn_Caption          :array[1..2] of string = ('�������','�������');
const OpenSchBtn_Hint              :array[1..2] of string = ('³������� �������� ������� � ��������� �����','�������� ������� ���� � ���������� ������');
const CloseSchBtn_Hint             :array[1..2] of string = ('��������� �������� ������� � ��������� �����','��������� ������� ���� � ��������� ������');
const SelectAnalizeBtn_Hint        :array[1..2] of string = ('�������� ����� �������','�������� ������ �����');

//******************************************************************************
const LabelPeriod_Caption          :array[1..2] of string = ('�����','������');
const LabelSumma_Caption           :array[1..2] of string = ('����','�����');
const LabelMonth_Caption           :array[1..2] of string = ('̳����','�����');
const LabelYear_Caption            :array[1..2] of string = ('г�','���');
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
const EnotInputData_Text           :array[1..2] of string = ('�� ������� ����!',
                                                             '�� ������ ������!');
const EManInput_Text               :array[1..2] of string = ('�� ������ ������� �����','�� ������� ���������� ����');
const EMonthInput_Text             :array[1..2] of string = ('�� ������ �����','�� ������ �����');
const EYearInput_Text              :array[1..2] of string = ('������� ����� ����','������ ����� ����');
const ESummaInput_Text             :array[1..2] of string = ('�� ������� ����','�� ������� �����');
const ECategoryInput_Text          :array[1..2] of string = ('�� ������ ��������','�� ������� ���������');
const EVidOplInput_Text            :array[1..2] of string = ('�� ������ ��� ��������','�� ������ ��� ������');
const EDepartmentInput_Text        :array[1..2] of string = ('�� ������ �������','�� ������� �������������');
const EPostInput_Text              :array[1..2] of string = ('�� ������ ������','�� ������� ���������');
const ESmetaInput_Text             :array[1..2] of string = ('�� ������ ��������','�� ������� �����');
const EStudentMovingNotSelect_Text :array[1..2] of string = ('�� ������ ����� ��������','�� ������ ���� �������');
const EReportNotFound              :array[1..2] of string = ('���� ���� �� ��������','���� ������ �� ������');
//******************************************************************************

//******************************************************************************
//������� ������
const GridClDate_Caption           :array[1..2] of string = ('����','����');
const GridClSumma_Caption          :array[1..2] of string = ('����','�����');

const GridClNum_Caption            :array[1..2] of string = ('�','�');
const GridClName_Caption           :array[1..2] of string = ('�����','��������');
const GridClDebet_Caption          :array[1..2] of string = ('�����','�����');
const GridClKredit_Caption         :array[1..2] of string = ('������','������');
const GridClRekvizitSch_Caption    :array[1..2] of string = ('�������� �������','��������� �����');
const GridClBegSaldo_Caption       :array[1..2] of string = ('������ �� ������� �����','������ �� ������ ������');
const GridClEndSaldo_Caption       :array[1..2] of string = ('������ �� ����� �����','������ �� ����� ������');
const GridClOborots_Caption        :array[1..2] of string = ('�������','�������');
const GridClGrSmetaNum_Caption     :array[1..2] of string = ('� ��.�������','� ��.��������');
const GridClGrSmetaName_Caption    :array[1..2] of string = ('����� ��.�������','�������� ��.��������');
const GridClSmetaNum_Caption       :array[1..2] of string = ('� ���������','� �����');
const GridClSmetaName_Caption      :array[1..2] of string = ('����� ���������','�������� �����');
const GridClRazdNum_Caption        :array[1..2] of string = ('� ������','� �������');
const GridClRazdName_Caption       :array[1..2] of string = ('����� ������','�������� �������');
const GridClStatNum_Caption        :array[1..2] of string = ('� �����','� ������');
const GridClStatName_Caption       :array[1..2] of string = ('����� �����','�������� ������');
const GridClKekvNum_Caption        :array[1..2] of string = ('� ����','� ����');
const GridClKekvName_Caption       :array[1..2] of string = ('����� ����','�������� ����');
const GridClNote_Caption           :array[1..2] of string = ('�������','����������');



//******************************************************************************
//��� RegSch

	//��������� ��������(������) �������� �����
const	sMsgSchIsAbsent              :array[1..2] of string = ('�������� ������� �� ��������','������� ���� �� ������');
const sMsgSchIsOpened              :array[1..2] of string = ('��������� ������� �������� �������,'#13'������� ���� ���� ������� �����','���������� ������� ������� ����,'#13'��������� �� ��� ������ �����');
const sMsgSchIsClosed              :array[1..2] of string = ('��������� ������� �������� �������,'#13'������� ���� ���� ������� �����','���������� ������� ������� ����,'#13'��������� �� ��� ������ �����');
const	sMsgSchIsParentOp            :array[1..2] of string = ('��������� ������� �������� �������,'#13'������� �� �� � �����������','���������� ������� ������� ����,'#13'��������� �� �� �������� ���������');
const	sMsgSchIsParentCl            :array[1..2] of string = ('��������� ������� �������� �������,'#13'������� �� �� � �����������','���������� ������� ������� ����,'#13'��������� �� �� �������� ���������');
const	sMsgDataSetIsEmpty           :array[1..2] of string = ('��������� ��������� ���������� ��'#13'��������, ������� ����� ������� �������','���������� ����������� ���������� ��'#13'������, ��������� ������ ������ ����');

const	sMsgOKOpenSCH                :array[1..2] of string = ('������� ������ ���������� � ��������� �����','C��� ������� �������� � ���������� ������');
const sMsgOKCloseSCH               :array[1..2] of string = ('������� ������ ���������� � ��������� �����','C��� ������� �������� � ��������� ������');
const	sMsgErrOpenSCH               :array[1..2] of string = ('�� ������� �������� ������� � ��������� �����...'#13'�������� ����������� ������� ��� �������������� �������?','�� ������� �������� ���� � ���������� ������...'#13'�������� ����������� ������ ��� ��������������� �����?');
const	sMsgErrCloseSCH              :array[1..2] of string = ('�� ������� ��������� ������� � ��������� �����...'#13'�������� ����������� ������� ��� �������������� �������?','�� ������� ��������� ���� � ��������� ������...'#13'�������� ����������� ������ ��� �������������� �����?');

	//��������� ��������� ���������������
const	sMSG_SelectSubSCH            :array[1..2] of string = ('��� ����, ��� ����������� �������������� �� �������,'#13'������, ���� �����, ������� ������� ����','��� ����, ����� ����������� ��������������� �� �����,'#13'��������, ����������, ���� ������� ������');
const	sMSG_KorrIsNotFound          :array[1..2] of string = ('��������� �������� ��������������,'#13'���� �� ������� ������� �������','���������� �������� ���������������,'#13'��������� ����������� ��������� ����');

resourcestring
 INI_FILENAME = 'config.ini';
 PathReports  = '\Reports\Jo5\';

implementation

end.
