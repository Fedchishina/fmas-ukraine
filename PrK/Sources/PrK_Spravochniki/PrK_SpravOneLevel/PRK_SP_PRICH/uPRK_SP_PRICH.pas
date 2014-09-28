unit uPRK_SP_PRICH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPrK_SpravOneLevel, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar,
  dxBarExtItems, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet, ImgList, ActnList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxStatusBar;

type
  TFormPRK_SP_PRICH = class(TFormPrK_SpravOneLevel)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPRK_SP_PRICH: TFormPRK_SP_PRICH;

implementation
uses uPrK_Resources,uConstants;
{$R *.dfm}

procedure TFormPRK_SP_PRICH.FormCreate(Sender: TObject);
begin
  inherited;
{ID_NAME ������ ������ ������ ��� ��� � SelectSQLText ����� �������� CloseOpen}
  ID_NAME              :='ID_SP_PRICH';
  SelectSQLText        :='Select * from PRK_SP_PRICH_SELECT';
  ShowNpp              := false;
  StoredProcAddName    :='PRK_SP_PRICH_ADD';
  StoredProcChangeName :='PRK_SP_PRICH_CHANGE';
  StoredProcDelName    :='PRK_SP_PRICH_DEL';
  NamePrKSpravEdit     := PrKSpravEditStandart;// �������� ��� �� ���� �����

  InicFormCaption      :=nFormPRK_SP_PRICH_Caption[IndexLanguage];

  //CheckAccessAdd    :='';
  //CheckAccessChange :='';
  //CheckAccessDel    :='';
end;

end.
