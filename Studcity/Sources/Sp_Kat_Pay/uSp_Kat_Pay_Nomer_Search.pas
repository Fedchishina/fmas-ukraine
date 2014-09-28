//***********************************************************************
//* ������ "�����������"                                                *
//* ����� ������ �� ������                                              *
//* ��������: ���������� �.�. 2004-2005 �.                              *
//***********************************************************************
unit uSp_Kat_Pay_Nomer_Search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, st_ConstUnit, st_common_funcs;

type
  TNomer_SearchForm = class(TForm)
    N_Label: TLabel;
    Find_Button: TcxButton;
    Cancel_Button: TcxButton;
    Nomer_Edit: TcxTextEdit;
    procedure Cancel_ButtonClick(Sender: TObject);
    procedure Find_ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    PLanguageIndex: byte;
    procedure FormIniLanguage();
    procedure WMNCHitTest(var M: TWMNCHitTest); message wm_NCHitTest;
  public
    { Public declarations }
  end;

var
  Nomer_SearchForm: TNomer_SearchForm;

implementation

{$R *.dfm}

procedure TNomer_SearchForm.FormIniLanguage();
begin
 // ������ ����� (1-���, 2 - ���)
 PLanguageIndex:=              stLanguageIndex;
  Caption:=                    st_ConstUnit.st_Search_Num[PLanguageIndex];
 //�������� ������
 Find_Button.Caption :=       st_ConstUnit.st_FindNow[PLanguageIndex];
 Cancel_Button.Caption :=     st_ConstUnit.st_Cancel[PLanguageIndex];
 N_Label.Caption:=            st_ConstUnit.st_Nomer[PLanguageIndex];
end;

procedure TNomer_SearchForm.WMNCHitTest(var M: TWMNCHitTest);
begin
inherited; { ����� ��������������� ����������� }
if M.Result = htClient then{ ���� ����� �� ����? }
M.Result := htCaption; { ���� �� - �� ����� Windows ������, ��� ���� �� caption bar }
end;

procedure TNomer_SearchForm.Cancel_ButtonClick(Sender: TObject);
begin
close;
end;

procedure TNomer_SearchForm.Find_ButtonClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TNomer_SearchForm.FormCreate(Sender: TObject);
begin
FormIniLanguage();
end;

end.
