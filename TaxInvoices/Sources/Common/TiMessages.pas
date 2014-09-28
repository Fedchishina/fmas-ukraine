unit TiMessages;

interface

uses Classes, SysUtils,Dialogs,Graphics,Forms,StdCtrls;

function TiShowMessage(Title:String;Msg:String;DlgType:TMsgDlgType;Buttons:TMsgDlgButtons):Integer;

implementation


const OkBtnCaption        = '��';
const CancelBtnCaption    = '³������';
const YesBtnCaption       = '���';
const NoBtnCaption        = 'ͳ';
const AbortBtnCaption     = '��������';
const RetryBtnCaption     = '���������';
const IgnoreBtnCaption    = '����������';
const AllBtnCaption       = '��� ���';
const HelpBtnCaption      = '��������';
const NoToAllBtnCaption   = 'ͳ ��� ���';
const YesToAllBtnCaption  = '��� ��� ���';
const AttentionBtnCaption = '�����';

function TiShowMessage(Title:String;Msg:String;DlgType:TMsgDlgType;Buttons:TMsgDlgButtons):Integer;
var ViewMessageForm:TForm;
    i:integer;
begin
if Pos(#13,Msg)=0 then Msg:=#13+Msg;
ViewMessageForm:=CreateMessageDialog(Msg,DlgType,Buttons);
ViewMessageForm.FormStyle := fsStayOnTop;
with ViewMessageForm do
 begin
 for i:=0 to ComponentCount-1 do
  if (Components[i].ClassType=TButton) then
   begin
    if UpperCase((Components[i] as TButton).Caption)='OK' then
       (Components[i] as TButton).Caption := OkBtnCaption;
    if UpperCase((Components[i] as TButton).Caption)='CANCEL' then
       (Components[i] as TButton).Caption := CancelBtnCaption;
    if UpperCase((Components[i] as TButton).Caption)='&YES' then
       (Components[i] as TButton).Caption := YesBtnCaption;
    if UpperCase((Components[i] as TButton).Caption)='&NO' then
       (Components[i] as TButton).Caption := NoBtnCaption;
    if UpperCase((Components[i] as TButton).Caption)='&ABORT' then
       (Components[i] as TButton).Caption := AbortBtnCaption;
    if UpperCase((Components[i] as TButton).Caption)='&RETRY' then
       (Components[i] as TButton).Caption := RetryBtnCaption;
    if UpperCase((Components[i] as TButton).Caption)='&IGNORE' then
       (Components[i] as TButton).Caption := IgnoreBtnCaption;
    if UpperCase((Components[i] as TButton).Caption) = '&ALL' then
       (Components[i] as TButton).Caption := AllBtnCaption;
    if UpperCase((Components[i] as TButton).Caption) = '&HELP' then
       (Components[i] as TButton).Caption := HelpBtnCaption;
    if UpperCase((Components[i] as TButton).Caption) = 'N&O TO ALL' then
       (Components[i] as TButton).Caption := NoToAllBtnCaption;
    if UpperCase((Components[i] as TButton).Caption) = 'YES TO &ALL' then
       (Components[i] as TButton).Caption := YesToAllBtnCaption;
   end;                                   
 Caption:=Title;
 i:=ShowModal;
 Free;
end;
 TiShowMessage:=i;
end;

end.
