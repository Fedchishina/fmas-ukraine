unit PlatUtils;

interface
uses IB_Externals, FIBDataSet, pFIBDataSet, DataModule, cxContainer, cxLabel, cxCheckBox,
 FIBQuery, pFIBQuery, pFIBStoredProc, cxCalendar, Variants,pFIBDatabase,FIBDatabase;

function SavePl(pFIBDataSet_work_dog : TpFIBDataSet; Database : PVOID; TransHandle : PVOID; kod_dog: Variant):Variant;

implementation

function SavePl(pFIBDataSet_work_dog : TpFIBDataSet; Database : PVOID; TransHandle : PVOID; kod_dog: Variant):Variant;
var
  id_dog: Variant;
  i: Integer;
  sum_today: Variant; //����� � ������
  summa: Variant; //����� ��������
  sum_sm_pl: Variant; //����� ����� ��� ���������
  sum_sm_dog: Variant; //����� ����� ��� ���������
  id_key: Variant;
  id_key_shapka: Variant; //id_key ����� ��������
  cht: Variant;
  DataSet: TpFIBDataSet;
  DataSet_work_dog: TpFIBDataSet;
  s, s1: String;
  sum_smet: Variant; //����� ����� ���� ��� ��������� ����� ��������(�������� �� ����������) id_key
  sum_pl: Variant; //����� �������� �� id_key
  sum_mistake: Variant; //����� ������ ����������
  max_sum_smet_pl: Variant; //��� ����� �������� �� id_key (���� ���������) sum_mistake;
  note_pl: String;
  str_dog_note: String;//��������� ��������
  str_ostatok: String;//all-��������� ��������
  Nlength: Integer;
  kol_vo_dog_note: Integer; //���-�� �������� ��������� ��������, �-� ����� �������� � ��������
  sum_nds: Variant; //��� �� ��������
  sum_nds_pl: Variant; //��� ��������
  str_nds: String;
  pFIBTransactionWrite:TpFIBTransaction;
  pFIBStoredProc_work_dog:TpFIBStoredProc;
  lDatabase:TpfibDataBase;

begin
//�������� ��������
  lDatabase:=TpfibDataBase.Create(nil);

  DataSet:=TpFIBDataSet.Create(Nil);
  DataSet_work_dog:=TpFIBDataSet.Create(Nil);

  pFIBTransactionWrite:=TpFIBTransaction.Create(Nil);
  pFIBStoredProc_work_dog:=TpFIBStoredProc.Create(nil);

  lDatabase.SQLDialect:=3;
  lDatabase.Handle:=Database;

  DataSet.Database := lDatabase;
  DataSet.Transaction:= pFIBTransactionWrite;
  DataSet_work_dog.Database := lDatabase;
  DataSet_work_dog.Transaction:= pFIBTransactionWrite;

  {������ � DataSetWork_dog, ����� ������, ����������� ��� ������}
  DataSet_work_dog.Active:=false;
  s1:='select dog_dt_document.*,  pub_sys_data.infinity_date, pub_sp_tip_dog.short_name'+' '+
      'from dog_dt_document, pub_sys_data, pub_sp_tip_dog'+' '+
      'where dog_dt_document.use_end=pub_sys_data.infinity_date'+' '+
      'and dog_dt_document.id_tip_dog=pub_sp_tip_dog.id_tip_dog'+' '+
      'and dog_dt_document.id_dog=dog_dt_document.kod_dog'+' '+
      'and dog_dt_document.kod_dog=:param_kod_dog';
  DataSet_work_dog.SQLs.SelectSQL.Clear;
  DataSet_work_dog.SQLs.SelectSQL.Add(s1);
  DataSet_work_dog.ParamByName('param_kod_dog').Value:=kod_dog;
  DataSet_work_dog.Active:=true;

  DataSet.Active:=false;
  s:='select dog_dt_document.id_dog from dog_dt_document where dog_dt_document.id_dog<>dog_dt_document.kod_dog and dog_dt_document.kod_dog=:param_kod_dog';
  DataSet.SQLs.SelectSQL.Clear;
  DataSet.SQLs.SelectSQL.Add(s);
  DataSet.ParamByName('param_kod_dog').Value:=kod_dog;
  DataSet.Active:=true;
  id_dog:=DataSet.FieldByName('id_dog').AsVariant;
  DataSet.Close;

  s:='select  dog_dt_smet_dog.summa, dog_dt_smet_dog.id_smeta, dog_dt_smet_dog.id_razd, dog_dt_smet_dog.id_stat from   dog_dt_smet_dog where  dog_dt_smet_dog.id_dog=:param_id_dog';
  DataSet.SQLs.SelectSQL.Clear;
  DataSet.SQLs.SelectSQL.Add(s);
  DataSet.Active:=false;
  DataSet.ParamByName('param_id_dog').Value:=id_dog;
  DataSet.Active:=true;


/////////////////////////////////////////////////////////////////////////////////////////
  summa:=DataSet_work_dog.FieldByName('summa').AsVariant;
  sum_today:=DataSet_work_dog.FieldByName('sum_today').AsVariant;

    if sum_today<0 then
  begin
    Exit;
  end;

  cht:=sum_today/summa;

  {������ ��� ��������}
  sum_nds:=DataSet_work_dog.FieldByName('nds_sum').AsVariant;

  sum_nds_pl:=cht*sum_nds;

///////////////////////////////////////////////////////////////////////////////////////////
  {������������ ������ ��������� ��������}
   //������������ ���
   if sum_nds_pl=0 then
   begin
     str_nds:='��� ���';
   end
   else
   begin
     str_nds:='� �.�. ���'+' '+VarToStr(sum_nds_pl);
   end;

   note_pl:='��'+' '+DataSet_work_dog.FieldByName('dog_note').AsString+' '+
             '��������'+' '+DataSet_work_dog.FieldByName('short_name').AsString+' '+
             '�'+' '+DataSet_work_dog.FieldByName('n_dog').AsString+' '+
             '��'+' '+DataSet_work_dog.FieldByName('d_dog').AsString+' '+
             str_nds;
   Nlength:=Length(note_pl);

   str_ostatok:='��'+' '+' '+
             '��������'+' '+DataSet_work_dog.FieldByName('short_name').AsString+' '+
             '�'+' '+DataSet_work_dog.FieldByName('n_dog').AsString+' '+
             '��'+' '+DataSet_work_dog.FieldByName('d_dog').AsString+' '+
             str_nds;

   kol_vo_dog_note:=160-Length(str_ostatok);

   str_dog_note:=DataSet_work_dog.FieldByName('dog_note').AsString;
   If Nlength>160 then
     begin
       Delete(str_dog_note,kol_vo_dog_note,NLength-160);
       note_pl:='��'+' '+str_dog_note+' '+
             '��������'+' '+DataSet_work_dog.FieldByName('short_name').AsString+' '+
             '�'+' '+DataSet_work_dog.FieldByName('n_dog').AsString+' '+
             '��'+' '+DataSet_work_dog.FieldByName('d_dog').AsString+' '+
             str_nds;
     end;

///////////////////////////////////////////////////////////////////////////////////////////

{���������� ����� ��������}
//  pFIBTransactionWrite.DefaultDatabase.Handle:=Database;
  pFIBTransactionWrite.StartTransaction;
  //           Database nil ??????????????????????????????????????
  pFIBStoredProc_work_dog.Database:=lDatabase;
  pFIBStoredProc_work_dog.Transaction:=pFIBTransactionWrite;
  pFIBStoredProc_work_dog.StoredProcName:='DOG_DT_PL_DOC_INSERT';
  pFIBStoredProc_work_dog.Prepare;
  pFIBStoredProc_work_dog.ParamByName('KOD_DOG').Value:=kod_dog;
  pFIBStoredProc_work_dog.ParamByName('NOTE').Value:=note_pl;
  pFIBStoredProc_work_dog.ParamByName('NDS').Value:=sum_nds_pl;
  try
    pFIBStoredProc_work_dog.ExecProc;
  except
    begin
      pFIBTransactionWrite.Rollback;
      Exit;
    end;
  end;
    id_key:=pFIBStoredProc_work_dog.FieldByName('V_ID_KEY').AsVariant;
    id_key_shapka:=pFIBStoredProc_work_dog.FieldByName('V_ID_KEY_SHAPKA').AsVariant;
/////////////////////////////////////////////////////////////////////////////
{���������� ���� ��� ���������}
DataSet.FetchAll;
DataSet.First;
for i:=0 to DataSet.RecordCount-1 do
  begin
    sum_sm_dog:=DataSet.FieldByName('summa').AsVariant;
    sum_sm_pl:=cht*sum_sm_dog;
    //���������� � ������� dog_dt_pl_smet
    pFIBStoredProc_work_dog.StoredProcName:='DOG_DT_PL_SMET_INSERT';
    pFIBStoredProc_work_dog.Prepare;
    pFIBStoredProc_work_dog.ParamByName('D_ID_KEY').Value:=id_key;
    pFIBStoredProc_work_dog.ParamByName('D_ID_KEY_SHAPKA').Value:=id_key_shapka;
    pFIBStoredProc_work_dog.ParamByName('KOD_DOG').Value:=kod_dog;
    pFIBStoredProc_work_dog.ParamByName('D_SUMMA').Value:=sum_sm_pl;
    pFIBStoredProc_work_dog.ParamByName('D_ID_SMETA').Value:=DataSet.FieldByName('id_smeta').AsVariant;
    pFIBStoredProc_work_dog.ParamByName('D_ID_RAZD').Value:=DataSet.FieldByName('id_razd').AsVariant;
    pFIBStoredProc_work_dog.ParamByName('D_ID_STAT').Value:=DataSet.FieldByName('id_stat').AsVariant;
    try
      pFIBStoredProc_work_dog.ExecProc;
    except
      begin
        pFIBTransactionWrite.Rollback;
        Exit;
      end;
    end;
    //����� ����������
    DataSet.Next;
    end;

    pFIBStoredProc_work_dog.StoredProcName:='DOG_DT_PL_SUM_MISTAKE';
    pFIBStoredProc_work_dog.Prepare;
    pFIBStoredProc_work_dog.ParamByName('D_ID_KEY').Value:=id_key;
    pFIBStoredProc_work_dog.ParamByName('D_ID_KEY_SHAPKA').Value:=id_key_shapka;
    try
      pFIBStoredProc_work_dog.ExecProc;
    except
      begin
        pFIBTransactionWrite.Rollback;
        Exit;
      end;
    end;
   // �������� �� ���� dog_dt_smet_dog ����� ���� ��������
    pFIBStoredProc_work_dog.StoredProcName:='DOG_PL_UPDATE_SMET_DOG';
    pFIBStoredProc_work_dog.Prepare;
    pFIBStoredProc_work_dog.ParamByName('ID_KEY').Value:=id_key;
    try
      pFIBStoredProc_work_dog.ExecProc;
    except
      begin
        pFIBTransactionWrite.Rollback;
        Exit;
      end;
    end;


    pFIBTransactionWrite.Commit;
/////////////////////////////////////////////////////////////////////////////

end;


end.
