program CryptSystem;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  ProcessUnit in 'ProcessUnit.pas' {ProcessForm},
  Consts in '..\Consts.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '������� ���������� ����������';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
