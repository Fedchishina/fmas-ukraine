object AddManFamilyForm: TAddManFamilyForm
  Left = 341
  Top = 152
  BorderStyle = bsDialog
  ClientHeight = 331
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Id_RelationLabel: TLabel
    Left = 16
    Top = 24
    Width = 83
    Height = 13
    Caption = #1058#1080#1087' '#1074#1110#1076#1085#1086#1089#1080#1085':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FIOLabel: TLabel
    Left = 16
    Top = 56
    Width = 71
    Height = 13
    Caption = #1055#1030#1041' '#1088#1086#1076#1080#1095#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FC_Id_Relation: TFieldControl
    Left = 437
    Top = 29
    Width = 18
    Height = 18
    Control = Id_RelationBox
    ReadFromField = DetailsQueryId_Relation
    Title = '"'#1058#1080#1087' '#1074#1110#1076#1085#1086#1089#1080#1085'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object FC_FIO: TFieldControl
    Left = 437
    Top = 53
    Width = 18
    Height = 18
    Control = FIOEdit
    ReadFromField = DetailsQueryFIO
    Title = '"'#1055#1030#1041' '#1088#1086#1076#1080#1095#1072'"'
    MaxLength = 63
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object Label1: TLabel
    Left = 16
    Top = 90
    Width = 111
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FC_BIRTH_DATE: TFieldControl
    Left = 264
    Top = 88
    Width = 18
    Height = 18
    Control = BirthDatePicker
    ReadFromField = DetailsQueryBIRTH_DATE
    Required = False
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
    Value = '30.12.1899'
  end
  object Id_RelationBox: TSpComboBox
    Left = 147
    Top = 20
    Width = 286
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnChange = Id_RelationBoxChange
    ItemCount = 9
    SpOpenItem = '...'#1030#1085#1096#1077
    AutoDrop = True
    SpParams.Table = 'Ini_Family_Relation'
    SpParams.IdField = 'Id_Relation'
    SpParams.SpFields = 'Name_Relation'
    SpParams.Title = #1058#1080#1087#1080' '#1088#1086#1076#1080#1085#1085#1080#1093' '#1074#1110#1076#1085#1086#1089#1080#1085
    SpParams.ComboField = 'Name_Relation'
    SpParams.ColumnNames = #1058#1080#1087' '#1074#1110#1076#1085#1086#1089#1080#1085
    SpParams.ReadOnly = True
    SpParams.DontHideFirstColumn = False
    SpParams.SpMode = [spfFind, spfSelect, spfExt]
  end
  object FIOEdit: TCheckEdit
    Left = 147
    Top = 52
    Width = 286
    Height = 21
    MaxLength = 63
    TabOrder = 1
    Text = 'FIOEdit'
    InputSet = isAll
  end
  object OkButton: TBitBtn
    Left = 219
    Top = 296
    Width = 97
    Height = 25
    Caption = #1043#1072#1088#1072#1079#1076
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 2
    OnClick = OkButtonClick
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
    Left = 351
    Top = 296
    Width = 97
    Height = 25
    Cancel = True
    Caption = #1042#1110#1076#1084#1110#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 3
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
  object BirthDatePicker: TDateTimePicker
    Left = 147
    Top = 88
    Width = 105
    Height = 21
    Date = 37977.656014606480000000
    Time = 37977.656014606480000000
    ShowCheckbox = True
    Checked = False
    TabOrder = 4
  end
  object InvalidBox: TGroupBox
    Left = 8
    Top = 128
    Width = 449
    Height = 161
    Caption = #1044#1080#1090#1080#1085#1072' '#1110#1085#1074#1072#1083#1110#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 113
      Height = 13
      Caption = #1057#1077#1088#1110#1103' '#1084#1077#1076'. '#1076#1086#1074#1110#1076#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 184
      Top = 56
      Width = 120
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1084#1077#1076'. '#1076#1086#1074#1110#1076#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 344
      Top = 56
      Width = 72
      Height = 13
      Caption = #1044#1072#1090#1072' '#1074#1080#1076#1072#1095#1110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FC_INVALID: TFieldControl
      Left = 96
      Top = 24
      Width = 25
      Height = 17
      Control = InvalidCheckBox
      ReadFromField = DetailsQueryIS_INVALID
      Required = False
      MaxLength = 0
      ExactLength = 0
      CapitalizeStyle = csNone
    end
    object FC_CHERNOB: TFieldControl
      Left = 432
      Top = 24
      Width = 18
      Height = 18
      Control = ChernobCheckBox
      ReadFromField = DetailsQueryIS_CHERNOB
      Required = False
      MaxLength = 0
      ExactLength = 0
      CapitalizeStyle = csNone
    end
    object FC_SERIA: TFieldControl
      Left = 144
      Top = 72
      Width = 18
      Height = 18
      Control = SeriaEdit
      ReadFromField = DetailsQuerySERIA_SPRAV
      Required = False
      MaxLength = 0
      ExactLength = 0
      CapitalizeStyle = csNone
    end
    object FC_NOMER: TFieldControl
      Left = 312
      Top = 72
      Width = 18
      Height = 18
      Control = NumEdit
      ReadFromField = DetailsQueryNOMER_SPRAV
      Required = False
      MaxLength = 0
      ExactLength = 0
      CapitalizeStyle = csNone
    end
    object FC_DATE: TFieldControl
      Left = 432
      Top = 72
      Width = 18
      Height = 18
      Control = DateSpravPicker
      ReadFromField = DetailsQueryDATE_SPRAV
      Required = False
      MaxLength = 0
      ExactLength = 0
      CapitalizeStyle = csNone
    end
    object FC_NOTE: TFieldControl
      Left = 424
      Top = 96
      Width = 18
      Height = 18
      Control = NoteMemo
      ReadFromField = DetailsQueryNOTE
      Required = False
      MaxLength = 0
      ExactLength = 0
      CapitalizeStyle = csNone
    end
    object SeriaEdit: TCheckEdit
      Left = 16
      Top = 72
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      InputSet = isAll
    end
    object NumEdit: TCheckEdit
      Left = 184
      Top = 72
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      InputSet = isAll
    end
    object DateSpravPicker: TDateTimePicker
      Left = 336
      Top = 72
      Width = 97
      Height = 21
      Date = 38260.487836712960000000
      Time = 38260.487836712960000000
      ShowCheckbox = True
      Checked = False
      TabOrder = 2
    end
    object InvalidCheckBox: TCheckBox
      Left = 16
      Top = 24
      Width = 65
      Height = 17
      Caption = #1030#1085#1074#1072#1083#1110#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object ChernobCheckBox: TCheckBox
      Left = 192
      Top = 24
      Width = 241
      Height = 17
      Caption = #1055#1086#1090#1077#1088#1087#1110#1083#1080#1081'(-'#1083#1072') '#1074#1110#1076' '#1090#1088#1072#1075#1077#1076#1110#1111' '#1085#1072' '#1063#1040#1045#1057
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object NoteMemo: TMemo
      Left = 16
      Top = 112
      Width = 425
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 5
    end
  end
  object DetailsQuery: TIBQuery
    Database = Main.ChermetDatabase
    Transaction = Main.DefaultTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT Id_Relation,FIO,Birth_Date,IS_INVALID,'
      
        'IS_CHERNOB,SERIA_SPRAV,NOMER_SPRAV,DATE_SPRAV,NOTE FROM Man_Fami' +
        'ly WHERE Id_Man_Int = :Id_Man_Int AND FIO=:FIO')
    Left = 8
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id_Man_Int'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIO'
        ParamType = ptUnknown
      end>
    object DetailsQueryId_Relation: TIntegerField
      FieldName = 'Id_Relation'
    end
    object DetailsQueryFIO: TIBStringField
      FieldName = 'FIO'
      Size = 63
    end
    object DetailsQueryBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'MAN_FAMILY.BIRTH_DATE'
    end
    object DetailsQueryIS_INVALID: TIBStringField
      FieldName = 'IS_INVALID'
      Origin = 'MAN_FAMILY.IS_INVALID'
      FixedChar = True
      Size = 1
    end
    object DetailsQueryIS_CHERNOB: TIBStringField
      FieldName = 'IS_CHERNOB'
      Origin = 'MAN_FAMILY.IS_CHERNOB'
      FixedChar = True
      Size = 1
    end
    object DetailsQuerySERIA_SPRAV: TIBStringField
      FieldName = 'SERIA_SPRAV'
      Origin = 'MAN_FAMILY.SERIA_SPRAV'
      Size = 12
    end
    object DetailsQueryNOMER_SPRAV: TIBStringField
      FieldName = 'NOMER_SPRAV'
      Origin = 'MAN_FAMILY.NOMER_SPRAV'
      Size = 12
    end
    object DetailsQueryDATE_SPRAV: TDateField
      FieldName = 'DATE_SPRAV'
      Origin = 'MAN_FAMILY.DATE_SPRAV'
    end
    object DetailsQueryNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = 'MAN_FAMILY.NOTE'
      Size = 4096
    end
  end
end
