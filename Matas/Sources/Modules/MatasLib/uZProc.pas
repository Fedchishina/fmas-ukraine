{               "���� �������-������������ ���������, ��, ��� � ���"           }
{                                                                              }
{               (c) ������� �.�. 2004-2007                                     }
{                                                                              }
unit uZProc;

interface

Uses SysUtils, Classes, StrUtils, Controls, Windows, VarUtils, Variants, Math;

function SumToString(ASumma:extended; aLanguageIndex:byte):string;

implementation

const Kopeika   : array[1..3,1..20] of string =(('������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������'),
                                                ('������','�������','�������','�������','�������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������'),
                                                ('','','','','','','','','','','','','','','','','','','',''));
const Grivnja   : array[1..3,1..20] of string =(('�������','������','�����','�����','�����','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������'),
                                                ('�������','������','������','������','������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������','�������'),
                                                ('','','','','','','','','','','','','','','','','','','',''));
const DigitWoMan: array[1..3,1..20] of string =(('','����','��','���','������','�''���','�����','��','���','���''���','������','����������','����������','����������','������������','�''���������','�����������','���������','���������','���''���������'),
                                                ('','����','���','���','������','����','�����','����','������','������','������','�����������','����������','����������','������������','����������','�����������','����������','������������','������������'),
                                                ('','����','��','���','������','�''���','�����','��','���','���''���','������','����������','����������','����������','������������','�''���������','�����������','���������','���������','���''���������'));
const DigitMan  : array[1..3,1..20] of string =(('','����','���','���','������','�''���','�����','��','���','���''���','������','����������','����������','����������','������������','�''���������','�����������','���������','���������','���''���������'),
                                                ('','����','���','���','������','����','�����','����','������','������','������','�����������','����������','����������','������������','����������','�����������','����������','������������','������������'),
                                                ('','����','���','���','������','�''���','�����','��','���','���''���','������','����������','����������','����������','������������','�''���������','�����������','���������','���������','���''���������'));
const Ten       : array[1..3,1..10] of string =(('','������','��������','��������','�����','�''�������','���������','�������','��������','���''������'),
                                                ('','������','��������','��������','�����','���������','����������','���������','�����������','���������'),
                                                ('','������','��������','��������','�����','�''�������','���������','�������','��������','���''������'));
const Hundread  : array[1..3,1..10] of string =(('','���','����','������','���������','�''�����','�������','�����','������','�''�������'),
                                                ('','���','������','������','���������','������','�������','�������','���������','��������'),
                                                ('','���','����','������','���������','�''�����','�������','�����','������','�''�������'));
const Thousand  : array[1..3,1..20] of string =(('','������','������','������','������','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����'),
                                                ('','������','������','������','������','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����'),
                                                ('','������','������','������','������','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����','�����'));
const Million   : array[1..3,1..20] of string =(('','�����','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������'),
                                                ('','�������','��������','��������','��������','���������','���������','���������','���������','���������','���������','���������','���������','���������','���������','���������','���������','���������','���������','���������'),
                                                ('','�����','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������','������'));
const ManState  : array[1..3,1..4] of boolean = ((False,False,False,True),(False,True,False,True),(False,True,False,True));

function SumToString(ASumma:extended; aLanguageIndex:byte):string;

var res,t_res,text,t_text:String;
    j,int_sum:integer;
    PLanguageIndex:byte;
    GrivnjaWasAdded:boolean;

 function ThreeDigitNumberToString(var ANumber:string):string;
  var pres:string;
      TCount:byte;
 begin
  TCount:=1;
  ANumber:=Trim(ANumber);
  if length(ANumber)>3 then raise Exception.Create('It''s imposible!!!');
  while Length(ANumber)<3 do ANumber:=' '+ANumber;
  if ANumber[1]<>' ' then
    pres:=Hundread[PLanguageIndex][StrToInt(ANumber[1])+1];
  if ANumber[2]='1' then
   begin
    pres:=trim(pres)+' '+ifThen(ManState[PLanguageIndex][j+1]=True,
                                DigitMan[PLanguageIndex][StrToInt(copy(ANumber,2,2))+1],
                                DigitWoMan[PLanguageIndex][StrToInt(copy(ANumber,2,2))+1]);

    TCount:=2;
   end
  else
   begin
    if ANumber[2]<>' ' then
       pres:=trim(pres)+' '+Ten[PLanguageIndex][StrToInt(ANumber[2])+1];
    if ANumber[3]<>' ' then
       pres:=trim(pres)+' '+ifThen(ManState[PLanguageIndex][j+1]=True,
                                   DigitMan[PLanguageIndex][StrToInt(copy(ANumber,3,1))+1],
                                   DigitWoMan[PLanguageIndex][StrToInt(copy(ANumber,3,1))+1]);
   end;
  if Trim(pres)<>'' then
   case j of
    0: pres:=Trim(pres)+' '+Kopeika[PLanguageIndex][StrToInt(copy(ANumber,4-TCount,TCount))+1];
    1:
     begin
      pres:=Trim(pres)+' '+Grivnja[PLanguageIndex][StrToInt(copy(ANumber,4-TCount,TCount))+1];
      GrivnjaWasAdded:=True;
     end;
    2: pres:=Trim(pres)+' '+Thousand[PLanguageIndex][StrToInt(copy(ANumber,4-TCount,TCount))+1];
    3: pres:=Trim(pres)+' '+Million[PLanguageIndex][StrToInt(copy(ANumber,4-TCount,TCount))+1];
   end;
   if (not GrivnjaWasAdded) and (Trim(pres)<>'') and (j>0) then
    begin
     pres:=Trim(pres)+' '+Grivnja[PLanguageIndex][1];
     GrivnjaWasAdded:=True;
    end;
  Result:=pRes;
 end;

begin
  if (ASumma>0) then
  begin
   GrivnjaWasAdded:=False;
   PLanguageIndex:=aLanguageIndex;
   int_sum:=round((ASumma-int(ASumma))*100);
   text:=IntToStr(int_sum);

   j:=0;
   res:=ThreeDigitNumberToString(text);

   int_sum:=Round(int(ASumma));
   text:=IntToStr(int_sum);
   while Trim(text)<>'' do
   begin
    inc(j);
    t_text:=copy(text,LENGTH(text)-2,3);
    t_res:=ThreeDigitNumberToString(t_text);
    res:=Trim(t_res)+' '+trim(res);
    if Length(Trim(text))<3 then text:=''
    else delete(text,LENGTH(text)-2,3);
   end;
   Result:=Res;
  end
 else
  Result:='';
end;

end.

