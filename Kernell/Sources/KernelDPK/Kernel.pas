unit Kernel;
interface

uses DB,IBase,Forms, FIBDataSet,Windows,SysUtils,
     pFIBDataSet, FIBDatabase, pFIBDatabase, pFibQuery,
     pFibStoredProc, GlobalSpr, Resources_unitb,  DateUtils,
     Classes, Variants ,Dialogs, WinSock, RxMemDS;

type
 {����� ��� ������������ ������ ����}
 TKernelException=class(Exception)end;
 TLockRecordException=class(Exception)end;

{�������� ���������� ��� ������ � ������������}
RESULT_STRUCTURE     = record
       RESULT_CODE    :Integer;
       RESULT_MESSAGE :String;
end;

{��������� ���������� ��� ������� ������ ���������� �� ��������}
WIZARD_GET_PROV_INFO = record

       {�������� ��� ��������� �������}
       DBHANDLE         : TISC_DB_HANDLE;  // պ��� ����������                           (������������ ��������)
       ACTUAL_DATE      : TDateTime;       // ������� ������ �������
                                           // (�� ��������� ������� ������ ������� �����)(������������ ��������)
       MODE             : Integer;         // ����� ���������������� �������(1,2,3,4)    (������������ ��������)
       WIZARD_FORM_SH   : Boolean;         // ����:���������� �� ����� ������������� � ����� ������ ������� (�� ��������� true)
       INFO_PANEL_SH    : Boolean;         // ����:���������� �� �������������� ������, �� ������� ������������ ��� ������ ������� (�� ��������� true)
       NOT_DIF_BDG_FG   : Boolean;         // ����:���������� ��������� �� ������� ��� ���������� � ��������� ����� (�� ��������� true)
       PROP_BUDG_NUM    : Integer;         // ����� �������� �� �������� ���� ����� �������� (���� 0 �� ���������� ��� �������)

       ID_LANGUAGE      : Integer;         // ���� ������� 0-�������(�� ���������), 1-����������
       SCH_SET_FLAG     : Integer;         // ����: ����� �� ������ ����������� 0-����������, 1- ���������
       CR_BY_DT         : Integer;         // ����: ����� ������ ��������� �������� 0-����������, 1-���������
       ID_FORM_UCH      : Integer;         // ������������ ������� �����
       ID_REG_UCH       : Integer;         // ������������ �������� �������������� �����
       ID_SCH_IN        : Int64;           // ������������ ������������ �����
       AOWNER           : TComponent;      // ��������� ��������� ��� ������� ����� ������(���������� ���������,����� WIZARD_FORM_SH=true)

       {�������� ��� ����������� ���������� �� ������}
       ID_OPER          : Int64;           // ������������ ��������
       KR_ID_SCH        : Int64;           // ������������ ����������� �����
       KR_ID_SCH_KOD    : String;          // ��� ����������� �����
       KR_ID_SCH_TIT    : String;          // ������������ ����������� �����

       DB_ID_SCH        : Int64;           // ������������ ���������� �����
       DB_ID_SCH_KOD    : String;          // ��� ���������� �����
       DB_ID_SCH_TIT    : String;          // ������������ ���������� �����

       {�������� ��� ����������� ���������� �� ��������}
       DB_ID_SMETA      : Int64;           // ������������� �����
       DB_KOD_SMETA     : Integer;         // ��� �����
       DB_TITLE_SMETA   : String;          // ������������ ����� (���+������������)

       DB_ID_RAZD       : Int64;           // ������������� �������
       DB_KOD_RAZD      : Integer;         // ��� �������
       DB_TITLE_RAZD    : String;          // ������������ ������� (���+������������)

       DB_ID_STAT       : Int64;           // ������������� ������
       DB_KOD_STAT      : Integer;         // ��� ������
       DB_TITLE_STAT    : String;          // ������������ ������ (���+������������)

       DB_ID_SM_GR      : Int64;           // ������������ ������ �����
       DB_KOD_SM_GR     : Integer;         // ��� ������ ����
       DB_TITLE_SM_GR   : String;          // ������������ ������ ����� (���+������������)

       DB_ID_KEKV       : Int64;           // ������������ ���� ������
       DB_KOD_KEKV      : Integer;         // ��� ���� ������
       DB_KEKV_TITLE    : String;          // ������������ ���� ������ (���+������������)

       KR_ID_SMETA      : Int64;           // ������������� �����
       KR_KOD_SMETA     : Integer;         // ��� �����
       KR_TITLE_SMETA   : String;          // ������������ ����� (���+������������)

       KR_ID_RAZD       : Int64;           // ������������� �������
       KR_KOD_RAZD      : Integer;         // ��� �������
       KR_TITLE_RAZD    : String;          // ������������ ������� (���+������������)

       KR_ID_STAT       : Int64;           // ������������� ������
       KR_KOD_STAT      : Integer;         // ��� ������
       KR_TITLE_STAT    : String;          // ������������ ������ (���+������������)

       KR_ID_SM_GR      : Int64;           // ������������ ������ �����
       KR_KOD_SM_GR     : Integer;         // ��� ������ ����
       KR_TITLE_SM_GR   : String;          // ������������ ������ ����� (���+������������)

       KR_ID_KEKV       : Int64;           // ������������ ���� ������
       KR_KOD_KEKV      : Integer;         // ��� ���� ������
       KR_KEKV_TITLE    : String;          // ������������ ���� ������ (���+������������)

       {�������� ��� ����������� ���������� �� ���������� ���������}
       FACED_FLAG       : Boolean;         // ���� (true=�������� ������ ��������� �� ������������ ��������, false=)
       FACED_ID_DOC     : Int64;           // ������������ ���������, �� �������� �������� ����� �������������� ���������
       FACED_ID_PROV    : Int64;           // ������������ ��������� �������� �� ������� ����� �������������� ���������
       FACED_CR_BY_DT   : Integer;         // ������� ���� �������� �� ������� ����� �������������� ���������
       FACED_PROV_SUMMA : Currency;        // ����� �������� �� ������� ����� �������������� ���������
       FACED_ID_DOG     : Int64;           // ������� �������� �� ������� ����� �������������� ���������
       FACED_KOD_DOG    : Int64 ;          // ��� ������� �������� �� ������� ����� �������������� ���������
       FACED_ID_MAN     : Int64;           // ��� ���� �������� �� ������� ����� �������������� ���������
       FACED_ID_PAYER   : Int64;           // ���������� �������� �� ������� ����� �������������� ���������

       {���������� �� ��������� ������}
       EXIST_DB_AN   : Boolean;            // ���� ������� ���������� ���� �� ������� ��������� �� ������
       EXIST_KR_AN   : Boolean;            // ���� ������� ���������� ���� �� ������� ��������� �� �������

       DB_ANALIZE1   : Integer;            // ��������� ���������
       DB_ANALIZE2   : Integer;            // ��������� ���������
       DB_ANALIZE3   : Integer;            // ��������� ���������
       DB_ANALIZE4   : Integer;            // ��������� ���������
       DB_ANALIZE5   : Integer;            // ��������� ���������
       DB_ANALIZE6   : Integer;            // ��������� ���������
       DB_ANALIZE7   : Integer;            // ��������� ���������
       DB_ANALIZE8   : Integer;            // ��������� ���������
       DB_ANALIZE9   : Integer;            // ��������� ���������
       DB_ANALIZE10  : Integer;            // ��������� ���������
       KR_ANALIZE1   : Integer;            // ���������� ���������
       KR_ANALIZE2   : Integer;            // ���������� ���������
       KR_ANALIZE3   : Integer;            // ���������� ���������
       KR_ANALIZE4   : Integer;            // ���������� ���������
       KR_ANALIZE5   : Integer;            // ���������� ���������
       KR_ANALIZE6   : Integer;            // ���������� ���������
       KR_ANALIZE7   : Integer;            // ���������� ���������
       KR_ANALIZE8   : Integer;            // ���������� ���������
       KR_ANALIZE9   : Integer;            // ���������� ���������
       KR_ANALIZE10  : Integer;            // ���������� ���������
end;


{�������� ���������� ��� ������ ������ ����}
KERNEL_MODE_STRUCTURE = record
          AOWNER:TComponent;
          KERNEL_ACTION:Integer;
          KEY_SESSION:Int64;
          KEY_SESSION_EX:Int64;
          WORKDATE:TDateTime;
          DBHANDLE:TISC_DB_HANDLE;
          TRHANDLE:TISC_TR_HANDLE;
          PK_ID:Int64;
          ID_PROV:Int64;
          ID_USER:INTEGER;
          DO_FLAG:INTEGER;
end;



{�������� ���������� ��� ������ ��������� ������}
KERNEL_SCH_MNGR_STRUCTURE = record
          DBHANDLE    :TISC_DB_HANDLE;
          TRHANDLE    :TISC_TR_HANDLE;
          ID_SCH      :INT64;
          MODE        :INTEGER;
          KR_SALDO_IN :Currency;
          DB_SALDO_IN :Currency;
          KR_SALDO_OUT:Currency;
          DB_SALDO_OUT:Currency;
          KR_OBOR     :Currency;
          DB_OBOR     :Currency;
          ID_USER     :INTEGER;

end;

RECORD_INFO_STRUCTURE = record
          DBHANDLE       :TISC_DB_HANDLE;
          TRHANDLE       :TISC_TR_HANDLE;
          ID_RECORD      :array of Variant;
          TABLE_NAME     :String;
          PK_FIELD_NAME  :array of Variant;
          RAISE_FLAG     :Boolean;
end;

PKERNEL_MODE_STRUCTURE     = ^KERNEL_MODE_STRUCTURE;
PKERNEL_SCH_MNGR_STRUCTURE = ^KERNEL_SCH_MNGR_STRUCTURE;
PRECORD_INFO_STRUCTURE     = ^RECORD_INFO_STRUCTURE;
PWIZARD_GET_PROV_INFO      = ^WIZARD_GET_PROV_INFO;

function  KernelDo(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):Boolean;stdcall; export;
function  KernelDoEx(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):Boolean;stdcall; export;
function  SchManager(VPKERNEL_SCH_MNGR_STRUCTURE:PKERNEL_SCH_MNGR_STRUCTURE):RESULT_STRUCTURE; stdcall; export;
function  GetDocErrors(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):Boolean; stdcall; export;
function  GetDocErrorsList(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):TStringList; stdcall; export;
function  GetDocErrorsListEx(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):TStringList; stdcall; export;
function  LockRecord(VRECORD_INFO_STRUCTURE:PRECORD_INFO_STRUCTURE):RESULT_STRUCTURE; stdcall; export;
function  WizardGetProvInfo(VWIZARD_GET_PROV_INFO:PWIZARD_GET_PROV_INFO):Boolean;stdcall;export;


implementation


uses Controls, BaseTypes;

function InitSession(DATA_STRUCTURE:POINTER; TYPE_INF:INTEGER ;var DB:TpFibDatabase; var TR:TpFibTransaction):Boolean; forward;

procedure CloseSession(var DB:TpFibDatabase; var TR:TpFibTransaction);forward;


function WizardGetProvInfo(VWIZARD_GET_PROV_INFO:PWIZARD_GET_PROV_INFO):Boolean;
var HandlePack: HModule;
    WizardProcedure:function(VWIZARD_GET_PROV_INFO:PWIZARD_GET_PROV_INFO):Boolean;stdcall;
    R:Boolean;
begin
  HandlePack:=GetModuleHandle('wizardgpi.bpl');
  if HandlePack<32
  then begin
     Screen.Cursor:=crHourGlass;
     HandlePack := LoadPackage(ExtractFilePath(Application.ExeName)+KERNEL_PATH+'wizardgpi.bpl');
     Screen.Cursor:=crDefault;
  end;
  R:=false;

  if (HandlePack > 0) then
  begin
            @WizardProcedure:=GetProcAddress(HandlePack,PChar('RunWizard'));
            if @WizardProcedure<>nil
            then R:=WizardProcedure(VWIZARD_GET_PROV_INFO);

  end;

  WizardGetProvInfo:=R;
end;


function LockRecord(VRECORD_INFO_STRUCTURE:PRECORD_INFO_STRUCTURE):RESULT_STRUCTURE;
 var RETUNRVAL:RESULT_STRUCTURE;
     KERNEL_SESSION_DB:TpFibDatabase;
     KERNEL_SESSION_TR:TpFibTransaction;
     tempQuery:TpFibDataSet;
     i,j:Integer;
     ExistErrorFlag:Boolean;
     ErrorMsg,BlockSqlText:String;
     PK_ID_TYPES:array of TFieldType;
begin
     ExistErrorFlag:=False;

     if VRECORD_INFO_STRUCTURE=nil
     then begin
                  if VRECORD_INFO_STRUCTURE^.RAISE_FLAG
                  then Raise TLockRecordException.Create('���������� ��������� ����������� ')
                  else begin
                        ExistErrorFlag:=True;
                        ErrorMsg:='���������� ��������� ����������� ';
                  end;
     end
     else begin
          if VRECORD_INFO_STRUCTURE^.DBHANDLE=nil
          then begin
               ErrorMsg:=' ���������� ���������� �� ������� ';
               ExistErrorFlag:=True;
          end;
          if VRECORD_INFO_STRUCTURE^.TRHANDLE=nil
          then begin
               ErrorMsg:=' ���������� ���������� �� ������� ';
               ExistErrorFlag:=True;
          end;
          if VRECORD_INFO_STRUCTURE^.ID_RECORD=nil
          then begin
               ErrorMsg:=' �� �������� �������� �������������� ';
               ExistErrorFlag:=True;
          end;
          if VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME=nil
          then begin
               ErrorMsg:=' �� �������� �������� �������� ����� ';
               ExistErrorFlag:=True;
          end;
          if VRECORD_INFO_STRUCTURE^.TABLE_NAME=''
          then begin
               ErrorMsg:=' �� �������� �������� ������� ';
               ExistErrorFlag:=True;
          end;

          if ExistErrorFlag
          then begin
               if VRECORD_INFO_STRUCTURE^.RAISE_FLAG
               then Raise TLockRecordException.Create(ErrorMsg);
          end;
     end;

     if not ExistErrorFlag
     then begin
          InitSession(VRECORD_INFO_STRUCTURE,2,KERNEL_SESSION_DB,KERNEL_SESSION_TR);

          {��������� ���������� �� ���������� ������� � ��}
          tempQuery:=TpFibDataSet.Create(nil);
          tempQuery.Database:=KERNEL_SESSION_DB;
          tempQuery.Transaction:=KERNEL_SESSION_TR;
          tempQuery.SelectSQL.Text:=' SELECT RDB$RELATION_ID FROM RDB$RELATIONS '+
                                    '  WHERE RDB$RELATION_NAME='+''''+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME)+'''';
          tempQuery.Open;
          tempQuery.FetchAll;
          if (tempQuery.RecordCount=1)
          then begin
              {��������� ���������� �� ����}
              for i:=0 to LENGTH(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME)-1 do
              begin
                  if tempQuery.Active then tempQuery.Close;
                  tempQuery.SelectSQL.Text:=' SELECT RDB$RELATION_FIELDS.RDB$FIELD_ID              '+
                                            '   FROM RDB$RELATION_FIELDS                           '+
                                            '  WHERE RDB$RELATION_FIELDS.RDB$RELATION_NAME='+''''+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME)+''''+
                                            '    AND RDB$RELATION_FIELDS.RDB$FIELD_NAME='+''''+TRIM(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i])+'''';
                  tempQuery.Open;
                  tempQuery.FetchAll;
                  if tempQuery.RecordCount=0
                  then begin
                       if VRECORD_INFO_STRUCTURE^.RAISE_FLAG
                       then Raise TLockRecordException.Create('�� ������� ���� '+TRIM(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i])+' � ������� '+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME))
                       else begin
                             ExistErrorFlag:=True;
                             ErrorMsg:='�� ������� ���� '+TRIM(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i])+' � ������� '+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME);
                             Break;
                       end;
                  end;
              end;
          end
          else begin
               if VRECORD_INFO_STRUCTURE^.RAISE_FLAG
               then Raise TLockRecordException.Create('�� ������� ������� '+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME)+' � �� '+KERNEL_SESSION_DB.DBName)
               else begin
                    ExistErrorFlag:=True;
                    ErrorMsg:='�� ������� ������� '+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME)+' � �� '+KERNEL_SESSION_DB.DBName;
               end;
          end;
     end;

     {������� ���������� �� ����� �����}
     if not ExistErrorFlag
     then begin
          if tempQuery.Active then tempQuery.Close;
          tempQuery.SelectSQL.Text:=' SELECT FIRST 1 * FROM '+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME);
          SetLength(PK_ID_TYPES, Length(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME));
          tempQuery.Open;

          for i:=0 to LENGTH(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME)-1 do
          begin
              for j:=0 to tempQuery.FieldCount-1 do
              begin
                  if UpperCase(tempQuery.Fields[j].FieldName)=UpperCase(TRIM(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i]))
                  then begin
                     PK_ID_TYPES[i]:=tempQuery.Fields[j].DataType;
                     Break;
                  end;
              end;
          end;

          BlockSqlText:=' SELECT 1 FROM '+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME)+' WHERE ';
          for i:=0 to LENGTH(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME)-1 do
          begin
               case PK_ID_TYPES[i] of
                    ftFixedChar, ftWideString, ftString : BlockSqlText:=BlockSqlText+VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i]+'='+''''+VarToStr(VRECORD_INFO_STRUCTURE^.ID_RECORD[i])+'''';
                    ftSmallint , ftInteger   ,
                    ftWord, ftLargeint, ftBCD           : BlockSqlText:=BlockSqlText+VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i]+'='+VarToStr(VRECORD_INFO_STRUCTURE^.ID_RECORD[i]);
                    ftFloat, ftCurrency                 : BlockSqlText:=BlockSqlText+VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i]+'='+VarToStr(VRECORD_INFO_STRUCTURE^.ID_RECORD[i]);
                    ftDate , ftDateTime                 : BlockSqlText:=BlockSqlText+VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i]+'='+''''+VarToStr(VRECORD_INFO_STRUCTURE^.ID_RECORD[i])+'''';
                    else begin
                         if VRECORD_INFO_STRUCTURE^.RAISE_FLAG
                         then Raise TLockRecordException.Create('������ ��� ��������� ���� ���� '+TRIM(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i])+' � ������� '+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME))
                         else begin
                               ExistErrorFlag:=True;
                               ErrorMsg:='������ ��� ��������� ���� ���� '+TRIM(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME[i])+' � ������� '+TRIM(VRECORD_INFO_STRUCTURE^.TABLE_NAME);
                               Break;
                         end;
                    end;
               end;
               if i<(LENGTH(VRECORD_INFO_STRUCTURE^.PK_FIELD_NAME)-1)
               then BlockSqlText:=BlockSqlText+' AND ';
          end;

          if not ExistErrorFlag
          then begin
                 BlockSqlText:=BlockSqlText+' FOR UPDATE WITH LOCK';
                 if tempQuery.Active then tempQuery.Close;
                 tempQuery.SelectSQL.Text:=BlockSqlText;
                 try
                    tempQuery.Open;
                    tempQuery.FetchAll;
                    if tempQuery.RecordCount=0
                    then begin
                         if VRECORD_INFO_STRUCTURE^.RAISE_FLAG
                         then Raise TLockRecordException.Create('������ ������������� ������ ������ 0 ������� ')
                         else begin
                               ExistErrorFlag:=True;
                               ErrorMsg:='������ ������������� ������ ������ 0 ������� ';
                         end;
                    end
                    else begin
                               ExistErrorFlag:=false;
                               ErrorMsg:='��! ������������� '+IntToStr(tempQuery.RecordCount)+' ������� ';
                    end;
                 except on E:Exception do
                        begin
                           if Pos('deadlock',E.Message)>0
                           then begin
                                if VRECORD_INFO_STRUCTURE^.RAISE_FLAG
                                then Raise TLockRecordException.Create(' ������ ��� ������������� ������ ������������� ')
                                else begin
                                     ExistErrorFlag:=true;
                                     ErrorMsg:=' ������ ��� ������������� ������ ������������� ';
                                end
                           end
                           else begin
                                if VRECORD_INFO_STRUCTURE^.RAISE_FLAG
                                then Raise TLockRecordException.Create(E.Message)
                                else begin
                                     ExistErrorFlag:=true;
                                     ErrorMsg:=E.Message;
                                end
                           end;
                        end;
                 end;
          end;
     end;

     if ExistErrorFlag
     then begin
          RETUNRVAL.RESULT_CODE   :=0;
          RETUNRVAL.RESULT_MESSAGE:=ErrorMsg;
     end
     else begin
          RETUNRVAL.RESULT_CODE   :=tempQuery.RecordCount;
          RETUNRVAL.RESULT_MESSAGE:=ErrorMsg;
     end;

     if Assigned(tempQuery)
     then begin
          if tempQuery.Active then tempQuery.Close;
          FreeAndNil(tempQuery);
     end;

     CloseSession(KERNEL_SESSION_DB,KERNEL_SESSION_TR);

     Result:=RETUNRVAL;
end;


function UnLockRecord(VRECORD_INFO_STRUCTURE:PRECORD_INFO_STRUCTURE):RESULT_STRUCTURE;
 var RETUNRVAL:RESULT_STRUCTURE;
begin
     Result:=RETUNRVAL;
end;



function SchManager(VPKERNEL_SCH_MNGR_STRUCTURE:PKERNEL_SCH_MNGR_STRUCTURE):RESULT_STRUCTURE;
var  KERNEL_SESSION_PROC:TpFibStoredProc;
     KERNEL_SESSION_DB:TpFibDatabase;
     KERNEL_SESSION_TR:TpFibTransaction;
     RESULT_DATA      :RESULT_STRUCTURE;
begin
                 InitSession(VPKERNEL_SCH_MNGR_STRUCTURE,1,KERNEL_SESSION_DB,KERNEL_SESSION_TR);
                 KERNEL_SESSION_PROC:=TpFibStoredProc.Create(nil);
                 KERNEL_SESSION_PROC.Database:=KERNEL_SESSION_DB;
                 KERNEL_SESSION_PROC.Transaction:=KERNEL_SESSION_TR;
                 KERNEL_SESSION_PROC.StoredProcName:='PUBLIC_SCH_MANAGER';
                 KERNEL_SESSION_PROC.Prepare;
                 KERNEL_SESSION_PROC.ParamByName('MODE').Value           :=VPKERNEL_SCH_MNGR_STRUCTURE^.MODE;
                 KERNEL_SESSION_PROC.ParamByName('ID_SCH').asInt64       :=VPKERNEL_SCH_MNGR_STRUCTURE^.ID_SCH;
                 if (VPKERNEL_SCH_MNGR_STRUCTURE^.MODE=1)
                 then begin
                           KERNEL_SESSION_PROC.ParamByName('OUT_DB_SALDO').AsCurrency:=VPKERNEL_SCH_MNGR_STRUCTURE^.DB_SALDO_OUT;
                           KERNEL_SESSION_PROC.ParamByName('OUT_KR_SALDO').AsCurrency:=VPKERNEL_SCH_MNGR_STRUCTURE^.KR_SALDO_OUT;
                           KERNEL_SESSION_PROC.ParamByName('IN_DB_SALDO').AsCurrency :=VPKERNEL_SCH_MNGR_STRUCTURE^.DB_SALDO_IN;
                           KERNEL_SESSION_PROC.ParamByName('IN_KR_SALDO').AsCurrency :=VPKERNEL_SCH_MNGR_STRUCTURE^.KR_SALDO_IN;
                           KERNEL_SESSION_PROC.ParamByName('DB_OBOR').AsCurrency     :=VPKERNEL_SCH_MNGR_STRUCTURE^.DB_OBOR;
                           KERNEL_SESSION_PROC.ParamByName('KR_OBOR').AsCurrency     :=VPKERNEL_SCH_MNGR_STRUCTURE^.KR_OBOR;
                 end
                 else begin
                           KERNEL_SESSION_PROC.ParamByName('OUT_DB_SALDO').AsCurrency:=0;
                           KERNEL_SESSION_PROC.ParamByName('OUT_KR_SALDO').AsCurrency:=0;
                           KERNEL_SESSION_PROC.ParamByName('IN_DB_SALDO').AsCurrency :=0;
                           KERNEL_SESSION_PROC.ParamByName('IN_KR_SALDO').AsCurrency :=0;
                           KERNEL_SESSION_PROC.ParamByName('DB_OBOR').AsCurrency     :=0;
                           KERNEL_SESSION_PROC.ParamByName('KR_OBOR').AsCurrency     :=0;
                 end;
                 KERNEL_SESSION_PROC.ParamByName('ID_USER').vaLue    :=VPKERNEL_SCH_MNGR_STRUCTURE^.ID_USER;
                 KERNEL_SESSION_PROC.ParamByName('RUN_BY_MAIN_BOOK').vaLue    :=0;

                 KERNEL_SESSION_PROC.ExecProc;
                 RESULT_DATA.RESULT_CODE   :=KERNEL_SESSION_PROC.ParamByName('RESULT').AsInteger;
                 RESULT_DATA.RESULT_MESSAGE:=KERNEL_SESSION_PROC.ParamByName('RESULT_MESSAGE').AsString;
                 KERNEL_SESSION_PROC.Free;
                 CloseSession(KERNEL_SESSION_DB,KERNEL_SESSION_TR);
                 SchManager:=RESULT_DATA;
end;

function InitSession(DATA_STRUCTURE:POINTER; TYPE_INF:INTEGER ;var DB:TpFibDatabase; var TR:TpFibTransaction):Boolean;
begin
     DB:=TpFibDatabase.Create(nil);
     DB.SQLDialect:=3;
     TR:=TpFibTransaction.Create(nil);
     DB.DefaultTransaction:=TR;
     if (TYPE_INF=0)
     then begin
            DB.Handle:=PKERNEL_MODE_STRUCTURE(DATA_STRUCTURE)^.DBHANDLE;
            TR.Handle:=PKERNEL_MODE_STRUCTURE(DATA_STRUCTURE)^.TRHANDLE;
     end;
     if (TYPE_INF=1)
     then begin
            DB.Handle:=PKERNEL_SCH_MNGR_STRUCTURE(DATA_STRUCTURE)^.DBHANDLE;
            TR.Handle:=PKERNEL_SCH_MNGR_STRUCTURE(DATA_STRUCTURE)^.TRHANDLE;
     end;
     IF (TYPE_INF=2)
     then begin
            DB.Handle:=PRECORD_INFO_STRUCTURE(DATA_STRUCTURE)^.DBHANDLE;
            TR.Handle:=PRECORD_INFO_STRUCTURE(DATA_STRUCTURE)^.TRHANDLE;
     end;

     Result:=true;
end;

procedure CloseSession(var DB:TpFibDatabase; var TR:TpFibTransaction);
begin
     TR.CloseAllQueryHandles;
     FreeAndNil(DB);
     FreeAndNil(TR);
end;

function CheckKernelSesionInfo(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):Boolean;
var R:Boolean;
begin
    R:=true;
    if (VKERNEL_MODE_STRUCTURE=nil) then Raise TKernelException.Create('����������� ��������� VKERNEL_MODE_STRUCTURE');
    Result:=R;
end;


function KernelDo(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):Boolean;
var  KERNEL_SESSION_PROC:TpFibStoredProc;
     KERNEL_SESSION_RESULT:Boolean;
     KERNEL_SESSION_DB:TpFibDatabase;
     KERNEL_SESSION_TR:TpFibTransaction;
begin
     KERNEL_SESSION_RESULT:=true;
     if CheckKernelSesionInfo(VKERNEL_MODE_STRUCTURE)
     then begin
                 InitSession(VKERNEL_MODE_STRUCTURE,0,KERNEL_SESSION_DB,KERNEL_SESSION_TR);
                 KERNEL_SESSION_PROC:=TpFibStoredProc.Create(nil);
                 KERNEL_SESSION_PROC.Database:=KERNEL_SESSION_DB;
                 KERNEL_SESSION_PROC.Transaction:=KERNEL_SESSION_TR;
                 if (VKERNEL_MODE_STRUCTURE^.KERNEL_ACTION=1)
                 then begin
                      KERNEL_SESSION_PROC.StoredProcName:='KERNEL_ADD_OBJECT';
                      KERNEL_SESSION_PROC.Prepare;
                      KERNEL_SESSION_PROC.ParamByName('KEY_SESSION').AsInt64:=VKERNEL_MODE_STRUCTURE^.KEY_SESSION;
                      KERNEL_SESSION_PROC.ParamByName('WORK_DATE').Value    :=VKERNEL_MODE_STRUCTURE^.WORKDATE;
                      KERNEL_SESSION_PROC.ParamByName('DO_DOC_FLAG').Value  :=1;
                      KERNEL_SESSION_PROC.ParamByName('ID_USER').asInt64    :=VKERNEL_MODE_STRUCTURE^.ID_USER;
                      KERNEL_SESSION_PROC.ExecProc;
                      VKERNEL_MODE_STRUCTURE^.PK_ID         :=KERNEL_SESSION_PROC.ParamByName('OUT_PK_ID').AsInt64;
                 end;
                 if (VKERNEL_MODE_STRUCTURE^.KERNEL_ACTION=2)
                 then begin
                      KERNEL_SESSION_PROC.StoredProcName:='KERNEL_DEL_OBJECT';
                      KERNEL_SESSION_PROC.Prepare;
                      KERNEL_SESSION_PROC.ParamByName('KEY_SESSION').AsInt64:=VKERNEL_MODE_STRUCTURE^.KEY_SESSION;
                      KERNEL_SESSION_PROC.ParamByName('PK_ID').AsInt64      :=VKERNEL_MODE_STRUCTURE^.PK_ID;
                      KERNEL_SESSION_PROC.ParamByName('WORK_DATE').Value    :=VKERNEL_MODE_STRUCTURE^.WORKDATE;
                      KERNEL_SESSION_PROC.ExecProc;
                      VKERNEL_MODE_STRUCTURE^.KEY_SESSION_EX:=KERNEL_SESSION_PROC.ParamByName('OUT_KEY_SESSION').AsInt64;
                      VKERNEL_MODE_STRUCTURE^.PK_ID         :=KERNEL_SESSION_PROC.ParamByName('OUT_PK_ID').AsInt64;
                 end;
                 if (VKERNEL_MODE_STRUCTURE^.KERNEL_ACTION=3)
                 then begin
                      KERNEL_SESSION_PROC.StoredProcName:='KERNEL_UPD_OBJECT';
                      KERNEL_SESSION_PROC.Prepare;
                      KERNEL_SESSION_PROC.ParamByName('KEY_SESSION').AsInt64:=VKERNEL_MODE_STRUCTURE^.KEY_SESSION;
                      KERNEL_SESSION_PROC.ParamByName('PK_ID').AsInt64      :=VKERNEL_MODE_STRUCTURE^.PK_ID;
                      KERNEL_SESSION_PROC.ParamByName('WORK_DATE').Value    :=VKERNEL_MODE_STRUCTURE^.WORKDATE;
                      KERNEL_SESSION_PROC.ParamByName('ID_USER').AsInt64    :=VKERNEL_MODE_STRUCTURE^.ID_USER;
                      KERNEL_SESSION_PROC.ExecProc;
                      VKERNEL_MODE_STRUCTURE^.KEY_SESSION_EX:=KERNEL_SESSION_PROC.ParamByName('OLD_DATA_SESSION').AsInt64;
                      VKERNEL_MODE_STRUCTURE^.PK_ID         :=KERNEL_SESSION_PROC.ParamByName('OUT_PK_ID').AsInt64;
                 end;
                 KERNEL_SESSION_RESULT:=Boolean(KERNEL_SESSION_PROC.ParamByName('RESULT').asInteger);
                 KERNEL_SESSION_PROC.Free;
                 CloseSession(KERNEL_SESSION_DB,KERNEL_SESSION_TR);
     end;
     KernelDo:=KERNEL_SESSION_RESULT;
end;


function KernelDoEx(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):Boolean;
var  KERNEL_SESSION_PROC:TpFibStoredProc;
     KERNEL_SESSION_RESULT:Boolean;
     KERNEL_SESSION_DB:TpFibDatabase;
     KERNEL_SESSION_TR:TpFibTransaction;
begin
     KERNEL_SESSION_RESULT:=true;
     if CheckKernelSesionInfo(VKERNEL_MODE_STRUCTURE)
     then begin
                 InitSession(VKERNEL_MODE_STRUCTURE,0,KERNEL_SESSION_DB,KERNEL_SESSION_TR);
                 KERNEL_SESSION_PROC:=TpFibStoredProc.Create(nil);
                 KERNEL_SESSION_PROC.Database:=KERNEL_SESSION_DB;
                 KERNEL_SESSION_PROC.Transaction:=KERNEL_SESSION_TR;
                 if (VKERNEL_MODE_STRUCTURE^.KERNEL_ACTION=1)
                 then begin
                      KERNEL_SESSION_PROC.StoredProcName:='KERNEL_ADD_OBJECT';
                      KERNEL_SESSION_PROC.Prepare;
                      KERNEL_SESSION_PROC.ParamByName('KEY_SESSION').AsInt64:=VKERNEL_MODE_STRUCTURE^.KEY_SESSION;
                      KERNEL_SESSION_PROC.ParamByName('WORK_DATE').Value    :=VKERNEL_MODE_STRUCTURE^.WORKDATE;
                      KERNEL_SESSION_PROC.ParamByName('DO_DOC_FLAG').Value  :=VKERNEL_MODE_STRUCTURE^.DO_FLAG;
                      KERNEL_SESSION_PROC.ParamByName('ID_USER').asInt64    :=VKERNEL_MODE_STRUCTURE^.ID_USER;
                      KERNEL_SESSION_PROC.ExecProc;
                      VKERNEL_MODE_STRUCTURE^.PK_ID         :=KERNEL_SESSION_PROC.ParamByName('OUT_PK_ID').AsInt64;
                 end;
                 if (VKERNEL_MODE_STRUCTURE^.KERNEL_ACTION=2)
                 then begin
                      KERNEL_SESSION_PROC.StoredProcName:='KERNEL_DEL_OBJECT';
                      KERNEL_SESSION_PROC.Prepare;
                      KERNEL_SESSION_PROC.ParamByName('KEY_SESSION').AsInt64:=VKERNEL_MODE_STRUCTURE^.KEY_SESSION;
                      KERNEL_SESSION_PROC.ParamByName('PK_ID').AsInt64      :=VKERNEL_MODE_STRUCTURE^.PK_ID;
                      KERNEL_SESSION_PROC.ParamByName('WORK_DATE').Value    :=VKERNEL_MODE_STRUCTURE^.WORKDATE;
                      KERNEL_SESSION_PROC.ExecProc;
                 end;
                 if (VKERNEL_MODE_STRUCTURE^.KERNEL_ACTION=3)
                 then begin
                      KERNEL_SESSION_PROC.StoredProcName:='KERNEL_UPD_OBJECT';
                      KERNEL_SESSION_PROC.Prepare;
                      KERNEL_SESSION_PROC.ParamByName('KEY_SESSION').AsInt64:=VKERNEL_MODE_STRUCTURE^.KEY_SESSION;
                      KERNEL_SESSION_PROC.ParamByName('PK_ID').AsInt64      :=VKERNEL_MODE_STRUCTURE^.PK_ID;
                      KERNEL_SESSION_PROC.ParamByName('WORK_DATE').Value    :=VKERNEL_MODE_STRUCTURE^.WORKDATE;
                      KERNEL_SESSION_PROC.ParamByName('ID_USER').AsInt64    :=VKERNEL_MODE_STRUCTURE^.ID_USER;
                      KERNEL_SESSION_PROC.ExecProc;
                      VKERNEL_MODE_STRUCTURE^.KEY_SESSION_EX:=KERNEL_SESSION_PROC.ParamByName('OLD_DATA_SESSION').AsInt64;
                      VKERNEL_MODE_STRUCTURE^.PK_ID         :=KERNEL_SESSION_PROC.ParamByName('OUT_PK_ID').AsInt64;
                 end;
                 KERNEL_SESSION_RESULT:=Boolean(KERNEL_SESSION_PROC.ParamByName('RESULT').asInteger);
                 KERNEL_SESSION_PROC.Free;
                 CloseSession(KERNEL_SESSION_DB,KERNEL_SESSION_TR);
     end;
     KernelDoEX:=KERNEL_SESSION_RESULT;
end;


function GetDocErrorsListEx(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):TStringList;
var KERNEL_SESSION_DS:TpFibDataSet;
    KERNEL_SESSION_DB:TpFibDatabase;
    KERNEL_SESSION_TR:TpFibTransaction;
    ReturnList:TStringList;
    i:Integer;
begin
    ReturnList:=nil;
    if CheckKernelSesionInfo(VKERNEL_MODE_STRUCTURE)
    then begin
            InitSession(VKERNEL_MODE_STRUCTURE,0,KERNEL_SESSION_DB,KERNEL_SESSION_TR);
            KERNEL_SESSION_DS:=TpFibDataSet.Create(nil);
            KERNEL_SESSION_DS.Database   :=KERNEL_SESSION_DB;
            KERNEL_SESSION_DS.Transaction:=KERNEL_SESSION_TR;
            KERNEL_SESSION_DS.SelectSQL.Text:='SELECT * FROM KERNEL_DOCS_ERRORS WHERE KEY_SESSION='+IntToStr(VKERNEL_MODE_STRUCTURE^.KEY_SESSION);
            KERNEL_SESSION_DS.Open;
            KERNEL_SESSION_DS.FetchAll;
            KERNEL_SESSION_DS.First;
            ReturnList:=TStringList.Create;
            for i:=0 to KERNEL_SESSION_DS.RecordCount-1 do
            begin
                ReturnList.Add(KERNEL_SESSION_DS.FieldByName('ERROR_MESSAGE').AsString);
                KERNEL_SESSION_DS.Next;
            end;

            KERNEL_SESSION_DS.Close;
            KERNEL_SESSION_DS.SelectSQL.Text:='SELECT * FROM KERNEL_PROVS_ERRORS WHERE KEY_SESSION='+IntToStr(VKERNEL_MODE_STRUCTURE^.KEY_SESSION)+
                                                                                 '  OR KEY_SESSION='+IntToStr(VKERNEL_MODE_STRUCTURE^.KEY_SESSION_EX);
            KERNEL_SESSION_DS.Open;
            KERNEL_SESSION_DS.FetchAll;
            KERNEL_SESSION_DS.First;
            for i:=0 to KERNEL_SESSION_DS.RecordCount-1 do
            begin
                ReturnList.Add(KERNEL_SESSION_DS.FieldByName('ERROR_MESSAGE').AsString);
                KERNEL_SESSION_DS.Next;
            end;

            CloseSession(KERNEL_SESSION_DB,KERNEL_SESSION_TR);
    end;
    GetDocErrorsListEx:=ReturnList;
end;



function GetDocErrorsList(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):TStringList;
var KERNEL_SESSION_DS:TpFibDataSet;
    KERNEL_SESSION_DB:TpFibDatabase;
    KERNEL_SESSION_TR:TpFibTransaction;
    ReturnList:TStringList;
    i:Integer;
begin
    ReturnList:=nil;
    if CheckKernelSesionInfo(VKERNEL_MODE_STRUCTURE)
    then begin
            InitSession(VKERNEL_MODE_STRUCTURE,0,KERNEL_SESSION_DB,KERNEL_SESSION_TR);
            KERNEL_SESSION_DS:=TpFibDataSet.Create(nil);
            KERNEL_SESSION_DS.Database   :=KERNEL_SESSION_DB;
            KERNEL_SESSION_DS.Transaction:=KERNEL_SESSION_TR;
            KERNEL_SESSION_DS.SelectSQL.Text:='SELECT * FROM KERNEL_DOCS_ERRORS WHERE KEY_SESSION='+IntToStr(VKERNEL_MODE_STRUCTURE^.KEY_SESSION);
            KERNEL_SESSION_DS.Open;
            KERNEL_SESSION_DS.FetchAll;
            KERNEL_SESSION_DS.First;
            ReturnList:=TStringList.Create;
            for i:=0 to KERNEL_SESSION_DS.RecordCount-1 do
            begin
                ReturnList.Add(KERNEL_SESSION_DS.FieldByName('ERROR_MESSAGE').AsString);
                KERNEL_SESSION_DS.Next;
            end;
            CloseSession(KERNEL_SESSION_DB,KERNEL_SESSION_TR);
    end;
    GetDocErrorsList:=ReturnList;
end;

function GetDocErrors(VKERNEL_MODE_STRUCTURE:PKERNEL_MODE_STRUCTURE):Boolean;
begin
     result:=false;
end;






end.
