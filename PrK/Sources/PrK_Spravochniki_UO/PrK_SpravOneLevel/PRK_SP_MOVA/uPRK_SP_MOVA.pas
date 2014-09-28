unit uPRK_SP_MOVA;

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
  TFormPRK_SP_MOVA = class(TFormPrK_SpravOneLevel)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPRK_SP_MOVA: TFormPRK_SP_MOVA;

implementation
uses uPrK_Resources,uConstants;
{$R *.dfm}

procedure TFormPRK_SP_MOVA.FormCreate(Sender: TObject);
begin
  inherited;
  {ID_NAME ������ ������ ������ ��� ��� � SelectSQLText ����� �������� CloseOpen}
  ID_NAME              :='ID_SP_MOVA';
  SelectSQLText        :='Select * from PRK_SP_MOVA_SELECT';
  ShowNpp              := false;
  StoredProcAddName    :='PRK_SP_MOVA_ADD';
  StoredProcChangeName :='PRK_SP_MOVA_CHANGE';
  StoredProcDelName    :='PRK_SP_MOVA_DEL';
  NamePrKSpravEdit     := PrKSpravEditStandart;// �������� ��� �� ���� �����

  InicFormCaption      :=nFormPRK_SP_MOVA_Caption[IndexLanguage];

  //CheckAccessAdd    :='';
  //CheckAccessChange :='';
  //CheckAccessDel    :='';
end;

end.
