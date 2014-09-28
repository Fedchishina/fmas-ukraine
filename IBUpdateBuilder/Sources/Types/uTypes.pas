unit uTypes;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uTypes                                                                     *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	���������������� �������� ���������������� �����, �������� � ��.           *
*                                                                              *
* Copyright  �  ��� 2005,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}

interface

uses Controls;

const

	{*****************************************}
    {   *** ��������� ������ ���������� ***   }
    {*****************************************}

    cZERO                            = 0;
	cDIGITS                          = ['0'..'9'];  //��������� ����������� �����
	cLETTERS                         = ['A'..'Z'];  //��������� ����
	cDEF_CAN_SORT                    = True;        //������������ �������� ��� ��������� ���������� ������ �����
	cDEF_IS_ACTIVE                   = True;        //�������� �� ��������� ��� ���� ������ ����� �������
	cDEF_BUTTON_TAG                  = -1;          //������������ �������� ��� ����������� ������ ������ ������ �����
	cDEF_DLG_RESULT                  = -1;          //�������� �� ��������� ��� ���������� ������� � �������������
	cDATE_SEPARATOR                  = '-';         //������-����������� ��� ����
	cMIN_PATH_LENGTH                 = 3;           //����������� ���������� ��������, ������������ ������������ ����
	cDEF_UPDATE_NUMBER               = -1;          //������������ ����� ����������, ���������� �� � �����
	cDATE_DIGITS_COUNT               = 10;          //���������� ����, ������������ ��� ������������� ����
	cMIN_SECTIONS_COUNT              = 6;           //����������� ���������� �������� ������, ������������ � ����� ����� �������
	cDEF_CASE_SENSITIVE              = False;       //������������ �������� ��� �������� ��������
	cUPDATE_NUMBER_SEPARATOR         = '-';         //������-����������� ��� ���������� ������ ����������
	cSECTIONS_SEPARATOR_COUNT        = 2;           //���������� ��������-������������, ���������� ���� �� ����� ������ � ����� ����� �������
	cUPDATE_MAJ_RESERVED_CHAR_COUNT  = 3;           //���������� ������� ����������������� ��� ������� ����� ����������� ������ ����������
	cUPDATE_MIN_RESERVED_CHAR_COUNT  = 2;           //���������� ������� ����������������� ��� �������������� ����� ����������� ������ ����������
	cDAYSBETWEEN_RESERVED_CHAR_COUNT = 2;           //���������� ������� ����������������� ��� ������� � ���� ����� ����� �������� ������� � ����� ��� ����������

resourcestring

    {***************************************}
    {   *** ������� ������ ���������� ***   }
    {***************************************}

	//��������� ���������������� �������������� ��������
	sEFileNotFound         = '���� �� ������';
	sEConvertError         = '������������ �������������� �����';

	//������������ ��������� �� ������
	sErrorText    = '       ������: ';
	sErrorCode    = '��� ������: ';
	sErrorAddr    = '����� ������: ';
	sContinueQst  = ' ����������?';
	sErrorTextExt = '������: ';

	sMsgCaptionErr = '������';
	sMsgCaptionWrn = '��������������';
	sMsgCaptionInf = '����������';
	sMsgCaptionQst = '�������������';

    sCommentFile       = ' ����: ';
    sCommentBevel      = '   ***************   ';
    sCommProjectName   = '            �������� �������: ';
    sCommScriptsCount  = '         ���������� ��������: ';
    sCommUpdDateCreate = '���� ������������ ����������: ';

	//��� �����-������ ������ ����������
	sLOG_FILE_NAME     = 'AppErrors.log';

	//��� �����-������ ������ ������������ ����� ����������
	sUPDATE_ERRORS_FILE_NAME = 'Update_Errors.log';

	//��� ����� ������������ ��������
	sINI_FILE_NAME     = 'DefConfig.ini';

	//�������� ������ ��� ����� ������������ ��������
    sSN_DEFAULT_VALUES = 'Default Values';
    sSN_PROJECTS = 'Projects';

	//�������� ������ ��� ����� ������������ ��������
    sKN_DB_PATH        = 'DbPath';
    sKN_SCR_PATH       = 'ScriptPath';
    sKN_PASSWORD       = 'Password';
    sKN_USER_NAME      = 'User';
    sKN_SERVER_NAME    = 'Server';
    sKN_IBESCRIPT_PATH = 'IBEscriptPath';
    sKN_ACTIVE_PROJECTS= 'ActiveProjects';

	sFILE_SIZE_FN      = 'FILE_SIZE';    //�������� ���� ��� ��, ����������� ������ ����� �������
	sIS_ACTIVE_FN      = 'IS_ACTIVE';    //�������� ���� ������ ��� ��
	sDATE_CHANGE_FN    = 'DATE_CHANGE';  //�������� ���� ��� ��, ����������� ���� ���������� ��������� ����� �������
	sSCRIPT_NAME_FN    = 'SCRIPT_NAME';  //�������� ���� ��� ��, ����������� ��� ����� �������

    //���������� �������� ������
    sARCH_EXT_GZ  = '*.gz';
    sARCH_EXT_RAR = '*.rar';
    sARCH_EXT_ZIP = '*.zip';
    sARCH_EXT_EXE = '*.exe';
	sARCH_EXT_TAR = '*.tar';
	sARCH_EXT_RPM = '*.rpm';
	sARCH_EXT_ARJ = '*.arj';

	sCR                          = #13;               //������ ��������� ������
	sZERO                        = '0';               //������ ����
	sCRLF                        = #13#10;            //������� ��������� ������ � �������� �� ���������
	sSTAR                        = '*';               //������ ��������
	sTICK                        = '''';              //������ �������
	sTICKS                       = '"';               //������ �������
	sSPACE                       = ' ';               //������ ������
	sMINUS                       = '-';               //������ �����
	sDEF_DB_EXT                  = '*.ib';            //������������ ���������� ��� ����� ���� ������
	sEMPTY_STR                   = '';                //������ ������
	sSEMICOLON                   = ',';               //������ �������
	sDBL_POINT                   = ':';               //������ ���������
	sBRAKET_OP                   = '(';               //������ ����������� ������
	sBRAKET_CL                   = ')';               //������ ����������� ������
	sDEF_EXE_EXT                 = '*.exe';           //������������ ���������� ��� ������������ �����
	sUPDATE_EXPR                 = 'U';               //�������� ���������, ������������ ����� �� ������ � �����-���� ���������� ��� ���
	sSCRIPTS_MASK                = '*.sql';           //����� ��� ������ ��������
	sANY_FILE_MASK               = '*.*';             //����� ��� ����� ������
	sUPDATE_NUMBER               = ' Update No ';     //��������� - ������������ ����� ����� ����������
	sSCRIPT_FILE_EXT             = '.sql';            //����������  ������ ��������
	sBRAKET_COMMENT_OP           = '/*';              //������, ����������� �����������
	sBRAKET_COMMENT_CL           = '*/';              //������, ����������� �����������
	sFMT_ALL_FILES_SIZE          = '#0.00';           //������ ��� �������������� ������� ���� ������
	sFMT_SEL_FILES_SIZE          = '#0.0000';         //������ ��� �������������� ������� ��������� ������
	sFORMAT_DATE_TO_STR          = 'yyyy-mm-dd';      //������ ���� ��� ����������� � ������
	sSEPARATOR_FOLDER_WIN        = '\';               //������-����������� ��� Win32-�����
	sSEPARATOR_FOLDER_UNX        = '/';               //������-����������� ��� UNIX-�����
	sSCRIPT_EXECUTER_NAME        = 'ibescript.exe';   //��� exe-����� ��� ���������� ��������
	sCOMMAND_LINE_SCRIPT_EXEC    = ' -S -N -V';       //��������� ��������� ������ ��� ������� ���������� ��������
	sSCRIPT_EXECUTER_NAME_NO_EXT = 'ibescript';       //��� exe-����� ��� ���������� ��� ���������� ��������

	sEXECUTE_OPERATION     = 'Open';                                                      //�������� ��� ������� �������� ��� ��������� �����-������ ������ ���������� �������
	sEXECUTE_SCRIPT_STR    = 'Script executed successfully';                              //������, ��������������� � �������� ���������� �������

	sDEF_DB_FILTER         = 'Data Base Files (*.ib; *.gdb)|*.ib;*.gdb';                  //������������ �������� ������� ��� ������ ���� ������
	sDEF_EXE_FILTER        = 'Executable Files (*.exe)|*.exe';                            //������������ �������� ������� ��� ����������� ������
	sDEF_SQL_FILTER        = 'Script Files (*.sql)|*.sql';                                //������������ �������� ������� ��� ������ ��������

	sTEMP_DIR              = 'C:\WINDOWS\TEMP';                                           //���� ���������� �����
	sEMPTY_CHAR            = '_';                                                         //������, ����������� �� ����������� �������� ������ � ����� ����� �������
	sDEF_SCR_PATH          = '\\It-server\projects\FMAS-WIN\DONNU\TEST\Scripts';          //���� � ��������� ��������
	sSCR_SEPARATOR         = '=';                                                         //������-����������� ������ � ����� �������
	sSCR_ERROR_CHAR        = '#';                                                         //������-������ ��� ������� �������� � ��������
	sDEF_SCR_DATE_BEG      = '01.09.2005';                                                //������ ������� ���� �������� ��������
	sDEF_UPDATE_NUMBER     = '-1';                                                        //������������ ����� ����������, ���������� �� � �����
  sDEF_ACTIVE_PROJECTS   = 'ABGHKMPS';                                                  //�������� ������� �� ���������


	sDEF_DB_PATH           = '\\It-server\projects\FMAS-WIN\DNEPR\TEST\FULL_DB.IB';       //���� � ��������� ��������
	sDEF_PASSWORD          = 'masterkey';                                                 //������������ ������ ��� ����������� � ��
	sDEF_USER_NAME         = 'SYSDBA';                                                    //������������ ��� ������������ ��� ����������� � ��
	sDEF_SERVER_NAME       = 'localhost';                                                 //������������ ��� ������� ��� ����������� � ��
  sDEF_IBESCRIPT_PATH    = 'C:\Program Files\HK Software\IB Expert 2.0\ibescript.exe';  //���� � ��������� ���������� ��������

    {***********************************************************************}
    {   *** �������� ���e���� � ��������������� �� �������� ��������� ***   }
    {***********************************************************************}

    //�������� ��������
	sMONU_NAME         = '����';
  sKIEV_NAME         = '����';
  //	sLVOV_NAME         = '�����';
	sDNEPR_NAME        = '���������������';
	sDONUEP_NAME       = '������';
	sKHARKOV_NAME      = '�������';
	sPOLTAVA_NAME      = '�������';
	sDONGUET_NAME      = '�������';
	sCHERMET_NAME      = '����������������';
	sALCHEVSK_NAME     = '�������';
	sSTUDCITY_NAME     = '�����������';
	sGORLOVKA_NAME     = '���������� �������� �����';
	sSPORT_UNIVER_NAME = '�������� �����������';

	//�������� �������� ���������, ��������������� ��������
  sMONU_KEY_EXPR         = 'M';
  sKIEV_KEY_EXPR         = 'K';
//	sLVOV_KEY_EXPR         = 'L';
	sDNEPR_KEY_EXPR        = 'D';
	sDONUEP_KEY_EXPR       = 'E';
	sKHARKOV_KEY_EXPR      = 'H';
	sPOLTAVA_KEY_EXPR      = 'P';
	sDONGUET_KEY_EXPR      = 'G';
	sCHERMET_KEY_EXPR      = 'C';
	sALCHEVSK_KEY_EXPR     = 'A';
	sSTUDCITY_KEY_EXPR     = 'S';
	sGORLOVKA_KEY_EXPR     = 'O';
	sSPORT_UNIVER_KEY_EXPR = 'F';

type

    {************************************}
    {   *** ���� ������ ���������� ***   }
    {************************************}

	//��������� �����
	TDigits = Set of '0'..'9';

	//������������ ������ ��� �������� ����� �����
	TIntArray = array of Integer;

	//������������ ������ ��� �������� �����
	TStrArray = array of String;

	//������������� ���, ������������ ����� ������ ������ �� ���������
	TEnm_AppMode       = ( amView, amSearch );

	//������������� ���, ������������ ����������� ������
	TEnm_Direction     = ( dtDown, dtUp );

	//������������� ���, ������������ ��� ������, ��� �������� ����� ����������� ��������
	TUsrFileType       = ( ftScripts, ftModules );

	//������������� ���, ������������ ����� ���������� ������ ������
	TPeriodBound       = ( pbNone, pbLeft, pbRight, pbBoth );

	//������������� ���, ������������ ����� ���������� ������ ������
	TFillMode          = ( fmInsert, fmAppend );

	//������������� ���, ������������ ����� �������������� ��������
	TRenameMode        = ( rmRename, rmUnRename );

	//������������� ���, ������������ ����� ���������� ������ ��������
	TSortMode          = ( smAlphabetically, smDate, smOrder );

	//������������� ���, ������������ ���������, ������������ �������� �������� ��������
	TLoadScrResult     = ( lrNone, lrScrNotFound, lrFilterInvalid, lrLoadSuccess, lrModulesInvalid );

	//������������� ��� ��� ����������� ������� ������������
	TSelectionMode     = (  smSelectAll, smUnSelectAll, smInvert );

	//������������� ��� ��� ����������� ���-�� ���������� �������
	TCheckedRecCount   = ( crcNone, crcSome, crcAll );

	//������, ��������������� ��� �������� ���������� �������
	TProjectParams = packed record
		Name    : String;
		KeyExpr : String;
	end;

	//������, ��������������� ��� �������� ���������� ��������������
	TRenameParams = packed record
		KeyExpr        : String;
		RenameMode     : TRenameMode;
		DateCreate     : TDate;
		UpdateNumMajor : Integer;
		UpdateNumMinor : Integer;
	end;

	//������, ��������������� ��� �������� ���������� �������
	TScriptInfo = packed record
		CanExecute     : Boolean;
		Execute        : Boolean;
		IsInUpdate     : Boolean;
		DateCreate     : TDate;
		DateExecute    : TDate;
		UpdateNumMajor : String;
		UpdateNumMinor : String;
	end;

	//������, ��������������� ��� �������� ������������� ������ ����������
	TUpdateNumInfo = packed record
		UpdateNumMajor : Integer;
		UpdateNumMinor : Integer;
	end;

	//������, ��������������� ��� �������� ���������� ������ ������������� ������ ����������
	TMaxUpdNumParams = packed record
		KeyExpr  : String;
		FilePath : String;
	end;

	//������, ��������������� ��� �������� ���������� ����������
	TFilterParams = packed record
		KeyExpr        : String;
		DateBeg        : String;
		DateEnd        : String;
		ScriptPath     : String;
		UpdateNumMajor : Integer;
		UpdateNumMinor : Integer;
	end;

	//������, ��������������� ��� �������� �������� ���������� ����������������� �����
	TDefIniParams = packed record
		Section  : String;
		Key      : String;
		DefValue : String;
	end;

	//������, ��������������� ��� �������� �������� ���������� ����������������� �����
	TIniParams = packed record
		User       : String;
		Server     : String;
		DBPath     : String;
		Password   : String;
		ScriptPath : String;
	end;

	TPtr_SearchParams = ^TRec_SearchParams;

	//������ �������������� ��� �������� ���������� ������
	TRec_SearchParams = packed record
		Direction      : TEnm_Direction;
		TextSearch     : String;
		FirstFound     : String;
		CaseSensitive  : Boolean;
		WholeWordsOnly : Boolean;
	end;

	//������ ������������ ����������
	TArrDefIniParams = array of TDefIniParams;

const

	//������ ���������� ������ ��������
	cScriptExt : array[0..0] of String = (
		sSCRIPTS_MASK );

	//������ ���������� �������� ������
	cArchiveExt : array[0..6] of String = (
		sARCH_EXT_RAR,
		sARCH_EXT_ZIP,
		sARCH_EXT_EXE,
		sARCH_EXT_ARJ,
		sARCH_EXT_TAR,
		sARCH_EXT_RPM,
		sARCH_EXT_GZ);

	//������ ������������ ����������
	cDefIniParams : array[0..6] of TDefIniParams = (
		( Section: sSN_DEFAULT_VALUES; Key: sKN_SERVER_NAME   ; DefValue: sDEF_SERVER_NAME    ),
		( Section: sSN_DEFAULT_VALUES; Key: sKN_DB_PATH       ; DefValue: sDEF_DB_PATH        ),
		( Section: sSN_DEFAULT_VALUES; Key: sKN_USER_NAME     ; DefValue: sDEF_USER_NAME      ),
		( Section: sSN_DEFAULT_VALUES; Key: sKN_PASSWORD      ; DefValue: sDEF_PASSWORD       ),
		( Section: sSN_DEFAULT_VALUES; Key: sKN_SCR_PATH      ; DefValue: sDEF_SCR_PATH       ),
		( Section: sSN_DEFAULT_VALUES; Key: sKN_IBESCRIPT_PATH; DefValue: sDEF_IBESCRIPT_PATH ),
    ( Section: sSN_DEFAULT_VALUES; Key: sKN_ACTIVE_PROJECTS; DefValue: sDEF_ACTIVE_PROJECTS));

	//������ ���������� ���e����
	cProjectParams : array [0..11] of TProjectParams = (
		( Name: sMONU_NAME    ;     KeyExpr: sMONU_KEY_EXPR         ),
 		( Name: sKIEV_NAME    ;     KeyExpr: sKIEV_KEY_EXPR         ),
//		( Name: sLVOV_NAME    ;     KeyExpr: sLVOV_KEY_EXPR         ),
		( Name: sDNEPR_NAME   ;     KeyExpr: sDNEPR_KEY_EXPR        ),
		( Name: sDONUEP_NAME  ;     KeyExpr: sDONUEP_KEY_EXPR       ),
		( Name: sKHARKOV_NAME ;     KeyExpr: sKHARKOV_KEY_EXPR      ),
		( Name: sPOLTAVA_NAME ;     KeyExpr: sPOLTAVA_KEY_EXPR      ),
		( Name: sDONGUET_NAME ;     KeyExpr: sDONGUET_KEY_EXPR      ),
		( Name: sCHERMET_NAME ;     KeyExpr: sCHERMET_KEY_EXPR      ),
		( Name: sALCHEVSK_NAME;     KeyExpr: sALCHEVSK_KEY_EXPR     ),
		( Name: sSTUDCITY_NAME;     KeyExpr: sSTUDCITY_KEY_EXPR     ),
		( Name: sGORLOVKA_NAME;     KeyExpr: sGORLOVKA_KEY_EXPR     ),
		( Name: sSPORT_UNIVER_NAME; KeyExpr: sSPORT_UNIVER_KEY_EXPR ) );

implementation

end.
