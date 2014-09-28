unit UCompenssHLShablon;

interface

uses SysUtils,
     Classes,
     Dialogs,
     ibase,
     DB,
     FIBDatabase,
     pFIBDatabase,
     FIBDataSet,
     pFIBDataSet;

function GetTemplateString(hConnection: TISC_DB_HANDLE; id_session, id_item : Int64): String; stdcall;

exports GetTemplateString;

implementation

function GetTemplateString(hConnection: TISC_DB_HANDLE; id_session, id_item : Int64): String; stdcall;
var szResult, szTemp, s, s1            : String;
    fdbTemplateReceipt  : TpFIBDatabase;
    ftrTemplateReceipt  : TpFIBTransaction;
    fdsTemplateReceipt  : TpFIBDataSet;
    iT, i               : Integer;
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

    szResult := '';
    fdsTemplateReceipt.SQLs.SelectSQL.Text := 'SELECT * FROM up_dt_order_item_body WHERE id_session = '+IntToStr(id_session)+'';
    fdsTemplateReceipt.Open;

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY0', []) //����� ������
    then szResult := szResult + '<b>' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' </b>'
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);


    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY1', []) //���
    then szResult := szResult +  '<u>ϲ�:</u>  <b>'+fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '</b>,'
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY2', []) //��� ���������
    then szResult := szResult + ' <u>��� ���������:</u> '+ fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ','
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY3', []) //���������
    then szResult := szResult + ' <u>������:</u> '+ fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ','
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY4', []) //�������������
    then szResult := szResult + ' <u>�������:</u> '+ fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ','
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY6', []) //������
    then szResult := szResult + ' � �������: '+ fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ������ '
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);

    {fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY5', []) //�����
    then szResult := szResult + ' � �������   '+ fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ���., '
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);}

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY7', []) //��� �������
    then szResult := szResult + ' <u>��� ��������:</u> '+ fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' '
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY8', []) //���������� ����
    then szResult := szResult + '<b> ����������� �� '+ fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ����������� ���.</b>'+#13
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);

    fdsTemplateReceipt.First;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BODY11', []) //�������
    then
    begin
    szResult := szResult + ' <u>ϳ������:</u> <b>';
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
    //+ fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString+'</b>'
    else MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);

  except on Error: Exception do begin
    MessageDlg('������� �� ��� ���������� ��� ������!!', mtError, [mbOk], 0);
    szResult := '';
  end;
  end;
    Result := szResult;
end;

end.
