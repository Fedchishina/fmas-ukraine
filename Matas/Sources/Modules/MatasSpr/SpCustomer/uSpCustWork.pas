{               "���� �������-������������ ���������, ��, ��� � ���"           }
{                                                                              }
{               (c) ������� �.�. 2004-2007                                     }
{                                                                              }
unit uSpCustWork;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Forms, Controls,
  Dialogs, DogLoaderUnit, StdCtrls, ibase, FIBDatabase, pFIBDatabase, GlobalSPR;

procedure ShowSpCustomers(AOwner:TComponent; DBHANDLE : TISC_DB_HANDLE; aID_USER : INT64);stdcall;
function GetCustomers(aOwner:TComponent; DBHANDLE : TISC_DB_HANDLE; aID_USER : INT64; aFormStyle: TFormStyle; aActualDate:TDateTime; aSelectionMode: TCustomerSelectMode; aID_CUSTOMER: int64; aID_RATE_ACCOUNT: int64; aMultiSelect: boolean; aID_SESSION:integer):Variant;stdcall;
exports ShowSpCustomers, GetCustomers;

implementation

{
 1. � uses ��������� ������ "DogLoaderUnit";
 2. � Requires ������ �������� LoadDog.dcp;
 3. � ������ ����� �������� ���������:
  var
   Res : Variant;
  begin
   Res := ShowCustomersSprav(Self, DBHandle, FormStyle, ActualDate, SelectionMode, id_customer, id_rate_account, isMultiSelect, id_session);
  end;

[III] �������� ���������� ������:
 Self          - ������������ �����;
 DBHandle      - ����� ���� ������;
 FormStyle     - ����� �����(fsNormal, fsMDIChild);
 ActualDate    - ���������� ����(���� ����� ��������� now);
 SelectionMode - ����� ������:
   * csmNone       - ��� ������;
   * csmCustomers  - ����� �����������;
   * csmRateAcc    - ����� �����;
   * csmContactMen - ����� ����;
   ����������: ������ ��������� ��������� � ������ "Globals.bpl", ������ "GlobalSPR.pas".
 id_customer     - ������������� �����������, �� ������� ���������� ����������������� ��� �������� �����������;
 id_rate_account - ������������� �����, �� ������� ���������� ����������������� ��� �������� �����������;
 isMultiSelect   - ����� �� ����������� �������������� ������ ������������(������������ ��� csmCustomers);
 }

procedure ShowSpCustomers(AOwner:TComponent; DBHANDLE : TISC_DB_HANDLE; aID_USER : INT64);stdcall;
var
 i, o : TSpravParams;
begin
 i := TSpravParams.Create;
 o := TSpravParams.Create;
 i['DataBase']     := Integer(DBHandle);
 i['FormStyle']    := fsMDIChild;
 i['bMultiSelect'] := false;
 i['id_session']   := -1;
 i['SelectMode']   := SelNone;
 LoadSprav('Customer\CustPackage.bpl', aOwner, i, o);
 if o['ModalResult'] = mrOk then
 begin
  //  ShowSpravParams(aOwner, o);
 end;
 i.Free;
 o.Free;
// ShowCustomers(AOwner, DBHANDLE, fsMDIChild, Date, csmNone, 0, 0);
end;

function GetCustomers(aOwner:TComponent; DBHANDLE : TISC_DB_HANDLE; aID_USER : INT64; aFormStyle: TFormStyle; aActualDate:TDateTime; aSelectionMode: TCustomerSelectMode; aID_CUSTOMER: int64; aID_RATE_ACCOUNT: int64; aMultiSelect: boolean; aID_SESSION:integer):Variant;stdcall;
var
 Res : Variant;
 i, o : TSpravParams;
begin

//
// Res := ShowCustomers(aOwner, DBHandle, aFormStyle, aActualDate, aSelectionMode, aID_CUSTOMER, aID_RATE_ACCOUNT);
 i := TSpravParams.Create;
 o := TSpravParams.Create;
 i['DataBase']     := Integer(DBHandle);
 i['FormStyle']    := fsNormal;
 i['bMultiSelect'] := false;
 i['id_session']   := -1;
 i['SelectMode']   := SelCustomer;
 LoadSprav('Customer\CustPackage.bpl', aOwner, i, o);
 if o['ModalResult'] = mrOk then
 begin
  Res := VarArrayCreate([0,2], varVariant);
  Res[0]:= o['ID_CUSTOMER'];
  Res[1]:= 0;
  Res[2]:= o['NAME_CUSTOMER'];
//id[0]  -������������� �����������
//id[1]  -������������� ������������ ������ ����������
//id[2]  -������������ �����������
 end;
 i.Free;
 o.Free;
 GetCustomers:=Res;

end;

end.
