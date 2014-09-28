object DismissManForm: TDismissManForm
  Left = 324
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1060#1086#1088#1084#1072' '#1079#1074#1110#1083#1100#1085#1077#1085#1085#1103' '#1083#1102#1076#1080#1085#1080
  ClientHeight = 303
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCFFFFFFFFFF
    FFFFFFFFFFFFFFFFFCCFFFCCFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFCFFFFFFF
    FFFFFFFFFFFFFFFFCFFFFFFFCFFFFF00000000000000000CFFFFFFFFFCFFFFFF
    FFFFFFFFFFFFFFFCFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFCFFFFF00
    0000000000000000CFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFCCFFFCCFFFFFFFF
    FFFFFFFFFFFFFFFFFFFCCCFFFFFFFF00000000000000000000000000FFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
    000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000FFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
    000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000FFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
    000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000FFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object FormControl: TqFFormControl
    Left = 384
    Top = 272
    Width = 60
    Height = 21
    ControlsOwner = Owner
    InsertSQL.Strings = (
      'select * from ASUP_MAN_DISMISSION_INSERT('
      '    :DATE_DISMISSION,'
      '    :DISMISSION_REASON,'
      '    :ID_DISMISSION,'
      '    :ID_MAN_MOVING,'
      '    :NOTUSED,'
      '    :UNWORK,'
      '    :PROFKOM_AGREE,'
      '    :ID_ORDER_TYPE,'
      '    :NUM_ITEM,'
      '    :SUB_ITEM,'
      '    :ID_ORDER_GROUP,'
      '    :INTRO)')
    UpdateSQL.Strings = (
      'EXECUTE PROCEDURE ASUP_MAN_DISMISSION_UPDATE('
      '    :DATE_DISMISSION,'
      '    :DISMISSION_REASON,'
      '    :ID_DISMISSION,'
      '    :ID_MAN_MOVING,'
      '    :NOTUSED,'
      '    :UNWORK,'
      '    :PROFKOM_AGREE,'
      '    :where);')
    SelectSQL.Strings = (
      'SELECT * FROM ASUP_MAN_DISMISSION_SELECT(:where)')
    AddCaption = #1057#1090#1074#1086#1088#1077#1085#1085#1103' '#1085#1072#1082#1072#1079#1091' '#1087#1088#1086' '#1079#1074#1110#1083#1100#1085#1077#1085#1085#1103
    ModifyCaption = #1056#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103' '#1085#1072#1082#1072#1079#1091' '#1087#1088#1086' '#1079#1074#1110#1083#1100#1085#1077#1085#1085#1103
    InfoCaption = #1055#1077#1088#1077#1075#1083#1103#1076' '#1085#1072#1082#1072#1079#1091' '#1087#1088#1086' '#1079#1074#1110#1083#1100#1085#1077#1085#1085#1103
    AfterRecordAdded = FormControlAfterRecordAdded
    Mode = fmAdd
    CheckWhere = True
    CloseForm = True
  end
  object qFLogicCheck1: TqFLogicCheck
    Left = 232
    Top = 8
    Width = 36
    Height = 21
    OnCheck = qFLogicCheck1Check
    LightControl = DateDismission
  end
  object Check2: TqFLogicCheck
    Left = 352
    Top = 200
    Width = 89
    Height = 21
    OnCheck = Check2Check
  end
  object OkButton: TBitBtn
    Left = 120
    Top = 268
    Width = 97
    Height = 27
    Action = OkAction
    Caption = #1043#1072#1088#1072#1079#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    Glyph.Data = {
      8E0B0000424D8E0B00000000000036000000280000002C000000160000000100
      180000000000580B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003300FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033000099
      33003300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666
      969696666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00330000
      9933009900009933003300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666
      66969696868686999999666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003300
      009933009933009900009900009933003300FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66
      6666999999999999969696969696999999666666FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033
      0033CC3333CC3333CC33009933003300009933009900009933003300FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      666666C0C0C0B2B2B2B2B2B2969696666666999999969696999999666666FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      330000800033CC6633CC33339933003300FFFFFF003300009933009900009933
      003300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF666666868686C0C0C0C0C0C0A4A0A0666666FFFFFF66666699999996969699
      9999666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF00330033CC6633CC66339933003300993333FFFFFFFFFFFF0033000080
      00009900009933003300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF666666CCCCCCC0C0C0B2B2B2666666808080FFFFFFFFFFFF666666
      868686969696999999666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF003300339933339933003300CC3333CC6666993333FFFFFFFF
      FFFFFFFFFF003300009900009933FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF666666A4A0A0B2B2B2666666969696999999808080FFFF
      FFFFFFFFFFFFFF666666969696969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF993333003300003300CC6666CC3333CC3333CC6666
      993333FFFFFFFFFFFFFFFFFF003300009933003300FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF80808066666666666699999999999996969699
      9999808080FFFFFFFFFFFFFFFFFF666666969696666666FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF993333CC3333CC6666CC6666CC3333993333CC66
      66CC3333CC6666993333FFFFFFFFFFFFFFFFFF003300009900003300FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080969696B2B2B2A4A0A0999999808080
      A4A0A0969696999999808080FFFFFFFFFFFFFFFFFF666666969696666666FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF993333CC3333CC6666CC6666CC6666993333FF
      FFFF993333CC6666CC3333CC6666993333FFFFFFFFFFFFFFFFFF003300008000
      003300FFFFFFFFFFFFFFFFFFFFFFFF808080969696C0C0C0B2B2B2A4A0A08080
      80FFFFFF808080999999969696999999808080FFFFFFFFFFFFFFFFFF66666686
      8686666666FFFFFFFFFFFFFFFFFFFFFFFF993333CC9999CC9999CC9999993333
      FFFFFFFFFFFFFFFFFF993333CC3333CC3333CC3333993333FFFFFFFFFFFFFFFF
      FF003300006600003300FFFFFFFFFFFFFFFFFF808080C0C0C0C0C0C0C0C0C080
      8080FFFFFFFFFFFFFFFFFF808080868686999999999999808080FFFFFFFFFFFF
      FFFFFF666666777777666666FFFFFFFFFFFFFFFFFF993333CC6666CC9999CC66
      66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF993333CC3333CC3333993333FF
      FFFFFFFFFFFFFFFFFFFFFF003300003300FFFFFFFFFFFF808080A4A0A0C0C0C0
      B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080809999999999998080
      80FFFFFFFFFFFFFFFFFFFFFFFF666666666666FFFFFFFFFFFFFFFFFF993333CC
      6666993333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF993333CC3333
      CC3333993333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003300FFFFFFFFFFFF8080
      80B2B2B2808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808099
      9999969696808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666FFFFFFFFFFFF
      FFFFFF993333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF993333CC3333CC3333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF808080868686969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC3333993333FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686808080FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF993333993333FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
      3333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 2
  end
  object CancelButton: TBitBtn
    Left = 232
    Top = 268
    Width = 113
    Height = 27
    Action = CancelAction
    Caption = #1042#1110#1076#1084#1110#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 1
    Glyph.Data = {
      8E0B0000424D8E0B00000000000036000000280000002C000000160000000100
      180000000000580B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000066000066FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000066000066
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666
      66666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66
      6666666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660033FF0033FF
      0033FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660000CC0000
      FF0000FF0000FF000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666B2
      B2B2B2B2B2A4A0A0969696666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666
      969696999999999999999999666666FFFFFFFFFFFFFFFFFFFFFFFF0000660000
      CC0033FF0033FF0033FF0000CC000066FFFFFFFFFFFFFFFFFF0000660000CC00
      00FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      666666A4A0A0B2B2B2B2B2B2B2B2B2969696666666FFFFFFFFFFFFFFFFFF6666
      66969696999999999999999999969696666666FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000660000CC0033FF0033FF0033FF0000CC000066FFFFFF0000660000CC
      0000FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF666666A4A0A0B2B2B2B2B2B2B2B2B2999999666666FFFFFF66
      6666999999999999999999999999969696666666FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000660000CC0033FF0033FF0033FF0000CC0000660000
      CC0000FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A4A0A0B2B2B2B2B2B2B2B2B2999999
      666666999999999999999999999999969696666666FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660000CC0033FF0033FF0033FF00
      00FF0000FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A4A0A0B2B2B2B2B2
      B2B2B2B2999999999999999999999999969696666666FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660000CC0033FF
      0033FF0000FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A4
      A0A0B2B2B2B2B2B2A4A0A0A4A0A0999999969696666666FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      660033CC0033FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF666666A4A0A0B2B2B2A4A0A0A4A0A0999999666666FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00660033CC0033FF0033FF0033FF0033FF0033FF0000CC000066FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF666666B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A0A0666666FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000660033CC0033FF0033FF0033FF0033CC0033FF0033FF0033FF0000CC0000
      66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF666666B2B2B2B2B2B2B2B2B2B2B2B2A4A0A0B2B2B2B2B2B2B2B2B2
      A4A0A0666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF0000660033CC0033FF0033FF0033FF0033CC0000660033CC0033FF0033FF00
      33FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF666666B2B2B2C0C0C0B2B2B2B2B2B2B2B2B2666666A4A0A0B2B2
      B2B2B2B2B2B2B2A4A0A0666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000660033CC0033FF0033FF0033FF0033CC000066FFFFFF0000660000CC
      0033FF0033FF0033FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF666666B2B2B2C0C0C0C0C0C0C0C0C0A4A0A0666666FFFFFF66
      6666A4A0A0B2B2B2B2B2B2B2B2B2A4A0A0666666FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0000660033CC0033FF0033FF0033FF0033CC000066FFFFFFFFFFFFFFFF
      FF0000660000CC0033FF0033FF0033FF0033CC000066FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF666666C0C0C0C0C0C0C0C0C0C0C0C0A4A0A0666666FFFFFF
      FFFFFFFFFFFF666666999999B2B2B2B2B2B2B2B2B2A4A0A0666666FFFFFFFFFF
      FFFFFFFFFFFFFF0000663333FF3333FF3333FF0033CC000066FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000660000CC0033FF0033FF0033CC000066FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF666666C0C0C0C0C0C0C0C0C0A4A0A0666666FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF666666999999B2B2B2B2B2B2A4A0A0666666FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000663333CC0033CC000066FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660033CC0033CC000066FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666C0C0C0B2B2B2666666FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A4A0A0B2B2B2666666
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 2
  end
  object DateDismission: TqFDateControl
    Left = 8
    Top = 8
    Width = 217
    Height = 21
    FieldName = 'DATE_DISMISSION'
    DisplayName = #1047#1074#1110#1083#1100#1085#1080#1090#1080
    Interval = 120
    Value = 38537
    LabelColor = clGreen
    Required = True
    Semicolon = True
    Asterisk = False
    Enabled = True
    Blocked = False
    TabOrder = 2
    AutoSaveToRegistry = False
  end
  object Fio: TqFSpravControl
    Left = 8
    Top = 40
    Width = 449
    Height = 21
    FieldName = 'ID_PCARD'
    DisplayName = #1055#1030#1041
    Interval = 120
    Value = Null
    LabelColor = clGreen
    Required = True
    Semicolon = True
    Asterisk = True
    Enabled = True
    OnChange = FioChange
    Blocked = False
    TabOrder = 3
    AutoSaveToRegistry = False
    OnOpenSprav = FioOpenSprav
    DisplayText = ''
    DisplayTextField = 'FIO'
  end
  object OldWorkPlace: TqFSpravControl
    Left = 8
    Top = 72
    Width = 449
    Height = 21
    FieldName = 'ID_MAN_MOVING'
    DisplayName = #1052#1110#1089#1094#1077' '#1088#1086#1073#1086#1090#1080
    Interval = 120
    Value = Null
    LabelColor = clGreen
    Required = True
    Semicolon = True
    Asterisk = True
    Enabled = True
    Blocked = False
    TabOrder = 4
    AutoSaveToRegistry = False
    OnOpenSprav = OldWorkPlaceOpenSprav
    DisplayText = ''
    DisplayTextField = 'WORK_PLACE'
  end
  object DismissionReason: TqFCharControl
    Left = 8
    Top = 104
    Width = 425
    Height = 21
    FieldName = 'DISMISSION_REASON'
    DisplayName = #1055#1110#1076#1089#1090#1072#1074#1072
    Interval = 120
    Value = ''
    LabelColor = clGreen
    Required = False
    Semicolon = True
    Asterisk = True
    Enabled = True
    Blocked = False
    TabOrder = 5
    AutoSaveToRegistry = False
    MaxLength = 0
  end
  object NameDismission: TqFSpravControl
    Left = 8
    Top = 136
    Width = 449
    Height = 21
    FieldName = 'ID_DISMISSION'
    DisplayName = #1055#1088#1080#1095#1080#1085#1072
    Interval = 120
    Value = Null
    LabelColor = clGreen
    Required = True
    Semicolon = True
    Asterisk = True
    Enabled = True
    Blocked = False
    TabOrder = 6
    AutoSaveToRegistry = False
    OnOpenSprav = NameDismissionOpenSprav
    DisplayText = ''
    DisplayTextField = 'NAME_DISMISSION'
  end
  object ProfkomAgree: TqFCharControl
    Left = 8
    Top = 168
    Width = 425
    Height = 21
    FieldName = 'PROFKOM_AGREE'
    DisplayName = #1053#1086#1084#1077#1088' '#1090#1072' '#1076#1072#1090#1072' '#1087#1086#1089#1090#1072#1085#1086#1074#1080' '#1087#1088#1086#1092#1082#1086#1084#1091
    Interval = 270
    Value = ''
    LabelColor = clGreen
    Required = False
    Semicolon = True
    Asterisk = True
    Enabled = True
    Blocked = False
    TabOrder = 7
    AutoSaveToRegistry = False
    MaxLength = 0
  end
  object UnWork: TqFIntControl
    Left = 8
    Top = 200
    Width = 329
    Height = 21
    FieldName = 'UNWORK'
    DisplayName = #1053#1077' '#1074#1110#1076#1087#1088#1072#1094#1100#1086#1074#1072#1085#1110' '#1076#1085#1110' '#1074#1110#1076#1087#1091#1089#1090#1082#1080
    Interval = 270
    Value = 0
    LabelColor = clGreen
    Required = True
    Semicolon = True
    Asterisk = False
    Enabled = True
    Default = '0'
    Blocked = False
    TabOrder = 8
    AutoSaveToRegistry = False
    MaxLength = 10
    NegativeAllowed = False
    ZeroAllowed = True
  end
  object NotUsed: TqFIntControl
    Left = 8
    Top = 232
    Width = 329
    Height = 21
    FieldName = 'NOTUSED'
    DisplayName = #1050#1086#1084#1087#1077#1085#1089#1072#1094#1110#1103' '#1079#1072' '#1085#1077#1074#1080#1082#1086#1088#1080#1089#1090#1072#1085#1091' '#1074#1110#1076#1087#1091#1089#1090#1082#1091
    Interval = 270
    Value = 0
    LabelColor = clGreen
    Required = True
    Semicolon = True
    Asterisk = False
    Enabled = True
    Default = '0'
    Blocked = False
    TabOrder = 9
    AutoSaveToRegistry = False
    MaxLength = 10
    NegativeAllowed = False
    ZeroAllowed = True
  end
  object LocalDatabase: TpFIBDatabase
    DBName = 'server1212:fmas'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=')
    DefaultTransaction = LocalReadTransaction
    SQLDialect = 3
    Timeout = 0
    DesignDBOptions = []
    WaitForRestoreConnect = 0
    Left = 323
    Top = 8
  end
  object LocalReadTransaction: TpFIBTransaction
    DefaultDatabase = LocalDatabase
    TimeoutAction = TARollback
    Left = 355
    Top = 8
  end
  object LocalWriteTransaction: TpFIBTransaction
    DefaultDatabase = LocalDatabase
    TimeoutAction = TARollback
    Left = 387
    Top = 8
  end
  object SelectCurWorkPlace: TpFIBDataSet
    Database = LocalDatabase
    Transaction = LocalReadTransaction
    SelectSQL.Strings = (
      'SELECT * FROM ASUP_GET_CUR_WORK_PLACE2(:Cur_Date, :Id_Pcard)')
    Left = 368
    Top = 44
    poSQLINT64ToBCD = True
    object SelectCurWorkPlaceID_DEPARTMENT: TFIBIntegerField
      FieldName = 'ID_DEPARTMENT'
      Visible = False
    end
    object SelectCurWorkPlaceNAME_POST_SALARY: TFIBStringField
      DisplayLabel = #1055#1086#1089#1072#1076#1086#1074#1080#1081' '#1086#1082#1083#1072#1076
      DisplayWidth = 50
      FieldName = 'NAME_POST_SALARY'
      Size = 255
      EmptyStrToNull = True
    end
    object SelectCurWorkPlaceID_POST_SALARY: TFIBIntegerField
      FieldName = 'ID_POST_SALARY'
      Visible = False
    end
    object SelectCurWorkPlaceNAME_DEPARTMENT: TFIBStringField
      DisplayLabel = #1055#1110#1076#1088#1086#1079#1076#1110#1083
      DisplayWidth = 50
      FieldName = 'NAME_DEPARTMENT'
      Size = 255
      EmptyStrToNull = True
    end
    object SelectCurWorkPlaceID_MAN_MOVING: TFIBIntegerField
      FieldName = 'ID_MAN_MOVING'
      Visible = False
    end
    object SelectCurWorkPlaceNAME_SOVMEST: TFIBStringField
      DisplayLabel = #1058#1080#1087' '#1088#1086#1073#1086#1090#1080
      DisplayWidth = 50
      FieldName = 'NAME_SOVMEST'
      Size = 255
      EmptyStrToNull = True
    end
    object SelectCurWorkPlaceWORK_REASON: TFIBStringField
      DisplayLabel = #1055#1110#1076#1089#1090#1072#1074#1072' '#1088#1086#1073#1086#1090#1080
      DisplayWidth = 10
      FieldName = 'WORK_REASON'
      Size = 255
      EmptyStrToNull = True
    end
    object SelectCurWorkPlaceDATE_BEG: TFIBDateField
      DisplayLabel = #1055#1086#1095#1072#1090#1086#1082
      DisplayWidth = 30
      FieldName = 'DATE_BEG'
    end
    object SelectCurWorkPlaceDATE_END: TFIBDateField
      DisplayWidth = 50
      FieldName = 'DATE_END'
      Visible = False
    end
    object SelectCurWorkPlaceREAL_DATE_END: TFIBDateField
      DisplayLabel = #1050#1110#1085#1077#1094#1100
      DisplayWidth = 30
      FieldName = 'REAL_DATE_END'
    end
  end
  object KeyList: TActionList
    Left = 348
    Top = 231
    object OkAction: TAction
      Caption = #1043#1072#1088#1072#1079#1076
      ShortCut = 13
      SecondaryShortCuts.Strings = (
        'F10')
      OnExecute = OkActionExecute
    end
    object CancelAction: TAction
      Caption = #1042#1110#1076#1084#1110#1085#1072
      ShortCut = 27
      OnExecute = CancelActionExecute
    end
  end
  object Check2Query: TpFIBDataSet
    Database = LocalDatabase
    Transaction = LocalReadTransaction
    SelectSQL.Strings = (
      'SELECT * '
      'FROM ASUP_MAN_DISMISSION_CHECK ('
      '    :ID_ORDER_GROUP,'
      '    :CUR_DATE,'
      '    :INPUT_ID_MAN_MOVING)')
    Left = 400
    Top = 212
    poSQLINT64ToBCD = True
    object FIBIntegerField1: TFIBIntegerField
      FieldName = 'ID_DEPARTMENT'
      Visible = False
    end
    object FIBStringField1: TFIBStringField
      DisplayLabel = #1055#1086#1089#1072#1076#1086#1074#1080#1081' '#1086#1082#1083#1072#1076
      DisplayWidth = 100
      FieldName = 'NAME_POST_SALARY'
      Size = 255
      EmptyStrToNull = True
    end
    object FIBIntegerField2: TFIBIntegerField
      FieldName = 'ID_POST_SALARY'
      Visible = False
    end
    object FIBStringField2: TFIBStringField
      DisplayLabel = #1055#1110#1076#1088#1086#1079#1076#1110#1083
      DisplayWidth = 100
      FieldName = 'NAME_DEPARTMENT'
      Size = 255
      EmptyStrToNull = True
    end
    object FIBIntegerField3: TFIBIntegerField
      FieldName = 'ID_MAN_MOVING'
      Visible = False
    end
    object FIBDateField1: TFIBDateField
      DisplayLabel = #1055#1086#1095#1072#1090#1086#1082
      DisplayWidth = 30
      FieldName = 'DATE_BEG'
    end
    object FIBDateField2: TFIBDateField
      DisplayWidth = 50
      FieldName = 'DATE_END'
      Visible = False
    end
    object FIBDateField3: TFIBDateField
      DisplayLabel = #1050#1110#1085#1077#1094#1100
      DisplayWidth = 30
      FieldName = 'REAL_DATE_END'
    end
    object Check2QueryWORK_REASON: TFIBStringField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072' '#1088#1086#1073#1086#1090#1080
      DisplayWidth = 10
      FieldName = 'WORK_REASON'
      Size = 255
      EmptyStrToNull = True
    end
    object Check2QueryNAME_SOVMEST: TFIBStringField
      DisplayLabel = #1058#1080#1087' '#1088#1086#1073#1086#1090#1080
      DisplayWidth = 20
      FieldName = 'NAME_SOVMEST'
      Size = 255
      EmptyStrToNull = True
    end
  end
  object pFIBDS_CheckPermission: TpFIBDataSet
    Database = LocalDatabase
    Transaction = LocalReadTransaction
    SelectSQL.Strings = (
      'select * from ASUP_ORDERS_CHECK_PERMISSION(:id_pcard,:id_order);')
    Left = 284
    Top = 444
    poSQLINT64ToBCD = True
    object pFIBDS_CheckPermissionNUM_PROJECT: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1087#1088#1086#1077#1082#1090#1091
      FieldName = 'NUM_PROJECT'
      Size = 255
      EmptyStrToNull = True
    end
    object pFIBDS_CheckPermissionDATE_ORDER: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1077#1082#1090#1091
      FieldName = 'DATE_ORDER'
    end
    object pFIBDS_CheckPermissionOWNER_NAME: TFIBStringField
      DisplayLabel = #1042#1083#1072#1089#1085#1080#1082' '#1085#1072#1082#1072#1079#1091
      FieldName = 'OWNER_NAME'
      Size = 255
      EmptyStrToNull = True
    end
  end
end
