�����������, ������ �� 22.03.2005

Bpl - ����� ������ �����������
Example - ������ �������������

������� ���������:
function GetNomnEx(aOwner:TComponent; {������-���������}
                   DBHANDLE : TISC_DB_HANDLE; {Handle}
                   aFS: TFormStyle;   {����� �����: fsModal ��� fsMDIChild}
                     aID_USER : INT64; {��.������������}
                     aID_NOMN: int64;  {��.������������, ���� >0, �� �������� ��������������}
                     aID_PROP: int64;  {��. ��������, ���� >0, �� ��������� ������ �� ��������}
                     aNType: integer;  {������ �� ��� �������: 0 - ���, 1 -  ���, 2 - ������}
                     aMView: integer;  {=0, ���� �� ������������ }
                     aMSelect:integer; {��� ������ �������: 
                                          0 - ����� ����� ������, 
					  1 - ����������� �������, 
					  2 - ����� ������ }
                     aLang: integer =0 {���� ����������: 0 - ������� (�� ���������), 1 - ����������}
  ):Variant;stdcall;

�������� ���������:
 Res[0] - ID_NOMN (�������������)
 Res[1] - NAME (��������)
 Res[2] - ID_UNIT (��.��.���������)
 Res[3] - UNIT (��.���������)
 Res[4] - Price (����)
 Res[5] - ID_SCH (��. �����)
 Res[6] - SCH_NAME (�������� ����� � �������)
 Res[7] - SCH_NUMBER (����� �����)
 Res[8] - LINKTO (������ �� ������)
 Res[9] - TIP (���: 0 - ������, 1 - ������������)
 Res[10]- NTYPE (��� ������������: 1 - ���, 2 - ������)

������ ������� �� 
MAT_SP_NOM_BASE (
    ID_NOMN  TKEY,
    LINKTO   TKEY,
    NOMN     TVARCHAR20,
    NAME     TVARCHAR50,
    ID_UNIT  TKEY_MAYNULL,
    PRICE    TCURRENCY,
    TIP      TBOOLEAN_EX,
    NTYPE    TSMALLINT NOT NULL,
    ID_SCH   TKEY_MAYNULL
);

������� ��������� ��������� � ������� 
PUB_SP_UNIT_MEAS (
    ID_UNIT_MEAS    TKEY,
    ID_GROUP_UNIT   TKEY,
    NAME_UNIT_MEAS  TVARCHAR100,
    SHORT_NAME      TVARCHAR100,
    COEFF           TCURRENCY,
    ID_SERVER       TINTEGER,
    USE_BEG         TTIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);