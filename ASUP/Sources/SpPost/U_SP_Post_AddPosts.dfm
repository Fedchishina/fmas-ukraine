object SP_Post_AddPosts: TSP_Post_AddPosts
  Left = 261
  Top = 190
  BorderStyle = bsDialog
  Caption = #1044#1086#1076#1072#1090#1080' '#1087#1086#1089#1072#1076#1080
  ClientHeight = 346
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 149
      Top = 32
      Width = 78
      Height = 16
      Caption = #1053#1072' '#1087#1077#1088#1110#1086#1076':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 269
      Top = 32
      Width = 10
      Height = 16
      Caption = #1079
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 413
      Top = 32
      Width = 19
      Height = 16
      Caption = #1087#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 150
      Top = 8
      Width = 77
      Height = 16
      Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FC_Cat: TFieldControl
      Left = 520
      Top = 16
      Width = 18
      Height = 18
      Control = SpCB_Cat
      Title = '"'#1050#1072#1090#1077#1075#1086#1088#1110#1103'"'
      MaxLength = 0
      ExactLength = 0
      CapitalizeStyle = csNone
    end
    object DTP_Beg: TDateTimePicker
      Left = 297
      Top = 30
      Width = 89
      Height = 21
      Date = 38466.884337384260000000
      Format = 'dd.MM.yyyy'
      Time = 38466.884337384260000000
      TabOrder = 1
    end
    object DTP_End: TDateTimePicker
      Left = 441
      Top = 30
      Width = 89
      Height = 21
      Date = 38466.884415682870000000
      Format = 'dd.MM.yyyy'
      Time = 38466.884415682870000000
      TabOrder = 2
    end
    object SpCB_Cat: TSpComboBox
      Left = 256
      Top = 6
      Width = 273
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      ItemCount = 5
      SpOpenItem = '...'#1030#1085#1096#1077
      AutoDrop = True
      SpParams.Table = 'sp_category_select'
      SpParams.IdField = 'id_category'
      SpParams.SpFields = 'name_category'
      SpParams.Title = #1050#1072#1090#1077#1075#1086#1088#1110#1111
      SpParams.ComboField = 'name_category'
      SpParams.ColumnNames = #1053#1072#1079#1074#1072' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
      SpParams.ReadOnly = True
      SpParams.DontHideFirstColumn = False
      SpParams.SpMode = [spfAdd, spfModify, spfDelete, spfFind, spfSelect, spfExt]
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 311
    Width = 679
    Height = 35
    Align = alBottom
    TabOrder = 3
    object SbCancel: TBitBtn
      Left = 391
      Top = 4
      Width = 97
      Height = 26
      Cancel = True
      Caption = #1042#1110#1076#1084#1110#1085#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = SbCancelClick
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
    object SbOk: TBitBtn
      Left = 191
      Top = 4
      Width = 97
      Height = 26
      Caption = #1043#1072#1088#1072#1079#1076
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      OnClick = SbOkClick
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 679
    Height = 198
    Align = alClient
    Color = clInfoBk
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Post_Code'
        Title.Caption = #1050#1086#1076' '#1087#1086#1089#1072#1076#1080
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_post'
        Title.Caption = #1053#1072#1079#1074#1072' '#1087#1086#1089#1072#1076#1080
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'not_digit'
        Title.Caption = #1053#1077' '#1088#1086#1079#1088#1103#1076
        Visible = True
      end>
  end
  inline SearchFrame: TfmSearch
    Left = 0
    Top = 255
    Width = 679
    Height = 56
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    inherited AllLabel: TLabel
      Left = 555
    end
  end
  object DataSource1: TDataSource
    DataSet = pFIBDS
    Left = 216
    Top = 128
  end
  object pFIBDS: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from sp_post_all_select;')
    AfterOpen = pFIBDSAfterOpen
    Left = 352
    Top = 136
    poSQLINT64ToBCD = True
  end
end