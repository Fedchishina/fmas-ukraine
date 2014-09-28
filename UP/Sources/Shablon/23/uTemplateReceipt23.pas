unit uTemplateReceipt23; {������� �������� �� ������������}

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
var szResult, stavka_str, st_str : String;            //  ������ ��� ������������ �������������� ������
    szTemp, s, s1       : String;            //  ������ ��� �������� ��������� ������
    cTemp               : Char;              //  ���������� ��� �������� �������
    iTemp, iT, i        : Integer;           //  ���������� ��� �������� �������� ������ ����
    iLength             : Integer;           //  ���������� ��� �������� �������� ������ ���� ����� �����
    fdbTemplateReceipt  : TpFIBDatabase;     //  ����
    ftrTemplateReceipt  : TpFIBTransaction;  //  ����������
    fdsTemplateReceipt  : TpFIBDataSet;      //  �������
    fTemp, rate_count, fT   : Currency;
    flagok              : boolean;    
begin
    decimalseparator := '.';
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
    fdsTemplateReceipt.Close;
    fdsTemplateReceipt.SQLs.SelectSQL.Text := 'SELECT * FROM INI_ASUP_CONSTS';
    fdsTemplateReceipt.Open;

    stavka_str := fdsTemplateReceipt.fbn('STAVKI_DISP_FORMAT').Asstring;
    fdsTemplateReceipt.Close;

    fdsTemplateReceipt.SQLs.SelectSQL.Text := 'SELECT * FROM up_dt_order_item_body WHERE id_session = '+IntToStr(id_session)+'';
    fdsTemplateReceipt.Open;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'NUM_ITEM_1', []) then
        szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '.';
    //  ����� ���������
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'NUM_SUB_ITEM_1', []) then
        szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '. ';
    //  �������
    szResult := szResult + '<u>ϲ�:</u> <b>';
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SECOND_NAME_UA_1_1', []) then
    //  ���������� �������
    szResult := szResult + AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' ';
    //  ���
    szTemp := '';
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_FIRST_NAME_UA_1_1', []) then
    begin
    //  ������ ����� ���������, � ��������� ���������
{        szTemp := AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString);
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;}
        szResult := szResult + AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' ';
    end;
    //  ��������
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_LAST_NAME_UA_1_1', []) then
    begin
    //  ������ ����� ���������, � ��������� ���������
{        szTemp := AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString);
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;  }
        szResult := szResult + AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' ';
    end;

//    szResult := szResult + szTemp;

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_TN_1_1', [])
        then
            if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '' then
                szResult := szResult + '(TH ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ')';

    szResult := szResult + '</b>, ';

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_EDUC_ZVANIE_AND_ST_1_1', [])
        then if (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '') and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> ' ')
                 then szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_TYPE_POST_NAME_1_1', []) then
        szResult := szResult + '<u>��� ���������:</u> ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_NAME_POST_1_1', []) then
//        szResult := szResult + '<u>������:</u> ' + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ', ';
    begin
        szTemp    := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
        s         := copy(szTemp, 2, 1);
        if ((ord(s[1])<=223) and (ord(s[1])>=192)) or (ord(s[1])=175) or (ord(s[1])=178) or (ord(s[1])=170) or (ord(s[1])=73) then
        begin
            szResult  := szResult + '<u>:������</u> ' + szTemp + ', ';
        end else
        begin
            cTemp     := ansiLowerCase(szTemp)[1];
            szTemp[1] := cTemp;
            szResult  := szResult + '<u>������:</u> ' + szTemp + ', ';
        end;
        szTemp    := '';
    end;

    //  �������������
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_NAME_DEPARTMENT_1_1', []) then
        if (not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull) and (trim(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) <> '' ) then
        BEGIN
            szResult := szResult + '<u>�������:</u> ';
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_NAME_DEPARTMENT_VERH_1_1', []) then
            begin
                szResult  := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';
            end;
            fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_NAME_DEPARTMENT_1_1', []);
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
        END;
    szResult := szResult;

    fTemp := 0;

    fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_COUNT_SM_1_1', []);
    iLength     := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger;
    fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_OKLAD_SUM_1_1', []);
    fT     := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;
    rate_count  := 0;
    DecimalSeparator    := '.';
    for iTemp := 1 to iLength do begin
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_RATE_COUNT_1_1_' + IntToStr(iTemp), []) then
        begin
            rate_count := rate_count + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;
        end;

        if iLength > 1 then
        begin
            //if iTemp=1 then szTemp := ' � ������� ';
            if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat > 0 then
            begin
                st_str:=FormatFloat('( '+stavka_str, fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat);
                szTemp := szTemp + FormatFloat(stavka_str, fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat) + ' ������ ';
            end;
        end;

       // szTemp := szTemp + ' (';

        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_SUMMA_SMETA_PPS_1_1_' + IntToStr(iTemp), []);
        if (not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull) and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat <> 0) then
        begin
            flagok := true;
        end else
            flagok := false;

        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_SUMMA_SMETA_1_1_' + IntToStr(iTemp), []);
        fTemp := fTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;

        if (iLength > 1) or (flagok) then
        begin
            if iLength>1 then
            szTemp := szTemp + ' - �� ������� '
            else szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ���. - �� ������� ';
        end else
        begin
            szTemp := szTemp + '�� ������� ';
        end;

        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_SMETA_TITLE_1_1_' + IntToStr(iTemp), []);

        szTemp := szTemp + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' (';

        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_SMETA_KOD_1_1_' + IntToStr(iTemp), []);
        szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString+')';


        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_SUMMA_SMETA_PPS_1_1_' + IntToStr(iTemp), []);
        if (not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull) and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat <> 0) then
        begin
            //fTemp  := fTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;
            szTemp := szTemp + ', ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ���. - �� ������� ';

            fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_SMETA_TITLE_PPS_1_1_' + IntToStr(iTemp), []);
            szTemp := szTemp + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' (';

            fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_SMETA_KOD_PPS_1_1_' + IntToStr(iTemp), []);
            szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

            fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_KOEFF_PPS_1_1_' + IntToStr(iTemp), []);
            if (not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull) and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').Asfloat <> 0) then
            begin
                fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_KOEFF_PPS_1_1_' + IntToStr(iTemp), []);
                szTemp := szTemp + ', ���������� �������� ���������� ������ ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +')';
            end else
            begin
                szTemp := szTemp + ')';
            end;
        end;
{        else
        begin
            szTemp := szTemp + '),';
        end;
 }

      if not (iTemp = iLength) then
      begin
        szTemp := szTemp + ', ';
      end
      else begin
        szTemp := szTemp + '),';
      end;

    end;
    st_str:=FormatFloat('0.00', fTemp);
    if rate_count > 0 then
        szResult := szResult + ' �� ' + FormatFloat(stavka_str, rate_count)  + ' ������ � ������� ' + FormatFloat('0.00', fT) + ' ���. �� ����� (';

    szResult := szResult + szTemp;

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'TO_WORK_REASON_1_1', []) then
    begin
        if (trim(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) <> '') and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> ' ') then
            szResult := szResult + ' <u>��� ������:</u> ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ',';
    end;

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_ID_TYPE_RAISE_1_1', []) then
    begin

        if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger=599 then {������}
        begin
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'NOTE_1_1', []) then
                szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
               { if iLength>1 then szResult := szResult + ' � ����� ' + st_str + ' ���. ('
                else   }
            szResult := szResult + ' � ����� ';
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_COUNT_SM_1_1', []) then
               if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger>1 then
               begin
                  if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_PREM_SUM_1_1', []) then
                     szResult := szResult + FormatFloat('0.00', fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat) +' ���. (';
               end;
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_PERCENT_1_1', []) then
                if (fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull) or (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat = 0) then
                begin
                    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SUMMA_PERSENT_1_1', []) then
                        szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                    szResult := szResult + ' ���. ';
                end else
                begin
                    {if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat = 100
                        then szResult := szResult + FloatToStr(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat/100) + ' ���������� ������ '
                        else szResult := szResult + FloatToStr(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat/100) + ' ��������� ������ ';}
                end;
        end;
        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_ID_TYPE_RAISE_1_1', []);
        if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger=499 then {���������}
        begin
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_RAISE_NAME_1_1', []) then
                szResult := szResult + ' ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString +' ';

            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'NOTE_1', []) then
                szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
            szResult := szResult + ' � ����� ';

            {if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SUMMA_PERSENT_1_1', []) then
                szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
            szResult := szResult + ' ���. ';      }
        end;
    end;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_COUNT_SM_1_1', []) then
    begin
        szTemp := '';
        iLength := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger;
        for iTemp := 1 to iLength do begin

            if (iLength = 1) and (iTemp = 1) then
            begin         //�������� �� �����
                            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SUMMA_SMETA_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                    /////////////
                szTemp := szTemp + ' ���. - �� ������� ';

                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SMETA_TITLE_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString);
                szTemp := szTemp + ' (';

                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SMETA_KOD_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                szTemp := szTemp + ').';
            end else
            begin
                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SUMMA_SMETA_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                szTemp := szTemp + ' ���. - �� ������� ';

                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SMETA_TITLE_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString);
                szTemp := szTemp + ' (';

                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SMETA_KOD_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                szTemp := szTemp + ')';
                if not (iTemp = iLength) then
                begin
                    szTemp := szTemp + ', ';
                end
                else begin
                    szTemp := szTemp + ').';
                end;
            end;
        end;

        szResult := szResult + szTemp;
    end;

    szResult := szResult + #13;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'REASON_1', []) then
        if (not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull) and (trim(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) <> '') then
            szResult := szResult + '<u>ϳ������:</u> ';
            szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
            iT:=0;
            for i:=0 to Length(szTemp)-1 do
            begin
                s1:=copy(szTemp,i,1);
                if s1=' ' then inc(iT)
                else break;
            end;
            s := AnsiLowerCase(Copy(szTemp,1,iT+1));
            szResult := szResult + s + Copy(szTemp,iT+2,Length(szTemp));

    ftrTemplateReceipt.Rollback;
    fdsTemplateReceipt.Free;
    ftrTemplateReceipt.Free;
    fdbTemplateReceipt.Free;
    decimalseparator := ',';
  except on Error: Exception do begin
    decimalseparator := ',';
    MessageDlg('��������� ���������� ����� ������!', mtError, [mbOk], 0);
//    szResult := '';
  end;
  end;
    Result := szResult;

end;

end.
