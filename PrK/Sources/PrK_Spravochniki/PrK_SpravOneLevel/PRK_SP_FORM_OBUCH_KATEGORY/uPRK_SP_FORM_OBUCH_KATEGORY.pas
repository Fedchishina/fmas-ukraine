unit uPRK_SP_FORM_OBUCH_KATEGORY;

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
  TFormPRK_SP_FORM_OBUCH_KATEGORY = class(TFormPrK_SpravOneLevel)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPRK_SP_FORM_OBUCH_KATEGORY: TFormPRK_SP_FORM_OBUCH_KATEGORY;

implementation
uses uConstants;
{$R *.dfm}

procedure TFormPRK_SP_FORM_OBUCH_KATEGORY.FormCreate(Sender: TObject);
var pShowAll:Boolean;
begin
  inherited;
  pShowAll:=False;
  if Assigned(ParamSprav) then
   if Assigned(ParamSprav['Input']) then
    if Assigned(ParamSprav['Input']['ShowAll']) then
     pShowAll:=ParamSprav['Input']['ShowAll'].AsVariant;
{ID_NAME ������ ������ ������ ��� ��� � SelectSQLText ����� �������� CloseOpen}
  ID_NAME              :='ID_SP_FORM_OBUCH_KATEGORY';
  if pShowAll then
    SelectSQLText      :='Select * from PRK_SP_FORM_OBUCH_KAT_SEL_ALL'
  else
    SelectSQLText      :='Select * from PRK_SP_FORM_OBUCH_KAT_SELECT';
  ShowNpp              := false;
  StoredProcAddName    :='PRK_SP_FORM_OBUCH_KATEGORY_ADD';
  StoredProcChangeName :='PRK_SP_FORM_OBUCH_KAT_CHANGE';
  StoredProcDelName    :='PRK_SP_FORM_OBUCH_KATEGORY_DEL';
      // NamePrKSpravEdit     := PrKSpravEditStandart;// �������� ��� �� ���� �����

  InicFormCaption      :=nFormPRK_SP_FORM_OBUCH_KATEGORY_Caption[IndexLanguage];

  //CheckAccessAdd    :='';
  //CheckAccessChange :='';
  //CheckAccessDel    :='';
end;

end.
