object ReportForm: TReportForm
  Left = 309
  Top = 265
  BorderStyle = bsDialog
  Caption = #1047#1074#1110#1090' '#1087#1086' '#1089#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1072#1084', '#1103#1082#1110' '#1074#1080#1073#1091#1083#1080' '#1079#1072' '#1087#1088#1080#1095#1080#1085#1086#1102' '#1089#1084#1077#1088#1090#1110
  ClientHeight = 171
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 8
    Top = 16
    Width = 90
    Height = 17
    TabOrder = 0
    Caption = #1055#1086#1095#1072#1090#1086#1082' '#1087#1077#1088#1110#1086#1076#1091
  end
  object DateEditBeg: TcxDateEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    Style.BorderStyle = ebs3D
    TabOrder = 1
  end
  object cxLabel2: TcxLabel
    Left = 152
    Top = 16
    Width = 104
    Height = 17
    TabOrder = 2
    Caption = #1047#1072#1082#1110#1085#1095#1077#1085#1085#1103' '#1087#1077#1088#1110#1086#1076#1091
  end
  object DateEditEnd: TcxDateEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    Style.BorderStyle = ebs3D
    TabOrder = 3
  end
  object cxLabel3: TcxLabel
    Left = 5
    Top = 64
    Width = 82
    Height = 17
    TabOrder = 4
    Caption = #1055#1086#1090#1086#1095#1085#1072' '#1076#1072#1090#1072
  end
  object DateEditNow: TcxDateEdit
    Left = 6
    Top = 80
    Width = 121
    Height = 21
    Style.BorderStyle = ebs3D
    TabOrder = 5
  end
  object OkButton: TBitBtn
    Left = 120
    Top = 137
    Width = 135
    Height = 28
    Caption = #1044#1088#1091#1082#1091#1074#1072#1090#1080
    Default = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
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
    Left = 262
    Top = 137
    Width = 97
    Height = 28
    Cancel = True
    Caption = #1042#1110#1076#1084#1110#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 7
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
  object ZReport: TfrxReport
    Version = '3.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 38702.345258599500000000
    ReportOptions.LastChange = 38713.701837372680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      ' DateNow:String;'
      ' DateBeg:String;'
      ' DateEnd:String;'
      ' NameV  :String;'
      'begin'
      ''
      'end.')
    Left = 8
    Top = 136
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'FRDataSet'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 132.283550000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.Strings = (
            '[NameV]'
            #1040#1057#1059' '#1042#1059#1047)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 755.906000000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.Strings = (
            #1055#1086#1090#1086#1095#1085#1072' '#1076#1072#1090#1072' [DateNow]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000001000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.Strings = (
            #1040#1056#1052' "'#1050#1072#1076#1088#1080' '#1055#1055#1057'"')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Top = 49.133889999999990000
          Width = 457.323130000000000000
          Height = 83.149660000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.Strings = (
            #1057#1087#1080#1089#1086#1082' '#1088#1086#1073#1110#1090#1085#1080#1082#1110#1074' , '#1074#1080#1073#1091#1083#1080#1093'  '#1085#1072' '#1087#1110#1076#1089#1090#1072#1074#1110' '#1089#1084#1077#1088#1090#1110
            #1079#1072' '#1087#1077#1088#1110#1086#1076' '#1079' [DateBeg] '#1087#1086' [DateEnd] '#1088#1088'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 980.410081999999900000
        object Memo5: TfrxMemoView
          Left = 884.410020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.Strings = (
            #1057#1090#1086#1088#1110#1085#1082#1072' [Page#]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 173.858380000000000000
        Width = 980.410081999999900000
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 967.559680000000000000
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 45.354360000000010000
          Width = 971.339210000000000000
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 34.015770000000000000
          Top = 7.559059999999988000
          Width = 294.803340000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1055'.'#1030'.'#1055)
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 30.236240000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #8470)
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 328.819110000000000000
          Top = 7.559059999999988000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1054#1089#1085'. '#1088#1072#1073'.')
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 423.307360000000000000
          Top = 7.559059999999988000
          Width = 136.063080000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1055#1086#1089#1072#1076#1072)
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 559.370440000000000000
          Top = 7.559059999999988000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1042#1095#1077#1085#1077' '#1079#1074#1072#1085#1085#1103','
            #1074#1095#1077#1085#1072' '#1089#1090#1091#1087#1110#1085#1100)
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 680.315400000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1044#1072#1090#1072' '#1079#1074#1110#1083#1100#1085#1077#1085#1085#1103)
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 793.701300000000000000
          Top = 7.559059999999988000
          Width = 177.637910000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1055#1110#1076#1089#1090#1072#1074#1072)
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 287.244280000000000000
        Width = 980.410081999999900000
        DataSet = frxDBDataset1
        DataSetName = 'FRDataSet'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 34.015770000000000000
          Width = 294.803340000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            '[FRDataSet."FIO"]')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            '[Line#]')
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 328.819110000000000000
          Width = 94.488249999999990000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            '[FRDataSet."NAME_SOVMEST"]')
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 423.307360000000000000
          Width = 136.063080000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            '[FRDataSet."POST_NAME"]')
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 559.370440000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            '[FRDataSet."REGARDS"]')
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 680.315400000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            '[FRDataSet."DATE_DISM"]')
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 793.701299999999900000
          Width = 181.417440000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            '[FRDataSet."NOTE"]')
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    Restrictions = []
    Left = 72
    Top = 136
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'FRDataSet'
    CloseDataSource = False
    DataSource = DeadMainDM.DataSource
    Left = 40
    Top = 136
  end
end
