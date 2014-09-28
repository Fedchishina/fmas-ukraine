{*******************************************************************************
* uFormControl                                                                 *
*                                                                              *
* ���������� ����������� ��� ������ � ������ �������������� (qFControls)       *
* ������ � ������ ����� (TqFFormControl)                                       *
* Copyright �  2005, ���� �. ������, �������� ������������ �����������         *
*******************************************************************************}

unit uFormControl;

interface

uses
    SysUtils, Classes, Controls, pFIBDatabase, pFIBDataset, pFIBQuery,
    FIB, Forms, FIBDatabase;

type
    TFormMode = (fmAdd, fmModify, fmInfo, fmClone, fmDelete);

    TqFAfterPrepareEvent = procedure(Sender: TObject; Form: TForm; Mode: TFormMode) of object;
    TqFDatabaseEvent = procedure(Sender: TObject; Form: TForm; Mode: TFormMode;
        Transaction: TFIBTransaction) of object;

    TqFFormControl = class(TGraphicControl)
    private
        FMode: TFormMode;

        FControlsParent: TWinControl;
        FControlsOwner: TComponent;

        FWriteTransaction: TpFIBTransaction;
        FReadTransaction: TpFIBTransaction;

        FSelectDataset: TpFIBDataSet;
        FAddDataset: TpFIBDataSet;
        FModifyQuery: TpFIBQuery;

        FLastId: Variant;

        FWhere: Variant;

        FAddCaption: string;
        FModifyCaption: string;
        FInfoCaption: string;

        FAfterPrepare: TqFAfterPrepareEvent;
        FDatabaseEventBefore: TqFDatabaseEvent;
        FDatabaseEventAfter: TqFDatabaseEvent;

        FNewRecordBeforePrepare: TNotifyEvent;
        FNewRecordAfterPrepare: TNotifyEvent;
        FModifyRecordBeforePrepare: TNotifyEvent;
        FModifyRecordAfterPrepare: TNotifyEvent;
        FInfoRecordBeforePrepare: TNotifyEvent;
        FInfoRecordAfterPrepare: TNotifyEvent;
        FAfterRecordAdded: TNotifyEvent;

        FCheckWhere: Boolean;

        FCloseForm: Boolean;

        FShowErrorDialog: Boolean;
        FShowDebugInfoInOK: Boolean;

        procedure FreeDBObjects;

        procedure SetInsertSQL(SQL: TStrings);
        function GetInsertSQL: TStrings;

        procedure SetSelectSQL(SQL: TStrings);
        function GetSelectSQL: TStrings;

        procedure SetUpdateSQL(SQL: TStrings);
        function GetUpdateSQL: TStrings;

        procedure SetDatabase(DB: TpFIBDatabase);

    public
        IsEmpty: Boolean;

        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        procedure Paint; override;

        function Prepare(DB: TpFIBDatabase; Mode: TFormMode; Where: Variant;
            Additional: Variant): Boolean;

        function Check: Boolean;
        function Ok: Boolean;

    published
        property ControlsParent: TWinControl read FControlsParent write FControlsParent;
        property ControlsOwner: TComponent read FControlsOwner write FControlsOwner;

        property InsertSQL: TStrings read GetInsertSQL write SetInsertSQL;
        property UpdateSQL: TStrings read GetUpdateSQL write SetUpdateSQL;
        property SelectSQL: TStrings read GetSelectSQL write SetSelectSQL;

        property LastId: Variant read FLastId write FLastId; // vallkor  write FLastId

        property AddCaption: string read FAddCaption write FAddCaption;
        property ModifyCaption: string read FModifyCaption write FModifyCaption;
        property InfoCaption: string read FInfoCaption write FInfoCaption;

        property AfterPrepare: TqFAfterPrepareEvent read FAfterPrepare write FAfterPrepare;
        property NewRecordBeforePrepare: TNotifyEvent read FNewRecordBeforePrepare write FNewRecordBeforePrepare;
        property NewRecordAfterPrepare: TNotifyEvent read FNewRecordAfterPrepare write FNewRecordAfterPrepare;
        property ModifyRecordBeforePrepare: TNotifyEvent read FModifyRecordBeforePrepare write FModifyRecordBeforePrepare;
        property ModifyRecordAfterPrepare: TNotifyEvent read FModifyRecordAfterPrepare write FModifyRecordAfterPrepare;
        property InfoRecordBeforePrepare: TNotifyEvent read FInfoRecordBeforePrepare write FInfoRecordBeforePrepare;
        property InfoRecordAfterPrepare: TNotifyEvent read FInfoRecordAfterPrepare write FInfoRecordAfterPrepare;
        property AfterRecordAdded: TNotifyEvent read FAfterRecordAdded write FAfterRecordAdded;

        property DatabaseEventBefore: TqFDatabaseEvent read FDatabaseEventBefore write FDatabaseEventBefore;
        property DatabaseEventAfter: TqFDatabaseEvent read FDatabaseEventAfter write FDatabaseEventAfter;

        property Mode: TFormMode read FMode write FMode;

        property CheckWhere: Boolean read FCheckWhere write FCheckWhere;

        property CloseForm: Boolean read FCloseForm write FCloseForm;

        property ShowErrorDialog: Boolean read FShowErrorDialog write FShowErrorDialog;
        property ShowDebugInfoInOk: Boolean read FShowDebugInfoInOk write FShowDebugInfoInOk;

    end;

var
    Acc_Id_User: Integer;

procedure Register;
{$R *.res}

implementation

uses qFTools, Dialogs, FIBDataSet, FIBQuery, qFStrings, Variants;


function TqFFormControl.Check: Boolean;
begin
    Result := qFCheckAll(ControlsOwner, ControlsParent);
end;

    // ������� ���������� � ����

function TqFFormControl.Ok: Boolean;
var
    form: TForm;
    origSQL, newSQL: string;
begin
        // ���� �������� �����, �� ��������� �������������� ��������
    if Owner is TForm then
        form := Owner as TForm
    else
        form := nil;

    if FCloseForm and (form <> nil) then form.ModalResult := mrNone;

    FLastId := Null;

        // ���� ���� �� �� ��������� - ����� ���������� � ������ � �����
    if FMode = fmInfo then
    begin
        if FReadTransaction.Active then FReadTransaction.Commit;
        if FCloseForm and (form <> nil) then form.ModalResult := mrOk;
        Result := True;
        Exit;
    end;

    result := False;

    try
        qFAutoSaveIntoRegistry(ControlsOwner, ControlsParent); // vallkor
    except
    end;

    if Check then
    begin
        result := True;

                // ���������� � ���� ����� ������
        if (FMode = fmAdd) or (FMode = fmClone) then
        try
            FAddDataSet.Transaction.StartTransaction;

            if Assigned(FDatabaseEventBefore) then
                FDatabaseEventBefore(Self, Form, Mode, FAddDataSet.Transaction);

                // ��������� ������������ ����� ������� (���� ����� ������)
                // � �������� ��������� ����������
            origSQL := FAddDataSet.SelectSQL.Text;

            newSQL := qFSubsParams(origSQL, ControlsOwner, ControlsParent);

            if (FMode = fmClone) and qFNotEmpty(FWhere) then
                newSQL := StringReplace(newSQL, ':where',
                    qFVariantToString(FWhere), [rfReplaceAll]);

                    // �������� ������������� ����������
            newSQL := StringReplace(newSQL, ':Acc_Id_User',
                IntToStr(Acc_Id_User), [rfReplaceAll]);

            FAddDataSet.SelectSQL.Text := newSQL;

            if ShowDebugInfoInOk then
                qFInformDialog('fmAdd/fmClone:  SQL=' + #13#10 +
                    newSQL);

            FSelectDataset.Close;
            FAddDataSet.Open;
            FAddDataSet.FetchAll;

                // �������� �������� ������������ ��������������, ���� �� ����
            if FAddDataSet.FieldCount > 0 then
                FLastId := FAddDataSet.Fields[0].Value
            else
                FLastId := Null;

            FWhere := FLastId;
            FAddDataSet.Close;

                // ������� ������������ ����� �������
            FAddDataSet.SelectSQL.Text := origSQL;

            if Assigned(FDatabaseEventAfter) then
                FDatabaseEventAfter(Self, Form, Mode, FAddDataSet.Transaction);

                // ����������� ����������, �����, ���� �������� - �����
            if FAddDataSet.Transaction.InTransaction then FAddDataSet.Transaction.Commit;

            if FCloseForm and (form <> nil) then form.ModalResult := mrOk;

            if Assigned(FAfterRecordAdded) then
                FAfterRecordAdded(Self);

        except on e: Exception do
            begin
                // �������� ����������, ������� �������� �����, �������� ������
                if FAddDataSet.Transaction.Active then
                    FAddDataSet.Transaction.Rollback;
                FAddDataSet.Close;
                FAddDataSet.SelectSQL.Text := origSQL;
                if ShowErrorDialog then
                    qFErrorDialog(qFErrorMsg + ': ' + e.Message + '!');

                result := False; //vallkor
            end;
        end
        else
                {// �������� ������}if FMode = fmModify then
            try
                FModifyQuery.Transaction.StartTransaction;

                if Assigned(FDatabaseEventBefore) then
                    FDatabaseEventBefore(Self, Form, Mode, FAddDataSet.Transaction);

                // ��������� ������������ ����� ������� � �������� ���������
                origSQL := FModifyQuery.SQL.Text;

                if qFNotEmpty(FWhere) then
                begin
                    newSQL := StringReplace(origSQL, ':where',
                        qFVariantToString(FWhere), [rfReplaceAll]);
                    FModifyQuery.SQL.Text := newSQL;
                end
                else
                    if FCheckWhere then
                        Exception.Create(qFCantOk);

                newSQL := qFSubsParams(FModifyQuery.SQL.Text, ControlsOwner, ControlsParent);

                                    // �������� ������������� ����������
                newSQL := StringReplace(newSQL, ':Acc_Id_User',
                    IntToStr(Acc_Id_User), [rfReplaceAll]);

                FModifyQuery.SQL.Text := newSQL;

                if ShowDebugInfoInOk then
                    qFInformDialog('fmAdd/fmClone:  SQL=' + #13#10 +
                        newSQL);

                // ����� ����������
                if FReadTransaction.Active then FReadTransaction.Commit;
                FModifyQuery.ExecQuery;

                // ��������, ���� �������� ���� �� ������� �������
                if FModifyQuery.Open then FModifyQuery.Close;

                FModifyQuery.SQL.Text := origSQL;

                // ��������� �������������� ��������
                if Assigned(FDatabaseEventAfter) then
                    FDatabaseEventAfter(Self, Form, Mode, FAddDataSet.Transaction);

                if FModifyQuery.Transaction.InTransaction then FModifyQuery.Transaction.Commit;
                if FReadTransaction.Active then FReadTransaction.Commit;

                qFAutoSaveIntoRegistry(ControlsOwner, ControlsParent); // vallkor

                if FCloseForm and (form <> nil) then form.ModalResult := mrOk;

            except on e: Exception do
                begin
                    if FAddDataSet.Transaction.Active then
                        FModifyQuery.Transaction.Rollback;

                // ��������, ���� �������� ���� �� ������� �������
                    if FModifyQuery.Open then FModifyQuery.Close;
                    FModifyQuery.SQL.Text := origSQL;

                    if ShowErrorDialog then
                        qFErrorDialog(qFErrorMsg + ': ' + e.Message + '!');
                // ����������� ����������
                    FSelectDataSet.Open;

                    result := False; //vallkor
                end;
            end;
    end; // vallkor
end;

    // ����������� �����

function TqFFormControl.Prepare(DB: TpFIBDatabase; Mode: TFormMode;
    Where: Variant; Additional: Variant): Boolean;
var
    form: TForm;
begin
    Result := True;

        // ���������, ����� ��� ��������� ����������
    if (FSelectDataset.Transaction <> nil) and
        FSelectDataset.Transaction.InTransaction then
        FSelectDataset.Transaction.Rollback;

    SetDatabase(DB);
    FMode := Mode;
    FWhere := Where;

    form := nil;

            // �������� �������������� ���������, ���� �� ������
    if (Mode = fmModify) and qFNotEmpty(Additional) then
    begin
        FModifyQuery.SQL.Text := StringReplace(
            FModifyQuery.SQL.Text, ':add', qFVariantToString(Additional),
            [rfReplaceAll]);
    end;

    if ((Mode = fmAdd) or (Mode = fmClone)) and qFNotEmpty(Additional) then
    begin
        FAddDataSet.SelectSQL.Text := StringReplace(
            FAddDataSet.SelectSQL.Text, ':add',
            qFVariantToString(Additional), [rfReplaceAll]);
    end;

            // ������� �������������� �����������, ���� ����
    if (Mode = fmAdd) and Assigned(FNewRecordBeforePrepare) then
        FNewRecordBeforePrepare(Self);
    if (Mode = fmModify) and Assigned(FModifyRecordBeforePrepare) then
        FModifyRecordBeforePrepare(Self);
    if (Mode = fmInfo) and Assigned(FInfoRecordBeforePrepare) then
        FInfoRecordBeforePrepare(Self);

    if (Mode = fmModify) or (Mode = fmInfo) or (Mode = fmClone) then
    begin
            // �������� ��������� ��� ���
        SelectSQL.Text := qFSubsParams(SelectSQL.Text, ControlsOwner, ControlsParent);

            // �������� �������� ��� ����� ��� ���������
        if qFNotEmpty(FWhere) then
            with FSelectDataSet do
                SelectSQL.Text := StringReplace(SelectSQL.Text, ':where',
                    qFVariantToString(FWhere), [rfReplaceAll])
        else
            if FCheckWhere then
            begin
                qFErrorDialog(qFCantPrepare);
                // �������� ����������, ���� ���
                if (FSelectDataset.Transaction <> nil) and
                    FSelectDataset.Transaction.InTransaction then
                    FSelectDataset.Transaction.Rollback;
                Exit;
            end;

            // ����������� �������� ������
        FSelectDataset.Transaction.StartTransaction;
        try
            FSelectDataset.Close;
            FSelectDataset.Open;
        except on e: Exception do
            begin
                // � ������ ������ ����������, �� ���������� �� ���
                // � ������ ��������������� ���������
                if (e is EFIBInterbaseError) and
                    ((e as EFIBInterbaseError).IBErrorCode = 335544345) then
                    qFErrorDialog(qFLockErrorMsg)
                else
                    qFErrorDialog(qFGetErrorMsg + ': ' + e.Message + '!');
                Result := False;
                        // �������� ����������, ���� ���
                if (FSelectDataset.Transaction <> nil) and
                    FSelectDataset.Transaction.InTransaction then
                    FSelectDataset.Transaction.Rollback;
                IsEmpty := True;
                Exit;
            end;
        end;
        IsEmpty := FSelectDataset.IsEmpty;

            // ������� ������ � ��������
        qFReadData(FSelectDataset, ControlsOwner, ControlsParent);
        FSelectDataset.Close;
    end;

        // ���� � ��� ����� ���������, ������������� ��������
    if Mode = fmInfo then
        qFBlock(True, ControlsOwner, ControlsParent);

    if Mode = fmAdd then // vallkor
        qFAutoLoadFromRegistry(ControlsOwner, ControlsParent);

        // ���������� ������ ��������� � �����
    if Owner is TForm then
    begin
        form := Owner as TForm;
        if Mode = fmAdd then form.Caption := FAddCaption;
        if (Mode = fmModify) or (Mode = fmClone) then
            form.Caption := FModifyCaption;
        if Mode = fmInfo then form.Caption := FInfoCaption;
    end;

        // ������� �������������� �����������, ���� ����
    if (Mode = fmAdd) and Assigned(FNewRecordAfterPrepare) then
        FNewRecordAfterPrepare(Self);
    if (Mode = fmModify) and Assigned(FModifyRecordAfterPrepare) then
        FModifyRecordAfterPrepare(Self);
    if (Mode = fmInfo) and Assigned(FInfoRecordAfterPrepare) then
        FInfoRecordAfterPrepare(Self);

    if Assigned(FAfterPrepare) then
        FAfterPrepare(Self, form, Mode);

    if form <> nil then form.Repaint;

            // ����� �� ������ �� TabOrder'� �������
    qFSetFocus(ControlsOwner, ControlsParent);
end;

procedure TqFFormControl.SetInsertSQL(SQL: TStrings);
begin
    FAddDataSet.SelectSQL := SQL;
end;

function TqFFormControl.GetInsertSQL: TStrings;
begin
    Result := FAddDataSet.SelectSQL;
end;

procedure TqFFormControl.SetSelectSQL(SQL: TStrings);
begin
    FSelectDataSet.SelectSQL := SQL;
end;

function TqFFormControl.GetSelectSQL: TStrings;
begin
    Result := FSelectDataSet.SelectSQL;
end;

procedure TqFFormControl.SetUpdateSQL(SQL: TStrings);
begin
    FModifyQuery.SQL := SQL;
end;

function TqFFormControl.GetUpdateSQL: TStrings;
begin
    Result := FModifyQuery.SQL;
end;


procedure TqFFormControl.SetDatabase(DB: TpFIBDatabase);
begin
        // �� ������ ���������� ���������� ������ - ���� �� ���� ������
    if FReadTransaction.Active then
        FReadTransaction.Rollback;

    FReadTransaction.DefaultDatabase := DB;
    with FReadTransaction.TRParams do
    begin
        Add('read_committed');
        Add('rec_version');
        Add('nowait');
    end;

        // �� ������ ���������� ���������� ������ - ���� �� ���� ������
    if FWriteTransaction.Active then
        FWriteTransaction.Rollback;

    FWriteTransaction.DefaultDatabase := DB;
    with FWriteTransaction.TRParams do
    begin
        Add('read_committed');
        Add('rec_version');
        Add('nowait');
    end;

    FAddDataSet.Database := FWriteTransaction.DefaultDatabase;
    FAddDataSet.Transaction := FWriteTransaction;

    FModifyQuery.Database := FWriteTransaction.DefaultDatabase;
    FModifyQuery.Transaction := FWriteTransaction;

    FSelectDataSet.Database := FReadTransaction.DefaultDatabase;
    FSelectDataSet.Transaction := FReadTransaction;
end;

procedure TqFFormControl.FreeDBObjects;
begin
    FAddDataset.Free;
    FModifyQuery.Free;
    FSelectDataset.Free;

    FWriteTransaction.Free;
    FReadTransaction.Free;
end;

destructor TqFFormControl.Destroy;
begin
    FreeDBObjects;
    inherited Destroy;
end;

constructor TqFFormControl.Create(AOwner: TComponent);
begin
    inherited Create(AOwner);

    Width := 60;
    Height := 21;
    FControlsOwner := AOwner;

    FReadTransaction := TpFIBTransaction.Create(nil);
    FWriteTransaction := TpFIBTransaction.Create(nil);

    FAddDataSet := TpFIBDataset.Create(nil);
    FModifyQuery := TpFIBQuery.Create(nil);
    FSelectDataSet := TpFIBDataset.Create(nil);

    Visible := False;

    FCheckWhere := True;

    FCloseForm := True;

    FShowErrorDialog := True;
    FShowDebugInfoInOK := False;

    IsEmpty := True;
end;

procedure TqFFormControl.Paint;
begin
    inherited;
    with Canvas do
    begin
        Rectangle(0, 0, Width, Height);
        Font.Color := $FF0000;
        TextOut(1, 3, 'FormControl');
    end;
end;


procedure Register;
begin
    RegisterComponents('qFControls', [TqFFormControl]);
end;

end.

