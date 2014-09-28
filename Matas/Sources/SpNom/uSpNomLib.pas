{               "���� �������-������������ ���������, ��, ��� � ���"           }
{                              �����������                                     }
{                                                                              }
{               (c) ������� �.�. 2004-2007                                     }
{                                                                              }
unit uSpNomLib;

interface
uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ibase, FIBDatabase,  pFIBDatabase, FIBDataSet, pFIBDataSet,
     uSpNomLang, uSpNomWaitWindow;

procedure RefreshDataSet(DataSet : TFIBDataSet; ID_Field : String);
function agMessageDlg(const Caption : string; const Msg : string; const DlgType: TMsgDlgType; const Buttons: TMsgDlgButtons) : word;
procedure ShowMessage(const Msg : string);

function ShowWaitWindow(aOwner:TComponent):TForm;
procedure CloseWaitWindow(w: TForm);

implementation

function ShowWaitWindow(aOwner:TComponent):TForm;
begin
 Result:=TWaitForm.Create(aOwner);
 Result.Show;
 Result.Update;
end;

procedure CloseWaitWindow(w: TForm);
begin
 w.Close;
 w.Free;
end;

procedure RefreshDataSet(DataSet : TFIBDataSet; ID_Field : String);
var
 old_position : Int64;
begin
 if DataSet.SQLs.SelectSQL.Text = '' then exit;
 if (not DataSet.IsEmpty) and (Id_Field <> '')
  then Old_Position := DataSet.FieldByName(Id_Field).Value
  else Old_Position := -1;
 DataSet.CloseOpen(True);
 if Old_Position <> -1
  then DataSet.Locate(Id_Field,old_position,[]);
end;

function agMessageDlg(const Caption : string; const Msg : string; const DlgType: TMsgDlgType; const Buttons: TMsgDlgButtons) : word;
var
 form : TForm;
 i    : integer;
begin
 if Buttons = [] then begin
  Result := 0;
  exit;
 end;
 form := CreateMessageDialog(Msg, DlgType, Buttons);
 form.Caption := Caption;
 for i := 0 to form.ComponentCount - 1 do if form.Components[i] is TButton then begin
  case aLangague of
   1: begin
    if UpperCase(TButton(form.Components[i]).Caption) = 'OK' then TButton(form.Components[i]).Caption := ' �������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'CANCEL' then TButton(form.Components[i]).Caption := ' ³������ ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&YES' then TButton(form.Components[i]).Caption := ' ��� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&NO' then TButton(form.Components[i]).Caption := ' ͳ ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&ABORT' then TButton(form.Components[i]).Caption := ' ³������ ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&RETRY' then TButton(form.Components[i]).Caption := ' ��������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&IGNORE' then TButton(form.Components[i]).Caption := ' ���������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&ALL' then TButton(form.Components[i]).Caption := ' �� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&HELP' then TButton(form.Components[i]).Caption := ' �������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'N&O TO ALL' then TButton(form.Components[i]).Caption := ' ͳ ��� ��� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'YES TO &ALL' then TButton(form.Components[i]).Caption := ' �� ��� ��� ';
   end;
   else begin
    if UpperCase(TButton(form.Components[i]).Caption) = 'OK' then TButton(form.Components[i]).Caption := ' ������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'CANCEL' then TButton(form.Components[i]).Caption := ' �������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&YES' then TButton(form.Components[i]).Caption := ' �� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&NO' then TButton(form.Components[i]).Caption := ' ��� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&ABORT' then TButton(form.Components[i]).Caption := ' �������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&RETRY' then TButton(form.Components[i]).Caption := ' ��������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&IGNORE' then TButton(form.Components[i]).Caption := ' ������������ ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&ALL' then TButton(form.Components[i]).Caption := ' ��� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&HELP' then TButton(form.Components[i]).Caption := ' ������ ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'N&O TO ALL' then TButton(form.Components[i]).Caption := ' ��� ��� ���� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'YES TO &ALL' then TButton(form.Components[i]).Caption := ' �� ��� ���� ';
   end
  end;
 end;
 Result := form.ShowModal;
end;

function MessageDlgU(const Caption : string; const Msg : string; const DlgType: TMsgDlgType; const Buttons: TMsgDlgButtons) : word;
var
 form : TForm;
 i    : integer;
begin
 if Buttons = [] then begin
  Result := 0;
  exit;
 end;
 form := CreateMessageDialog(Msg, DlgType, Buttons);
 form.Caption := Caption;
 for i := 0 to form.ComponentCount - 1 do if form.Components[i] is TButton then begin
  case aLangague of
   1: begin
    if UpperCase(TButton(form.Components[i]).Caption) = 'OK' then TButton(form.Components[i]).Caption := ' �������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'CANCEL' then TButton(form.Components[i]).Caption := ' ³������ ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&YES' then TButton(form.Components[i]).Caption := ' ��� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&NO' then TButton(form.Components[i]).Caption := ' ͳ ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&ABORT' then TButton(form.Components[i]).Caption := ' ³������ ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&RETRY' then TButton(form.Components[i]).Caption := ' ��������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&IGNORE' then TButton(form.Components[i]).Caption := ' ���������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&ALL' then TButton(form.Components[i]).Caption := ' �� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&HELP' then TButton(form.Components[i]).Caption := ' �������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'N&O TO ALL' then TButton(form.Components[i]).Caption := ' ͳ ��� ��� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'YES TO &ALL' then TButton(form.Components[i]).Caption := ' �� ��� ��� ';
   end;
   else begin
    if UpperCase(TButton(form.Components[i]).Caption) = 'OK' then TButton(form.Components[i]).Caption := ' ������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'CANCEL' then TButton(form.Components[i]).Caption := ' �������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&YES' then TButton(form.Components[i]).Caption := ' �� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&NO' then TButton(form.Components[i]).Caption := ' ��� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&ABORT' then TButton(form.Components[i]).Caption := ' �������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&RETRY' then TButton(form.Components[i]).Caption := ' ��������� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&IGNORE' then TButton(form.Components[i]).Caption := ' ������������ ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&ALL' then TButton(form.Components[i]).Caption := ' ��� ';
    if UpperCase(TButton(form.Components[i]).Caption) = '&HELP' then TButton(form.Components[i]).Caption := ' ������ ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'N&O TO ALL' then TButton(form.Components[i]).Caption := ' ��� ��� ���� ';
    if UpperCase(TButton(form.Components[i]).Caption) = 'YES TO &ALL' then TButton(form.Components[i]).Caption := ' �� ��� ���� ';
   end
  end;
 end;
 Result := form.ShowModal;
end;

procedure ShowMessage(const Msg : string);
begin
 MessageDlgU(NOM_STR_WARNING, Msg, mtWarning, [mbOk]);
end;

end.
