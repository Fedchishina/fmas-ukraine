{ -internal}
{-$Id: EditControl.pas,v 1.1.1.1 2005/07/07 10:35:18 oleg Exp $}

{****************************************************************************}
{                            ����� SpLib                                     }
{             ���������� ������ � Interbase ��� Delphi 5                     }
{                        (c) Qizz 2002-2003                                  }
{       ( ���� ������ ��� ������� ������� �����������, ������� �������� )    }
{               ���������������� �� ������ ��������������                    }
{****************************************************************************}

{         ����� TEditControl - ���������� �������� FieldControl'��           }
{         ���������������� ����, �����������, �������� � ������ ����� ��     } 

unit EditControl;

interface

uses	FieldControl, IBQuery, SysUtils, Dialogs, SpCommon,Variants,SpTimeUtils,
        Graphics, Windows;

type

  TEditControl = class(TObject)
  private
	FFieldControls: array of TFieldControl;
  public
	function	ExecProc(ProcName: String; MoreData: array of const;
					GetId: Boolean = False): Boolean;

	procedure	Add(a: array of TFieldControl);
	procedure	Read;
	function	Changed: Boolean;
	procedure	Prepare(Mode: TEditMode);
	function	CheckFill: Boolean;
	procedure	SetReadOnly(b: Boolean);
  end;

  function	ValueToStr(Value: Variant): String;
  function	VarRecToStr(Value: TVarRec): String;

  procedure	Flip(FirstGroup: array of TFieldControl;
			SecondGroup: array of TFieldControl;
				ActivateFirst: Boolean;
					Mode: TFlipMode = fmDisable);

var
  UpdateQuery: TIBQuery;
  LastId: Integer;

implementation

function TEditControl.ExecProc(ProcName: String; MoreData: array of const;
		GetId: Boolean = False ): Boolean;
var
	i: Integer;
	intran: Boolean;
begin
	LastId := -1;
	with UpdateQuery do
	begin
		SQL.Clear;
			// ������������ ������ � ����������� �� ����,
			// ����� �� �������� ������������� �� ���������
		if GetId then	SQL.Add('SELECT * FROM ' + ProcName + '(')
		else		SQL.Add('EXECUTE PROCEDURE ' + ProcName + ' ');
			// �������� �� FieldControl'�� � �������� �� ��������
			// � ��������� ��������� � ��������� ����
		for i:=0 to High(FFieldControls) do
		with FFieldControls[i] do
		if  NeedUpdate then
		begin
			if Required and VarIsNull(Value) then
				Value := DefaultValue;
			SQL.Add(ValueToStr(Value));
			SQL.Add(',');
		end;
			// ������� ��������� �������
		SQL.Delete(SQL.Count-1);
			// �������� � ��������� �������������� ������
		for i:=0 to High(MoreData) do
			SQL.Add(',' + VarRecToStr(MoreData[i]));
		if GetId then SQL.Add(')');

			// ���� �� � ����������, ������ �����
		intran := Transaction.InTransaction;
		if not intran then Transaction.StartTransaction;

		try
				// ��������� ������, �������� �������������
			LastId := ExecQuery(UpdateQuery);
				// ���� �����, ������� �� ���� � ��������
				// ����������, ���� ��� �� ���� ������ �� ���
		except on E:Exception do
		begin
			MessageDlg('��� �������� � ���� ����� ������� �������: '
				+ E.Message, mtError, [mbOk], 0);
			Result := False;   // ���������� ������
			if Transaction.InTransaction and not intran then
				Transaction.Rollback;
			Exit;
		end;
		end;
		Result := True;	// ���������� Ok
		// ���� ���������� �� ���� �������� �� ���, ����������� ��
		if Transaction.InTransaction and not intran then
			Transaction.Commit;
	end;
end;

procedure	Flip(FirstGroup: array of TFieldControl;
				SecondGroup: array of TFieldControl;
					ActivateFirst: Boolean;
						Mode: TFlipMode);
var
	i: Integer;
begin
	for i:=0 to High(FirstGroup) do
	with FirstGroup[i] do
	begin
		Required := ActivateFirst;
		SetReadOnly(not ActivateFirst);
		if not ActivateFirst then
		begin
			Value := DefaultValue;
			Show;
		end;
		if (Mode = fmHide) and (Control <> nil) then
			Control.Visible := ActivateFirst;
	end;

	for i:=0 to High(SecondGroup) do
	with SecondGroup[i] do
	begin
		Required := not ActivateFirst;
		SetReadOnly(ActivateFirst);
		if ActivateFirst then
		begin
			Value := DefaultValue;
			Show;
		end;
		if (Mode = fmHide) and (Control <> nil) then
				Control.Visible := not ActivateFirst;
	end;
end;

function ValueToStr(Value: Variant): String;
var
	ds: Char;
begin
	if  VarIsNull(Value) then Result := 'Null'
	else
	if VarType(Value) = varString then
		Result := QuotedStr(Value)
	else
	if VarType(Value) = varDate then
        if Value  < StrToDate('01.01.1900') then
    		Result := '''' + EncodeTimeString(Value, False) + ''''
        else Result := '''' + DateTimeToStr(Value) + ''''
	else
	if VarType(Value) = varInteger then
		Result := IntToStr(Value)
	else
	if VarType(Value) = varDouble then
	begin
	       	ds := DecimalSeparator;
		DecimalSeparator := '.';
		Result := FloatToStr(Value);
		DecimalSeparator := ds;
	end
	else	Result := Value;
end;

function VarRecToStr(Value: TVarRec): String;
begin
  if Value.VType = vtAnsiString then
    Result := QuotedStr(AnsiString(Value.VAnsiString));
	if Value.VType = vtString then
		Result := QuotedStr(Value.VString^);
	if Value.VType = vtInteger then
		Result := IntToStr(Value.VInteger);
	if Value.VType = vtVariant then
		Result := ValueToStr(Value.VVariant^);
end;

function	TEditControl.CheckFill: Boolean;
var
	i: Integer;
    ctrl: TFieldControl;
    col: TColor;
begin
    ctrl := nil;
	for i:=High(FFieldControls) downto 0 do
		with FFieldControls[i] do
        begin
            if Check then col := FColor
            else
            begin
                col := RGB(253, 185, 200);
                ctrl := FFieldControls[i];
            end;

            SetColor(col);
        end;

    if ctrl = nil then Result := True
    else
    begin
        Result := False;
        ctrl.Tell;
    end;
end;

function	TEditControl.Changed: Boolean;
var
	i: Integer;
begin
	Result := False;

	for i:=0 to High(FFieldControls) do
		if FFieldControls[i].IsChanged then
		begin
			Result := True;
			Exit;
		end;
end;

procedure	TEditControl.Prepare(Mode: TEditMode);
var
	i: Integer;
begin
	for i:=0 to High(FFieldControls) do
		with FFieldControls[i] do
			if Mode = emNew then Zero
			else Prepare;
end;

procedure	TEditControl.Read;
var
	i: Integer;
begin
	for i:=0 to High(FFieldControls) do
		FFieldControls[i].Get;
end;

procedure	TEditControl.SetReadOnly(b: Boolean);
var
	i: Integer;
begin
	for i:=0 to High(FFieldControls) do
		FFieldControls[i].SetReadOnly(b);
end;

procedure	TEditControl.Add(a: array of TFieldControl);
var
	i,len: Integer;
begin
	len := Length(FFieldControls);
	SetLength(FFieldControls,len + Length(a));
	for i:=0 to High(a) do
		FFieldControls[len+i] := a[i];
end;


initialization
	UpdateQuery := TIBQuery.Create(nil);

finalization
	UpdateQuery.Free;

end.
