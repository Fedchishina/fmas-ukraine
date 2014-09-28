unit uNeTypes;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uNeTypes                                                                   *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	���������������� �������� ���������������� �����, �������� � ��.           *
*                                                                              *
* Copyright  �  ���� ��������: 04.05.07,  �����: ������� �.�                  *
*                                                                              *
*******************************************************************************}

interface

uses DB;

type

  //������������ ��� ��� �������� ���� ���������� ������
  TEnm_TypeParam   = ( tpInput, tpOutput, tpInputOutput );
   
  //������ ��� �������� ��������� �����
  TRec_FieldDefs = record
      FName : String;
      FType : TFieldType;
  end; 

  //������ �������, ���������� �������� �����
  TArr_FieldDefs = array of TRec_FieldDefs;
   
  //������ ��� �������� �������� ��������(���������) ����������
  TRec_Params = record
      FInParams  : TArr_FieldDefs;
      FOutParams : TArr_FieldDefs;
  end; 

const

	{*****************************************}
    {   *** ��������� ������ ���������� ***   }
    {*****************************************}

    cZERO             = 0;
    cTICK             = '''';
    cCOMMA            = ',';
    cCOLON            = ':';
    cSPACE            = ' ';
    cUNKNOWN_ID       = -1; 
    cBRACKET_OPEN     = '(';
    cBRACKET_CLOSE    = ')';
    cDEF_ADMIN_MODE   = 0;
    cDEF_SHOW_STYLE   = 0;
    cDEF_SELECT_MODE  = 1;
    cDEF_NEW_VERSHION = 1;

resourcestring

    {***************************************}
    {   *** ������� ������ ���������� ***   }
    {***************************************}

	//������������ ��������� �� ������
	sErrorTextUA    = '       �������: ';
	sErrorCodeUA    = '��� �������: ';
	sErrorAddrUA    = '������ �������: ';
	sContinueQstUA  = ' ����������?';
	sErrorTextExtUA = '�������: ';

	sMsgCaptionErrUA = '�������';
	sMsgCaptionWrnUA = '������������';
	sMsgCaptionInfUA = '����������';
	sMsgCaptionQstUA = 'ϳ�����������';

    //����� �������� ���������� ������
    sPN_IN_Mode     = 'Mode';
    sPN_IN_DBHandle = 'DBHandle';

    //��������� �������������� ��������
    sEFieldUA          = '���� ';
    sENotFoundUA       = ' �� ��������!';
    sEDBHandleZeroUA   = ' ������������� �''������� �������!';
    sEFldValIsNullUA   = ' �� ���������!';
    sEEmptyParamListUA = '������ ���������';

implementation

end.
 