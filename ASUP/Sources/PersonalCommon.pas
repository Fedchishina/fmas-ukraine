{ -$Id: PersonalCommon.pas,v 1.26 2009/03/26 08:50:04 mzagurskaya Exp $}
{******************************************************************************}
{               ������������������ ������� ���������� ����������               }
{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                 ����� ������ ������� ���������� ����������                   }
{  ������������� ����������, ������� ��� ��������, ��������������� ���������   }
{                                                  �������������: ���� ������  }

unit PersonalCommon;



interface
uses
    IBDatabase, EditControl, SpComboBox, SpFormUnit, DBGrids, Forms,
    IBQuery, SpCommon, Controls, Variants, Buffer, Halcn6db, SysUtils, FR_Class,
    FIBDatabase, pFIBDatabase, ComCtrls, uCommonDB,
    uIBXCommonDB, uFIBCommonDB, Dialogs, frxClass, ibase, DB, uTableData;

type
    TMovingInfo = record
        Id_Man_Moving: Integer;
        FIO: string;
        Department_Full: string;
        PostName: string;
        Date_Beg: TDate;
        Date_End: TDate;
        Id_Work_Mode: Integer;
    end;
const

    UpdateVersion = 13;

var
    FIBDatabase: TpFIBDatabase;
    FIBWriteTransaction: TpFIBTransaction;
    FIBReadTransaction: TpFIBTransaction;
    Database: TIBDatabase;
    ReadTransaction: TIBTransaction;
    WriteTransaction: TIBTransaction;

    CurrentLogin: string;
    CurrentPassword: string;
    CurrentID_PCARD: Integer;
    CurrentUserName: string;

    DBF_PATH: string;
    IMPORT_PATH: string;

    Consts_Query: TIBQuery;
    DepNameQuery: TIBQuery;
    CurrSRQuery: TIBQuery;
    FirmQuery: TIBQuery;

    AdminMode: Boolean;
    NoPassMode: Boolean;

    CurrentDepartmentName: string;
    ProgramPath: string;
    sDesignReport: Boolean;
    GPP: Boolean;
    Test: Boolean;
    NewTable: Boolean;
    BufTran: TBufferTransaction; // ���� ���������� ��� ������ � dbf
    Version: Integer;
    ShowEasyPriem: Boolean;
    Exit_Time: Variant;
    Local_Exit_Time: Variant;
    Id_Otdel: Integer; //���������� �� ��� ������� ������������� �������
    DontWriteTableToDbf: Boolean;
    Curr_SR: Integer; // ������� ���������� �� ���������
    Developer: Boolean; // ����������� ��� ���
    Curr_Tar_Plan: Integer;
    NewOrders: Boolean;
    FirstInstall: Boolean; // �������������� ���������: ���������� ����� � �.�.
    ImportType: Integer; // ��� ��������������� �������
    ImportPeopleDbf: string; // ������ ������������� �������������� ������
    ImportPodrDbf: string;
    ImportPostDbf: string;

    NewVersion: boolean;

    IBX_DB: TDBCenter;
    FIB_DB: TDBCenter;
    Curr_DB: TDBCenter;

    TableData: TTableData;

resourcestring
    SignerSQL = 'SELECT * FROM Get_Shtat_Prop_People(:Id_Shtat_Prop, :Cur_Date)';

function Select_Man_Moving(var info: TMovingInfo; Cur_Date: TDate = 0): Boolean;

procedure Init(IBX_Database: TIBDatabase; FIB_Database: TpFIBDatabase);
procedure Done;

procedure ReadCurrSR;

function GPP_Check: Boolean;

procedure ShowError(e: Exception);

function ActionFromEditMode(Mode: TEditMode): Integer;

function CheckAccess(Path: string; Action: string; DisplayMessage: Boolean = False): Integer;

procedure Log_Action(Action: string; Info: string);

function MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Longint): Word; overload;

implementation

uses PCardsViewUnit, FieldControl, uExportReport, StdCtrls,
    AccMgmt, GoodFunctionsUnit, WorkModeCentral, TableCentral, Classes,
    qFStrings;

function MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Longint): Word;
var
    form: TForm;
    b: TButton;
    ModRes: Integer;
    i: Integer;
begin
    form := CreateMessageDialog(Msg, DlgType, Buttons);
    if DlgType = mtConfirmation then
        form.Caption := qFConfirmCaption;
    if DlgType = mtError then
        form.Caption := qFErrorCaption;

    for i := 0 to form.ComponentCount - 1 do
        if form.Components[i] is TButton then
        begin
            b := form.Components[i] as TButton;
            if b.Name = 'Yes' then b.Caption := qFYesCaption;
            if b.Name = 'No' then b.Caption := qFNoCaption;
        end;

    ModRes := form.ShowModal;
    form.Free;

    Result := ModRes;
end;

procedure Log_Action(Action: string; Info: string);
var
    query: TIBQuery;
begin
    query := TIBQuery.Create(nil);
    query.Transaction := WriteTransaction;
    query.SQL.Text := 'INSERT INTO Act_History(Name_Action, Act_Date, User_Login'
        + ',User_FIO, Info) VALUES(' + QuotedStr(Action) + ',CURRENT_TIMESTAMP,' +
        QuotedStr(CurrentLogin) + ',' + QuotedStr(CurrentUserName) + ',' +
        QuotedStr(Info) + ')';
    ExecQuery(query);
    query.Free;
end;


function CheckAccess(Path: string; Action: string;
    DisplayMessage: Boolean = False): Integer;
var
    i: Integer;
begin
    i := 0;
    if (not AdminMode) then
    begin
//      if Version=2 then           ��� �� �����! qizz
        begin
            i := fibCheckPermission(Path, Action);
            if i <> 0 then
            begin
                if DisplayMessage then
                    MessageDlg(AcMgmtErrMsg(i), mtError, [mbOk], 0);
            end;
        end;
    end;
    CheckAccess := i;
end;

function GPP_Check: Boolean;
begin
    if (not GPP) and (Version = 1) then
    begin
        MessageDlg('����������� ����� �������� ����������� ����� � ���!',
            mtError, [mbOk], 0);
        Result := False;
    end
    else
        Result := True;
end;

procedure ReadCurrSR;
begin
    CurrSRQuery.Close;
    CurrSRQuery.Open;
    CurrSRQuery.First;
    if VarIsNull(CurrSRQuery['Id_SR']) then
        Curr_SR := 1
    else
        Curr_SR := CurrSRQuery['Id_SR'];

    if VarIsNull(CurrSRQuery['Id_Tar_Plan']) then
        Curr_Tar_Plan := -1
    else
        Curr_Tar_Plan := CurrSRQuery['Id_Tar_Plan'];
end;

procedure Init(IBX_Database: TIBDatabase; FIB_Database: TpFIBDatabase);
begin
    IBX_DATABASE.Open;
    FIB_DATABASE.Open;

    IBX_DB := IBXCreateDBCenter(IBX_Database.Handle);
    FIB_DB := FIBCreateDBCenter(FIB_Database.Handle);

    PersonalCommon.Database := IBX_Database;
    PersonalCommon.ReadTransaction :=
        IBX_DB.ReadTransaction.NativeTransaction as TIBTransaction;
    PersonalCommon.WriteTransaction :=
        IBX_DB.WriteTransaction.NativeTransaction as TIBTransaction;

    PersonalCommon.FIBDatabase := FIB_Database;
    PersonalCommon.FIBReadTransaction :=
        FIB_DB.ReadTransaction.NativeTransaction as TpFIBTransaction;
    PersonalCommon.FIBWriteTransaction :=
        FIB_DB.WriteTransaction.NativeTransaction as TpFIBTransaction;

        // ������������������� SpLib
    SpInit(IBX_Database.Handle);

    EditControl.UpdateQuery.Transaction := WriteTransaction;

  // ������� ������ ��� ��������
    Consts_Query.Transaction := ReadTransaction;
    Consts_Query.SQL.Text := 'Select * from INI_ASUP_CONSTS';
    Consts_Query.Open;

   //������� ������ ��� ��������� �������� �������� ����.
    DepNameQuery.Transaction := ReadTransaction;
    DepNameQuery.SQL.Text := 'Select Name_Short, NAME_FULL FROM SP_DEPARTMENT WHERE ID_DEPARTMENT='
        + IntToStr(Consts_Query['LOCAL_DEPARTMENT']) +
        ' AND CURRENT_TIMESTAMP BETWEEN Use_Beg AND Use_End';
    DepNameQuery.Open;

        // �������� ������������� �������� ���������� �� ���������
    CurrSRQuery.Transaction := ReadTransaction;
    CurrSRQuery.SQL.Text := 'SELECT * FROM Get_Current_SR(CURRENT_DATE)';
    ReadCurrSR;

    DefaultDateBeg := Date {Consts_Query['Date_Beg']};
    DefaultDateEnd := Consts_Query['Date_End'];

   // if Consts_Query['Current_Department'] = 2612 then
        GPP := True; //
   { else
        GPP := False;}

    ProgramPath := ExtractFilePath(Application.ExeName);
    if ProgramPath = Application.ExeName then ProgramPath := '';


    BufferTable := THalcyonDataset.Create(nil);
    BufferTable.DatabaseName := Dbf_Path;

    BufferTransaction := TIBTransaction.Create(nil);
    BufferTransaction.DefaultDatabase := Database;
    BufferReadTransaction := WriteTransaction;

            // ��������� ������ ������, ���������, ���� �������
    WorkModeCenter := TWorkModeCenter.Create(ReadTransaction);
    WorkModeCenter.ReLoad;
    Calendar := TCalendar.Create(ReadTransaction);
    Calendar.ReLoad;
    AllVihods := TAllVihods.Create(ReadTransaction);
    AllVihods.ReLoad;

    Curr_DB := IBX_DB;

        // ��������� ���������� ��� ������
    TableData := TTableData.Create(nil, FIBDatabase.Handle);

    FirmQuery := TIBQuery.Create(nil);
    FirmQuery.Transaction := ReadTransaction;
    FirmQuery.SQL.Text := 'select cust.SHORT_NAME as NAME from PUB_SYS_DATA s,' +
        ' PUB_SP_CUSTOMER cust where cust.ID_CUSTOMER = s.ORGANIZATION';
    FirmQuery.Open;

    InitBuffer(WriteTransaction, ReadTransaction, DontWriteToDbf, Version = 1);
end;

procedure Done;
begin
        // ���� � �� ������ ����� ����� �������...
    try
        TableData.Free;
        SpDone;
        IBX_DB.Free;
        FIB_DB.Free;
        BufferTable.Free;
        BufferTransaction.Free;
        WorkModeCenter.Free;
        Calendar.Free;
        AllVihods.Free;
    except
    end;
end;

procedure ShowError(e: Exception);
begin
    if e.Message <> '' then
        MessageDlg('��� �������� � ���� ����� ������� �������: ' + e.Message,
            mtError, [mbOk], 0);
end;

function ActionFromEditMode(Mode: TEditMode): Integer;
begin
    if Mode = emNew then
        Result := 1
    else
        Result := 2;
end;

function Select_Man_Moving(var info: TMovingInfo; Cur_Date: TDate = 0): Boolean;
var
 //pform: TPCardsViewForm;
    new_id_pcard: integer;
    mform: TSpForm;
    params: TSpParams;
    sql: string;
    q: TIBQuery;
begin
    if Cur_Date = 0 then Cur_Date := Date;

    new_id_pcard := getpcard(Cur_date);

 //if pform.ShowModal = mrOk then
    if new_id_pcard <> -1 then
    begin
        sql := 'GET_PCARD_MOVINGS(' +
   //IntToStr(pform.ResultQuery['Id_PCard']) +
        IntToStr(new_id_pcard) + ',''' + DateToStr(Cur_Date) + ''')';

        q := TIBQuery.Create(nil);
        q.Transaction := ReadTransaction;
        q.SQL.Text := 'SELECT * FROM ' + sql;
        q.Open;
        q.FetchAll;

   // ���� � �������� ���� ����� ������, ���������� ���
        if q.RecordCount = 1 then
        begin
            with info do
            begin
                Id_Man_Moving := q['Id_Man_Moving'];
                Department_Full := q['Name_Department_Full'];
                PostName := q['Post'];
                Date_Beg := q['Date_Beg'];
                Date_End := q['Date_End'];
    //FIO := pform.ResultQuery['FIO'];
                FIO := GoodFunctionsUnit.Fam;
                Id_Work_Mode := q['Id_Work_Mode'];
            end;
            Result := True;
   //pform.Free;
            Exit;
        end;
        q.Free;

   // �������� ������ ���� ������ ���� �� ���������
        mform := TSpForm.Create(nil);
        params := TSpParams.Create;
        with params do
        begin
            IdField := 'ID_MAN_MOVING';
            SpFields := 'NAME_DEPARTMENT_FULL, POST, DATE_BEG, DATE_END, Id_Work_Mode';
            Title := '������� ����, �� ������ ' +
    //pform.ResultQuery['FIO'];
            GoodFunctionsUnit.Fam;
            ColumnNames := 'ϳ������,������, ���� �������,���� ����,-';
            ReadOnly := True;
            Table := sql;
            SpMode := spmSelect;
        end;
        mform.Init(params);
        mform.Caption := params.Title;
        with mform do
            if ShowModal = mrOk then
            begin
                with info do // ������� ������
                begin
                    Id_Man_Moving := ResultQuery['Id_Man_Moving'];
                    Department_Full := ResultQuery['Name_Department_Full'];
                    PostName := ResultQuery['Post'];
                    Date_Beg := ResultQuery['Date_Beg'];
                    Date_End := ResultQuery['Date_End'];
    //FIO := pform.ResultQuery['FIO'];
                    FIO := GoodFunctionsUnit.Fam;
                    Id_Work_Mode := ResultQuery['Id_Work_Mode'];
                end;
                Result := True;
            end
            else
                Result := False; // ������������ ��������� �� ������
        mform.Free;
        params.Free;
    end
    else
        Result := False; // ������������ ��������� �� ������
 //pform.Free;
end;

initialization
    Consts_Query := TIBQuery.Create(nil);
    DepNameQuery := TIBQuery.Create(nil);
    CurrSRQuery := TIBQuery.Create(nil);
    BufTran := TBufferTransaction.Create;

finalization
    Consts_Query.Free;
    DepNameQuery.Free;
    CurrSRQuery.Free;
    BufTran.Free;
end.
