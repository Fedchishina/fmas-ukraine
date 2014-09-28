unit uo_sp_type_potok_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxContainer,
  ActnList, ImgList,  FIBDataSet, pFIBDataSet, FIBQuery,
  pFIBQuery, pFIBStoredProc, FIBDatabase, pFIBDatabase, dxStatusBar,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  Buttons, ExtCtrls, AArray, ibase, ib_externals, frxExportPDF,
  frxExportImage, frxExportXML, frxExportHTML, frxExportXLS, frxExportTXT,
  frxClass, frxExportRTF, frxDBSet;

type
  Tfmuo_sp_type_potok_main = class(TForm)
    cxGrid_uo__sp_type: TcxGrid;
    cxGrid_uo__sp_typeDBTableView1: TcxGridDBTableView;
    cxGrid_uo__sp_typeLevel1: TcxGridLevel;
    dxStatusBarSP: TdxStatusBar;
    StyleRepository_sp_type: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleHeader: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyleInactive: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyleSkyBlue: TcxStyle;
    cxStyleBackGround_Content: TcxStyle;
    cxStyleSelection: TcxStyle;
    DataBase_uo__sp_type: TpFIBDatabase;
    TransactionRead_uo__sp_type: TpFIBTransaction;
    TransactionWrite_uo_sp_type: TpFIBTransaction;
    StoredProc_uo_sp_type: TpFIBStoredProc;
    DataSet_uo__sp_type: TpFIBDataSet;
    DataSource_uo__sp_type: TDataSource;
    ImageList_sp_type: TImageList;
    cxEditStyleController_uo__sp_type: TcxEditStyleController;
    cxGrid_uo__sp_typeDBTableView1NAME: TcxGridDBColumn;
    cxGrid_uo__sp_typeDBTableView1SHORT_NAME: TcxGridDBColumn;
    cxGrid_uo__sp_typeDBTableView1KOD: TcxGridDBColumn;
    cxGrid_uo__sp_typeDBTableView1NPP: TcxGridDBColumn;
    ActionList_uo__sp_type: TActionList;
    ActionADD: TAction;
    ActionChange: TAction;
    ActionDEL: TAction;
    ActionView: TAction;
    ActionObnov: TAction;
    ActionVibrat: TAction;
    ActionOtmena: TAction;
    ActionPrint: TAction;
    DataSet_prov_kod: TpFIBDataSet;
    DataSource_prov_kod: TDataSource;
    DataSet_prov_kodKOD: TFIBIntegerField;
    DataSet_prov_npp: TpFIBDataSet;
    DataSource_prov_npp: TDataSource;
    DataSet_prov_nppNPP: TFIBIntegerField;
    frxDBDataset1: TfrxDBDataset;
    frxRTFExport1: TfrxRTFExport;
    frxTXTExport1: TfrxTXTExport;
    frxXLSExport1: TfrxXLSExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXMLExport1: TfrxXMLExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxPDFExport1: TfrxPDFExport;
    dxBarManager_sp_type: TdxBarManager;
    dxBarLargeButtonAdd: TdxBarLargeButton;
    dxBarLargeButtonChange: TdxBarLargeButton;
    dxBarLargeButtonVibrat: TdxBarLargeButton;
    dxBarLargeButtonOtmena: TdxBarLargeButton;
    dxBarLargeButtonObnov: TdxBarLargeButton;
    dxBarLargeButtonView: TdxBarLargeButton;
    dxBarLargeButtonDel: TdxBarLargeButton;
    dxBarLargeButtonPrint: TdxBarLargeButton;
    frxReport1: TfrxReport;
    DataSet_uo__sp_typeID_SP_TYPE_POTOK: TFIBBCDField;
    DataSet_uo__sp_typeNAME: TFIBStringField;
    DataSet_uo__sp_typeSHORT_NAME: TFIBStringField;
    DataSet_uo__sp_typeKOD: TFIBIntegerField;
    DataSet_uo__sp_typeNPP: TFIBIntegerField;
    procedure ActionADDExecute(Sender: TObject);
    procedure ActionObnovExecute(Sender: TObject);
    procedure ActionChangeExecute(Sender: TObject);
    procedure ActionDELExecute(Sender: TObject);
    procedure ActionViewExecute(Sender: TObject);
    procedure ActionOtmenaExecute(Sender: TObject);
    procedure ActionVibratExecute(Sender: TObject);
    procedure cxGrid_uo__sp_typeDBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LoadCaption;
    procedure ActionPrintExecute(Sender: TObject);
  private
    { Private declarations }
    DBHANDLE                :TISC_DB_HANDLE;
    ResultArray             :TAArray;

    kod_get: Integer;
    good: Integer;
    npp_get: Integer;
    goodn: Integer;
    PROCEDURE proverkakod(kod: integer);
    PROCEDURE proverkanpp(npp: integer);
  public
    { Public declarations }
    temp_kod: Integer;
    temp_npp: Integer;
    temp_name: String;
    temp_short_name: String;
    temp_SP_TYPE_DISC_LESSON: Int64;
    type_kod: String;
    type_npp: String;
    temp_type_npp: Integer;
    cap : Integer;

    ID_SP_TYPE_CIKL_PIDG : Int64;
    Name_SP_TYPE_DISC_LESSON: String;
    Short_Name_SP_TYPE_DISC_LESSON: String;
    Kod_SP_TYPE_DISC_LESSON: Integer;
    Npp_SP_TYPE_DISC_LESSON: Integer;
    constructor Create(aOwner: TComponent; aParam : TAArray); reintroduce; overload;

  end;
procedure ShowAllUoBpl (aOwner: TComponent; aParam : TAArray); stdcall;
  exports   ShowAllUoBpl;

implementation

uses uo_sp_type_potok_add;

{$R *.dfm}

procedure ShowAllUoBpl(aOwner: TComponent; aParam : TAArray);
var
   T : Tfmuo_sp_type_potok_main;
begin
   T := Tfmuo_sp_type_potok_main.Create(aOwner, aParam);

   T.FormStyle := aParam['Input']['aFrmStyle'].AsVariant;
   case T.FormStyle of
      fsNormal: begin
                   T.ShowModal;
                   T.ActionVibrat.Enabled:=true;
                   T.dxBarLargeButtonVibrat.Visible := ivAlways;
                end;
      fsMDIChild: begin
                   T.ActionVibrat.Enabled:=false;
                   T.dxBarLargeButtonVibrat.Visible := ivNever;
                end;
      else
         T.Free;
   end;
end;

constructor Tfmuo_sp_type_potok_main.Create(aOwner: TComponent;
  aParam: TAArray);
begin
    if Assigned(PVoid(aParam['Input']['aDBHANDLE'])) then
    begin
        DBHANDLE      := PVoid(aParam['Input']['aDBHANDLE'].asInteger);

        inherited Create(aOwner);
        ResultArray   := aParam;
        DataBase_uo__sp_type.Close;
        DataBase_uo__sp_type.Handle := DBHANDLE;
        TransactionRead_uo__sp_type.DefaultDatabase := DataBase_uo__sp_type;

        DataSet_uo__sp_type.Database := DataBase_uo__sp_type;
        DataSet_uo__sp_type.Transaction := TransactionRead_uo__sp_type;

        TransactionRead_uo__sp_type.StartTransaction;
        LoadCaption;
        DataSet_uo__sp_type.Close;
        DataSet_uo__sp_type.SQLs.SelectSQL.Text := 'SELECT ID_SP_TYPE_POTOK, NAME, SHORT_NAME, KOD, NPP FROM UO_SP_TYPE_POTOK';
        DataSet_uo__sp_type.Open;
    end
    else ShowMessage('������ Handl`a ����');
end;

procedure Tfmuo_sp_type_potok_main.proverkakod(kod: integer);
begin
    DataSet_prov_kod.Active                     := false;
    DataSet_prov_kod.ParamByName('KOD').Value   := kod;
    DataSet_prov_kod.Active                     := true;
    if DataSet_prov_kod.IsEmpty then
    begin
        temp_kod    := kod;
        good        := 1;
    end
    else
    begin
        kod_get                                   := 1;
        DataSet_prov_kod.Active                   := false;
        DataSet_prov_kod.ParamByName('KOD').Value := kod_get;
        DataSet_prov_kod.Active                   := true;
    while not(DataSet_prov_kod.IsEmpty) do
    begin
        kod_get                                   := kod_get + 1;
        DataSet_prov_kod.Active                   := false;
        DataSet_prov_kod.ParamByName('KOD').Value := kod_get;
        DataSet_prov_kod.Active                   := true;
    end;
    //ShowMessage('����� ��� ��� ���� ��������� ���= '+IntToStr(kod_get));
    temp_kod := kod_get;
    good     := 0;
end;
end;

PROCEDURE Tfmuo_sp_type_potok_main.proverkanpp(npp: integer);
begin
    DataSet_prov_npp.Active                   := false;
    DataSet_prov_npp.ParamByName('NPP').Value := npp;
    DataSet_prov_npp.Active                   := true;
    if DataSet_prov_npp.IsEmpty then
    begin
        temp_npp := npp;
        goodn    := 1;
    end
    else
    begin
        npp_get                                     := 1;
        DataSet_prov_npp.Active                     := false;
        DataSet_prov_npp.ParamByName('NPP').Value   := npp_get;
        DataSet_prov_npp.Active                     := true;
        while not(DataSet_prov_npp.IsEmpty) do
        begin
            npp_get                                     := npp_get+1;
            DataSet_prov_npp.Active                     := false;
            DataSet_prov_npp.ParamByName('NPP').Value   := npp_get;
            DataSet_prov_npp.Active                     := true;
        end;
        //ShowMessage('����� ����� ��� ���� ��������� �����= '+IntToStr(npp_get));
        temp_npp                                        := npp_get;
        goodn                                           := 0;
    end;
end;

procedure Tfmuo_sp_type_potok_main.ActionADDExecute(Sender: TObject);
var
   T : Tfmuo_sp_type_potok_add;
   TryAgain : boolean;
begin
   cap      := 0;
   TryAgain := false;
  { DataSPAdd :=TAArray.Create;
   DataSPAdd['FIO'].AsString                      :='';
   DataSPAdd['SHORT_NAME_DOLGNOST_PK'].AsString   :='';
   DataSPAdd['PRIM'].AsString                     :='';  }

  { if DataSetPrKSostPK.FieldValues[ID_NAME]<>Null
      then DataSPAdd['ID'].AsInt64:=StrToInt64(DataSetPrKSostPK.FieldValues[ID_NAME]);
    }
   T := Tfmuo_sp_type_potok_add.Create(self);
   proverkakod(1);
   proverkanpp(1);
   t.cxSpinEditKod.Value:=temp_kod;
   t.cxSpinEditNPP.Value:=temp_npp;
   if(HelpContext=1)then
   begin
       t.cxTextEditName.Text        := temp_name;
       t.cxTextEditShortName.Text   := temp_short_name;
       t.cxSpinEditKod.Value        := temp_kod;
       t.cxSpinEditNPP.Value        := temp_npp;
   end;

   if T.ShowModal=MrOk then
   begin
       proverkakod(t.cxSpinEditKod.Value);
       proverkanpp(t.cxSpinEditNPP.Value);
       if ((good=1)and(goodn=1))then
       begin
       StoredProc_uo_sp_type.Transaction.StartTransaction;
       StoredProc_uo_sp_type.StoredProcName := 'UO_SP_TYPE_POTOK_ADD';
       StoredProc_uo_sp_type.Prepare;
       StoredProc_uo_sp_type.ParamByName('NAME').AsString         := T.cxTextEditName.Text;
       StoredProc_uo_sp_type.ParamByName('SHORT_NAME').AsString   := T.cxTextEditShortName.Text;
       StoredProc_uo_sp_type.ParamByName('KOD').Value             := T.cxSpinEditKod.Value;
       StoredProc_uo_sp_type.ParamByName('NPP').Value             := T.cxSpinEditNPP.Value;
       temp_type_npp                                              := T.cxSpinEditNPP.Value;
       try
           StoredProc_uo_sp_type.ExecProc;
           StoredProc_uo_sp_type.Transaction.commit;
       except on e: Exception do
          begin
             {MessageBox(Handle,Pchar(nMsgErrorTransaction[IndLangSP]+chr(13)+
                        nMsgTryAgain[IndLangSP]+nMsgOr[IndLangSP]+nMsgToAdmin[IndLangSP]+chr(13)+
                        e.Message),Pchar(nMsgBoxTitle[IndLangSP]),MB_OK or MB_ICONWARNING);
             }
             ShowMessage('��������� ������ ���!'+E.Message);
             StoredProc_uo_sp_type.Transaction.Rollback;
             TryAgain := true;
          end;
       end;
       end
       else
       begin
            MessageDlg('����� ��� ��� ����� ��� �������.'#13'ѳ����� ��� ��������� �������!', mtInformation, mbOKCancel,0);
            TryAgain    := true;
            HelpContext := 1;
            //temp_kod:=t.cxSpinEditKod.Value;
            //temp_npp:=t.cxSpinEditNPP.Value;
            temp_name   := T.cxTextEditName.Text;
            temp_short_name := T.cxTextEditShortName.Text;
            temp_SP_TYPE_DISC_LESSON := id_SP_TYPE_CIKL_PIDG;
       end;
          //DataSPAdd['ID'].AsInt64:=StoredProcPrKSostPK.FieldByName('ID_OUT').AsInt64;

    end;

   T.Free;
   //ActionObnovExecute(sender);
   if TryAgain = true
       then ActionADDExecute(sender)
   else
       HelpContext := 0;

    DataSet_uo__sp_type.Closeopen(false);
    DataSet_uo__sp_type.Locate('NPP',temp_type_npp,[]);
end;

procedure Tfmuo_sp_type_potok_main.ActionObnovExecute(Sender: TObject);
begin
    temp_SP_TYPE_DISC_LESSON   := DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsInt64;
    DataSet_uo__sp_type.Active := false;
    DataSet_uo__sp_type.Active := true;
    DataSet_uo__sp_type.Locate('ID_SP_TYPE_POTOK', temp_SP_TYPE_DISC_LESSON, []);
end;

procedure Tfmuo_sp_type_potok_main.ActionChangeExecute(Sender: TObject);
var
   T : Tfmuo_sp_type_potok_add;
   TryAgain : boolean;
begin
    cap                      := 1;
    temp_SP_TYPE_DISC_LESSON := DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsInt64;

    if DataSet_uo__sp_type.IsEmpty then exit;
    good  := 1;
    goodn := 1;
    TryAgain:=false;

    T := Tfmuo_sp_type_potok_add.Create(self);
    if(HelpContext=1)then
    begin
        t.cxTextEditName.Text        := temp_name;
        t.cxTextEditShortName.Text   := temp_short_name;
        t.cxSpinEditKod.Value        := temp_kod;
        t.cxSpinEditNPP.Value        := temp_npp;
    end
    ELSE
    begin
        T.cxTextEditName.Text      := DataSet_uo__sp_typeNAME.Value;
        T.cxTextEditShortName.Text := DataSet_uo__sp_typeSHORT_NAME.Value;
        T.cxSpinEditKod.Value      := DataSet_uo__sp_typeKOD.Value;
        T.cxSpinEditNPP.Value      := DataSet_uo__sp_typeNPP.Value;
        type_kod                   := DataSet_uo__sp_typeKOD.AsString;
        type_npp                   := DataSet_uo__sp_typeNPP.AsString;
    end;

       if T.ShowModal=MrOk then
       begin
          if(type_kod<>inttostr(t.cxSpinEditKod.Value))then
               proverkakod(t.cxSpinEditKod.Value);
          if(type_npp<>inttostr(t.cxSpinEditNPP.Value))then
                proverkanpp(t.cxSpinEditNPP.Value);

       if ((good=1)and(goodn=1))then
       begin
           StoredProc_uo_sp_type.Transaction.StartTransaction;
           StoredProc_uo_sp_type.StoredProcName := 'UO_SP_TYPE_POTOK_CHANGE';
           StoredProc_uo_sp_type.Prepare;
           StoredProc_uo_sp_type.ParamByName('ID').AsInt64                      := DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsInt64;
           StoredProc_uo_sp_type.ParamByName('NAME').AsString                   := T.cxTextEditName.Text;
           StoredProc_uo_sp_type.ParamByName('SHORT_NAME').AsString             := T.cxTextEditShortName.Text;
           StoredProc_uo_sp_type.ParamByName('KOD').Value                       := T.cxSpinEditKod.Value;
           StoredProc_uo_sp_type.ParamByName('NPP').Value                       := T.cxSpinEditNPP.Value;
           try
               StoredProc_uo_sp_type.ExecProc;
               StoredProc_uo_sp_type.Transaction.Commit;
           except on e: Exception do
              begin
                 {MessageBox(Handle,Pchar(nMsgErrorTransaction[IndLangSP]+chr(13)+
                        nMsgTryAgain[IndLangSP]+nMsgOr[IndLangSP]+nMsgToAdmin[IndLangSP]+chr(13)+
                        e.Message),Pchar(nMsgBoxTitle[IndLangSP]),MB_OK or MB_ICONWARNING);
                 }
                 ShowMessage('��������� �������� ���!'+E.Message);
                 StoredProc_uo_sp_type.Transaction.Rollback;
                 TryAgain := true;
              end;
           end;
        end
       else
       begin
            MessageDlg('����� ��� ��� ����� ��� �������.'#13'ѳ����� ��� ��������� �������!',mtInformation,mbOKCancel,0);
            TryAgain    := true;
            HelpContext := 1;
            //temp_kod:=t.cxSpinEditKod.Value;
            //
            temp_npp    := T.cxSpinEditNPP.Value;
            temp_name   := T.cxTextEditName.Text;
            temp_short_name := T.cxTextEditShortName.Text;
            temp_SP_TYPE_DISC_LESSON := ID_SP_TYPE_CIKL_PIDG;
       end;
        end;

       T.Free;
       //ActionObnovExecute(sender);
    if TryAgain=true
        then ActionChangeExecute(sender)
        else HelpContext:=0;
    DataSet_uo__sp_type.CloseOpen(false);
    DataSet_uo__sp_type.Locate('ID_SP_TYPE_POTOK', temp_SP_TYPE_DISC_LESSON, []);
end;

procedure Tfmuo_sp_type_potok_main.ActionDELExecute(Sender: TObject);
begin
   if DataSet_uo__sp_type.IsEmpty then exit;
   if DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsString<>Null then
   begin
       if MessageDlg('�� ����� ������� �������� ��� �����', mtInformation, mbOKCancel, 0)=mrOK then
       begin
            StoredProc_uo_sp_type.Transaction.StartTransaction;
            StoredProc_uo_sp_type.StoredProcName := 'UO_SP_TYPE_POTOK_DEL';
            StoredProc_uo_sp_type.Prepare;
            StoredProc_uo_sp_type.ParamByName('ID').AsInt64 := DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsInt64;
            try
                StoredProc_uo_sp_type.ExecProc;
                StoredProc_uo_sp_type.Transaction.Commit;
                cxGrid_uo__sp_typeDBTableView1.NavigatorButtons.Prior.Click;
            except on e :Exception do
               begin
                 {MessageBox(Handle,Pchar(nMsgErrorTransaction[IndLangSP]+chr(13)+
                        nMsgTryAgain[IndLangSP]+nMsgOr[IndLangSP]+nMsgToAdmin[IndLangSP]+chr(13)+
                        e.Message),Pchar(nMsgBoxTitle[IndLangSP]),MB_OK or MB_ICONWARNING);
                 }
                 ShowMessage('��������� �������� ���!'+E.Message);
                 StoredProc_uo_sp_type.Transaction.Rollback;
               end;
            end;
      end;
         ActionObnovExecute(sender);
   end;
end;

procedure Tfmuo_sp_type_potok_main.ActionViewExecute(Sender: TObject);
var
    T : Tfmuo_sp_type_potok_add;
begin
    cap := 2;
    if DataSet_uo__sp_type.IsEmpty then exit;
    if DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsString<>Null then
    begin
        T                           := Tfmuo_sp_type_potok_add.Create(self);
        T.cxTextEditName.Text       := DataSet_uo__sp_typeNAME.Value;
        T.cxTextEditShortName.Text  := DataSet_uo__sp_typeSHORT_NAME.Value;
        T.cxSpinEditKod.Value       := DataSet_uo__sp_typeKOD.Value;
        T.cxSpinEditNPP.Value       := DataSet_uo__sp_typeNPP.Value;

        T.cxTextEditName.Properties.ReadOnly        := true;
        T.cxTextEditShortName.Properties.ReadOnly   := true;
        T.cxSpinEditKod.Properties.ReadOnly         := true;
        T.cxSpinEditNPP.Properties.ReadOnly         := true;
        T.cxButtonOK.Visible                        := false;
        T.cxButtonCansel.Visible                    := false;
        T.ShowModal;
        T.Free;
    end;
end;

procedure Tfmuo_sp_type_potok_main.ActionOtmenaExecute(Sender: TObject);
begin
    close;
end;

procedure Tfmuo_sp_type_potok_main.ActionVibratExecute(Sender: TObject);
begin
    if not DataSet_uo__sp_type.IsEmpty then
    if DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsString<>NULL then
    begin
        if DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsString='-1' then exit;
        if FormStyle=fsNormal then
        begin
//            FillArrayFromDataSet(ResultArray['OutPut'], DataSet_uo__sp_type);
            ResultArray['OutPut']['ID_SP_TYPE_POTOK'].AsInt64      := DataSet_uo__sp_typeID_SP_TYPE_POTOK.AsInt64;
            ResultArray['OutPut']['NAME'].AsString                 := DataSet_uo__sp_typeNAME.AsString;
            ResultArray['OutPut']['SHORT_NAME'].AsString           := DataSet_uo__sp_typeSHORT_NAME.AsString;
            ResultArray['OutPut']['KOD'].AsInteger                 := DataSet_uo__sp_typeKOD.AsInteger;
            ResultArray['OutPut']['NPP'].AsInteger                 := DataSet_uo__sp_typeNPP.AsInteger;
            close;
        end
        else
            ModalResult:=mrOk;
    end;
end;

procedure Tfmuo_sp_type_potok_main.cxGrid_uo__sp_typeDBTableView1DblClick(
  Sender: TObject);
begin
    if ActionVibrat.Visible=true then
        ActionVibratExecute(SENDER);
end;

procedure Tfmuo_sp_type_potok_main.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if FormStyle = fsMDIChild then
    begin
        ResultArray.Free;
        ResultArray := Nil;
        Action      := caFree;
    end;
end;

procedure Tfmuo_sp_type_potok_main.LoadCaption;
begin
    Caption                 := '������� ���� ������� ������';
    ActionADD.Caption       := '������';
    ActionChange.Caption    := '������';
    ActionDEL.Caption       := '��������';
    ActionView.Caption      := '��������';
    ActionObnov.Caption     := '�������';
    ActionVibrat.Caption    := '�������';
    ActionOtmena.Caption    := '³����';

    ActionADD.Hint          := '������';
    ActionChange.Hint       := '������';
    ActionDEL.Hint          := '��������';
    ActionView.Hint         := '��������';
    ActionObnov.Hint        := '�������';
    ActionVibrat.Hint       := '�������';
    ActionOtmena.Hint       := '³����';

    ActionPrint.Caption     := '���������';
    ActionPrint.Hint        := '���������';

    cxGrid_uo__sp_typeDBTableView1NAME.Caption       := '�����';
    cxGrid_uo__sp_typeDBTableView1SHORT_NAME.Caption := '������� �����';
    cxGrid_uo__sp_typeDBTableView1KOD.Caption        := '���';
    cxGrid_uo__sp_typeDBTableView1NPP.Caption        := '�����';
    dxStatusBarSP.Panels[0].Text                     := '������ - Ins';
    dxStatusBarSP.Panels[1].Text                     := '������ - F2';
    dxStatusBarSP.Panels[2].Text                     := '�������� - Del';
    dxStatusBarSP.Panels[3].Text                     := '������� - F5';
    dxStatusBarSP.Panels[4].Text                     := '�������� - F3';
    dxStatusBarSP.Panels[5].Text                     := '������� - Enter';
end;


procedure Tfmuo_sp_type_potok_main.ActionPrintExecute(Sender: TObject);
var
    Memo1, Memo6, Memo7, Memo9, Memo8: TfrxMemoView;
begin
    if DataSet_uo__sp_type.IsEmpty then exit;
    Memo1       := frxReport1.FindObject('Memo1') as TfrxMemoView;
    Memo6       := frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo7       := frxReport1.FindObject('Memo7') as TfrxMemoView;
    Memo9       := frxReport1.FindObject('Memo9') as TfrxMemoView;
    Memo8       := frxReport1.FindObject('Memo8') as TfrxMemoView;
    Memo1.Text  := '������� ���� ������� ������';
    Memo6.Text  := '�����';
    Memo7.Text  := '������� �����';
    Memo8.Text  := '�����';
    Memo9.Text  := '���';
    frxReport1.ShowReport;
end;

end.
