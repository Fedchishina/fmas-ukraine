{ -internal}
{-$Id: AccMGMT.pas,v 1.2 2005/11/09 11:18:49 valik Exp $}
// ������������ ���� ��� ������������ ���������� � �������:
//            "������� ���������� ��������"
//
// ���� ����������: accmgmt.dll
//
// �����������: �������� ������ ��������
// �����������: �������� ������������ �����������
// 2003 �.

// ���� � �������� ������� ����� '/'
// ��������: "/������������ ������/ ����. ���. ������/.../������������ ��� ������"
// ���� � ����� �������������

unit AccMgmt;

interface

const
     ACCMGMT_ERR_BASE                     = 0;
     ACCMGMT_OK                           = ACCMGMT_ERR_BASE;
     ACCMGMT_ERR_UNKNOWN                  = ACCMGMT_ERR_BASE - 1;
     ACCMGMT_ERR_BAD_SYSTEM_INI           = ACCMGMT_ERR_BASE - 2;
     ACCMGMT_ERR_OPEN_CONNECTION          = ACCMGMT_ERR_BASE - 3;
     ACCMGMT_ERR_BAD_PATH                 = ACCMGMT_ERR_BASE - 4;
     ACCMGMT_ERR_INSERT_OBJECT            = ACCMGMT_ERR_BASE - 5;
     ACCMGMT_ERR_UPDATE_OBJECT            = ACCMGMT_ERR_BASE - 6;
     ACCMGMT_ERR_GET_OBJECT               = ACCMGMT_ERR_BASE - 7;
     ACCMGMT_ERR_INSERT_ACTION            = ACCMGMT_ERR_BASE - 8;
     ACCMGMT_ERR_UPDATE_ACTION            = ACCMGMT_ERR_BASE - 9;
     ACCMGMT_ERR_GET_ACTION               = ACCMGMT_ERR_BASE - 10;
     ACCMGMT_ERR_INSERT_ACTION_IN_OBJECT  = ACCMGMT_ERR_BASE - 11;
     ACCMGMT_ERR_AUTH                     = ACCMGMT_ERR_BASE - 12;
     ACCMGMT_ERR_CHECK_PER_QUERY_ROLE     = ACCMGMT_ERR_BASE - 13;
     ACCMGMT_ERR_CHECK_PER_DENY           = ACCMGMT_ERR_BASE - 14;
     ACCMGMT_ERR_INSERT_ROLE              = ACCMGMT_ERR_BASE - 15;
     ACCMGMT_ERR_UPDATE_ROLE              = ACCMGMT_ERR_BASE - 16;
     ACCMGMT_ERR_GET_ROLE                 = ACCMGMT_ERR_BASE - 17;
     ACCMGMT_ERR_ACTION_ALREADY_EXISTS    = ACCMGMT_ERR_BASE - 18;
     ACCMGMT_ERR_ACTION_IN_OBJECT         = ACCMGMT_ERR_BASE - 19;
     ACCMGMT_ERR_OBJECT_ALREADY_EXISTS    = ACCMGMT_ERR_BASE - 20;
     ACCMGMT_ERR_DB_NOT_CONNECTED         = ACCMGMT_ERR_BASE - 21;
     ACCMGMT_ERR_ALREADY_NOT_CONNECTED    = ACCMGMT_ERR_BASE - 22;

// ������������� ���������� � �� ���
function InitConnection(pLogin, pPassword: string): Integer; stdcall; external 'accmgmt.dll';
// ������ ���������� � ������������ ��������
function CloseConnection: Integer; stdcall; external 'accmgmt.dll';
// ���������� ������������� ������� �� ��� ����
function GetObjectByPath(pPath: string): Integer; stdcall; external 'accmgmt.dll';
// ���������� �������� ������� �� ��� ����
function GetObjectData(var pName, pFullName: ShortString; pPath: string): Integer; stdcall; external 'accmgmt.dll';
// ������� ���������� ������� ���� �������� ������������ (id_pcard)
function GetCurrentUserIDExt: Integer; stdcall; external 'accmgmt.dll';
// ��������� ������ � ��������� ����� (����)
function AddObject(pParent, pName, pFullName: string): Integer; stdcall; external 'accmgmt.dll';
// ����������� ��������� (����) ������
function EditObject(pObject, pNewName, pNewFullName: string): Integer; stdcall; external 'accmgmt.dll';
// ��������� ��������
function AddAction(pName, pFullName: string): Integer; stdcall; external 'accmgmt.dll';
// ����������� ��������
function EditAction(pAction, pNewName, pNewFullName: string): Integer; stdcall; external 'accmgmt.dll';
// ��������� �������� � ������
function AddActionToObject(pObject, pAction: string): Integer; stdcall; external 'accmgmt.dll';
// ��������� ������� ���������� ��� ���������� ������� � ��� ��������, ��� �������� ������������
function CheckPermission(pObject, pAction: string): Integer; stdcall; external 'accmgmt.dll';

function GetUserId : Integer; stdcall; external 'accmgmt.dll';

function GetUserFIO : String; stdcall; external 'accmgmt.dll';



// ����������� ��� ������ � ��������� ���������.
// ������� ����������� � ������ ������, ����� ����
// ����������� ��������� ��������� �� ��. ����
function AcMgmtErrMsg(ErrCode: Integer): string;

implementation

function AcMgmtErrMsg(ErrCode: Integer): string;
var
   cMsg: string;
begin
     Result := '';
     if ErrCode > ACCMGMT_OK then Exit;
     case ErrCode of
       ACCMGMT_OK                           : cMsg := '������� ��������� �������';
       ACCMGMT_ERR_UNKNOWN                  : cMsg := '����������� ������';
       ACCMGMT_ERR_BAD_SYSTEM_INI           : cMsg := '���� config.ini ����������� ��� �������� ������������ ������';
       ACCMGMT_ERR_OPEN_CONNECTION          : cMsg := '������ ��� ����������';
       ACCMGMT_ERR_BAD_PATH                 : cMsg := '���� � ������� ��������';
       ACCMGMT_ERR_INSERT_OBJECT            : cMsg := '������ ��� ������� �������';
       ACCMGMT_ERR_UPDATE_OBJECT            : cMsg := '������ ��� ���������� �������';
       ACCMGMT_ERR_GET_OBJECT               : cMsg := '������ ��� ������ �������';
       ACCMGMT_ERR_INSERT_ACTION            : cMsg := '������ ��� ������� ��������';
       ACCMGMT_ERR_UPDATE_ACTION            : cMsg := '������ ��� ���������� ��������';
       ACCMGMT_ERR_GET_ACTION               : cMsg := '������ ��� ������ ��������';
       ACCMGMT_ERR_INSERT_ACTION_IN_OBJECT  : cMsg := '������ ��� ������� �������� � ������';
       ACCMGMT_ERR_AUTH                     : cMsg := '������ ��''� ��� ������';
       ACCMGMT_ERR_CHECK_PER_QUERY_ROLE     : cMsg := '������ ��� ������ ����� �������������';
       ACCMGMT_ERR_CHECK_PER_DENY           : cMsg := '������ ������';
       ACCMGMT_ERR_INSERT_ROLE              : cMsg := '������ ��� ������� ������';
       ACCMGMT_ERR_UPDATE_ROLE              : cMsg := '������ ��� ���������� ������';
       ACCMGMT_ERR_GET_ROLE                 : cMsg := '������ ��� ������ ������';
       ACCMGMT_ERR_ACTION_ALREADY_EXISTS    : cMsg := '������ �������� ��� ����������';
       ACCMGMT_ERR_ACTION_IN_OBJECT         : cMsg := '������ �������� ��� ��������� � ������';
       ACCMGMT_ERR_OBJECT_ALREADY_EXISTS    : cMsg := '������ ������ ��� ����������';
       ACCMGMT_ERR_DB_NOT_CONNECTED         : cMsg := '��� ���������� � �� ���';
       ACCMGMT_ERR_ALREADY_NOT_CONNECTED    : cMsg := '���������� ��� �����������'

     end;
     Result := cMsg;
end;

end.
