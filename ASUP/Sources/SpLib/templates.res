        ��  ��                  �  4   ��
 A D D T E M P L A T E       0         
{                ����� �������������� ��� ������� %t (%d)                    }
{ ������� ��������� ����� ��������������, �������� � ������ ���������� SpLib }
{                     SpLib (c) Qizz 2002-2003                               }

unit %u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, SpComboBox, Mask, CheckEditUnit, Buttons, Db, IBCustomDataSet,
  IBQuery, FieldControl, EditControl, SpCommon, PersonalCommon;

type
  T%f = class(TAddForm)
	published
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure OkButtonClick(Sender: TObject);
	public
		%e: TEditControl;
		Mode: TEditMode;
		%p: Integer;
		
		procedure Prepare(Mode: TEditMode; id: Integer);override;
		function GetId: Integer;override;
  end;

var
  %f: T%f;

implementation

{$R *.DFM}

procedure T%f.Prepare(Mode: TEditMode; id: Integer);
begin
	Self.Mode := Mode;

	if Mode=emNew then Caption := '������ ' + %d
	else if Mode = emModify then Caption := '������ ' + %d
	else Caption := '��������� ���������� �� ' + %d;

	DetailsQuery.Transaction:=PersonalCommon.ReadTransaction;

	%p := id;

	if Mode <> emNew then
	with DetailsQuery do
	begin
		Close;
		Params.ParamValues['%p'] := id;
		Open;
		if DetailsQuery.IsEmpty then
			MessageDlg('�� ������� ������ �����. ' + 
				'�������, ���� ������� ����� ����������!',
				mtError,[mbOk],0);
	end;

	%e := TEditControl.Create;
	%e.Add([%l]);
	%e.Prepare(Mode);
	%e.SetReadOnly(Mode = emView);

	OkButton.OnClick := OkButtonClick;
	OnClose := FormClose;
end;

function T%f.GetId: Integer;
begin
	Result := %p;
end;

procedure T%f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	%e.Free;
	if FormStyle = fsMDIChild then Action := caFree;
	{RegSave}
end;

procedure T%f.OkButtonClick(Sender: TObject);
var
	ok: Boolean;
begin
	%e.Read;
	if %e.CheckFill then
	begin
		if Mode = emNew then
			ok := %e.ExecProc('%ip',[]{GetIdParam})
		else    ok := %e.ExecProc('%up',[
				DetailsQuery.Params.ParamValues['%p']]);
		if not ok then ModalResult := 0;
		{DoGetId}
	end
	else	ModalResult := 0;
end;

initialization
	RegisterClass(T%f);
end.
�   0   ��
 C O P Y R I G H T       0         (c) Qizz 2002-2003 ����� SpLib ��� ���������� ������� � Interbase ���� ������ ��� ������� ������� ����������� � ������� �������� ----- It's sad that, in our blindness, we gather thorns for flowers    