unit GetProvInfoWizardResources;

interface

const MAIN_FORM_TITLE          :array[1..2] of String = ('������ ����������� ���������� �� ��������','������ ������ ���������� ��� ��������');
const MAIN_FORM_SCH_TITLE      :array[1..2] of String = ('���� ��������','������� �������');
const MAIN_FORM_SMT_TITLE      :array[1..2] of String = ('������','��������');
const MAIN_FORM_RAZ_TITLE      :array[1..2] of String = ('������','�����');
const MAIN_FORM_STA_TITLE      :array[1..2] of String = ('������','������');
const MAIN_FORM_KVZ_TITLE      :array[1..2] of String = ('��� ������','��� ������');
const MAIN_FORM_DB_TITLE       :array[1..2] of String = ('�����','�����');
const MAIN_FORM_KR_TITLE       :array[1..2] of String = ('������','�����');
const MAIN_FORM_BACK_BUTTON    :array[1..2] of String = ('�����','�����');
const MAIN_FORM_OK_BUTTON      :array[1..2] of String = ('�������','�������');
const MAIN_FORM_CLOSE_BUTTON   :array[1..2] of String = ('������','³������');
const MAIN_FORM_AN_TITLE       :array[1..2] of String = ('���������','��������');

const MAIN_FORM_POPUP1         :array[1..2] of String = ('����� ������� �����','���� ������� �����');
const MAIN_FORM_POPUP2         :array[1..2] of String = ('����� �������� �����','���� ��������� �������');
const MAIN_FORM_POPUP3         :array[1..2] of String = ('����� ����� ��� ���������������','���� ��������������� �������');
const MAIN_FORM_POPUP4         :array[1..2] of String = ('����� �������','���� ���������');
const MAIN_FORM_POPUP5         :array[1..2] of String = ('����� �������','���� ������');
const MAIN_FORM_POPUP6         :array[1..2] of String = ('����� ������','���� �����');
const MAIN_FORM_POPUP7         :array[1..2] of String = ('����� ���� ������','���� ���� ������');

const CHOOSE_OBJ_CH_TITLE_SM1  :array[1..2] of String = ('���������� ������� ������','��������� ������� ��������');
const CHOOSE_OBJ_CH_TITLE_SM2  :array[1..2] of String = ('���������� ������� ������ ��� ��������� ����� ��������','��������� ������� �������� ��� ������');
const CHOOSE_OBJ_CH_TITLE_SM3  :array[1..2] of String = ('���������� ������� ������ ��� ���������� ����� ��������','��������� ������� �������� ��� ������');

const CHOOSE_OBJ_CH_TITLE_RZ1  :array[1..2] of String = ('���������� ������� ������ �������','��������� ������� ����� ���������');
const CHOOSE_OBJ_CH_TITLE_RZ2  :array[1..2] of String = ('���������� ������� ������ ������� ��� ��������� ����� ��������','��������� ������� ����� ��������� ��� ������');
const CHOOSE_OBJ_CH_TITLE_RZ3  :array[1..2] of String = ('���������� ������� ������ ������� ��� ���������� ����� ��������','��������� ������� ����� ��������� ��� ������');

const CHOOSE_OBJ_CH_TITLE_ST1  :array[1..2] of String = ('���������� ������� ������ �������','��������� ������� ������ ���������');
const CHOOSE_OBJ_CH_TITLE_ST2  :array[1..2] of String = ('���������� ������� ������ ������� ��� ��������� ����� ��������','��������� ������� ������ ��������� ��� ������');
const CHOOSE_OBJ_CH_TITLE_ST3  :array[1..2] of String = ('���������� ������� ������ ������� ��� ���������� ����� ��������','��������� ������� ������ ��������� ��� ������');

const CHOOSE_OBJ_CH_TITLE_KV1  :array[1..2] of String = ('���������� ������� ��� ������','��������� ������� ��� ������');
const CHOOSE_OBJ_CH_TITLE_KV2  :array[1..2] of String = ('���������� ������� ��� ������ ��� ��������� ����� ��������','��������� ������� ��� ������ ��� ������');
const CHOOSE_OBJ_CH_TITLE_KV3  :array[1..2] of String = ('���������� ������� ��� ������ ��� ���������� ����� ��������','��������� ������� ��� ������ ��� ������');

const CHOOSE_OBJ_CH_TITLE_MA_SC:array[1..2] of String = ('���������� ������� ������� ���� ��� ��������','��������� ������� �������� �������');
const CHOOSE_OBJ_CH_TITLE_CO_SC:array[1..2] of String = ('���������� ������� ����������������� ����','��������� ������� �������������� �������');

const CHOOSE_OBJ_GRID1_COL1    :array[1..2] of String = ('��� �������','��� ���������');
const CHOOSE_OBJ_GRID1_COL2    :array[1..2] of String = ('������������ �������','������������ ���������');
const CHOOSE_OBJ_GRID1_COL3    :array[1..2] of String = ('������������ ������ �������','������������ ����� ���������');

const CHOOSE_OBJ_GRID2_COL1    :array[1..2] of String = ('���','���');
const CHOOSE_OBJ_GRID2_COL2    :array[1..2] of String = ('������������','������������');

const ANALITIC_FORM_HEAD_PANEL1 :array[1..2] of String = ('�������� ��������� �� ���������� �����','������� �������� ���������� �������');
const ANALITIC_FORM_HEAD_PANEL2 :array[1..2] of String = ('�������� ��������� �� ����������� �����','������� �������� ����������� �������');

const ANALITIC_FORM_RESULT_OK   :array[1..2] of String = ('�������','�������');
const ANALITIC_FORM_RESULT_NONE :array[1..2] of String = ('�� ������������','�� �������������');

const FACED_FORM_CAPTION       :array[1..2] of String = ('������ �� ���������� �����������','������ � ���������� �����������');
const FACED_FORM_HEADER_PANEL  :array[1..2] of String = ('�������� ����� ��������','������� �������� ��������');
const FACED_FORM_BASE_DOCUMENT :array[1..2] of String = ('��������� ���������','��������');
const FACED_FORM_OK_BUTTON     :array[1..2] of String = ('������� ��������','������� ��������');
const FACED_FORM_CLOSE_BUTTON  :array[1..2] of String = ('������','�������');

const FACED_FORM_BAND1         :array[1..2] of String = ('���������� �� ���������','���������� �� ���������');
const FACED_FORM_BAND2         :array[1..2] of String = ('���������� �� ��������','���������� �� ��������');

const FACED_GRID_COLUMN1       :array[1..2] of String = ('����� ���������','���� ���������');
const FACED_GRID_COLUMN2       :array[1..2] of String = ('����� ���������','����� ���������');
const FACED_GRID_COLUMN3       :array[1..2] of String = ('��� ���������','��� ���������');
const FACED_GRID_COLUMN4       :array[1..2] of String = ('�����','����');
const FACED_GRID_COLUMN5       :array[1..2] of String = ('������','��������');
const FACED_GRID_COLUMN6       :array[1..2] of String = ('������','�����');
const FACED_GRID_COLUMN7       :array[1..2] of String = ('������','������');
const FACED_GRID_COLUMN8       :array[1..2] of String = ('����','����');
const FACED_GRID_COLUMN9       :array[1..2] of String = ('�������� ������','����� �����');


implementation

end.
