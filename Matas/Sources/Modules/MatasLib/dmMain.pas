{               "���� �������-������������ ���������, ��, ��� � ���"           }
{                                                                              }
{               (c) ������� �.�. 2004-2007                                     }
{                                                                              }
unit dmMain;

interface

uses
  SysUtils, Classes, DB, DBTables,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, FIBQuery, pFIBQuery,
  pFIBStoredProc, pFIBErrorHandler;

type
  TdmMatas = class(TDataModule)
    fdbMatas: TpFIBDatabase;
    ftrReadTransaction: TpFIBTransaction;
    ftrWriteTransaction: TpFIBTransaction;
    IniDataSet: TpFIBDataSet;
    MatasStoredProc: TpFIBStoredProc;
    SetDataSet: TpFIBDataSet;
    MatasFibErrorHandler: TpFibErrorHandler;
    MatasWorkDataSet: TpFIBDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMatas: TdmMatas;

implementation


{$R *.dfm}

end.
