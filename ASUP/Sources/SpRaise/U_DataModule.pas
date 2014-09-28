{******************************************************************************}
{               ������������������ ������� ���������� ����������               }
{                                                                              }
{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                      ����� "���������� ��������"                             }
{                 ������ ������                                                }
{                                               �������������: �������� �����  }
unit U_DataModule;

interface

uses
  SysUtils, Classes, FIBQuery, pFIBQuery, FIBDatabase, pFIBDatabase, DB,
  FIBDataSet, pFIBDataSet;

type
  TDMod = class(TDataModule)
    FIBDatabase: TpFIBDatabase;
    FIBDataSet: TpFIBDataSet;
    FIBReadTransaction: TpFIBTransaction;
    FIBWriteTransaction: TpFIBTransaction;
    FIBQuery: TpFIBQuery;
    FIBDataSetHist: TpFIBDataSet;
    procedure FIBDataSetAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
     procedure GetText(Sender: TField; var Text:String; DisplayText:Boolean);
    { Public declarations }
  end;

var
  DMod: TDMod;

implementation

{$R *.dfm}


procedure TDMod.GetText(Sender: TField; var Text:String; DisplayText:Boolean);
begin
  if (Sender.Value='T') then
   Text := '���'
   else Text := 'ͳ';
end;


procedure TDMod.FIBDataSetAfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('Special').OnGetText:=GetText;
end;

end.
