//******************************************************************************
// ������ "���������"
// ���������
// ���������� �.�. 2006�.
// ��������� ��������� ������ �.�. 29/10/2008
//******************************************************************************
unit cn_sp_NR_Loader;

interface
uses Classes, cn_sp_NamesReport_Unit, cn_Common_Types, Forms,
     cn_Common_Funcs;

function ShowSPNamesReport(AParameter:TcnSimpleParams):Variant;stdcall;
exports  ShowSPNamesReport;

implementation

function ShowSPNamesReport(AParameter:TcnSimpleParams):Variant;stdcall;
var ViewForm:TfrmNamesReport;
begin
 if IsMDIChildFormShow(TfrmNamesReport) then exit;
 ViewForm := TfrmNamesReport.Create(AParameter.Owner, AParameter.Db_Handle, AParameter.is_admin );
 ViewForm.FormStyle:= AParameter.Formstyle;

   case ViewForm.FormStyle of
    fsNormal, fsStayOnTop : ViewForm.ShowModal;
    fsMDIChild	          : ViewForm.Show;
   else begin
    ViewForm.ShowModal;
    ViewForm.free;
   end;
  end;
Result:=ViewForm.res;
end;

  end.
