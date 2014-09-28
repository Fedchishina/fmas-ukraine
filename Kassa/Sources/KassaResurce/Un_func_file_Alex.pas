unit Un_func_file_Alex;

interface

function ConvTo(S : string):string;
function AddNol(Chislo : string; var proverka : integer):string;
function AllChislo_ukr(z : string) : string;
function AllChislo(z : string) : string;
function Chislo_grn_kop(z : string) : string;
function perevod (m : string) : string;
function perevod_ukr (m : string; fl: boolean) : string;
function edinici_ukr(s : integer; flag : boolean):string;
function Desyatki_ukr(S : word): string;
function Tisyacha_ukr (S : word): string;
function des_ukr (s : word) : string;
function gugol_ukr (s: integer; m : word) : string;
function Kopy_ukr (s : word) : string;
function Grivna_ukr (s : word) : string;
function edinici(s : integer; flag : boolean):string;
function Desyatki(S : word): string;
function Tisyacha (S : word): string;
function des (s : word) : string;
function gugol (s: integer; m : word) : string;
function Kopy (s : word) : string;
function Grivna (s : word) : string;
function MonthFromChislo (m : integer) : string;
function Nomer(z : string) : string;

procedure SummToGrivAdnKop_ukr(z : string; var grivna, kopeyka : string);
procedure SummToGrivAdnKop_rus(z : string; var grivna, kopeyka : string);

implementation

uses SysUtils, Un_R_file_Alex, Dialogs;

function ConvTo(S : string):string;
var
    l, i : integer;
begin
    l := length(S);
    result := S;
    for i := 1 to l do
    begin
        if copy(s, i, 1) = ',' then
            result := copy(S, 1, i+2);
    end;
end;

function AddNol(Chislo : string; var proverka : integer):string;
var
    l : integer;
    s, Chi : string;
    sum : double;
begin
{    if (Chislo = '')     then begin proverka := 1; AddNol := '0,00'; exit; end;
    if (Chislo = '0')    then begin proverka := 1; AddNol := '0,00'; exit; end;
    if (Chislo = '0,')   then begin proverka := 1; AddNol := '0,00'; exit; end;
    if (Chislo = '0,0')  then begin proverka := 1; AddNol := '0,00'; exit; end;
    if (Chislo = '0,00') then begin proverka := 1; AddNol := '0,00'; exit; end;
    if (Chislo = '0.')   then begin proverka := 1; AddNol := '0,00'; exit; end;
    if (Chislo = '0.0')  then begin proverka := 1; AddNol := '0,00'; exit; end;
    if (Chislo = '0.00') then begin proverka := 1; AddNol := '0,00'; exit; end;
    Chi := ConvTo(Chislo);
    l := length(Chi);
    s := Chi;
    if (copy(Chi, l, 1) <> ',') and (copy(Chi, l-1, 1) = ',') then
        s := Chi + '0';
    if (copy(Chi, l, 1) = ',') then
        s := Chi + '00';
    if (copy(Chi, l, 1) <> ',') and (copy(Chi, l-1, 1) <> ',') and (copy(Chi, l-2, 1) <> ',') then
        s := Chi + ',00';
    result := s;}
    if (Chislo <> '')
        then begin
            if TryStrToFloat(Chislo, sum) then sum := StrToFloat(Chislo);
        end
        else sum := 0;

    result := FormatFloat('0.00', sum);
    if proverka = 1 then
    begin
        if length(s)-3 > 16 then proverka := -1;
    end;
end;

function edinici_ukr(s : integer; flag : boolean):string;
begin
      Case S of
        0 : edinici_ukr := '';
        1 : if flag then edinici_ukr := '���� ' else edinici_ukr := '���� ';
        2 : if flag then edinici_ukr := '�� ' else edinici_ukr := '��� ';
        3 : edinici_ukr := '��� ';
        4 : edinici_ukr := '������ ';
        5 : edinici_ukr := '�''��� ';
        6 : edinici_ukr := '����� ';
        7 : edinici_ukr := '�� ';
        8 : edinici_ukr := '��� ';
        9 : edinici_ukr := '���''��� ';
      end;
end;

function Desyatki_ukr(S : word): string;
begin
      Case S of
         1 :  Desyatki_ukr := '������ ';
         2 :  Desyatki_ukr := '�������� ';
         3 :  Desyatki_ukr := '�������� ';
         4 :  Desyatki_ukr := '����� ';
         5 :  Desyatki_ukr := '�''������� ';
         6 :  Desyatki_ukr := '��������� ';
         7 :  Desyatki_ukr := '������� ';
         8 :  Desyatki_ukr := '�������� ';
         9 :  Desyatki_ukr := '���''������ ';
      end;
end;

function Tisyacha_ukr (S : word): string;
begin
      Case S of
          0 : Tisyacha_ukr := '';
          1 : Tisyacha_ukr := '��� ';
          2 : Tisyacha_ukr := '���� ';
          3 : Tisyacha_ukr := '������ ';
          4 : Tisyacha_ukr := '��������� ';
          5 : Tisyacha_ukr := '�''������ ';
          6 : Tisyacha_ukr := '������� ';
          7 : Tisyacha_ukr := '����� ';
          8 : Tisyacha_ukr := '������ ';
          9 : Tisyacha_ukr := '���''����� ';
       end;
end;

function des_ukr (s : word) : string;
begin
      Case S of
        1 :  des_ukr := '���������� ';
        2 :  des_ukr := '���������� ';
        3 :  des_ukr := '���������� ';
        4 :  des_ukr := '������������ ';
        5 :  des_ukr := '�''��������� ';
        6 :  des_ukr := '����������� ';
        7 :  des_ukr := '��������� ';
        8 :  des_ukr := '���������� ';
        9 :  des_ukr := '���''��������� ';
      end;
end;

function gugol_ukr (s: integer; m : word) : string;
begin
//showmessage('i-'+IntToStr(s)+', m-'+IntToStr(m));
   Case S of
                   1 : begin
                        case m of
                           1      : gugol_ukr := '������ ';
                           2..4   : gugol_ukr := '������ ';
                           0,5..9 : gugol_ukr := '����� ';
                        end;
                       end;
                  10 : begin
                         case m of
                           1       : gugol_ukr := '������ ';
                           2..4    : gugol_ukr := '������� ';
                           0,5..9  : gugol_ukr := '������� ';
                         end;
                       end;
                 100 : begin
                         case m of
                            1      : gugol_ukr := '������ ';
                            2..4   : gugol_ukr := '������� ';
                            0,5..9 : gugol_ukr := '������� ';
                         end;
                       end;
               1000  : begin
                          case m of
                            1      : gugol_ukr := '������ ';
                            2..4   : gugol_ukr := '������� ';
                            0,5..9 : gugol_ukr := '������� ';
                          end;
                        end;
   end;
end;

function Kopy_ukr (s : word) : string;
begin
    case s of
        1        : Kopy_ukr := '������ ';
           2..4  : Kopy_ukr := '������ ';
        5..9,0   : Kopy_ukr := '������ ';
    end;
end;

function Grivna_ukr (s : word) : string;
begin
    case s of
        1      : Grivna_ukr := '������ ';
        5..9,0 : Grivna_ukr := '������� ';
        2..4   : Grivna_ukr := '����� ';
    end;
end;

function Chislo_grn_kop(z : string) : string;
var
    summa, kop, griv : string;
    j : int64;
    flag : boolean;
begin
    summa := z;
    j := 1;
    flag := true;
    griv := '';
    kop := '';
    while j <= Length(summa) do
    begin
        if (copy(summa,j,1) <> ',') and flag
            then griv := griv + copy(summa,j,1)
            else flag := false;
        if (copy(summa,j,1) <> ',') and not flag then
            kop := kop + copy(summa,j,1);
        j := j+1;
    end;
    if length(kop)=1 then kop := kop +'0';
    Chislo_grn_kop := '';
    if (kop = '') and (griv <> '0') then Chislo_grn_kop := griv + '���. 00 ���.' {grivna((StrToInt(griv) mod 10))};
    if (griv = '0') and (kop <> '') then Chislo_grn_kop := '0 ' + {perevod(}kop{)} + ' ���.'{Kopy((StrToInt(kop) mod 10))};
    if (griv = '0') and (kop = '')
    then Chislo_grn_kop := '0 ���. 00 ���.';
    if (griv <> '0') and (kop <> '') then Chislo_grn_kop := griv + ' ���. '{grivna((StrToInt(griv) mod 10))} + {perevod(}kop{)} + ' ���.'{Kopy((StrToInt(kop) mod 10))};
end;

function perevod_ukr (m : string; fl : boolean) : string;
var
    name, n, razrad  : string;
    i, j, cifra, len : integer;
    flag : boolean;
begin
//    if n = '0'
//    then perevod := '����' else
//    begin
//showmessage('m- '+m);
    i := 1;
    flag := fl;
    len := Length(m);
    n := m;
    name := '';
    while i <= len do
    begin
         if length(n) >= 3 then
         begin
             razrad := copy(n, length(n)-2, 3);
  // showmessage('1razrad -'+razrad);
             if razrad <> '000' then
             begin
                 cifra := (StrToInt64(razrad) mod 10);
    //    showmessage('cifra - '+IntToStr(cifra));
                 if ((i div 3) = 1) and (i mod 3 =1) then
                        if (StrToInt64(copy(razrad,1,2)) mod 10 <> 1) then name := gugol_ukr(1,0) + name//gugol_ukr(1,cifra) + name
                                                                      else name := gugol_ukr(1,cifra) + name;//gugol_ukr(1,0) + name;
                 if ((i div 3) = 2) and (i mod 3 =1) then
                        if (StrToInt64(copy(razrad,1,2)) mod 10 <> 1) then name := gugol_ukr(10,cifra) + name
                                                                      else name := gugol_ukr(10,0) + name;
                 if ((i div 3) = 3) and (i mod 3 =1) then
                        if (StrToInt64(copy(razrad,1,2)) mod 10 <> 1) then name := gugol_ukr(100,cifra) + name
                                                                      else name := gugol_ukr(100,0) + name;
                 if ((i div 3) = 4) and (i mod 3 =1) then
                        if (StrToInt64(copy(razrad,1,2)) mod 10 <> 1) then name := gugol_ukr(1000,cifra) + name
                                                                      else name := gugol_ukr(1000,0) + name;
                // showmessage('2razrad -'+razrad);
                // showmessage('name -'+name);
                 for j := 1 to 3 do
                 begin
                     cifra := (StrToInt64(razrad) mod 10);
                    // showmessage('cifra - '+IntToStr(cifra));
                     if ((j mod 3) = 0)  then
                          name := Tisyacha_ukr(cifra)+ name;
                   // showmessage('name -'+name+' j '+IntToStr(j));
                     if ((j mod 3) = 2) and (cifra <> 1) and (cifra <> 0) then
                          name := Desyatki_ukr(cifra)+ name;
                   //  showmessage('name -'+name);
                     if ((j mod 3) = 1) {and (cifra <> 0)}
                     then
                     begin
                         if (StrToInt64(copy(razrad,1,2)) mod 10 = 1)
                             then
                             begin
                                 if cifra = 0
                                       then name := Desyatki_ukr(1)+ name
                                       else name := Des_ukr(cifra)+ name
                             end
                          else name := edinici_ukr(cifra, flag) + name;
//                          showmessage('name -'+name);
                     end;
                     razrad := copy(razrad,1,3-j);

                 end;
             end;
             n := copy(n,1,length(n)-3);

         end else
         begin
             cifra := (StrToInt64(n) mod 10);


             if ((i div 3) = 1) and (i mod 3 =1) then
                    if (length(n) > 1) then begin if (StrToInt64(n) div 10 <> 1) then name := gugol_ukr(1,cifra) + name else name := gugol_ukr(1,0) + name end
                                                                  else name := gugol_ukr(1,strToInt(n)) + name;
             if ((i div 3) = 2) and (i mod 3 =1) then
                    if (length(n) > 1) then begin if  (StrToInt64(n) div 10 <> 1) then name := gugol_ukr(10,cifra) + name else name := gugol_ukr(10,0) + name end
                                                                  else name := gugol_ukr(10,StrToInt(n)) + name;
             if ((i div 3) = 3) and (i mod 3 =1) then
                    if (length(n) > 1) then begin if  (StrToInt64(n) div 10 <> 1) then name := gugol_ukr(100,cifra) + name else name := gugol_ukr(100,0) + name end
                                                                  else name := gugol_ukr(100,StrToInt(n)) + name;
             if ((i div 3) = 4) and (i mod 3 =1) then
                    if (length(n) > 1) then begin if  (StrToInt64(n) div 10 <> 1) then name := gugol_ukr(1000,cifra) + name else name := gugol_ukr(1000,0) + name end
                                                                  else name := gugol_ukr(1000,StrToInt(n)) + name;


                 cifra := (StrToInt64(n) mod 10);
                 if (length(n) = 1) then
                      case (i div 3) of
                      1,0    : name := edinici_ukr(cifra,flag)+ name;
                      2..4 : name := edinici_ukr(cifra,false)+ name;
                      end;

                 if (length(n) = 2) and (StrToInt64(n) div 10 <> 1) then
                      name := edinici_ukr(cifra,flag)+ name;

                 if (length(n) = 2) then
                  if (StrToInt64(n) div 10 = 1) then
                      begin
                      if cifra = 0
                             then name := Desyatki_ukr(1)+ name
                             else name := Des_ukr(cifra)+ name;
                      end
                      else name := Desyatki_ukr(StrToInt64(n) div 10)+ name;
         end;
         i := i+3;
    end;
    perevod_ukr := name;
//    end;
end;

function AllChislo_ukr(z : string) : string;
var
    summa, kop, griv : string;
    j : int64;
    flag : boolean;
begin
    summa := z;
    j := 1;
    flag := true;
    griv := '';
    kop := '';
    while j <= Length(summa) do
    begin
        if (copy(summa,j,1) <> ',') and flag
            then griv := griv + copy(summa,j,1)
            else flag := false;
        if (copy(summa,j,1) <> ',') and not flag then
            kop := kop + copy(summa,j,1);
        j := j+1;
    end;
    if length(kop)=1 then kop := kop +'0';
    AllChislo_ukr := '';
    if (kop = '') and (griv <> '0') then AllChislo_ukr := perevod_ukr(griv, true) + '���. 00 ���.' {grivna((StrToInt(griv) mod 10))};
    if (griv = '0') and (kop <> '') then AllChislo_ukr := '���� ������� ' + {perevod(}kop{)} + ' ���.'{Kopy((StrToInt(kop) mod 10))};
    if (griv = '0') and (kop = '')
    then AllChislo_ukr := '���� ������� 00 ���.';

    if (griv <> '0') and (kop <> '') then AllChislo_ukr := perevod_ukr(griv,true) + ' ���. '{grivna((StrToInt(griv) mod 10))} + {perevod(}kop{)} + ' ���.'{Kopy((StrToInt(kop) mod 10))};
end;

function edinici(s : integer; flag : boolean):string;
begin
      Case S of
        0 : edinici := '';
        1 : if flag then edinici := '���� ' else edinici := '���� ';
        2 : if flag then edinici := '��� ' else edinici := '��� ';
        3 : edinici := '��� ';
        4 : edinici := '������ ';
        5 : edinici := '���� ';
        6 : edinici := '����� ';
        7 : edinici := '���� ';
        8 : edinici := '������ ';
        9 : edinici := '������ ';
      end;
end;

function Desyatki(S : word): string;
begin
      Case S of
         1 :  Desyatki := '������ ';
         2 :  Desyatki := '�������� ';
         3 :  Desyatki := '�������� ';
         4 :  Desyatki := '����� ';
         5 :  Desyatki := '��������� ';
         6 :  Desyatki := '���������� ';
         7 :  Desyatki := '��������� ';
         8 :  Desyatki := '����������� ';
         9 :  Desyatki := '��������� ';
      end;
end;

function Tisyacha (S : word): string;
begin
      Case S of
          1 : Tisyacha := '��� ';
          2 : Tisyacha := '������ ';
          3 : Tisyacha := '������ ';
          4 : Tisyacha := '��������� ';
          5 : Tisyacha := '������� ';
          6 : Tisyacha := '�������� ';
          7 : Tisyacha := '������� ';
          8 : Tisyacha := '��������� ';
          9 : Tisyacha := '��������� ';
       end;
end;

function des (s : word) : string;
begin
      Case S of
        1 :  des := '����������� ';
        2 :  des := '���������� ';
        3 :  des := '���������� ';
        4 :  des := '������������ ';
        5 :  des := '���������� ';
        6 :  des := '����������� ';
        7 :  des := '���������� ';
        8 :  des := '������������ ';
        9 :  des := '������������ ';
      end;
end;

function gugol (s: integer; m : word) : string;
begin
   Case S of
                   1 : begin
                        case m of
                           1      : gugol := '������ ';
                           2..4   : gugol := '������ ';
                           0,5..9 : gugol := '����� ';
                        end;
                       end;
                  10 : begin
                         case m of
                           1       : gugol := '������� ';
                           2..4    : gugol := '�������� ';
                           0,5..9  : gugol := '��������� ';
                         end;
                       end;
                 100 : begin
                         case m of
                            1      : gugol := '�������� ';
                            2..4   : gugol := '��������� ';
                            0,5..9 : gugol := '���������� ';
                         end;
                       end;
               1000  : begin
                          case m of
                            1      : gugol := '�������� ';
                            2..4   : gugol := '��������� ';
                            0,5..9 : gugol := '���������� ';
                          end;
                        end;
   end;
end;

function Kopy (s : word) : string;
begin
    case s of
        1      : Kopy := '������� ';
           2..4   : Kopy := '������� ';
        5..9,0 : Kopy := '������ ';
    end;
end;

function Grivna (s : word) : string;
begin
    case s of
        1      : Grivna := '������ ';
        5..9,0 : Grivna := '������� ';
        2..4   : Grivna := '������ ';
    end;
end;

function perevod (m : string) : string;
var
    name, n, razrad  : string;
    i, j, cifra, len : integer;
    flag : boolean;
begin
//    if n = '0'
//    then perevod := '����' else
//    begin
    i := 1;
    flag := true;
    len := Length(m);
    n := m;
    name := '';
    while i <= len do
    begin
         if length(n) >= 3 then
         begin
             razrad := copy(n, length(n)-2, 3);
             if razrad <> '000' then
             begin
             if ((i div 3) = 1) and (i mod 3 =1) then
                    if (StrToInt64(copy(razrad,1,2)) mod 10 <> 1) then name := gugol(1,cifra) + name
                                                                  else name := gugol(1,0) + name;
             if ((i div 3) = 2) and (i mod 3 =1) then
                    if (StrToInt64(copy(razrad,1,2)) mod 10 <> 1) then name := gugol(10,cifra) + name
                                                                  else name := gugol(10,0) + name;
             if ((i div 3) = 3) and (i mod 3 =1) then
                    if (StrToInt64(copy(razrad,1,2)) mod 10 <> 1) then name := gugol(100,cifra) + name
                                                                  else name := gugol(100,0) + name;
             if ((i div 3) = 4) and (i mod 3 =1) then
                    if (StrToInt64(copy(razrad,1,2)) mod 10 <> 1) then name := gugol(1000,cifra) + name
                                                                  else name := gugol(1000,0) + name;

             for j := 1 to 3 do
             begin
                 cifra := (StrToInt64(razrad) mod 10);
                 if ((j mod 3) = 0)  then
                      name := Tisyacha(cifra)+ name;

                 if ((j mod 3) = 2) and (cifra <> 1) and (cifra <> 0) then
                      name := Desyatki(cifra)+ name;

                 if (j mod 3) = 1
                 then
                 begin
                     if (StrToInt64(copy(razrad,1,2)) mod 10 = 1)
                         then
                         begin
                             if cifra = 0
                                   then name := Desyatki(1)+ name
                                   else name := Des(cifra)+ name
                         end
                      else name := edinici(cifra, flag) + name
                 end;
                 razrad := copy(razrad,1,3-j);

             end;
             end;
             n := copy(n,1,length(n)-3);
         end else
         begin
             cifra := (StrToInt64(n) mod 10);

             if ((i div 3) = 1) and (i mod 3 =1) then
                    if (length(n) > 1) then begin if (StrToInt64(n) div 10 <> 1) then name := gugol(1,cifra) + name else name := gugol(1,0) + name end
                                                                  else name := gugol(1,strToInt(n)) + name;
             if ((i div 3) = 2) and (i mod 3 =1) then
                    if (length(n) > 1) then begin if  (StrToInt64(n) div 10 <> 1) then name := gugol(10,cifra) + name else name := gugol(10,0) + name end
                                                                  else name := gugol(10,StrToInt(n)) + name;
             if ((i div 3) = 3) and (i mod 3 =1) then
                    if (length(n) > 1) then begin if  (StrToInt64(n) div 10 <> 1) then name := gugol(100,cifra) + name else name := gugol(100,0) + name end
                                                                  else name := gugol(100,StrToInt(n)) + name;
             if ((i div 3) = 4) and (i mod 3 =1) then
                    if (length(n) > 1) then begin if  (StrToInt64(n) div 10 <> 1) then name := gugol(1000,cifra) + name else name := gugol(1000,0) + name end
                                                                  else name := gugol(1000,StrToInt(n)) + name;

                 cifra := (StrToInt64(n) mod 10);
                 if (length(n) = 1) then
                      case (i div 3) of
                      1,0    : name := edinici(cifra,true)+ name;
                      2..4 : name := edinici(cifra,false)+ name;
                      end;

                 if (length(n) = 2) and (StrToInt64(n) div 10 <> 1) then
                      name := edinici(cifra,true)+ name;

                 if (length(n) = 2) then
                  if (StrToInt64(n) div 10 = 1) then
                      begin
                      if cifra = 0
                             then name := Desyatki(1)+ name
                             else name := Des(cifra)+ name;
                      end
                      else name := Desyatki(StrToInt64(n) div 10)+ name;
         end;
         i := i+3;
    end;
    perevod := name;
//    end;
end;

function AllChislo(z : string) : string;
var
    summa, kop, griv : string;
    j : int64;
    flag : boolean;
begin
    summa := z;
    j := 1;
    flag := true;
    griv := '';
    kop := '';
    while j <= Length(summa) do
    begin
        if (copy(summa,j,1) <> ',') and flag
            then griv := griv + copy(summa,j,1)
            else flag := false;
        if (copy(summa,j,1) <> ',') and not flag then
            kop := kop + copy(summa,j,1);
        j := j+1;
    end;
    AllChislo := '';
    if length(kop)=1 then kop := kop + '0';
    if (kop = '') and (griv <> '0') then AllChislo := perevod(griv) + '���. 00 ���.' {grivna((StrToInt(griv) mod 10))};
    if (griv = '0') and (kop <> '') then AllChislo := '���� ������� ' + {perevod(}kop{)} + ' ���.'{Kopy((StrToInt(kop) mod 10))};
    if (griv = '0') and (kop = '')
    then AllChislo := '���� ������� 00 ���.';
    if (griv <> '0') and (kop <> '') then AllChislo := perevod(griv) + ' ���. '{grivna((StrToInt(griv) mod 10))} + {perevod(}kop{)} + ' ���.'{Kopy((StrToInt(kop) mod 10))};
end;

function MonthFromChislo (m : integer) : string;
begin
      Case m of
          1 : MonthFromChislo := Un_R_file_Alex.MY_JANUARY;
          2 : MonthFromChislo := Un_R_file_Alex.MY_FEBRIARY;
          3 : MonthFromChislo := Un_R_file_Alex.MY_MARCH;
          4 : MonthFromChislo := Un_R_file_Alex.MY_APRILE;
          5 : MonthFromChislo := Un_R_file_Alex.MY_MAY;
          6 : MonthFromChislo := Un_R_file_Alex.MY_JUNE;
          7 : MonthFromChislo := Un_R_file_Alex.MY_JULY;
          8 : MonthFromChislo := Un_R_file_Alex.MY_AUGUST;
          9 : MonthFromChislo := Un_R_file_Alex.MY_SEPTEMBER;
         10 : MonthFromChislo := Un_R_file_Alex.MY_OCTOBER;
         11 : MonthFromChislo := Un_R_file_Alex.MY_NOVEMBER;
         12 : MonthFromChislo := Un_R_file_Alex.MY_DESEMBER;
       end;
end;

procedure SummToGrivAdnKop_ukr(z : string; var grivna, kopeyka : string);
var
    summa, kop, griv : string;
    j : int64;
    flag : boolean;
begin
    summa := z;
    j := 1;
    flag := true;
    griv := '';
    kop := '';
    while j <= Length(summa) do
    begin
        if (copy(summa,j,1) <> ',') and flag
            then griv := griv + copy(summa,j,1)
            else flag := false;
        if (copy(summa,j,1) <> ',') and not flag then
            kop := kop + copy(summa,j,1);
        j := j+1;
    end;
    if length(kop)=1 then kop := kop +'0';
    grivna  := '';
    kopeyka := '';
    if (kop = '')   and (griv <> '0') then
    begin
        grivna  := perevod_ukr(griv,flag);
        kopeyka := '00';
    end;
    if (griv = '0') and (kop <> '') then
    begin
        grivna  := '����';
        kopeyka := kop;
    end;
    if (griv = '0') and (kop = '') then
    begin
        grivna  := '����';
        kopeyka := '00';
    end;
    if (griv <> '0') and (kop <> '') then
    begin
        grivna  := perevod_ukr(griv, flag);// ' ���. '{grivna((StrToInt(griv) mod 10))} + {perevod(}kop{)} + ' ���.'{Kopy((StrToInt(kop) mod 10))};
        kopeyka := kop;
    end;
end;

procedure SummToGrivAdnKop_rus(z : string; var grivna, kopeyka : string);
var
    summa, kop, griv : string;
    j : int64;
    flag : boolean;
begin
    summa := z;
    j := 1;
    flag := true;
    griv := '';
    kop := '';
    while j <= Length(summa) do
    begin
        if (copy(summa,j,1) <> ',') and flag
            then griv := griv + copy(summa,j,1)
            else flag := false;
        if (copy(summa,j,1) <> ',') and not flag then
            kop := kop + copy(summa,j,1);
        j := j+1;
    end;
    grivna  := '';
    kopeyka := '';
    if length(kop)=1 then kop := kop + '0';
    if (kop = '') and (griv <> '0') then
    begin
        grivna  := perevod(griv);
        kopeyka := '00';
    end;
    if (griv = '0') and (kop <> '') then
    begin
        grivna  := '����';
        kopeyka := kop;
    end;
    if (griv = '0') and (kop = '') then
    begin
        grivna := '����';
        kopeyka := '00';
    end;
    if (griv <> '0') and (kop <> '') then
    begin
        grivna := perevod(griv);
        kopeyka := kop;
    end;
end;

function Nomer(z : string) : string;
var
    num, num1, num2 : string;
    j : int64;
    flag : boolean;
begin
    num   := z;
    j     := 1;
    flag  := true;
    Nomer := '';
    while j <= Length(num) do
    begin
        if (copy(num,j,1) <> '�') and flag
            then num1 := num1 + copy(num,j,1)
            else flag := false;
        if (copy(num,j,1) <> '�') and not flag then
            num2 := num2 + copy(num,j,1);
        j := j+1;
    end;
    Nomer := num2;
end;


end.
