object fmTempWorkers: TfmTempWorkers
  Left = 334
  Top = 335
  Width = 384
  Height = 178
  BorderIcons = [biSystemMenu]
  Caption = #1047#1074#1110#1090' '#1087#1086' '#1090#1080#1084#1095#1072#1089#1086#1074#1086' '#1087#1088#1080#1081#1085#1103#1090#1080#1084' '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072#1084
  Color = clBtnFace
  Constraints.MaxHeight = 178
  Constraints.MaxWidth = 384
  Constraints.MinHeight = 178
  Constraints.MinWidth = 384
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LDepartment: TLabel
    Left = 8
    Top = 9
    Width = 62
    Height = 13
    Caption = #1055#1110#1076#1088#1086#1079#1076#1110#1083':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 65
    Width = 43
    Height = 13
    Caption = #1087#1077#1088'i'#1086#1076':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 66
    Width = 8
    Height = 13
    Caption = #1079
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 192
    Top = 66
    Width = 15
    Height = 13
    Caption = #1087#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxTextEdit1: TcxTextEdit
    Left = 12
    Top = 32
    Width = 329
    Height = 21
    Properties.ReadOnly = True
    TabOrder = 0
  end
  object BDepartment: TBitBtn
    Left = 340
    Top = 34
    Width = 20
    Height = 18
    Caption = '...'
    TabOrder = 1
    OnClick = BDepartmentClick
  end
  object BOk: TBitBtn
    Left = 72
    Top = 104
    Width = 99
    Height = 27
    Caption = #1043#1072#1088#1072#1079#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BOkClick
    Glyph.Data = {
      B60D0000424DB60D000000000000360000002800000030000000180000000100
      180000000000800D000000000000000000000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800033000080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080666666
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080003300009933003300008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808066666696969666666600808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800033000099330099000099330033000080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080666666969696868686
      9999996666660080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000330000
      9933009933009900009900009933003300008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808066666699999999999996969696969699999966666600808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800033000080003399330099330099330099330099000099
      3300330000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080666666868686B2B2B2A4A0A0999999
      9696969696969999996666660080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000330000800033CC3333
      CC3333CC33009933003300009933009900009933003300008080008080008080
      0080800080800080800080800080800080800080800080800080800080806666
      66868686C0C0C0B2B2B2B2B2B296969666666699999996969699999966666600
      8080008080008080008080008080008080008080008080008080008080008080
      00808000330000800033CC6633CC6633CC333399330033000080800033000099
      3300990000993300330000808000808000808000808000808000808000808000
      8080008080008080008080666666868686C0C0C0C0C0C0C0C0C0A4A0A0666666
      0080806666669999999696969999996666660080800080800080800080800080
      8000808000808000808000808000808000808000330033CC6633CC6633CC6633
      9933003300993333008080008080003300008000009900009933003300008080
      008080008080008080008080008080008080008080008080008080666666CCCC
      CCCCCCCCC0C0C0B2B2B266666680808000808000808066666686868696969699
      9999666666008080008080008080008080008080008080008080008080008080
      00808000330033993333CC66339933003300CC3333CC66669933330080800080
      8000808000330000990000993300330000808000808000808000808000808000
      8080008080008080008080666666A4A0A0D7D7D7B2B2B2666666969696999999
      8080800080800080800080806666669696969696966666660080800080800080
      8000808000808000808000808000808000808099333300330033CC66003300CC
      6666CC3333CC3333CC6666993333008080008080008080003300009933009900
      0033000080800080800080800080800080800080800080800080808080806666
      66C0C0C066666699999999999996969699999980808000808000808000808066
      6666969696969696666666008080008080008080008080008080008080008080
      993333CC3333CC6666003300CC6666CC3333993333CC6666CC3333CC66669933
      3300808000808000808000330000660000990000330000808000808000808000
      8080008080008080808080969696B2B2B2666666A4A0A0999999808080A4A0A0
      9696969999998080800080800080800080806666667777779696966666660080
      80008080008080008080008080993333CC3333CC6666CC6666CC6666CC666699
      3333008080993333CC6666CC3333CC6666993333008080008080008080008080
      003300008000003300008080008080008080008080808080969696C0C0C0B2B2
      B2B2B2B2A4A0A080808000808080808099999996969699999980808000808000
      8080008080008080666666868686666666008080008080008080008080993333
      CC9999CC9999CC9999CC6666993333008080008080008080993333CC3333CC33
      33CC333399333300808000808000808000808000330000660000330000808000
      8080008080808080C0C0C0C0C0C0C0C0C0B2B2B2808080008080008080008080
      8080808686869999999999998080800080800080800080800080806666667777
      77666666008080008080008080993333CC6666CC9999CC666699333300808000
      8080008080008080008080008080993333CC3333CC3333993333008080008080
      008080008080008080003300003300008080008080808080A4A0A0C0C0C0B2B2
      B280808000808000808000808000808000808000808080808099999999999980
      8080008080008080008080008080008080666666666666008080008080008080
      993333CC66669933330080800080800080800080800080800080800080800080
      80993333CC3333CC333399333300808000808000808000808000808000808000
      3300008080008080808080B2B2B2808080008080008080008080008080008080
      0080800080800080808080809999999696968080800080800080800080800080
      8000808000808066666600808000808000808099333300808000808000808000
      8080008080008080008080008080008080008080993333CC3333CC3333993333
      0080800080800080800080800080800080800080800080800080808080800080
      8000808000808000808000808000808000808000808000808000808080808086
      8686969696808080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      80008080008080008080993333CC333399333300808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080808080808686868080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080993333
      CC33339933330080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080808080868686808080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808099333399333300808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080808080808080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080809933330080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080808080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080}
    NumGlyphs = 2
  end
  object BNo: TBitBtn
    Left = 216
    Top = 104
    Width = 99
    Height = 27
    Caption = #1042#1110#1076#1084#1110#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BNoClick
    Glyph.Data = {
      B60D0000424DB60D000000000000360000002800000030000000180000000100
      180000000000800D0000C40E0000C40E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000006600006600
      8080008080008080008080008080008080008080008080008080008080000066
      0000660080800080800080800080800080800080800080800080800080800080
      8066666666666600808000808000808000808000808000808000808000808000
      8080008080666666666666008080008080008080008080008080008080008080
      0080800080800000660033FF0000CC0000660080800080800080800080800080
      800080800080800080800000660000CC0000CC00006600808000808000808000
      8080008080008080008080008080666666A4A0A0969696666666008080008080
      0080800080800080800080800080800080806666669696969999996666660080
      800080800080800080800080800080800080800000660033FF0033FF0033FF00
      00CC0000660080800080800080800080800080800080800000660000CC0000FF
      0000FF0000FF000066008080008080008080008080008080008080666666B2B2
      B2B2B2B2A4A0A096969666666600808000808000808000808000808000808066
      6666969696999999999999999999666666008080008080008080008080008080
      0080800000660000CC0033FF0033FF0033FF0000CC0000660080800080800080
      800080800000660000CC0000FF0000FF0000FF0000CC00006600808000808000
      8080008080008080008080666666A4A0A0B2B2B2B2B2B2B2B2B2969696666666
      0080800080800080800080806666669696969999999999999999999696966666
      660080800080800080800080800080800080800080800000660000CC0033FF00
      33FF0033FF0000CC0000660080800080800000660000CC0000FF0000FF0000FF
      0000CC0000660080800080800080800080800080800080800080800080806666
      66A4A0A0B2B2B2B2B2B2B2B2B299999966666600808000808066666699999999
      9999999999999999969696666666008080008080008080008080008080008080
      0080800080800080800000660000CC0033FF0033FF0033FF0000CC0000660000
      660000CC0000FF0000FF0000FF0000CC00006600808000808000808000808000
      8080008080008080008080008080008080666666A4A0A0B2B2B2B2B2B2B2B2B2
      9999996666666666669999999999999999999999999696966666660080800080
      8000808000808000808000808000808000808000808000808000808000006600
      00CC0033FF0033FF0033FF0000CC0000FF0000FF0000FF0000FF0000CC000066
      0080800080800080800080800080800080800080800080800080800080800080
      80008080666666A4A0A0B2B2B2B2B2B2B2B2B2A4A0A099999999999999999999
      9999969696666666008080008080008080008080008080008080008080008080
      0080800080800080800080800080800000660000CC0033FF0033FF0000FF0000
      FF0000FF0000FF0000CC00006600808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080666666A4A0A0B2B2B2
      B2B2B2A4A0A0A4A0A0A4A0A09999999696966666660080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      80800000660033CC0033FF0000FF0000FF0000FF0000CC000066008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      80008080008080008080666666A4A0A0B2B2B2A4A0A0A4A0A0A4A0A099999966
      6666008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800000660033CC0033FF0033FF0033
      FF0000FF0000CC00006600808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080666666B2B2B2
      B2B2B2B2B2B2B2B2B2A4A0A0A4A0A06666660080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      00660033CC0033FF0033FF0033FF0033FF0033FF0033FF0000CC000066008080
      0080800080800080800080800080800080800080800080800080800080800080
      80008080008080666666B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4
      A0A0666666008080008080008080008080008080008080008080008080008080
      0080800080800080800080800000660033CC0033FF0033FF0033FF0033CC0033
      CC0033FF0033FF0033FF0000CC00006600808000808000808000808000808000
      8080008080008080008080008080008080008080666666B2B2B2B2B2B2B2B2B2
      B2B2B2A4A0A0A4A0A0B2B2B2B2B2B2B2B2B2A4A0A06666660080800080800080
      800080800080800080800080800080800080800080800080800000660033CC00
      33FF0033FF0033FF0033CC0000660000660033CC0033FF0033FF0033FF0000CC
      0000660080800080800080800080800080800080800080800080800080800080
      80666666B2B2B2C0C0C0B2B2B2B2B2B2B2B2B2666666666666A4A0A0B2B2B2B2
      B2B2B2B2B2A4A0A0666666008080008080008080008080008080008080008080
      0080800080800000660033CC0033FF0033FF0033FF0033CC0000660080800080
      800000660000CC0033FF0033FF0033FF0000CC00006600808000808000808000
      8080008080008080008080008080666666B2B2B2C0C0C0C0C0C0C0C0C0A4A0A0
      666666008080008080666666A4A0A0B2B2B2B2B2B2B2B2B2A4A0A06666660080
      800080800080800080800080800080800080800000660033CC0033FF0033FF00
      33FF0033CC0000660080800080800080800080800000660000CC0033FF0033FF
      0033FF0033CC000066008080008080008080008080008080008080666666C0C0
      C0C0C0C0C0C0C0C0C0C0A4A0A066666600808000808000808000808066666699
      9999B2B2B2B2B2B2B2B2B2A4A0A0666666008080008080008080008080008080
      0080800000663333FF3333FF3333FF0033CC0000660080800080800080800080
      800080800080800000660000CC0033FF0033FF0033CC00006600808000808000
      8080008080008080008080666666C0C0C0C0C0C0C0C0C0A4A0A0666666008080
      008080008080008080008080008080666666999999B2B2B2B2B2B2A4A0A06666
      660080800080800080800080800080800080800080800000663333CC0033CC00
      00660080800080800080800080800080800080800080800080800000660033CC
      0033CC0000660080800080800080800080800080800080800080800080806666
      66C0C0C0B2B2B266666600808000808000808000808000808000808000808000
      8080666666A4A0A0B2B2B2666666008080008080008080008080008080008080
      0080800080800080800000660000660080800080800080800080800080800080
      8000808000808000808000808000006600006600808000808000808000808000
      8080008080008080008080008080008080666666666666008080008080008080
      0080800080800080800080800080800080800080806666666666660080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080}
    NumGlyphs = 2
  end
  object DateBeg: TDateTimePicker
    Left = 88
    Top = 64
    Width = 89
    Height = 21
    Date = 39083.000000000000000000
    Time = 39083.000000000000000000
    MaxDate = 523395.000000000000000000
    MinDate = 21916.000000000000000000
    TabOrder = 4
  end
  object DateEnd: TDateTimePicker
    Left = 216
    Top = 64
    Width = 89
    Height = 21
    Date = 39114.000000000000000000
    Time = 39114.000000000000000000
    TabOrder = 5
  end
  object XPManifest1: TXPManifest
    Left = 336
    Top = 88
  end
  object pFIBDatabase1: TpFIBDatabase
    DBName = 'E:\Works\'#1056#1072#1073#1086#1090#1072'\'#1047#1072#1076#1072#1085#1080#1077'2\Database\EX_GPP_FULL_DB.IB'
    DBParams.Strings = (
      'password=masterkey'
      'user_name=sysdba'
      'sql_role_name=')
    SQLDialect = 3
    Timeout = 0
    DesignDBOptions = []
    LibraryName = 'GDS32.DLL'
    WaitForRestoreConnect = 0
    Left = 16
    Top = 88
  end
  object pFIBDataSet1: TpFIBDataSet
    Database = pFIBDatabase1
    Transaction = pFIBTransaction1
    SelectSQL.Strings = (
      'SELECT    '
      '    LOCAL_DEPARTMENT'
      'FROM'
      '    INI_ASUP_CONSTS ')
    Left = 48
    Top = 88
    poSQLINT64ToBCD = True
    object pFIBDataSet1LOCAL_DEPARTMENT: TFIBIntegerField
      FieldName = 'LOCAL_DEPARTMENT'
    end
  end
  object pFIBTransaction1: TpFIBTransaction
    DefaultDatabase = pFIBDatabase1
    TimeoutAction = TARollback
    Left = 80
    Top = 88
  end
  object SP: TpFIBStoredProc
    Database = pFIBDatabase1
    Transaction = pFIBTransaction1
    Left = 112
    Top = 88
  end
  object Rep_Temp_Workers: TfrxReport
    Version = '3.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39114.953765914400000000
    ReportOptions.LastChange = 39120.954160694440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 162.519790000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 94.488250000000000000
          Top = 11.338590000000000000
          Width = 540.472790000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.Strings = (
            #1047#1074#1110#1090' '#1087#1086' '#1090#1080#1084#1095#1072#1089#1086#1074#1086' '#1087#1088#1080#1081#1085#1103#1090#1080#1084' '#1085#1072' '#1088#1086#1073#1086#1090#1091)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 306.141930000000000000
          Top = 45.354360000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.Strings = (
            #1074' '#1087#1110#1076#1088#1086#1079#1076#1110#1083)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590599999999990000
          Width = 710.551640000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 196.535560000000000000
          Top = 105.826840000000000000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.Strings = (
            #1079#1072' '#1087#1077#1088#1110#1086#1076':')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 306.141930000000000000
          Top = 105.826840000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 419.527830000000000000
          Top = 105.826840000000000000
          Width = 11.338590000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.Strings = (
            '-')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 430.866420000000000000
          Top = 105.826840000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 181.417440000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'FIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.Strings = (
            '[frxDBDataset1."FIO"]')
        end
        object Memo4: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 181.417440000000000000
          Width = 306.141930000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME_POST'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.Strings = (
            '[frxDBDataset1."NAME_POST"]')
        end
        object Memo5: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 487.559370000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'DATE_E'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.Strings = (
            '[frxDBDataset1."DATE_E"]')
        end
        object Memo6: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 593.386210000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'DATE_E'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.Strings = (
            '[frxDBDataset1."DATE_E"]')
        end
        object Line1: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 7.559060000000000000
          Width = 695.433520000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 177.637910000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.Strings = (
            '[DATE]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 631.181510000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.Strings = (
            '[PAGE#]')
        end
        object Memo12: TfrxMemoView
          Left = 566.929500000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.Strings = (
            #1089#1090#1088#1072#1085#1080#1094#1072)
        end
        object Memo13: TfrxMemoView
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Memo.Strings = (
            #1076#1072#1090#1072' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1086#1090#1095#1077#1090#1072':')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 181.417440000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1055#1030#1041)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 181.417440000000000000
          Width = 306.141930000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1055#1086#1089#1072#1076#1072)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 487.559370000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1044#1072#1090#1072' '#1087#1086#1095#1072#1090#1082#1091)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 589.606680000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            #1044#1072#1090#1072' '#1082#1110#1085#1094#1103' '#1087#1088#1072#1094#1110)
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."NAME_FULL"'
        object Memo3: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME_FULL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.Strings = (
            '[frxDBDataset1."NAME_FULL"]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = pFIBDataSet2
    Left = 184
    Top = 88
  end
  object pFIBDataSet2: TpFIBDataSet
    Database = pFIBDatabase1
    Transaction = pFIBTransaction1
    SelectSQL.Strings = (
      'SELECT'
      '    FIO,'
      '    NAME_FULL,'
      '    NAME_POST,'
      '    DATE_B,'
      '    DATE_E'
      
        'FROM    ASUP_REPORT_TEMP_WORK( :DATE_BEG_WORK,:DATE_END_WORK, :I' +
        'D_DEPART ) ')
    Left = 216
    Top = 88
    poSQLINT64ToBCD = True
  end
  object DataSource1: TDataSource
    DataSet = pFIBDataSet2
    Left = 16
    Top = 120
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 280
    Top = 88
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    ShowProgress = True
    Left = 248
    Top = 88
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    FixedWidth = True
    Background = False
    Left = 248
    Top = 88
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    Left = 248
    Top = 88
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport'#174
    Left = 248
    Top = 88
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    Left = 248
    Top = 88
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    Left = 248
    Top = 88
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    Left = 248
    Top = 88
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    Left = 248
    Top = 88
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'#174
    Subject = 'FastReport'#174' PDF export'
    Background = False
    Creator = 'FastReport'#174' (http://www.fast-report.com)'
    HTMLTags = True
    Left = 248
    Top = 88
  end
  object frxDesigner1: TfrxDesigner
    Restrictions = []
    Left = 312
    Top = 88
  end
end