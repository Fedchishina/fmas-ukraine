object FormOptionWork: TFormOptionWork
  Left = 366
  Top = 265
  BorderStyle = bsDialog
  Caption = 'FormOptionWork'
  ClientHeight = 196
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 290
    Height = 196
    ActivePage = TabSheetGodNabora
    Align = alClient
    TabOrder = 0
    object TabSheetGodNabora: TTabSheet
      Caption = 'TabSheetGodNabora'
      object cxLookupComboBoxGodNabora: TcxLookupComboBox
        Left = 24
        Top = 40
        Width = 241
        Height = 21
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ID_SP_GOD_NABORA'
        Properties.ListColumns = <
          item
            FieldName = 'SHORT_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DataSourceGodNabora
        TabOrder = 0
      end
      object cxButtonOK: TcxButton
        Left = 80
        Top = 134
        Width = 93
        Height = 25
        Cursor = crHandPoint
        Action = ActionOK
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000084830000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084830000FFFE000084830000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000FFFE0000FFFE0000FFFE0000FFFE00008483000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000FFFE0000FFFE00848484008484840000FFFE0000FFFE000084
          830000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008484840000FFFE0084848400FF00FF00FF00FF008484840000FFFE0000FF
          FE000084830000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0084848400FF00FF00FF00FF00FF00FF00FF00FF008484840000FF
          FE0000FFFE000084830000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
          840000FFFE0000FFFE000084830000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008484840000FFFE0000FFFE0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008484840000FFFE0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object cxButtonCansel: TcxButton
        Left = 179
        Top = 134
        Width = 94
        Height = 25
        Cursor = crHandPoint
        Action = ActionCansel
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000084000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000008400000084000000840084848400FF00FF00FF00FF00FF00FF00FF00
          FF00000084000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000008400000084000000840084848400FF00FF00FF00FF000000
          84000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000008400000084000000840084848400000084000000
          840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000084000000840000008400000084000000
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000084000000FF00000084008484
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000084000000840000008400000084000000
          840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000084000000840000008400FF00FF00000084000000
          84000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000084000000840000008400FF00FF00FF00FF00FF00FF000000
          8400000084000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000084000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000084000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object cxLabelGodNabora: TcxLabel
        Left = 7
        Top = 10
        Width = 249
        Height = 17
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 3
        Caption = 'cxLabelGodNabora'
      end
    end
    object TabSheetAdminSheet1: TTabSheet
      Caption = #1044#1083#1103' '#1072#1076#1084#1080#1085#1086#1074#1089#1082#1080#1093' '#1085#1072#1089#1090#1088#1086#1077#1082' '
      ImageIndex = 1
    end
  end
  object DataSetGodNabora: TpFIBDataSet
    Left = 4
    Top = 160
    poSQLINT64ToBCD = True
  end
  object DataSourceGodNabora: TDataSource
    DataSet = DataSetGodNabora
    Left = 59
    Top = 160
  end
  object ActionListKlassSpravEdit: TActionList
    Left = 32
    Top = 160
    object ActionOK: TAction
      Caption = 'ActionOK'
      ImageIndex = 0
      ShortCut = 121
      OnExecute = ActionOKExecute
    end
    object ActionCansel: TAction
      Caption = 'ActionCansel'
      ImageIndex = 1
      ShortCut = 27
      OnExecute = ActionCanselExecute
    end
    object ActionShowPageToAdmin: TAction
      Caption = 'ActionShowPageToAdmin'
      ShortCut = 49273
      OnExecute = ActionShowPageToAdminExecute
    end
  end
end
