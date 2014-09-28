unit JO5_Types;

interface
uses Classes,IBase,Controls;

type TJo5AccessResult = record
 ID_User:integer;
 Name_user:string;
 User_Id_Card:integer;
 User_Fio:string;
 User_Password:string;
 DB_Handle:TISC_DB_HANDLE;
 DbPath:string;
end;

type TJo5SysInfo = record
 KodSystem: Integer;
 DefIdRegUch: Int64;
 KodSetup: Integer;
 CurrDate: TDate;
 IdSchTypeObj: Integer;
 SystemName: String[100];
 SetupDate: TDate;
 DefCaseKey: Integer;
 DateFirstImport: TDate;
 LanguageID: Integer;
 id_system:Integer;

{//For changing Global KodSetup
 PERIOD_GHANGE_PROC:procedure(AKodSetup:Integer);}
end;

// Type for turnover list
type TJo5SelectShc = record  //��������� ��� ������ � ������������
 SelDate: TDate;             // ��������� ���������
 SelKodSetup: Integer;
 IdSchTypeObj: Integer;
 IdRegUch: Int64;
end;

// Type for getting information about corresponding accounts
type TJo5SchKor = record
 IdRegUch: Int64;
 IdSch: Int64;
 SelDate: TDate;
 HasChildren: Boolean;
 SchTitle: String;
//��������� ������ �������� ����� � ������ �������
 Oborots: array[0..1] of extended;
end;

type TJo5Object =  class(TObject)
  DB_Handle:TISC_DB_HANDLE;
  Owner:TComponent;
  id:variant;
  User:TJo5AccessResult;
  Koment:string;
  FormType:string;
  id_system:integer;

end;
type TJo5ObjectSaldo =  class(TJo5Object)
  WhatEdit:string;
  ID_doc :variant;
  id_smeta:variant;
  id_sch  :variant;
  id_sTAT  :variant;
  id_kekv :variant;
  id_saldo:variant;
  id_razd:variant;
  razd_num:string;
  stat_num:string;
  sch_num :string;
  smet_kod:string;
  kekv_kod:string;
  razd_title:string;
  stat_title:string;
  sch_title :string;
  smet_title:string;
  kekv_title:string;
  saldo:Extended;
end;

                                                                                //Art
//type TJo5WorkRemnants =  class(TJo5Object)

//  fmType: string;

//end;


type TArrayInt64 = array of Int64;

type TArrayBoolean = array of Boolean;

type TArrayVariant = array of Variant;

//������������

	//������������� ��� ��� ��������� ��������� ������� ���������� ���������� ����� ����
type TKernelMode = ( kmNone, kmAdd, kmDelete, kmEdit );

	//������������� ��� ��� ��������� ��������� ������� ������� ��������� ������
type TManegerSchMode = ( mmNone, mmCloseSch, mmOpenSch, mmBlockSch );

	//������������� ��� ��� ����������� ������������ ���������� ������ �����������
type TManegerSchResult = ( msrError, msrOK );

	//������������� ��� ��� ��������� ��������� ������� �������� (������) �������
type TSystemMode = ( smOpen, smClose );

	//������������� ��� ��� ����������� ����� �����
type TEnm_FormStyle    = ( fsDefault, fsModal, fsMDIChild );

{	//������ ��� �������� ���������� �������� ����������� (��������)
type TRec_DBFMParams = packed record
	  Owner     : TComponent;
	  Style     : TEnm_FormStyle;
	  DBHandle  : TISC_DB_HANDLE;
	  TRRHandle : TISC_TR_HANDLE;
	end;

	//������ ��� �������� �������� ������ �������
type TRec_PeriodBorders = packed record
	  DateBeg : TDate;
	  DateEnd : TDate;
	end;

  //������ ��� �������� ������������ ��������� �������� (��������)
type TRec_SysOptions = packed record
		IdUser         : Int64;
		UsrFIO         : String;
		IsValid        : Boolean;
		UsrLogin       : String;
		UsrPassword    : String;
		KodSystem      : Integer;
		DefRegUch      : Int64;
		DateSetUp      : TDate;
		NameSystem     : String;
		RootTypeObj    : Integer;
    AppHandle      : THandle;
		AppExePath     : String;
		LogFileName    : String;
		ConnectionStr  : String;
		KodCurrPeriod  : Integer;
		DateCurrPeriod : TDate;
    DefCaseKey     : Integer;
	end;

}
implementation

end.
