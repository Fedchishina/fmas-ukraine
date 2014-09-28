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

type

	//��������� �����
	TDigits = Set of '0'..'9';

	//������������� ���, ������������ ��������� ���������� ��������
	TScriptStatus = ( scsTestErr, scsTestSucc, scsExecErr, scsExecSucc );

const

	//System constants
	cSCR_STATUS : array [0..Int64( High( TScriptStatus ) )] of ShortString = ( 'Tested with Errors', 'Tested Successfully', 'Executed with Errors', 'Executed Successfully' );

	cCLRTF                         = #13#10;
	cPOINT                         = '.';
	cDIGITS                        = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];      //��������� ����������� �����
	cCHAR_SET                      = 'win1251';                                               //����� ��������, ������������ � �� �� ���������
	cANY_FILE                      = '*.*';                                                   //�����, ��� ������ ���� ������
	cEMPTY_CHAR                    = '_';                                                     //������, ����������� �� ����������� �������� ������ � ����� ����� �������
	cDIGITS_EXT                    = ['-', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']; //��������� ����������� ����� + ���� "-"
	cSQL_DIALECT                   = 3;                                                       //SQL �������, ������������ � �� �� ���������
	cDB_FILE_EXT                   = '.IB';                                                   //���������� ����� ��
	cUPDATE_EXPR                   = 'U';                                                     //�������� ���������, ������������ ����� �� ������ � �����-���� ���������� ��� ���
	cSCRIPTS_MASK                  = '*.sql';                                                 //����� ��� ������ ��������
	cINI_FILE_NAME                 = 'Script.ini';                                            //��� ����������������� �����
	cDATE_SEPARATOR                = '-';                                                     //������-����������� ��� ����
	cERROR_FILE_NAME               = 'AppError.log';                                          //��� �����-������ �� ������� ��� ���������� ��������
	cSCRIPT_FILE_EXT               = '.sql';                                                  //����������  ������ ��������
	cDATE_DIGITS_COUNT             = 10;                                                      //���������� ����, ������������ ��� ������������� ����
	cFORMAT_DATE_TO_STR            = 'yyyy-mm-dd';                                            //������ ���� ��� ����������� � ������
	cFORMAT_STR_TO_DATE            = 'dd.mm.yyyy';                                            //������ ���� ��� ����������� �� ������ � ����
	cSCRIPT_EXECUTER_NAME          = 'ibescript ';                                            //��� exe-����� ��� ���������� ��������
	cSEPARATOR_FOLDER_WIN          = '\';                                                     //������-����������� ��� Win32-�����
	cSEPARATOR_FOLDER_UNX          = '/';                                                     //������-����������� ��� UNIX-�����
	cCOMMAND_LINE_ARCHIVATOR       = 'winrar e -ac -ad -cgf- -inul -o+ ';                     //��������� ��������� ������ ��� ����������
	cCOMMAND_LINE_SCRIPT_EXEC      = ' -S -N -V';                                             //��������� ��������� ������ ��� ������� ���������� ��������
	cSYSTEM_SCRIPT_ERROR_FILE_NAME = 'SystemScriptErrors.txt';                                //��� �����-������ �� ������� ��� ���������� ��������

resourcestring

	//Captions for dialogs
	cMsgErr                        = 'Error';
	cMsgWarn                       = 'Warning';
	cMsgInfo                       = 'Information';
	cMsgConf                       = 'Confirmation';

	cTEST_EXPR                     = 'TEST';
	cEXECUTE_EXPR                  = 'EXEC';
	cDESCRIPTION_STR               = 'Testing scripts for '' ';
	cSCRIPT_STATUS_ERROR           = 'Error';
	cSCRIPT_STATUS_SUCCESS         = 'Success';

	//Section Names
	cTEST_PARAMS                   = 'Test Params';            //�������� ������ ����������������� INI - �����
	cUSELESS_SECTION               = 'Useless Sections';       //�������� ������ ����������������� INI - �����

	//Key Names

	//Basic
	cUSER                          = 'User';                   //�������� ����� � ������ ����������������� INI - �����
	cSERVER                        = 'Server';                 //�������� ����� � ������ ����������������� INI - �����
	cPASSWORD                      = 'Password';               //�������� ����� � ������ ����������������� INI - �����
	//Regular
	cPATH                          = 'Path';                   //�������� ����� � ������ ����������������� INI - �����
	cKEY_EXPR                      = 'KeyExpr';                //�������� ����� � ������ ����������������� INI - �����
	//Config
	cRENAME                        = 'Rename';                 //�������� ����� � ������ ����������������� INI - �����
	cEXECUTE                       = 'Execute';                //�������� ����� � ������ ����������������� INI - �����
	cDATE_BEG                      = 'DateBeg';                //�������� ����� � ������ ����������������� INI - �����
	cDATE_END                      = 'DateEnd';                //�������� ����� � ������ ����������������� INI - �����
	cFULL_RENAME                   = 'FullRename';             //�������� ����� � ������ ����������������� INI - �����
	cSYSTEM_SCRIPT                 = 'SystemScript';           //�������� ����� � ������ ����������������� INI - �����
	cERROR_LOG_DIR                 = 'ErrorLogDir';            //�������� ����� � ������ ����������������� INI - �����
	cIBESCRIPT_PATH                = 'IBEScriptPath';          //�������� ����� � ������ ����������������� INI - �����
	cDB_PATH_BACKUP                = 'DBPathBackUp';           //�������� ����� � ������ ����������������� INI - �����
	cSEPARATOR_CHAR                = 'SeparatorChar';          //�������� ����� � ������ ����������������� INI - �����
	cARCHIVATOR_PATH               = 'ArchivatorPath';         //�������� ����� � ������ ����������������� INI - �����
	cDB_PATH_COPY_TO               = 'DBPathCopyTo';           //�������� ����� � ������ ����������������� INI - �����
	cBACKUP_DAYS_COUNT             = 'BackUpDaysCount';        //�������� ����� � ������ ����������������� INI - �����
	cERROR_SCRIPT_CHAR             = 'ErrorScriptChar';        //�������� ����� � ������ ����������������� INI - �����
	cPREFIX_CHAR_COUNT             = 'PrefixCharCount';        //�������� ����� � ������ ����������������� INI - �����
	cDEFAULT_DB_FILE_NAME          = 'DefaultDBFileName';      //�������� ����� � ������ ����������������� INI - �����
	cSCRIPTS_PATH_COPY_FROM        = 'ScriptPathCopyFrom';     //�������� ����� � ������ ����������������� INI - �����
	cDB_ARCHIVE_FILE_NAME_PART     = 'DBArchiveFileNamePart';  //�������� ����� � ������ ����������������� INI - �����

	//Default section key values
	cDEF_USER                      = 'sysdba';
	cDEF_SERVER                    = 'localhost';
	cDEF_RENAME                    = '0';
	cDEF_EXECUTE                   = '0';
	cDEF_PASSWORD                  = 'masterkey';
	cDEF_FULL_RENAME               = '0';
	cDEF_ERROR_LOG_DIR             = 'Errors';
	cDEF_SEPARATOR_CHAR            = '=';
	cDEF_IBESCRIPT_PATH            = 'C:\Program Files\IB Expert 2.0\ibescript.exe';
	cDEF_DB_PATH_COPY_TO           = 'D:\TestDB';
	cDEF_ARCHIVATOR_PATH           = 'C:\Program Files\WinRaR\winrar.exe';
	cDEF_BACKUP_DAYS_COUNT         = '1';
	cDEF_ERROR_SCRIPT_CHAR         = '#';
	cDEF_PREFIX_CHAR_COUNT         = '13';
	cDEF_DEFAULT_DB_FILE_NAME      = 'FULL_DB.IB';
	cDEF_SCRIPTS_PATH_COPY_FROM    = 'D:\FMAS-WIN\DataBase';
	cDEF_DB_ARCHIVE_FILE_NAME_PART = 'RESTORE.IB';

	//Status bar's messages
	cSPACE                         = '';
	cCOPYING_FILES                 = 'Copying files...';
	cEXTRACTING_FILES              = 'Extracting files...';
	cEXECUTING_SCRIPTS             = 'Executing scripts...';

	//Messages
	cAPP_EXIT                        = 'File ''' + cINI_FILE_NAME + ''' is not found' + cCLRTF + 'Application finished and closing';
	cCONVERT_ERROR                   = 'Invalid type convertion: ';
	cQUIT_QUESTION                   = 'Are you shure you wish to quit IBScript Executer?';
	cTEST_SCRIPT_STR                 = 'Script TESTED SUCCESSFULLY!';
	cCONVERT_DATE_ERR                = 'can''t convert string to date' + cCLRTF + 'Check format of config parameters ''DateBeg'' and ''DateEnd''';
	cSCRIPTS_NOT_FOUND               = 'There are NO SCRIPTS for testing!';
	cAPP_RESULT_OK_MSG               = 'ALL Scripts tested and executed SUCCESSFULLY!';
	cAPP_RESULT_ERR_MSG              = 'SOME Scripts have ERRORS!';
	cEXECUTE_SCRIPT_STR              = 'Scripts TESTED and EXECUTED SUCCESSFULLY!';
	cDB_FILE_NOT_FOUND1              = 'Testing scripts finished abnormally!';
	cDB_FILE_NOT_FOUND2              = 'Check files for testing or pathes for them.';
	cINI_FILE_NOT_FOUND              = 'Can''t find ''' + cINI_FILE_NAME + ''' file' + cCLRTF + 'Do you want to find it?';
	cPREPARE_SCRIPT_ERR              = 'During Preparing Data Base file for testing one of scripts have been executed with ERRORS!';
	cSUCCESS_EXEC_RESULT             = 'Script executed successfully';
	cINI_FILE_WAS_REMOVED            = 'File ''' + cINI_FILE_NAME + ''' was removed or deleted' + cCLRTF + 'Try to use ''Create Test List'' menu item';
	cTEST_SCRIPT_STR_ERR             = 'Scripts TESTED with ERRORS!';
	cEXECUTE_SCRIPT_STR_ERR          = 'Scripts EXECUTED with ERRORS!';
	cEXEC_SYS_SCRIPT_STR_ERR         = 'SYSTEM SCRIPT EXECUTED with ERRORS!';
	cEXEC_SYS_SCRIPT_STR_SUCC        = 'SYSTEM SCRIPT EXECUTED SUCCESSFULLY!';
	cDONT_EXEC_SYS_SCRIPT_STR        = 'SYSTEM SCRIPT DON''T EXECUTE,'#13'because ALL scripts are only TESTED!';
type

	//������������� ���, ������������ ����� ������� ���������
	TAppMode   = ( amNone, amWin, amCmd );

	//������������� ���, ������������ ����� ������� ���������
	TAppResult = ( arNone, arBackUpFileNotFound, arScrNotFound, arPrepareError, arPrepareSuccess, arTestSuccess, arExecSuccess, arTestError, arExecError );

	//������������� ���, ������������ ����� ���������� ������ ��������
	TSortMode  = ( smAlphabetically, smDate, smOrder );

	//���������, ���������� ��������� ��� ������������ ��������
	TScriptParams = packed record
		KeyExpr         : String;
		ScriptDir       : String;
		SeparatorChar   : String;
		PrefixCharCount : Integer;
		ExtModeEnabled  : Boolean;
		DateBeg         : TDate;
		DateEnd         : TDate;
	end;

implementation

end.
