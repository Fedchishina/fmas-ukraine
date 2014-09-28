unit uneTypes;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uneTypes                                                                   *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	���������������� �������� ���������������� �����, �������� � ��.           *
*                                                                              *
* Copyright  �  ��� 2005,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}

interface

uses Classes, Controls, DB, IBase;

resourcestring

	//��������� ���������������� �������������� ��������
	sELoadMethod             = '�� ������� �������� ����� ������ ';
	sELoadPackage            = '�� ������� ��������� ����� ';
	sEFileNotFound           = '���� �� ������';
	sEConvertError           = '������������ �������������� �����';
	sEFileNotFound1          = '���� ';
	sEFileNotFound2          = ' �� ������';
	sEIniFileNotFound        = '���������������� ���� �� ������';
	sEInvalidConnectParams   = '��������� ���������� ����������� ��� ������ �����������';
	sEInvalidExpMethodParams = '�������� ��������� ��� ��������������� ������ �� �������';

	//������������ ��������� �� ������
	sErrorText    = '       ������: ';
	sErrorCode    = '��� ������: ';
	sErrorAddr    = '����� ������: ';
	sErrorSearch  = ' �� ������';
	sErrorTextExt = '������: ';

	sMsgCaptionErr = '������';
	sMsgCaptionWrn = '��������������';
	sMsgCaptionInf = '����������';
	sMsgCaptionQst = '�������������';

	sErrorTextRUS    = '       ������: ';
	sErrorCodeRUS    = '��� ������: ';
	sErrorAddrRUS    = '����� ������: ';
	sErrorSearchRUS  = ' �� ������';
	sErrorTextExtRUS = '������: ';

	sErrorTextUA    = '       �������: ';
	sErrorCodeUA    = '��� �������: ';
	sErrorAddrUA    = '������ �������: ';
	sErrorSearchUA  = ' �� ��������';
	sErrorTextExtUA = '�������: ';

	sMsgCaptionErrRUS = '������';
	sMsgCaptionWrnRUS = '��������������';
	sMsgCaptionInfRUS = '����������';
	sMsgCaptionQstRUS = '�������������';

	sMsgCaptionErrUA = '�������';
	sMsgCaptionWrnUA = '������������';
	sMsgCaptionInfUA = '����������';
	sMsgCaptionQstUA = 'ϳ�����������';

	//��� ����������������� �����
	sLOG_FILE_NAME  = 'JO5Errors.log';
	sINI_FILE_NAME  = 'Config.ini';

	//�������� ������ � ������� ������ ����������������� INI - �����
	sPATH           = 'Path';
	sSERVER         = 'Server';
	sPASSWORD       = 'Password';
	sUSER_NAME      = 'User';
	sCHAR_SET       = 'CharSet';
	sSQL_DIALECT    = 'SQLDialect';
	sLOG_FILE_PATH  = 'PathLog';

    //��������� ��� �� ��������� �������������
    sMsgKernelError = '������ ����: ';

	//�������� ������� �� ������� �����
	sMAY_RUS       = '���';
	sJUNE_RUS      = '����';
	sJULY_RUS      = '����';
	sMARCH_RUS     = '����';
	sAPRIL_RUS     = '������';
	sAUGEST_RUS    = '������';
	sOCTOBER_RUS   = '�������';
	sJANUARY_RUS   = '������';
	sFEBRUARY_RUS  = '�������';
	sNOVEMBER_RUS  = '������';
	sDECEMBER_RUS  = '�������';
	sSEPTEMBER_RUS = '��������';

	//�������� ������� �� ���������� �����
	sMAY_UA       = '�������';
	sJUNE_UA      = '�������';
	sJULY_UA      = '������';
	sMARCH_UA     = '��������';
	sAPRIL_UA     = '������';
	sAUGEST_UA    = '�������';
	sOCTOBER_UA   = '�������';
	sJANUARY_UA   = 'ѳ����';
	sNOVEMBER_UA  = '��������';
	sDECEMBER_UA  = '�������';
	sFEBRUARY_UA  = '�����';
	sSEPTEMBER_UA = '��������';

	//����� ��� ������ "����������" ������ ���������
	sStatusBarConnectionUA  = '���� �����: ';
	sStatusBarConnectionRUS = '���� ������: ';

	//����� ��� ������ "������������" ������ ���������
	sStatusBarUserUA        = '����������: ';
	sStatusBarUserRUS       = '������������: ';

	//����� ��� ������ "������� ������" ������ ���������
	sMMenuCurrPeriodUA     = '�������� �����: ';
	sMMenuCurrPeriodRUS    = '������� ������: ';

type

	//������������� ��� ��� ����������� ���� ���������� ������ �������
    //�� �������� ������������������ ��-��!!!
	TEnm_PrtJrnlParams     = ( jpSch, jpSubSch, jpGrSmet, jpSmet, jpRazd, jpStat, jpKekv );

	//������������� ��� ��� ����������� ���� ����������� �� ������ �����
	TEnm_LanguageId        = ( liUa, liRus, liEng );

    //������������� ��� ��� ��������� ��������� ������� ���������� ������ ���������� �������
    TFillMode              = ( fmNone, fmInc, fmDec, fmFull );

	//������������� ��� ��� ����������� ���� ����������� ���������� ���������������
	TEnm_KorParamsTypeInfo = ( kpNumber, kpTitle );

	//������������� ��� ��� ����������� ���� ����������� �� ������ �����
	TEnm_FormType          = ( ftNone, ftForm, ftDBForm );

	//������������� ��� ��� ����������� ����� �����
    TEnm_FormStyle         = ( fsDefault, fsModal, fsMDIChild );

	//������������� ��� ��� ��������� ��������� ������� ���������� ���������� ����� ����
	TKernelMode            = ( kmNone, kmAdd, kmDelete, kmEdit );

	//������������� ��� ��� ��������� ��������� ������� ������� ��������� ������
	TManegerSchMode        = ( mmNone, mmCloseSch, mmOpenSch, mmBlockSch );

	//������������� ��� ��� ����������� ������������ ���������� ������ �����������
	TManegerSchResult      = ( msrError, msrOK );

	//������������� ��� ��� ��������� ��������� ������� �������� (������) �������
	TSystemMode            = ( smOpen, smClose );

	//������������� ��� ��� ����������� ������ �������� ��� ���������� � �������
	TImportCheckError      = ( ectNone, ectParamsNotFound, ectFNUnknown, ectFTIcompatible );

	//������������� ��� ��� ����������� ���������� ����� ��������������
	TActionType            = ( actAdd, actEdit, actDelete, actWatch, actNone, actDetAdd, actDetEdit, actDetDelete, actDetWatch, actDetNone );

	//������������� ��� ��� ��������� ��������� ������� ������� ������������
	TSelectionMode         = ( smNone, smSingleSelect, smMultiSelect );

	//������������� ��� ��� ����������� �-��� ������������
	TSelectionType         = ( stpSelectAll, stpUnSelectAll, stpInvert );

	//������������� ��� ��� ����������� ���-�� ���������� �������
	TCheckedRecCount       = ( crcNone, crcSome, crcAll );

	//������������� ��� ��� ����������� ���-�� ������������ ��� ���������� CheckBox - ��
	TCheckedBoxes          = ( cbNone, cbFrom, cbTill, cbBoth );

	//������������� ��� ��� �������� �������� ��������� �������� (������������ ��������� �������)
	TIniStProcName         = ( NDS_INI_SETUP_SEL, NDS_INI_PERCENT_RATE_SEL, NDS_INI_PERCENT_RATE_SEL_ACT );

	//��������� ���������� ������ �������
    TSet_PrtJrnlParams = set of TEnm_PrtJrnlParams;
    
	//������������ ������ ��� �������� ����� �����
	TIntArray = array of Integer;

	//������������ ������ ��� �������� �������� ������
	TCurrArray = array of Currency;

	//������ ��� �������� ���������� ����������
	TParams = packed record
		Name  : String;
		Value : String;
	end;

    TPtr_SysOptions = ^TRec_SysOptions;

	//������ ��� �������� ������������ ��������� ��������
	TRec_SysOptions = packed record
		IdUser          : Int64;
		UsrFIO          : String;
		IsValid         : Boolean;
		UsrLogin        : String;
		UsrPassword     : String;
		KodSystem       : Integer;
		DefRegUch       : Int64;
		DateSetUp       : TDate;
		LangugeId       : TEnm_LanguageId;
		DefCaseKey      : Integer;
		NameSystem      : String;
		RootTypeObj     : Integer;
        AppHandle       : THandle;
		AppExePath      : String;
		LogFileName     : String;
		ConnectionStr   : String;
		KodCurrPeriod   : Integer;
		DateCurrPeriod  : TDate;
		DateFirstImport : TDate;
	end;

    TPtr_SchParams = ^TRec_SchParams;
    
	//������ ��� �������� ���������� ��� ��������� �������� �� ������
	TRec_SchParams = packed record
		KodSystem      : Integer;
		DefRegUch      : Int64;
		RootTypeObj    : Integer;
		KodSysPeriod   : Integer;
		KodCurrPeriod  : Integer;
		DateSysPeriod  : TDate;
		DateCurrPeriod : TDate;
	end;

    TPtr_KorParams = ^TRec_KorParams;

	//������ ��� �������� ���������� ��� ��������� ���������������
	TRec_KorParams = packed record
		IdSch           : Int64;
		SchName         : String;
		IdKorSch        : Int64;
		IdRegUch        : Int64;
		CurrPeriod      : TDate;
		HasChildren     : Boolean;
		IsKorrespondKR  : Boolean;
	end;

	//������ ��� �������� ���������� ����� �������
	TFieldRec = packed record
		FieldName : String;
		FieldType : TFieldType;
	end;

	//������ ��� �������� ���������� �������� ������ �����
	TRec_SmRzSt = packed record
	  IdUser     : Int64;
	  ActualDate : TDate;
	end;

	//������ ��� �������� �������� ������ �������
	TRec_PeriodBorders = packed record
	  DateBeg : TDate;
	  DateEnd : TDate;
	end;

	TPtr_FMParams = ^TRec_FMParams;

	//������ ��� �������� ���������� �������� �����
	TRec_FMParams = packed record
	  Owner : TComponent;
	  Style : TEnm_FormStyle;
    end;

	TPtr_DBFMParams = ^TRec_DBFMParams;

	//������ ��� �������� ���������� �������� �����������
	TRec_DBFMParams = packed record
	  Owner     : TComponent;
	  Style     : TEnm_FormStyle;
	  DBHandle  : TISC_DB_HANDLE;
	  TRRHandle : TISC_TR_HANDLE;
	end;

	//������ ��� �������� �������� ���������� ������������ ���������������
	TRec_KorParamsTypeInfo = packed record
	  Checked  : Boolean;
	  TypeInfo : TEnm_KorParamsTypeInfo;
	end;

	TPtr_KorParamsInfo = ^TRec_KorParamsInfo;

	//������ ��� �������� ���������� ������������ ���������������
	TRec_KorParamsInfo = packed record
      ModRes : TModalResult;
	  GrSmet : TRec_KorParamsTypeInfo;
	  Smet   : TRec_KorParamsTypeInfo;
	  Razd   : TRec_KorParamsTypeInfo;
	  Stat   : TRec_KorParamsTypeInfo;
	  Kekv   : TRec_KorParamsTypeInfo;
	end;

    TPtr_MTDParams = ^TRec_MTDParams;

	//������ ��� �������� ���������� �������������� �� ������ �������
	TRec_MTDParams = packed record
      SmRzSt        : TRec_SmRzSt;
      KorParams     : TRec_KorParams;
      SysOptions    : TRec_SysOptions;
      KorParamsInfo : TRec_KorParamsInfo;

      case TEnm_FormType of
        ftForm   : ( FMParams   : TRec_FMParams   );
        ftDBForm : ( DBFMParams : TRec_DBFMParams );
    end;

	TPtr_BPLParams = ^TRec_BPLParams;

	//������ ��� �������� ���������� �������� ������
	TRec_BPLParams = packed record
	  MethodName  : String;
	  PackageName : String;
	end;

const

	cCRLF                = #13#10;      //������� ��������� ������ � �������� �� ���������
	cTICK                = '''';        //������ �������
	cLINE                = '-';         //������ �����
	cEQUAL               = '=';         //������ �����
	cSPACE               = ' ';         //������ ������
	cDEF_DAY             = 15;          //���� �� ��������� ��� �������� �������
	cDEF_MODE            = smNone;      //����� ������� ����������� �� ���������
	cSEMICOLON           = ',';         //������ �������
	cBRAKET_OP           = '(';         //������ ����������� ������
	cBRAKET_CL           = ')';         //������ ����������� ������
	cDEF_CHAR_SET        = 'win1251';   //��������� �� �� ���������
	cDEF_EDIT_MODE       = actAdd;      //����� �������������� �� ���������
	cYEAR_UA_SHORT       = ' �.';       //��� (����.) ��-���������
	cYEAR_RUS_SHORT      = ' �.';       //��� (����.) ��-������
	cDEF_SQL_DIALECT     = '3';         //������� �� �� ���������
	cFIRST_DAY_OF_MONTH  = 1;           //������ ���� ������
	cDEF_IS_CLOSE_PERIOD = 0;           //���������� �������� �� ��������� ��� �������� ������� � ������� �������
	cDEF_LANGUGE_ID      = liRus;       //������������ ������������� �����


	//�������� ����� DBF-������� ����������, ���������� �������� ��� �������
	cDOC_FN_FIO          = 'FIO';
	cDOC_FN_NOTE         = 'NOTE';
	cDOC_FN_SUMMA        = 'SUMMA';
	cDOC_FN_ID_DOC       = 'ID_DOC';
	cDOC_FN_NUM_DOC      = 'NUM_DOC';
	cDOC_FN_DATE_DOC     = 'DATE_DOC';
	cDOC_FN_DATE_REG     = 'DATE_REG';
	cDOC_FN_DATE_PROV    = 'DATE_PROV';
	cDOC_FN_ID_TYPE_DOC  = 'TYPE_DOC';

	//���� ����� DBF-������� ����������, ���������� �������� ��� �������
	cDOC_FT_FIO          = ftString;
	cDOC_FT_NOTE         = ftString;
	cDOC_FT_SUMMA        = ftFloat;
	cDOC_FT_ID_DOC       = ftInteger;
	cDOC_FT_NUM_DOC      = ftString;
	cDOC_FT_DATE_DOC     = ftDate;
	cDOC_FT_DATE_REG     = ftDate;
	cDOC_FT_DATE_PROV    = ftDate;
	cDOC_FT_ID_TYPE_DOC  = ftInteger;

	//�������� ����� DBF-������� ��������, ���������� �������� ��� �������
	cPROV_FN_SUMMA       = 'SUMMA';
	cPROV_FN_STORNO      = 'STORNO';
	cPROV_FN_ID_PROV     = 'ID_PROV';
	cPROV_FN_DATE_REG    = 'DATE_REG';
	cPROV_FN_CR_BY_DT    = 'CR_BY_DT';
	cPROV_FN_TABLE_NUM   = 'TN';
	cPROV_FN_DB_ID_DOC   = 'DB_ID_DOC';
	cPROV_FN_KR_ID_DOC   = 'KR_ID_DOC';
	cPROV_FN_DB_BAL_ID   = 'DB_BAL_ID';
	cPROV_FN_DB_SUB_ID   = 'DB_SUB_ID';
	cPROV_FN_KR_BAL_ID   = 'KR_BAL_ID';
	cPROV_FN_KR_SUB_ID   = 'KR_SUB_ID';
	cPROV_FN_DB_DT_PROV  = 'DB_DT_PROV';
	cPROV_FN_KR_DT_PROV  = 'KR_DT_PROV';
	cPROV_FN_DB_KOD_SMET = 'DB_KOD_SM';
	cPROV_FN_KR_KOD_SMET = 'KR_KOD_SM';
	cPROV_FN_DB_KOD_RAZD = 'DB_KOD_RAZ';
	cPROV_FN_KR_KOD_RAZD = 'KR_KOD_RAZ';
	cPROV_FN_DB_KOD_STAT = 'DB_KOD_ST';
	cPROV_FN_KR_KOD_STAT = 'KR_KOD_ST';

	//���� ����� DBF-������� ��������, ���������� �������� ��� �������
	cPROV_FT_SUMMA       = ftFloat;
	cPROV_FT_STORNO      = ftBoolean;
	cPROV_FT_ID_PROV     = ftInteger;
	cPROV_FT_DATE_REG    = ftDate;
	cPROV_FT_CR_BY_DT    = ftBoolean;
	cPROV_FT_TABLE_NUM   = ftInteger;
	cPROV_FT_DB_ID_DOC   = ftInteger;
	cPROV_FT_KR_ID_DOC   = ftInteger;
	cPROV_FT_DB_BAL_ID   = ftInteger;
	cPROV_FT_DB_SUB_ID   = ftSmallInt;
	cPROV_FT_KR_BAL_ID   = ftInteger;
	cPROV_FT_KR_SUB_ID   = ftSmallInt;
	cPROV_FT_DB_DT_PROV  = ftDate;
	cPROV_FT_KR_DT_PROV  = ftDate;
	cPROV_FT_DB_KOD_SMET = ftSmallInt;
	cPROV_FT_KR_KOD_SMET = ftSmallInt;
	cPROV_FT_DB_KOD_RAZD = ftSmallInt;
	cPROV_FT_KR_KOD_RAZD = ftSmallInt;
	cPROV_FT_DB_KOD_STAT = ftSmallInt;
	cPROV_FT_KR_KOD_STAT = ftSmallInt;

	//������ �������� ������� �� ���������� �����
	cMonthUA           : array[0..11] of String = (
        sJANUARY_UA, sFEBRUARY_UA, sMARCH_UA,
        sAPRIL_UA,   sMAY_UA,      sJUNE_UA,
        sJULY_UA,    sAUGEST_UA,   sSEPTEMBER_UA,
        sOCTOBER_UA, sNOVEMBER_UA, sDECEMBER_UA   );

	//������ �������� ������� �� ������� �����
	cMonthRUS          : array[0..11] of String = (
        sJANUARY_RUS, sFEBRUARY_RUS, sMARCH_RUS,
        sAPRIL_RUS,   sMAY_RUS,      sJUNE_RUS,
        sJULY_RUS,    sAUGEST_RUS,   sSEPTEMBER_RUS,
        sOCTOBER_RUS, sNOVEMBER_RUS, sDECEMBER_RUS   );

	//��������������� ������ �������� ���������� ����������
	cMainParams        : array[0..3] of String =  ( sSERVER, sPATH, sUSER_NAME, sPASSWORD );

	//��������������� ������ �������������� ���������� ����������
	cAdditionalParams  : array[0..2] of TParams = (
        ( Name: sCHAR_SET;      Value: cDEF_CHAR_SET    ),
        ( Name: sSQL_DIALECT;   Value: cDEF_SQL_DIALECT ),
        ( Name: sLOG_FILE_PATH; Value: sLOG_FILE_NAME   ) );

	//������ ���������� ����� DBF-������� ����������
	cProcImpDocFields  : array[0..8] of TFieldRec = (
        ( FieldName: cDOC_FN_ID_DOC;      FieldType: cDOC_FT_ID_DOC      ),
        ( FieldName: cDOC_FN_DATE_DOC;    FieldType: cDOC_FT_DATE_DOC    ),
        ( FieldName: cDOC_FN_NUM_DOC;     FieldType: cDOC_FT_NUM_DOC     ),
        ( FieldName: cDOC_FN_DATE_PROV;   FieldType: cDOC_FT_DATE_PROV   ),
        ( FieldName: cDOC_FN_SUMMA;       FieldType: cDOC_FT_SUMMA       ),
        ( FieldName: cDOC_FN_NOTE;        FieldType: cDOC_FT_NOTE        ),
        ( FieldName: cDOC_FN_FIO;         FieldType: cDOC_FT_FIO         ),
        ( FieldName: cDOC_FN_DATE_REG;    FieldType: cDOC_FT_DATE_REG    ),
        ( FieldName: cDOC_FN_ID_TYPE_DOC; FieldType: cDOC_FT_ID_TYPE_DOC ) );

	//������ ���������� ����� DBF-������� ��������
	cProcImpProvFields : array[0..19] of TFieldRec = (
        ( FieldName: cPROV_FN_ID_PROV;     FieldType: cPROV_FT_ID_PROV     ),
        ( FieldName: cPROV_FN_CR_BY_DT;    FieldType: cPROV_FT_CR_BY_DT    ),
        ( FieldName: cPROV_FN_STORNO;      FieldType: cPROV_FT_STORNO      ),
        ( FieldName: cPROV_FN_SUMMA;       FieldType: cPROV_FT_SUMMA       ),
        ( FieldName: cPROV_FN_TABLE_NUM;   FieldType: cPROV_FT_TABLE_NUM   ),
        ( FieldName: cPROV_FN_DB_BAL_ID;   FieldType: cPROV_FT_DB_BAL_ID   ),
        ( FieldName: cPROV_FN_DB_SUB_ID;   FieldType: cPROV_FT_DB_SUB_ID   ),
        ( FieldName: cPROV_FN_KR_BAL_ID;   FieldType: cPROV_FT_KR_BAL_ID   ),
        ( FieldName: cPROV_FN_KR_SUB_ID;   FieldType: cPROV_FT_KR_SUB_ID   ),
        ( FieldName: cPROV_FN_DB_DT_PROV;  FieldType: cPROV_FT_DB_DT_PROV  ),
        ( FieldName: cPROV_FN_KR_DT_PROV;  FieldType: cPROV_FT_KR_DT_PROV  ),
        ( FieldName: cPROV_FN_DB_KOD_SMET; FieldType: cPROV_FT_DB_KOD_SMET ),
        ( FieldName: cPROV_FN_KR_KOD_SMET; FieldType: cPROV_FT_KR_KOD_SMET ),
        ( FieldName: cPROV_FN_DB_KOD_RAZD; FieldType: cPROV_FT_DB_KOD_RAZD ),
        ( FieldName: cPROV_FN_KR_KOD_RAZD; FieldType: cPROV_FT_KR_KOD_RAZD ),
        ( FieldName: cPROV_FN_DB_KOD_STAT; FieldType: cPROV_FT_DB_KOD_STAT ),
        ( FieldName: cPROV_FN_KR_KOD_STAT; FieldType: cPROV_FT_KR_KOD_STAT ),
        ( FieldName: cPROV_FN_DATE_REG;    FieldType: cPROV_FT_DATE_REG    ),
        ( FieldName: cPROV_FN_DB_ID_DOC;   FieldType: cPROV_FT_DB_ID_DOC   ),
        ( FieldName: cPROV_FN_KR_ID_DOC;   FieldType: cPROV_FT_KR_ID_DOC   ) );

implementation
    

end.


