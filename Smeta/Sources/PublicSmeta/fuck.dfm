object pub_spr_smet: Tpub_spr_smet
  Left = 269
  Top = 197
  Width = 705
  Height = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 353
    Top = 42
    Height = 343
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 697
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 693
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 680
      Height = 38
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 56
      Caption = 'ToolBar1'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = SmallImages
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      object ViewButton: TToolButton
        Left = 0
        Top = 0
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1086#1073#1098#1077#1082#1090' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
        Caption = #1042#1099#1073#1088#1072#1090#1080
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = ViewButtonClick
      end
      object ToolButton3: TToolButton
        Left = 56
        Top = 0
        Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
        Caption = #1054#1073#1085#1086#1074#1080#1090#1080
        ImageIndex = 5
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton3Click
      end
      object ToolButton5: TToolButton
        Left = 112
        Top = 0
        Width = 353
        Caption = 'ToolButton5'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 465
        Top = 0
        Hint = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
        Caption = #1042#1099#1093#1086#1076
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton4Click
      end
    end
  end
  object Panel1: TPanel
    Left = 356
    Top = 42
    Width = 341
    Height = 343
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 198
      Width = 339
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object Panel2: TPanel
      Left = 1
      Top = 201
      Width = 339
      Height = 141
      Align = alBottom
      TabOrder = 0
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 337
        Height = 14
        Align = alTop
        Caption = #1057#1090#1072#1090#1090#1110
        TabOrder = 0
      end
      object cxGrid4: TcxGrid
        Left = 1
        Top = 15
        Width = 337
        Height = 125
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGrid4DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid4DBTableView1DblClick
          OnKeyDown = cxGrid4DBTableView1KeyDown
          DataController.DataSource = StDataSource
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.Background = GroupStyle
          Styles.Content = GroupStyle
          Styles.ContentEven = GroupStyle
          Styles.ContentOdd = GroupStyle
          Styles.IncSearch = cxStyle2
          Styles.Header = cxStyle3
          object cxGrid4DBTableView1DBColumn1: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1088' '#1089#1090#1072#1090#1090#1110
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            SortOrder = soAscending
            Width = 158
            DataBinding.FieldName = 'RAZD_ST_NUM'
          end
          object cxGrid4DBTableView1DBColumn2: TcxGridDBColumn
            Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1089#1090#1072#1090#1090#1110
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Width = 161
            DataBinding.FieldName = 'RAZD_ST_TITLE'
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 339
      Height = 197
      Align = alClient
      TabOrder = 1
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 337
        Height = 14
        Align = alTop
        Caption = #1056#1086#1079#1076#1110#1083#1080
        TabOrder = 0
      end
      object cxGrid3: TcxGrid
        Left = 1
        Top = 15
        Width = 337
        Height = 181
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = cxGrid3Enter
        object cxGrid3DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid3DBTableView1DblClick
          OnKeyDown = cxGrid3DBTableView1KeyDown
          DataController.DataSource = RazdDataSource
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxGrid3DBTableView1FocusedRecordChanged
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Background = GroupStyle
          Styles.Content = GroupStyle
          Styles.ContentEven = GroupStyle
          Styles.ContentOdd = GroupStyle
          Styles.IncSearch = cxStyle2
          Styles.Header = cxStyle3
          object cxGrid3DBTableView1DBColumn1: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1088' '#1088#1086#1079#1076#1110#1083#1091
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            SortOrder = soAscending
            Width = 150
            DataBinding.FieldName = 'RAZD_ST_NUM'
          end
          object cxGrid3DBTableView1DBColumn2: TcxGridDBColumn
            Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1088#1086#1079#1076#1110#1083#1091
            PropertiesClassName = 'TcxTextEditProperties'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Width = 268
            DataBinding.FieldName = 'RAZD_ST_TITLE'
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 42
    Width = 257
    Height = 343
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnResize = cxGrid1Resize
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = GroupsDataSource
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRect = False
      OptionsView.GroupByBox = False
      Styles.Background = GroupStyle
      Styles.Content = GroupStyle
      Styles.Header = cxStyle3
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1075#1088#1091#1087#1080' '#1082#1086#1096#1090#1086#1088#1080#1089#1110#1074
        SortOrder = soDescending
        Width = 177
        DataBinding.FieldName = 'GROUP_TITLE'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 257
    Top = 42
    Width = 96
    Height = 343
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    object cxGrid2DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid2DBTableView1DblClick
      OnKeyDown = cxGrid2DBTableView1KeyDown
      DataController.DataSource = SmetaDataSource
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cxGrid2DBTableView1FocusedRecordChanged
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.Background = GroupStyle
      Styles.Content = GroupStyle
      Styles.ContentEven = GroupStyle
      Styles.ContentOdd = GroupStyle
      Styles.IncSearch = cxStyle2
      Styles.Header = cxStyle3
      object cxGrid2DBTableView1DBColumn1: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1082#1086#1096#1090#1086#1088#1080#1089#1072
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        SortOrder = soAscending
        Width = 34
        DataBinding.FieldName = 'SMETA_KOD'
      end
      object cxGrid2DBTableView1DBColumn2: TcxGridDBColumn
        Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1082#1086#1096#1090#1086#1088#1080#1089#1091
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Width = 68
        DataBinding.FieldName = 'SMETA_TITLE'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 385
    Width = 697
    Height = 64
    Align = alBottom
    TabOrder = 4
    Visible = False
    object Label1: TLabel
      Left = 6
      Top = 4
      Width = 121
      Height = 13
      AutoSize = False
      Caption = #1042#1080#1073#1088#1072#1085#1080#1081' '#1082#1086#1096#1090#1086#1088#1080#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 135
      Top = 43
      Width = 120
      Height = 12
      AutoSize = False
      Caption = #1042#1080#1073#1088#1072#1085#1085#1072' '#1089#1090#1072#1090#1090#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 136
      Top = 23
      Width = 119
      Height = 13
      AutoSize = False
      Caption = #1042#1080#1073#1088#1072#1085#1085#1080#1081' '#1088#1086#1079#1076#1110#1083
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 134
      Top = 2
      Width = 425
      Height = 21
      TabStop = False
      DataBinding.DataField = 'SMETA_TITLE'
      DataBinding.DataSource = SmetaDataSource
      Style.Color = clInfoBk
      TabOrder = 0
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 254
      Top = 22
      Width = 305
      Height = 21
      TabStop = False
      DataBinding.DataField = 'RAZD_ST_TITLE'
      DataBinding.DataSource = RazdDataSource
      Style.Color = clInfoBk
      TabOrder = 1
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 254
      Top = 42
      Width = 305
      Height = 21
      TabStop = False
      DataBinding.DataField = 'RAZD_ST_TITLE'
      DataBinding.DataSource = StDataSource
      Style.Color = clInfoBk
      TabOrder = 2
    end
  end
  object SmallImages: TImageList
    Left = 424
    Top = 16
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001800000000000024
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003939393939393939393939
      3939393939393939393939393939393939393939393900000000000000000000
      000000000097736BB3887FB1847CB1847CB1847CB1857DB1857DB1857EB0857D
      AE857EAA837CB08580B48A7C875D560000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003939398080808080808080808080
      8080808084848484848484848484848484848439393939393900000000000000
      0000000000B3938CF1DCCAFCDBC4FCDAC6FCDBC7FAD5BAFED6BCFFD4B6FAD3B6
      F6CFB0F1CDAEF5CEA8FDCFAD9D706A0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003939393939393939393939393939
      3939393939393939393939393939393939393939393939393939393900000000
      0000000000B39690ECE8D6FFF2D4E4E6BEE3E1B9FFEAD3F4E1B6E9E3AFFDDDB7
      FDD8ADFAD5A7F6D6A2FCD8B6A072720000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393939C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C584848439393939393900000000
      0000000000BB9F90ECEFE5FFFAECA9D38F009A00029B05009800009D00009300
      269D23D5CD98FFD7ACFED7BA9E70700000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393939C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C000FF0000FF000000FF0000FFC5C5C584848484848439393939393900
      0000000000C0A498EFF1EAFFFBF4AAD89900940000980010A0169CCE91AFC791
      2FA8265FB54FF6DAB1FFDEC69E71700000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393939C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C584848484848484848439393900
      0000000000C4A7A0EFF5E9FFFCF7B3DCA3019D010DA10B1DA41C51B143F0E5C4
      F4E2C35FB45BD9D29DFFDDC6A77A740000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003939393939393939393939
      39393939393939393939393939393939393939C5C5C584848484848439393900
      0000000000CAACA1F4FAF2F2F7E5DCEBCEFBF4E6F5F3DFF9F1DAFEE7CDFEEBD8
      FFECDBF7E6CDF0DEB6FEDAC1AB7D750000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B58C8CFFFFFFF7E7
      CEF7E7CEF7E7CEF7E7CEF7E7CEF7E7CEFFFFFF9C6B6BC5C5C584848439393900
      0000000000D2B5A0F6FAFAE6F7E18AD388EDF3DFFFFCF9C0DEAA4AB03953B443
      49B13CC5D59FFFE8D0FDE1CCAA7E760000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B58C8CFFFFFFFFD6
      A5FFD6A5FFD6A5FFD6A5FFD6A5FFD6A5FFFFF79C6B6B39393939393900000000
      0000000000D1B4A1F4FAF8FFFFFD8FCF9149B951E2EFD8FFF9EA63BB64009300
      009100AAD08DFFEED9FEDFCAAC7F770000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B58C8CFFFFFFFFF7
      EFF7E7CEF7DEC6F7E7CEF7DEC6F7E7CEFFFFF79C6B6B00000000000000000000
      0000000000DBBDA3F6FDFAFFFFFFE9F4E53AAA3518A5195FC05936AD33009900
      009500AAD48FFFF6E2FCDCC8AF847D0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000B58C8CFFFF
      F7FFD6A5FFD6A5FFD6A5FFD6A5FFD6A5FFD6A5FFFFFF9C6B6B00000000000000
      0000000000E1C3A3F6FDFBF8FCF8FFFFFFC4EBCC21AA2500950000940012A414
      0D9F11A5CC8BFFCAC0F8ADA1AC7E760000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000B58C8CFFFF
      F7FFFFF7FFE7D6FFE7D6FFE7D6FFE7D6FFE7D6FFFFFF9C6B6B00000000000000
      0000000000E6C9A9F9FFFEF8FCF8F8FCF8F8FCF8FBFEFAFFFFFFFFFFFFFEFEF8
      FFFFFEC9AA97D49752C79A7AC3AEA20000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C6B6B00000000
      0000000000E8CBACFBFFFFFAFFFFFAFFFFFAFFFFFAFEFDF9FEFDF4FBFBF3FBF8
      F7FFFCC6AA98D09E73DCC9B60000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B58C8CB58C8CB58C8CB58C8CB58C8CB58C8CB58C8CB58C8C9C6B6B00000000
      0000000000E7C29DE1C6A5E2C6A6E2C6A6E2C6A6E2C4A4E1C3A3DDC1A1DCC0A0
      DEC3A3C29C84DECCB80000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000009C31009C3100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000534645534645534645534645534645
      5346450000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFEFA5FFEFA55A31185A3118
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5636BA5636B00000000000000000000000000000000
      0000000000000000000000B58E7BB59284F7E3D6EFE3DEEFE3DEF7E7DEF7E3D6
      BDA69C5346455346450000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFEFA5FFEFA5FFE78CFFE78C
      3131310000000000000000000000000000000000000000000000000000000000
      00000000000000A5636B848484A5636B00000000000000000000000000000000
      0000000000000000BDA69CF7E7DEFFF3F7E7DBD6DEB29CD6A68CE7C7BDEFEBEF
      F7F3F7F7E3D6E7CBBD5346450000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF6331FFEFA5FFEFA5FFE78CFFE78C
      FFC65A3131319C31009C31000000000000000000000000000000000000000000
      00000000A5636BCECED6848484A5636B00000000000000000000000000000000
      0000000000BDA69CF7EBE7FFFFFFC68E73BD5D29BD5D29DEB29CBD5D29BD5D29
      D69E84F7F3F7F7E7DED6C7BD5346450000000000000000000000000000000000
      0000000000840000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF31FFFF6331FFEFA5FFEFA5FFE78CFFE78C
      FFC65AFF9C00FF9C639C31000000000000000000000000000000000000000000
      00000000A5636BEFEFEF848484A5636B00000000000000000000000000000000
      0000000000BDA69CFFFFFFCE6D42BD5D29BD5D29C6A294FFFFFFE78252BD5D29
      BD5D29D69673FFFBF7F7E3D65346450000000000000000000000000000000000
      0000840000FF0000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF6331FFEFA5FFEFA5000000080808
      FFC65AFF9C00FF9C639C31000000000000000000000000000000000000000000
      00000000A5636BEFEFEF848484A5636B00000000000000000000000000000000
      0000BDA69CFFFBFFDE9E7BBD5D29CE6531CE6531CE6939D68A63CE6531CE6531
      BD5D29BD5D29E7CBBDF7EFEFDECBC653464500000000000000000000000000FF
      0000FF0000FF0000FF0000840000000000000000000000000000000000000000
      0000000000000000080808000000000000FF6331FFEFA5FFEFA5FFDE84FFDE84
      FFC65AFF9C00FF9C639C31000000000000000000000000000000000000000000
      00000000A5736BEFEFEF848484A5636B00000000000000000000000000000000
      0000D6C7BDFFF7F7C66131BD5D29CE6531BD5D29CE8663F7E7DED66939BD5D29
      CE6531BD5D29CE7142FFFFFFE7CBBD53464500000000000000000000FF0000FF
      0084848484848400FF0000FF0000840000000000000000000000000000000000
      0000000000000000000000000000000000FF6331F7FFFFFFDE84FFDE84FFDE84
      FFC65AFF9C00FF9C639C31000000000000000000000000000000000000000000
      00000000BD846BEFEFEF848484A5636B00000000000000000000000000000000
      0000D6C7BDF7DFD6BD5D29CE6531CE6531BD5D29D68252FFFBFFE7AE94BD5D29
      BD5D29CE6531BD5D29FFEFEFF7DFD653464500000000000084848400FF008484
      8400000000000084848400FF0000FF0000840000000000000000000000000000
      0000000000FFFFCEFFFFBDFFC65AFFA510FF9C00F7FFFFFFEFA5FFDE84FFDE84
      FFC65AFF9C00FF9C639C31000000000000000000000000000000000000000000
      00000000D6946BEFEFEF848484A5636B00000000000000000000000000000000
      0000D6C7BDF7D7CECE6531CE6531CE6531CE6531BD5D29DEAA94FFF7F7EF9E73
      BD5D29CE6531BD5D29F7F3EFEFE3DE5346450000000000000000008484840000
      0000000000000000000084848400FF0000FF0000840000000000000000000000
      0000000000000000000000000000000000080808F7FFFFFFFFFFFFDE84FFDE84
      FFC65AFF9C00FF9C639C31000000000000000000000000000000000000000000
      00BD7B5AEFEFEFCECED6848484424242A5636B00000000000000000000000000
      0000D6C7BDFFEFE7D66939CE6531CE6531BD5D29BD5D29BD5D29E7CFC6FFFFFF
      D66939CE6531CE6939FFFBFFF7DFD65346450000000000000000000000000000
      0000000000000000000000000084848400FF0000FF0000840000000000000000
      0000000000000000000000000000000000FF6331F7FFFFFFFFFFFFDE84FFDE84
      FFC65AFF9C00FF9C639C3100000000000000000000000000000000000000BD7B
      5AEFEFEFCECED6BDBDBD8C8C8C5A5A5A424242A5636B00000000000000000000
      0000D6C7BDFFFFFFF79A6BD66939CE8E6BF7EBE7D68252BD5D29D69673FFFFFF
      E78E5ABD5D29EF9263FFFFFFD6C7BD5346450000000000000000000000000000
      0000000000000000000000000000000084848400FF0000FF0000000000000000
      0000000000000000000000000000FF31FFFF6331C65A00FFFFFFFFDE84FFDE84
      FFC65AFF9C00FF9C009C3100000000000000000000000000000000BD7B5AEFEF
      EFEFEFEFC6C6C6ADADAD8C8C8C7373735A5A5A424242A5636B00000000000000
      0000000000D6C7BDFFEBDEEF8652E78252F7F7F7FFFFFFDEBAADFFFFFFF7F7F7
      DE7142D67139FFF3EFF7E7E75346450000000000000000000000000000000000
      0000000000000000000000000000000000000084848400FF0000000000000000
      0000000000000000000000000000000000FF6331FFD673C65A00C65A00CE6363
      FFC65AFF9C00FF9C009C3100000000000000000000000000BD7B5AEFEFEFEFEF
      EFCECED6BDBDBD9C9C9C8484848484847373735A5A5A424242A5636B00000000
      0000000000D6C7BDFFFFFFFFEFD6FFAA73EFAA8CEFE3DEEFEFEFF7E7E7FFA67B
      F78E5AF7DBCEFFFFFFD6C7BD0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000FF6331FFD673FFD673FFD673C65A00
      CE6363FF9C00FF9C009C3100000000000000000000BD7B5AEFEFEFEFEFEFCECE
      D6C6C6C6C6C6C68484848484848484848484847373735A5A5A424242A5636B00
      0000000000000000D6C7BDFFFFFFFFFFFFFFF3C6FFDFADFFD39CFFC794FFD7AD
      FFFFFFFFFFFFD6C7BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF6331FFDE84FFDE84FFDE84FFDE84
      C65A00C65A00C65A009C3100000000000000D6946BD6946BD6946BD6946BD694
      6BD6946BD6946BD6946BD6946BD6946BD6946BD6946BD6946BD6946BD6946BD6
      946B000000000000000000D6C7BDD6C7BDFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF
      DECBC6D6C7BD0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF6331FF6331FF6331FF6331FF6331
      FF6331FF6331FF6331FF63310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000DECBC6D6C7BDD6C7BDD6C7BDD6C7BD
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000800F800100000000
      0007800100000000000380010000000000038001000000000001800100000000
      00018001000000008001800100000000C001800100000000C003800100000000
      C00F800100000000E007800100000000E007800100000000F003800300000000
      F803800700000000FFFFFFFF00000000FFFFFCFFFFFFF81FFFFFFC3FFF3FE007
      FFFFFC1FFE3FC003FDFFF803FC3F8001F8FFF003FC3F8001F07FF803FC3F0000
      E03FD803FC3F0000C01FD803FC3F0000C60F0003FC3F0000EF078003F81F0000
      FF83D803F00F0000FFC3D003E0078001FFE3F803C0038003FFF7F8038001C007
      FFFFF8030000E00FFFFFF803FFFFF83F00000000000000000000000000000000
      000000000000}
  end
  object WorkDatabase: TpFIBDatabase
    DBParams.Strings = (
      'lc_ctype=WIN1251')
    DefaultTransaction = ReadTransaction
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 505
  end
  object ReadTransaction: TpFIBTransaction
    DefaultDatabase = WorkDatabase
    TimeoutAction = TARollback
    Left = 545
  end
  object WriteTransaction: TpFIBTransaction
    DefaultDatabase = WorkDatabase
    TimeoutAction = TARollback
    Left = 577
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 256
    Top = 112
    object SmetSyle: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
    object GroupStyle: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object ColStyle: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 10930928
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 4707838
    end
  end
  object SmetaDataSet: TpFIBDataSet
    Database = WorkDatabase
    Transaction = ReadTransaction
    DefaultFormats.DateTimeDisplayFormat = 'd MMMM yyyy '#39#1075'.'#39
    Left = 28
    Top = 93
    poSQLINT64ToBCD = True
  end
  object GroupsDataSet: TpFIBDataSet
    Database = WorkDatabase
    Transaction = ReadTransaction
    DefaultFormats.DateTimeDisplayFormat = 'd MMMM yyyy '#39#1075'.'#39
    Left = 64
    Top = 96
    poSQLINT64ToBCD = True
  end
  object SmetaDataSource: TDataSource
    DataSet = SmetaDataSet
    Left = 24
    Top = 128
  end
  object GroupsDataSource: TDataSource
    DataSet = GroupsDataSet
    Left = 64
    Top = 128
  end
  object RazdDataSet: TpFIBDataSet
    Database = WorkDatabase
    Transaction = ReadTransaction
    DefaultFormats.DateTimeDisplayFormat = 'd MMMM yyyy '#39#1075'.'#39
    Left = 549
    Top = 90
    poSQLINT64ToBCD = True
  end
  object StDataSet: TpFIBDataSet
    Database = WorkDatabase
    Transaction = ReadTransaction
    DefaultFormats.DateTimeDisplayFormat = 'd MMMM yyyy '#39#1075'.'#39
    Left = 470
    Top = 296
    poSQLINT64ToBCD = True
  end
  object RazdDataSource: TDataSource
    DataSet = RazdDataSet
    Left = 581
    Top = 98
  end
  object StDataSource: TDataSource
    DataSet = StDataSet
    Left = 517
    Top = 295
  end
  object ActionList1: TActionList
    Left = 136
    Top = 120
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16397
      OnExecute = ViewButtonClick
    end
  end
end