{******************************************************************************}
{               ������������������ ������� ���������� ����������               }
{                                                                              }
{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                      ����� "���������� �������"                             }
{                 ������ ������                                                }
{                                               �������������: �������� �����  }
unit U_SPRegardsDM;

interface

uses
  SysUtils, Classes, FIBQuery, pFIBQuery, FIBDatabase, pFIBDatabase, DB,
  FIBDataSet, pFIBDataSet, pFIBStoredProc, SpCommon;

type
  TDMSPRegards = class(TDataModule)
    FIBDatabase: TpFIBDatabase;
    FIBDataSetFull: TpFIBDataSet;
    FIBReadTransaction: TpFIBTransaction;
    FIBWriteTransaction: TpFIBTransaction;
    FIBQuery: TpFIBQuery;
    FIBDSAllProp: TpFIBDataSet;
    FIBDSProp: TpFIBDataSet;
    FIBSPAddReg: TpFIBDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSPRegards: TDMSPRegards;

implementation

{$R *.dfm}

end.
