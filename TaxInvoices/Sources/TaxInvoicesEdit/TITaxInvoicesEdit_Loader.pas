unit TITaxInvoicesEdit_Loader;

interface
uses iBase,Classes,Windows,Forms,Controls,
     SysUtils,Variants,Dialogs,TITaxInvoicesEdit_Add, TICommonLoader,TiCommonTypes;

function View_TaxInvoicesEdit(AOwner:TComponent;Db_Handle:TISC_DB_HANDLE;id_vid_Nakl:Integer;id_vid_Nakl_Doc:Integer;id_Reestr:Integer;is_print:Integer):TTITaxInvoicesInfo;stdcall;
exports View_TaxInvoicesEdit;

implementation

function View_TaxInvoicesEdit(AOwner:TComponent;Db_Handle:TISC_DB_HANDLE;id_vid_Nakl:Integer;id_vid_Nakl_Doc:Integer;id_Reestr:Integer;is_print:Integer):TTITaxInvoicesInfo;
var ViewForm: TTaxInvoicesEditAddForm;
begin
 if is_print = 0 then  //����� ����� ����������/���������
   begin
     ViewForm := TTaxInvoicesEditAddForm.Create(AOwner,DB_Handle,id_vid_Nakl,id_vid_Nakl_Doc,id_Reestr);
     if(ViewForm.ShowModal=mrOk)then
     begin
       Result:=ViewForm.Parameter;
     end;
   end;

 if is_print = 1 then  //������ ������ ��� ���������
   begin
     ViewForm := TTaxInvoicesEditAddForm.Create(AOwner,DB_Handle,id_vid_Nakl,id_vid_Nakl_Doc,id_Reestr);
     ViewForm.DoPrint;
   end;

 if is_print = 2 then  //������ ������ � ����������� (������� 2011)  ������ ���������
  begin
    ViewForm := TTaxInvoicesEditAddForm.Create(AOwner,DB_Handle,id_vid_Nakl,id_vid_Nakl_Doc,id_Reestr);
    ViewForm.DoPrintDecember;
  end;

  if is_print = 3 then  //������ ������ � ����������� (������� 2011)  ������ ���������
  begin
    ViewForm := TTaxInvoicesEditAddForm.Create(AOwner,DB_Handle,id_vid_Nakl,id_vid_Nakl_Doc,id_Reestr);
    ViewForm.DoPrintDecemberTwoEkz;
  end;
end;

end.
