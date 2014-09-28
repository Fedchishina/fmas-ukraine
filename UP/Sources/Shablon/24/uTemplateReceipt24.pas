unit uTemplateReceipt24; {������ ������� ������������}

interface

uses SysUtils, Classes, Dialogs, ibase, DB, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, pFIBStoredProc,
     Windows, Messages, Variants, Graphics, Controls, Forms, StdCtrls, ActnList, Registry, ExtCtrls;

function GetTemplateString(hConnection: TISC_DB_HANDLE; id_session, id_item : Int64): String; stdcall;

exports GetTemplateString;

implementation

function GetTemplateString(hConnection: TISC_DB_HANDLE; id_session, id_item : Int64): String; stdcall;
var szResult, stavka_str : String;            //  ������ ��� ������������ �������������� ������
    szTemp, s, s1, s2{, shablon, shadow} : String;            //  ������ ��� �������� ��������� ������
    cTemp               : Char;
    iTemp, k, i, j, m, iT   : Integer;           //  ���������� ��� �������� �������� ������ ����
    iLength, mm         : Integer;           //  ���������� ��� �������� �������� ������ ���� ����� �����
    fTemp, rate_count   : Currency;            //  ���������� ��� �������� �������� ������������� ����
    db                  : TpFIBDatabase;     //  ����
    TR, TW              : TpFIBTransaction;  //  ����������
    DS                  : TpFIBDataSet;      //  �������
    Stored              : TpFIBStoredProc;
    is_b_p, UseDigit, iR : Integer;  //�������� ����������� �� ������ � ���������
     BonusSumma, BonusSummaPps    : String;
    StrRaise, StrRaiseTemp, sT  : string;
    flR                 :Boolean;
//    id_ses, id_item_shadow : int64;

//    HandlePack : HModule;
//    func : function(hConnection: TISC_DB_HANDLE; id_session, id_item : Int64): String; stdcall;

    d_inf               : TDateTime;
    flag_bonus, flag_name_cond, flagok : boolean;
    max_date, min_date, d, d1  : TDateTime;

begin
  try
    min_date := StrToDate('01.01.1000');
    max_date := StrToDate('01.01.1000');

    db                    := TpFIBDatabase.Create(NIL);
    TR                    := TpFIBTransaction.Create(NIL);
    TW                    := TpFIBTransaction.Create(NIL);
    DS                    := TpFIBDataSet.Create(NIL);
    Stored                := TpFIBStoredProc.Create(NIL);
    db.SQLDialect         := 3;
    db.Handle             := hConnection;
    TR.DefaultDatabase    := db;

    TW.DefaultDatabase    := db;
    db.DefaultTransaction := TR;
    DS.Database           := db;
    DS.Transaction        := TR;
    Stored.Database       := db;
    Stored.Transaction    := TW;
    TR.StartTransaction;
    //  ������������ �������
    szResult := '';

    DS.Close;
    DS.SQLs.SelectSQL.Text:='select is_bonus_print from UP_SYS_INI_CONSTS';
    DS.Open;
    if varIsNull(DS['is_bonus_print']) then is_b_p:=0 else
    is_b_p:=DS['is_bonus_print'];

    DS.Close;
    DS.SQLs.SelectSQL.Text := 'SELECT * FROM INI_ASUP_CONSTS';
    DS.Open;

    stavka_str := ds.fbn('STAVKI_DISP_FORMAT').Asstring;
    DS.Close;
    DS.SQLs.SelectSQL.Text := 'SELECT * FROM PUB_SYS_DATA';
    DS.Open;
    try d_inf := DS.fbn('INFINITY_DATE').AsDateTime; except d_inf := StrToDate('31.12.2050'); end;
    DS.Close;


    DS.SQLs.SelectSQL.Text := 'SELECT * FROM up_dt_order_item_body WHERE id_session ='+IntToStr(id_session)+'';
    DS.Open;

    if DS.Locate('PARAMETR_NAME', 'COUNT_ITEMS', []) then
    begin
        if DS.FBN('PARAMETR_VALUE').AsInteger >= 1 then
        begin
            k := DS.FBN('PARAMETR_VALUE').AsInteger;
            if DS.Locate('PARAMETR_NAME', 'INST_DATE_BEG_1_1', [])
                then min_date := DS.FBN('PARAMETR_VALUE').AsDateTime
                else min_date := StrToDate('31.12.9999');
            if DS.Locate('PARAMETR_NAME', 'INST_DATE_END_1_1', [])
                then max_date := DS.FBN('PARAMETR_VALUE').AsDateTime
                else max_date := StrToDate('01.01.1000');
            for i := 2 to k+1 do
            begin
                if DS.Locate('PARAMETR_NAME', 'COUNT_MOVING_INST_'+IntToStr(i), []) then
                begin
                    for j := 1 to DS.FBN('PARAMETR_VALUE').AsInteger do
                    begin
                        if DS.Locate('PARAMETR_NAME', 'INST_DATE_BEG_'+IntToStr(i)+ '_' +IntToStr(j), [])
                            then if min_date > DS.FBN('PARAMETR_VALUE').AsDateTime then
                                     min_date := DS.FBN('PARAMETR_VALUE').AsDateTime;

                        if DS.Locate('PARAMETR_NAME', 'INST_DATE_END_'+IntToStr(i)+ '_' +IntToStr(j), [])
                            then if max_date < DS.FBN('PARAMETR_VALUE').AsDateTime then
                                     max_date := DS.FBN('PARAMETR_VALUE').AsDateTime;
                    end;
                end;
            end;
        end else
        begin
            if DS.Locate('PARAMETR_NAME', 'INST_DATE_BEG_1_1', [])
                then min_date := DS.FBN('PARAMETR_VALUE').AsDateTime
                else min_date := StrToDate('01.01.1000');
            if DS.Locate('PARAMETR_NAME', 'INST_DATE_END_1_1', [])
                then max_date := DS.FBN('PARAMETR_VALUE').AsDateTime
                else max_date := StrToDate('01.01.1000');
        end;
    end;

    if DS.Locate('PARAMETR_NAME', 'INST_USE_DIGIT_1_1', []) then
       if not DS.FBN('PARAMETR_VALUE').IsNull then
          UseDigit:=DS.FBN('PARAMETR_VALUE').AsInteger;

    //  ����� ������
    if DS.Locate('PARAMETR_NAME', 'NUM_ITEM_1', []) then
        szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString + '.';
    //  ����� ���������
    if DS.Locate('PARAMETR_NAME', 'NUM_SUB_ITEM_1', []) then
        szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString + '. ';
    //  �������
    szResult := szResult + '<u>ϲ�:</u> <b>';
    if DS.Locate('PARAMETR_NAME', 'INST_SECOND_NAME_UA_1_1', []) then
    //  ���������� �������
        szResult := szResult + AnsiUpperCase(DS.FBN('PARAMETR_VALUE').AsString) + ' ';
    //  ���
    szTemp := '';
    if DS.Locate('PARAMETR_NAME', 'INST_FIRST_NAME_UA_1_1', []) then
    begin
        szResult := szResult + AnsiUpperCase(DS.FBN('PARAMETR_VALUE').AsString) + ' ';
        //  ������ ����� ���������, � ��������� ���������
{        szTemp := DS.FBN('PARAMETR_VALUE').AsString;
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;}
    end;
    //  ��������
    szTemp := '';
    if DS.Locate('PARAMETR_NAME', 'INST_LAST_NAME_UA_1_1', []) then
    begin
        szResult := szResult + AnsiUpperCase(DS.FBN('PARAMETR_VALUE').AsString) + ' ';
        //  ������ ����� ���������, � ��������� ���������
{        szTemp := DS.FBN('PARAMETR_VALUE').AsString;
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;}
    end;
//    szResult := szResult + szTemp;

    if DS.Locate('PARAMETR_NAME', 'INST_TN_1_1', [])
        then szResult := szResult + '(TH ' + DS.FBN('PARAMETR_VALUE').AsString + ')';

    szResult := szResult + '</b>, ';


    if DS.Locate('PARAMETR_NAME', 'INST_EDUC_ZVANIE_AND_ST_1_1', []) then
        if (not DS.FBN('PARAMETR_VALUE').isNull) and (DS.FBN('PARAMETR_VALUE').AsString <> '')
            then szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString + ', ';

    szResult := szResult + '<u>��� ���������:</u> ';

    if DS.Locate('PARAMETR_NAME', 'TO_TYPE_POST_NAME_1_1', []) then
    begin
{        szTemp := DS.FBN('PARAMETR_VALUE').AsString;
        cTemp := UpCase(szTemp[1]);
        szTemp := AnsiLowerCase(szTemp);
        szTemp[1] := cTemp;}
        szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString + ', ';
        szTemp := '';
    end;

//    if DS.Locate('PARAMETR_NAME', 'TO_DATE_END_1_1', []) then
//        szResult := szResult + ', '+'�������� ������ �� ' + DS.FBN('PARAMETR_VALUE').AsString + ', ';
    if DS.Locate('PARAMETR_NAME', 'TO_WORK_REASON_1_1', []) then
        if (DS.FBN('PARAMETR_VALUE').AsString <> '') and (DS.FBN('PARAMETR_VALUE').AsString <> ' ') then
            szResult := szResult + '<u>��� ������:</u> ' + DS.FBN('PARAMETR_VALUE').AsString + ', ';

    szResult := szResult + '<u>������</u>: ';
    if DS.Locate('PARAMETR_NAME', 'TO_NAME_POST_SALARY_1_1', []) then
//        szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString + ', ';
    begin
        szTemp    := DS.FBN('PARAMETR_VALUE').AsString;
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
    end;


    szResult := szResult + '<u>�������:</u> ';
    if DS.Locate('PARAMETR_NAME', 'TO_NAME_DEPARTMENT_VERH_1_1', []) then
    begin
        szResult  := szResult + DS.FBN('PARAMETR_VALUE').AsString + ', ';
    end;

    if DS.Locate('PARAMETR_NAME', 'TO_NAME_DEPARTMENT_1_1', []) then
        szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString;

    fTemp := 0;
    iLength := 0;

    if DS.Locate('PARAMETR_NAME', 'COUNT_ITEMS_NOT5', []) then
    begin
        k := DS.FBN('PARAMETR_VALUE').AsInteger;
        for j := 1 to k+1 do
        begin
            szTemp := '';


    fTemp    := 0;
    iLength  := 0;

    if DS.Locate('PARAMETR_NAME', 'INST_COUNT_SM_'+IntToStr(j)+'_1', []) then
        iLength     := DS.FBN('PARAMETR_VALUE').AsInteger;
    rate_count  := 0;
    DecimalSeparator    := '.';
    for iTemp := 1 to iLength do begin
        if DS.Locate('PARAMETR_NAME', 'INST_RATE_COUNT_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []) then
        begin
            rate_count := rate_count + DS.FBN('PARAMETR_VALUE').AsFloat;
        end;

        if iLength > 1 then
        begin
            if iTemp=1 then szTemp := ' ';
            szTemp := szTemp + FormatFloat(stavka_str, DS.FBN('PARAMETR_VALUE').AsFloat) + ' ������ ';
        end;



        szTemp := szTemp + ' (';

        DS.Locate('PARAMETR_NAME', 'INST_SUMMA_SMETA_PPS_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);
        if (not DS.FBN('PARAMETR_VALUE').IsNull) and (DS.FBN('PARAMETR_VALUE').AsFloat <> 0) then
        begin
            flagok := true;
        end else
            flagok := false;

        DS.Locate('PARAMETR_NAME', 'INST_SUMMA_SMETA_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);
        fTemp := fTemp + DS.FBN('PARAMETR_VALUE').AsFloat;

        if (iLength > 1) or (flagok) then
        begin
            szTemp := szTemp + DS.FBN('PARAMETR_VALUE').AsString + ' ���. - �� ������� ';
        end else
        begin
            szTemp := szTemp + '�� ������� ';
        end;

        DS.Locate('PARAMETR_NAME', 'INST_SMETA_TITLE_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);

        szTemp := szTemp + AnsiLowerCase(DS.FBN('PARAMETR_VALUE').AsString) + ' (';

        DS.Locate('PARAMETR_NAME', 'INST_SMETA_KOD_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);
        szTemp := szTemp + DS.FBN('PARAMETR_VALUE').AsString+')';


        DS.Locate('PARAMETR_NAME', 'INST_SUMMA_SMETA_PPS_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);
        if (not DS.FBN('PARAMETR_VALUE').IsNull) and (DS.FBN('PARAMETR_VALUE').AsFloat <> 0) then
        begin
            fTemp  := fTemp + DS.FBN('PARAMETR_VALUE').AsFloat;
            szTemp := szTemp + ', ' + DS.FBN('PARAMETR_VALUE').AsString + ' ���. - �� ������� ';

            DS.Locate('PARAMETR_NAME', 'INST_SMETA_TITLE_PPS_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);
            szTemp := szTemp + AnsiLowerCase(DS.FBN('PARAMETR_VALUE').AsString) + ' (';

            DS.Locate('PARAMETR_NAME', 'INST_SMETA_KOD_PPS_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);
            szTemp := szTemp + DS.FBN('PARAMETR_VALUE').AsString;

            DS.Locate('PARAMETR_NAME', 'INST_KOEFF_PPS_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);
            if (not DS.FBN('PARAMETR_VALUE').IsNull) and (DS.FBN('PARAMETR_VALUE').Asfloat <> 0) then
            begin
                DS.Locate('PARAMETR_NAME', 'INST_KOEFF_PPS_'+IntToStr(j)+'_1_' + IntToStr(iTemp), []);
                szTemp := szTemp + ', ���������� �������� ���������� ������ ' + DS.FBN('PARAMETR_VALUE').AsString+'))';
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

                    if k > 0 then
                    begin
                        if j = k+1
                            then szTemp := szTemp + ').'
                            else szTemp := szTemp + '),';
                    end else
                    begin
                         szTemp := szTemp + ').';
                    end;
                end;

            end;

            if k > 0 then
            begin
                if DS.Locate('PARAMETR_NAME', 'INST_DATE_BEG_'+IntToStr(j)+'_1', [])
                    then szResult := szResult + #13 + '<b> � ' + DS.FBN('PARAMETR_VALUE').AsString;

                if DS.Locate('PARAMETR_NAME', 'INST_DATE_END_'+IntToStr(j)+'_1', []) then
                begin
                    if DS.FBN('PARAMETR_VALUE').AsDateTime < d_inf then
                        szResult := szResult + ' �� ' + DS.FBN('PARAMETR_VALUE').AsString + ' ';

                end;
                szResult := szResult + '</b>';
            end;


            szResult := szResult + ', ���������� �� <b> ' + FormatFloat(stavka_str, rate_count);
            szResult := szResult + ' ������</b> ';
            if UseDigit=2 then szResult := szResult + '� ������� '+ FormatFloat('0.00', fTemp) + ' ���. <b><i>���������� ������</i></b> � '
            else szResult := szResult + '� ������� '+FormatFloat('0.00', fTemp) + ' ���. �� ����� <b><i>���������� ������</i></b> � ';

            if min_date <> StrToDate('01.01.1000')
            then szResult := szResult + '<b>'+ DateToStr(min_date) + '</b> '
            else
            if DS.Locate('PARAMETR_NAME', 'INST_DATE_BEG_1_1', []) then
                szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString + '';

            if max_date <> StrToDate('01.01.1000') then
            begin
               if max_date < d_inf then
               begin
                  szResult := szResult + '�� ';
                  szResult := szResult + '<b>'+DateToStr(max_date) + '</b> ';
               end;
            end;
             szResult := szResult +  szTemp;

            szResult := szResult + ' ';


            if (k> 0) and (j=k+1) then
            begin
                szResult := szResult + #13;
            end;

        end;
    end;

    if DS.Locate('PARAMETR_NAME', 'NOTE_1', []) then
        if (DS.FBN('PARAMETR_VALUE').AsString <> '') and (DS.FBN('PARAMETR_VALUE').AsString <> ' ') then
            szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString + '.';

    szResult := szResult + #13;
    //  ���������� ��� ����� ������� � ��������
    if DS.Locate('PARAMETR_NAME', 'COUNT_BONUS', []) then
    begin

        k := DS.FBN('PARAMETR_VALUE').AsInteger;

        if k>=1 then
        begin
            flag_bonus := true;
            for i := 2 to k+1 do
            begin
                if DS.Locate('PARAMETR_NAME', 'MOVING_TYPE_' + IntToStr(i), []) then
                begin
                    if DS.FBN('PARAMETR_VALUE').AsInteger = 5 then
                    begin
                        if flag_bonus then
                            szResult := szResult + '<u>������� �� ��������:</u> ';
                        flag_bonus := false;
                    end;
                end;
            end;
        end;
        for i := 2 to k+1 do
        begin
            if DS.Locate('PARAMETR_NAME', 'BONUS_COUNT_INST_' + IntToStr(i), []) then
            begin
                iLength := DS.FBN('PARAMETR_VALUE').AsInteger;
                for iTemp := 1 to iLength do
                begin
                    szResult := szResult + '<b>';
                    if DS.Locate('PARAMETR_NAME', 'BONUS_DATE_BEG_'+ IntToStr(i)+ '_' + IntToStr(iTemp), []) then
                        szResult := szResult + ' � ' + DS.FBN('PARAMETR_VALUE').AsString + ' ';
                    if DS.Locate('PARAMETR_NAME', 'BONUS_END_BEG_'+ IntToStr(i)+ '_' + IntToStr(iTemp), []) then
                        if DS.FBN('PARAMETR_VALUE').AsDateTime < d_inf then
                            szResult := szResult + '�� ' + DS.FBN('PARAMETR_VALUE').AsString + ' ';
                    szResult := szResult + '</b>';
              
                    StrRaiseTemp:='';
                    if DS.Locate('PARAMETR_NAME', 'BONUS_RAISE_NAME_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp), []) then
                    StrRaiseTemp:=DS.FBN('PARAMETR_VALUE').AsString;
                    StrRaise:='';
                    flR:=False;
                    iR:=1;
                    while (iR<=Length(StrRaiseTemp)) do
                    begin
                       sT:=copy(StrRaiseTemp,iR,1);
                       if (flR=False) then
                       begin
                          if (sT='"') then
                          begin
                             Inc(iR);
                             StrRaise:=StrRaise+'"'+copy(StrRaiseTemp,iR,1);
                             flR:=True;
                          end
                          else StrRaise:=StrRaise+AnsiLowerCase(sT);
                       end
                       else
                       begin
                          if (sT='"') then
                          begin
                             StrRaise:=StrRaise+AnsiLowerCase(sT);
                             flR:=False;
                          end
                          else StrRaise:=StrRaise+sT;
                       end;
                       Inc(iR);
                    end;

                    szResult := szResult + StrRaise + ' - ';
                    if DS.Locate('PARAMETR_NAME', 'BONUS_PERCENT_'+ IntToStr(i)+ '_' + IntToStr(iTemp), [])
                        then begin
                            if not DS.FBN('PARAMETR_VALUE').isNull
                                then begin
                                    szResult := szResult + FormatFloat('0.00', DS.FBN('PARAMETR_VALUE').AsFloat) + '% ���������� ������ ';
                                    szResult:=szResult+'(';
                                    if DS.Locate('PARAMETR_NAME', 'BONUS_COUNT_BONUS_SMET_'+ IntToStr(i)+ '_' + IntToStr(iTemp), []) then
                                        m := DS.FBN('PARAMETR_VALUE').AsInteger
                                        else m := 0;
                                    for mm := 1 to m do
                                    begin
                                        BonusSumma:='';
                                        DS.Locate('PARAMETR_NAME', 'BONUS_SUMMA_SMETA_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []);
                                        BonusSumma:=FormatFloat('0.00', DS.FBN('PARAMETR_VALUE').AsFloat) + ' ���. ';
                                        if DS.Locate('PARAMETR_NAME', 'BONUS_SMETA_BONUS_TITLE_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []) then
                                            szResult := szResult + BonusSumma + '- �� ������� ' + DS.FBN('PARAMETR_VALUE').AsString;
                                        if DS.Locate('PARAMETR_NAME', 'BONUS_SMETA_BONUS_KOD_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []) then
                                            szResult := szResult + ' (' +DS.FBN('PARAMETR_VALUE').AsString + ')';
                                        BonusSummaPps:='';
                                        DS.Locate('PARAMETR_NAME', 'BONUS_SUMMA_SMETA_PPS_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []);
                                        if (not VarIsNull(DS.FBN('PARAMETR_VALUE').Value)) then
                                        if DS.FBN('PARAMETR_VALUE').AsFloat>0 then
                                        begin
                                            BonusSummaPps:=FormatFloat('0.00', DS.FBN('PARAMETR_VALUE').AsFloat) + ' ���. ';
                                            if DS.Locate('PARAMETR_NAME', 'BONUS_SMETA_TITLE_PPS_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []) then
                                               szResult := szResult + ', '+BonusSummaPps+'- �� ������� ' + DS.FBN('PARAMETR_VALUE').AsString;
                                            if DS.Locate('PARAMETR_NAME', 'BONUS_SMETA_KOD_PPS_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []) then
                                               szResult := szResult + ' (' +DS.FBN('PARAMETR_VALUE').AsString + ')';//', ���������� ��������� ���������� ������ '+KoeffPps+')';
                                        end;
                                        if (m <> mm) then szResult := szResult + ', '
                                        else szResult := szResult + ')'
                                    end;

                                end
                                else begin
                                    if DS.Locate('PARAMETR_NAME', 'BONUS_COUNT_BONUS_SMET_'+ IntToStr(i)+ '_' + IntToStr(iTemp), []) then
                                        m := DS.FBN('PARAMETR_VALUE').AsInteger
                                        else m := 0;
                                    for mm := 1 to m do
                                    begin
                                            if DS.Locate('PARAMETR_NAME', 'BONUS_SUMMA_SMETA_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), [])
                                            then begin
                                                szResult := szResult + FormatFloat('0.00', DS.FBN('PARAMETR_VALUE').AsFloat) + ' ���. ';
                                                BonusSumma:='';
                                                DS.Locate('PARAMETR_NAME', 'BONUS_SUMMA_SMETA_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []);
                                                BonusSumma:=FormatFloat('0.00', DS.FBN('PARAMETR_VALUE').AsFloat) + ' ���. ';
                                                szResult:=szResult+'(�� ������� ';
                                                if DS.Locate('PARAMETR_NAME', 'BONUS_SMETA_BONUS_TITLE_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []) then
                                                    szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString;
                                                if DS.Locate('PARAMETR_NAME', 'BONUS_SMETA_BONUS_KOD_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []) then
                                                    szResult := szResult + ' (' +DS.FBN('PARAMETR_VALUE').AsString + '))';
                                                BonusSummaPps:='';
                                                 if DS.Locate('PARAMETR_NAME', 'BONUS_SUMMA_SMETA_PPS_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), [])
                                                 then
                                                 begin
                                                   if (not VarIsNull(DS.FBN('PARAMETR_VALUE').Value)) then
                                                   if (DS.FBN('PARAMETR_VALUE').AsFloat>0) then
                                                    begin
                                                       BonusSummaPps:=FormatFloat('0.00', DS.FBN('PARAMETR_VALUE').AsFloat) + ' ���. ';
                                                       if DS.Locate('PARAMETR_NAME', 'BONUS_SMETA_TITLE_PPS_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []) then
                                                          szResult := szResult + ', '+BonusSummaPps+'- �� ������� ' + DS.FBN('PARAMETR_VALUE').AsString;
                                                       if DS.Locate('PARAMETR_NAME', 'BONUS_SMETA_KOD_PPS_BONUS_'+ IntToStr(i)+ '_' + IntToStr(iTemp)+'_'+IntToStr(mm), []) then
                                                          szResult := szResult + ' (' +DS.FBN('PARAMETR_VALUE').AsString + ')';// ', ���������� ��������� ���������� ������ '+KoeffPps+')';
                                                    end;
                                              end;
                                            end;
                                        if (m <> mm) then szResult := szResult + ', ';
                                    end;
                                 end;
                        end;

//                end;



                    if (i = k+1)
                        then szResult := szResult + '. '+#13
                        else szResult := szResult + ', ';
                end;
            end else
            begin
                szResult := copy(szResult, 1, LENGTH(szResult)-2) + '. '+#13;
            end;
        end;
    end;
    //  �������
    szResult := szResult + '<u>ϳ������:</u> ';
    DS.Locate('PARAMETR_NAME', 'REASON_1', []);
    //szResult := szResult + DS.FBN('PARAMETR_VALUE').AsString;
    szTemp := DS.FBN('PARAMETR_VALUE').AsString;
    iT:=0;
       for i:=0 to length(szTemp)-1 do
       begin
          s1:=copy(szTemp,i,1);
          if s1=' '  then
          begin
              inc(iT);
          end
          else break;
       end;
    s := AnsiLowerCase(Copy(szTemp,1,iT+1));
    szResult := szResult + s + Copy(szTemp,iT+2,Length(szTemp)); 
    TR.Rollback;
    DS.Free;
    TR.Free;
    db.Free;
    DecimalSeparator    := ',';
  except on Error: Exception do begin
    MessageDlg('��������� ���������� ������', mtError, [mbOk], 0);
//    szResult := '';
  end;
  end;
    Result := szResult;
end;

end.
