unit UShablon;

interface

uses SysUtils,
     Classes,
     Dialogs,
     ibase,
     DB,
     FIBDatabase,
     pFIBDatabase,
     FIBDataSet,
     pFIBDataSet,
     Variants;

function GetTemplateString(hConnection: TISC_DB_HANDLE; id_session, id_item : Int64): String; stdcall;

exports GetTemplateString;

implementation

function GetTemplateString(hConnection: TISC_DB_HANDLE; id_session, id_item : Int64): String; stdcall;
var szResult, Stavki            : String;
    fdbTemplateReceipt  : TpFIBDatabase;
    ftrTemplateReceipt  : TpFIBTransaction;
    fdsTemplateReceipt  : TpFIBDataSet;
    szTemp, s, s1       : String;
    iT, i               : Integer;
    IsPrintUpDep        : Byte;
begin
  try
    fdbTemplateReceipt                    := TpFIBDatabase.Create(NIL);
    ftrTemplateReceipt                    := TpFIBTransaction.Create(NIL);
    fdsTemplateReceipt                    := TpFIBDataSet.Create(NIL);
    fdbTemplateReceipt.SQLDialect         := 3;
    fdbTemplateReceipt.Handle             := hConnection;
    ftrTemplateReceipt.DefaultDatabase    := fdbTemplateReceipt;
    fdbTemplateReceipt.DefaultTransaction := ftrTemplateReceipt;
    fdsTemplateReceipt.Database           := fdbTemplateReceipt;
    fdsTemplateReceipt.Transaction        := ftrTemplateReceipt;
    ftrTemplateReceipt.StartTransaction;

    fdsTemplateReceipt.Close;
    fdsTemplateReceipt.SQLs.SelectSQL.Text := 'SELECT Stavki_Disp_Format FROM Ini_Asup_Consts';
    fdsTemplateReceipt.Open;
    Stavki:=fdsTemplateReceipt['Stavki_Disp_Format'];
    szResult := '';
    fdsTemplateReceipt.Close;
    fdsTemplateReceipt.SQLs.SelectSQL.Text := 'SELECT * FROM up_dt_order_item_body WHERE id_session = '+IntToStr(id_session)+'';
    fdsTemplateReceipt.Open;
    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY0', []) //����� ������
    then szResult := szResult + ' ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +' '
    else MessageDlg('������� �� ��� ���������� ��� ������ 0!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY2', []) //������ �������
    then szResult := szResult + ' ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +' '
    else MessageDlg('������� �� ��� ���������� ��� ������ 2!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY3', []) //������ ���
    then szResult := szResult + ' ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +' '
    else MessageDlg('������� �� ��� ���������� ��� ������ 3!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY4', []) //������ ��������
    then szResult := szResult + ' ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString
    else MessageDlg('������� �� ��� ���������� ��� ������ 4!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY10', []) //TN
    then
    begin
        if not (VarIsNull(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsVariant))
        then
        szResult := szResult + '(�� ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString+'),'
    end
    else MessageDlg('������� �� ��� ���������� ��� ������ 10!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY8', []) //���������
    then
    begin
        if not VarIsNull(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsVariant) then
        szResult := szResult + ' ������: ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +', '
    end
    else MessageDlg('������� �� ��� ���������� ��� ������ 8!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY11', []) //������
    then
    begin
        if not VarIsNull(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsVariant) then
        begin
            decimalSeparator := '.';
            szResult := szResult + ' � �������: '+ FormatFloat(Stavki,fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat)  +' ������ ';
        end;
    end
    else MessageDlg('������� �� ��� ���������� ��� ������ 11!!', mtError, [mbOk], 0);

    szResult := szResult + ' �������: ';

    IsPrintUpDep:=0;
    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY13', []) //�������������
    then
    begin
        if not VarIsNull(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsVariant) then
        IsPrintUpDep := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger;
    end
    else MessageDlg('������� �� ��� ���������� ��� ������ 12!!', mtError, [mbOk], 0);

    if IsPrintUpDep=1 then
    begin
        fdsTemplateReceipt.First;
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY12', []) //�������������
        then
        begin
            if not VarIsNull(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsVariant) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';
        end
        else MessageDlg('������� �� ��� ���������� ��� ������ 12!!', mtError, [mbOk], 0);
    end;
    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY9', []) //�������������
    then
    begin
        if not VarIsNull(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsVariant) then
        szResult := szResult +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +', '
    end
    else MessageDlg('������� �� ��� ���������� ��� ������ 9!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY5', []) //����� �������
    then szResult := szResult + ' ��������� ����� �� <b>' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +' '
    else MessageDlg('������� �� ��� ���������� ��� ������ 5!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY6', []) //����� ���
    then szResult := szResult + ' ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +' '
    else MessageDlg('������� �� ��� ���������� ��� ������ 6!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY7', []) //����� ���������
    then szResult := szResult + ' ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +'</b>'+#13
    else MessageDlg('������� �� ��� ���������� ��� ������ 7!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY1', []) //����� ���������
    then
    begin
        szResult := szResult + '<u>ϳ������</u>: ';
        szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

        iT:=0;
        for i:=0 to Length(szTemp)-1 do
        begin
            s1:=copy(szTemp,i,1);
            if s1=' ' then inc(iT)
            else break;
        end;

        s := AnsiLowerCase(Copy(szTemp,1,iT+1));
    //szTemp := AnsiLowerCase(szTemp);
    //szTemp[1] := s;
        szResult := szResult + s + Copy(szTemp,iT+2,Length(szTemp));
    end
    else MessageDlg('������� �� ��� ���������� ��� ������ ����.!!', mtError, [mbOk], 0);


  except on Error: Exception do begin
    MessageDlg('������� �� ��� ���������� ��� ������ 1111!!'+Error.Message, mtError, [mbOk], 0);
    szResult := '';
  end;
  end;
    Result := szResult;
end;

end.
