//******************************************************************************
// ������ "������������" (bs)
// ���� �����
// ������ �.�.
// ������ 18/01/2010
// ��������� ��������� ������ �.�. 18/01/2010
//******************************************************************************
unit uCommon_Types;

interface

uses Classes, IBase, Forms, Types, RxMemDS;

type  TSelectMode = (SingleSelect, MultiSelect);
type  TActionMode = (View, Edit);

Type TbsSimpleParams = class
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
  id_system : Byte;    //������ �������
end;

type TbsParamsToPakage = record
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
end;


type TbsSimpleParamsEx = class(TbsSimpleParams)
 public
  bsParamsToPakage : TbsParamsToPakage;
  ReturnMode : string; // Single, Multy
  // ��� ��������
  TypeDoc    : byte; // 1-����������, 2-��������������
  TR_Handle: TISC_TR_HANDLE;
 end;

type TbsAccessResult = record
  ID_User:integer;
  Name_user:string;
  User_Id_Card:integer;
  User_Fio:string;
  DB_Handle : TISC_DB_HANDLE;
  Password: string;
  is_admin : Boolean;
  id_system : Byte; //������ ����� �������
end;

type TbsAcademicYear = record
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


type TbsExAcademicYear = array of  TbsAcademicYear;

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

type TbsSourceStudInf = record
  ID_FAC : int64;
  ID_SPEC      : int64;
end;

type TbsSourceStudInfParams = class(TbsSimpleParams)
 public
  bsSourceStudInf : TbsSourceStudInf;
 end;

type
  TbsCalcIn = record
    Owner     : TComponent;
    DB_Handle : TISC_DB_HANDLE;
    ID_STUD   : int64;
    BEG_CHECK : TDateTime;
    END_CHECK : TDateTime;
    CNUPLSUM  : Currency;
  end;

type
  TbsCalcOut = record
    CNDATEOPL  : TDateTime;
    bs_SNEED   : Currency;
    bs_SNEEDL  : Currency;
    ID_SESSION : int64;
  end;

type
  TbsPayIn = record
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
  TbsPayOut = record
    SUMMA_ALL  : Currency;
    CNUPLSUM   : Currency;
    CNSUMDOC   : Currency;
    CNINSOST   :Currency;
    ID_SESSION : int64;
  end;

type
  TbsAnnulContractIn = record
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

type TbsParamsToAddContract = record
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

type TbsSimpleParamsAbiturient = class(TbsSimpleParams)
 public
  WorkMode   : string; // 'simple', 'extra'
  ActionMode : string; // 'add', 'edit'
  bsParamsToAddContract : TbsParamsToAddContract;
  bsParamsToPakage     :TbsParamsToPakage;
 end;

Type TbsView = class
 public
 ViewRX : TRxMemoryData;
end;

type TbsShortCut = record
  //������� �������
  View      : TShortCut; //��������
  Edit      : TShortCut; //��������������
  Add       : TShortCut; //��������
  Del       : TShortCut; //������
  Print     : TShortCut; //��������
  Block     : TShortCut; //�����������
  Close     : TShortCut; //�������
  Work      : TShortCut; //����������
  Done      : TShortCut; //���������
  UnDone    : TShortCut; //��������������
  Rejection : TShortCut; //���������
  Sign      : TShortCut; //���������
  Configure : TShortCut; //����������������
  UnSign    : TShortCut; //����� �������
  Change    : TShortCut; //��������
  Choice    : TShortCut; //�������
  Search    : TShortCut; //������
  StepUp    : TShortCut; //��� ������
  StepDown  : TShortCut; //��� �����
  Clear     : TShortCut; //��������
  Refresh   : TShortCut; //��������
end;

implementation

end.
