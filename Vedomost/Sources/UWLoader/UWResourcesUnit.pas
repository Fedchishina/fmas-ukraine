unit UWResourcesUnit;

interface

const   IndexLang = 2;
//resourcestring

const   MY_CONST_ADD                    : array [1..2] of string[10]         = ('������', '��������');
const   MY_CONST_DELETE                 : array [1..2] of string[10]         = ('��������', '�������');
const   MY_CONST_UPDATE                 : array [1..2] of string[10]         = ('������', '��������');
const   MY_CONST_REFRESH                : array [1..2] of string[10]         = ('³�������', '��������');
const   MY_CONST_CLOSE                  : array [1..2] of string[10]         = ('�������', '�������');
const   MY_CONST_VIH                    : array [1..2] of string[10]         = ('�����', '�����');
const   MY_CONST_THE_PRINT              : array [1..2] of string[10]         = ('����', '������');
const   MY_CONST_HELP                   : array [1..2] of string[10]         = ('��������', '������');
const   MY_CONST_CHOOSE                 : array [1..2] of string[10]         = ('�������', '�������');
const   MY_CONST_FILTER                 : array [1..2] of string[10]         = ('Գ����', '������');
const   MY_CONST_ANALIZE                : array [1..2] of string[10]         = ('�����', '������');
const   MY_CONST_SET                    : array [1..2] of string[10]         = ('����������', '����������');
const   MY_CONST_OK                     : array [1..2] of string[10]         = ('������', '������');
const   MY_CONST_FIND                   : array [1..2] of string[10]         = ('�����', '�����');
const   MY_CONST_PRINT                  : array [1..2] of string[10]         = ('���������', '��������');
const   MY_CONST_PRINT_PRN              : array [1..2] of string[25]         = ('��������� �� ������', '������ �� �������');
const   MY_CONST_VALUE_PRINT_CAPTION    : array [1..2] of string[17]         = ('������ �����', '������� ������');
const   MY_CONST_SHOW                   : array [1..2] of string[10]         = ('��������', '��������');
const   MY_CONST_BUTTON_OK              : array [1..2] of string[10]         = ('��������', '�������');
const   MY_CONST_BUTTON_CANCEL          : array [1..2] of string[10]         = ('³������', '��������');
const   MY_CONST_BUTTON_YES             : array [1..2] of string[2]          = ('��', '��');
const   MY_CONST_BUTTON_NO              : array [1..2] of string[3]          = ('ͳ', '���');
const   MY_CONST_BUTTON_CHOOSE          : array [1..2] of string[10]         = ('�������', '�������');
const   MY_CONST_MESSAGE_WARNING        : array [1..2] of string[10]         = ('�����!', '��������!');
const   MY_CONST_MESSAGE_ERROR          : array [1..2] of string[10]         = ('�������! ', '������!');
const   MY_CONST_FATAL_ERROR_SYS        : array [1..2] of string[30]         = ('������� � ������ �������!', '������ � ������� ������������!');
const   MY_CONST_ERROR_KERNELL          : array [1..2] of string[40]         = ('������� ���� (������� ������� �����)', '������ ���� (������� ������ �����)');
const   MY_CONST_FATAL_ERROR            : array [1..2] of string[50]         = ('�������� ������� � ������ ������� : ', '��������� ������ � ������� ������������ : ');
const   MY_CONST_ERROR_DONT_WORK        : array [1..2] of string[45]         = ('�� �� ���� ����� ��������� � ��� ������!', '�� �� ������ ����� �������� � ���� �������!');
const   MY_CONST_FORM_FORM              : array [1..2] of string[45]         = ('��� �''������ � �� ������� �������: " ', '��� ���������� � �� �������� ������: "');
const   MY_CONST_MESSAGE_HINT           : array [1..2] of string[15]         = ('������������!', '��������������!');
const   MY_CONST_UNDER_CONSTRUCTION     : array [1..2] of string[20]         = ('�� ���䳿 ��������', '�� ������ ����������');
const   MY_CONST_DOC_ERROR_KERNELL      : array [1..2] of string[50]         = ('��� ��������� ��������� ������� �������', '��� ���������� ��������� �������� ������');
const   MY_CONST_BUTTON_EXPORT_TO_EXCEL : array [1..2] of string[25]         = ('������� �� Excel', '������� � Excel');
const   MY_CONST_FIO                    : array [1..2] of string[5]          = ('ϲ�', '���');
const   MY_CONST_TAB_NUM                : array [1..2] of string[13]         = ('���. �����', '���. �����');
const   MY_CONST_COMMENT                : array [1..2] of string[13]         = ('��������', '�����������');
const   MY_CONST_DATE_OPEN              : array [1..2] of string[15]         = ('���� ��������', '���� ��������');
const   MY_CONST_LIC_SCH                : array [1..2] of string[18]         = ('�������� �������', '������� ����');
const   MY_CONST_VIHOD                  : array [1..2] of string[48]         = ('�� ����� ������ ����� � ��������?', '�� ������������� ������� ����� �� ���������?');
const   MY_CONST_USER                   : array [1..2] of string[15]         = ('����������', '������������');
const   MY_CONST_BASA                   : array [1..2] of string[4]          = ('����', '����');
const   MY_CONST_OPEN_CONFIG            : array [1..2] of string[48]         = ('������ ��������� � ����� "config.ini" ...', '��������� ��������� �� ����� "config.ini" ...');
const   MY_CONST_FORM_DATABASE_OPEN     : array [1..2] of string[48]         = ('�''�������� � ����� ����� ...', '����������� � ����� ������ ...');
const   MY_CONST_NAME                   : array [1..2] of string[5]          = ('�''��', '���');
CONST   MY_CONST_PAROL                  : array [1..2] of string[7]          = ('������', '������');
const   MY_CONST_IDENTIFICATION         : array [1..2] of string[75]         = ('�''��', '������������� ������������ � ���������� "���� ����������"');
const   MY_CONST_SP                     : array [1..2] of string[15]         = ('��������', '�����������');
const   MY_CONST_WORK                   : array [1..2] of string[15]         = ('������', '������');
const   MY_CONST_INFO                   : array [1..2] of string[15]         = ('����������', '����������');
const   MY_CONST_DATE                   : array [1..2] of string[5]          = ('����', '����');
const   MY_CONST_NOMER                  : array [1..2] of string[5]          = ('�����', '�����');
const   MY_CONST_SUMMA                  : array [1..2] of string[5]          = ('����', '�����');
const   MY_CONST_CHOOSE_SP              : array [1..2] of string[23]         = ('������� � ��������', '������� �� �����������');
const   MY_CONST_SMETA                  : array [1..2] of string[6]          = ('������', '������');
const   MY_CONST_RAZD                   : array [1..2] of string[6]          = ('�����', '������');
const   MY_CONST_STATE                  : array [1..2] of string[7]          = ('������', '������');
const   MY_CONST_KEKV                   : array [1..2] of string[4]          = ('����', '����');
const   MY_CONST_SMETA_S                : array [1..2] of string[6]          = ('����', '����');
const   MY_CONST_RAZD_S                 : array [1..2] of string[6]          = ('����', '����');
const   MY_CONST_STATE_S                : array [1..2] of string[7]          = ('��', '��');
const   MY_CONST_KEKV_S                 : array [1..2] of string[4]          = ('����', '����');
const   MY_CONST_DOGOVOR                : array [1..2] of string[7]          = ('������', '�������');
const   MY_CONST_SCH                    : array [1..2] of string[7]          = ('�������', '����');
const   MY_CONST_DELETE_PROV            : array [1..2] of string[45]         = ('�� ����� ������� �������� �������� - ', '�� ������������� ������� ������� �������� - ');
const   MY_CONST_PO                     : array [1..2] of string[2]          = ('��', '��');
const   MY_ABOUT_SYSTEM                 : array [1..2] of string[10]         = ('� ������', '� �������');
const   MY_N_42                         : array [1..2] of string[40]         = ('��� ��������� �� �������� ���������', '����� ����������� � ���������� ���������');

const   MY_BASE_HANDLE_ERROR            : array [1..2] of string[35]         = ('������� Handl`a ����', '������ Handl`a ����');

const   UV_CAPTION                      : array [1..2] of string[100]        = ('ϳ�������� "���� ���������" ��������� ������� "����������"', '���������� "���� ����������" ���������� ������� "�����������"');
const   UV_MAIN_CAPTION                 : array [1..2] of string[48]         = ('������� ���� ��������� "���� ���������"', '������� ���� ���������� "���� ����������"');
const   UV_MAIN_N11                     : array [1..2] of string[48]         = ('������ � ����������', '������ � �����������');
const   UV_MAIN_N12                     : array [1..2] of string[48]         = ('������ � ��������', '������ � ���������');
const   UV_MAIN_N33                     : array [1..2] of string[48]         = ('������� ���� ���������', '���������� ����� ����������');
const   UV_MAIN_N34                     : array [1..2] of string[48]         = ('������ ���������� ������ � DBF-�����', '������ ���������� �������� �� DBF-�����');

const   SPBANKCARD_FIO_TN               : array [1..2] of string[15]         = ('ϲ� ��� ��', '��� ��� ��');
const   SPBANKCARD_CAPTION              : array [1..2] of string[35]         = ('������� ���������� ������', '���������� ���������� ��������');
const   SPBANKCARD_DELETE_BANKCARD      : array [1..2] of string[45]         = ('�� ����� ������ �������� ������ ', '�� ������������� ������� ������� ��������');
const   SPBANKCARD_ADD_CAPTION          : array [1..2] of string[65]         = ('³��� ����������� ���������� ������', '���� �������������� ���������� ��������');
const   SPBANKCARD_ADD_FLAG_OPEN        : array [1..2] of string[20]         = ('������� ������', '������� ��������');
const   SPBANKCARD_ADD_SELECT_DOG       : array [1..2] of string[20]         = ('������ � ������', '������� � ������');
const   SPBANKCARD_ADD_DONT_LIC         : array [1..2] of string[50]         = ('���������� ������� �� ������� ���� ������', '������� ���� �� ������ ���� ������');
const   SPBANKCARD_ADD_DONT_DOG         : array [1..2] of string[50]         = ('�� �� ������� ������', '�� �� ������� �������');
const   SPBANKCARD_DOG_SHORTNAME        : array [1..2] of string[10]         = ('�����', '��������');
const   SPBANKCARD_DOG_NUMBER           : array [1..2] of string[5]          = ('�����', '�����');
const   SPBANKCARD_DOG_DATE             : array [1..2] of string[5]          = ('����', '����');
const   SPBANKCARD_DOG_RS               : array [1..2] of string[3]          = ('�\�', '�\�');
const   SPBANKCARD_DOG_NAME_CUST        : array [1..2] of string[20]         = ('����� �����������', '�������� �����������');
const   SPBANKCARD_DOG_MFO              : array [1..2] of string[3]          = ('���', '���');
const   SPBANKCARD_DOG_BANK             : array [1..2] of string[5]          = ('����', '����');
const   SPBANKCARD_DOG_OKPO             : array [1..2] of string[7]          = ('������', '����');
const   SPBANKCARD_DOG_CAPTION          : array [1..2] of string[35]         = ('������� ���������� ��������', '���������� ���������� ���������');
const   SPBANKCARD_DOG_DONT_DEL         : array [1..2] of string[75]         = ('��������� �������� ������, �� �� ��� ������� ������ ������!', '������ ������� �������, ��� ��� ��� ��� ���������� ���������� ��������!');
const   SPBANKCARD_DOG_ADD_RS_OUR       : array [1..2] of string[75]         = ('�\� ���', '�\� ���');
const   SPBANKCARD_DOG_ADD_RS_CUST      : array [1..2] of string[75]         = ('�\� �����������', '�\� �����������');
const   SPBANKCARD_DOG_ADD_CAPTION      : array [1..2] of string[75]         = ('����� ����������� ��������', '����� �������������� ��������');
const   SPBANKCARD                      : array [1..2] of string[20]         = ('��������� ������', '���������� ��������');

const   VEDOMOST_CAPTION                : array [1..2] of string[35]         = ('³��� ������ ���������', '���� ������ ����������');
const   VEDOMOST_NAME                   : array [1..2] of string[25]         = ('��� �������', '��� ���������');
const   VEDOMOST_DELETE                 : array [1..2] of string[55]         = ('�� ����� ������ �������� ������� ', '�� ������������� ������� ������� ��������� ');
const   VEDOMOST_REESTR_NUMBER          : array [1..2] of string[10]         = ('� ������', '� �������');
const   VEDOMOST_DONT_DELETE            : array [1..2] of string[85]         = ('��������� �������� �������, �� ���� ��� ������� �� �������������� ��������!', '������ ������� ���������, ��� ��� ��� ��� ��������� ��� ������������� ��������!');
const   VEDOMOST_DONT_EDIT              : array [1..2] of string[85]         = ('��������� ���������� �������, �� ���� ��� ������� �� �������������� ��������!', '������ ������������� ���������, ��� ��� ��� ��� ��������� ��� ������������� ��������!');
const   VEDOMOST_DONT_EDIT_REESTR       : array [1..2] of string[85]         = ('��������� ���������� �������, �� ���� ����� � ���� �������!', '������ ������������� ���������, ��� ��� ���������� ������ � ���� ����������!');
const   VEDOMOST_DONT_ZAPIS             : array [1..2] of string[85]         = ('�������, ��� ���� ������� ��� �� ���� (���� ���� ��������)', '��������, �� ����� ��������� ��� �� ���������� (��� ���� �������)');
const   VEDOMOST_SHOW_ALL_VEDOMOST      : array [1..2] of string[35]         = ('³��������� �� ���� ���������', '���������� ��� ���� ����������');
const   VEDOMOST_PROV_CAPTION           : array [1..2] of string[35]         = ('³��� �������� ��� ���������', '���� �������� ��� ����������');
const   VEDOMOST_OTOBRAJAT              : array [1..2] of string[35]         = ('³��������� ������� �', '���������� ��������� �');
const   VEDOMOST_OTOBRAJAT_TYPE         : array [1..2] of string[8]          = ('�� ����', '�� ����');
const   VEDOMOST_PROV_DONT_PEOPL        : array [1..2] of string[35]         = ('�� �� ������� ��������� ��������', '�� �� ������� ���������� ��������');
const   VEDOMOST_PROV_DONT_SCH          : array [1..2] of string[25]         = ('�� �� ������� �������', '�� �� ������� ����');
const   VEDOMOST_PROV_DONT_SMETA        : array [1..2] of string[25]         = ('�� �� ������� ������', '�� �� ������� ������');
const   VEDOMOST_PROV_DONT_RAZD         : array [1..2] of string[25]         = ('�� �� ������� �����', '�� �� ������� ������');
const   VEDOMOST_PROV_DONT_STATE        : array [1..2] of string[25]         = ('�� �� ������� ������', '�� �� ������� ������');
const   VEDOMOST_PROV_DONT_KEKV         : array [1..2] of string[25]         = ('�� �� ������� ����', '�� �� ������� ����');
const   VEDOMOST_PROV_DONT_DOGOVOR      : array [1..2] of string[25]         = ('�� �� ������� ������', '�� �� ������� �������');
const   VEDOMOST_PROV_DONT_SUMMA        : array [1..2] of string[45]         = ('���� �������� �� ������� ���������� ����', '����� �������� �� ������ ��������� ����');
const   VEDOMOST_EDIT_CAPTION           : array [1..2] of string[35]         = ('³��� ����������� �������', '���� �������������� ���������');
const   VEDOMOST_EDIT_NOMBER            : array [1..2] of string[15]         = ('³������� �����', '��������� �����');
const   VEDOMOST_EDIT_VID               : array [1..2] of string[3]          = ('��', '��');
const   VEDOMOST_EDIT_PO_TYPE           : array [1..2] of string[7]          = ('�� ����', '�� ����');
const   VEDOMOST_TYPE_VEDOM_CAPTION     : array [1..2] of string[27]         = ('������� ���� ���������', '���������� ����� ����������');
const   VEDOMOST_TYPE_VEDOM_MAKE_DBF    : array [1..2] of string[20]         = ('�������� � DBF-����', '�������� � DBF-����');
const   VEDOMOST_TYPE_VEDOM_SEL_DOG     : array [1..2] of string[20]         = ('�������� ��������', '������� ��������');
const   VEDOMOST_TYPE_VEDOM_DONT_DEL    : array [1..2] of string[85]         = ('��������� �������� ��� ��� ���������, �� �� ��� ������� �������� ������!', '������ ������� ���� ��� ���������, ��� ��� ��� ��� ���������� ���������� ��������!');
const   VEDOMOST_TYPE_VEDOM_DELETE      : array [1..2] of string[48]         = ('�� ����� ������ �������� ��� ������� ', '�� ������������� ������� ������� ��� ��������� ');
const   VEDOMOST_TYPE_VEDOM_CAPTION_ADD : array [1..2] of string[37]         = ('³��� ����������� ���� ���������', '���� �������������� ����� ����������');
const   VEDOMOST_TYPE_VEDOM_ADD_NO_NAME : array [1..2] of string[35]         = ('�� �� ����� ����� ���� �������', '�� �� ����� �������� ���� ���������');
const   VEDOMOST_TYPE_VEDOM_ADD_CAP_SH  : array [1..2] of string[15]         = ('������ �����', '������ ������');
const   VEDOMOST_TYPE_VEDOM_SHABLO_CAP  : array [1..2] of string[35]         = ('³��� ������ ������� �����', '���� ������ ������� ������');

const   VEDOMOST_TYPE_VEDOM_SHABLO_D1   : array [1..2] of string[13]         = ('1-�� ������', '1-� ���������');
const   VEDOMOST_TYPE_VEDOM_SHABLO_P1   : array [1..2] of string[13]         = ('1-� �����', '1-� �������');
const   VEDOMOST_TYPE_VEDOM_SHABLO_D2   : array [1..2] of string[13]         = ('1-�� ������', '2-� ���������');
const   VEDOMOST_TYPE_VEDOM_SHABLO_P2   : array [1..2] of string[13]         = ('2-� �����', '2-� �������');
const   VEDOMOST_TYPE_VEDOM_SHABLO_TY   : array [1..2] of string[17]         = ('���� �������', '�������� �������');


const   VEDOMOST_REESTR_CAPTION         : array [1..2] of string[37]         = ('������� ������ ���������', '���������� �������� ����������');
const   VEDOMOST_REESTR_EDIT_CAPTION    : array [1..2] of string[40]         = ('³��� ����������� ������ ���������', '���� �������������� ������� ����������');
const   VEDOMOST_REESTR_OTOBRAJAT       : array [1..2] of string[25]         = ('³��������� ������ �', '���������� ������� �');
const   VEDOMOST_REESTR_DATE            : array [1..2] of string[13]         = ('���� ������', '���� �������');
const   VEDOMOST_NAMEDOG                : array [1..2] of string[17]         = ('����� ��������', '�������� ��������');
const   VEDOMOST_NOMBER_VEDOM           : array [1..2] of string[15]         = ('����� �������', '����� ���������');
const   VEDOMOST_REESTR_DELETE          : array [1..2] of string[48]         = ('�� ����� ������ �������� ����� ', '�� ������������� ������� ������� ������ ');
const   VEDOMOST_REESTR_DONT_DELETE     : array [1..2] of string[90]         = ('��������� �������� �����, �� ���� � ��������� ��� ��������� � ���.����� ', '���������� ������� ������, ��� ��� ���� �� ���������� ���������� � ������������� ����� ');
const   VEDOMOST_REESTR_N               : array [1..2] of string[10]         = ('����� �', '������ �');
const   VEDOMOST_REESTR_VID             : array [1..2] of string[3]          = ('��', '��');
const   VEDOMOST_REESTR_DONT_ZAPIS_E_V  : array [1..2] of string[43]         = ('��������� ������� ����� ��� ���������!', '������ ��������� ������ ��� ����������!');
const   VEDOMOST_REESTR_DONT_UPDATE     : array [1..2] of string[33]         = ('��������� ������ �����!', '������ �������� ������!');
const   VEDOMOST_REESTR_INTO_BUH        : array [1..2] of string[43]         = (' ��������� �� ��������������� �����', ' ��������� �� �������������� �����');
const   VEDOMOST_REESTR_INTO_OTHER_R    : array [1..2] of string[33]         = (' �������� ������ ������', ' ����������� ������� �������');
const   VEDOMOST_REESTR_PRINT           : array [1..2] of string[15]         = ('���� ������', ' ������ �������');
const   VEDOMOST_DATE                   : array [1..2] of string[15]         = ('���� �������', '���� ���������');

const   VEDOMOST_IMPORT_SCROL_1         : array [1..2] of string[33]         = ('��������� ������� ���������', '����� ������� ����������');
const   VEDOMOST_IMPORT_SCROL_2         : array [1..2] of string[33]         = ('������ ��������� ���� ������', '������� ���������� ������� ������');
const   VEDOMOST_IMPORT_CAPTION         : array [1..2] of string[33]         = ('³��� ������� ���������� ������', '���� ������� ���������� ��������');
const   VEDOMOST_IMPORT_ZAPUSK          : array [1..2] of string[33]         = ('������ �������', '������ �������');
const   VEDOMOST_IMPORT_PRINT_CAP       : array [1..2] of string[13]         = ('���� �������', '������ ������');

const   VEDOMOST_VN_VEDOMOST            : array [1..2] of string[10]         = ('³������', '���������');
const   VEDOMOST_VN_PEESTR              : array [1..2] of string[10]         = ('�����', '������');
const   VEDOMOST_VN_TAKE_ALLREADY       : array [1..2] of string[30]         = ('�� ������� ��� �������!', '��� ��������� ��� �������');
const   VEDOMOST_VN_NOT_TAKE            : array [1..2] of string[60]         = ('�� ����� ������ �������� �������� � ������?', '�� ������������� ������� ��������� ��������� �� ������?');

const   VEDOMOST_VN_L_GRID              : array [1..2] of string[60]         = ('�������� ����', '�������� ������');
const   VEDOMOST_VN_R_GRID              : array [1..2] of string[60]         = ('��������� ������', '��������� ������');

const   V2_TYPE_NOT_NAME                : array [1..2] of string[30]         = ('�������� �����!', '��������� ��������!');
const   V2_TYPE_CAPTION                 : array [1..2] of string[50]         = ('³��� ����������� �������� ���� ������', '���� �������������� ����������� ����� ������');
const   V2_TYPE_NAME_TYPE               : array [1..2] of string[30]         = ('����� ���� �������', '�������� ���� �������');
const   V2_TYPE_DELETE                  : array [1..2] of string[48]         = ('�� ����� ������ �������� ��� ������ ', '�� ������������� ������� ������� ��� ������� ');
const   V2_TYPE_NAME_CAPTION            : array [1..2] of string[30]         = ('������� ��� ������', '���������� ����� ������');

const   V2_TYPE_NAME_TAKE               : array [1..2] of string[30]         = ('������� ��� �������', '�������� ��� �������');
const   V2_TYPE_NAME_NOT_TAKE           : array [1..2] of string[30]         = ('�� �� ������� ��� �������', '�� �� �������� ��� �������');
const   V2_TYPE_NAME                    : array [1..2] of string[30]         = ('��� �������', '��� �������');
const   V2_VEDOMOST_DOGOVOR             : array [1..2] of string[30]         = ('������� �������', '�������� �������');
const   V2_VEDOMOST_CAP_PEOPLE_LIST     : array [1..2] of string[40]         = ('������ ����� � �������', '������ �������� ���������');
const   V2_VEDOMOST_CAP_DOGOVOR_LIST    : array [1..2] of string[40]         = ('������ ������ �� ������', '������ ������ �� ������');
const   V2_VEDOMOST_ZAYAVKA             : array [1..2] of string[20]         = ('���������� ������', '������������ ������');
const   V2_VEDOMOST_DEL_ZAYAVKA         : array [1..2] of string[25]         = ('������������ ������', '��c����������� ������');
const   V2_VEDOMOST_ZAYAVKA_            : array [1..2] of string[40]         = ('���� ���������� ������ �� �������', '����� ������������ ������ �� �������');

const   V2_VEDOMOST_DOG_REGNU           : array [1..2] of string[30]         = ('�����.����� ������', '�������.����� ������');
const   V2_VEDOMOST_DOG_BANK            : array [1..2] of string[25]         = ('������ �� �������', '������ �� �������');
const   V2_VEDOMOST_EXISTS_BANK         : array [1..2] of string[20]         = ('�������� ������', '������� ������');
const   V2_VEDOMOST_PANEL_GROUP         : array [1..2] of string[20]         = ('������ ����������', '������ �����������');

const   V2_VEDOMOST_S_ZAYAVKI           : array [1..2] of string[20]         = ('���� ������', '����� ������');
const   V2_VEDOMOST_S_OPLATI            : array [1..2] of string[20]         = ('���� ������', '����� ������');
const   V2_VEDOMOST_COMMENT             : array [1..2] of string[15]         = ('��������: ', '�����������: ');

const   V2_VEDOMOST_ZAYAVKA_D           : array [1..2] of string[20]         = ('������ ����������!', '������ ������������!');
const   V2_VEDOMOST_DEL_ZAYAVKA_        : array [1..2] of string[25]         = ('������ ������������!', '������ ��������������!!');
const   V2_VEDOMOST_SHOW_PEOPLE         : array [1..2] of string[50]         = ('³��� ��������� �����, �� ����� �� ������', '���� ��������� �����, ������� ����� � ������');

const   V2_VEDOMOST_KOD_PKV             : array [1..2] of string[20]         = ('��������', '���������');
const   V2_VEDOMOST_TYPE_FIN            : array [1..2] of string[20]         = ('��� ������-�', '��� ������-�');

const   V2_VEDOMOST_FILTER_PEOPLE       : array [1..2] of string[30]         = ('Գ��������� �� �������', '����������� �� ��������');

implementation

end.
