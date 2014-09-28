{*******************************************************************************
* uPwdCrypt                                                                    *
*                                                                              *
* ���������� ���������� ������                                                 *
* Copyright �  2005, ���� �. ������, �������� ������������ �����������         *
*******************************************************************************}


unit uPwdCrypt;


interface
uses Forms, Dialogs, windows;


procedure PwdCrypt(var buffer: PChar; var len:Integer); stdcall;

exports PwdCrypt;

implementation

uses TypInfo, uCrUtils, SysUtils;

procedure PwdCrypt(var buffer: PChar; var len:Integer);
var
    i: LongWord;
    ts: String;
    res: String;
    s:  String;
    Result_:string;
begin
    //��������������� �������� ������� � ��������� string
    SetString(s, buffer, len);


    //��������� �������� ��������
    ts := ScrStr(s);
    while ts <> '' do
    begin
        i := GetIntFromString(ts);
        i := Scramble(i);
        res := res + uCrUtils.IntToHex(i);
    end;
    for i:=1 to Length(res) do
    begin
        Result_ := Result_ + uCrUtils.RandomHex;
        Result_ := Result_ + res[i];
    end;

    buffer:=PChar(Result_);
    len   :=Length(Result_);
end;


end.
