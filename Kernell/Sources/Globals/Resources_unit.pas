unit Resources_unit;

interface

resourcestring
  {���������� ��������� �������}

  PUB_ACTION_ADD_CONST          ='��������';
  PUB_ACTION_DELETE_CONST       ='�������';
  PUB_ACTION_UPDATE_CONST       ='��������';
  PUB_ACTION_REFRESH_CONST      ='��������';
  PUB_ACTION_CLOSE_CONST        ='�������';
  PUB_ACTION_PRINT_CONST        ='������';
  PUB_ACTION_HELP_CONST         ='������';
  PUB_ACTION_CHOOSE_CONST       ='�������';
  PUB_ACTION_FILTER_CONST       ='������';
  PUB_ACTION_ANALIZE_CONST      ='������';
  PUB_ACTION_SET_CONST          ='����������';

  PUB_BUTTON_OK_CONST           ='�������';
  PUB_BUTTON_CANCEL_CONST       ='��������';
  PUB_BUTTON_YES_CONST          ='��';
  PUB_BUTTON_NO_CONST           ='���';
  PUB_BUTTON_CHOOSE_CONST       ='�������';

  PUB_MESSAGE_WARNING           ='��������!';
  PUB_MESSAGE_ERROR             ='������!';
  PUB_MESSAGE_HINT              ='��������������!';
  PUB_UNDER_CONSTRUCTION_CONST  ='�� ������ ����������';

  PUB_STATE_ON_DATE_CONST       ='��������� �� ';
  PUB_KEKV_SPR                  ='���������� ������';
  PUB_GROUP_CONST               ='������ ��� ����������� ����������';

  PUB_COLTITL_PROP_TITLE        ='�������� ��������';
  PUB_COLTITL_DATE_BEG          ='���� ������';
  PUB_COLTITL_DATE_END          ='���� ���������';
  PUB_COLTITL_GROUP             ='������';
  PUB_COLTITL_SCH_TITLE         ='����';
  PUB_COLTITL_ID_PROP           ='��.��������.';
  PUB_COLTITL_ID_SCH            ='��.�����.';
  PUB_COLTITL_SCH_END           ='������ ���������������� �����';
  PUB_COLTITL_SCH_BEG           ='����� ���������������� �����.';

  PUB_COLTITL_PR_NUM            ='�����';
  PUB_COLTITL_PR_TIT            ='��������';
  PUB_COLTITL_PR_VAL            ='��������';
  PUB_COLTITL_PR_GRP            ='������';



  {��������� �������������� � ����������� ������������ }
  CUSTOMER_INITYPEMENCONST      ='������ � ����������� ���������� ���';
  CUSTOMER_MBUHG_CONST          ='������� ���������';
  CUSTOMER_MUST_BANK            ='���������� ������ ����';
  CUSTOMER_MUST_TYPE_ACC        ='���������� ������ ��� �����';
  CUSTOMER_MUST_ACCOUNT         ='���������� ������ ����';
  CUSTOMER_MOD_CONST            ='��������';
  CUSTOMER_ADD_CONST            ='��������';
  CUSTOMER_ADD_CHILD_CONST      ='�������� ��������';
  CUSTOMER_NEW_ACCOUNT_CONST    ='�������� ����� ����';
  CUSTOMER_ACC_TYPE_CONST       ='��� �����';
  CUSTOMER_BANK_CONST           ='����';
  CUSTOMER_FIND_TEXT            ='�����';
  CUSTOMER_FIND_UNDER           ='������ ��';
  CUSTOMER_CHILD_DETECTION_ERROR='�� ������ ������� ��� �������� �����';
  CUSTOMER_DELETE_QUESTION      ='�� ������ ������� ��������� ������';
  CUSTOMER_AGENTS               ='������ � ����������� �� �����������';
  CUSTOMER_CONTACTS             ='������ � ����������� �� �����������';
  CUSTOMER_ACCOUNTS             ='������ � ����������� �� ������';
  CUSTOMER_UPDATE_PEOPLE_CONST  ='�������� ������ �� ����������� ����';
  CUSTOMER_NEW_PEOPLE_CONST     ='����� ���������� ����';
  CUSTOMER_LabelPRIM_CONST      ='����������';
  CUSTOMER_LabelLAST_NAME_CONST ='��������';
  CUSTOMER_LabelFIRSTNAME_CONST ='�������';
  CUSTOMER_labelNAME_CONST      ='���';
  CUSTOMER_LabelPOST_CONST      ='���������';
  CUSTOMER_ADD_CAPTION_CONST    ='���������� �� ������ �����������';
  CUSTOMER_UPD_CAPTION_CONST    ='�������� ���������� �� �����������';
  CUSTOMER_TITLE                ='������������';
  CUSTOMER_FIND_TITLE           ='�� ������������';
  CUSTOMER_SHORTTITLE           ='����������';
  CUSTOMER_FISOS_FLAG           ='���������� ����';
  CUSTOMER_CLASS_CONST          ='�����';
  CUSTOMER_BRANCH_CONST         ='�������';
  CUSTOMER_ADRESS_CONST         ='�����';
  CUSTOMER_NALOG_CONST          ='��������� �������������';
  CUSTOMER_PlatNdsCheck_CONST   ='���������� ���';
  CUSTOMER_LabelNDSNOMER_CONST  ='�����';
  CUSTOMER_LabelNDS_DATE_CONST  ='����';
  CUSTOMER_LabelEDRPOU_CONST    ='����';
  CUSTOMER_ACC_CONST            ='����';
  CUSTOMER_LabelNALOGNOMER_CONST='��������� �����';
  CUSTOMER_NALOGSVNOMER         ='����� ���������� �������������';
  CUSTOMER_OK_BUT_CONST         ='�������';
  CUSTOMER_BOSS_CONST           ='������������';
  CUSTOMER_CANCEL_BUT_CONST     ='��������';
  CUSTOMER_MESSAGE_WARNING      ='��������!';
  CUSTOMER_MESSAGE_QUESTION     ='������!';
  CUSTOMER_MESSAGE_ERROR        ='������!';
  CUSTOMER_POST_ERROR           ='���������� ������ ���������';
  CUSTOMER_NAME_ERROR           ='���������� ������ ���';
  CUSTOMER_LASTNAME_ERROR       ='���������� ������ �������';
  CUSTOMER_FIRSTNAME_ERROR      ='���������� ������ ��������';
  CUSTOMER_TITLE_ERROR          ='���������� ������ ������������ �����������';
  CUSTOMER_EDRPOU_ERROR         ='���������� ������ ��� ���� �����������';

  {��������� �������������� � ������������ ��������������}
  BU_ErrorCaption               ='�������� ������!';
  BU_WarningCaption             ='��������!';
  BU_PingError                  ='������ �� �������� �� TCP/IP �������. �������� �� �������� ��� ��������� � ����. ���������� � ���������� ��������������.';
  BU_OpenConfigError            ='������ ��� ������� � ����� �������������. ���������� � ���������� ��������������.';
  BU_OpenDBError                ='������ ��� ����������� � ��. ���������� � ���������� ��������������.';
  BU_CountLevelError            ='������� ������� ��������� �������� ��������.';
  BU_TitleError                 ='��� ������������';
  BU_TypeError                  ='�� ����� ���';
  BU_KodError                   ='�� ����� ���';
  BU_DeleteConfirmation         ='�� ������������� ������ ������� ��� ������?';
  BU_HasChildError              ='������ ������ ������� �� ����� ��������';
  BU_DistanceError              ='��������� ���������� ��������';
  BU_PropError                  ='� ���� ������� � �������� ������ ������������ ��� ��������';
  BU_OperError                  ='� ���� ������� � �������� ������ ������������ ��� ��������';
  BU_PropDelError               ='������ ������� �������� ��� �� ���� �����������';
  BU_DateError                  ='������ ��� ������ � ���������';
  BU_MinDateError               ='���� ������ ������� �� ����� ���� ������ ���� �������� ������� �����';
  BU_StError                    ='������ �� ����� ��������� ���� �� ����';
  BU_ChooseStError              ='���������� ������� ������';
  BU_ChooseRzError              ='���������� ������� ������';
  BU_Yes_const                  ='��';
  BU_No_const                   ='���';
  BU_OperPropError              ='������ �� ��� �������� ��������';
  BU_HieracChooseError          ='��� ������ ������ �������';
  BU_Month_01                   ='������  ';
  BU_Month_02                   ='�������  ';
  BU_Month_03                   ='����     ';
  BU_Month_04                   ='������   ';
  BU_Month_05                   ='���      ';
  BU_Month_06                   ='����     ';
  BU_Month_07                   ='����     ';
  BU_Month_08                   ='������   ';
  BU_Month_09                   ='�������� ';
  BU_Month_10                   ='�������  ';
  BU_Month_11                   ='������   ';
  BU_Month_12                   ='�������  ';

  BU_CHECK_OPER_ID_EQUALITY_ERROR='���� �� ����� ������������������� ��� � �����';
  BU_LoadError                  ='������ �������� ����������';
  BU_KEKV_TITLE                 ='����������� ������������� ������';
  BU_CROSSERROR                 ='������� ���������������� ������ �� ������������';
  BU_OPER_TITLE                 ='������ ��������������� ������';
  BU_CR_TITLE                   ='�����, ������� ����������������� � �������';
  BU_DB_TITLE                   ='�����, ������� ����������������� � ������';
  BU_SCH_FOR_COR                ='���� ��� ���������������';
  IS_KR_CR_PROV                 ='������� �� �������� � ������� ��������';
  IS_DB_CR_PROV                 ='������� �� �������� � ������ ��������';
  IS_KR_CR_DOC                  ='������� �� �������� � ������� ��������';
  IS_DB_CR_DOC                  ='������� �� �������� � ������ ��������';
  BU_KEKV_INFO_WORK             ='������ � ����������� �� �����';
  BU_KEKV_CODE                  ='��� �����';
  BU_KEKV_TITLE_EDIT            ='������������ �����';
  BU_OPER_TITLE_EDIT            ='������ � ����������� �� ���������';
  BU_OPER_CRINFO_PROP           ='�������� �������� � �������';
  BU_OPER_DBINFO_PROP           ='�������� �������� � ������';
  BU_SMSpr_title                ='���������� ���� ';
  BU_DelPeriod                  ='������� ������ ���������������� �����';
  BU_EnableError                ='����� �� ������������';
  BU_HASCHILDSTRUERROR          ='�� �� ������ �������� ��������� �����, ��� ��� ��� ��� �������������';
  BU_DELHASCHILDSTRUERROR       ='�� �� ������ �������� ������ ���������������� �����, ��� ��� ��� ��� ������������� ';
  BU_SmError                    ='���������� ������� �����';
  BU_RzError                    ='���������� ������� ������';
  BU_StCHooseError              ='���������� ������� ������';
  BU_PROP_BY_SCH                ='�������� �����';
  BU_PROP_BY_OPER               ='�������� ��������';
  BU_KREDIT                     ='������';
  BU_DEBET                      ='�����';
  BU_PROP_BY_RZST               ='�������� ��������/������';
  BU_PROP_BY_KEKV               ='�������� ������';
  BU_PROP_BY_SMETA              ='�������� ����';

     {��������� ������������ � ������� �������}
  AUTOKOD_MAIN_FORM                         ='���������� ��������� (�����������)';
  PUB_BUTTON_PRINT                          ='������';
  PUB_BUTTON_FIND                           ='�����';
  PUB_BUTTON_UP                             ='�����';
  AUTOKOD_NUMBER                            ='���';
  AUTOKOD_NAME                              ='��������';
  AUTOKOD_MAIN_FORM_NUMBER                  ='��� �������� ������/������';
  AUTOKOD_MESSAGE_DEL                       ='�� ������������ ������� �������';
  AUTOKOD_MESSAGE_OK                        ='�������������';
  AUTOKOD_MESSAGE_ERROR                     ='����� ������ ��� ����������';
  AUTOKOD_ADD_VETKA_FORM                    ='�������� ����� ������';
  AUTOKOD_ADD_TOVAR_FORM                    ='�������� ����� �����';
  AUTOKOD_BUTTON_ADD_VETKA                  ='��������';
  AUTOKOD_BUTTON_ADD_TOVAR                  ='�������� �����';
  AUTOKOD_BUTTON_CHANGE_VETKA               ='��������';
  AUTOKOD_BUTTON_CHANGE_TOVAR               ='�������� �����';
  AUTOKOD_BUTTON_DEL_VETKA                  ='�������';
  AUTOKOD_BUTTON_DEL_TOVAR                  ='������� �����';
  AUTOKOD_CHANGE_FORM                       ='��������';
  AUTOKOD_FORM_FIND                         ='�����';
  AUTOKOD_FORM_FIND_NAME                    ='����� �� ��������';
  AUTOKOD_FORM_FIND_KOD                     ='����� �� ����';
  AUTOKOD_FIND                              ='�����';
  AUTOKOD_FIND_HINT_FIND                    ='����� ����������� ����';
  AUTOKOD_FIND_HINT_EXIT                    ='�������� ���� ������';
  AUTOKOD_FIND_LABLE_NAME                   ='������� ��������';
  AUTOKOD_FIND_LABLE_KOD                    ='������� ���';
  AUTOKOD_FIND_MESSAGE_ERROR                ='�� �� ����� ��������';
  AUTOKOD_FIND_MESSAGE_ERROR_KOD            ='�� �� ����� ���';
  AUTOKOD_FIND_MESSAGE_FIND_ERROR           ='������ �������� �� ����������';
  AUTOKOD_FORM_ERROR_DEL                    ='��� �� ������� �������?';
  AUTOKOD_DEL_VETKA_ERROR                   ='��� ���� ������� ���������� ������';
  AUTOKOD_ADD_VETKA_ADD                     ='������� �������� ������ (�� ������ 50 ��������)';
  AUTOKOD_ADD_VETKA_LENGHT_KOD              ='������� �������� ��������';
  AUTOKOD_ADD_VETKA_LENGHT_KOD_1            ='������� ����';
  AUTOKOD_ADD_VETKA_SCH                     ='�������� ����';
  AUTOKOD_ADD_VETKA_KOD                     ='������� ���';
  AUTOKOD_ADD_VETKA_ERROR_MESS              ='�� �� ��� ���������!';
  AUTOKOD_ADD_VETKA_ADD_MESS                ='�� ������� �������� ����� ������?';
  AUTOKOD_ADD_TOVAR_ADD                     ='������� �������� ������ (�� ������ 50 ��������)';
  AUTOKOD_FORM_FIND_VETKA                   ='���������� ������ ������';
  AUTOKOD_FORM_FIND_TOVAR                   ='���������� ������ ������';
  AUTOKOD_FORM_FIND_ALL                     ='���������� ���';
  AUTOKOD_FORM_LABLE_MEAS                   ='�������� ������� ��������� ������';
  AUTOKOD_FORM_TAKE_ERROR                   ='�� ������ �� �������!';
  AUTOKOD_FORM_WARNING                      ='�������!';
  AUTOKOD_FORM_DONT_TOVAR                   ='��� �� �����!';
  AUTOKOD_ACTION_DEL_ALL                    ='������� ���';
  AUTOKOD_FORM_CANCLE                       ='��������';
  AUTOKOD_FORM_DOWN                         ='������� ������';
  AUTOKOD_FORM_PROPERTY                     ='��������';
  AUTOKOD_FORM_CAPTION_COPY_VETKA           ='���������� ������/�����';
  AUTOKOD_FORM_CAPTION_MOVE_VETKA           ='��������� ������/�����';
  AUTOKOD_FORM_DONT_ADD_VETKA               ='���������� �������� ������, ��� ��� ��� ��� ����� �����!';
  AUTOKOD_FORM_DONT_COPY_VETKA              ='��� ����������, ��� ��� ��� ��� ����� ������!';
  AUTOKOD_FORM_MES_LEVEL                    ='������� ����� �������!';

  AUTOKOD_CHANGE_VETKA_ADD                     ='�������� �������� ������ (�� ������ 50 ��������)';
  AUTOKOD_CHANGE_VETKA_LENGHT_KOD              ='�������� ������������ ������ ���� (�� ������ 5)';
  AUTOKOD_CHANGE_VETKA_KOD                     ='�������� ��� (�� ������ �������������)';
  AUTOKOD_CHANGE_VETKA_ADD_MESS                ='�_ ������ �������� ����� ������?';
  AUTOKOD_CHANGE_TOVAR_ADD                     ='�������� �������� ������ (�� ������ 50 ��������)';
  AUTOKOD_CHANGE_VETKA_FORM                    ='������������� ������';
  AUTOKOD_CHANGE_TOVAR_FORM                    ='������������� �����';

  AUTOKOD_ADD_FORM_ADD_TAKE                    ='�������� � �������';
  AUTOKOD_FORM_UNIT_MEAS_NAME                  ='��. ���������';
  AUTOKOD_FORM_UNIT_M_N                        ='��. ���.';
  AUTOKOD_FORM_GROUP                           ='������ �������';
  AUTOKOD_FORM_TOVAR_CAPTION                   ='���������� ������';
  AUTOKOD_CENA                                 ='����';
  AUTOKOD_TAKE_TOVAR                           ='��������� ������';


  AUTOKOD_SP_UNIT_MEAS_SHORT                   ='����������';
  AUTOKOD_SP_UNIT_MEAS_FORM                    ='���������� ???';
  AUTOKOD_SP_UNIT_MEAS_GR_NAME                 ='���';
  AUTOKOD_SP_UNIT_MEAS_GR_SHORTNAME            ='������� ���';
  AUTOKOD_SP_UNIT_MEAS_GR_KOEF                 ='����������';
  AUTOKOD_SP_UNIT_MEAS_ADD_NAME                ='������� ��������';
  AUTOKOD_SP_UNIT_MEAS_ADD_SHORTNAME           ='������� ������� ��������';
  AUTOKOD_SP_UNIT_MEAS_ADD_KOEF                ='������� ����������';
  AUTOKOD_SP_UNIT_MEAS_FIND                    ='';
  AUTOKOD_SP_UNIT_MEAS_ADD_ERROR               ='����� �������� ��� ����������!';
  AUTOKOD_SP_UNIT_MEAS_FIND_LABEL              ='������� ��������, ������� ���������� �����';
  AUTOKOD_SP_UNIT_MEAS_FIND_ERROR              ='�� �� ������� ��������, ������� ���������� �����';
  AUTOKOD_SP_UNIT_MEAS_FIND_ERROR_MESS         ='������ �������� �� ����������!';


  AUTOKOD_PROP_CAPTION_FORM_CAPTION            ='�� ��������� � ����������� ������� ���������';
  AUTOKOD_PROP_CAPTION_TYPE_FIND_MESSAGA_SP    ='�� �� ����� ��������';
  AUTOKOD_PROP_CAPTION_MESSAGA                 ='�������!';
  AUTOKOD_PROP_CAPTION_ADD_SHORTNAME           ='������� ������� ��������';
  AUTOKOD_PROP_CAPTION_ADD_NAME                ='������� ��������';
  AUTOKOD_PROP_CAPTION_BUTTON_ADD              ='��������';
  AUTOKOD_PROP_CAPTION_BUTTON_CLOSE            ='�������';
  AUTOKOD_PROP_CAPTION_CHANGE_SHORTNAME        ='�������� �������� ��������';
  AUTOKOD_PROP_CAPTION_CHAGE_NAME              ='�������� ��������';
  AUTOKOD_PROP_CAPTION_BUTTON_EDIT             ='��������';
  AUTOKOD_PROP_CAPTION_FORM_ADD                ='�������� ��������';
  AUTOKOD_PROP_CAPTION_FORM_CHANGE             ='�������� ��������';
  AUTOKOD_PROP_CAPTION_REFRESH                 ='��������';
  AUTOKOD_PROP_CAPTION_DELETE                  ='�������';
  AUTOKOD_PROP_CAPTION_GET                     ='�������';
  AUTOKOD_PROP_CAPTION_FIND                    ='�����';
  AUTOKOD_PROP_CAPTION_FIND_NAME               ='����� �� ��������';
  AUTOKOD_PROP_CAPTION_FIND_SHORT_NAME         ='����� �� ��������� ��������';
  AUTOKOD_PROP_CAPTION_GRID_NAME               ='��������';
  AUTOKOD_PROP_CAPTION_GRID_SHORT_NAME         ='�������� ��������';
  AUTOKOD_PROP_CAPTION_FIND_ERROR              ='�� �� ������� ��������, ������� ���������� �����';
  AUTOKOD_PROP_CAPTION_BEGIN                   ='������ �������?';
  AUTOKOD_PROP_CAPTION_MESSAGA_FIND            ='�����';
  AUTOKOD_PROP_CAPTION_MESSAGA_NOT_FIND        ='������ �� �����!';
  AUTOKOD_PROP_CAPTION_MESSAGA_ERROR           ='��� �� ������ �������?';
  AUTOKOD_PROP_CAPTION_MESSAGA_DEL             ='�� ������������� ������� �������?';
  AUTOKOD_PROP_CAPTION_MESSAGA_OK              ='�������������';
  AUTOKOD_PROP_CAPTION_TAKE_ERROR              ='�� ������ �� ������� �������!';
  AUTOKOD_PROP_NAME                            ='�������� ��������';
  AUTOKOD_PROP_BEGIN_PERIOD                    ='������ �������� ��������';
  AUTOKOD_PROP_END_PERIOD                      ='����� �������� ��������';
  AUTOKOD_PROP_ADD_ALL                         ='��� ���� ���������� �����';
  AUTOKOD_PROP_ADD_ONLYYOU                     ='������ ��� ����� ����';
  AUTOKOD_PROP_ADD_LABLE_RADIO                 ='��� �������� ��������:';
  AUTOKOD_PROP_ADD_ADD_PROPERTY                ='�������� ��������';
  AUTOKOD_PROP_ADD_DATA                        ='�������� ���� ����� �������� ��������';
  AUTOKOD_PROP_ADD_CHANGE_DATA                 ='�������� ���� ����� �������� ��������';
  AUTOKOD_PROP_CAPTION_EMPTY                   ='������ �������� �� ����������!';
  AUTOKOD_COPY_REZALT_PAPKA                    ='�������������� �����';
  AUTOKOD_COPY_MAIN_PAPKA                      ='�������� �����';
  AUTOKOD_COPY_CAPTION_COPY                    ='����������';
  AUTOKOD_COPY_CAPTION_MOVETO                  ='���������';
  AUTOKOD_COPY_CNOPKI                          ='������ ����������';
  AUTOKOD_COPY_PAPKA                           ='�������� ����';

  AUTOKOD_SP_RAZD_ADD_NUMBER                   ='������� �����������';
  AUTOKOD_SP_RAZD_ADD_LEVEL                    ='������� ';
  AUTOKOD_SP_RAZD_ADD_LENGHT                   ='������� ����� ���� �� ���� ������';
  AUTOKOD_SP_RAZD_FIND_NUM                     ='����� �� �����������';
  AUTOKOD_SP_RAZD_FIND_LENGHT                  ='����� �� ����� ����';
  AUTOKOD_SP_RAZD_FORM                         ='���������� ������� ���������';
  AUTOKOD_SP_RAZD_ADD_FORM                     ='���� ���������� ������ ������';
  AUTOKOD_SP_RAZD_CHANGE_FORM                  ='���� ��������� ������';
  AUTOKOD_SP_RAZD_                             ='�����������';
  AUTOKOD_SP_RAZD_LEVEL_LENGHT                 ='����� ������';

  AUTOKOD_PRINT_ALL                            ='�������� ���';
  AUTOKOD_PRINT_GROUP                          ='�������� ������ ������';
  AUTOKOD_PRINT_TOVAR                          ='�������� ������ ������';
  AUTOKOD_PRINT_LEVEL                          ='�������� �� �������';


implementation

end.
