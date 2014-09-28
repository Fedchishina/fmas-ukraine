unit uPRK_SP_IN_LANG;

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
  TFormPRK_SP_IN_LANG = class(TFormPrK_SpravOneLevel)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPRK_SP_IN_LANG: TFormPRK_SP_IN_LANG;

implementation
uses uPrK_Resources,uConstants;

{$R *.dfm}

procedure TFormPRK_SP_IN_LANG.FormCreate(Sender: TObject);
begin
  inherited;
  {ID_NAME ������ ������ ������ ��� ��� � SelectSQLText ����� �������� CloseOpen}
  ID_NAME              :='ID_SP_IN_LANG';
  SelectSQLText        :='Select * from PRK_SP_IN_LANG_SELECT';
  ShowNpp              := false;
  StoredProcAddName    :='PRK_SP_IN_LANG_ADD';
  StoredProcChangeName :='PRK_SP_IN_LANG_CHANGE';
  StoredProcDelName    :='PRK_SP_IN_LANG_DEL';
  NamePrKSpravEdit     := PrKSpravEditStandart;// �������� ��� �� ���� �����

  InicFormCaption      :=nFormPRK_SP_IN_LANG_Caption[IndexLanguage];

  //CheckAccessAdd    :='';
  //CheckAccessChange :='';
  //CheckAccessDel    :='';
end;

end.
