unit RealShtatReport3Unit;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Buttons, ComCtrls, FR_DSet, FR_DBSet, FR_Class, DB,
    IBCustomDataSet, IBQuery, Spin, SpComboBox, frxClass, frxDBSet;

type
    TRealShtatReport3Form = class(TForm)
        Label4: TLabel;
        Label2: TLabel;
        DateBegPicker: TDateTimePicker;
        OkButton: TBitBtn;
        CancelButton: TBitBtn;
        DepartmentEdit: TEdit;
        Button1: TButton;
        ResultQuery: TIBQuery;
        ExportButton: TBitBtn;
        GroupBox1: TGroupBox;
        ITRRadio: TRadioButton;
        WorkersRadio: TRadioButton;
        SRLabel1: TLabel;
        SRBox: TSpComboBox;
        ResultQuery2: TIBQuery;
        SrQuery: TIBQuery;
        SrQueryID_SR: TIntegerField;
        SrQueryDATE_BEG: TDateField;
        SrQueryDATE_END: TDateField;
        GroupBox2: TGroupBox;
        Label1: TLabel;
        SizeEdit: TSpinEdit;
        Get_Sign: TIBQuery;
        Get_SignFIO: TIBStringField;
        Get_SignPOST_NAME: TIBStringField;
        Report: TfrxReport;
        ReportDataSet: TfrxDBDataset;
        StructQuery: TIBQuery;
        procedure FormCreate(Sender: TObject);
        procedure Button1Click(Sender: TObject);
        procedure OkButtonClick(Sender: TObject);
        procedure DateBegPickerChange(Sender: TObject);
    private
    { Private declarations }
    public
        ID_DEPARTMENT: Integer;
    end;

var
    RealShtatReport3Form: TRealShtatReport3Form;

implementation

uses uExportReport, qFTools, uoFactShtatReport, uCommonSp;
{$R *.dfm}

procedure TRealShtatReport3Form.FormCreate(Sender: TObject);
begin
    ResultQuery.Transaction := ReadTransaction;
    ResultQuery2.Transaction := ReadTransaction;

    StructQuery.Transaction := ReadTransaction;

    Get_Sign.Transaction := ReadTransaction;
    SrQuery.Transaction := ReadTransaction;

    ID_DEPARTMENT := DepNameQuery['Local_Department'];
    DepartmentEdit.Text := DepNameQuery['Name_Full'];

    DateBegPicker.Date := Date;

    DateBegPickerChange(Self);
end;

procedure TRealShtatReport3Form.Button1Click(Sender: TObject);
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
            FieldValues['DBHandle'] := Integer(uoFactShtatReport.DB.Handle);
            FieldValues['Actual_Date'] := DateBegPicker.Date;
            Post;
        end;

                // �������� ���������� � ���������������� ��������� (����� ������ ����.)
        sp.Show;
        if ( sp.Output <> nil ) and not sp.Output.IsEmpty then
        begin
            Id_Department := sp.Output['Id_Department'];
            DepartmentEdit.Text := sp.Output['Name_Full'];
        end;
        sp.Free;
    end;
end;

procedure TRealShtatReport3Form.OkButtonClick(Sender: TObject);
var
    DataSet: TIBQuery;
    ReportName: string;
    AllStavok, AllFund: Double;
begin
        // ���������, ��� �� �������
    if (ID_DEPARTMENT = -1) then
    begin
        MessageDlg('����� ������� �������.', mtError, [mbOk], 0);
        ModalResult := mrNone;
        Exit;
    end;

    if (SRBox.GetId = -1) then
    begin
        MessageDlg('����� ������� ������� �������.', mtError, [mbOk], 0);
        ModalResult := mrNone;
        Exit;
    end;

        // ������� ������ ������� � ��������� ���
    if WorkersRadio.Checked then DataSet := ResultQuery2
    else DataSet := ResultQuery;

    with DataSet do
    begin
        Close;
        Params.ParamValues['ID_DEPARTMENT'] := ID_DEPARTMENT;
        Params.ParamValues['REPORT_DATE'] := DateToStr(DateBegPicker.Date);
        Params.ParamValues['ID_SR'] := SRBox.GetId;
        Open;

        if IsEmpty then
        begin
            MessageDlg('�� ���� "' + DateToStr(DateBegPicker.Date) +
                '" ��� �������� "' + DepartmentEdit.Text +
                '" �� �� ����� ������� �������� ��������!', mtInformation, [mbOk], 0);
            Exit;
        end;
    end;

    ReportDataSet.DataSet := DataSet;
    ReportDataSet.UserName := DataSet.Name;

        // ������, ����� ���� ������ �������
    if WorkersRadio.Checked then
        if Version = 2 then
            ReportName := 'RealShtatReportWorkers.fr3'
        else ReportName := 'RealShtatReportWorkers_chermet.fr3'
    else
        if Version = 2 then
            ReportName := 'RealShtatReport.fr3'
        else ReportName := 'RealShtatReport_chermet.fr3';

    Report.Clear;
    Report.LoadFromFile('Reports\ASUP\' + ReportName);


            // ���������� ����� ������ �������� (������ � ����)
    if WorkersRadio.Checked then
    begin
        AlLStavok := 0;
        AllFund := 0;

        DataSet.Open;
        DataSet.First;
        while not DataSet.Eof do
        begin
            if DataSet['Is_Totals'] <> 0 then
            begin
                AllStavok := AllStavok + DataSet['Man_Count'];
                AllFund := AllFund + DataSet['Month_Fund'];
            end;
            DataSet.Next;
        end;
        DataSet.First;
    end;

        // ������� �������������
    Get_Sign.Close;
    Get_Sign.Params.ParamValues['Id_Shtat_Prop'] := 1112;
    Get_Sign.Params.ParamValues['CUR_DATE'] := DATE;
    Get_Sign.Open;

    Report.Variables['FACT_SR_UTV_POST'] := QuotedStr(Get_SignPOST_NAME.Value);
    Report.Variables['FACT_SR_UTV_FIO'] := QuotedStr(Get_SignFIO.Value);

    Get_Sign.Close;
    Get_Sign.Params.ParamValues['Id_Shtat_Prop'] := 1212;
    Get_Sign.Params.ParamValues['CUR_DATE'] := DATE;
    Get_Sign.Open;

    Report.Variables['FACT_SR_PODP_POST'] := QuotedStr(Get_SignPOST_NAME.Value);
    Report.Variables['FACT_SR_PODP_FIO'] := QuotedStr(Get_SignFIO.Value);

    Get_Sign.Close;

    Get_Sign.Close;
    Get_Sign.Params.ParamValues['Id_Shtat_Prop'] := 1612;
    Get_Sign.Params.ParamValues['CUR_DATE'] := DATE;
    Get_Sign.Open;

    Report.Variables['FACT_SR_AGREE_POST'] := QuotedStr(Get_SignPOST_NAME.Value);
    Report.Variables['FACT_SR_AGREE_FIO'] := QuotedStr(Get_SignFIO.Value);
    Report.Variables['Firm_Name'] := QuotedStr(DepNameQuery['Firm_Name']);
    Report.Variables['AllStavok'] := QuotedStr(FloatToStr(AllStavok));
    Report.Variables['AllFund'] := QuotedStr(FloatToStr(AllFund));
    Report.Variables['Hidden_Id_Post'] := DepNameQuery['Hidden_Id_Post'];

            // �������� ����������� �������������
    StructQuery.Close;
    StructQuery.Params.ParamValues['Id_Department'] := Id_Department;
    StructQuery.Open;

    if StructQuery['Struct_Department'] <> Id_Department then
        if ITRRadio.Checked then
            Report.Variables['Struct'] := QuotedStr(Coalesce(StructQuery['Name_Full'], ''))
        else Report.Variables['Struct'] := QuotedStr(' (' + Coalesce(StructQuery['Name_Full'], '') + ')')
    else Report.Variables['Struct'] := QuotedStr('');

    Report.Variables['FONT_SIZE'] := QuotedStr(IntToStr(SizeEdit.Value));

    if ITRRadio.Checked then
    begin
        Report.Variables['OKLAD_TITLE'] := QuotedStr('���');
        Report.Variables['TITLE'] := QuotedStr('��������� ������� ������� ��������, �������� �� ����������');
    end;

    if WorkersRadio.Checked then
    begin
        Report.Variables['OKLAD_TITLE'] := QuotedStr('�/�');
        Report.Variables['TITLE'] := QuotedStr('��������� ������� ������� ��������');
    end;

        // ��������� �����
    if (Sender as TButton).Name = 'OkButton' then
        if sDesignReport then Report.DesignReport
        else Report.ShowReport
    else
        if (Sender as TButton).Name = 'ExportButton' then ExportReportTo(Report);
end;

procedure TRealShtatReport3Form.DateBegPickerChange(Sender: TObject);
begin
    SrQuery.Close;
    SrQuery.Params.ParamValues['REPORT_DATE'] := DateToStr(DateBegPicker.Date);
    SrQuery.Open;

    if not SrQuery.IsEmpty then SRBox.Prepare(SrQueryID_SR.Value)
    else SRBox.Prepare(-1, '');
end;

end.

