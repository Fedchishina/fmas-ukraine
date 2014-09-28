object MainDM: TMainDM
  OldCreateOrder = False
  Left = 313
  Top = 203
  Height = 443
  Width = 261
  object Database: TpFIBDatabase
    DBName = 'localhost:UniverActual'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    DefaultTransaction = ReadTransaction
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 40
    Top = 16
  end
  object ReadTransaction: TpFIBTransaction
    DefaultDatabase = Database
    TimeoutAction = TARollback
    Left = 168
    Top = 16
  end
  object ReportDataSet: TpFIBDataSet
    Database = Database
    Transaction = ReadTransaction
    SelectSQL.Strings = (
      'SELECT'
      #9'ASUP_REPORT_BY_NATIONALITY.DEPARTMENT_NAME,'
      #9'ASUP_REPORT_BY_NATIONALITY.FIO,'
      #9'ASUP_REPORT_BY_NATIONALITY.POST_NAME,'
      #9'ASUP_REPORT_BY_NATIONALITY.BIRTH_DATE,'
      #9'ASUP_REPORT_BY_NATIONALITY.DEPARTMENT_NAME_UPPER,'
      #9'ASUP_REPORT_BY_NATIONALITY.HOME_ADR,'
      #9'ASUP_REPORT_BY_NATIONALITY.HOME_PHONE'
      'FROM ASUP_REPORT_BY_NATIONALITY(?ID_NATIONALITY,'
      '?REPORT_DATE)')
    Left = 40
    Top = 80
    poSQLINT64ToBCD = True
    object ReportDataSetDEPARTMENT_NAME: TFIBStringField
      FieldName = 'DEPARTMENT_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object ReportDataSetFIO: TFIBStringField
      FieldName = 'FIO'
      Size = 255
      EmptyStrToNull = True
    end
    object ReportDataSetPOST_NAME: TFIBStringField
      FieldName = 'POST_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object ReportDataSetBIRTH_DATE: TFIBDateField
      FieldName = 'BIRTH_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object ReportDataSetDEPARTMENT_NAME_UPPER: TFIBStringField
      FieldName = 'DEPARTMENT_NAME_UPPER'
      Size = 255
      EmptyStrToNull = True
    end
    object ReportDataSetHOME_ADR: TFIBStringField
      FieldName = 'HOME_ADR'
      Size = 255
      EmptyStrToNull = True
    end
    object ReportDataSetHOME_PHONE: TFIBStringField
      FieldName = 'HOME_PHONE'
      Size = 25
      EmptyStrToNull = True
    end
  end
  object ReportDataSource: TDataSource
    DataSet = ReportDataSet
    Left = 168
    Top = 72
  end
  object NationalityDataSet: TpFIBDataSet
    Database = Database
    Transaction = ReadTransaction
    SelectSQL.Strings = (
      'SELECT'
      #9'ASUP_SP_NATIONALITY.ID_NATIONALITY,'
      #9'ASUP_SP_NATIONALITY.NAME_NATIONALITY'
      'FROM ASUP_SP_NATIONALITY')
    Left = 40
    Top = 136
    poSQLINT64ToBCD = True
    object NationalityDataSetID_NATIONALITY: TFIBIntegerField
      FieldName = 'ID_NATIONALITY'
    end
    object NationalityDataSetNAME_NATIONALITY: TFIBStringField
      FieldName = 'NAME_NATIONALITY'
      Size = 255
      EmptyStrToNull = True
    end
  end
  object NationalityDataSource: TDataSource
    DataSet = NationalityDataSet
    Left = 168
    Top = 136
  end
  object ConstsQuery: TpFIBDataSet
    Database = Database
    Transaction = ReadTransaction
    SelectSQL.Strings = (
      'SELECT'
      #9'INI_ASUP_CONSTS.USE_END,'
      #9'INI_ASUP_CONSTS.DATE_END,'
      #9'INI_ASUP_CONSTS.FIRM_NAME,'
      #9'INI_ASUP_CONSTS.DATE_BEG,'
      #9'INI_ASUP_CONSTS.FIRM_EDRPOU,'
      #9'INI_ASUP_CONSTS.FIRM_UKUD,'
      #9'INI_ASUP_CONSTS.PASS_AGE,'
      #9'INI_ASUP_CONSTS.EDUC_AGE,'
      #9'INI_ASUP_CONSTS.CURRENT_DEPARTMENT,'
      #9'INI_ASUP_CONSTS.CURRENT_BUHG_DEPARTMENT,'
      #9'INI_ASUP_CONSTS.LAST_BEG_LOG_DATE,'
      #9'INI_ASUP_CONSTS.LAST_END_LOG_DATE,'
      #9'INI_ASUP_CONSTS.MAN_PENS_AGE,'
      #9'INI_ASUP_CONSTS.WOMAN_PENS_AGE,'
      #9'INI_ASUP_CONSTS.DEFAULT_NIGHT_BEG,'
      #9'INI_ASUP_CONSTS.DEFAULT_NIGHT_END,'
      #9'INI_ASUP_CONSTS.SHIFT_BEGIN,'
      #9'INI_ASUP_CONSTS.BONUS1,'
      #9'INI_ASUP_CONSTS.BONUS2,'
      #9'INI_ASUP_CONSTS.BONUS1_ABBR,'
      #9'INI_ASUP_CONSTS.BONUS2_ABBR,'
      #9'INI_ASUP_CONSTS.CITY,'
      #9'INI_ASUP_CONSTS.CONT_STAJ_MONTH,'
      #9'INI_ASUP_CONSTS.LOCAL_DEPARTMENT,'
      #9'INI_ASUP_CONSTS.ORDERS_HEADER,'
      #9'INI_ASUP_CONSTS.DB_VERSION,'
      #9'INI_ASUP_CONSTS.DEFAULT_PAY_FORM,'
      #9'INI_ASUP_CONSTS.DEFAULT_WORK_COND,'
      #9'INI_ASUP_CONSTS.DEFAULT_WORK_MODE,'
      #9'INI_ASUP_CONSTS.RAISE_TYPE_FOR_OKLAD,'
      #9'INI_ASUP_CONSTS.BONUS_CALC,'
      #9'INI_ASUP_CONSTS.NEW_ORDERS,'
      #9'INI_ASUP_CONSTS.USE_MOVING_SMET,'
      #9'INI_ASUP_CONSTS.VIZA_REQUIRED_IN_ORDERS,'
      #9'INI_ASUP_CONSTS.ID_VIDOPL,'
      #9'INI_ASUP_CONSTS.DEFAULT_SMETA,'
      #9'INI_ASUP_CONSTS.APPRENTICE_MOVING_TYPE,'
      #9'INI_ASUP_CONSTS.HIDDEN_ID_POST,'
      #9'INI_ASUP_CONSTS.ID_DOG_FOR_COMAND,'
      #9'INI_ASUP_CONSTS.TABLE_WORK_DAYS_SMENA,'
      #9'INI_ASUP_CONSTS.GLOBAL_ROOT,'
      #9'INI_ASUP_CONSTS.ALLOW_EMPTY_SMETS_IN_ORDERS'
      'FROM INI_ASUP_CONSTS')
    Left = 32
    Top = 192
    poSQLINT64ToBCD = True
    object ConstsQueryUSE_END: TFIBDateTimeField
      FieldName = 'USE_END'
    end
    object ConstsQueryDATE_END: TFIBDateField
      FieldName = 'DATE_END'
    end
    object ConstsQueryFIRM_NAME: TFIBStringField
      FieldName = 'FIRM_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object ConstsQueryDATE_BEG: TFIBDateField
      FieldName = 'DATE_BEG'
    end
    object ConstsQueryFIRM_EDRPOU: TFIBStringField
      FieldName = 'FIRM_EDRPOU'
      Size = 12
      EmptyStrToNull = True
    end
    object ConstsQueryFIRM_UKUD: TFIBStringField
      FieldName = 'FIRM_UKUD'
      Size = 12
      EmptyStrToNull = True
    end
    object ConstsQueryPASS_AGE: TFIBIntegerField
      FieldName = 'PASS_AGE'
    end
    object ConstsQueryEDUC_AGE: TFIBIntegerField
      FieldName = 'EDUC_AGE'
    end
    object ConstsQueryCURRENT_DEPARTMENT: TFIBIntegerField
      FieldName = 'CURRENT_DEPARTMENT'
    end
    object ConstsQueryCURRENT_BUHG_DEPARTMENT: TFIBIntegerField
      FieldName = 'CURRENT_BUHG_DEPARTMENT'
    end
    object ConstsQueryLAST_BEG_LOG_DATE: TFIBDateTimeField
      FieldName = 'LAST_BEG_LOG_DATE'
    end
    object ConstsQueryLAST_END_LOG_DATE: TFIBDateTimeField
      FieldName = 'LAST_END_LOG_DATE'
    end
    object ConstsQueryMAN_PENS_AGE: TFIBIntegerField
      FieldName = 'MAN_PENS_AGE'
    end
    object ConstsQueryWOMAN_PENS_AGE: TFIBIntegerField
      FieldName = 'WOMAN_PENS_AGE'
    end
    object ConstsQueryDEFAULT_NIGHT_BEG: TFIBTimeField
      FieldName = 'DEFAULT_NIGHT_BEG'
    end
    object ConstsQueryDEFAULT_NIGHT_END: TFIBTimeField
      FieldName = 'DEFAULT_NIGHT_END'
    end
    object ConstsQuerySHIFT_BEGIN: TFIBDateField
      FieldName = 'SHIFT_BEGIN'
    end
    object ConstsQueryBONUS1: TFIBIntegerField
      FieldName = 'BONUS1'
    end
    object ConstsQueryBONUS2: TFIBIntegerField
      FieldName = 'BONUS2'
    end
    object ConstsQueryBONUS1_ABBR: TFIBStringField
      FieldName = 'BONUS1_ABBR'
      Size = 4
      EmptyStrToNull = True
    end
    object ConstsQueryBONUS2_ABBR: TFIBStringField
      FieldName = 'BONUS2_ABBR'
      Size = 4
      EmptyStrToNull = True
    end
    object ConstsQueryCITY: TFIBStringField
      FieldName = 'CITY'
      Size = 50
      EmptyStrToNull = True
    end
    object ConstsQueryCONT_STAJ_MONTH: TFIBIntegerField
      FieldName = 'CONT_STAJ_MONTH'
    end
    object ConstsQueryLOCAL_DEPARTMENT: TFIBIntegerField
      FieldName = 'LOCAL_DEPARTMENT'
    end
    object ConstsQueryORDERS_HEADER: TFIBStringField
      FieldName = 'ORDERS_HEADER'
      Size = 255
      EmptyStrToNull = True
    end
    object ConstsQueryDB_VERSION: TFIBIntegerField
      FieldName = 'DB_VERSION'
    end
    object ConstsQueryDEFAULT_PAY_FORM: TFIBIntegerField
      FieldName = 'DEFAULT_PAY_FORM'
    end
    object ConstsQueryDEFAULT_WORK_COND: TFIBIntegerField
      FieldName = 'DEFAULT_WORK_COND'
    end
    object ConstsQueryDEFAULT_WORK_MODE: TFIBIntegerField
      FieldName = 'DEFAULT_WORK_MODE'
    end
    object ConstsQueryRAISE_TYPE_FOR_OKLAD: TFIBIntegerField
      FieldName = 'RAISE_TYPE_FOR_OKLAD'
    end
    object ConstsQueryBONUS_CALC: TFIBIntegerField
      FieldName = 'BONUS_CALC'
    end
    object ConstsQueryNEW_ORDERS: TFIBStringField
      FieldName = 'NEW_ORDERS'
      Size = 1
      EmptyStrToNull = True
    end
    object ConstsQueryUSE_MOVING_SMET: TFIBIntegerField
      FieldName = 'USE_MOVING_SMET'
    end
    object ConstsQueryVIZA_REQUIRED_IN_ORDERS: TFIBStringField
      FieldName = 'VIZA_REQUIRED_IN_ORDERS'
      Size = 1
      EmptyStrToNull = True
    end
    object ConstsQueryID_VIDOPL: TFIBIntegerField
      FieldName = 'ID_VIDOPL'
    end
    object ConstsQueryDEFAULT_SMETA: TFIBIntegerField
      FieldName = 'DEFAULT_SMETA'
    end
    object ConstsQueryAPPRENTICE_MOVING_TYPE: TFIBIntegerField
      FieldName = 'APPRENTICE_MOVING_TYPE'
    end
    object ConstsQueryHIDDEN_ID_POST: TFIBIntegerField
      FieldName = 'HIDDEN_ID_POST'
    end
    object ConstsQueryID_DOG_FOR_COMAND: TFIBIntegerField
      FieldName = 'ID_DOG_FOR_COMAND'
    end
    object ConstsQueryTABLE_WORK_DAYS_SMENA: TFIBIntegerField
      FieldName = 'TABLE_WORK_DAYS_SMENA'
    end
    object ConstsQueryGLOBAL_ROOT: TFIBIntegerField
      FieldName = 'GLOBAL_ROOT'
    end
    object ConstsQueryALLOW_EMPTY_SMETS_IN_ORDERS: TFIBStringField
      FieldName = 'ALLOW_EMPTY_SMETS_IN_ORDERS'
      Size = 1
      EmptyStrToNull = True
    end
  end
end
