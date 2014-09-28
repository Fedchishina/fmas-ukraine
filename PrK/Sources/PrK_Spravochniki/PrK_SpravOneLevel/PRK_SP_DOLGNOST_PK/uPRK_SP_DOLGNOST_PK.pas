unit uPRK_SP_DOLGNOST_PK;

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
  TFormPRK_SP_DOLGNOST_PK = class(TFormPrK_SpravOneLevel)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPRK_SP_DOLGNOST_PK: TFormPRK_SP_DOLGNOST_PK;

implementation
uses uPrK_Resources,uConstants;
{$R *.dfm}

procedure TFormPRK_SP_DOLGNOST_PK.FormCreate(Sender: TObject);
begin
  inherited;
 {ID_NAME ������ ������ ������ ��� ��� � SelectSQLText ����� �������� CloseOpen}
  ID_NAME              :='ID_SP_DOLGNOST_PK';
  SelectSQLText        :='Select * from PRK_SP_DOLGNOST_PK_SELECT';
  ShowNpp              := false;
  StoredProcAddName    :='PRK_SP_DOLGNOST_PK_ADD';
  StoredProcChangeName :='PRK_SP_DOLGNOST_PK_CHANGE';
  StoredProcDelName    :='PRK_SP_DOLGNOST_PK_DEL';
  NamePrKSpravEdit     := PrKSpravEditStandart;// �������� ��� �� ���� �����

  InicFormCaption      :=nFormPRK_SP_DOLGNOST_PK_Caption[IndexLanguage];

  //CheckAccessAdd    :='';
  //CheckAccessChange :='';
  //CheckAccessDel    :='';
end;

end.
