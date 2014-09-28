object AddPostForm: TAddPostForm
  Left = 202
  Top = 12
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1086#1076#1072#1090#1080' '#1087#1086#1089#1072#1076#1091
  ClientHeight = 479
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PostLabel: TLabel
    Left = 24
    Top = 48
    Width = 95
    Height = 13
    Caption = #1053#1072#1079#1074#1072' '#1087#1086#1089#1072#1076#1080':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CategoryLabel: TLabel
    Left = 24
    Top = 80
    Width = 68
    Height = 13
    Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object HolidayLabel: TLabel
    Left = 24
    Top = 112
    Width = 70
    Height = 13
    Caption = #1042#1110#1076#1087#1091#1089#1090#1082#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FC_NamePost: TFieldControl
    Left = 368
    Top = 45
    Width = 18
    Height = 18
    Control = NamePostEdit
    ReadFromField = DetailsQueryNAME_POST
    Title = '"'#1055#1086#1089#1072#1076#1072'"'
    MaxLength = 100
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object FC_Category: TFieldControl
    Left = 368
    Top = 77
    Width = 18
    Height = 18
    Control = CategoryBox
    ReadFromField = DetailsQueryID_CATEGORY
    Title = '"'#1050#1072#1090#1077#1075#1086#1088#1110#1103'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object FC_Holiday: TFieldControl
    Left = 368
    Top = 109
    Width = 18
    Height = 18
    Control = HolidayEdit
    ReadFromField = DetailsQueryHOLIDAY_LONG
    Required = False
    Title = '"'#1042#1110#1076#1087#1091#1089#1090#1082#1072'"'
    MaxLength = 3
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object CodeLabel: TLabel
    Left = 24
    Top = 16
    Width = 73
    Height = 13
    Caption = #1050#1086#1076' '#1087#1086#1089#1072#1076#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FC_Code: TFieldControl
    Left = 368
    Top = 16
    Width = 18
    Height = 18
    Control = CodeEdit
    ReadFromField = DetailsQueryPOST_CODE
    Title = '"'#1050#1086#1076' '#1087#1086#1089#1072#1076#1080'"'
    MaxLength = 10
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object MinLabel: TLabel
    Left = 24
    Top = 204
    Width = 52
    Height = 13
    Caption = #1052#1110#1085#1110#1084#1091#1084':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object MaxLabel: TLabel
    Left = 200
    Top = 204
    Width = 67
    Height = 13
    Caption = #1052#1072#1082#1089#1080#1084#1091#1084':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object FC_Okl_Fork: TFieldControl
    Left = 256
    Top = 176
    Width = 18
    Height = 18
    Control = Okl_Fork_Box
    ReadFromField = DetailsQueryOKL_FORK
    Title = '"'#1042#1080#1082#1086#1088#1080#1089#1090#1086#1074#1091#1074#1072#1090#1080' '#1074#1080#1083#1082#1091' '#1086#1082#1083#1072#1076#1091'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object FC_Okl_Min: TFieldControl
    Left = 176
    Top = 200
    Width = 18
    Height = 18
    Control = OklMinEdit
    ReadFromField = DetailsQueryOKL_MIN
    Required = False
    Title = '"'#1052#1110#1085#1110#1084#1091#1084'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object FC_Okl_Max: TFieldControl
    Left = 368
    Top = 200
    Width = 18
    Height = 18
    Control = OklMaxEdit
    ReadFromField = DetailsQueryOKL_MAX
    Required = False
    Title = '"'#1052#1072#1082#1089#1080#1084#1091#1084'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object FC_Main_Worker: TFieldControl
    Left = 240
    Top = 232
    Width = 18
    Height = 18
    Control = Main_Worker
    ReadFromField = DetailsQueryMAIN_WORKER
    Title = '"'#1054#1089#1085#1086#1074#1085#1080#1081' '#1074#1080#1088#1086#1073#1085#1080#1095#1080#1081' '#1088#1086#1073#1110#1090#1085#1080#1082'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object FC_OneSPZ: TFieldControl
    Left = 240
    Top = 264
    Width = 18
    Height = 18
    Control = OneSPZ
    ReadFromField = DetailsQueryONE_SPZ
    Title = '"'#1042#1110#1076#1085#1086#1089#1080#1090#1080' '#1090#1110#1083#1100#1082#1080' '#1085#1072' '#1086#1076#1085#1086' '#1064#1055#1047'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object FC_SPZ: TFieldControl
    Left = 368
    Top = 296
    Width = 18
    Height = 18
    Control = SPZBox
    ReadFromField = DetailsQueryID_SPZ
    Required = False
    Title = '"'#1064#1055#1047'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object SPZLabel: TLabel
    Left = 88
    Top = 296
    Width = 32
    Height = 13
    Caption = #1064#1055#1047':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 24
    Top = 144
    Width = 79
    Height = 13
    Caption = #1059#1084#1086#1074#1080' '#1087#1088#1072#1094#1110':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FC_Work_Cond: TFieldControl
    Left = 368
    Top = 141
    Width = 18
    Height = 18
    Control = WorkCondBox
    ReadFromField = DetailsQueryID_WORK_COND
    Title = '"'#1059#1084#1086#1074#1080' '#1087#1088#1072#1094#1110'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
    Default = 1
  end
  object PropertiesLabel: TLabel
    Left = 24
    Top = 344
    Width = 73
    Height = 13
    Caption = #1042#1083#1072#1089#1090#1080#1074#1086#1089#1090#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object AddButton: TSpeedButton
    Left = 351
    Top = 364
    Width = 34
    Height = 65
    Glyph.Data = {
      8E0B0000424D8E0B00000000000036000000280000002C000000160000000100
      180000000000580B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFF9966669966669966669966669966669966669966669966669966669966
      66996666996666996666996666996666996666996666FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF969696999999999999999999999999999999999999999999999999
      999999999999999999999999999999999999999999999999FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF996666F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6FFCC99FF
      CC99FFCC99FFCC99FFCC99FFCC99FFCC99FFCC99FFCC66996666FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF969696DDDDDDDDDDDDD7D7D7D7D7D7CCCCCCCCCCCCCCCC
      CCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0969696FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF996666F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6
      FFCC99FFCC99FFCC99FFCC66FFCC66FFCC66FFCC66FFCC66CCCC66996666FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF969696DDDDDDDDDDDDDDDDDDD7D7D7D7D7D7CC
      CCCCCCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0969696
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996666FFCCCCFFECCCF0CAA6F0CAA6F0CA
      A6F0CAA6F0CAA6FFCC99FFCC99FFCC99FFCC66FFCC66FFCC66FFCC66CCCC6699
      6666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696E3E3E3DDDDDDDDDDDDDDDDDD
      D7D7D7D7D7D7CCCCCCCCCCCCCCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996666FFECCCFFECCCF0CAA6F0
      CAA6F0CAA6F0CAA6F0CAA6F0CAA6FFCC99FFCC99FFCC99FFCC66FFCC66FFCC66
      CCCC66996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696E3E3E3E3E3E3DDDD
      DDDDDDDDDDDDDDD7D7D7D7D7D7CCCCCCCCCCCCCCCCCCC0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996666FFECCCFFECCC
      FFECCCF0CAA6F0CAA6F0CAA6CCCC99CCCC99CCCC99CCCC99CCCC99FFCC99FFCC
      66FFCC66CCCC66996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696E3E3E3E3
      E3E3E3E3E3DDDDDDDDDDDDD7D7D7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996666EAEA
      EAFFECCCFFECCCFFECCCFFECCC003300003300003300003300999966CCCC99FF
      CC99FFCC99FFCC66CCCC66996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696
      EAEAEAEAEAEAE3E3E3E3E3E3E3E3E3868686868686868686868686969696C0C0
      C0CCCCCCC0C0C0C0C0C0C0C0C0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
      6666EAEAEAFFECCCFFECCCF0CAA6F0CAA6003300009900009900003300999966
      CC9999CCCC99CCCC99FFCC99CCCC66996666FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF999999EAEAEAEAEAEAE3E3E3D7D7D7CCCCCC868686B2B2B2A4A0A086868696
      9696B2B2B2C0C0C0C0C0C0C0C0C0C0C0C0969696FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF996666F1F1F1F1F1F1D7D7D7B2B2B2A4A0A00033000099330099000033
      00999966999966999966CCCC99FFCC99CCCC99996666FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF999999F1F1F1F1F1F1DDDDDDB2B2B2A4A0A0868686B2B2B2B2B2B2
      868686868686868686969696C0C0C0C0C0C0C0C0C0969696FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF996666F8F8F8F1F1F100330000330000330000330000993300
      9933003300003300003300003300CCCC99FFCC99FFCC99996666FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF999999F1F1F1F1F1F1868686868686868686868686B2B2
      B2B2B2B2868686868686868686868686C0C0C0CCCCCCC0C0C0969696FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF996666F8F8F8F8F8F800330033CC3333CC3333CC33
      33CC33009933009933009933009900003300CCCC99F0CAA6FFCC99996666FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0FFFFFFFFFFFF868686CCCCCCCCCCCCC0
      C0C0C0C0C0C0C0C0B2B2B2B2B2B2B2B2B2868686C0C0C0CCCCCCCCCCCC999999
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC6666F8F8F8FFFFFF00330033CC6633CC
      3333CC3333CC3333CC3300CC33009933009933003300CCCC99F0CAA6F0CAA699
      6666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0FFFFFFFFFFFF868686D7D7D7
      D7D7D7CCCCCCCCCCCCC0C0C0C0C0C0C0C0C0B2B2B2868686C0C0C0D7D7D7CCCC
      CC999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966F8F8F8FFFFFF00330000
      330000330000330033CC3333CC33003300003300003300003300F0CAA6F0CAA6
      F0CAA6996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0FFFFFFFFFFFF8686
      86868686868686868686D7D7D7CCCCCC868686868686868686868686D7D7D7D7
      D7D7CCCCCC999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966F8F8F8FFFFFF
      FFFFFFFFFFFFF8F8F800330033CC6633CC66003300A4A0A0F0CAA6FFECCCF0CA
      A6F0CAA6CCCC99996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF868686DDDDDDD7D7D7868686A4A0A0CCCCCCE3E3E3
      DDDDDDD7D7D7C0C0C0868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966F8F8
      F8FFFFFFFFFFFFFFFFFFFFFFFF00330033CC6633CC66003300B2B2B2F0CAA6FF
      ECCCF0CAA6CCCC99999966996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686DDDDDDDDDDDD868686B2B2B2D7D7
      D7E3E3E3D7D7D7C0C0C0A4A0A0868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC
      9966F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF003300003300003300003300D7D7D7
      FFECCCFFECCCB2B2B2999999969696996666FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686868686868686868686DD
      DDDDE3E3E3EAEAEAC0C0C0B2B2B2B2B2B2868686FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFCC9966F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1
      F1F1F1F1FFCCCC996666996666996666996666996666FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F1F1F1F1F1F1DDDDDD969696969696969696969696969696FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFCC9966F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFF8F8F8CBCBCB996666FF9966FF9933996666FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDDDDDD969696B2B2B2A4A0A0999999FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFCC9966F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFCCCCCC996666FF9966996666FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD969696B2B2B2999999FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7996666996666FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3969696999999FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966F0CAA6F0CAA6F0CAA6F0
      CAA6F0CAA6F0CAA6F0CAA6F0CAA6C0C0C0C0C0C0CC9999996666FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2B2B2B2B2B2B2B2B2
      B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2969696FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 2
    OnClick = AddButtonClick
  end
  object FC_NotDigit: TFieldControl
    Left = 198
    Top = 320
    Width = 18
    Height = 18
    Control = NotDigitBox
    ReadFromField = DetailsQueryNOT_DIGIT
    Required = False
    Title = '"'#1053#1077' '#1074#1080#1082#1086#1088#1080#1089#1090#1086#1074#1091#1108' '#1088#1086#1079#1088#1103#1076'"'
    MaxLength = 0
    ExactLength = 0
    CapitalizeStyle = csNone
  end
  object OkButton: TBitBtn
    Left = 110
    Top = 448
    Width = 97
    Height = 25
    Caption = #1043#1072#1088#1072#1079#1076
    Default = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 11
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
    Left = 238
    Top = 448
    Width = 97
    Height = 25
    Cancel = True
    Caption = #1042#1110#1076#1084#1110#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 12
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
  object NamePostEdit: TCheckEdit
    Left = 136
    Top = 44
    Width = 225
    Height = 21
    MaxLength = 100
    TabOrder = 1
    InputSet = isAll
  end
  object CategoryBox: TSpComboBox
    Left = 136
    Top = 76
    Width = 225
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnEnter = CategoryBoxEnter
    ItemCount = 5
    SpOpenItem = '* '#1044#1086#1074#1110#1076#1085#1080#1082' ...'
    AutoDrop = True
    SpParams.Table = 'Sp_Category'
    SpParams.IdField = 'Id_Category'
    SpParams.SpFields = 'Name_Category'
    SpParams.Title = #1050#1072#1090#1077#1075#1086#1088#1110#1111
    SpParams.ComboField = 'Name_Category'
    SpParams.ColumnNames = #1050#1072#1090#1077#1075#1086#1088#1110#1103
    SpParams.InsertProcName = 'Sp_Category_Insert'
    SpParams.UpdateProcName = 'Sp_Category_Update'
    SpParams.DeleteProcName = 'Sp_Category_Delete'
    SpParams.DontHideFirstColumn = False
    SpParams.SpMode = [spfAdd, spfModify, spfDelete, spfFind, spfSelect]
  end
  object HolidayEdit: TCheckEdit
    Left = 136
    Top = 108
    Width = 225
    Height = 21
    MaxLength = 3
    TabOrder = 3
    InputSet = isDigits
  end
  object CodeEdit: TCheckEdit
    Left = 136
    Top = 12
    Width = 225
    Height = 21
    MaxLength = 10
    TabOrder = 0
    InputSet = isAll
  end
  object Okl_Fork_Box: TCheckBox
    Left = 24
    Top = 176
    Width = 225
    Height = 17
    Caption = #1042#1080#1082#1086#1088#1080#1089#1090#1086#1074#1091#1074#1072#1090#1080' '#1074#1080#1083#1082#1091' '#1086#1082#1083#1072#1076#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Okl_Fork_BoxClick
    OnEnter = CategoryBoxEnter
  end
  object OklMinEdit: TCheckEdit
    Left = 96
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 6
    Visible = False
    InputSet = isDigitsDot
  end
  object OklMaxEdit: TCheckEdit
    Left = 288
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 7
    Visible = False
    InputSet = isDigitsDot
  end
  object Main_Worker: TCheckBox
    Left = 24
    Top = 232
    Width = 209
    Height = 17
    Caption = #1054#1089#1085#1086#1074#1085#1080#1081' '#1074#1080#1088#1086#1073#1085#1080#1095#1080#1081' '#1088#1086#1073#1110#1090#1085#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnEnter = CategoryBoxEnter
  end
  object OneSPZ: TCheckBox
    Left = 24
    Top = 264
    Width = 209
    Height = 17
    Caption = #1042#1110#1076#1085#1086#1089#1080#1090#1080' '#1090#1110#1083#1100#1082#1080' '#1085#1072' '#1086#1076#1085#1077' '#1064#1055#1047
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = OneSPZClick
    OnEnter = CategoryBoxEnter
  end
  object SPZBox: TSpComboBox
    Left = 136
    Top = 292
    Width = 217
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    Visible = False
    OnEnter = CategoryBoxEnter
    ItemCount = 5
    SpOpenItem = '...'#1030#1085#1096#1077
    AutoDrop = True
    SpParams.Table = 'Ini_SPZ'
    SpParams.IdField = 'Id_SPZ'
    SpParams.SpFields = 'Name_SPZ'
    SpParams.Title = '"'#1064#1080#1092#1088#1080' '#1074#1080#1088#1086#1073#1085#1080#1095#1080#1093' '#1074#1080#1090#1088#1072#1090'"'
    SpParams.ComboField = 'Name_SPZ'
    SpParams.ColumnNames = #1064#1080#1092#1088','#1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103
    SpParams.SelectProcName = 'Ini_SPZ_Select'
    SpParams.InsertProcName = 'Ini_SPZ_Insert'
    SpParams.UpdateProcName = 'Ini_Spz_Update'
    SpParams.DeleteProcName = 'Ini_SPZ_Delete'
    SpParams.DontHideFirstColumn = False
    SpParams.SpMode = [spfAdd, spfModify, spfDelete, spfFind, spfSelect]
    SpParams.AddFormName = 'AddSpzForm'
  end
  object WorkCondBox: TSpComboBox
    Left = 136
    Top = 140
    Width = 225
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnEnter = CategoryBoxEnter
    ItemCount = 5
    SpOpenItem = '...'#1030#1085#1096#1077
    AutoDrop = True
    SpParams.Table = 'Ini_Work_Cond'
    SpParams.IdField = 'Id_Work_Cond'
    SpParams.SpFields = 'Name_Work_Cond'
    SpParams.Title = #1059#1084#1086#1074#1080' '#1087#1088#1072#1094#1110
    SpParams.ComboField = 'Name_Work_Cond'
    SpParams.ColumnNames = #1053#1072#1079#1074#1072' '#1091#1084#1086#1074#1080' '#1087#1088#1072#1094#1110
    SpParams.DontHideFirstColumn = False
    SpParams.SpMode = [spfFind, spfSelect]
  end
  object PropListBox: TCheckListBox
    Left = 24
    Top = 360
    Width = 321
    Height = 73
    Flat = False
    ItemHeight = 13
    Sorted = True
    TabOrder = 13
  end
  object NotDigitBox: TCheckBox
    Left = 24
    Top = 320
    Width = 177
    Height = 17
    Caption = #1053#1077' '#1074#1080#1082#1086#1088#1080#1089#1090#1086#1074#1091#1108' '#1088#1086#1079#1088#1103#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = OneSPZClick
    OnEnter = CategoryBoxEnter
  end
  object DetailsQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT  Id_Category,  Post_Code, Name_Post, Holiday_Long, Okl_Fo' +
        'rk,'
      
        'Okl_Min, Okl_Max, Main_Worker, One_SPZ, Id_SPZ, Id_Work_Cond, No' +
        't_Digit'
      'FROM Sp_Post P'
      'WHERE P.Id_Post = :Id_Post')
    Left = 24
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_Post'
        ParamType = ptUnknown
      end>
    object DetailsQueryID_CATEGORY: TIntegerField
      FieldName = 'ID_CATEGORY'
      Required = True
    end
    object DetailsQueryNAME_POST: TIBStringField
      FieldName = 'NAME_POST'
      Required = True
      Size = 100
    end
    object DetailsQueryHOLIDAY_LONG: TIntegerField
      FieldName = 'HOLIDAY_LONG'
      Required = True
    end
    object DetailsQueryPOST_CODE: TIBStringField
      FieldName = 'POST_CODE'
      Required = True
      Size = 10
    end
    object DetailsQueryOKL_FORK: TIBStringField
      FieldName = 'OKL_FORK'
      Required = True
      Size = 1
    end
    object DetailsQueryOKL_MIN: TIBBCDField
      FieldName = 'OKL_MIN'
      Precision = 9
      Size = 2
    end
    object DetailsQueryOKL_MAX: TIBBCDField
      FieldName = 'OKL_MAX'
      Precision = 9
      Size = 2
    end
    object DetailsQueryMAIN_WORKER: TIBStringField
      FieldName = 'MAIN_WORKER'
      Required = True
      Size = 1
    end
    object DetailsQueryONE_SPZ: TIBStringField
      FieldName = 'ONE_SPZ'
      Required = True
      Size = 1
    end
    object DetailsQueryID_SPZ: TIntegerField
      FieldName = 'ID_SPZ'
    end
    object DetailsQueryID_WORK_COND: TIntegerField
      FieldName = 'ID_WORK_COND'
      Required = True
    end
    object DetailsQueryNOT_DIGIT: TIBStringField
      FieldName = 'NOT_DIGIT'
      Origin = 'SP_POST.NOT_DIGIT'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object BufferQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT First_PBKey, Last_PBKey FROM ASUP_LTD_ONE_POST_EXPORT(:Id' +
        '_Post)')
    Left = 344
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id_Post'
        ParamType = ptUnknown
      end>
  end
  object AllPropQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT Id_Post_Prop, Name_Post_Prop'
      'FROM Sp_Post_Prop_Select'
      'ORDER BY Name_Post_Prop')
    Left = 168
    Top = 392
  end
  object PropQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT Name_Post_Prop FROM'
      'Post_Properties_Select(:Id_Post)')
    Left = 128
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id_Post'
        ParamType = ptUnknown
      end>
  end
  object WritePropQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'EXECUTE PROCEDURE Post_Property_Change :Id_Post, :Id_Post_Prop, ' +
        ':Flag')
    Left = 208
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id_Post'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Id_Post_Prop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Flag'
        ParamType = ptUnknown
      end>
  end
  object NBuffQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 304
    Top = 408
  end
end
