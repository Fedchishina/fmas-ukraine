//******************************************************************************
// ������ "���������"
// ���� ������� ��������
// ���������� �.�. 2005�.
// ��������� ��������� ������ �.�. 28/10/2008
//******************************************************************************
unit cn_Common_Types;

interface

uses Classes, IBase, Forms, Types,RxMemDS;

type  TSelectMode = (SingleSelect, MultiSelect);
type  TActionMode = (View, Edit);

type TSelectSynchEDBO = record
     SynchEDBO_facul : boolean;
     SynchEDBO_spec  : boolean;
     SynchEDBO_okr   : boolean;
     SynchEDBO_kurs  : boolean;
     SynchEDBO_group : boolean;
end;


{type
  TReturnMode = record
    Mode: (Single, Multy);
   end;}

Type TcnSimpleParams = class
 public
  Owner: TComponent;
  Db_Handle: TISC_DB_HANDLE;
  Formstyle: TFormStyle;
  WaitPakageOwner : TForm;
  SMode  : TSelectMode;
  AMode  : TActionMode;
  ID_SESSION: Int64;
  Type_Report:Integer;
  Sql_Master,Sql_Detail,Report_Name:String;
  FieldView,NotFieldView,FieldNameReport:Variant;
  LastIgnor:Integer;
  Date_beg,Date_end:TDateTime;
  ID_User : Int64;
  User_Name: string;
  ID_Locate : int64;
  ID_Locate_1 : int64;
  ID_Locate_2 : int64;
  DontShowGroups : boolean;
  DontShowFacs : boolean;
  ID_PRICE: Int64;
  is_admin: boolean;   //������� ������
  is_debug : boolean;  //������� �������������� ������
  CN_USE_EDBO_FIZ_LIC : Integer; //������������ �� ���������� ���������� ��� ���� - 1 ��� ��� - 0
end;

type TcnParamsToPakage = record
  ID_DOG_ROOT : int64;
  ID_DOG      : int64;
  ID_STUD     : int64;
  ID_RATE_ACCOUNT : int64;
  ID_DOC      : int64;
  FIO         : String;
  Num_Doc     : String;
  Note        : String;
  DATE_DOG    : TDateTime;
  Summa       : Currency;
  IsWithSumma : Boolean;
  DissDownAllContract : boolean;
  Is_collect  : byte;
  IsUpload    : Boolean; // ������� �������������� ��������
  Is_Admin    : Boolean;  //������� ��������������
  BarCode     : String;
end;


type TcnSimpleParamsEx = class(TcnSimpleParams)
 public
  cnParamsToPakage : TcnParamsToPakage;
  ReturnMode : string; // Single, Multy
  // ��� ��������
  TypeDoc    : byte; // 1-����������, 2-��������������
  TR_Handle  : TISC_TR_HANDLE;
 end;

type TcnAccessResult = record
 ID_User:integer;
 Name_user:string;
 User_Id_Card:integer;
 User_Fio:string;
 DB_Handle : TISC_DB_HANDLE;
 Password: string;
end;

type TcnAcademicYear = record
 Date_Beg: TDateTime;
 Date_End: TDateTime;
end;

type TCurrentConnect = record
  Db_Handle: TISC_DB_HANDLE;
  PLanguageIndex: byte;
end;

type TDissInfo = record
     flag : Integer;
     TR_Handle: TISC_TR_HANDLE;
     Date_Diss: TDateTime;
end;


type TcnExAcademicYear = array of  TcnAcademicYear;

type TFinanceSource = record
    isEmpty     : boolean;
    ID_SMETA    : int64;
    ID_RAZDEL   : int64;
    ID_STAT     : int64;
    ID_KEKV     : int64;
    PERCENT     : Currency;
    TEXT_SMETA  :string;
    TEXT_RAZDEL :string;
    TEXT_STAT   :string;
    TEXT_KEKV   :string;
    CODE_SMETA  :string;
    CODE_RAZDEL :string;
    CODE_STAT   :string;
    CODE_KEKV   :string;
end;

type TcnSourceStudInf = record
  ID_FAC : int64;
  ID_SPEC      : int64;
end;

type TcnSourceStudInfParams = class(TcnSimpleParams)
 public
  cnSourceStudInf : TcnSourceStudInf;
 end;

type
  TcnCalcIn = record
    Owner     : TComponent;
    DB_Handle : TISC_DB_HANDLE;
    ID_STUD   : int64;
    BEG_CHECK : TDateTime;
    END_CHECK : TDateTime;
    CNUPLSUM  : Currency;
  end;

type
  TcnCalcOut = record
    CNDATEOPL  : TDateTime;
    CN_SNEED   : Currency;
    CN_SNEEDL  : Currency;
    ID_SESSION : int64;
  end;

type
  TcnPayIn = record
    Owner     : TComponent;
    DB_Handle : TISC_DB_HANDLE;
    ID_STUD   : int64;
    BEG_CHECK : TDateTime;
    END_CHECK : TDateTime;
    DATE_PROV_CHECK : byte;
    IS_DOC_GEN      : byte;
    IS_PROV_GEN     : byte;
    IS_SMET_GEN     : byte;
    NOFPROV         : byte;
    DIGNORDOCID     : int64;
  end;

type
  TcnPayOut = record
    SUMMA_ALL  : Currency;
    CNUPLSUM   : Currency;
    CNSUMDOC   : Currency;
    CNINSOST   :Currency;
    ID_SESSION : int64;
  end;

type
  TcnAnnulContractIn = record
    Owner          : TComponent;
    DB_Handle      : TISC_DB_HANDLE;
    ID_DOG_ROOT    : int64;
    ID_DOG         : int64;
    ID_STUD        : int64;
    DATE_DISS      : TDateTime;
    ID_TYPE_DISS   : int64;
    ORDER_DATE     : TDateTime;
    ORDER_NUM      : String;
    COMMENT        : String;
    IS_COLLECT     : integer;
   // ID_DOG_DISS_IN : int64;
  end;

type TcnParamsToAddContract = record
  // ��������������
  ID_DOG_STATUS : int64; // ������
  ID_DEPARTMENT : int64; // ��������� (�������������)
  ID_SPEC       : int64; // �������������
  ID_GROUP      : int64; // ������
  ID_FORM_STUD  : int64; // ����� ��������
  ID_KAT_STUD   : int64; // ��������� ��������
  ID_NATIONAL   : int64; // �����������
  KURS          : Integer;    // ����
  DATE_BEG      : TDateTime;  // ���� ������ ��������
  DATE_END      : TDateTime;  // ���� ����� ��������
  ID_MAN        : int64; // ?
end;

type TcnSimpleParamsAbiturient = class(TcnSimpleParams)
 public
  WorkMode   : string; // 'simple', 'extra'
  ActionMode : string; // 'add', 'edit'
  cnParamsToAddContract : TcnParamsToAddContract;
  cnParamsToPakage     :TcnParamsToPakage;
 end;

Type TcnView = class
 public
 ViewRX : TRxMemoryData;

end;

implementation

end.
