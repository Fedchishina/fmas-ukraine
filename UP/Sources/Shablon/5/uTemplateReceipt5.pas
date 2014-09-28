unit uTemplateReceipt5; {����������}

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
var szResult, s         : String;            //  ������ ��� ������������ �������������� ������
    szTemp, stavka_str  : String;            //  ������ ��� �������� ��������� ������
    cTemp               : Char;              //  ���������� ��� �������� �������
    iTemp{, k, i}         : Integer;           //  ���������� ��� �������� �������� ������ ����
    iLength             : Integer;           //  ���������� ��� �������� �������� ������ ���� ����� �����
    fTemp, rate_count   : Currency;            //  ���������� ��� �������� �������� ������������� ����
    fdbTemplateReceipt  : TpFIBDatabase;     //  ����
    ftrTemplateReceipt  : TpFIBTransaction;  //  ����������
    fdsTemplateReceipt  : TpFIBDataSet;      //  �������

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
    fdsTemplateReceipt.Close;
    fdsTemplateReceipt.SQLs.SelectSQL.Text := 'SELECT * FROM INI_ASUP_CONSTS';
    fdsTemplateReceipt.Open;

    stavka_str := fdsTemplateReceipt.fbn('STAVKI_DISP_FORMAT').Asstring;
    fdsTemplateReceipt.Close;



    fdsTemplateReceipt.SQLs.SelectSQL.Text := 'SELECT * FROM up_dt_order_item_body WHERE id_session = '+IntToStr(id_session)+'';
    fdsTemplateReceipt.Open;
    //  ����� ������
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NUM_ITEM_1', []) then
        szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '.';
    //  ����� ���������
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NUM_SUB_ITEM_1', []) then
        szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '. ';
    //  �������
    szResult := szResult + '<u>ϲ�:</u> <b>';
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_SECOND_NAME_UA_1', []) then
    //  ���������� �������
        szResult := szResult + AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' ';
    //  ���
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_FIRST_NAME_UA_1', []) then
    begin
        //  ������ ����� ���������, � ��������� ���������
{        szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;}
        szResult := szResult + AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' ';
    end;
    //  ��������
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_LAST_NAME_UA_1', []) then
    begin
        //  ������ ����� ���������, � ��������� ���������
{        szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;}
        szResult := szResult + AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' ';
    end;

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_TN_1', [])
        then szResult := szResult + ' (TH ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ')';

    szResult := szResult + '</b>, ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NAME_TYPE_AWAY_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_HOSPITAL_MAN_1', []) then
        begin
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_SECOND_NAME_UA_H_1', []) then
                szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ';
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_FIRST_NAME_UA_H_1', []) then
                szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ';
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_LAST_NAME_UA_H_1', []) then
                szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ';
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_TN_H_1', []) then
                szResult := szResult + '(�� ' +fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '), ';

        end;


    fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_EDUC_ZVANIE_AND_ST_1', []);
    if (not fdsTemplateReceipt.FBN('PARAMETR_VALUE').isNull) and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '') and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> ' ') 
        then szResult := szResult + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ', ';


    szResult := szResult + '<u>��� ���������:</u> ';
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_TYPE_POST_NAME_1', []) then
        szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';

    szResult := szResult + '<u>������:</u>';
    fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_is_ped_work_1', []); //������������� ����� ���������
    if  fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger=0 then //������������� ����� ���������:����� ������ ������/ ������������ ��� � ������
    begin
      if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NAME_POST_1', []) then
  //        szResult := szResult + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString)+', ';
      begin
          szTemp    := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
          s         := copy(szTemp, 2, 1);
          if ((ord(s[1])<=223) and (ord(s[1])>=192)) or (ord(s[1])=175) or (ord(s[1])=178) or (ord(s[1])=170) or (ord(s[1])=73) then
          begin
              szResult  := szResult + szTemp + ', ';
          end else
          begin
              cTemp     := ansiLowerCase(szTemp)[1];
              szTemp[1] := cTemp;
              szResult  := szResult + szTemp + ', ';
          end;
      end;
    end
    else if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger=1 then  //������������� ����� ���������:�������������� ������ � ���� I-II ������� ������������
    begin
      if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NAME_POST_SALARY_1', []) then
  //        szResult := szResult + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString)+', ';
      begin
          szTemp    := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
          //s         := copy(szTemp, 2, 1);
          //if ((ord(s[1])<=223) and (ord(s[1])>=192)) or (ord(s[1])=175) or (ord(s[1])=178) or (ord(s[1])=170) or (ord(s[1])=73) then
          //begin
              cTemp     := ansiLowerCase(szTemp)[1];
              szTemp[1] := cTemp;
              szResult  := szResult +' '+szTemp + ', ';
          {end else
          begin
              cTemp     := ansiLowerCase(szTemp)[1];
              szTemp[1] := cTemp;
              szResult  := szResult + szTemp + ', ';
          end;}
      end;
      szTemp    := '';



      if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NAME_POST_BASE_SALARY_1', []) then
      begin
        if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString<>'' then
          begin

            szResult := szResult + '<u>������������� ��������:</u>';
            szTemp    := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
            //s         := copy(szTemp, 2, 1);
            //if ((ord(s[1])<=223) and (ord(s[1])>=192)) or (ord(s[1])=175) or (ord(s[1])=178) or (ord(s[1])=170) or (ord(s[1])=73) then
            //begin
                //ShowMessage(szTemp);
                cTemp     := ansiLowerCase(szTemp)[1];
                szTemp[1] := cTemp;
                szResult  := szResult +' '+szTemp + ', ';
            {end else
            begin
                cTemp     := ansiLowerCase(szTemp)[1];
                szTemp[1] := cTemp;
                szResult  := szResult + szTemp + ', ';
            end;}
          end;
      end;
    end;
    szTemp    := '';

    szResult := szResult + '<u>�������:</u> ';
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NAME_DEPARTMENT_VERH_1', []) then
    begin
        szResult  := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';
    end;
    //  �������������
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NAME_DEPARTMENT_1', []) then
        szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_WORK_REASON_DEFUALT_1', []) then
    begin
        if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString = '1'
        then
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_WORK_REASON_1', []) then
            begin
                szResult := szResult + ', <u>��� ������:</u> ';// + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString)+ ','

                szTemp    := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                s         := copy(szTemp, 2, 1);
                if ((ord(s[1])<=223) and (ord(s[1])>=192)) or (ord(s[1])=175) or (ord(s[1])=178) or (ord(s[1])=170) or (ord(s[1])=73) then
                begin
                    szResult  := szResult + szTemp + ', ';
                end else
                begin
                    cTemp     := ansiLowerCase(szTemp)[1];
                    szTemp[1] := cTemp;
                    szResult  := szResult + szTemp + ', ';
                end;
                szTemp    := '';

            end
        else szResult := szResult + ', ';
    end;


    fTemp := 0;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_COUNT_SM_1', [])
        then iLength := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger
        else iLength := 0;

    rate_count  := 0;
    szTemp      := '';
    DecimalSeparator    := '.';
    for iTemp := 1 to iLength do begin
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_RATE_COUNT_1_' + IntToStr(iTemp), []) then
        begin
            rate_count := rate_count + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;
        end;

        if iLength > 1 then
        begin
            if iTemp=1 then szTemp := ' � ������� ';
            szTemp := szTemp + FormatFloat(stavka_str, fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat) + ' ������ ';
        end;

        szTemp := szTemp + ' (';

        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_SUMMA_SMETA_1_' + IntToStr(iTemp), []);
        fTemp := fTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;

        if iLength > 1 then
        begin
            szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ���. - �� ������� ';
        end else
        begin
            szTemp := szTemp + ' ' +FormatFloat('0.00', fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat)+ ' ���. - �� ������� ';         {.....}
        end;

        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_SMETA_TITLE_1_' + IntToStr(iTemp), []);

        szTemp := szTemp + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' (';

        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_SMETA_KOD_1_' + IntToStr(iTemp), []);
        szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString+')';


        fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_SUMMA_SMETA_PPS_1_' + IntToStr(iTemp), []);
        if (not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull) and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat <> 0) then
        begin
            fTemp  := fTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;
            szTemp := szTemp + ', ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ���. - �� ������� ';

            fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_SMETA_TITLE_PPS_1_' + IntToStr(iTemp), []);
            szTemp := szTemp + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' (';

            fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_SMETA_KOD_PPS_1_' + IntToStr(iTemp), []);
            szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

            fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_KOEFF_PPS_1_' + IntToStr(iTemp), []);
            if (not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull) and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').Asfloat <> 0) then
            begin
                fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_KOEFF_PPS_1_' + IntToStr(iTemp), []);
                szTemp := szTemp + ', ���������� �������� ���������� ������ ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString+'))';
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
        szTemp := szTemp + '), ';
      end
      else begin
        szTemp := szTemp + ').';
      end;

    end;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_is_ped_work_1', []) then
      if  fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger=0 then //������������� ����� ���������:����� ������ ������/ ������������ ��� � ������
      begin
        szResult := szResult + ' �� ' + FormatFloat(stavka_str, rate_count);
        szResult := szResult + ' ������ � ������� ' + FormatFloat('0.00', fTemp) + ' ���. �� �����' + szTemp;
        szResult := szResult + ' ';
      END;

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_DATE_DISMISSION_1', []) then
        szResult := szResult + '<b>'+fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NAME_DISMISSION_1', []) then
        szResult := szResult + ' '+fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString+' ';

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_DES_KZOT_ST_1', []) then
        szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '</b>. ';

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NOTE_1', []) then
        if (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '') and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> ' ') then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '. ';


    szResult := szResult + #13;
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NOT_USED_HOLIDAY_COUNT_1', []) then
        if not fdsTemplateReceipt.FBN('PARAMETR_VALUE').isNull then
            if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger <> 0 then
                szResult := szResult + '������������� �������� ������� '+fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ����������� ���.'+#13;

    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_NOT_WORKED_HOLIDAY_COUNT_1', []) then
        if not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull then
            if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger <> 0 then
                szResult := szResult + '�������������� '+fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ��� ��������.'+#13;

{    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'COUNT_ITEMS', []) then
    begin
        k := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger;

        if k>=1 then szResult := szResult + '<u>������� �� ��������:</u> ';
        for i := 2 to k+1 do
        begin
            if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BONUS_COUNT_INST_' + IntToStr(i), []) then
            begin
                iLength := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger;
                for iTemp := 1 to iLength do
                begin
                    fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BONUS_RAISE_NAME_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp), []);
                    szResult := szResult + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' - ';

                    fdsTemplateReceipt.Locate('PARAMETR_NAME', 'BONUS_PERCENT_'+ IntToStr(i)+ '_' + IntToStr(iTemp), []);
                    szResult := szResult + FormatFloat('0', fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat) + '%';

                    if (i = k+1)
                        then szResult := szResult + '. '+#13
                        else szResult := szResult + ', ';
                end;
            end;
        end;
    end;
 }
    szResult := szResult + '<u>ϳ������:</u> ';
    if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'DES_REASON_1', []) then
        //szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
          szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
    s := AnsiLowerCase(Copy(szTemp,1,1));
    szResult := szResult + s + Copy(szTemp,2,Length(szTemp));
    //  ������������ �� ����
    ftrTemplateReceipt.Rollback;
    //  �������� ����������� ��������� ���������
    fdsTemplateReceipt.Free;
    ftrTemplateReceipt.Free;
    fdbTemplateReceipt.Free;
    DecimalSeparator    := ',';
  except on Error: Exception do begin
    MessageDlg('���������� ������������ ������', mtError, [mbOk], 0);
//    szResult := '';
  end;
  end;
    Result := szResult;

end;

end.
