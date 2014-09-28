object FormCalendarWork: TFormCalendarWork
  Left = 430
  Top = 53
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1077#1085#1076#1072#1088
  ClientHeight = 602
  ClientWidth = 798
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DaysGrid: TStringGrid
    Left = 177
    Top = 77
    Width = 374
    Height = 314
    Align = alClient
    Color = clWhite
    ColCount = 7
    DefaultColWidth = 52
    DefaultRowHeight = 42
    FixedCols = 0
    RowCount = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
    OnDblClick = DaysGridDblClick
    OnDrawCell = DaysGridDrawCell
    OnMouseUp = DaysGridMouseUp
    OnSelectCell = DaysGridSelectCell
  end
  object Panel2: TPanel
    Left = 0
    Top = 46
    Width = 798
    Height = 31
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 112
      Top = 8
      Width = 27
      Height = 16
      Caption = #1056#1110#1082':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 269
      Top = 8
      Width = 54
      Height = 16
      Caption = #1052#1110#1089#1103#1094#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FIOLabel: TLabel
      Left = 136
      Top = 1
      Width = 5
      Height = 16
    end
    object DepartmentLabel: TLabel
      Left = 136
      Top = 18
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PostLabel: TLabel
      Left = 136
      Top = 32
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelHoliday: TLabel
      Left = 2
      Top = 7
      Width = 94
      Height = 16
      Caption = 'LabelHoliday'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelException: TLabel
      Left = 552
      Top = 7
      Width = 108
      Height = 16
      Caption = 'LabelException'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object YearEdit: TcxSpinEdit
      Left = 138
      Top = 4
      Width = 121
      Height = 24
      Properties.OnChange = YearEditExit
      TabOrder = 0
    end
    object MonthBox: TcxComboBox
      Left = 328
      Top = 3
      Width = 168
      Height = 24
      Properties.OnChange = YearEditExit
      TabOrder = 1
      Text = 'MonthBox'
    end
    object EditInc: TcxSpinEdit
      Left = 744
      Top = 4
      Width = 49
      Height = 24
      Properties.MaxValue = 100.000000000000000000
      Properties.OnChange = EditIncPropertiesChange
      TabOrder = 2
    end
  end
  object pnl1: TPanel
    Left = 551
    Top = 77
    Width = 247
    Height = 314
    Align = alRight
    TabOrder = 2
    object Grid: TcxGrid
      Left = 1
      Top = 1
      Width = 245
      Height = 312
      Align = alClient
      TabOrder = 0
      object GridDBTableView: TcxGridDBTableView
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsCustomize.ColumnFiltering = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridDBTableViewDBColumnEXC_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          OnGetDisplayText = GridDBTableViewDBColumnEXC_DATEGetDisplayText
          SortOrder = soAscending
          Width = 134
          DataBinding.FieldName = 'EXC_DATE'
        end
        object GridDBTableViewDBColumnHOURS: TcxGridDBColumn
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          Width = 109
          DataBinding.FieldName = 'COUNT_HOURS'
        end
      end
      object GridLevel: TcxGridLevel
        GridView = GridDBTableView
      end
    end
  end
  object PanelHoliday: TPanel
    Left = 0
    Top = 77
    Width = 177
    Height = 314
    Align = alLeft
    Caption = 'PanelHoliday'
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 175
      Height = 312
      Align = alClient
      TabOrder = 0
      object GridDBTableViewHoliday: TcxGridDBTableView
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsCustomize.ColumnFiltering = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          OnGetDisplayText = GridDBTableViewDBColumnEXC_DATEGetDisplayText
          SortOrder = soAscending
          DataBinding.FieldName = 'HOLIDAY_DATA'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = GridDBTableViewHoliday
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 391
    Width = 798
    Height = 211
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 8
    object StatusBar1: TdxStatusBar
      Left = 1
      Top = 3
      Width = 796
      Height = 27
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbNone
          Width = 176
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbRaised
          Width = 315
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbRaised
          Width = 320
        end>
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object StatusBar2: TdxStatusBar
      Left = 1
      Top = 30
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbNone
          Width = 176
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbRaised
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbRaised
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbRaised
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbRaised
          Width = 150
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object StatusBarWork: TdxStatusBar
      Left = 1
      Top = 70
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Color = clBtnFace
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWindowText
          PanelStyle.Font.Height = -11
          PanelStyle.Font.Name = 'MS Sans Serif'
          PanelStyle.Font.Style = [fsBold]
          PanelStyle.ParentFont = False
          Bevel = dxpbRaised
          Width = 176
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 150
        end>
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ShowHint = True
      ParentBiDiMode = False
      ParentShowHint = False
    end
    object StatusBarMain: TdxStatusBar
      Left = 1
      Top = 50
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Color = clMenuBar
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWindowText
          PanelStyle.Font.Height = -11
          PanelStyle.Font.Name = 'MS Sans Serif'
          PanelStyle.Font.Style = [fsBold]
          PanelStyle.ParentFont = False
          Bevel = dxpbRaised
          Width = 176
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 150
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Color = clMenuBar
    end
    object StatusBarWorkHoliday: TdxStatusBar
      Left = 1
      Top = 90
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clMenuBar
          Bevel = dxpbNone
          Width = 30
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Color = clMenuBar
          Bevel = dxpbRaised
          Width = 144
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 150
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object StatusBarNowork: TdxStatusBar
      Left = 1
      Top = 150
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWindowText
          PanelStyle.Font.Height = -11
          PanelStyle.Font.Name = 'MS Sans Serif'
          PanelStyle.Font.Style = [fsBold]
          PanelStyle.ParentFont = False
          Bevel = dxpbRaised
          Width = 176
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 158
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 150
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object StatusBarNoWorkHoliday: TdxStatusBar
      Left = 1
      Top = 190
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbNone
          Width = 30
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Bevel = dxpbRaised
          Width = 144
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 158
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 158
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Color = clMenuBar
    end
    object StatusBarWorkNight: TdxStatusBar
      Left = 1
      Top = 110
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbNone
          Width = 30
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Bevel = dxpbRaised
          Width = 144
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 158
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 150
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object StatusBarWorkNightHoliday: TdxStatusBar
      Left = 1
      Top = 130
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Bevel = dxpbNone
          Width = 60
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Bevel = dxpbRaised
          Width = 114
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 158
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 150
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object StatusBarOutput: TdxStatusBar
      Left = 1
      Top = 170
      Width = 796
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          Bevel = dxpbNone
          Width = 30
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Bevel = dxpbRaised
          Width = 144
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 156
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 157
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 158
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Color = clWhite
          Width = 158
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Color = clMenuBar
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        BorderStyle = bbsNone
        Caption = 'PanelMain'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 247
        FloatTop = 157
        FloatClientWidth = 0
        FloatClientHeight = 0
        IsMainMenu = True
        ItemLinks = <
          item
            Item = BtnRefresh
            Visible = True
          end
          item
            Item = BtnUpdate
            Visible = True
          end
          item
            Item = BtnDel
            Visible = True
          end
          item
            Item = ButtonPrint
            Visible = True
          end
          item
            Item = BtnExit
            Visible = True
          end>
        MultiLine = True
        Name = 'Custom 1'
        NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
        OneOnRow = True
        Row = 0
        ShowMark = False
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    Style = bmsStandard
    UseSystemFont = True
    Left = 208
    Top = 192
    DockControlHeights = (
      0
      0
      46
      0)
    object BtnRefresh: TdxBarLargeButton
      Caption = 'BtnRefresh'
      Category = 0
      Hint = 'BtnRefresh'
      Visible = ivAlways
      OnClick = RefreshButtonClick
      AutoGrayScale = False
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0092635D008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
        59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
        59008E5D59008E5D590080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0093655E00EFD3B400F6DAB600F3D5AD00F2D1A500F0CE9E00EFCB9700EFC7
        9100EEC58900EBC18200EBC08000EBC08000EBC08000EBC08000EBC08000EBC0
        8000EDC18000EABF7F0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0093655F00EED4B800F4DABB00F2D5B100F0D1AA00EFCFA300EECB9D00EDC7
        9600EDC58F00EBC18800EABF8200E9BD7F00E9BD7F00E9BD7F00E9BD7F00E9BD
        7F00EABF7F00E7BC7E0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0093655F00EED7C000F6E0C100F2D9B800F2D4B100F0D1AA00EFCFA400EECB
        9D00EDC79600EDC58F00EBC18900EABF8200E9BD7F00E9BD7F00E9BD7F00E9BD
        7F00EABF7F00E7BC7E0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0093655F00EFDAC500F7E2C700F3DCBF00F2D8B70000700000F0D1AA00EFCE
        A300B1B87400007000000070000000700000ADAD6000E9BD7F00E9BD7F00E9BD
        7F00EABF7F00E7BC7E0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0093656000F0DECC00F8E6CF00F6E0C600F3DCBD000070000004750300B2BD
        7F0000700000B1B87400EDC79600B0B46B0000700000ADAF6200E9BD7F00E9BD
        7F00EABF7F00E7BC7E0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0095666000F2E2D300FAEAD700F6E3CE00F4DEC50000700000007000000070
        0000B2BD7F00EFCEA300EECB9D00EDC79700B0B46B0000700000E9BD8100E9BD
        7F00EABF7F00E7BC7E0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0098696300F2E6DA00FAEEDE00F7E7D400F6E2CB0000700000007000000070
        000000700000F0D1A900EFCEA300EECB9D00EDC7960000700000EBC18900E9BD
        8100EABF7F00E7BC7E0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009E6E6400F4EAE100FBF2E600F8EADC00F7E6D30000700000007000000070
        00000070000000700000F0D1AA00EFCEA400EDCB9C00EDC79600EBC58F00EBC1
        8800EABF8200E7BB7E0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A3726600F6EEE900FCF6ED00F8EFE300F7EADA00F7E6D300F6E2CC00F4DE
        C500F3DCBD00F2D8B600F0D5B000F0D1AA00EFCEA300EECA9C00EDC79500EBC4
        8E00EBC28800E7BC800080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A7756800F8F3F000FEFBF600FBF3EB00F8EEE300F8EBDC00F7E7D300F6E2
        CC00F4E0C5000070000000700000007000000070000000700000EDCB9C00EDC7
        9500EDC58F00E9BF870080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00AC796900FAF6F400FFFFFE00FEF8F300FBF2EA0000700000F8EBDA00F7E6
        D300F7E2CC00F6E0C50000700000007000000070000000700000EFCEA300EECB
        9C00EEC99600EAC18E0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00B17E6B00FAF6F400FFFFFF00FFFEFB00FEF7F00000700000BAD4AA00F8EA
        DA00F7E7D300F6E2CB00B7C79200007000000070000000700000F0D1A900EFCE
        A100EECB9C00EBC5920080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00B6816C00FAF6F400FFFFFF00FFFFFF00FFFCFB00BCDAB40000700000B8D3
        AA00F8EBDC00B7CC9D0000700000B7C792000475030000700000F2D4AF00F0D1
        A900F0CFA300EDC9990080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BB846E00FAF6F400FFFFFF00FFFFFF00FFFFFF00FFFEFB00BCDAB4000070
        00000070000000700000B7CC9D00F6E2CB00F6DEC40000700000F2D8B600F0D4
        AF00EFD0A700CEB4910080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C0896F00FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FEF7
        F200FBF2EA00FAEEE200F8EBDA00F7E6D300F6E2CB00F6DEC400F3DCBD00E5CE
        AF00C4B09600A1927F0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C58C7000FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFC
        FB00FCF8F200FBF3EA00F8EEE200F8EAD900F8E7D400FAE9D000E0D0BA00B8AB
        9A00A79C8B00A497860080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00CB917300FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFEFB00FCF7F000FBF2E900FBF2E500E9D3C400A0675B00A0675B00A067
        5B00A0675B00A0675B00A0675B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00CF967400FBF7F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFCFA00FCF7F000FFFAEF00DAC0B600A0675B00DAA16B00DD98
        4F00E2903A00EA892300A5686B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D4987500FCF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFCFB00FFFEF700DDC4BC00A0675B00EAB47400EFA9
        5200F6A03600A5686B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D4987500FCF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDC7C200A0675B00EAB27300EFA7
        5100A5686B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D4987500FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2D0CE00A0675B00EDB57200A568
        6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
        6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800A0675B00A5686B00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BtnUpdate: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      OnClick = ModifyButtonClick
      AutoGrayScale = False
      LargeGlyph.Data = {
        360D0000424D360D000000000000360400002800000018000000180000000100
        200000000000000900000000000000000000000100000000000000000000FFFF
        FF0022212300534E5700FF00FF0041353800A4676900A5686B007A494A005A35
        35008B555500804E4E0091595900965D5D008B565600734747008C5757009560
        6000AA6E6E00A96D6D00A76C6C00A66B6B008C5B5B0091606000B77A7A00B679
        7900B87B7B00BB7E7E00BA7D7D009C696900CB8C8C00CA8B8B00C98B8B00C78A
        8A00CC8E8E00DA9A9A00D9999900C2898900D99A9A00DC9D9D00E1A1A100DA9C
        9C00E2A3A300EBAAAA00E2A4A400E1A3A300643B3A00734847007B504F005D38
        360093656000E2D0CE009566600093655F009869630084544C009F675B009E6E
        6400A3726600DDC7C200FBF7F6009D6D5F00865D51007350460062443C00A775
        68009F6F6000AC796900583F3700533C3500DDC4BC0096695A00B17E6B00FFFC
        FB00BB846E00B6816C00BCA19600DAC0B600BBA19600CB917300C58C7000C089
        6F00FCF8F600FAF6F400CF8E6800D4987500CF967400F6EEE900F8F3F000AA78
        56003C383500FEF7F200ECD5C200E1CCBB003E3935006A554200F2E2D300FAEE
        E300F4EAE100B77D460066523F0064513E0065524000EFDAC500F2E6DA00FBF2
        E900FEF7F000FDF8F300EAB2730062503D00604F3D00EED4B800F0DAC200F6E3
        CE00F0DECB00F7E6D300F4E3D000F8EEE300FBF3EA00EFA75100EDB57200EAB4
        7400F2D5B100E9CCAB00F4DEC500F4E1CA00F3E0CA00F7E7D400FAEAD700F8EA
        D900F7EADA00F8EBDC008E745100E5BC8400A4865F00B29268009E835F00E1BB
        88006C594100897253006A5841008E775900DEBB8C00AA8F6B00C6A67E007764
        4C00E1C09300C1A57F00836F5600E6C79D00C9AD89008C796000EDCEA700D9BD
        9900E6CEAF00F2DABC00EAD4B600F4DEC000AC9D8A00F6E1C600F7E5CE00F6E6
        D100F8EBDA00FAEEDE00FBF2E600E1B77900EABF7F00CCA66E00E9BD7F00E7BC
        7E00E5BB7D00DEB57900DAB17700D9B17600E3BA7D00D1AB7300C09C6900A989
        5D009A7E5500E7BC8100E1B77D00C7A36F00BC996900B2916300D1AB7500826C
        4B00987D5800DAB47F00C7A474007B664800B89A6F007E694C00766347006F5D
        4300D1AF7F009D876700F0D8B700EBD8BD00FCF6ED00FCF7F000E3BA7B00FEFB
        F600FFFAEF00FFFEFB00FFFEF700FFFFFE003A494800748686003443440000BD
        FF0000B1F2004E6C760000AAEA0000A6E600009FDE000093D100097BAB001A3E
        4D000087C4000084C100028AC4000B4159000C3C5200113B4E00008CD100036A
        9D0004689A000459830005679800064F7500182A33001B506E00315065003547
        56002A34400041485500012BA700001C9D002D4FF6005270FC00021DB100031E
        B1000420B8000725DC000F2ECC001839E3000C21BF00010D9D001322BD001624
        BF0001099700010A9700050DA50000058F00000082001F1F2100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093655F00A467
        6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
        6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
        6900A4676900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093655F00EED4
        B800F2DABC00F2D5B100EDCEA700E6C79D00E1C09300DEBB8C00E1BB8800E5BC
        8400E7BC8100E7BC7E00E9BD7F00E9BD7F00E9BD7F00E9BD7F00EABF7F00E7BC
        7E009F6F6000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093655F00ECD5
        C200F4DEC000F0D8B700E9CCAB00D9BD9900C9AD8900C1A57F00C6A67E00D1AF
        7F00DAB47F00E1B77D00E3BA7D00E7BC7E00E9BD7F00E9BD7F00EABF7F00E7BC
        7E009F6F6000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093655F00EFDA
        C500F6E1C600F2DABC00E6CEAF00222123003E3935008C7960009D876700AA8F
        6B00B89A6F00C7A47400D1AB7500DEB57900E5BB7D00E7BC7E00EABF7F00E7BC
        7E009F6F6000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093656000F0DE
        CB00F7E5CE00F4DEC500EAD4B6003C3835001F1F2100182A330034434400836F
        56008E7759009E835F00B2926800C7A36F00D9B17600E3BA7D00E7BC7E00E7BC
        7E009F6F6000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0095666000F2E2
        D300FAEAD700F6E3CE00F0DAC200AC9D8A00113B4E0004689A00064F75000C3C
        52003A49480077644C0089725300A4865F00BC996900D1AB7300E1B77900E3BA
        7B009F6F6000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0098696300F2E6
        DA00FAEEDE00F7E7D400F4E1CA00EBD8BD001A3E4D00036A9D00056798001B50
        6E002A344000413538006A5542007E694C00987D5800B2916300CCA66E00DAB1
        77009D6D5F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009E6E6400F4EA
        E100FBF2E600F8EBDC00F7E6D300F3E0CA007486860004598300315065009560
        6000AA6E6E00965D5D00643B3A0065524000766347008E745100A9895D00C09C
        690096695A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A3726600F6EE
        E900FCF6ED00F8EEE300F7EADA00F7E6D300F0DECB000B4159008C5B5B00CC8E
        8E00BB7E7E00AA6E6E00965D5D00643B3A0064513E006F5D4300826C4B009A7E
        5500865D5100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A7756800F8F3
        F000FEFBF600FBF3EA00F8EEE300F8EBDC00F6E6D1004E6C76009C696900DC9D
        9D00CB8C8C00BA7D7D00A96D6D00915959005A35350062503D006A5841007B66
        480073504600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AC796900FAF6
        F400FFFFFE00FDF8F300FBF2E900F8EEE300F8EBDA00F4E3D0007B504F00E2A4
        A400DC9D9D00CB8C8C00BA7D7D00A96D6D008C5757005A353500604F3D006C59
        410062443C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B17E6B00FAF6
        F400FFFFFF00FFFEFB00FEF7F000FBF3EA00FAEEE300F8EAD900E1CCBB007B50
        4F00E2A3A300DC9D9D00CA8B8B00B87B7B00A76C6C008B5656005A3535006652
        3F00583F3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B6816C00FAF6
        F400FFFFFF00FFFFFF00FFFCFB00FEF7F200FBF3EA00F8EEE300F8EBDC00E1CC
        BB0073484700E1A3A300DA9C9C00C98B8B00B87B7B00A76C6C008B5656005D38
        3600533C3500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BB846E00FAF6
        F400FFFFFF00FFFFFF00FFFFFF00FFFEFB00FEF7F200FBF3EA00FAEEE300F8EA
        D900BBA1960073484700E1A1A100DA9A9A00C98B8B00B77A7A00A66B6B008B55
        55005A353500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0896F00FAF6
        F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FEF7F200FBF2E900FAEE
        E300F8EBDA00BBA1960073484700E1A1A100D99A9A00C78A8A00B77A7A00A66B
        6B008B5555005A353500FF00FF00FF00FF00FF00FF00FF00FF00C58C7000FAF6
        F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFB00FDF8F300FBF3
        EA00F8EEE300F8EAD900BCA1960091606000EBAAAA00D9999900C78A8A00B679
        7900804E4E004148550035475600FF00FF00FF00FF00FF00FF00CB917300FAF6
        F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FCF7
        F000FBF2E900FBF2E600ECD5C20084544C0091606000EBAAAA00D9999900534E
        5700028AC40000AAEA0000A6E6000087C400FF00FF00FF00FF00CF967400FBF7
        F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFC
        FB00FCF7F000FFFAEF00DAC0B6009F675B00AA78560091606000C2898900097B
        AB0000BDFF0000BDFF0000A6E600001C9D0000008200FF00FF00D4987500FCF8
        F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFCFB00FFFEF700DDC4BC009F675B00EAB47400B77D460073474700009F
        DE0000BDFF00008CD100001C9D00010D9D00010A970000008200D4987500FCF8
        F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00DDC7C2009F675B00EAB27300EFA751007A494A000093
        D10000B1F200012BA7000725DC000420B800021DB100010A9700D4987500FFFF
        FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E2D0CE009F675B00EDB57200A5686B00FF00FF00FF00
        FF000084C1000C21BF002D4FF6000F2ECC00031EB10000058F00CF8E6800CF8E
        6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
        6800CF8E6800CF8E6800CF8E68009F675B00A5686B00FF00FF00FF00FF00FF00
        FF00FF00FF001624BF005270FC001839E30001099700FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF001322BD00050DA500FF00FF00FF00FF00}
    end
    object BtnExit: TdxBarLargeButton
      Align = iaRight
      Caption = 'BtnExit'
      Category = 0
      Hint = 'BtnExit'
      Visible = ivAlways
      OnClick = CancelButtonClick
      AutoGrayScale = False
      LargeGlyph.Data = {
        360D0000424D360D000000000000360400002800000018000000180000000100
        200000000000000900000000000000000000000100000000000000000000FFFF
        FF00FF00FF0069333400CD676800CC666700CF696A00CE686900D06A6B00D26C
        6D00D16B6C00C6666700D46E6F00D36D6E00D6707100D56F7000D7717200D973
        7400D8727300D26F7000DB757600DA747500DD777800DC767700DF797A00DE78
        7900E17B7C00E07A7B00E37D7E00E27C7D00C0696A00E57F8000E47E7F00E781
        8200E6808100E9838400E8828300EB858600EA848500ED878800EC868700B366
        6700EF898A00EE888900B4676800F18B8C00F08A8B00B6696A00F48E8F00F38D
        8E00F28C8D00B0666700F6909100F58F9000E7878800B96C6D00F8929300F791
        9200BB6E6F00FB959600FA949500F9939400FD979800FC969700BE717200AF68
        6900FF999A00FE989900C0737400F9969700C3767700F2939400DF898A00C87B
        7C00C67C7D00C0797A00FEA2A300A76C6D00FDA8A900F3A6A700FCAFB000ECA6
        A700F0AAAB00FBB6B700FABCBD00F5BBBC00F2B9BA00F9C5C600B86B6B00AE66
        6600BD707000C2757500C5787800C77A7A00A7666600CA7D7D00CD808000CC7F
        7F00A3666600A0666600B3737300AD7070009A666600F0B0B000F9C2C200F2D9
        C000FFFFDD00E2F8CC00C7F0BC0073B8760059B2670079DD900060D6810033CB
        6700000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A66660069333400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009A6666009A66
        6600A3666600A766660069333400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF009A6666009A666600A0666600B0666700C666
        6700CC666700B366670069333400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A6666009A666600AF686900C0696A00CF696A00CE686900CD67
        6800CD676800B366670069333400AE6666009A6666009A6666009A6666009A66
        66009A6666009A6666009A6666009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600D26F7000D56F7000D46E6F00D36D6E00D26C6D00D16B
        6C00D06A6B00B467680069333400FEA2A300FDA8A900FCAFB000FBB6B700FABC
        BD00F9C2C200F9C5C600F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600D9737400D8727300D7717200D6707100D56F7000D46E
        6F00D36D6E00B6696A006933340059B2670033CB670033CB670033CB670033CB
        670033CB670033CB6700F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600DC767700DB757600DA747500D9737400D8727300D771
        7200D6707100B86B6B006933340059B2670033CB670033CB670033CB670033CB
        670033CB670033CB6700F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600DF797A00DF797A00DE787900DD777800DC767700DB75
        7600DA747500B96C6D006933340059B2670033CB670033CB670033CB670033CB
        670033CB670033CB6700F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600E37D7E00E27C7D00E17B7C00E07A7B00DF797A00DE78
        7900DD777800BB6E6F006933340059B2670033CB670033CB670033CB670033CB
        670033CB670033CB6700F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600E6808100E57F8000E47E7F00E37D7E00E27C7D00E17B
        7C00E07A7B00BD7070006933340059B2670033CB670033CB670033CB670033CB
        670033CB670033CB6700F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600E9838400E8828300E7818200E6808100E7878800ECA6
        A700E47E7F00BE7172006933340073B8760033CB670033CB670033CB670033CB
        670033CB670033CB6700F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600ED878800EC868700EB858600EA848500F2B9BA00FFFF
        FF00F0B0B000C073740069333400F2D9C000C7F0BC0079DD900079DD900060D6
        810060D6810060D68100F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600F08A8B00EF898A00EE888900ED878800F5BBBC00FFFF
        FF00F0AAAB00C275750069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00E2F8CC00E2F8CC00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600F38D8E00F28C8D00F18B8C00F08A8B00EF898A00F3A6
        A700ED878800C376770069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00FFFFDD00FFFFDD00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600F6909100F6909100F58F9000F48E8F00F38D8E00F28C
        8D00F18B8C00C578780069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00FFFFDD00FFFFDD00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600FA949500F9939400F8929300F7919200F6909100F58F
        9000F48E8F00C77A7A0069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00FFFFDD00FFFFDD00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600FD979800FC969700FB959600FA949500F9939400F892
        9300F7919200C87B7C0069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00FFFFDD00FFFFDD00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600FF999A00FF999A00FE989900FD979800FD979800FC96
        9700FB959600CA7D7D0069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00FFFFDD00FFFFDD00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600FF999A00FF999A00FF999A00FF999A00FF999A00FE98
        9900FE989900CC7F7F0069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00FFFFDD00FFFFDD00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A666600F9969700FF999A00FF999A00FF999A00FF999A00FF99
        9A00FF999A00CD80800069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00FFFFDD00FFFFDD00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A6666009A666600C0797A00DF898A00FF999A00FF999A00FF99
        9A00FF999A00CD80800069333400F2D9C000FFFFDD00FFFFDD00FFFFDD00FFFF
        DD00FFFFDD00FFFFDD00F9C5C6009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF009A6666009A666600A76C6D00C67C7D00F293
        9400FF999A00CD80800069333400A76666009A6666009A6666009A6666009A66
        66009A6666009A6666009A6666009A666600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009A6666009A66
        6600AD707000B373730069333400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009A66660069333400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BtnDel: TdxBarLargeButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnClick = BtnDelClick
      AutoGrayScale = False
      LargeGlyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0005B70005B70005B7FF00FFFF00FFFF00FF0005B70005B70005
        B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0005B70005B70005B7FF00FFFF00FFFF00FFFF00FF
        0005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00FFFF00FFFF
        00FFFF00FFFF00FF0005B70005B70005B70005B70005B7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B700
        05B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B7
        0005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006
        F60005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF0005B700
        05B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00FFFF00FF0005
        B70005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B7
        0005B70005B70005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0005B70005B70006F60005B70006F60005B70005B7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70006F60005B7FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70006F60005B70005
        B70006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70006F6
        0005B70006F60006F60006F60005B70006F6FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F600
        06F60006F60005B70006F6FF00FFFF00FF0006F60006F60006F60006F6FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0006F60006F60005B70006F60006F6FF00FFFF00FFFF00FFFF00FF0006F600
        06F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0006F60006F60006F60006F60006F6FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0006F60006F60006F60006F60006F6FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F6FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F60006F60006F6FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0006F6FF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F60006
        F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F6
        0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object ButtonPrint: TdxBarLargeButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnClick = ButtonPrintClick
      AutoGrayScale = False
      LargeGlyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C
        6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF6C6A6AB0ADAD9692938E8A8B6C6A6A6C6A6A817E7F6C6A6ADDDCDCD0CFCF6C
        6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF6C6A6AD5D4D4C6C4C4A19F9FA19F9FA19F9F8381825C5B5BBCBC
        BCCECECECFCFCFD1D1D1D3D3D3CAC9C96C6A6A6C6A6A6C6A6AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF6C6A6AD8D7D7E0DEDEC0BFBFA19F9FA19F9FA19F9F
        6260600000000000001616165D5D5DA9A9A9CACACACACACACACACACACACAC1C0
        C06C6A6A6C6A6A6C6A6AFF00FFFF00FF6C6A6AD3D3D3D4D3D3CFCFCF8C8A8A81
        7F7F817F7F817F7F6C6A6A1414140808080000000000000000001616165D5D5D
        A9A9A9CACACACACACAB7B6B6B7B6B66C6A6AFF00FF6C6A6ACACACACACACAC6C6
        C68E8C8CB8B5B5B6B4B4A19F9FA19F9F9F9D9D9997979390918280805250502B
        2A2A080808000000000000161616646464817E7F6C6A6AFF00FFFF00FF6C6A6A
        CACACAC5C5C58E8C8CD7D4D4F7F6F6F6F4F4F2F0F0E0DEDECAC7C7B6B5B5A5A3
        A3A19F9FA19F9F9E9A9C9390916865662322230303031919199997976C6A6AFF
        00FFFF00FF6C6A6AC5C5C58E8C8CE7E6E6F7F6F6F7F6F6F6F4F4F2F0F0EEEDED
        EAEAEAE7E6E6E3E2E2D4D3D3C2C1C1AFADADA19F9FA19F9F9997978280806C6A
        6A9F9D9D6C6A6AFF00FFFF00FF6C6A6A8E8C8CEFEEEEF7F6F6F7F6F6F7F6F6F6
        F4F4D5D3D4867B7E958B8EC1BFBFDDDCDCE0E0E0DCDCDCD8D8D8D1D1D1C2C1C1
        B2B0B0A19F9F9C99996C6A6A6C6A6AFF00FFFF00FF6C6A6ACECBCCF7F6F6F7F6
        F6F7F6F6F7F6F6CFCBCCAFACADADABAB9E989883797B75696B898081ABA5A6C7
        C6C6D5D5D5D1D1D1CECECEC9C7C7BBBABAA6A4A46C6A6AFF00FFFF00FFFF00FF
        6C6A6A6C6A6ACECBCCEDEBEBAFA4A56B5D5F766A6C83787A9C9697ACAAAAB2B0
        B0ABA7A9989192817778847A7D938C8EBFBFBFCBCBCBCACACAC0C0C06C6A6AFF
        00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6ABD8281AF8A737D5E51665456
        6554576D5E626D5E62898081A09A9CAFACADB2B0B0A49FA0CAC9CACBCBCBB7B6
        B66C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FF
        D4ABFFD0A1FFCB98D5A57BA1785C7B665F6050536656596F62658E8687CECCCC
        CFCFCFA5A4A46C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFBD8281FFD9B2FFD4A9FFCFA0FFCA97FFC68EFFC186FFBF81FFC084BD
        82816C6A6A6C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFBD8281FFDDBAFFD8B1FFD3A7FFCE9EFFCA96FFC5
        8CFFC084FFC084BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE5CBFFE1C2FFDCB8FFD7AF
        FFD3A6FFCE9DFFC995FFC48BBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFEAD4FF
        E5CAFFE0C0FFDAB7FFD7ADFFD1A5FFCC9CFFC792BD8281FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFBD8281FFEEDCFFE9D1FFE3C9FFE0BFFFDAB6FFD5ACFFD0A3F7C297BD8281FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFF7EEFFF2E3FFEDDAFFE7D0FFE3C7FFDEBDFFD9B4FFD4
        ABBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFBD8281FFFAF3FFFAF3FFF6EDFFF0E2FFEBD9FFE7CF
        FFE2C5FFDDBCF2C7A9BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD8281BD8281FF
        F4EBFFF0E1FFEBD7FFE6CEFBDCC0BD8281FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFBD8281BD8281BD8281BD8281BD8281FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
end
