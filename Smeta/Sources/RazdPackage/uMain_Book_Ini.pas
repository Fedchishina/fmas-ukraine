unit uMain_Book_Ini;


interface

type TConfigConnStructure=record
     DB_PATH       : ShortString;
     DB_SERVER     : ShortString;
     DB_USER       : ShortString;
     DB_PASSWORD   : ShortString;
     end;

TViewMode = (vmFixSch, vmFixProp);
TPropType = (ptSch, ptOper, ptRazdSt, ptKekv);
TRazdStViewMode = (allEnable, allData, allEnableValid);
TRazdStChMode = (cmNone, cmRazd, cmSt);

resourcestring
    ErrorCaption =      '�������� ������!';
    WarningCaption=     '��������!';

    PingError =         '������ �� �������� �� TCP/IP �������. �������� ��������� � ���� ��� �� ��������. ���������� � ���������� ��������������.';
    OpenConfigError =   '���������� ������� ���� �������������. ���������� � ���������� ��������������.';
    OpenDBError =       '���������� �������������� � ���� ������. ���������� � ���������� ��������������.';
    CountLevelError=    '�������� ������� ��������� ��������� �������.';
    TitleError     =    ' �� ����� ��������� �������';
    TypeError      =    ' �� ����� ��� �������';
    KodError       =    ' �� ����� ��� �������';
    DeleteConfirmation= '�� ������������� ������ ������� ������?';
    HasChildError=      ' ������ ������ ����� ��������, ������� �� ����� ���� ������.';
    DistanceError=      ' ��������� ���������� �������� ��������';
    PropError=          ' C ������ �������� ����������� �� ������� ��������';
    OperError=          ' C ������ �������� ����������� �� ������� ��������';
    PropDelError=       ' ������ ������� �������� ��� ��� ��� ��� �� ����������� ';
    DateError   =       ' ������ ��� ������� �������� ';
    MinDateError   =    ' ���� ������ ������� �� ����� ���� ������ ���������� ���� ������ ������� ����� ';
    StError   =         ' ������ �� ����� ��������� ���� �� ���� ';
    ChooseStError   =   ' �� ������ ������� ������  ';
    ChooseRzError   =   ' �� ������ ������� ������  ';

    Yes_const      =   '��';
    No_const       =   '���';
    OperPropError=' �� ��� �������� �������� ������';
    HieracChooseError =' ���������� ������� ������ ������';
    Month_01  = '������   ';
    Month_02  = '�������  ';
    Month_03  = '����     ';
    Month_04  = '������   ';
    Month_05  = '���      ';
    Month_06  = '����     ';
    Month_07  = '����     ';
    Month_08  = '������   ';
    Month_09  = '�������� ';
    Month_10  = '�������  ';
    Month_11  = '������   ';
    Month_12  = '�������  ';
    CHECK_OPER_ID_EQUALITY_ERROR='���� �� ����� ������������������� ��� � �����';



const INI_FILENAME        : String       = 'config.ini';
      BASE_YEAR           : Integer      = 2000;
      YEARS_COUNT         : Integer      = 25;
      DEFAULT_ROOT_ID     : Integer      = 1;

function MonthTitle(ADate:TdateTime):String;



var
   APP_PATH         :  string;
   DB_PATH          :  string;
   DB_USER          :  string;
   DB_PASSWORD      :  string;
   DB_SERVER        :  string;
   CORRECT_CONFIG   :  boolean;
   CORRECT_CONNECT  :  boolean;


implementation

uses DateUtils;


function MonthTitle(ADate:TdateTime):String;
var Num:WORD;
begin
    Num:=MonthOf(ADate);
    if Num=1  then  MonthTitle:=Month_01;
    if Num=2  then  MonthTitle:=Month_02;
    if Num=3  then  MonthTitle:=Month_03;
    if Num=4  then  MonthTitle:=Month_04;
    if Num=5  then  MonthTitle:=Month_05;
    if Num=6  then  MonthTitle:=Month_06;
    if Num=7  then  MonthTitle:=Month_07;
    if Num=8  then  MonthTitle:=Month_08;
    if Num=9  then  MonthTitle:=Month_09;
    if Num=10 then  MonthTitle:=Month_10;
    if Num=11 then  MonthTitle:=Month_11;
    if Num=12 then  MonthTitle:=Month_12;
end;



initialization

   DB_USER      :='SYSDBA';
   DB_PASSWORD  :='masterkey';
   DB_SERVER    :='localhost';
   CORRECT_CONFIG   :=false;
   CORRECT_CONNECT  :=false;


end.
