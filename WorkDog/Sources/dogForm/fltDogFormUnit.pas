unit fltDogFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxContainer, cxEdit, cxCheckBox, cxControls, cxGroupBox,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxCurrencyEdit, Menus,
  FIBDatabase, pFIBDatabase, cxMRUEdit, ActnList, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBQuery, cxRadioGroup, ExtCtrls, IBase, pFIBStoredProc,AArray,LoaderUnit,
  Registry;

type
  TfltDogForm = class(TForm)
    OKButton: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    i1: TMenuItem;
    ActionList1: TActionList;
    Action1: TAction;
    pFIBDatabase1: TpFIBDatabase;
    repGroupBox: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    repRegNumCheck: TcxCheckBox;
    repNumDogCheck: TcxCheckBox;
    repSumCheck: TcxCheckBox;
    repSumPayCheck: TcxCheckBox;
    repSumFulfilCheck: TcxCheckBox;
    repRestCheck: TcxCheckBox;
    repDocPaycheck: TcxCheckBox;
    repPercentCheck: TcxCheckBox;
    repDocFulfilCheck: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    repBook: TcxRadioButton;
    Image1: TImage;
    repAlb: TcxRadioButton;
    Image2: TImage;
    Panel1: TPanel;
    repA3: TcxRadioButton;
    repA4: TcxRadioButton;
    fltRegNumCheck: TcxCheckBox;
    fltRegNumEdit: TcxTextEdit;
    chNumDog: TcxCheckBox;
    NumDogEdit: TcxTextEdit;
    chId_dog: TcxCheckBox;
    id_dogEdit: TcxTextEdit;
    fltCustCheck: TcxCheckBox;
    fltCustEdit: TcxButtonEdit;
    fltTipDogCheck: TcxCheckBox;
    fltTipDogEdit: TcxButtonEdit;
    fltDatePeriodCheck: TcxCheckBox;
    fltDateBegEdit: TcxDateEdit;
    fltDateEndEdit: TcxDateEdit;
    cxLabel10: TcxLabel;
    fltSumFromEdit: TcxCurrencyEdit;
    fltSumCheck: TcxCheckBox;
    fltSumToEdit: TcxCurrencyEdit;
    Label1: TLabel;
    depCheck: TcxCheckBox;
    depEdit: TcxButtonEdit;
    dateactCheck: TcxCheckBox;
    DateActBegEdit: TcxDateEdit;
    DateActEndEdit: TcxDateEdit;
    cxLabel1: TcxLabel;
    NomnCheck: TcxCheckBox;
    nomnEdit: TcxTextEdit;
    DateNomnEndEdit: TcxDateEdit;
    cxLabel2: TcxLabel;
    DateNomnBegEdit: TcxDateEdit;
    DateNomnCheck: TcxCheckBox;
    ShowClosedCheck: TcxCheckBox;
    chSumPayFulfil1: TcxCheckBox;
    chSumPayFulfil2: TcxCheckBox;
    Bevel1: TBevel;
    MatEdit: TcxButtonEdit;
    cbMat: TcxCheckBox;
    StoredProc: TpFIBStoredProc;
    cbRateAccNative: TcxCheckBox;
    RateAccNativeEdit: TcxButtonEdit;
    cbNote: TcxCheckBox;
    eNote: TcxTextEdit;
    cbEnds: TcxCheckBox;
    deEnds: TcxDateEdit;
    cxClassEdit: TcxButtonEdit;
    cbClass: TcxCheckBox;
    repNoteCheck: TcxCheckBox;
    fltClassBox: TcxCheckBox;
    EditDateBegNarah: TcxDateEdit;
    CheckBoxPeriodNarah: TcxCheckBox;
    cxLabel3: TcxLabel;
    EditDateEndNarah: TcxDateEdit;
    CheckBoxNotNarah: TcxCheckBox;
    CheckBoxNotSch: TcxCheckBox;
    repNumDateDogCheck: TcxCheckBox;
    chSumDogPay: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure fltCustEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure fltCustCheckClick(Sender: TObject);
    procedure fltTipDogCheckClick(Sender: TObject);
    procedure fltTipDogEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure fltDatePeriodCheckClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure fltRegNumCheckClick(Sender: TObject);
    procedure fltSumCheckClick(Sender: TObject);
    procedure fltRegNumEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fltCustEditKeyPress(Sender: TObject; var Key: Char);
    procedure ShowClosedCheckClick(Sender: TObject);
    procedure fltSumFromEditFocusChanged(Sender: TObject);
    procedure fltTipDogEditKeyPress(Sender: TObject; var Key: Char);
    procedure fltDateBegEditKeyPress(Sender: TObject; var Key: Char);
    procedure fltDateEndEditKeyPress(Sender: TObject; var Key: Char);
    procedure fltSumFromEditKeyPress(Sender: TObject; var Key: Char);
    procedure fltSumToEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure i1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure chId_dogClick(Sender: TObject);
    procedure id_dogEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chNumDogClick(Sender: TObject);
    procedure fltCustEditPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure depEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure depCheckClick(Sender: TObject);
    procedure NomnCheckClick(Sender: TObject);
    procedure dateactCheckClick(Sender: TObject);
    procedure DateActBegEditKeyPress(Sender: TObject; var Key: Char);
    procedure DateNomnCheckClick(Sender: TObject);
    procedure DateNomnBegEditKeyPress(Sender: TObject; var Key: Char);
    procedure nomnEditKeyPress(Sender: TObject; var Key: Char);
    procedure fltRegNumEditKeyPress(Sender: TObject; var Key: Char);
    procedure cbMatClick(Sender: TObject);
    procedure MatEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbRateAccNativeClick(Sender: TObject);
    procedure RateAccNativeEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbNoteClick(Sender: TObject);
    procedure cbEndsClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbClassClick(Sender: TObject);
    procedure CheckBoxPeriodNarahClick(Sender: TObject);
  public
    id_Group : integer;
    search_str:string;
    fltShowClosed : integer;
    fltId_tip_dog : integer;
    flt_id_Customer : int64;
    flt_id_department : Integer;
    id_class : Integer;
    flt_id_session_type : int64;
    id_otdel : int64;
    fltId_material : int64;
    flt_id_rate_acc_native : int64;
    report_class : integer;
    isFirstCell:boolean;
    fltCustEdited : boolean;
    procedure ApplyToDataset(ds: TpFIBDataSet; id_group : int64; isZayav, filter_by_sum_today : boolean; useShort : boolean = false; doOrderById : boolean = false);
  end;

 TSpravFuncNom = function (aOwner:TComponent;
                     DBHANDLE : TISC_DB_HANDLE;
                     aFS: TFormStyle;   {����� �����: fsModal ��� fsMDIChild}
                     aID_USER : INT64; {��.������������}
                     aID_NOMN: int64;  {��.������������, ���� >0, �� �������� ��������������}
                     aID_PROP: int64;  {��. ��������, ���� >0, �� ��������� ������ �� ��������, (���� �� �����������!)}
                     aNType: integer;  {������ �� ��� �������: 0 - ���, 1 -  ���, 2 - ������}
                     aMView: integer;  {���� �� ������������ }
                     aMSelect:integer; {��� ������ �������: 0 - ����� ����� ������, 1 - ����������� �������, 2 - ����� ������ }
                     aLang: integer =0 {���� ����������: 0 - ������� (�� ���������), 1 - ����������}
  ):Variant;stdcall;



implementation
uses DogLoaderUnit, {DogFormUnit, }GlobalSPR, LoadDogManedger, DateUtils,
     DogFormUnit, LangUnit, uCommonSp;


{$R *.dfm}

procedure TfltDogForm.FormCreate(Sender: TObject);
 var reg : TRegistry;
    isOrenda:Boolean;
begin
 if FileExists(SYS_APP_PATH + SYS_LANG_FILE) then LangPackApply(Self);
 isFirstCell:=true;
 id_class:=-1;
 cbRateAccNative.Properties.Caption := cbRateAccNative.Properties.Caption + ' ' + SYS_NAME_CUSTOMER_NATIVE;

 cbMat.Visible := SYS_IS_DNEPR;
 MatEdit.Visible := SYS_IS_DNEPR;
 flt_id_session_type := -1;

 Height := 520;
// if isAdmin then
// begin
//   chId_dog.Visible := True;
//   id_dogEdit.Visible := True;
// end;
 fltShowClosed := 0;
 fltId_tip_dog := -1;
 fltId_material := -1;
 id_otdel := -1;
 flt_id_rate_acc_native := -1;
 fltDateBegEdit.Date := date - SYS_DOG_PERIOD;
 fltDateEndEdit.Date := date;
 DateActBegEdit.Date := EncodeDate(YearOf(now), 1, 1);
 DateActEndEdit.Date := EncodeDate(YearOf(now), 12, 31);
 EditDateBegNarah.Date := EncodeDate(YearOf(now), 1, 1);
 EditDateEndNarah.Date := EncodeDate(YearOf(now), 12, 31);
 deEnds.Date := date;
 flt_id_Customer := -1;
 flt_id_department := -1;
 if ShowClosedCheck.Checked then fltShowClosed := 1 else fltShowClosed := 0;





end;

procedure TfltDogForm.fltCustEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
 i, o  : TSpravParams;
begin 
 if not Visible then Exit;
 i := TSpravParams.Create;
 o := TSpravParams.Create;
 i['DataBase']     := Integer(pFIBDatabase1.Handle);
 i['FormStyle']    := fsNormal;
 i['bMultiSelect'] := false;
 i['id_session']   := -1;
 i['SelectMode']   := selCustomer;
 i['id_cistomer']   := flt_id_Customer;
 i['show_all']     := 1;
 LoadSprav('Customer\CustPackage.bpl', Self, i, o);
 if o['ModalResult'] = mrOk then begin
  flt_id_Customer :=  {int64(StrToInt(}o['id_customer']{))};
  fltCustEdit.Text := o['name_customer'];
  fltCustCheck.Checked := true;
  fltCustEdited := false;
 end
 else
 begin
   fltCustCheck.Checked := false;
   flt_id_Customer := -1;
 end;{var
 Res : Variant;
begin
 if not Visible then Exit;
 Res := ShowCustomers(Self, pFIBDatabase1.Handle, fsNormal, now, csmCustomers, flt_id_Customer, -1);
 if VarArrayDimCount(Res) <> 0 then begin
  flt_id_Customer := Res[0];
  fltCustEdit.Text := Res[2];
  fltCustCheck.Checked := true;
  fltCustEdited := false;
 end
 else
 begin
   fltCustCheck.Checked := false;
   flt_id_Customer := -1;
 end; }
end;

procedure TfltDogForm.fltCustCheckClick(Sender: TObject);
begin
// if (flt_id_Customer = -1) and (fltCustCheck.Checked) and (not fltCustEdited) then fltCustEditPropertiesButtonClick(Self, 0);
 fltCustEdit.Enabled := fltCustCheck.Checked;
 if not visible then exit;
 if fltCustEdit.Enabled and visible then fltCustEdit.SetFocus;
end;

procedure TfltDogForm.fltTipDogCheckClick(Sender: TObject);
begin
 if (fltId_tip_dog = -1) and (fltTipDogCheck.Checked) then fltTipDogEditPropertiesButtonClick(Self, 0);
 fltTipDogEdit.Enabled := fltTipDogCheck.Checked;
end;

procedure TfltDogForm.fltTipDogEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 res : Variant;
 CNT : integer;
 i   : integer;
begin
{ res := LoadDogManedger.WorkTypeDogSPR(Self, pFIBDatabase1.Handle, fsNormal, 'select', Nil, id_Group, Nil);
 if VarArrayDimCount(res) > 0 then begin
  fltTipDogCheck.Checked := true;
  fltId_tip_dog := res[0][0];
  fltTipDogEdit.Text := res[0][2];
 end else fltTipDogCheck.Checked := false;}
 res := LoadDogManedger.WorkTypeDogSPR(Self, pFIBDatabase1.Handle, fsNormal, 'select2', Nil, id_Group, Nil);
 if VarArrayDimCount(res) = 0 then
 begin
   fltTipDogCheck.Checked := false;
   exit;
 end;
 Cnt := VarArrayHighBound(res, 1);
 if cnt = 0 then
 begin
   fltTipDogCheck.Checked := true;
   fltId_tip_dog := res[0][0];
   fltTipDogEdit.Text := res[0][2];
 end
 else
 begin
   fltTipDogEdit.Text := '< ��ʲ���� >'; 
   StoredProc.StoredProcName := 'DOG_DT_DOCUMENT_GET_FILTER_SES';
   StoredProc.Transaction.StartTransaction;
   StoredProc.Prepare;
   StoredProc.ExecProc;
   flt_id_session_type := StoredProc['ID_SESSION'].AsInt64;
   StoredProc.Transaction.Commit;
   StoredProc.Close;
   for i := 0 to Cnt do
   begin
     StoredProc.StoredProcName := 'DOG_DT_DOCUMENT_FILTER_TYPE_ADD';
     StoredProc.Transaction.StartTransaction;
     StoredProc.Prepare;
     StoredProc.ParamByName('ID_SESSION').AsInt64 := flt_id_session_type;
     StoredProc.ParamByName('ID_TYPE_DOG').AsInt64 := res[i][0];
     StoredProc.ExecProc;
     StoredProc.Transaction.Commit;
     StoredProc.Close;
//     t_id_tip_dog := Tip_dog[i][0];
//     t_tip_dog := Tip_dog[i][1];
   end;
 end;
end;

procedure TfltDogForm.fltDatePeriodCheckClick(Sender: TObject);
begin
 fltDateBegEdit.Enabled := fltDatePeriodCheck.Checked;
 fltDateEndEdit.Enabled := fltDatePeriodCheck.Checked;
// if fltDateCheck.Checked then fltDatePeriodCheck.Checked := false;
 if fltDateBegEdit.Enabled and visible then fltDateBegEdit.SetFocus;
end;

procedure TfltDogForm.OKButtonClick(Sender: TObject);
begin
 if dateactCheck.Checked then
 begin
   if (DateActBegEdit.Text = '') or (DateActEndEdit.Text = '') then
   begin
     ShowMessage('������ ����� 䳿 �������.');
     exit;
   end;
 end;
 if fltSumCheck.Checked then
 begin
   if (fltSumFromEdit.Text = '') or (fltSumToEdit.Text = '') then
   begin
     ShowMessage('������ ���� �������.');
     exit;
   end;
 end;
 if fltDatePeriodCheck.Checked then
 begin
   if (fltDateBegEdit.Text = '') or (fltDateEndEdit.Text = '') then
   begin
     ShowMessage('������ ����� �������� �������.');
     exit;
   end;
 end;
 if DateNomnCheck.Checked then
 begin
   if (DateNomnBegEdit.Text = '') or (DateNomnEndEdit.Text = '') then
   begin
     ShowMessage('������ ����� ������������� ���� �������.');
     exit;
   end;
 end;
 ModalResult := mrOk;
end;

procedure TfltDogForm.cxButton2Click(Sender: TObject);
begin
 DateNomnCheck.Checked      := False;
 dateactCheck.Checked       := False;
 NomnCheck.Checked          := False;
 chSumPayFulfil1.Checked    := False;
 chSumDogPay.Checked        := False;
 chSumPayFulfil2.Checked    := False;
 chId_dog.Checked           := False;
 chNumDog.Checked           := False;
 fltTipDogCheck.Checked     := false;
 fltCustCheck.Checked       := false;
 fltDatePeriodCheck.Checked := false;
 fltSumCheck.Checked        := false;
 fltRegNumCheck.Checked     := false;
 depCheck.Checked           := False;
 ShowClosedCheck.Checked    := false;
 cbMat.Checked              := false;
 ModalResult := mrOk;
end;

procedure TfltDogForm.cxButton3Click(Sender: TObject);
begin
 Close;
end;

procedure TfltDogForm.fltRegNumCheckClick(Sender: TObject);
begin
 fltRegNumEdit.Enabled := fltRegNumCheck.Checked;
 if fltRegNumEdit.Enabled and visible then fltRegNumEdit.SetFocus;
end;

procedure TfltDogForm.fltSumCheckClick(Sender: TObject);
begin
 fltSumFromEdit.Enabled := fltSumCheck.Checked;
 fltSumToEdit.Enabled := fltSumCheck.Checked;
 if fltSumFromEdit.Enabled and visible then fltSumFromEdit.SetFocus;
end;

procedure TfltDogForm.fltRegNumEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := 0;
    OKButton.SetFocus;
  end;
end;

procedure TfltDogForm.fltCustEditKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then begin
  Key := #0;
  OKButton.SetFocus;
 end else fltCustEdited := true;
end;

procedure TfltDogForm.ShowClosedCheckClick(Sender: TObject);
begin
 if ShowClosedCheck.Checked then fltShowClosed := 1 else fltShowClosed := 0;
// if chSumPayFulfil1.Checked then fltShowClosed := 1 else fltShowClosed := 0;
end;

procedure TfltDogForm.fltSumFromEditFocusChanged(Sender: TObject);
begin
 if fltSumToEdit.Text = '' then fltSumToEdit.Text := fltSumFromEdit.Text; 
end;

procedure TfltDogForm.fltTipDogEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then begin
  Key := #0;
  OKButton.SetFocus;
 end;
end;

procedure TfltDogForm.fltDateBegEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then begin
  Key := #0;
  fltDateEndEdit.SetFocus;
 end;
end;

procedure TfltDogForm.fltDateEndEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then begin
  Key := #0;
  OKButton.SetFocus;
 end;
end;

procedure TfltDogForm.fltSumFromEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then begin
  Key := #0;
  fltSumToEdit.SetFocus;
 end;
end;

procedure TfltDogForm.fltSumToEditKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then begin
  Key := #0;
  OKButton.SetFocus;
 end;
end;

procedure TfltDogForm.FormShow(Sender: TObject);
var isOrenda:boolean;
reg : TRegistry;
begin
// fltRegNumEdit.Parent := Self;
// fltRegNumCheck.SetFocus;
   ////////////////////////////////////////////////////////////////////////////////
 StoredProc.Transaction.StartTransaction;
 StoredProc.StoredProcName := 'PUB_SP_TIP_DOG_SELECT';
 StoredProc.ParamByName('GROUPP').AsInt64:=id_Group;
 StoredProc.ExecProc;
 if  StoredProc.ParamByName('NAME_SHABLON').AsString='add_arnd_contract.bpl' then isOrenda:=true else isOrenda:=false;
 StoredProc.Transaction.Commit;



 if   isOrenda then begin
 reg := TRegistry.Create;
 if reg.OpenKey(REG_KEY + 'dogForm\Filter', false) then
 begin
  CheckBoxPeriodNarah.Checked:=reg.ReadBool('CheckBoxPeriodNarah');
  EditDateBegNarah.Date:=reg.ReadDate('EditDateBegNarah');
  EditDateEndNarah.Date:=reg.ReadDate('EditDateEndNarah');
  CheckBoxNotNarah.Checked:=reg.ReadBool('CheckBoxNotNarah');
  CheckBoxNotSch.Checked:=reg.ReadBool('CheckBoxNotSch');
 end;
 reg.Free;
 end;
 ////////////////////////////////////////////////////////////////////////////////

end;

procedure TfltDogForm.N1Click(Sender: TObject);
begin
 fltDateBegEdit.Date := EncodeDate(YearOf(now), 1, 1);
 fltDateEndEdit.Date := EncodeDate(YearOf(now), 12, 31);
end;

procedure TfltDogForm.N2Click(Sender: TObject);
begin
 fltDateBegEdit.Date := EncodeDate(YearOf(now) - 1, 1, 1);
 fltDateEndEdit.Date := EncodeDate(YearOf(now) - 1, 12, 31);
end;

procedure TfltDogForm.i1Click(Sender: TObject);
begin
 fltDateBegEdit.Date := date;
 fltDateEndEdit.Date := date;
end;

procedure TfltDogForm.Action1Execute(Sender: TObject);
begin
 OKButtonClick(Self);
end;

procedure TfltDogForm.chId_dogClick(Sender: TObject);
begin
 id_dogEdit.Enabled := chId_dog.Checked;
 if id_dogEdit.Enabled then id_dogEdit.SetFocus;
end;

procedure TfltDogForm.id_dogEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then begin
  Key := 0;
  OKButton.SetFocus;
 end;
end;

procedure TfltDogForm.chNumDogClick(Sender: TObject);
begin
try
 NumDogEdit.Enabled := chNumDog.Checked;
 if NumDogEdit.Enabled then NumDogEdit.SetFocus;
Except
end
end;

procedure TfltDogForm.fltCustEditPropertiesChange(Sender: TObject);
begin
 if fltCustEdit.Text = '' then fltCustEdited := False;
end;

procedure TfltDogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 TDogForm(Owner).CustEdit.Tag := 1;
 TDogForm(Owner).CustEdit.Text := fltCustEdit.Text;
end;

procedure TfltDogForm.depEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
    sp: TSprav;
begin
        // ������� ����������
    sp :=  GetSprav('SpDepartment');
    if sp <> nil then
    begin
            // ��������� ������� ���������
        with sp.Input do
        begin
            Append;
            FieldValues['DBHandle'] := Integer(pFIBDatabase1.Handle);
                // ��������� �����
            FieldValues['ShowStyle'] := 0;
                // ��������� �������
            FieldValues['Select'] := 1;

            //FieldValues['Root_Department'] := 2612;
            FieldValues['Actual_Date'] := Date;
            Post;
        end;
    end;
        // �������� ���������� � ���������������� ��������� (����� ������ ����.)
    sp.Show;
    if sp.Output = nil then ShowMessage('BUG: Output is NIL!!!')
                       else if not sp.Output.IsEmpty then
                            begin
                              flt_id_department := sp.Output['Id_Department'];
                              DepEdit.Text := sp.Output['Name_FULL'];
                            end;
    sp.Free;
end;

procedure TfltDogForm.depCheckClick(Sender: TObject);
begin
 if (flt_id_department = -1) and (depCheck.Checked) then depEditPropertiesButtonClick(Self, 0);
 depEdit.Enabled := depCheck.Checked;
// depEdit.Enabled := depCheck.Checked;
// if depEdit.Enabled and visible then depEdit.SetFocus;
end;

procedure TfltDogForm.NomnCheckClick(Sender: TObject);
begin
 NomnEdit.Enabled := NomnCheck.Checked;
 if NomnEdit.Enabled then NomnEdit.SetFocus;
end;

procedure TfltDogForm.dateactCheckClick(Sender: TObject);
begin
 DateActBegEdit.Enabled := DateActCheck.Checked;
 DateActEndEdit.Enabled := DateActCheck.Checked;
 if DateActBegEdit.Enabled and visible then DateActBegEdit.SetFocus;
end;

procedure TfltDogForm.DateActBegEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then begin
  Key := #0;
  DateActEndEdit.SetFocus;
 end;
end;

procedure TfltDogForm.DateNomnCheckClick(Sender: TObject);
begin
 DateNomnBegEdit.Enabled := DateNomnCheck.Checked;
 DateNomnEndEdit.Enabled := DateNomnCheck.Checked;
 if DateNomnBegEdit.Enabled and visible then DateNomnBegEdit.SetFocus;
end;

procedure TfltDogForm.DateNomnBegEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then begin
  Key := #0;
  DateNomnEndEdit.SetFocus;
 end;
end;

procedure TfltDogForm.nomnEditKeyPress(Sender: TObject; var Key: Char);
begin
 CheckInteger(Key);
end;

procedure TfltDogForm.fltRegNumEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = '''' then Key := #0;
end;

{
<----------------------------------------------------------------------------->
 ��������� ������������ ������� �� �������

 �����������: ������ ������ ����� �� ����������� ������
 ��� ������� �� �������� ������������

 ���������: ������� �� �� �� ����������� ��������������� ���������

 ����������� ����� ������������
<----------------------------------------------------------------------------->
}
procedure TfltDogForm.ApplyToDataset(ds: TpFIBDataSet; id_group : int64; isZayav, filter_by_sum_today : boolean; useShort : boolean = false; doOrderById : boolean = false);
var
 s, s2, cond_sum : string;
 ch : Char;
 reg : TRegistry;
 pFIBQuery1 : TpFIBQuery;
 isOrenda:Boolean;
begin

  ////////////////////////////////////////////////////////////////////////////////
  if (isFirstCell)then
  begin
 StoredProc.Transaction.StartTransaction;
 StoredProc.StoredProcName := 'PUB_SP_TIP_DOG_SELECT';
 StoredProc.ParamByName('GROUPP').AsInt64:=id_Group;
 StoredProc.ExecProc;
 if  StoredProc.ParamByName('NAME_SHABLON').AsString='add_arnd_contract.bpl' then isOrenda:=true else isOrenda:=false;
 StoredProc.Transaction.Commit;



 if   isOrenda then begin
 reg := TRegistry.Create;
 if reg.OpenKey(REG_KEY + 'dogForm\Filter', false) then
 begin
  CheckBoxPeriodNarah.Checked:=reg.ReadBool('CheckBoxPeriodNarah');
  EditDateBegNarah.Date:=reg.ReadDate('EditDateBegNarah');
  EditDateEndNarah.Date:=reg.ReadDate('EditDateEndNarah');
  CheckBoxNotNarah.Checked:=reg.ReadBool('CheckBoxNotNarah');
  CheckBoxNotSch.Checked:=reg.ReadBool('CheckBoxNotSch');
 end;
 reg.Free;
 end;
 end;
 ////////////////////////////////////////////////////////////////////////////////

 pFIBQuery1 := TpFIBQuery.Create(ds.Owner);
 pFIBQuery1.Database := ds.Database;
 pFIBQuery1.Transaction := ds.Transaction;


 ch := DecimalSeparator;
 DecimalSeparator := '.';

 if useShort then ds.ParamByName('USE_SHORT').AsInteger := 1 else ds.ParamByName('USE_SHORT').AsInteger := 0;

 if doOrderById then ds.SelectSQL.Text := ds.SelectSQL.Text + ' order by doc.id_dog';
 ds.ParamByName('ID_GROUP').AsInteger := id_Group;
 ds.ParamByName('ID_USER').AsInteger := SYS_ID_USER;


 if fltTipDogCheck.Checked then ds.ParamByName('FLT_ID_TIP_DOG').AsInteger := fltId_tip_dog
                           else ds.ParamByName('FLT_ID_TIP_DOG').AsInteger := -1;
 if flt_id_session_type <> -1 then
 begin
   ds.ParamByName('ID_SESSION_TYPE').AsInt64 := flt_id_session_type;
   ds.ParamByName('FLT_ID_TIP_DOG').AsInteger := -1;
 end else ds.ParamByName('ID_SESSION_TYPE').AsInt64 := -1;
 if not fltTipDogCheck.Checked then ds.ParamByName('ID_SESSION_TYPE').AsInt64 := -1;


 if cbMat.Checked then ds.ParamByName('ID_MATERIAL').AsInt64 := fltId_material
                  else ds.ParamByName('ID_MATERIAL').AsInt64 := -1;
 if depCheck.Checked then ds.ParamByName('ID_OTDEL').AsInt64 := flt_id_department
                    else ds.ParamByName('ID_OTDEL').AsInt64 := -1;
 s := '';
 s2 := '';
 cond_sum := ' ';
 if chId_dog.Checked then
 begin
   s := s + '(doc.id_dog = ' + id_dogEdit.Text + ') and ';
   s2 := s2 + '(doc.id_dog = ' + id_dogEdit.Text + ') and ';
 end;

 if (cbRateAccNative.Checked) and (flt_id_rate_acc_native <> -1) then
 begin
   s := s + '(acc2.ID_RATE_ACCOUNT = ' + IntToStr(flt_id_rate_acc_native) + ') and ';
   s2 := s2 + '(acc2.ID_RATE_ACCOUNT = ' + IntToStr(flt_id_rate_acc_native) + ') and ';
 end;

 if NomnCheck.Checked then
 begin
   s := s + '(doc.nomn_dog like ''%' + nomnEdit.Text + '%'') and ';
   s2 := s2 + '(doc.nomn_dog like ''%' + nomnEdit.Text + '%'') and ';
 end;
 if cbNote.Checked then
 begin
   s := s + '(doc.dog_note like ''%' + eNote.Text + '%'') and ';
   s2 := s2 + '(doc.dog_note like ''%' + eNote.Text + '%'') and ';
 end;
 if DateNomnCheck.Checked then begin
  s := s + '(doc.nomd_dog >= ''' + DateToStr(DateNomnBegEdit.Date) + ''') and (doc.nomd_dog <= ''' + DateToStr(DateNomnEndEdit.Date) + ''') and ';
  s2 := s2 + '(doc.nomd_dog >= ''' + DateToStr(DateNomnBegEdit.Date) + ''') and (doc.nomd_dog <= ''' + DateToStr(DateNomnEndEdit.Date) + ''') and ';
 end;
 if DateActCheck.Checked then begin
   s := s + '(doc.date_end >= ''' + DateToStr(DateActBegEdit.Date) + ''') and (doc.date_beg <= ''' + DateToStr(DateActEndEdit.Date) + ''') and ';
   s2 := s2 + '(doc.date_end >= ''' + DateToStr(DateActBegEdit.Date) + ''') and (doc.date_beg <= ''' + DateToStr(DateActEndEdit.Date) + ''') and ';
 end;
 if CheckBoxPeriodNarah.Checked then begin
   s := s + 'doc.id_tip_dog = (select t.id_tip_dog from pub_sp_tip_dog t inner join dog_ini_shablon i on(i.id_ini_shablon = t.id_ini_shablon) where i.name_shablon = ''add_arnd_contract.bpl'' and t.id_tip_dog=doc.id_tip_dog) and ';
   s2 := s2 + 'doc.id_tip_dog = (select t.id_tip_dog from pub_sp_tip_dog t inner join dog_ini_shablon i on(i.id_ini_shablon = t.id_ini_shablon) where i.name_shablon = ''add_arnd_contract.bpl'' and t.id_tip_dog=doc.id_tip_dog) and ';

   if CheckBoxNotNarah.Checked then begin
      s := s + ' (select distinct d1.ID_DOG from DOG_DT_ARENDA_P d1 where d1.id_dog=doc.id_dog   and (( (d1.date_beg <='''+DateToStr(EditDateEndNarah.Date)+''') and (d1.date_end>= '''+DateToStr(EditDateBegNarah.Date)+''' ))))is null and ';
       s2 := s2 + ' (select distinct d1.ID_DOG from DOG_DT_ARENDA_P d1 where d1.id_dog=doc.id_dog   and (( (d1.date_beg <='''+DateToStr(EditDateEndNarah.Date)+''') and (d1.date_end>= '''+DateToStr(EditDateBegNarah.Date)+''' )))) is null and ';
   end else begin
      s := s + 'doc.id_dog = (select distinct d1.ID_DOG from DOG_DT_ARENDA_P d1 where d1.id_dog=doc.id_dog   and (( (d1.date_beg <='''+DateToStr(EditDateEndNarah.Date)+''') and (d1.date_end>= '''+DateToStr(EditDateBegNarah.Date)+''' ))))and ';
       s2 := s2 + 'doc.id_dog = (select distinct d1.ID_DOG from DOG_DT_ARENDA_P d1 where d1.id_dog=doc.id_dog   and (( (d1.date_beg <='''+DateToStr(EditDateEndNarah.Date)+''') and (d1.date_end>= '''+DateToStr(EditDateBegNarah.Date)+''' ))))and ';
   end;
   if CheckBoxNotSch.Checked then begin
       s := s + ' (select distinct d2.ID_DOG from DOG_DT_ARND_SCH d2 where d2.id_dog=doc.id_dog   and ( ( (d2.date_beg <='''+DateToStr(EditDateEndNarah.Date)+''') and (d2.date_end>= '''+DateToStr(EditDateBegNarah.Date)+''' )))) is null and ';
       s2 := s2 + ' (select distinct d2.ID_DOG from DOG_DT_ARND_SCH d2 where d2.id_dog=doc.id_dog   and (( (d2.date_beg <='''+DateToStr(EditDateEndNarah.Date)+''') and (d2.date_end>= '''+DateToStr(EditDateBegNarah.Date)+''' )))) is null and ';
 
   end
 end;

 if cbEnds.Checked then
 begin
   s := s + '(doc.date_end <= ''' + DateToStr(deEnds.Date) + ''') and ';
   s2 := s2 + '(doc.date_end <= ''' + DateToStr(deEnds.Date) + ''') and ';
 end;

 if depCheck.Checked then
 begin
  s := s + '(doc.id_department = ' + IntToStr(flt_id_department) + ') and ';
  s2 := s2 + '(doc.id_department = ' + IntToStr(flt_id_department) + ') and ';
 end;
 if chNumDog.Checked then
 begin
   s := s + '(doc.n_dog like ''%' + NumDogEdit.Text + '%'') and ';
   s2 := s2 + '(doc.n_dog like ''%' + NumDogEdit.Text + '%'') and ';
 end;
 if chSumPayFulfil1.Checked then
 begin
   s := s + '(doc.sum_pay <> doc.sum_fulfil) and ';
   s2 := s2 + '(doc.sum_pay <> doc.sum_fulfil) and ';
 end;
 if chSumDogPay.Checked then
 begin
   cond_sum := ' doc.SUM_PAY <> ';
   //s2 := '( doc.SUM_PAY <> ';
 end;
 if chSumPayFulfil2.Checked then
 begin
   s := s + '(doc.sum_pay = doc.sum_fulfil) and ';
   s2 := s2 + '(doc.sum_pay = doc.sum_fulfil) and ';
 end;
 if fltDatePeriodCheck.Checked then begin
  s := s + '(doc.D_DOG >= ''' + DateToStr(fltDateBegEdit.Date) + ''') and (doc.D_DOG <= ''' + DateToStr(fltDateEndEdit.Date) + ''') and ';
  s2 := s2 + '(doc.D_DOG >= ''' + DateToStr(fltDateBegEdit.Date) + ''') and (doc.D_DOG <= ''' + DateToStr(fltDateEndEdit.Date) + ''') and ';
 end;
 if fltSumCheck.Checked then begin
  s := s + '(doc.SUMMA >= ' +  FormatFloat('0.00', fltSumFromEdit.Value) + ') and (doc.SUMMA <= ' + FormatFloat('0.00', fltSumToEdit.Value) + ') and ';
  s2 := s2 + '(doc.SUMMA >= ' + FormatFloat('0.00', fltSumFromEdit.Value) + ') and (doc.SUMMA <= ' + FormatFloat('0.00', fltSumToEdit.Value) + ') and ';
 end;
 if fltRegNumCheck.Checked then begin
   pFIBQuery1.Close;
   pFIBQuery1.SQL.Text := 'select * from PROC_DOG_DT_DOCUMENT_FIND_BYNUM(''' + fltRegNumEdit.Text + ''', ' + IntToStr(id_Group) + ')';
   pFIBQuery1.ExecQuery;
   if pFIBQuery1['TOP_LEVEL'].AsInteger = 1 then
   begin
     s := s + '(doc.REGEST_NUM like ' + QuotedStr('%'+fltRegNumEdit.Text+'%') + ') and ';
     s2 := s2 + '(doc.REGEST_NUM like ' + QuotedStr('%'+fltRegNumEdit.Text+'%') + ') and ';
   end
   else
   begin
     s := s + '(doc.ID_DOG = ' + IntToStr(pFIBQuery1['ID_DOG'].ASInt64) + ') and ';
     s2 := s2 + '(doc.ID_DOG = ' + IntToStr(pFIBQuery1['ID_DOG'].ASInt64) + ') and ';
   end;
   pFIBQuery1.Close;
 end;
 s := s + '(doc.DOG_CLOSE <= ' + IntToStr(fltShowClosed) + ') and ';
 s2 := s2 + '(doc.DOG_CLOSE <= ' + IntToStr(fltShowClosed) + ') and ';

{���������� �� ������������}
 if fltCustCheck.Checked then begin
  if fltCustEdited then begin
   s := s + '(cust.NAME_CUSTOMER_UPPER like ' + QuotedStr(AnsiUpperCase('%' + fltCustEdit.Text + '%')) + ') and ';
   s2 := s2 + '(Upper(p.FAMILIA || '' '' || p.IMYA || '' '' || p.OTCHESTVO || ''('' || CAST(pc.TN as varchar(20)) || '')'') like ' + QuotedStr(AnsiUpperCase('%' + fltCustEdit.Text + '%')) + ') and ';
  end else
  s := s + '(cust.ID_CUSTOMER = ' + IntToStr(flt_id_Customer) + ') and ';
  s2:=s2+'p.ID_MAN=-999 and ';
 end;

// if id_group = -1 then begin
//     if cbClass.Checked then begin
//        s:=s+' doc.id_class = '+ IntToStr(id_class)+' and ';
//        ds.ParamByName('P_ID_CLASS').AsInteger := -1;
//        s2:=s2+' p.ID_MAN=-999 and ';
//     end;
// end
// else begin

//     if repGroupBox.Visible = true then
//     begin
try
       if (report_class = 1) then
       begin
         if cbClass.Checked then begin
            ds.ParamByName('P_ID_CLASS').AsInteger := id_class;
         end else
            ds.ParamByName('P_ID_CLASS').AsInteger := -1;
       end else
       begin
         if cbClass.Checked then begin
            ds.ParamByName('P_ID_CLASS').AsInteger := id_class;
         end else
            ds.ParamByName('P_ID_CLASS').AsInteger := -1;
       end;
except
end ;
 if isZayav then begin
  s := s + 'doc.summa > doc.sum_pay and ';
  s2 := s2 + 'doc.summa > doc.sum_pay and ';
 end;
 if filter_by_sum_today then
 begin
  s := s + 'doc.sum_today > 0 and ';
  s2 := s2 + 'doc.sum_today > 0 and ';
 end;
 if s <> '' then s := Copy(s, 1, Length(s) - 4);
 if s2 <> '' then s2 := Copy(s2, 1, Length(s2) - 4);

 ds.ParamByName('ID_GROUP').AsInteger := id_group;

 ds.ParamByName('ID_USER').AsInteger := SYS_ID_USER;

 ds.ParamByName('WHRE_COND').AsString := s;

 ds.ParamByName('WHRE_COND_FOR_MAN').AsString := s2;

 ds.ParamByName('WHRE_COND_SUM').AsString := cond_sum;
////////////////////////////////////////////////////////////////////////////////
 if (not isFirstCell)then begin
   reg := TRegistry.Create;
   reg.OpenKey(REG_KEY + 'dogForm\Filter', true);
   reg.WriteBool('CheckBoxPeriodNarah',CheckBoxPeriodNarah.Checked );
   reg.WriteDate('EditDateBegNarah',EditDateBegNarah.Date );
   reg.WriteDate('EditDateEndNarah',EditDateEndNarah.Date );
   reg.WriteBool('CheckBoxNotNarah',CheckBoxNotNarah.Checked );
   reg.WriteBool('CheckBoxNotSch',CheckBoxNotSch.Checked );
   reg.Free;

 end;
 isFirstCell:=false;
////////////////////////////////////////////////////////////////////////////////


// ShowMessage();

 DecimalSeparator := ch;
 pFIBQuery1.free;
end;

procedure TfltDogForm.cbMatClick(Sender: TObject);
begin
 if (fltId_material = -1) and (cbMat.Checked) then MatEditPropertiesButtonClick(Self, 0);
 MatEdit.Enabled := cbMat.Checked;
end;

procedure TfltDogForm.MatEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 hPack     : HModule;
 Res:Variant;
 SpravFunc : TSpravFuncNom;
// sResult: string;
begin
 hPack := GetModuleHandle('SpNom.bpl');
 if hPack < 32 then hPack := LoadPackage('SpNom.bpl');
 if hPack > 0 then begin
  @SpravFunc := GetProcAddress(hPack, PCHAR('GetNomnEx'));
  if @SpravFunc <> NIL then Res := SpravFunc(self, TdogForm(owner).WorkDatabase.Handle, fsNormal, 0, 0, 0, 0, 0, 0, 0);
 end else begin
  ShowMessage(PChar('������ �������� ������������'));
 end;
 if  VarType(Res) <> varEmpty then
 begin
   fltid_material := Res[0];
   MatEdit.Text := Res[1];
 end;
end;

procedure TfltDogForm.cbRateAccNativeClick(Sender: TObject);
begin
 if (flt_id_rate_acc_native = -1) and (cbRateAccNative.Checked) then RateAccNativeEditPropertiesButtonClick(Self, 0);
 RateAccNativeEdit.Enabled := cbRateAccNative.Checked;
end;

procedure TfltDogForm.RateAccNativeEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
 ret : variant;
begin
  ret := LoadDogManedger.WorkSpMfoRsch(self, pFIBDatabase1.Handle, fsNormal, 'get', flt_id_rate_acc_native);
  if VarArrayDimCount(ret) > 0 then
  begin
    if ret[0][0] > 0 then
    begin
      flt_id_rate_acc_native := ret[0][0];
//      ret_mfo := ret[0][2];
//      ret_schet := ret[0][3];
      RateAccNativeEdit.Text := ret[0][3] + '(' + ret[0][2] + ')';
//      cxTextEdit_mfo_un.Text := ret[0][2];
//      cxTextEdit_rsch_un.Text := ret[0][3];
//      cxTextEdit_bank_un.Text := ret[0][6];
//      cxButton_rsch.Enabled := true;
    end else cbRateAccNative.Checked := false;
  end else cbRateAccNative.Checked := false;
end;

procedure TfltDogForm.cbNoteClick(Sender: TObject);
begin
  eNote.Enabled := cbNote.Checked;
  if Visible and eNote.Enabled then eNote.SetFocus;
end;

procedure TfltDogForm.cbEndsClick(Sender: TObject);
begin
  deEnds.Enabled := cbEnds.Checked;
  if Visible and deEnds.Enabled then deEnds.SetFocus;
end;

procedure TfltDogForm.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i, o : TAArray;
begin
 i := TAArray.Create;
  o := TAArray.Create;
  i['Owner'].AsObject := Self;
  i['FormStyle'].AsVariant := fsNormal;
  i['Caption'].AsString := '����i�i����� �������i�';
  i['CaptionEdit'].AsString := '����';
  i['TableName'].AsString := 'pub_SP_CLASS';
  i['KEY_FIELD'].AsString := 'id_ist';
  i['parent_field'].AsString := 'linkto';
  i['FIELDS'].AsString := 'shifr;name_ist;note_class';
  i['FIELDS_caption'].AsString := '����;�����;�������';
  i['SearchField'].AsString := 'FIND_FIELD';
  i['AddProc'].AsString := 'PUB_SP_CLASS_ADD';
  i['DelProc'].AsString := 'PUB_SP_CLASS_DEL';
  i['UpdProc'].AsString := 'PUB_SP_CLASS_MOD';
  i['DBHandle'].AsInteger := integer(pFIBDatabase1.handle);

  LoaderUnit.LoadSprav(ExtractFilePath(Application.ExeName) + 'workdog\UnivTree.bpl', i, o);
  if o['MoadResult'].AsVariant = mrOk then
  begin
    id_class := o['ID_IST'].asInt64;
    CxClassEdit.Text := o['SHIFR'].AsString+'.'+o['NAME_IST'].AsString;
  end;

  i.Free;
  o.Free;
end;

procedure TfltDogForm.cbClassClick(Sender: TObject);
begin
 cxClassEdit.Enabled := cbClass.Checked;

 if (cbClass.Checked) then
    cxButtonEdit1PropertiesButtonClick(Self,0)
 else
 begin
  id_class:=0;
 end;
end;

procedure TfltDogForm.CheckBoxPeriodNarahClick(Sender: TObject);
begin
 EditDateBegNarah.Enabled := CheckBoxPeriodNarah.Checked;
 EditDateEndNarah.Enabled := CheckBoxPeriodNarah.Checked;
 CheckBoxNotNarah.Enabled := CheckBoxPeriodNarah.Checked;
 CheckBoxNotSch.Enabled   := CheckBoxPeriodNarah.Checked;
 if EditDateBegNarah.Enabled and visible then EditDateBegNarah.SetFocus;
end;

end.

