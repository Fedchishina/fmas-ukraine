unit AdrSp_Consts;

interface
//******************************************************************************
//                    ������� �� ���������� � ������� ������
//******************************************************************************

const LanguageIndex = 1; // 1-����������, 2-�������;

const InsertBtn_Caption            :array[1..2] of string = ('������','��������');
const AddAllBtn_Caption            :array[1..2] of string = ('������ ���','�������� ����');
const DelAllBtn_Caption            :array[1..2] of string = ('�������� ���','������� ����');
const UpdateBtn_Caption            :array[1..2] of string = ('����������','��������');
const DeleteBtn_Caption            :array[1..2] of string = ('��������','�������');
const DetailBtn_Caption            :array[1..2] of string = ('��������','��������');
const ShowDetailsBtn_Caption       :array[1..2] of string = ('���������','������');
const RefreshBtn_Caption           :array[1..2] of string = ('��������','��������');
const ExitBtn_Caption              :array[1..2] of string = ('�����','�����');
const YesBtn_Caption               :array[1..2] of string = ('��������','�������');
const CancelBtn_Caption            :array[1..2] of string = ('³������','��������');
const FilterBtn_Caption            :array[1..2] of string = ('Գ����','������');
const LocateBtn_Caption            :array[1..2] of string = ('������','������');
const LocateNextBtn_Caption        :array[1..2] of string = ('���','������');
const SelectBtn_Caption            :array[1..2] of string = ('������','�������');
const SelectWithDependence_Caption :array[1..2] of string = ('������ � ���������','������� � ������������');
const PropertiesBtn_Caption        :array[1..2] of string = ('����������','��������');

const InsertBtn_Hint               :array[1..2] of string = ('Ins - ������','Ins - ��������');
const UpdateBtn_Hint               :array[1..2] of string = ('F2 - ����������','F2 - ��������');
const DeleteBtn_Hint               :array[1..2] of string = ('Del - ��������','Del - �������');
const DetailBtn_Hint               :array[1..2] of string = ('Space - ��������','Space - ��������');
const SelectBtn_Hint               :array[1..2] of string = ('F10 - ������','F10 - �������');
const ExitBtn_Hint                 :array[1..2] of string = ('Esc - �����','Esc - �����');
const YesBtn_Hint                  :array[1..2] of string = ('F10 - ��������','F10 - �������');
const CancelBtn_Hint               :array[1..2] of string = ('Esc - ³������','Esc - ��������');
const RefreshBtn_Hint              :array[1..2] of string = ('F5 - �������','F5 - ��������');
const LocateBtn_Hint               :array[1..2] of string = ('F7 - ������','F7 - ������');
const LocateNextBtn_Hint           :array[1..2] of string = ('Ctrl+F7 - ���','Ctrl+F7 - ������');
const FilterBtn_Hint               :array[1..2] of string = ('F8 - Գ����','F8 - ������');
const Error_Caption                :array[1..2] of string = ('�������','������');

function GetLanguageIndex:Integer;

implementation

function GetLanguageIndex:Integer;
begin
  Result:=LanguageIndex;
end;

end.
