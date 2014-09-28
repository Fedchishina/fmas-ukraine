unit TICommonDates;

interface

uses SysUtils, Controls, DateUtils,TiCommonProc, Unit_ZGlobal_Consts, TiCommonTypes;

function KodSetupToPeriod(KodSetup:integer;TypeResault:byte):string;
function YearMonthFromKodSetup(KodSetup:integer;IsYear:boolean=True):integer;
function PeriodToKodSetup(Year:integer;Month:integer):integer;
function DateToKodSetup(ADate:TDate):integer;
function MonthNumToName(ANumber:integer):string;
function ConvertDateToKod(InDate:TDateTime):Integer;
function ConvertKodToDate(Kod:Integer):TDateTime;


implementation

uses Math, StrUtils;

const YearBeg=1995;
const MonthBeg=1;

const mJanuary   = '01-ѳ����';
const mFebruary  = '02-�����';
const mMarch     = '03-��������';
const mApril     = '04-������';
const mMay       = '05-�������';
const mJune      = '06-�������';
const mJuly      = '07-������';
const mAugust    = '08-�������';
const mSeptember = '09-��������';
const mOctober   = '10-�������';
const mNovember  = '11-��������';
const mDecember  = '12-�������';
const YearText   = '����';
const YearTextShort = '�.';
const MonthText  = '�����';

const maJanuary   :array[1..2,1..6] of string =(('ѳ����','ѳ���','ѳ���','ѳ����','ѳ����','ѳ���'),
                                                ('������','������','������','������','�������','������'));
const maFebruary  :array[1..2,1..6] of string =(('�����','������','������','�����','�����','������'),
                                                ('�������','�������','��������','�������','�������','�������'));
const maMarch     :array[1..2,1..6] of string =(('��������','�������','�������','��������','��������','�������'),
                                                ('����','�����','�����','����','������','�����'));
const maApril     :array[1..2,1..6] of string =(('������','�����','�����','������','������','�����'),
                                                ('������','������','������','������','�������','������'));
const maMay       :array[1..2,1..6] of string =(('�������','������','������','�������','�������','������'),
                                                ('���','���','���','���','����','���'));
const maJune      :array[1..2,1..6] of string =(('�������','������','������','�������','�������','������'),
                                                ('����','����','����','����','�����','����'));
const maJuly      :array[1..2,1..6] of string =(('������','�����','�����','������','������','�����'),
                                                ('����','����','����','����','�����','����'));
const maAugust    :array[1..2,1..6] of string =(('�������','������','������','�������','�������','������'),
                                                ('������','�������','�������','������','��������','�������'));
const maSeptember :array[1..2,1..6] of string =(('��������','�������','�������','��������','�������','�������'),
                                                ('��������','��������','��������','��������','��������','��������'));
const maOctober   :array[1..2,1..6] of string =(('�������','������','������','�������','�������','������'),
                                                ('�������','�������','�������','�������','�������','�������'));
const maNovember  :array[1..2,1..6] of string =(('��������','���������','���������','��������','����������','���������'),
                                                ('������','������','������','������','������','������'));
const maDecember  :array[1..2,1..6] of string =(('�������','������','������','�������','�������','������'),
                                                ('�������','�������','�������','�������','�������','�������'));
function MonthNumToName(ANumber:integer):string;
begin
 case ANumber of
   1: MonthNumToName := mJanuary;
   2: MonthNumToName := mFebruary;
   3: MonthNumToName := mMarch;
   4: MonthNumToName := mApril;
   5: MonthNumToName := mMay;
   6: MonthNumToName := mJune;
   7: MonthNumToName := mJuly;
   8: MonthNumToName := mAugust;
   9: MonthNumToName := mSeptember;
  10: MonthNumToName := mOctober;
  11: MonthNumToName := mNovember;
  12: MonthNumToName := mDecember;
 end;
end;

function YearMonthFromKodSetup(KodSetup:integer;IsYear:boolean=True):integer;
var TYear,TMonth:integer;
begin
 TYear  := (KodSetup - MonthBeg + 1) div 12;
 TMonth := MonthBeg + KodSetup - TYear * 12 - 1;
 if (TMonth mod 12 = 0) then
  begin
   TYear  := TYear + YearBeg + TMonth div 12 - 1;
   TMonth := 12;
  end
 else
  begin
   TYear  := TYear + YearBeg + TMonth div 12;
   TMonth := TMonth mod 12;
  end;
 YearMonthFromKodSetup:=IfThen(IsYear,TYear,TMonth);
end;

function KodSetupToPeriod(KodSetup:integer;TypeResault:byte):string;
var TYear,TMonth:integer;
begin
 TYear  := (KodSetup - MonthBeg + 1) div 12;
 TMonth := MonthBeg + KodSetup - TYear * 12 - 1;
 if (TMonth mod 12 = 0) then
  begin
   TYear  := TYear + YearBeg + TMonth div 12 - 1;
   TMonth := 12;
  end
 else
  begin
   TYear  := TYear + YearBeg + TMonth div 12;
   TMonth := TMonth mod 12;
  end;
 case TypeResault of
  0:if TMonth<10 then KodSetupToPeriod:='0'+IntToStr(TMonth)+'/'+IntToStr(TYear)
    else KodSetupToPeriod := IntToStr(TMonth)+'/'+IntToStr(TYear);
  1:
   begin
    TYear:=TYear mod 100;
    KodSetupToPeriod:=IfThen(TMonth<10,'0'+IntToStr(TMonth),IntToStr(TMonth))+'/'+
                      IfThen(TYear<10,'0'+IntToStr(TYear),IntToStr(TYear));
   end;
  2:KodSetupToPeriod := MonthNumToName(TMonth)+ ' '+IntToStr(TYear)+' '+YearText;
  3:KodSetupToPeriod := MonthNumToName(TMonth)+ ' '+IntToStr(TYear);
  4:KodSetupToPeriod := MonthNumToName(TMonth)+ ' '+IntToStr(TYear)+' '+YearTextShort;
  5:KodSetupToPeriod := MonthNumToName(TMonth)+ ' '+MonthText+' '+IntToStr(TYear)+' '+YearTextShort;
  6:KodSetupToPeriod := '1.'+IntToStr(TMonth)+'.'+IntToStr(TYear);
 end;
end;

function PeriodToKodSetup(Year:integer;Month:integer):integer;
begin
 PeriodToKOdSetup := (Year - YearBeg) * 12 + (Month - MonthBeg + 1);
end;

function DateToKodSetup(ADate:TDate):integer;
var Day, Year, Month:Word;
begin
 DecodeDate(ADate,Year,Month,Day);
 DateToKodSetup:=PeriodToKodSetup(Year,Month);
end;

function ConvertDateToKod(InDate:TDateTime):Integer;
var
Month:Integer;
Year:Integer;
begin
    Month:=Monthof(InDate);
    Year:=Yearof(InDate);
    ConvertDateToKod:=(Year-1995)*12+(Month-1)+1;
end;

function ConvertKodToDate(Kod:Integer):TDateTime;
var
Year:Integer;
Month:Integer;
begin
  Year:=Kod div 12;
  Month:=Kod-Year*12;
  Year:=Year+1995;
  if Month=0 then
   begin
    Month:=12;
    Dec(year);
   end;

  ConvertKodToDate:=EncodeDate(Year,Month,1);
end;


end.
