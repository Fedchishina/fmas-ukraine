unit uPrK_SP_PREDM_u;

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
  TFormPrK_SP_PREDM_u = class(TFormPrK_SpravOneLevel)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrK_SP_PREDM_u: TFormPrK_SP_PREDM_u;

implementation
uses
   uPrK_Resources,uConstants;
{$R *.dfm}

procedure TFormPrK_SP_PREDM_u.FormCreate(Sender: TObject);
begin
  inherited;
  {ID_NAME ������ ������ ������ ��� ��� � SelectSQLText ����� �������� CloseOpen}
  ID_NAME              :='ID_SP_PREDM';
  SelectSQLText        :='Select * from PRK_SP_PREDM_SELECT';
  ShowNpp              := false;
  StoredProcAddName    :='PRK_SP_PREDM_ADD';
  StoredProcChangeName :='PRK_SP_PREDM_CHANGE';
  StoredProcDelName    :='PRK_SP_PREDM_DEL';
  NamePrKSpravEdit     := PrKSpravEditStandart;// �������� ��� �� ���� �����

  InicFormCaption      :=nFormPrK_SP_PREDM_u_Caption[IndexLanguage];

  CheckAccessAdd    :='��� ������ �� ������ ������������';
  CheckAccessChange :='��� ������ �� ������ ������������';
  CheckAccessDel    :='��� ������ �� ������ ������������';
end;

end.
