//***********************************************************************
//* ������ "�����������"                                                *
//* ������ ������ (��������� ��� �����������)                           *
//* ��������: ���������� �.�. 2004-2005 �.                              *
//***********************************************************************
unit DataModule1_Unit;

interface

uses
  Windows, Graphics, Forms, Messages, ExtCtrls, ComCtrls, StdActns, ShellAPI,

  SysUtils, Classes, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet, Controls,
  FIBQuery, pFIBQuery, pFIBStoredProc, pFIBErrorHandler, FIB, StdCtrls, Dialogs, ToolWin;

type
  TDataModule1 = class(TDataModule)
    DB: TpFIBDatabase;
    WriteTransaction: TpFIBTransaction;
    ReadTransaction: TpFIBTransaction;
    ReadTimestampDataSet: TpFIBDataSet;
    DataSet_main: TpFIBDataSet;
    DataSet_read: TpFIBDataSet;
    StoredProc: TpFIBStoredProc;
    procedure DBAfterRestoreConnect;
    procedure DBLostConnect(Database: TFIBDatabase;
      E: EFIBError; var Actions: TOnLostConnectActions);
  private
    //--------------------------------------------------------------------------
  public
    CURRENT_TIMESTAMP : TDatetime;
  end;

var
  DataModule1: TDataModule1;

implementation

uses Main, ST_DT_SQL_WaitForm;

{$R *.dfm}

procedure TDataModule1.DBAfterRestoreConnect;
begin
MessageDlg('���������� � ����� ������ ���� �������������!',
       mtInformation, [mbOk], 0  );
       Screen.Cursor:=crDefault;
       SQL_Wait_Form.Free;
MainForm.StatusBar.Panels[1].Text:='���������� ������ �������������';
end;

procedure TDataModule1.DBLostConnect(Database: TFIBDatabase;
  E: EFIBError; var Actions: TOnLostConnectActions);
//var
//    i:Integer;
begin
  If MessageBox(Application.Handle,PChar('��������! ���������� � ����� ������ ��������! ���������� ������������ ���������� ?'),'������ ����',MB_YESNO or MB_ICONQUESTION)= mrYes then
   begin
    MessageDlg('� ������� ������ ���������� ������������� ����� �������� ����������� ����������. ����������, ���������...',
              mtInformation, [mbOk], 0);
    MainForm.Update;
    Screen.Cursor:=crHourGlass;
    SQL_Wait_Form:= TSQL_Wait_Form.Create(Self);
    SQL_Wait_Form.Zapis_Label.Caption:='�������������� �����';
    SQL_Wait_Form.Show;
    SQL_Wait_Form.FormStyle:=fsStayOnTop;
    SQL_Wait_Form.Update;
    Actions := laWaitRestore;
   end
  else
   begin
    MessageDlg('���������� ����� �������. ���������� � �������������� ����.',
       mtInformation, [mbOk], 0);
    Actions := laTerminateApp;
   end
end;

end.

