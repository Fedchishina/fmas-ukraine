{               "���� �������-������������ ���������, ��, ��� � ���"           }
{                                                                              }
{               (c) ������� �.�. 2004-2007                                     }
{                                                                              }
unit uResources;

interface

resourcestring

 MAT_ACTION_ADD_CONST          ='������';
 MAT_ACTION_DELETE_CONST       ='��������';
 MAT_ACTION_UPDATE_CONST       ='������';
 MAT_ACTION_REFRESH_CONST      ='��������';
 MAT_ACTION_CLOSE_CONST        ='�������';
 MAT_ACTION_PRINT_CONST        ='����';
 MAT_ACTION_PRINT_REP_CONST    ='���� ����';
 MAT_ACTION_HELP_CONST         ='��������';
 MAT_ACTION_CHOOSE_CONST       ='�������';
 MAT_ACTION_FILTER_CONST       ='Գ����';
 MAT_ACTION_ANALIZE_CONST      ='�����';
 MAT_ACTION_SET_CONST          ='����������';
 MAT_ACTION_FIND_CONST         ='������';
 MAT_ACTION_TEMPLATE_CONST     ='������';
 MAT_ACTION_VIEW_CONST         ='��������';
 MAT_ACTION_WORK_CONST         ='�������';
 MAT_ACTION_EXPORT_CONST       ='������� � Excel';

 MAT_BUTTON_OK_CONST           ='��������';
 MAT_BUTTON_CANCEL_CONST       ='³������';
 MAT_BUTTON_SAVE_CONST         ='��������';
 MAT_BUTTON_YES_CONST          ='���';
 MAT_BUTTON_NO_CONST           ='ͳ';
 MAT_BUTTON_CHOOSE_CONST       ='�������';
 MAT_BUTTON_EXIT_CONST         ='�����';
 MAT_BUTTON_MOVE_CONST         ='���������';
 MAT_BUTTON_ABORT_CONST        ='³������';
 MAT_BUTTON_RETRY_CONST        ='���������';
 MAT_BUTTON_IGNORE_CONST       ='����������';
 MAT_BUTTON_ALL_CONST          ='��';
 MAT_BUTTON_HELP_CONST         ='��������';
 MAT_BUTTON_NO_ALL_CONST       ='ͳ ��� ���';
 MAT_BUTTON_YES_ALL_CONST      ='�� ��� ���';
 MAT_BUTTON_CLEAR_CONST        ='��������';
 MAT_BUTTON_SHOW_CONST         ='��������';
 MAT_BUTTON_EXPORT_CONST       ='������������';

 MAT_SYSTEM_SHORT_NAME         = '���� ���';
 MAT_SYSTEM_FULL_NAME          = '���� �������-����������� ���������';

 MAT_STR_MODE_ADD              ='���������';
 MAT_STR_MODE_DEL              ='���������';
 MAT_STR_MODE_EDIT             ='�����������';

 MAT_SYS_PREFIX                = '���� ��� :: ';

 MAT_SPLASH_INIT               = '����������� ��������';
 MAT_SPLASH_CONNECT            = '�''������� � ����� �����';
 MAT_SPLASH_LOAD_BPL           = '������������� �����';
 MAT_SPLASH_TITLE              = '���������� ������';
 MAT_WAIT_MESSAGE              = '�������!';
 MAT_WAIT_WORKED               = '���������� ������� ������';

 MAT_STR_VERSION               = '�����';
 MAT_STR_EXIT_QUEST            = '��������� ������ � ��������� ?';
 MAT_STR_LOAD_BPL_ERROR        = '������� ��� ����� � ��������� ';
 MAT_STR_CONNECT_ERROR         = '��������� �''�������� � ����� �����!';
 MAT_STR_NO_RECORD             = '���� ������!';
 MAT_STR_ASK_DELETE            = '�� ����� ������ �������� ��� �����?';
 MAT_STR_ASK_DOC_DELETE        = '�� ����� ������ �������� ��� ��������';
 MAT_STR_ASK_UNWORK            = '�� ����� ������ ������� ������������ � �����?';
 MAT_STR_ASK_CORRECT_OST       = '�� ����� ������ ����������� ������ �������?';
 MAT_STR_ERROR_DELETE          = '�� ������� �������� �����!';
 MAT_STR_NO_DELETE             = '�� ����� �������� ��� �����!';
 MAT_STR_NO_EDIT               = '�� ����� ���������� ��� �����!';
 MAT_STR_FIND_ERROR            = '�� ����� ���� ��� ������!';
 MAT_STR_NOT_FIND              = '�� �������� � ������ ������!';
 MAT_STR_NEED_TEXT             = '��������� ������ ����� ��� ������!';
 MAT_STR_SAVE_ERROR            = '��� ��������� ����� ������� �������: ';
 MAT_STR_NEXT_PERIOD           = '��������� ������� ��';
 MAT_STR_ERR_ACC_MANAGER       = '�������� ������� � ������ �������';
 MAT_STR_PERIOD                = '�����';
 MAT_STR_USER                  = '����������';
 MAT_STR_DB                    = '���� �����';
 MAT_STR_SERVER                = '������';
 MAT_STR_WARNING               = '�����!';
 MAT_STR_ERROR                 = '�������!';
 MAT_STR_SYS_DOC_NO_EDIT       = '�� ����� �������� ������� ���������!';
 MAT_STR_SYS_DOC_NO_DEL        = '�� ����� �������� ������� ���������!';
 MAT_STR_SKLAD_CONST           = '���.';
 MAT_STR_NEED_PEOPLE           = '��������� ������� ������� �����!';
 MAT_STR_NEED_SPODR            = '��������� ������� �������!';
 MAT_STR_NOTHING_SELECT        = 'ͳ���� �� �������!';
 MAT_STR_ERR_ACCESS_DEL        = '����������� ���� ��� ���������!';
 MAT_STR_ERR_ACCESS_EDIT       = '����������� ���� ��� �����������!';
 MAT_STR_CANNOT_EDIT_WORK_DOC  = '³������������ �������� ������ �� �����';
 MAT_STR_ERR_DEL_DOC           = '��� �������� ��������� ������� �������:';
 MAT_STR_CANNOT_KART_EDIT_DOC  = '�������� �� ��''���� � ����������. ����������� ���������!';
 MAT_STR_CANNOT_KART_DEL_DOC   = '�������� �� ��''���� � ����������. ��������� ���������!';
 MAT_STR_CORRECT_OST_CUR       = '����������� ������ �������';
 MAT_STR_MOVE_OST              = '��������� �������';

 MAT_STR_MO_LABEL_FIO          = 'Գ����� �����';
 MAT_STR_MO_LABEL_SPODR        = 'ϳ������';
 MAT_STR_MO_LABEL_KAT          = '��������';
 MAT_STR_MO_LABEL_HISTORY      = '�������� � �����';
 MAT_STR_MO_ITEMS_KAT1         = '����������-����������� �����';
 MAT_STR_MO_ITEMS_KAT2         = '�������';

 MAT_STR_MONTH01               = '�����';
 MAT_STR_MONTH02               = '�����';
 MAT_STR_MONTH03               = '��������';
 MAT_STR_MONTH04               = '������';
 MAT_STR_MONTH05               = '�������';
 MAT_STR_MONTH06               = '�������';
 MAT_STR_MONTH07               = '������';
 MAT_STR_MONTH08               = '�������';
 MAT_STR_MONTH09               = '��������';
 MAT_STR_MONTH10               = '�������';
 MAT_STR_MONTH11               = '��������';
 MAT_STR_MONTH12               = '�������';

 MAT_FORMCAP_EXIT              = '�����';
 MAT_FORMCAP_SP_NOMN           = '�����������';
 MAT_FORMCAP_LOGIN             = '������������� �����������';
 MAT_FORMCAP_SP_TIPDOC         = '���� ���������';
 MAT_FORMCAP_DOCWORK           = '������ � �����������';
 MAT_FORMCAP_OSTWORK           = '������ � ����������� ��������� ���';
 MAT_FORMCAP_SP_MO             = '����������-���������� �����';
 MAT_FORMCAP_SP_MATSCH         = '������� ����������� ������';
 MAT_FORMCAP_SETUP             = '������������ �������';
 MAT_FORMCAP_PERIOD            = '������� �������';
 MAT_FORMCAP_TOOLS             = '�������� �������';
 MAT_FORMCAP_WORK_OSTB         = '³����������� ������� �������';

 MAT_LOGIN_STR_NAME            = '����������';
 MAT_LOGIN_STR_PWD             = '������';

 MAT_SP_MO_FORM_FIND_NAME      = '�����';
 MAT_SP_MO_FORM_FIND_GROUP     = '���� ��� ������';
 MAT_SP_MO_FORM_FIND_TEXT      = '����� ��� ������:';
 MAT_SP_MO_FORM_FIND_NEXT      = '������ ���';

 MAT_SETUP_TS_COMMON           = '�������';
 MAT_SETUP_TS_PRINT_CAPTION    = '���������';

 MAT_SETUP_GROUP_USER          = ' ���������� ';
 MAT_SETUP_GROUP_PERIOD        = ' ������ ����� ';
 MAT_SETUP_GROUP_PRINT         = ' ���� ';
 MAT_SETUP_GROUP_HISTORY       = ' ��������� ';
 MAT_SETUP_GROUP_INTERFACE     = ' ��������� ';
 MAT_SETUP_GROUP_UPPER_CASE    = ' ������ ';
 MAT_SETUP_GROUP_DOC_WORK      = ' ������ � ����������� ';
 MAT_SETUP_GROUP_DOC_NUM       = ' ��������� ��������� ';

 MAT_SETUP_LABEL_SYS_LANG      = '���� ����������';
 MAT_SETUP_LABEL_USER_PARAMS   = '�������� ������������ �����������';
 MAT_SETUP_LABEL_STARTUP       = '³�������� ���� �����';
 MAT_SETUP_LABEL_PRINT_LANG    = '���� �����';
 MAT_SETUP_LABEL_ON_PRINTER    = '��������� �� �������';
 MAT_SETUP_LABEL_EDIT_TEMPL    = '����������� �������';
 MAT_SETUP_LABEL_SAVE_HIST     = '��������� ���';
 MAT_SETUP_LABEL_SAVE_USER     = '�������� �����������';
 MAT_SETUP_LABEL_POS_WIND      = '����������� ��������� ����';
 MAT_SETUP_LABEL_CLOSE_ESC     = '��������� ���� ������� Esc';
 MAT_SETUP_LABEL_SAVE_GROUP    = '�������� ������ � ���������';
 MAT_SETUP_LABEL_UPPER_KOD     = '��������� �� ��������� ������� ����';
 MAT_SETUP_LABEL_UPPER_SHORT   = '��������� �� ��������� ������� ����� �����';
 MAT_SETUP_LABEL_UPPER_NAME    = '��������� �� ��������� ������� �����';
 MAT_SETUP_LABEL_ALLOW_EDIT    = '��������� ����������� "�����" ���������';
 MAT_SETUP_LABEL_DATE_DOC      = '���� ��������� ��� ��������';
 MAT_SETUP_LABEL_ALLOW_DUP_NUM = '��������� ������� ��������� � ����� ����';
 MAT_SETUP_LABEL_UPPER_NUM     = '��������� �� ��������� ������� ����� � ������� ���������';
 MAT_SETUP_LABEL_AUTO_NUM      = '�������������� ������';

 MAT_SETUP_SYS_LANG_ITEMS01    = '��������';
 MAT_SETUP_SYS_LANG_ITEMS02    = '���������';
 MAT_SETUP_PRINT_LANG_ITEMS01  = '��������';
 MAT_SETUP_PRINT_LANG_ITEMS02  = '���������';
 MAT_SETUP_SAVE_HIST_ITEMS01   = '�����';
 MAT_SETUP_SAVE_HIST_ITEMS02   = '��������';
 MAT_SETUP_SAVE_USER_ITEMS01   = '�������';
 MAT_SETUP_SAVE_USER_ITEMS02   = '����������';
 MAT_SETUP_DATE_DOC_ITEMS01    = '������� ����';
 MAT_SETUP_DATE_DOC_ITEMS02    = '25 ����� ��������� ������';
 MAT_SETUP_DATE_DOC_ITEMS03    = '������ ���� ��������� �����';
 MAT_SETUP_DATE_DOC_ITEMS04    = '������� ���� ��������� �����';
 MAT_SETUP_DATE_DOC_ITEMS05    = '25 ����� ��������� ������� ������';
 MAT_SETUP_DATE_DOC_ITEMS06    = '������ ���� ������� ������';
 MAT_SETUP_DATE_DOC_ITEMS07    = '������� ���� ������� ������';
 MAT_SETUP_DATE_DOC_ITEMS08    = '������� ���� � ����������� ������';

 MAT_OPER_LABEL_NAME           = '����� ��������';
 MAT_OPER_LABEL_OBJECT         = '����� ��������';
 MAT_OPER_LABEL_DOC            = '��������';
 MAT_OPER_LABEL_IN             = '����';
 MAT_OPER_LABEL_OUT            = '³� ����';
 MAT_OPER_LABEL_USE_DOG        = '��������������� "��������"';
 MAT_OPER_LABEL_BARTER         = '�������� ��������';

 MAT_STR_COL_SCH               = '�������';
 MAT_STR_COL_SUB_SCH           = '����������';
 MAT_STR_COL_NAME              = '�����';
 MAT_STR_COL_SHORT_NAME        = '����� ������';
 MAT_STR_COL_NOMN              = '��� ���';
 MAT_STR_COL_FIO               = '�.�.�.';
 MAT_STR_COL_MOL               = '���';
 MAT_STR_COL_DEP               = 'ϳ������';
 MAT_STR_COL_DB                = '�����';
 MAT_STR_COL_KR                = '������';
 MAT_STR_COL_NUM               = '�����';
 MAT_STR_COL_DATA              = '����';
 MAT_STR_COL_DOC               = '��������';
 MAT_STR_COL_OUT               = '����';
 MAT_STR_COL_IN                = '³� ����';
 MAT_STR_COL_SUMMA             = '����';
 MAT_STR_COL_KOL               = 'ʳ������';
 MAT_STR_COL_PERIOD            = '�����';
 MAT_STR_COL_NAME_TMC          = '����� ���';
 MAT_STR_COL_GROUP_TMC         = '����� ���';
 MAT_STR_COL_TMC               = '���';
 MAT_STR_COL_NAME_UNIT         = '��.�����';
 MAT_STR_COL_PRICE             = 'ֳ��';
 MAT_STR_COL_KOL_DOC           = 'ʳ���. �����.';
 MAT_STR_COL_KOL_MAT           = 'ʳ���. ����';
 MAT_STR_COL_TIPD              = '���';
 MAT_STR_COL_TIPD_GRP          = '����� ���������';
 MAT_STR_COL_TIPD_NAME         = '����� ���� ���������';
 MAT_STR_COL_TEMPLATE          = '���� �������';
 MAT_STR_COL_OST_BEG           = '������� �� �������';
 MAT_STR_COL_OST_END           = '������� �� �����';
 MAT_STR_COL_PRH               = '������';
 MAT_STR_COL_RSH               = '�������';
 MAT_STR_COL_SALDO_BEG         = '������ �� �������';
 MAT_STR_COL_SALDO_END         = '������ �� �����';
 MAT_STR_COL_PRH_KOL           = '������ (����.)';
 MAT_STR_COL_RSH_KOL           = '������� (����.)';
 MAT_STR_COL_NUM_DOC           = '� ���';
 MAT_STR_COL_DATE_DOC          = '���� ���.';
 MAT_STR_COL_KOL_BEG           = 'ʳ������ �� �������';
 MAT_STR_COL_KOL_END           = 'ʳ������ �� �����';
 MAT_STR_COL_SUM_BEG           = '���� �� �������';
 MAT_STR_COL_SUM_END           = '���� �� �����';
 MAT_STR_COL_PRH_SUM           = '������ (����)';
 MAT_STR_COL_RSH_SUM           = '������� (����)';
 MAT_STR_COL_ISTFIN            = '������';
 MAT_STR_COL_PERCENT           = '³������';
 MAT_STR_COL_BEG               = '�';
 MAT_STR_COL_END               = '��';
 MAT_STR_COL_COMMENT           = '�������';
 MAT_STR_COL_INV_NUMS          = '���. ������';
 MAT_STR_COL_INV_NUM           = '���. �����';
 MAT_STR_COL_ZAV_NUM           = '���������� �����';
 MAT_STR_COL_NOM_NUMS          = '�������. ������';
 MAT_STR_COL_NOM_NUM           = '�������. �����';

 MAT_STR_MAIN_MENU_SYS         ='�������';
 MAT_STR_MAIN_MENU_ACC         ='����';
 MAT_STR_MAIN_MENU_REP         ='����';
 MAT_STR_MAIN_MENU_SPR         ='��������';
 MAT_STR_MAIN_MENU_WIN         ='³���';
 MAT_STR_MAIN_MENU_HELP        ='?';

 MAT_STR_MAIN_MENU_SYS_OST     ='������ ������� ���';
 MAT_STR_MAIN_MENU_SYS_BEG_OST ='�������� ������� ���';
 MAT_STR_MAIN_MENU_SYS_NEXT    ='������� �������';
 MAT_STR_MAIN_MENU_SYS_SETUP   ='������������ �������';
 MAT_STR_MAIN_MENU_SYS_PERIOD  ='������ �����';
 MAT_STR_MAIN_MENU_SYS_EXIT    ='�����';
 MAT_STR_MAIN_MENU_SYS_TOOLS   ='�������� �������';

 MAT_STR_MAIN_MENU_ACC_DOC     ='������ � �����������';
 MAT_STR_MAIN_MENU_ACC_OSTC    ='������� ��� ������';
 MAT_STR_MAIN_MENU_ACC_OSTB    ='������� ��� ���������';
 MAT_STR_MAIN_MENU_ACC_ISTF    ='������� �� ���������';
 MAT_STR_MAIN_MENU_ACC_B_ISTF  ='������� �� ��������� �� ���������';
 MAT_STR_MAIN_MENU_ACC_OBM     ='������� �� ���';
 MAT_STR_MAIN_MENU_ACC_OBV     ='�������� ������� �� ���';
 MAT_STR_MAIN_MENU_ACC_OBOR    ='������� ��� �� �����';
 MAT_STR_MAIN_MENU_ACC_SCH_OB  ='�������� �������� �������';
 MAT_STR_MAIN_MENU_ACC_INV     ='���������� ���������';
 MAT_STR_MAIN_MENU_ACC_MNA     ='��������� ��� �� ���';
 MAT_STR_MAIN_MENU_ACC_OSCH    ='�������� ������� �� �������';
 MAT_STR_MAIN_MENU_ACC_RECOST  ='³������ ���������� ���';
 MAT_STR_MAIN_MENU_ACC_OBOR_IF ='������� �� ���������';

 MAT_STR_MAIN_MENU_REP_OOV     ='������� �������';
 MAT_STR_MAIN_MENU_REP_OMO     ='�������� �������';
 MAT_STR_MAIN_MENU_REP_MO      ='��������� ������';
 MAT_STR_MAIN_MENU_REP_JO      ='������-�����';
 MAT_STR_MAIN_MENU_REP_OBR     ='����������� �������';
 MAT_STR_MAIN_MENU_REP_MB      ='������� �� ������� �����';
 MAT_STR_MAIN_MENU_REP_OST     ='��� �� �������� ���';
 MAT_STR_MAIN_MENU_REP_INV     ='��������������� �����';
 MAT_STR_MAIN_MENU_REP_OPER    ='��� �� ���������';
 MAT_STR_MAIN_MENU_REP_DJO     ='������� �� ������-������';
 MAT_STR_MAIN_MENU_REP_DM      ='��� ������������ ������';
 MAT_STR_MAIN_MENU_REP_NOMOVE  ='��� �������� �������';
 MAT_STR_MAIN_MENU_REP_WHKART  ='��������� ����������� �����';
 MAT_STR_MAIN_MENU_REP_TMC     ='����������� ������� �� ���';

 MAT_STR_MAIN_MENU_SPR_NOM     ='�����������';
 MAT_STR_MAIN_MENU_SPR_UNITS   ='������� �����';
 MAT_STR_MAIN_MENU_SPR_MOL     ='³��������� �����';
 MAT_STR_MAIN_MENU_SPR_CUST    ='�����������';
 MAT_STR_MAIN_MENU_SPR_DEP     ='ϳ�������';
 MAT_STR_MAIN_MENU_SPR_SCH     ='���� �������';
 MAT_STR_MAIN_MENU_SPR_DOG     ='��������';
 MAT_STR_MAIN_MENU_SPR_TIPD    ='���� ���������';
 MAT_STR_MAIN_MENU_SPR_OPER    ='������ ��������';
 MAT_STR_MAIN_MENU_SPR_AMOR    ='����� �����������';

 MAT_STR_MAIN_MENU_WIN_CASC    ='��������';
 MAT_STR_MAIN_MENU_WIN_HORZ    ='�������������';
 MAT_STR_MAIN_MENU_WIN_VERT    ='�����������';
 MAT_STR_MAIN_MENU_WIN_SORT    ='������������';

 MAT_STR_MAIN_MENU_HELP_ABOUT  ='��� ��������';
 MAT_STR_MAIN_MENU_HELP_HELP   ='��������';
 MAT_STR_MAIN_MENU_HELP_USERS  ='�����������';
 MAT_STR_MAIN_MENU_HELP_ERRORS ='�������';

 MAT_STR_TOOLS_01_SCH_SALDO    ='������ ����������� �������';
 MAT_STR_TOOLS_02_SCH_MANAGER  ='��������� ���������';

 MAT_DOC_STR_POSMODE            = '���';
 MAT_DOC_STR_PROVMODE           = '��������';
 MAT_DOC_STR_PPMODE             = '�������� �� ���';
 MAT_DOC_STR_SPLASH_CAPTION     = '������ � �����������';
 MAT_DOC_STR_SPLASH_INIT1       = 'ϳ�������� ���� ���������';
 MAT_DOC_STR_SPLASH_INIT2       = '����������� ��������';
 MAT_DOC_STR_SPLASH_INIT3       = '³��������� ���������';
 MAT_DOC_STR_SPLASH_INIT4       = '����������� �������';
 MAT_DOC_STR_SPLASH_INIT5       = '³��������� �����';

 MAT_DOC_STR_PRINT_REP          = '����� ���������';
 MAT_DOC_STR_PRINT_PRH          = '��� ��� ������ ���';
 MAT_DOC_STR_PRINT_RSH          = '��� ��� ������� ���';
 MAT_DOC_STR_PRINT_MAT          = '��� �� ������� ���';
 MAT_DOC_STR_PRINT_DOC          = '����������� ���';
 MAT_DOC_STR_CLONE_DOC          = '���������';
 MAT_DOC_STR_ACTION_WORK        = '³���������� � �����';
 MAT_DOC_STR_ACTION_UNWORK      = '����� ������������ � �����';
 MAT_DOC_STR_ACTION_INV_WORK    = '³���������� � ������������ �����';
 MAT_DOC_STR_ACTION_INV_UNWORK  = '����� ������������ � ������������ �����';
 MAT_DOC_STR_ACTION_MNA_WORK    = '³���������� � ��������� ��� �� ���';
 MAT_DOC_STR_ACTION_MNA_UNWORK  = '����� ������������ � ��������� ��� �� ���';

 MAT_DOC_STR_WORK_DOC_CAP       = '³����������� ���������';
 MAT_DOC_STR_WORK_DOC_MSG1      = '��������� ���������� ��������';
 MAT_DOC_STR_WORK_DOC_MSG2      = 'ϳ�������� ��������';
 MAT_DOC_STR_WORK_DOC_MSG3      = '���������� ��������';
 MAT_DOC_STR_WORK_DOC_MSG4      = '���������� ���������';
 MAT_DOC_STR_WORK_DOC_MSG5      = '��������� �������� ������� ��������!';

{ ���������� ��� ����������� ��������� }
 MAT_INV_system_name                = 'I��������� ��������� :: ';

 MAT_INV_print_drag                 = '�i���i��� ��������i �������i���� �����i�';
 MAT_INV_oprihodov                  = '��������������';
 MAT_INV_vnutr                      = '�������� ����������';
 MAT_INV_VvodvExpl                  = '���� � ������������';
 MAT_INV_Spisanie                   = '��������';
 MAT_INV_Namoder                    = '������������ �� �����������';
 MAT_INV_smoder                     = '������ � �����������';
 MAT_INV_oper                       = '��������';
 MAT_INV_save                       = '��������';
 MAT_INV_Print                      = '����';
 MAT_INV_Find                       = 'Գ����';
 MAT_INV_Add                        = '������';
 MAT_INV_Close                      = '�����';
 MAT_INV_Refrash                    = '�������';
 MAT_INV_Cansel                     = '³������';
 MAT_INV_Change                     = '������';
 MAT_INV_Delete                     = '��������';
 MAT_INV_Work_with_inv_kart_capsh   = '������ � ������������� ��������';
 MAT_INV_Folders                    = '�����';
 MAT_INV_SCH                        = '�������';
 MAT_INV_MOL                        = '��O';
 MAT_INV_new_MOL                    = '����� ��O';
 MAT_INV_Name                       = '�����';
 MAT_INV_Balans_price               = '�����. �������';
 MAT_INV_Bal_price                  = '���. �������';
 MAT_INV_Ost_price                  = '�����. ����';
 MAT_INV_Iznos                      = '����';
 MAT_INV_Num_Grp                    = '����� �����';
 MAT_INV_Inv_Num                    = '���. �����';
 MAT_INV_full_inv                   = '������ I��. �����';
 MAT_INV_Vklad_Osnovnie             = '������';
 MAT_INV_Vklad_Amort                = '�����������';
 MAT_INV_Vklad_Dop                  = '��������';
 MAT_INV_Vklad_Dragmet              = '�����.�������';
 MAT_INV_Vklad_Sost_obekta          = '����� ��''����';
 MAT_INV_Tip_karti                  = '��� ������';
 MAT_INV_Num_kart                   = '����� ������';
 MAT_INV_Nach_price                 = '�����. ����';
 MAT_INV_Nach_Iznos                 = '�����. ����';
 MAT_INV_Date_ost                   = '���� �����. ����.';
 MAT_INV_Ost_Iznos                  = '���. ����';
 MAT_INV_Date_opr                   = '���� ��������.';
 MAT_INV_date_nach_expl             = '���� ���. �����.';
 MAT_INV_Date_Refrash               = '���� ���������';
 MAT_INV_Date_Exit                  = '���� ���������';
 MAT_INV_Primechanie                = '�������';
 MAT_INV_Zav_num                    = '���������� �����';
 MAT_INV_Pass_num                   = '����� ��������';
 MAT_INV_Model                      = '������';
 MAT_INV_Marka                      = '�����';
 MAT_INV_Date_vipuska               = '���� �������';
 MAT_INV_Reg_doc                    = '�������� �����.';
 MAT_INV_Date_reg_doc               = '���� ���������';
 MAT_INV_Nazv_full                  = '����� �����';
 MAT_INV_Nazv_Short                 = '����� ���������';
 MAT_INV_Kol_vo                     = 'ʳ������';
 MAT_INV_MonthYear                  = '����� �����.';
 MAT_INV_PerNach_Perc               = '����� ����������� %';
 MAT_INV_buh_db_sch                 = '��������� �������';
 MAT_INV_buh_kr_sch                 = '���������� �������';
 MAT_INV__am_grp                    = '����� �����������';
 MAT_INV__method_name               = '����� ����������';
 MAT_INV_minprice                   = '̳��. ����';
 MAT_INV_Percent                    = '³������';
 MAT_INV_GroupBoxNal                = '���������� ����';
 MAT_INV_GroupBoxBuh                = '�������������� ����';
 MAT_INV_na_check                   = '���������� ����';
 MAT_INV_na_buhg_check              = '�������������� ����';
 MAT_INV_look                       = '��������';
 MAT_INV_ved_main_menu              = '���������i��i �i������i';
 MAT_INV_looksrooved                = '�������� �i��������';
 MAT_INV_destroyved                 = '������������� �i��������';
 MAT_INV_print_ved                  = '���� �i��������';
 MAT_INV_create_ved                 = '���������� �i��������';
 MAT_INV_ved_create                 = '����������';
 MAT_INV_sel_in_main                = '�i�i�����';
 MAT_INV_Mitka                      = '���i���';
 MAT_INV_un_metka                   = '����� ���i���';
 MAT_INV_pometit_all                = '���i���� ��i';
 MAT_INV_unmetka_one                = '� ���i��';
 MAT_INV_unmetka_all                = '� ��i�';
 MAT_INV_checked_ost                = '���������� ����� � ��������';
 MAT_INV_Show_Ost                   = '³���������� �������';
 MAT_INV_nomn_num                   = '�������������� �����';
 MAT_INV_okrugl_doizn               = '��������� �� �����';

// Hnut_spr_ost_pr                 = '������� �� ���������� ��������� ��';
// Hnut_ved_nal_os                 = '��������� ������� �������� ������� �� ���������';

 MAT_INV_spr_ost_pr                 = '������� �� ���������� ��������� ��';
 MAT_INV_ved_nal_os                 = '��������� ������� �������� ������� �� ���������';

 MAT_INV_ved_come_os                = '��������� �������� �������, ��������';
 MAT_INV_ved_out_os                 = '��������� �������� �������, ����������';
 MAT_INV_inv_opis_os                = 'I�����������i���� ���� �������� �����i�';
 MAT_INV_inv_inv_grp                = '��������� ������� �� �� ���. �������';
 MAT_INV_inv_nomn_grp               = '��������� ������� �� �� �������. �������';
 MAT_INV_grp_checked                = '��������� ������� �����';


 {Showmessage}
 MAT_INV_Error_add_Papka            = '����� ������ ����, ���� ������ � �� ���� ����� ���������!';
 MAT_INV_Error_add_to_main_Papka    = '�� ����� �������! ���� � �� ���� ���� ������ ���� ���� �����!';
 MAT_INV_Error_add_Kart             = '����� �� ���������, ���� ������ � �� ������ ���������!';
 MAT_INV_Del_papka_not_Checked      = '�����, �� �����������,  �� �������!';
 MAT_INV_Error_Connect              = '������� �''�������!!!';
 MAT_INV_Delete_Papka               = '�������� �����';
 MAT_INV_Attention                  = '������������...';
 MAT_INV_mail                       = '�����������...';
 MAT_INV_not_Razrabotano            = '�� �������������!';
 MAT_INV_Dele_pole_not_insert       = '���� ��� ��������� �� ������!';
 MAT_INV_delete_pole                = '�������� ����';
 MAT_INV_mess_print                 = '���� ����� �� ������!';
 MAT_INV_Error_Add                  = '������� �������!';
 MAT_INV_Error_Change               = '������� �������!';
 MAT_INV_opov_oper                  = '������ �������� � ���������� ��� ��������!';
 MAT_INV_checked_error              = '����''������ ������� ���� ������� ���� � 2-� ���i�i�!';
 MAT_INV_Mess_ost                   = '�������� ����� ������ ��� �� ���';
 MAT_INV_Otricatelnoe               = '���� ����������� ����� �� ���� ���� ������ ����!';

 {Same constant}
 MAT_INV_const_PerNach_Perc         = '�������������';
 MAT_INV_const_Goda                 = '����';
 MAT_INV_const_Let                  = '����';
 MAT_INV_const_God                  = '��';
 MAT_INV_const_mesyaca              = '�����';
 MAT_INV_const_mesyacev             = '������';
 MAT_INV_const_mesyac               = '�����';
 MAT_INV_const_Pomesyachno          = '��������';
 MAT_INV_const_Pokvartalno          = '������������';
 MAT_INV_const_Ejegodno             = '������';
 MAT_INV_mol_new                    = '��� ���.';
 MAT_INV_mol_old                    = '��� ����.';
 MAT_INV_sch_new                    = '���.���.';
 MAT_INV_sch_old                    = '���.����.';
 MAT_INV_ost_price_old              = '���.�i�� ����';
 MAT_INV_ost_iznos_old              = '���.���� ����';

 {���������� ��������� ����� �� ���������� �����}

 MAT_INV_Add_Papka_Name_papki       = '��''� �����';
 MAT_INV_Add_Papka_Group_kod        = '��� �����';
 MAT_INV_Add_Papka_Caption_na_Add   = '������� �����';
 MAT_INV_Add_Papka_Caption_na_change= '���� �����';

 {ShowMessage}
 MAT_INV_Add_Papka_zap_all_pola     = '�������� �� ����!';
 MAT_INV_Error_add_double           = '����� ������ ��� ����������� ���������i�!';
 MAT_INV_Error_into_change          = '� �i�� ������� ���� �������� �������� �������������� �� �������� ����� �� ������������!';
 MAT_INV_Error_for_del_kart         = '���������� �� �i������i ������i�, ���� ������ �� ���� ���� ��������!';

 {���������� ��������� ����� �� ���������� �����}
 MAT_INV_Add_Kart_ID_Oper_Opr       = '����. �����.';
 MAT_INV_Add_Kart_IdOperExpl        = '����. ���. �����.';
 MAT_INV_Add_Kart_IdOperUpdate      = '����. ������.';
 MAT_INV_Add_Kart_IdOperOut         = '����. ���������.';
 MAT_INV_Add_Kart_IdCust            = '��. �������.';
 MAT_INV_Add_Kart_IdOst             = '��. ���';

 MAT_INV_Add_Kart_Caption_na_AddKar = '������ ������';
 MAT_INV_Add_Kart_Caption_na_change = '������ ������';
 {ShowMessage}
 MAT_INV_Kart_enter_beg_price       = '���� ��� ������� �����! �������� ����!';
 MAT_INV_Kart_enter_beg_iznos       = '���� ���. ���� �����! �������� ����!';
 MAT_INV_kart_Error                 = '�������� ����� ������ ���� ����� �� �������� ��������� �������!';

 {���������� ��������� ����� ���������� ������������}

 {Showmessage}
 MAT_INV_metall_not_all_Row         = '��������� ��������� �� ����!';
 MAT_INV_metall_Checked_metall      = '������ ����.�����';
 MAT_INV_metall_Add_kol             = '������ �������';
 MAT_INV_metall_Add_new_metall      = '��������� ����.������';
 MAT_INV_metall_Change_metall       = '���� ����.������';

 //����� ������
 MAT_INV_izn_caption                = '������� ���� �����';
 MAT_INV_izn_vibor                  = '������';
 MAT_INV_izn_period                 = '�����';
 MAT_INV_izn_God                    = 'г�';
 MAT_INV_izn_Month                  = '̳����';
 MAT_INV_izn_formula                = '�������';
 MAT_INV_izn_method                 = '�����';

 //���������� �����
 MAT_INV_norm_nor                   = '����� �����';
 MAT_INV_norm_tip                   = '��� �����';
 MAT_INV_norm_NaAdd                 = '������� ����� �����';
 MAT_INV_norm_NaIzm                 = '���� ����� �����';
 MAT_INV_norm_tipi                  = '��� ����������';
 MAT_INV_norm_buh_uch               = '�������������� ����';
 MAT_INV_norm_nal_uch               = '���������� ����';

 //����� ���������� ������� �������
 MAT_INV_obj_caption_Add            = '������� ������ ��''����';
 MAT_INV_obj_caption_Izm            = '���� ������ ��''����';
 MAT_INV_obj_koef                   = '����������';
 MAT_INV_obj_kol_vo                 = 'ʳ������';
 MAT_INV_obj_siyz                   = '�����';
 MAT_INV_obj_material               = '�������';
 MAT_INV_obj_sum                    = '����';
 // Short names
 MAT_INV_obj_koef_sh                = '����.';
 MAT_INV_obj_kol_sh                 = 'ʳ�.';
 MAT_INV_obj_siyz_sh                = '�����';
 MAT_INV_obj_material_sh            = '�������';

 //������ � ����������
 MAT_INV_oper_add                   = '������ � ����������';
 MAT_INV_oper_change                = '���� ��������';
 MAT_INV_oper_opih                  = '��������������';
 MAT_INV_oper_perem                 = '����������� ����������';
 MAT_INV_oper_expl                  = '����� � ������������';
 MAT_INV_oper_spis                  = '���������';
 MAT_INV_oper_Labl_oper             = '��������';
 MAT_INV_un_oper                    = '��������� ��������';
 MAT_INV_oper_num_doc               = '����� ���.';
 MAT_INV_oper_date_doc              = '���� ���.';
 MAT_INV_history                    = '������ ��������';
 MAT_INV_koef_pereoc                = '���������� ����������';
 MAT_INV_sum_osp_pr                 = '���� ������. ����';
 MAT_INV_sum_ost_izn                = '���� ������. �����';
 MAT_INV_sm                         = '������';
 MAT_INV_rz                         = '�����';
 MAT_INV_st                         = '������';
 MAT_INV_kekv                       = '����';


 //Showmessega
// Hnut_opov_ob_otmene_oper        = '�� ����� ������ ��������� �� ��������?';
 MAT_INV_opov_ob_otmene_oper        = '�� ����� ������ ��������� �� ��������?';
 MAT_INV_unoper                     = '�������� ���� ����� ���������!';
 MAT_INV_Error_oper_otmena          = '�� ����� ��������� �������� ��������!';
 MAT_INV_worked                     = '� ������������� ������!';
 MAT_INV_aleni                      = '��� �������� ������ �������� �������� �� ���� ���������!';

 //Add provodki
 MAT_INV_prov_caption               = '������� ��������';
 MAT_INV_ustan                      = '��������';
 MAT_INV_clear                      = '��������';
 MAT_INV_period_now                 = '�������� �����';
 MAT_INV_s                          = '�';
 MAT_INV_po                         = '��';
 MAT_INV_working                    = '�� ������������ ������';
 MAT_INV_prov_caption_change        = '���� i�������i�';
 MAT_INV_db_name                    = '�����';
 MAT_INV_kr_name                    = '������';

 //Messages from filter
 MAT_INV_find_error_sel             = '���������� �� �������� ����! ���� ���������� �� ���� ���� ��������!';
 MAT_INV_peremesh                   = '�����! ��� ���� ������� �� �� ������������ �������� ����������';
 MAT_INV_spisan                     = '�����! ��� ���� ������� �� �� ������������ �������� ���������';
 //Filter
 MAT_INV_all                        = '��';
 MAT_INV_expl                       = '����������';
 MAT_INV_out                        = '�������';
 MAT_INV_zap_nema                   = '';

 //Popup_print
 MAT_INV_popup_print_main           = '���������� ������';
 MAT_INV_priem_peredacha            = '���� ������� ��������';
 MAT_INV_inv_os                     = '������������ ������ �������� ������ (��-11)';
 MAT_INV_inv_spisanie               = '���� ��� ��������� �������� ������';
 MAT_INV_inv_kniga                  = '���������� �����';
 MAT_INV_expl_now                   = '������������';
 MAT_INV_do_not_expl                = '�� ������������';

 //messages for chacked form
 MAT_INV_Alarm                      = '������ ����� ������������  ��''����!';
 MAT_INV_Grp_name                   = '������������ �����';
 MAT_INV_id_grp                     = '��� �����';
 MAT_INV_name_fm                    = '������ ���� �����';
 // Hunte_Pereoc                    = '����������';
 MAT_INV_Pereoc                    = '����������';

 //lable for fmWaite
 // Hunte_loading                   = '�����! ��� ��� ������... �������...';
 MAT_INV_loading                   = '�����! ��� ��� ������... �������...';
 MAT_INV_vot_urodi                  = '�� �� ������ ���������� �� ������� ����!!!';
 MAT_INV_primitka                   = '����i���';
 MAT_INV_hoz_raz                    = '����.����������';
 MAT_INV_date_narah                 = '���� �����������';
 MAT_INV_select_tepy                = '����i�� ��� ���i��';
 MAT_INV_coeff_amort                = '����������';

 //Constants for amort form
 MAT_INV_amort_afte_save            = '�����! ���� ��������� ���������� �����!';
 MAT_INV_amort_after_save           = '�����! ���������� ����� ��� ���� ���������, ���� ��������� ������ ����������!';
 MAT_INV_amort_caption              = '����������� ���������i�';

 //For Printing Form
 MAT_INV_print_kol                  = 'ʳ������ ����';
 // Hnut_print_caption              = '����� �����';
 MAT_INV_print_caption              = '����� �����';
 MAT_INV_print_on_printer           = '��������� �� �������';
 MAT_INV_print_sel_printer          = '������� �������';
 MAT_INV_print_sel_Shablon          = '������ �����';
 MAT_INV_printing_finish_card       = '���� �������� ������';

 //Mesyaci
 MAT_INV_sichen                     = '�����';
 MAT_INV_lyutiy                     = '�����';
 MAT_INV_berezen                    = '��������';
 MAT_INV_kviten                     = '������';
 MAT_INV_traven                     = '�������';
 MAT_INV_lipen                      = '������';
 MAT_INV_cherven                    = '�������';
 MAT_INV_serpen                     = '�������';
 MAT_INV_veresen                    = '��������';
 MAT_INV_jovten                     = '�������';
 MAT_INV_listopad                   = '��������';
 MAT_INV_gruden                     = '�������';

 //**** Messages
 MAT_INV_Error_in_Shablon           = '������ ����� �� ������!';
 MAT_INV_uncreate_amort_ved         = '������ ����������� ����� ���� ��������� ';
 MAT_INV_Quetion                    = '�������� �������������?';
 MAT_INV_She_E_Z_oper               = '�����! ���������� ������, � ���� �������� ������ ����� �� ��������! �������� ����� �������� �������� �������� �� �����!';
 MAT_INV_Finish_otkat               = '������� ���� ���������!';
 MAT_INV_You_must_sel_line          = '������ ���� ����������� �����!';
 MAT_INV_Operaciya_ne_diysna        = '�� �� � ����i �������� �� ������i�, ���� �� ���� �i���� ���� ��� ����������� ���i��! ��� ��������������� ���i�� ������i� ����� �������� � ������i "���i� ���"';
 MAT_INV_date_create_pereoc         = '���i�� ���������� ������i�';
 MAT_INV_dep_name                   = '�i�����i�';
 MAT_INV_DT_oper                    = '���� �� ��� ���������� ������i�';

implementation

end.




