object fmPremiaOrderList: TfmPremiaOrderList
  Left = 214
  Top = 213
  Width = 721
  Height = 480
  Caption = #1055#1088#1077#1084#1110#1111'/'#1084#1072#1090#1077#1088#1110#1072#1083#1100#1085#1072' '#1076#1086#1087#1086#1084#1086#1075#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    713
    446)
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonsPanel: TPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 145
    Align = alTop
    Locked = True
    TabOrder = 0
    DesignSize = (
      713
      145)
    object CancelButton: TSpeedButton
      Left = 648
      Top = 2
      Width = 62
      Height = 57
      Hint = #1047#1072#1082#1088#1080#1090#1080
      Anchors = []
      Caption = #1047#1072#1082#1088#1080#1090#1080
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDD7444DDD
        DDDDDD74477744444444D777777748888884D777777742222284D77777774222
        2284D777787742222284D7778F8742222284D777787742672784D77777774688
        8884D777777748888884D777777748888B84D77777774888BB84D7777777488B
        BB84DD77777747777777DDDD77774DDDDDDDDDDDDD777DDDDDDD}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = CloseActionExecute
    end
    object RecalcButton: TSpeedButton
      Left = 4
      Top = 2
      Width = 109
      Height = 57
      Action = RecalcAction
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36120000424D3612000000000000360000002800000030000000180000000100
        2000000000000012000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006947310069473100694731006947310069473100694731006947
        3100694731006947310069473100694731006947310069473100694731006947
        310069473100694731003C511C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        800080808000808080007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000090000072D28A0000600000006000000060000000600000006000000060
        0000006000000060000000600000006000000060000000600000006000000060
        000000600000006000000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200D4D4D40076767600767676007676760076767600767676007676
        7600767676007676760076767600767676007676760076767600767676007676
        760076767600767676007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0041C15E003CBE580037BB500032B84A002EB543002AB2
        3D0025AF360020AC2F001BA9270016A6200011A219000CA01200089D0C000399
        050000980000009800000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00C2C2C200BFBFBF00BCBCBC00B9B9B900B6B6B600B4B4
        B400B1B1B100ADADAD00AAAAAA00A7A7A700A3A3A3009F9F9F009D9D9D009999
        990097979700979797007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0045C4640041C15E002FAB45001B8D270032B84A002EB5
        430021A131000B770F000F8517001BA9270016A6200011A219000CA01200089D
        0C0002990400009800000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00C4C4C400C2C2C200B2B2B2009C9C9C00B9B9B900B6B6
        B600A9A9A9008A8A8A0093939300AAAAAA00A7A7A700A3A3A3009F9F9F009D9D
        9D0099999900979797007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF004CC86E0046C56600FFFFFF00056807001B8D280029A6
        3C00FFFFFF00FFFFFF0003670500108517001BA9280017A6210012A31A000DA0
        1300089D0C00039905000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00C8C8C800C5C5C500FFFFFF007D7D7D009D9D9D00ADAD
        AD00FFFFFF00FFFFFF007C7C7C0093939300AAAAAA00A7A7A700A4A4A4009F9F
        9F009D9D9D00999999007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0051CB75004CC86E00FFFFFF00FFFFFF0005680700FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0003670500108518001CAA290017A7220012A3
        1B000DA01300089D0C000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CBCBCB00C8C8C800FFFFFF00FFFFFF007D7D7D00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF007C7C7C0093939300ABABAB00A8A8A800A4A4
        A4009F9F9F009D9D9D007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0055CE7B0051CB7500FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0003670500118619001DAB2B0019A7
        240014A41C000EA115000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CDCDCD00CBCBCB00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007C7C7C0094949400ABABAB00A9A9
        A900A4A4A400A1A1A1007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0057CF7F0055CE7B00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00056807001C8E290034B94D00FFFFFF00FFFFFF000B77100022AD32001DAB
        2B0018A7230014A41C000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CDCDCD00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF007D7D7D009D9D9D00BABABA00FFFFFF00FFFFFF008A8A8A00AEAEAE00ABAB
        AB00A8A8A800A4A4A4007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800057CF7F00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00056807001C8D290034B94D00FFFFFF001A92260013881C0022AD
        32001DAA2A0018A723000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF007D7D7D009D9D9D00BABABA00FFFFFF009E9E9E0096969600AEAE
        AE00ABABAB00A8A8A8007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D08000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0031AC480039BC530034B94D00FFFFFF0023A3330027B1
        390021AD31001DAA2A000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00B4B4B400BCBCBC00BABABA00FFFFFF00AAAAAA00B2B2
        B200AEAEAE00ABABAB007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D0800058D0800046B966002A963D0052CC
        77004EC971003BB15500137C1C00127B1A00117B18000F7A16000E7914001689
        200028B13A0022AD32000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00CFCFCF00C0C0C000A6A6A600CCCC
        CC00C9C9C900B9B9B900909090008F8F8F008E8E8E008D8D8D008B8B8B009898
        9800B2B2B200AEAEAE007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D0800058D08000FFFFFF0034A24C002A96
        3D0052CC7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000E79
        15002DB5420029B13B000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00CFCFCF00FFFFFF00B0B0B000A6A6
        A600CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
        8C00B5B5B500B3B3B3007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D0800058D0800058D08000FFFFFF000769
        0B002A963D0052CC7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00107A
        170032B749002DB543000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00FFFFFF007F7F
        7F00A6A6A600CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D
        8D00B9B9B900B6B6B6007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D0800058D0800058D08000FFFFFF00FFFF
        FF0007690B0019802400177F2200FFFFFF00FFFFFF00FFFFFF00FFFFFF00117B
        190036BA500032B749000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00FFFFFF00FFFF
        FF007F7F7F009494940093939300FFFFFF00FFFFFF00FFFFFF00FFFFFF008E8E
        8E00BCBCBC00B9B9B9007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D0800058D0800058D0800058D08000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00127B
        1B003BBD560036BA50000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008F8F
        8F00BEBEBE00BCBCBC007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D0800058D0800058D0800058D0800058D0
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0041B65F00FFFFFF00FFFFFF00147C
        1D003FC05C003BBD56000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
        CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF009090
        9000C1C1C100BEBEBE007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D0800058D0800058D0800058D0800058D0
        800058D08000FFFFFF00FFFFFF0046B9660057CF7E0054CE7A00FFFFFF003DB3
        570046C4660040C15D000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
        CF00CFCFCF00FFFFFF00FFFFFF00C0C0C000CFCFCF00CDCDCD00FFFFFF00BABA
        BA00C5C5C500C2C2C2007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF0058D0800058D0800058D0800058D0800058D0800058D0
        800058D0800058D0800058D0800058D0800058D0800057CF7E0054CE7A0050CB
        74004BC86C0047C566000060000069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
        CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CDCDCD00CBCB
        CB00C8C8C800C6C6C6007676760080808000FF00FF00FF00FF00FF00FF00FF00
        FF0000900000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0076D48F0069473100FF00FF00FF00FF00FF00FF00FF00
        FF0092929200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00D6D6D60080808000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000090000000900000009000000090000000900000009000000090
        0000009000000090000000900000009000000090000000900000009000000090
        0000009000000090000000900000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009292920092929200929292009292920092929200929292009292
        9200929292009292920092929200929292009292920092929200929292009292
        9200929292009292920092929200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object RndButton: TSpeedButton
      Left = 113
      Top = 2
      Width = 109
      Height = 57
      Action = RndAction
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00C8B3A40069473100694731006947310069473100694731006947
        3100694731006947310069473100694731006947310069473100694731006947
        310069473100694731006947310069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400EDE5E000B7A29300B7A29300B7A29300B7A29300B7A2
        9300B7A29300B7A29300B6A19200B5A09100B5A09100B6A19200B7A29300B7A2
        9300B7A29300B7A29300B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400EFE8E300EDE5E000ECE2DE00EBE0DB00E9DDD700E6D9
        D300E3D5CF00E0D3CC00D6C8C200CDBFB700D0C1B900D8C7BE00D9C7BE00D9C7
        BE00DAC8BE00DBC9BF00B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400F2ECE800F0E9E500EEE6E200EDE4DF00E7DDD900DFD4
        CF00D8CCC700D1C7C400A9ABB900999AA500B5A9A200CBBCB400CEBEB600CEBD
        B400D6C4BB00DAC8BE00B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400F4EEEC00F2ECE800F0E9E500EDE5E100E2DAD600B7B8
        C300B5ADAA009FA2B2004581E2004E80D200958F9000AAA19F00A19EA400B7A9
        A100CDBCB300D9C7BE00B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400F6F1EF00F4EEEC00F2ECE800EFE8E400AFBEDD004A86
        E300718CBB006C87B6003D7EE800437FDF007385A8005E82C0004A81D9009C9C
        A700CEBEB600D9C7BE00B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400F8F4F200F6F1EF00F4EEEC00EFE9E500CDD1DC005D8E
        DF003B7EE9003F7EE6004E84DD005087DF004180E6003C7FEA005E82C000ABA3
        A200CFC0B800D8C7BE00B6A1920069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FAF6F600F8F4F200F4EFED00E9E4E200D4CECB007194
        CF003F7FE6007E96C000C7C3C500D5CED00083A1D8003D7FE8007587AB00A197
        9200BBAFA700CDBFB600B49F910069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FCF9F900FAF6F600F5F1EF00BBC8E0008AA3CE004983
        DE005A85CC00B4AFAD00DDD5D000E9DFDA00D2CDD2004F87E0004D81D5006E84
        AC008D95AA00C2B5AD00B19D8E0069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FDFCFC00FCF9F900F8F4F40084AAE8004282E9003B7E
        EA006089CB00ACA7A400CFC8C500E0D7D300CEC8CA005086DE003B7EE9003F7E
        E5006F92CF00CFC2BB00B39F900069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FDFCFC00FCF9F900E2E6F200C7D2E5006795
        DE004D84DC008692A800B0ABA800BEB9B50095A3BD004380E4006085C3009DA1
        B100C1BEC500DFD1CB00B6A1920069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FEFDFE00FBF9F900E3E4E9006D98
        DE003A7EEA004983DF007490BD00708BBA004883DE003C7FEA006F8CBE00B4AD
        AA00D8CDC700E4D7D200B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FDFCFD00B4CAF0003F81
        E9006D98DE006795DE003B7EEA003E7FE700678DCB005B8DDD004985E500B1B6
        C600DFD5D000E7DBD500B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F5FB00B4CA
        F000E4E5EA00C7D1E5004181E8005087E000BDBCC000C8CCD800AFC0DE00E1DA
        D600E8DEDB00EBE0DB00B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFC
        FD00FBF9F900E3E8F30084AAE9008CADE300DFDCDD00EEE8E500F0E9E600EDE6
        E100ECE4DF00ECE2DE00B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FEFDFE00FDFBFB00F9F6F500F5F1F000F4EFEE00F4EFEC00F3EDEA00F1EA
        E700EFE8E300EDE5E000B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FEFDFE00FDFBFB00FBF8F700F9F5F400F7F2F100F5F0ED00D5BF
        B100CAB5A600B7A29300B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FEFDFE00FDFBFB00FBF8F700FAF6F600C8B3A4006947
        310069473100694731006947310069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFCFC00FCF9F900C8B3A400F3EB
        E600EFE6E000E8DCD400DBC9BF0069473100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFCFC00C8B3A400EFE6
        E000E8DCD400DBC9BF0069473100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8B3A400E8DC
        D400DBC9BF0069473100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8B3A400DBC9
        BF0069473100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8B3A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3
        A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3A4006947
        3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
  end
  object FilterBox: TGroupBox
    Left = -2
    Top = 59
    Width = 715
    Height = 74
    Anchors = [akLeft, akTop, akRight]
    Caption = #1060#1110#1083#1100#1090#1088#1072#1094#1110#1103
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object AcceptFilterButton: TSpeedButton
      Left = 547
      Top = 26
      Width = 158
      Height = 31
      Action = RefreshFilterAction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
    end
    object FilterDateEnd: TCheckBox
      Left = 8
      Top = 46
      Width = 81
      Height = 17
      Caption = #1044#1072#1090#1072' '#1087#1086
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object FilterDateBeg: TCheckBox
      Left = 8
      Top = 16
      Width = 81
      Height = 17
      Caption = #1044#1072#1090#1072' '#1079
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object DateBeg: TDateEdit
      Left = 88
      Top = 14
      Width = 97
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object DateEnd: TDateEdit
      Left = 88
      Top = 44
      Width = 97
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
    object Fio: TqFSpravControl
      Left = 216
      Top = 15
      Width = 329
      Height = 21
      FieldName = 'ID_PCARD'
      DisplayName = #1055#1030#1041
      Interval = 50
      Value = Null
      LabelColor = clGreen
      Required = False
      Semicolon = True
      Asterisk = False
      Enabled = True
      Blocked = True
      TabOrder = 4
      AutoSaveToRegistry = True
      OnOpenSprav = FioOpenSprav
      DisplayText = ''
      DisplayTextField = 'FIO'
    end
    object FilterFio: TCheckBox
      Left = 200
      Top = 17
      Width = 17
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      OnClick = FilterFioClick
    end
    object FilterShowDeleted: TqFBoolControl
      Left = 200
      Top = 44
      Width = 265
      Height = 21
      FieldName = 'FILTER_SHOW_DELETED'
      DisplayName = #1055#1086#1082#1072#1079#1072#1090#1080' '#1090#1110#1083#1100#1082#1080' '#1074#1080#1083#1091#1095#1077#1085#1110' '#1085#1072#1082#1072#1079#1080
      Interval = 120
      Value = False
      LabelColor = clGreen
      Required = True
      Semicolon = False
      Asterisk = False
      Enabled = True
      Blocked = False
      TabOrder = 6
      AutoSaveToRegistry = False
      StoreAs = StoreAsTF
    end
  end
  object OrderGrid: TcxGrid
    Left = 0
    Top = 145
    Width = 713
    Height = 250
    Align = alClient
    TabOrder = 2
    object OrderGridDBTableView1: TcxGridDBTableView
      OnKeyDown = OrderGridDBTableView1KeyDown
      DataController.DataSource = Source
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'ID_ORDER'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = OrderGridDBTableView1CustomDrawCell
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.StyleSheet = qizzStyle
      object OrderGridDBTableView1DBColumn1: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' ('#1087#1088#1086#1077#1082#1090')'
        Width = 104
        DataBinding.FieldName = 'NUM_ORDER_KADR'
      end
      object OrderGridDBTableView1DBColumn2: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' ('#1087#1088#1086#1077#1082#1090')'
        Width = 93
        DataBinding.FieldName = 'DATE_ORDER_KADR'
      end
      object OrderGridDBTableView1DBColumn6: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' ('#1082#1072#1085#1094')'
        Width = 91
        DataBinding.FieldName = 'NUM_ORDER'
      end
      object OrderGridDBTableView1DBColumn7: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' ('#1082#1072#1085#1094')'
        Width = 82
        DataBinding.FieldName = 'DATE_ORDER'
      end
      object OrderGridDBTableView1DBColumn3: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1110#1090#1082#1072
        Width = 229
        DataBinding.FieldName = 'NOTE'
      end
      object OrderGridDBTableView1DBColumn4: TcxGridDBColumn
        Caption = #1058#1080#1087
        Visible = False
        Width = 143
        DataBinding.FieldName = 'PRINT_NAME'
      end
      object OrderGridDBTableView1DBColumn5: TcxGridDBColumn
        Visible = False
        DataBinding.FieldName = 'ID_STATUS'
      end
      object OrderGridDBTableView1DBColumn8: TcxGridDBColumn
        Caption = #1057#1091#1084#1072
        Width = 112
        DataBinding.FieldName = 'SUMMA_ALL'
      end
    end
    object OrderGridLevel1: TcxGridLevel
      GridView = OrderGridDBTableView1
    end
  end
  object IdUser: TqFInvisControl
    Left = 152
    Top = 296
    Width = 200
    Height = 21
    FieldName = 'ID_USER'
    DisplayName = #1053#1072#1079#1074#1072' '#1087#1086#1083#1103
    Interval = 120
    LabelColor = clGreen
    Required = True
    Semicolon = True
    Asterisk = True
    Enabled = True
    Blocked = False
    TabOrder = 3
    AutoSaveToRegistry = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 395
    Width = 713
    Height = 51
    Align = alBottom
    TabOrder = 4
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 45
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089':'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StatusText: TDBText
      Left = 80
      Top = 5
      Width = 62
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'NAME_STATUS'
      DataSource = Source
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 29
      Width = 27
      Height = 13
      Caption = #1058#1080#1087':'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object PrintName: TDBText
      Left = 80
      Top = 29
      Width = 59
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'PRINT_NAME'
      DataSource = Source
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SearchPanel: TPanel
      Left = 363
      Top = 1
      Width = 349
      Height = 49
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object SearchLabel: TLabel
        Left = 1
        Top = 8
        Width = 48
        Height = 13
        Caption = #1064#1091#1082#1072#1090#1080':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 147
        Top = 7
        Width = 81
        Height = 13
        Caption = '('#1085#1086#1084#1077#1088' '#1087#1088#1086#1077#1082#1090#1091')'
      end
      object SearchNextButton: TSpeedButton
        Left = 240
        Top = 4
        Width = 105
        Height = 19
        Caption = #1064#1091#1082#1072#1090#1080' '#1076#1072#1083#1110
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333883FF333333333330A003333333333338F883FF3333333330AAA00
          33333FFFFF8F33883FF30000000AAAAA0033888888833333883F0AAAAAAAAAAA
          AA008FFFFFFF33333F880000000AAAAA00338888888F333F88333333330AAA00
          33333333338F3F8833333333330A003333333333338F88333333333333003333
          3333333333883333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = SearchNextButtonClick
      end
      object AllLabel: TLabel
        Left = 28
        Top = 30
        Width = 277
        Height = 19
        AutoSize = False
        Caption = #1050#1083#1072#1094#1085#1110#1090#1100' '#1090#1091#1090', '#1097#1086#1073' '#1087#1086#1073#1072#1095#1080#1090#1080' '#1082#1110#1083#1100#1082#1110#1089#1090#1100' '#1085#1072#1082#1072#1079#1110#1074
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        WordWrap = True
        OnClick = AllLabelClick
      end
      object SearchEdit: TEdit
        Left = 56
        Top = 4
        Width = 89
        Height = 21
        Hint = '195.184.198.137'
        TabOrder = 0
        OnChange = SearchEditChange
      end
    end
  end
  object StyleRepository: TcxStyleRepository
    Left = 456
    Top = 32
    object stBackground: TcxStyle
      AssignedValues = [svColor]
      Color = 14745599
    end
    object stContent: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14745599
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stContentEven: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14745599
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stContentOdd: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stFilterBox: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object stFooter: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stGroup: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object stGroupByBox: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBtnFace
      TextColor = clBlack
    end
    object stHeader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stInactive: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object stIncSearch: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBtnFace
      TextColor = clBlack
    end
    object stIndicator: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object stPreview: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stSelection: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stHotTrack: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clMaroon
    end
    object qizzStyle: TcxGridTableViewStyleSheet
      Styles.Background = stBackground
      Styles.Content = stContent
      Styles.ContentEven = stContentEven
      Styles.ContentOdd = stContentOdd
      Styles.Inactive = stInactive
      Styles.IncSearch = stIncSearch
      Styles.Selection = stSelection
      Styles.FilterBox = stFilterBox
      Styles.Footer = stFooter
      Styles.Group = stGroup
      Styles.GroupByBox = stGroupByBox
      Styles.Header = stHeader
      Styles.Indicator = stIndicator
      Styles.Preview = stPreview
      BuiltIn = True
    end
  end
  object SortMenu: TPopupMenu
    Left = 488
    Top = 31
    object N1: TMenuItem
      Caption = #1059#1087#1086#1088#1103#1076#1082#1091#1074#1072#1085#1085#1103
      object Nomer: TMenuItem
        Caption = #1055#1086' '#1085#1086#1084#1077#1088#1091
      end
      object Typ: TMenuItem
        Caption = #1055#1086' '#1090#1080#1087#1091
      end
      object DateSort: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333330333333333333330A033333333333330A03333333333330AAA033
          3333333330AAA033333333330AAAAA03333333330AAAAA0333333330AAAAAAA0
          33333330000A000033333333330A033333333333330A033333333333330A0333
          33333333330A033333333333330A033333333333330003333333}
        Caption = #1055#1086' '#1076#1072#1090#1110
        ImageIndex = 10
      end
      object DateSort2: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
          33333333330A033333333333330A033333333333330A033333333333330A0333
          33333333330A033333333330000A000033333330AAAAAAA0333333330AAAAA03
          333333330AAAAA033333333330AAA0333333333330AAA03333333333330A0333
          33333333330A0333333333333330333333333333333033333333}
        Caption = #1055#1086' '#1076#1072#1090#1110
      end
      object N3: TMenuItem
        Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080' '#1091#1087#1086#1088#1103#1076#1082#1091#1074#1072#1085#1085#1103
      end
    end
  end
  object Source: TDataSource
    DataSet = DM.InputQuery
    Left = 144
    Top = 216
  end
  object ActionList: TActionList
    Left = 80
    Top = 216
    object AddOrder: TAction
      Caption = #1044#1086#1076#1072#1090#1080
      ShortCut = 45
    end
    object ModifyOrder: TAction
      Caption = #1047#1084#1110#1085#1080#1090#1080
      ShortCut = 32
      SecondaryShortCuts.Strings = (
        'F4')
    end
    object DeleteOrder: TAction
      Caption = #1042#1080#1083#1091#1095#1080#1090#1080
      ShortCut = 46
    end
    object ViewOrder: TAction
      Caption = #1055#1077#1088#1077#1075#1083#1103#1076
      ShortCut = 114
    end
    object PrintOrder: TAction
      Caption = #1044#1088#1091#1082#1091#1074#1072#1090#1080
      ShortCut = 16464
    end
    object CloseForm: TAction
      Caption = #1047#1072#1082#1088#1080#1090#1080
      ShortCut = 27
      OnExecute = CloseFormExecute
    end
    object RefreshList: TAction
      Caption = #1054#1085#1086#1074#1080#1090#1080
      ShortCut = 116
      SecondaryShortCuts.Strings = (
        'CTRL-R')
    end
    object RefreshFilterAction: TAction
      Caption = #1047#1084#1110#1085#1080#1090#1080' '#1092#1110#1083#1100#1090#1088' (CTRL-F)'
      ShortCut = 16454
      OnExecute = RefreshFilterActionExecute
    end
    object RndAction: TAction
      Caption = #1054#1082#1088#1091#1075#1083#1077#1085#1085#1103
      OnExecute = RndActionExecute
    end
    object RecalcAction: TAction
      Caption = #1055#1077#1088#1077#1092#1086#1088#1084#1091#1074#1072#1085#1085#1103
      OnExecute = RecalcActionExecute
    end
    object ShowValue: TAction
      Caption = 'ShowValue'
      ShortCut = 8315
      OnExecute = ShowValueExecute
    end
  end
  object OrdersActionControl: TqFActionControl
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE ASUP_ORDERS_DELETE(:where,:id_user);')
    KeyFields = 'Id_Order'
    RefreshAction = RefreshList
    DeleteAction = DeleteOrder
    AddFormClass = 'TOrders2EditForm'
    AddAction = AddOrder
    ModifyAction = ModifyOrder
    InfoAction = ViewOrder
    BeforePrepare = OrdersActionControlBeforePrepare
    Left = 616
    Top = 248
  end
end
