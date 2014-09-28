unit SumPropis;

interface
const
  N1: array[0..9] of string = ('����',
    '����',
    '��',
    '���',
    '������',
    '�''���',
    '�����',
    '��',
    '���',
    '���''���');

const
  N1000: array[1..9] of string = ('����',
    '��',
    '���',
    '������',
    '�''���',
    '�����',
    '��',
    '���',
    '���''���');

const
  N11: array[0..9] of string = ('������',
    '����������',
    '����������',
    '����������',
    '������������',
    '�''���������',
    '�����������',
    '���������',
    '����������',
    '���''���������');

const
  N2: array[1..9] of string = ('������',
    '��������',
    '��������',
    '�����',
    '�''�������',
    '���������',
    '�������',
    '��������',
    '���''������'
    );

const
  N3: array[1..9] of string = ('���',
    '����',
    '������',
    '���������',
    '�''�����',
    '�������',
    '�����',
    '������',
    '���''�����'
    );

const
  NThousand: array[1..3] of string = ('������ ',
    '������ ',
    '����� ');

const
  NMillion: array[1..3] of string = ('������ ',
    '������� ',
    '������� ');

function ConvertNumber(const num : extended) : string;

implementation
uses SysUtils;

function IntToStroka(n: Integer): AnsiString;
var
  i, j, dec, j0: Integer;
  s: string;
  degt, degm: boolean;
  buf: string;
begin
  degt := false;
  degm := false;
  s := IntToStr(n);
  Result := '';
  for i := length(s) downto 1 do
  begin
    dec := (length(s) - i + 1); // ������� ������
    j := StrToInt(s[i]); // ������� �����

    if j = 0 then
      j0 := 0;
    if (not (j in [1..9])) and (dec <> 1) then
      Continue;

    if Dec in [1, 4, 7, 10] then
    try
//     if i > 1 then
      if StrToInt(s[i - 1]) = 1 then
      begin
        j0 := j;
        Continue;
      end; // ���������� � 10..19 �����/���������
    except
    end;

    if Dec in [2, 5, 8, 11] then
      if j = 1 then
      begin
        case dec of
          2: Result := N11[j0] + ' '; // ���� 10..19 �����/���������
          5:
            begin
              Result := N11[j0] + ' ' + NThousand[3] + Result;
              degt := true;
            end;
          8:
            begin
              Result := N11[j0] + ' ' + NMillion[3] + Result;
              degm := true;
            end;
        end;
        Continue;
      end;

    if DEC in [4..6] then
    begin
      if (j <> 0) and (not degt) then
      begin
        if dec = 4 then
          case j of
            1: buf := NThousand[1];
            2..4: buf := NThousand[2];
              // �������� ����� ������ ���� ��� �� ���������
            5..9: buf := NThousand[3];
          end
        else
          buf := NThousand[3];
        degt := true;
      end;
    end;

    if DEC in [7..9] then
    begin
      if (j <> 0) and (not degm) then
      begin
        if dec = 7 then
          case j of
            1: buf := NMillion[1];
            2..4: buf := NMillion[2];
              // �������� ����� ������� ���� ��� �� ���������
            5..9: buf := NMillion[3];
          end
        else
          buf := NMillion[3];
        degm := true;
      end;
    end;

    Result := buf + Result;

    while dec > 3 do
      dec := dec - 3;

    case Dec of
      1: if j <> 0 then
          if degt and (not degm) then
            Result := N1000[j] + ' ' + Result
          else
            Result := N1[j] + ' ' + Result; // 3 ���
      2: Result := N2[j] + ' ' + Result; // 23 �������� ���
      3: Result := N3[j] + ' ' + Result; // 123 ��� �������� ���
    end;
    Buf := '';
    j0 := j;
  end;
end;

function ConvertNumber(const num : extended) : string;
var
 i1, i2 : int64;
 s, k   : string;
begin
{ i1 := Trunc(num);
 s := ConvertNumberGrn(i1);
 i2 := Round(Frac(num) * 100);
 if i2 <> 0 then s := s + ',' + SPACE_CHAR + ConvertNumberKop(i2) + '.';
 Result := Trim(s);}
 if num = 1000000 then
 begin
   Result := '���� ������ ���. 00���.';
   exit;
 end;
 if num = 2000000 then
 begin
   Result := '��� ������� ���. 00���.';
   exit;
 end;
 if num = 3000000 then
 begin
   Result := '��� ������� ���. 00���.';
   exit;
 end;
 if num = 4000000 then
 begin
   Result := '������ ������� ���. 00���.';
   exit;
 end;
 if num = 5000000 then
 begin
   Result := '�''��� ������� ���. 00���.';
   exit;
 end;
 if num = 6000000 then
 begin
   Result := 'س��� ������� ���. 00���.';
   exit;
 end;
 if num = 7000000 then
 begin
   Result := 'ѳ� ������� ���. 00���.';
   exit;
 end;
 if num = 8000000 then
 begin
   Result := '³�� ������� ���. 00���.';
   exit;
 end;
 if num = 9000000 then
 begin
   Result := '���''��� ������� ���. 00���.';
   exit;
 end;
 i1 := Trunc(num);
 s := IntToStroka(i1);
 i2 := Round(Frac(num) * 100);
 k := IntToStr(i2);
 if Length(k) = 1 then k := '0' + k;
 if trim(s) = '' then s := '����';
 s := s + ' ���. ' +  k + '���.';
 // if i2 <> 0 then s := s + ',' + SPACE_CHAR + ConvertNumberKop(i2) + '.';
 Result := Trim(s);
 if Result <> '' then Result[1] := AnsiUpperCase(Result[1])[1];
end;

end.
