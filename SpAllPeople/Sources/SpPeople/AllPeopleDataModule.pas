unit AllPeopleDataModule;
// �� ������ ��, ������ ������? ...�� ������.
interface

uses Windows, Classes, IBase, Forms, Controls, SysUtils, Variants, AccMgmt, FIBDataSet,
    pFIBDataSet, FIBDatabase, pFIBDatabase, IniFiles, WinSock;

const
    SAP_MainInfo = '/ROOT/SpAllPeople/SAP_MainInfo';
const
    SAP_Otchestvo = '/ROOT/SpAllPeople/SAP_MainInfo/SAP_Otchestvo';
const
    SAP_PassData = '/ROOT/SpAllPeople/SAP_PassData';
const
    SAP_Info = '/ROOT/SpAllPeople/SAP_Info';
const
    SAP_Foto = '/ROOT/SpAllPeople/SAP_Foto';
const
    SAP_BankCards = '/ROOT/SpAllPeople/SAP_BankCards';
const
    cEdit = 'Edit';
const
    cView = 'View';

procedure SetUkrainian; // ����������� �� ���������� ����
function GetImageDBHandle(MAIN_DB_HANDLE: TISC_DB_HANDLE): TISC_DB_HANDLE; // �������� ����� ���� ����������
function IsPossible(AActionName: string): Boolean;
function IsAccessGranted(AObjectName, AActionName: string): Boolean;
function GetIPAddress: string;
function GetCompName: string;

implementation

procedure SetUkrainian;
begin
    LoadKeyboardLayout('00000422', KLF_ACTIVATE or KLF_SUBSTITUTE_OK);
end;

function GetImageDBHandle(MAIN_DB_HANDLE: TISC_DB_HANDLE): TISC_DB_HANDLE;
var
    CurrUserInfo: AccMgmt.TUserInfo;
    ResultInfo: AccMgmt.TResultInfo;
    DB: TpFIBDatabase;
    ReadTransaction: TpFIBTransaction;
    DSet: TpFIBDataSet;
    pShowFoto: Variant;
    F: TIniFile;
    ImagePath: string;
begin
    CurrUserInfo := AccMgmt.fibGetCurrentUserInfo;
    { ������ ��� �������� - ��������� �� ������������� ������ ����������,
      ������ ��� - �������� �� ������� ����, �.�. ���� �� ��� ����� �������� � �������}
    // ������ ���

    Result := nil;
    DB := TpFIBDatabase.Create(nil);
    ReadTransaction := TpFIBTransaction.Create(nil);
    DSet := TpFIBDataSet.Create(nil);

    ReadTransaction.DefaultDatabase := DB;
    DB.DefaultTransaction := ReadTransaction;
    DSet.Database := DB;
    DSet.Transaction := ReadTransaction;

    DB.Handle := MAIN_DB_HANDLE;
    ReadTransaction.Active := True;
    DSet.SQLs.SelectSQL.Text := 'SELECT SHOW_FOTO FROM PUB_SYS_DATA';
    DSet.Open;
    pShowFoto := DSet['SHOW_FOTO'];

    ReadTransaction.Active := False;
    DSet.Free;
    ReadTransaction.Free;
    DB.Free;

    if pShowFoto <> 1 then
        Exit; // �� �������.

    // ������ ���

    // ��������� �� ������� ���� �� �� ���� � config.ini
    F := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\config.ini');
    try
        ImagePath := F.ReadString('IMAGE_CONNECTION', 'Path', '');
    finally;
        F.Free;
    end;

    if ImagePath = '' then
        Exit; // �� �������.

    // �������� ���������� �����������
    ResultInfo := AccMgmt.fibInitImageConnection(CurrUserInfo.UserName, CurrUserInfo.Password);
    if ResultInfo.ErrorCode <> ACCMGMT_OK then // ������
        if ResultInfo.ErrorCode = -12 then
            {... �.�. ���� ������ "������ ��'� ��� ������"(� ��� ���������� ��� ���������
            �������� ����������� ���������� ���, �� �� �������� fibInitImageConnection
            ����� � ����, �������� ���������� �������, ����� �����������. ��� ��� ���,
            � �� ���� ����� ���������� ����� ����.}
        begin
            ResultInfo := AccMgmt.fibInitImageConnection(CurrUserInfo.UserName, CurrUserInfo.Password);
            if ResultInfo.ErrorCode <> ACCMGMT_OK then // ������, ���� �� ����...
                Result := nil
            else
                Result := ResultInfo.DBHandle;
        end
        else
            Result := nil
    else
        Result := ResultInfo.DBHandle;
end;

function IsPossible(AActionName: string): Boolean;
begin
    Result := False;
    if AccMgmt.fibCheckPermission('/ROOT/SpAllPeople', AActionName) = 0 then
        Result := True;
end;

function IsAccessGranted(AObjectName, AActionName: string): Boolean;
begin
    Result := False;
    if AccMgmt.fibCheckPermission(AObjectName, AActionName) = 0 then
        Result := True;
end;

function GetCompName: string;
var
    s: array[0..255] of Char;
    sLen: Longword;
begin
    sLen := 255;
    GetHostName(s, sLen);
    Result := Trim(s);
end;

function GetIPAddress: string;
var
    wVerReq: WORD;
    wsaData: TWSAData;
    i: pchar;
    h: PHostEnt;
    c: array[0..128] of char;
begin
    wVerReq := MAKEWORD(1, 1);
    WSAStartup(wVerReq, wsaData);
    GetHostName(c, 128);
    h := GetHostByName(c);
    i := iNet_ntoa(PInAddr(h^.h_addr_list^)^);
    Result := i; //O
    WSACleanup;
end;

end.
