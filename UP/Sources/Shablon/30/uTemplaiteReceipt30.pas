unit uTemplaiteReceipt30; {������� ���������}

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

function GetTemplateString(hConnection: TISC_DB_HANDLE; id_session, id_item: Int64): string; stdcall;

exports GetTemplateString;

implementation

function GetTemplateString(hConnection: TISC_DB_HANDLE; id_session, id_item: Int64): string; stdcall;
var
    szResult: string; //  ������ ��� ������������ �������������� ������
    szTemp, s, s1, s2: string; //  ������ ��� �������� ��������� ������
    cTemp: Char; //  ���������� ��� �������� �������
    iTemp, iT, i: Integer; //  ���������� ��� �������� �������� ������ ����
    iLength: Integer; //  ���������� ��� �������� �������� ������ ���� ����� �����
    fdbTemplateReceipt: TpFIBDatabase; //  ����
    ftrTemplateReceipt: TpFIBTransaction; //  ����������
    fdsTemplateReceipt: TpFIBDataSet; //  �������
    HoursOld, HoursNew: Real;
    Hours: Real;
begin
    decimalseparator := '.';
    try
        fdbTemplateReceipt := TpFIBDatabase.Create(nil);
        ftrTemplateReceipt := TpFIBTransaction.Create(nil);
        fdsTemplateReceipt := TpFIBDataSet.Create(nil);
        fdbTemplateReceipt.SQLDialect := 3;
        fdbTemplateReceipt.Handle := hConnection;
        ftrTemplateReceipt.DefaultDatabase := fdbTemplateReceipt;
        fdbTemplateReceipt.DefaultTransaction := ftrTemplateReceipt;
        fdsTemplateReceipt.Database := fdbTemplateReceipt;
        fdsTemplateReceipt.Transaction := ftrTemplateReceipt;
        ftrTemplateReceipt.StartTransaction;

        szResult := '';
        fdsTemplateReceipt.SQLs.SelectSQL.Text := 'SELECT * FROM up_dt_order_item_body WHERE id_session = ' + IntToStr(id_session) + '';
        fdsTemplateReceipt.Open;
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'NUM_ITEM_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '.';
    //  ����� ���������
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'NUM_SUB_ITEM_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '. ';
    //  �������
        szResult := szResult + '<u>ϲ�:</u> <b>';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_SECOND_NAME_UA_1_1', []) then
    //  ���������� �������
            szResult := szResult + AnsiUpperCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString) + ' ';
    //  ���
        szTemp := '';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_FIRST_NAME_UA_1_1', []) then
        begin
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ';
    //  ������ ����� ���������, � ��������� ���������
{        szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;
        szResult := szResult + szTemp + ' ';}
        end;
    //  ��������
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_LAST_NAME_UA_1_1', []) then
        begin
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ';
    //  ������ ����� ���������, � ��������� ���������
{        szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;
        szResult := szResult + szTemp;}
        end;

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_TN_1_1', []) then
            if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '' then
                szResult := szResult + '(TH ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '),';

        szResult := szResult + '</b> ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_EDUC_ZVANIE_AND_ST_1_1', [])
            then if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '' then
                szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_N_POST_1_1', []) then
        begin
            if not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull then
            begin
            {szTemp    := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
            cTemp     := ansiLowerCase(szTemp)[1];
            szTemp[1] := cTemp;
            szResult := szResult + '<u>������:</u> ' + szTemp + ', ';
            szTemp    := '';}

                szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                s := copy(szTemp, 2, 1);
                if ((ord(s[1]) <= 223) and (ord(s[1]) >= 192)) or (ord(s[1]) = 175) or (ord(s[1]) = 178) or (ord(s[1]) = 170) or (ord(s[1]) = 73) then
                begin
                    szResult := szResult + '<u>������:</u> ' + szTemp + '</b>, ';
                end else
                begin
                    cTemp := ansiLowerCase(szTemp)[1];
                    szTemp[1] := cTemp;
                    szResult := szResult + '<u>������:</u> ' + szTemp + '</b>, ';
                end;
                szTemp := '';
            end;
        end;

        szResult := szResult + '<u>��� ��������� �����:</u> ';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_POCHAS_TYPE_NAME_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

        szResult := szResult + ', ' + '<u>�������:</u> ';
    //  �������������
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_NAME_DEPARTMENT_VERH_1_1', []) then
        begin
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';
        end;
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_NAME_DEPARTMENT_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ',';

        szResult := szResult + ' � ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_DATE_BEG_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

        szResult := szResult + ' �� ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_DATE_END_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_HOURS_1_1', []) then
        begin
            if not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull then
            begin
                szResult := szResult + '<i> � ���������� ������������� ';
                szResult := szResult + FormatFloat('0.00', fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat);
                szResult := szResult + ' ���</i>.,';
                HoursOld := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;
            end;
        end
        else szResult := szResult + ' ';

        szResult := szResult + ' <u>�����:</u> ';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_TARIF_1_1', []) then
            szResult := szResult + FormatFloat('0.00', fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat);

        szResult := szResult + ' ���. �� ������ (';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_TARIF_TYPE_NAME_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

        szResult := szResult + '), ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_COUNT_SM_1_1', []) then
        begin
            szTemp := '';
            iLength := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger;
            for iTemp := 1 to iLength do begin
//            if iLength >1 then
//                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SUMMA_SMETA_1_1_' + IntToStr(iTemp), []) then
//                    szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                if iLength > 1 then
                    if ((fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_HOURS_SMETA_1_1_' + IntToStr(iTemp), [])) and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '')) then
                    begin
                        szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ���. ';
                    end;

                szTemp := szTemp + '�� ������� ';

                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_SMETA_TITLE_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString);
                szTemp := szTemp + ' (';

                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'EX_POCHAS_SMETA_KOD_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                szTemp := szTemp + ')';

                szTemp := szTemp + ', ';

            end;

        end;

        szResult := szResult + szTemp + #13#10;

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_EDUC_ZVANIE_AND_ST_1_1', [])
            then if fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '' then
                szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_N_POST_1_1', []) then
        begin
            if not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull then
            begin
            {szTemp    := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
            cTemp     := ansiLowerCase(szTemp)[1];
            szTemp[1] := cTemp;
            szResult := szResult + '<u>������:</u> ' + szTemp + ', ';
            szTemp    := '';}

                szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                s := copy(szTemp, 2, 1);
                if ((ord(s[1]) <= 223) and (ord(s[1]) >= 192)) or (ord(s[1]) = 175) or (ord(s[1]) = 178) or (ord(s[1]) = 170) or (ord(s[1]) = 73) then
                begin
                    szResult := szResult + '<u>������:</u> ' + szTemp + '</b>, ';
                end else
                begin
                    cTemp := ansiLowerCase(szTemp)[1];
                    szTemp[1] := cTemp;
                    szResult := szResult + '<u>������:</u> ' + szTemp + '</b>, ';
                end;
                szTemp := '';
            end;
        end;

        szResult := szResult + '<u>��� ��������� �����:</u> ';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_POCHAS_TYPE_NAME_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

        szResult := szResult + ', ' + '<u>�������:</u> ';
    //  �������������
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_NAME_DEPARTMENT_VERH_1_1', []) then
        begin
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ', ';
        end;
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_NAME_DEPARTMENT_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ',';

        szResult := szResult + '<i> � ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_DATE_BEG_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

        szResult := szResult + ' �� ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_DATE_END_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_HOURS_1_1', []) then
        begin
            if not fdsTemplateReceipt.FBN('PARAMETR_VALUE').IsNull then
            begin
                HoursNew := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat;

                Hours := HoursNew - HoursOld;
                if Hours > 0 then
                begin
                    szResult := szResult + ' �������� ������������ �� ';
                    szResult := szResult + FormatFloat('0.00', Hours) + ' ���.';
                end
                else begin
                        if Hours < 0 then
                        begin
                            szResult := szResult + ' �������� ������������ �� ';
                            szResult := szResult + FormatFloat('0.00', Hours) + ' ���.';
                        end
                        { //���� ��������� 0 - �� �� �������� �������� ��������
                          //����� ���������� ���-�� ����� "������ ������������ �� 0.00 ����� � ��������� ������� ������������..."  
                        else
                        szResult := szResult + ' ������ ������������ �� '}
                end;


                szResult := szResult + ' � ��������� ������� ������������ ';
                szResult := szResult + FormatFloat('0.00', fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat);
                szResult := szResult + ' ���</i>.,';
            end;
        end
        else szResult := szResult + ' ';

        szResult := szResult + ' <u>�����:</u> ';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_TARIF_1_1', []) then
            szResult := szResult + FormatFloat('0.00', fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsFloat);

        szResult := szResult + ' ���. �� ������ (';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_TARIF_TYPE_NAME_1_1', []) then
            szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

        szResult := szResult + '), ';

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_COUNT_SM_1_1', []) then
        begin
            szTemp := '';
            iLength := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsInteger;
            for iTemp := 1 to iLength do begin
//            if iLength >1 then
//                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'PR_SUMMA_SMETA_1_1_' + IntToStr(iTemp), []) then
//                    szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                if iLength > 1 then
                    if ((fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_HOURS_SMETA_1_1_' + IntToStr(iTemp), [])) and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '')) then
                    begin
                        szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + ' ���. ';
                    end;

                szTemp := szTemp + '�� ������� ';

                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_SMETA_TITLE_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + AnsiLowerCase(fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString);
                szTemp := szTemp + ' (';

                if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'POCHAS_SMETA_KOD_1_1_' + IntToStr(iTemp), []) then
                    szTemp := szTemp + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
                szTemp := szTemp + ')';
                if not (iTemp = iLength) then
                begin
                    szTemp := szTemp + ', ';
                end
                else begin
                    szTemp := szTemp + '. ';
                end;
            end;

        end;

        szResult := szResult + szTemp;

        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'NOTE_1', []) then
            if (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> '') and (fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString <> ' ') then
                szResult := szResult + ' ' + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString + '. ';

            //szResult := szResult + szTemp+#13;

        szResult := szResult + #13 + '<u>ϳ������:</u> ';
        if fdsTemplateReceipt.Locate('PARAMETR_NAME', 'REASON_1', []) then
            szTemp := fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;

        iT := 0;
        for i := 0 to Length(szTemp) - 1 do
        begin
            s1 := copy(szTemp, i, 1);
            if s1 = ' ' then inc(iT)
            else break;
        end;

        s := AnsiLowerCase(Copy(szTemp, 1, iT + 1));
    //szTemp := AnsiLowerCase(szTemp);
    //szTemp[1] := s;
        szResult := szResult + s + Copy(szTemp, iT + 2, Length(szTemp));
        //szResult := szResult + fdsTemplateReceipt.FBN('PARAMETR_VALUE').AsString;
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

