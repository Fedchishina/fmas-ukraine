{******************************************************************************}
{               ������������������ ������� ���������� ����������               }

{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                       ������ "���������� ��������� �� �������"               }
{    ���� ���������� �� ����������                                             }
{    �������������: ������ ��������                                            }

unit fmDismissMan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, SpComboBox, Db, IBCustomDataSet, IBQuery,
  SpCommon, DBCtrls,variants, Mask, CheckEditUnit, uIntControl,
  uCharControl, uSpravControl, uFControl, uLabeledFControl, uDateControl,
  uFormControl, ActnList, FIBDataSet, pFIBDataSet, FIBDatabase,
  pFIBDatabase, uShtatUtils, uCommonSP, ibase, qFTools, uSelectForm,
  uLogicCheck, SpFormUnit, PFibStoredProc;

type
  TDismissManForm = class(TForm)
    OkButton: TBitBtn;
    CancelButton: TBitBtn;
    DateDismission: TqFDateControl;
    Fio: TqFSpravControl;
    OldWorkPlace: TqFSpravControl;
    DismissionReason: TqFCharControl;
    NameDismission: TqFSpravControl;
    ProfkomAgree: TqFCharControl;
    UnWork: TqFIntControl;
    NotUsed: TqFIntControl;
    FormControl: TqFFormControl;
    LocalDatabase: TpFIBDatabase;
    LocalReadTransaction: TpFIBTransaction;
    LocalWriteTransaction: TpFIBTransaction;
    SelectCurWorkPlace: TpFIBDataSet;
    SelectCurWorkPlaceID_DEPARTMENT: TFIBIntegerField;
    SelectCurWorkPlaceNAME_POST_SALARY: TFIBStringField;
    SelectCurWorkPlaceID_POST_SALARY: TFIBIntegerField;
    SelectCurWorkPlaceNAME_DEPARTMENT: TFIBStringField;
    SelectCurWorkPlaceID_MAN_MOVING: TFIBIntegerField;
    SelectCurWorkPlaceDATE_BEG: TFIBDateField;
    SelectCurWorkPlaceDATE_END: TFIBDateField;
    SelectCurWorkPlaceREAL_DATE_END: TFIBDateField;
    KeyList: TActionList;
    OkAction: TAction;
    CancelAction: TAction;
    qFLogicCheck1: TqFLogicCheck;
    Check2: TqFLogicCheck;
    Check2Query: TpFIBDataSet;
    FIBIntegerField1: TFIBIntegerField;
    FIBStringField1: TFIBStringField;
    FIBIntegerField2: TFIBIntegerField;
    FIBStringField2: TFIBStringField;
    FIBIntegerField3: TFIBIntegerField;
    FIBDateField1: TFIBDateField;
    FIBDateField2: TFIBDateField;
    FIBDateField3: TFIBDateField;
    SelectCurWorkPlaceWORK_REASON: TFIBStringField;
    SelectCurWorkPlaceNAME_SOVMEST: TFIBStringField;
    Check2QueryWORK_REASON: TFIBStringField;
    Check2QueryNAME_SOVMEST: TFIBStringField;
    pFIBDS_CheckPermission: TpFIBDataSet;
    pFIBDS_CheckPermissionNUM_PROJECT: TFIBStringField;
    pFIBDS_CheckPermissionDATE_ORDER: TFIBDateField;
    pFIBDS_CheckPermissionOWNER_NAME: TFIBStringField;
    procedure CancelActionExecute(Sender: TObject);
    procedure OkActionExecute(Sender: TObject);
    procedure FioOpenSprav(Sender: TObject; var Value: Variant;
      var DisplayText: String);
    procedure FioChange(Sender: TObject);
    procedure OldWorkPlaceOpenSprav(Sender: TObject; var Value: Variant;
      var DisplayText: String);
    procedure NameDismissionOpenSprav(Sender: TObject; var Value: Variant;
      var DisplayText: String);
    procedure FormControlAfterRecordAdded(Sender: TObject);
    procedure qFLogicCheck1Check(Sender: TObject; var Error: String);
    procedure Check2Check(Sender: TObject; var Error: String);
  private
    { Private declarations }
  public
    Id_Order_Type : Integer;
    Date_Order : TDate;
    Id_Order : Integer;
    Id_Man_Moving : Integer;
    dmShtatUtils : TdmShtatUtils;
    Id_order_group : Integer;
  end;

    type
        TDismissOrderSprav = class(TSprav)
    private
        IsConnected: Boolean;
        Form : TDismissManForm;
        procedure PrepareConnect;
    public
        constructor Create;
        destructor  Destroy;override;
        procedure   Show;override;
        procedure   GetInfo;override;
        function    Exists: boolean;override;
    end;

function CreateSprav: TSprav;stdcall;
exports CreateSprav;

var
  DismissManForm : TDismissManForm;

implementation

{$R *.DFM}

function CreateSprav: TSprav;
begin
    Result := TDismissOrderSprav.Create;
end;

constructor TDismissOrderSprav.Create;
begin
    inherited Create;

    // �������� �������/�������� �����
    Input.FieldDefs.Add('Id_Order_Type', ftInteger);
    Input.FieldDefs.Add('Id_Order', ftInteger);
    Input.FieldDefs.Add('Date_Order', ftDate);
    Input.FieldDefs.Add('SpMode', ftInteger);
    Input.FieldDefs.Add('Num_Item', ftInteger);
    Input.FieldDefs.Add('Sub_Item', ftInteger);
    Input.FieldDefs.Add('Id_Order_Group', ftInteger);
    Input.FieldDefs.Add('Intro', ftString, 4096);

    Output.FieldDefs.Add('New_Id_Order', ftInteger);
end;

destructor TDismissOrderSprav.Destroy;
begin
    inherited Destroy;
end;

        // ����������� ���������� � �����
procedure TDismissOrderSprav.PrepareConnect;
begin

end;

procedure TDismissOrderSprav.Show;
var
    hnd : Integer;
begin
    Form := TDismissManForm.Create(Application.MainForm);

    Form.LocalReadTransaction.Active := False;
    Form.LocalWriteTransaction.Active := False;

    if Form.LocalDatabase.Connected then Form.LocalDatabase.Close;

    hnd := Input['DBHANDLE'];
    Form.LocalDatabase.Handle := TISC_DB_HANDLE(hnd);

    Form.Id_Order := Input['Id_Order'];
    Form.Id_Order_Type := Input['Id_Order_Type'];
    Form.Date_Order := Input['Date_Order'];

    Form.dmShtatUtils := TdmShtatUtils.Create(Form, Integer(Form.LocalDatabase.Handle), Form.Date_Order);
    DismissManForm := Form;

    case Input['SpMode'] of
        1 : Form.FormControl.Mode := fmAdd;
        2 : Form.FormControl.Mode := fmModify;
        3 : Form.FormControl.Mode := fmInfo;
    end;

    Form.Id_order_group:=Input['ID_ORDER_GROUP'];

    Form.FormControl.Prepare(Form.LocalDatabase, Form.FormControl.Mode, IntToStr(Form.Id_Order), '');

    Form.FormControl.InsertSQL.Text := StringReplace(Form.FormControl.InsertSQL.Text, ':ID_ORDER_TYPE', IntToStr(Form.Id_Order_Type), []);
    Form.FormControl.InsertSQL.Text := StringReplace(Form.FormControl.InsertSQL.Text, ':NUM_ITEM', IntToStr(Input['NUM_ITEM']), []);
    Form.FormControl.InsertSQL.Text := StringReplace(Form.FormControl.InsertSQL.Text, ':SUB_ITEM', IntToStr(Input['SUB_ITEM']), []);
    Form.FormControl.InsertSQL.Text := StringReplace(Form.FormControl.InsertSQL.Text, ':ID_ORDER_GROUP', IntToStr(Input['ID_ORDER_GROUP']), []);

    if not varIsNull(Input['INTRO']) then
        Form.FormControl.InsertSQL.Text := StringReplace(Form.FormControl.InsertSQL.Text, ':INTRO', QuotedStr(Input['INTRO']), []);

    if Form.FormControl.Mode = fmAdd then
        Form.DateDismission.Value :=  Form.Date_Order;

    Form.Check2Query.ParamByName('ID_ORDER_GROUP').AsInteger := Input['ID_ORDER_GROUP'];

    form.ShowModal;

    if Form.Id_Order <> -1 then begin
        Output.Open;
        Output.Append;
        Output['New_Id_Order'] := Form.Id_Order;
        Output.Post;
    end;

    form.Free;
end;

function TDismissOrderSprav.Exists: boolean;
begin
    if not IsConnected then PrepareConnect;
    Result := True;
end;

procedure TDismissOrderSprav.GetInfo;
begin
    if not IsConnected then PrepareConnect;
end;

procedure TDismissManForm.CancelActionExecute(Sender: TObject);
begin
    Close;
end;

procedure TDismissManForm.OkActionExecute(Sender: TObject);
begin
    pFIBDS_CheckPermission.ParamByName('id_pcard').AsInteger:=FIO.Value;
    pFIBDS_CheckPermission.ParamByName('id_order').AsInteger:=Id_order_group;
    pFIBDS_CheckPermission.Open;
    if (not pFIBDS_CheckPermission.IsEmpty)
     then begin
       qFInformDialog('�� ������� �������� ����� �� �� ������ ����, �� � ���� �� ������� ������ ���''���� � ���!');
       qSelect(pFIBDS_CheckPermission,'������ ������');
       pFIBDS_CheckPermission.Close;
       ModalResult:=0;
       Exit;
     end;
    pFIBDS_CheckPermission.Close;

    FormControl.Ok;
end;

procedure TDismissManForm.FioOpenSprav(Sender: TObject;
  var Value: Variant; var DisplayText: String);
var
    sp: TSprav;
begin
    // ������� ����������
    sp :=  GetSprav('asup\PCardsList');
    if sp <> nil then
    begin

        // ��������� ������� ���������
        with sp.Input do
        begin
            Append;
            FieldValues['DBHandle'] := Integer(LocalDatabase.Handle);
            FieldValues['ActualDate'] := Date_Order;
            FieldValues['SecondDate'] := 0;
            FieldValues['ShowWorking'] := True;
            FieldValues['CanRemoveFilter'] := True;
            FieldValues['AdminMode'] := True;
            Post;
        end;

        // �������� ���������� � ���������������� ��������� (����� ������ ����.)
        sp.Show;
        if ( sp.Output <> nil ) and not sp.Output.IsEmpty then
        begin
            Value := sp.Output['ID_PCARD'];
            DisplayText := sp.Output['FIO'];

            SelectCurWorkPlace.Close;
            SelectCurWorkPlace.ParamByName('CUR_DATE').AsDate := DateDismission.Value;
            SelectCurWorkPlace.ParamByName('Id_Pcard').AsInteger := FIO.Value;
            SelectCurWorkPlace.Open;
            SelectCurWorkPlace.FetchAll;

            if SelectCurWorkPlace.RecordCount = 1 then begin
                OldWorkPlace.Value := SelectCurWorkPlaceID_MAN_MOVING.Value;
                OldWorkPlace.DisplayText := SelectCurWorkPlace['NAME_POST_SALARY'] + ' (' + SelectCurWorkPlace['NAME_DEPARTMENT'] + ')';
            end
            else begin
                OldWorkPlace.Value := Null;
                OldWorkPlace.DisplayText := '';
            end;

            DismissionReason.Value := '����� ' + sp.Output['FIO_SMALL'];
        end;
        sp.Free;
    end;
end;

procedure TDismissManForm.FioChange(Sender: TObject);
begin
    if VarIsNull(Fio.Value) then
        exit;

    SelectCurWorkPlace.Close;
    SelectCurWorkPlace.ParamByName('Cur_Date').AsDate := DateDismission.Value;
    SelectCurWorkPlace.ParamByName('Id_Pcard').AsInteger := Fio.Value;
    SelectCurWorkPlace.Open;
    SelectCurWorkPlace.FetchAll;

    if SelectCurWorkPlace.RecordCount = 1 then begin
        OldWorkPlace.Value := SelectCurWorkPlaceID_MAN_MOVING.Value;
        OldWorkPlace.DisplayText := SelectCurWorkPlaceNAME_POST_SALARY.Value + ' (' + SelectCurWorkPlaceNAME_DEPARTMENT.Value + ')';
    end;
end;

procedure TDismissManForm.OldWorkPlaceOpenSprav(Sender: TObject;
  var Value: Variant; var DisplayText: String);
var CountSP:TPFibStoredProc;
    hl:Integer;
    hu:Integer;
begin
    if VarIsNull(FIO.Value) then begin
        qFErrorDialog('�������� ����� ������� ����������!');
        exit;
    end;

    if qSelect(SelectCurWorkPlace) then
    begin
        Value := SelectCurWorkPlace['ID_MAN_MOVING'];
        DisplayText := SelectCurWorkPlace['NAME_POST_SALARY'] + ' (' + SelectCurWorkPlace['NAME_DEPARTMENT'] + ')';

        //���������� ������� ��������� ������� ��������� ���������� ����������������
        //���� �������� ���������� ���� �����������
        try
              CountSP:=TPFibStoredProc.Create(self);
              CountSP.Database:=LocalDatabase;
              CountSP.Transaction:=LocalReadTransaction;
              CountSP.StoredProcName:='ASUP_ORDER_HOL_COMP';
              CountSP.Prepare;
              CountSP.ParamByName('ID_MAN_MOVING').Value:=Value;
              CountSP.ExecProc;
              hl:=CountSP.ParamByName('HOLIDAY_LONG').Value;
              hu:=CountSP.ParamByName('DAY_COUNT').Value;
              if (hl-hu)>0
              then begin
                        UnWork.Value:=hl-hu;
                        NotUsed.Value:=0
              end
              else begin
                        UnWork.Value:=0;
                        NotUsed.Value:=-(hl-hu);
              end;
              CountSP.Close;
              CountSP.Free;
         except on E:Exception do
              begin
                     ShowMessage('������� �� ��� ���������� ��� ��������!');
              end;
         end;


    end;
end;

procedure TDismissManForm.NameDismissionOpenSprav(Sender: TObject;
  var Value: Variant; var DisplayText: String);
var
    sp: TSprav;
begin
    // ������� ����������
    sp :=  GetSprav('asup\SpDismission');
    if sp <> nil then
    begin

        // ��������� ������� ���������
        with sp.Input do
        begin
            Append;
            FieldValues['DBHandle'] := Integer(LocalDatabase.Handle);
            FieldValues['FormStyle'] := fsNormal;
            Post;
        end;

        // �������� ���������� � ���������������� ��������� (����� ������ ����.)
        sp.Show;
        if ( sp.Output <> nil ) and not sp.Output.IsEmpty then
        begin
            Value := sp.Output['Id_Dismission'];
            DisplayText := sp.Output['Name_Dismission'];
            
            if not VarIsNull(sp.Output['Kzot_St']) then
                DisplayText := DisplayText + ' ' + sp.Output['Kzot_St'];
        end;
        sp.Free;
    end;
end;

procedure TDismissManForm.FormControlAfterRecordAdded(Sender: TObject);
begin
    Id_Order := FormControl.LastId;
end;

procedure TDismissManForm.qFLogicCheck1Check(Sender: TObject;
  var Error: String);
begin
{    if (DateDismission.Value < SelectCurWorkPlaceDATE_BEG.Value) then
        Error := '���� ��������� �� ���� ���� ������� �� ���� ������� ("' +
        SelectCurWorkPlaceDATE_BEG.AsString + '")';
        }

        // ����� ��������� ����� �����, ��� ��� �����
end;

procedure TDismissManForm.Check2Check(Sender: TObject; var Error: String);
begin
    // ���������, ���� ��������� � ��������� ����� ������, �� ����� �� ���� ����������.
    Check2Query.Close;
    Check2Query.ParamByName('INPUT_ID_MAN_MOVING').AsInteger := OldWorkPlace.Value;
    Check2Query.ParamByName('CUR_DATE').AsDate := DateDismission.Value;
    Check2Query.Open;

    if (not Check2Query.IsEmpty) then begin
        qSelect(Check2Query, '������ ������� ��������� ����������, � ���� ���� �� ���� ��������...');
        Error := '�� ���������� �������� ���������� � ��������� ���� ������, ��� �� ������ �� �����������, � ����� ���� �� ��������';
    end;
end;

end.
