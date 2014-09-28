unit uPRK_SP_VID_DOG;

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
  TFormPRK_SP_VID_DOG = class(TFormPrK_SpravOneLevel)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPRK_SP_VID_DOG: TFormPRK_SP_VID_DOG;

implementation
uses uConstants;
{$R *.dfm}

procedure TFormPRK_SP_VID_DOG.FormCreate(Sender: TObject);
begin
  inherited;
{ID_NAME ������ ������ ������ ��� ��� � SelectSQLText ����� �������� CloseOpen}
  ID_NAME              :='ID_SP_VID_DOG';
  SelectSQLText        :='Select * from PRK_SP_VID_DOG_SELECT';
  ShowNpp              := false;
  StoredProcAddName    :='PRK_SP_VID_DOG_ADD';
  StoredProcChangeName :='PRK_SP_VID_DOG_CHANGE';
  StoredProcDelName    :='PRK_SP_VID_DOG_DEL';
     //NamePrKSpravEdit     := PrKSpravEditStandart;// �������� ��� �� ���� �����

  InicFormCaption      :=nFormPRK_SP_VID_DOG_Caption[IndexLanguage];

  //CheckAccessAdd    :='';
  //CheckAccessChange :='';
  //CheckAccessDel    :='';
end;

end.
