unit uUO_Resources;

interface
uses Registry, Windows;

type UORejim = (uoAdd, uoEdit, uoDelete, uoView);

function SelectLanguage   : integer; stdcall;

implementation

{ ����� �����:  0-����������, 1-�������}

function SelectLanguage: integer;
var
    reg           :TRegistry;
    RegisterValue :integer;
begin
   //������� ����� �� ��������� ����� ���������� ����
   RegisterValue:=0;
   //������ �� ��������
   reg:=TRegistry.Create;
     try
        reg.RootKey :=HKEY_CURRENT_USER;
        if reg.OpenKey('\Software\UO\Languegies\',false) then
        begin
           RegisterValue:=reg.ReadInteger('Index');
        end;
     finally
         reg.Free;
     end;
     result:=RegisterValue;
end;

end.
