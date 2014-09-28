{*******************************************************************************
* uAddressLinMain                                                              *
*                                                                              *
* ������� ������ ����������� �������� �������                                  *
* Copyright �  2005, ���� �. ������, �������� ������������ �����������         *
*******************************************************************************}


unit uAddressLinMain;

interface

uses    uCommonSp, DB, Forms, Dialogs, Controls, IBase;

type
    TAddressLinSprav = class(TSprav)
    private
        IsConnected: Boolean;
        procedure PrepareConnect;
    public
        constructor Create;
        destructor  Destroy;override;
        procedure   Show;override;
        procedure   GetInfo;override;
        function    Exists: boolean;override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

implementation

uses Variants, SysUtils, uAddressCommon;

function CreateSprav: TSprav;
begin
    Result := TAddressLinSprav.Create;
end;

constructor TAddressLinSprav.Create;
begin
    inherited Create;

        // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_Address', ftInteger);
    Input.FieldDefs.Add('bone_adrr', ftString, 255);

    Output.FieldDefs.Add('Ret_Address', ftInteger);
    Output.FieldDefs.Add('Address_String', ftString, 255);

        // ����������� ���������
    PrepareMemoryDatasets;
end;

destructor TAddressLinSprav.Destroy;
begin
    inherited Destroy;

    if IsConnected then AddressDone;
end;

        // ����������� ���������� � �����
procedure TAddressLinSprav.PrepareConnect;
var
    hnd: Integer;
begin
    hnd   := Input['DBHandle'];

    AddressInit(TISC_DB_Handle(hnd), 2);

    IsConnected := True;
end;


procedure TAddressLinSprav.Show;
var
    res: Variant;
    adrString: String;
    addrb : string;
begin
    if not IsConnected then PrepareConnect;

    if VarIsNull(Input['bone_adrr']) or VarIsEmpty(Input['bone_adrr']) then
        addrb := 'lp'
    else addrb := Input['bone_adrr'];

    res := EditAddress(Input['Id_Address'], AdrString, addrb);
    if not VarIsNull(res) then
    begin
        Output.Append;
        Output['Ret_Address'] := res;
        Output['Address_String'] := AdrString;
        Output.Post;
    end;
end;

function    TAddressLinSprav.Exists: boolean;
begin
    if not IsConnected then PrepareConnect;
    Result := True;
end;

procedure   TAddressLinSprav.GetInfo;
begin
    if not IsConnected then PrepareConnect;
end;

end.

