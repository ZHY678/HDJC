object ThicknessMeasurement: TThicknessMeasurement
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #28909#36711#38050#26495#21402#24230#22312#32447#26816#27979#36719#20214
  ClientHeight = 781
  ClientWidth = 1434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 1434
    Height = 136
    BarManager = dxBarManager
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    OnMinimizedChanged = dxRibbonMinimizedChanged
    object SystemControlTab: TdxRibbonTab
      Active = True
      Caption = #31995#32479#25511#21046#21488
      Groups = <
        item
          ToolbarName = 'EquipmentControlBar'
        end
        item
          ToolbarName = 'SensorControlBar'
        end
        item
          ToolbarName = 'CollectControlBar'
        end
        item
          ToolbarName = 'dxBar_3D'
        end
        item
          ToolbarName = 'SaveSettingBar'
        end
        item
          ToolbarName = 'SystemSettingBar'
        end>
      Index = 0
    end
    object DebugTab: TdxRibbonTab
      Caption = #35843#35797#25511#21046#21488
      Groups = <
        item
          ToolbarName = 'ModeSelectBar'
        end
        item
          ToolbarName = 'DataplaySettingBar'
        end
        item
          ToolbarName = 'MotorControlBar'
        end
        item
          ToolbarName = 'IndicatorLightControlBar'
        end
        item
          ToolbarName = 'HardwareControlBar'
        end
        item
          ToolbarName = 'DebugBar'
        end>
      Index = 1
    end
  end
  object RibbonStatusBar: TdxRibbonStatusBar
    Left = 0
    Top = 758
    Width = 1434
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 20
        Width = 245
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 245
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 315
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 405
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 50
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 160
      end>
    Ribbon = dxRibbon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object RzPageControl: TRzPageControl
    Left = 0
    Top = 136
    Width = 1434
    Height = 622
    Hint = ''
    ActivePage = DetectionTabSheet
    Align = alClient
    TabOrder = 2
    FixedDimension = 19
    object DetectionTabSheet: TRzTabSheet
      TabVisible = False
      Caption = 'DetectionTabSheet'
      object DisplayCurvePanel: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 489
        TabOrder = 0
        object CurveDisplaySignalChart: TSignalChart
          Left = 1
          Top = 1
          Width = 713
          Height = 487
          BackWall.Color = clBtnFace
          BackWall.Pen.Visible = False
          Border.Color = clBtnFace
          Border.Visible = True
          BottomWall.Color = clBtnFace
          BottomWall.Pen.Visible = False
          BottomWall.Size = 4
          Foot.Font.Color = clBlack
          LeftWall.Color = clBtnFace
          LeftWall.Pen.Visible = False
          LeftWall.Size = 4
          Legend.Alignment = laBottom
          Legend.Color = clBtnFace
          Legend.Frame.Color = clGray
          Legend.Frame.Visible = False
          Legend.Shadow.Color = -3355444
          Legend.Shadow.Transparency = 0
          Legend.Transparent = True
          Legend.Visible = False
          RightWall.Color = clBtnFace
          SubFoot.Font.Color = clBlack
          SubTitle.Font.Color = clBlack
          Title.Alignment = taLeftJustify
          Title.Color = clInfoBk
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Frame.Color = clGray
          Title.Shadow.HorizSize = 0
          Title.Shadow.VertSize = 0
          Title.Text.Strings = (
            #26354#32447#21402#24230#20540)
          Title.Transparent = False
          BottomAxis.Axis.Color = 4210752
          BottomAxis.Grid.Color = 13421772
          BottomAxis.Grid.Visible = False
          DepthAxis.Grid.Color = clGray
          DepthTopAxis.Grid.Color = clGray
          Frame.Visible = False
          LeftAxis.Axis.Color = 4210752
          LeftAxis.Grid.Color = clGray
          LeftAxis.Grid.Visible = False
          RightAxis.Grid.Color = clGray
          TopAxis.Grid.Color = clGray
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          Signals = <
            item
              SeriesName = 'OriginalFastLine'
              Series = OriginalFastLine
              InputsItemIndex = -1
              Input = OriginalThicknessSignal
            end
            item
              SeriesName = 'ResultFastLine'
              Series = ResultFastLine
              InputsItemIndex = -1
              Input = ResultThicknessSignal
            end>
          ComplexSignalPart = cspReal
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 0
          object OriginalFastLine: TFastLineSeries
            Selected.Hover.Visible = True
            Marks.Frame.Color = clGray
            Marks.Shadow.Color = -3355444
            Marks.Shadow.HorizSize = 2
            Marks.Shadow.VertSize = 2
            Marks.BackColor = clBtnFace
            Marks.Color = clBtnFace
            Title = #21407#22987#21402#24230#20540
            LinePen.Color = clRed
            TreatNulls = tnDontPaint
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object ResultFastLine: TFastLineSeries
            Selected.Hover.Visible = True
            Active = False
            Title = #32467#26524#21402#24230#20540
            LinePen.Color = clGreen
            TreatNulls = tnDontPaint
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object GridBandTool: TGridBandTool
            Tag = 10061943
            Band1.Color = 15329769
            AxisID = 2
          end
        end
      end
      object DataDisplayPanel: TPanel
        Left = 0
        Top = 488
        Width = 715
        Height = 130
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object OriginalThicknessLabel: TLabel
          Left = 80
          Top = 53
          Width = 96
          Height = 19
          Caption = #21407#22987#21402#24230#20540#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ResultThicknessLabel: TLabel
          Left = 386
          Top = 53
          Width = 96
          Height = 19
          Caption = #32467#26524#21402#24230#20540#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object OriginalThicknessPanel: TPanel
          Left = 174
          Top = 41
          Width = 123
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ResultThicknessPanel: TPanel
          Left = 480
          Top = 41
          Width = 129
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object Draw3DPanel: TPanel
        Left = 715
        Top = 0
        Width = 715
        Height = 345
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
      end
      object EquipmentConditionPanel: TPanel
        Left = 715
        Top = 0
        Width = 715
        Height = 616
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object HighTemperatureLabel: TLabel
          Left = 129
          Top = 186
          Width = 96
          Height = 19
          Caption = #39640#28201#20256#24863#22120#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LowTempratureLabel: TLabel
          Left = 417
          Top = 185
          Width = 96
          Height = 19
          Caption = #20302#28201#20256#24863#22120#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object UpperLaserCoreLabel: TLabel
          Left = 127
          Top = 296
          Width = 96
          Height = 19
          Caption = #19978#28608#20809#26680#24515#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object UpperLaserSurfaceLabel: TLabel
          Left = 127
          Top = 395
          Width = 96
          Height = 19
          Caption = #19978#28608#20809#34920#38754#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object UpperCFrameLabel: TLabel
          Left = 127
          Top = 498
          Width = 90
          Height = 19
          Caption = 'C'#22411#26550#19978#37096#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LowerLaserCoreLabel: TLabel
          Left = 414
          Top = 296
          Width = 96
          Height = 19
          Caption = #19979#28608#20809#26680#24515#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LowerLaserSurfaceLabel: TLabel
          Left = 414
          Top = 395
          Width = 96
          Height = 19
          Caption = #19979#28608#20809#34920#38754#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LowerCFrameLabel: TLabel
          Left = 414
          Top = 498
          Width = 90
          Height = 19
          Caption = 'C'#22411#26550#19979#37096#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label_Controller: TLabel
          Left = 132
          Top = 80
          Width = 64
          Height = 19
          Caption = #25805#20316#21592#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label_ID: TLabel
          Left = 414
          Top = 80
          Width = 80
          Height = 19
          Caption = #38050#26495#32534#21495#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object HighTemperaturePanel: TPanel
          Left = 216
          Top = 174
          Width = 89
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object LowTempraturePanel: TPanel
          Left = 504
          Top = 175
          Width = 89
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object UpperLaserCorePanel: TPanel
          Left = 220
          Top = 284
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object UpperLaserSurfacePanel: TPanel
          Left = 220
          Top = 383
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object UpperCFramePanel: TPanel
          Left = 220
          Top = 486
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object LowerLaserCorePanel: TPanel
          Left = 508
          Top = 284
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object LowerLaserSurfacePanel: TPanel
          Left = 508
          Top = 383
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object LowerCFramePanel: TPanel
          Left = 508
          Top = 486
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit_Controller: TEdit
          Left = 202
          Top = 78
          Width = 103
          Height = 27
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Edit_ID: TEdit
          Left = 490
          Top = 78
          Width = 103
          Height = 27
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
      end
      object Chart_ShowData: TChart
        Left = 3
        Top = 5
        Width = 712
        Height = 477
        BackWall.Pen.Visible = False
        BottomWall.Pen.Visible = False
        BottomWall.Size = 4
        Foot.Font.Color = clBlue
        LeftWall.Pen.Visible = False
        LeftWall.Size = 4
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Frame.Color = clGray
        Legend.Frame.Visible = False
        Legend.Shadow.Color = 13421772
        Legend.Shadow.Transparency = 0
        Legend.Transparent = True
        Title.Alignment = taLeftJustify
        Title.Color = clInfoBk
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Frame.Color = clGray
        Title.Shadow.HorizSize = 0
        Title.Shadow.VertSize = 0
        Title.Text.Strings = (
          #21402#24230#20540)
        Title.Transparent = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 13421772
        BottomAxis.Grid.Visible = False
        DepthAxis.Grid.Color = clGray
        DepthTopAxis.Grid.Color = clGray
        Frame.Visible = False
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = clGray
        LeftAxis.Grid.Visible = False
        RightAxis.Grid.Color = clGray
        TopAxis.Grid.Color = clGray
        View3D = False
        Color = clWhite
        TabOrder = 4
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 0
        object FastLine_Original: TFastLineSeries
          Selected.Hover.Visible = True
          Title = #21407#22987#21402#24230#20540
          LinePen.Color = clRed
          TreatNulls = tnDontPaint
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object GridBandTool2: TGridBandTool
          Tag = 10061943
          Band1.Color = 15329769
          AxisID = 2
        end
      end
    end
    object CalibrationTabSheet: TRzTabSheet
      AlignWithMargins = True
      TabVisible = False
      Caption = 'CalibrationTabSheet'
      object CalibrationSettingPanel: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 618
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object OriginalSettingGroupBox: TGroupBox
          Left = 248
          Top = 56
          Width = 217
          Height = 473
          Caption = #21407#22987#37197#32622
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object OUpperAngleLabel: TLabel
            Left = 19
            Top = 46
            Width = 96
            Height = 19
            Caption = #19978#26354#32447#35282#24230#65306
          end
          object OLowerAngleLabel: TLabel
            Left = 19
            Top = 102
            Width = 96
            Height = 19
            Caption = #19979#26354#32447#35282#24230#65306
          end
          object OUpperValueLabel: TLabel
            Left = 19
            Top = 160
            Width = 96
            Height = 19
            Caption = #19978#26354#32447#22343#20540#65306
          end
          object OLowerValueLabel: TLabel
            Left = 19
            Top = 224
            Width = 96
            Height = 19
            Caption = #19979#26354#32447#22343#20540#65306
          end
          object OSensorDistanceLabel: TLabel
            Left = 19
            Top = 294
            Width = 96
            Height = 19
            Caption = #20256#24863#22120#38388#36317#65306
          end
          object OUpperTempLabel: TLabel
            Left = 3
            Top = 358
            Width = 112
            Height = 19
            Caption = #19978#20256#24863#22120#28201#24230#65306
          end
          object OLowerTempLabel: TLabel
            Left = 3
            Top = 422
            Width = 112
            Height = 19
            Caption = #19979#20256#24863#22120#28201#24230#65306
          end
          object OUpperAngleEdit: TEdit
            Left = 109
            Top = 43
            Width = 92
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 0
          end
          object OLowerAngleEdit: TEdit
            Left = 109
            Top = 99
            Width = 92
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 1
          end
          object OUpperValueEdit: TEdit
            Left = 109
            Top = 157
            Width = 92
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 2
          end
          object OLowerValueEdit: TEdit
            Left = 109
            Top = 221
            Width = 92
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 3
          end
          object OSensorDistanceEdit: TEdit
            Left = 109
            Top = 292
            Width = 92
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 4
          end
          object OUpperTempEdit: TEdit
            Left = 109
            Top = 356
            Width = 92
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 5
          end
          object OLowerTempEdit: TEdit
            Left = 109
            Top = 420
            Width = 92
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 6
          end
        end
        object ResultSettingGroupBox: TGroupBox
          Left = 480
          Top = 56
          Width = 229
          Height = 473
          Caption = #26631#23450#32467#26524
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object RUpperAngleLabel: TLabel
            Left = 27
            Top = 46
            Width = 96
            Height = 19
            Caption = #19978#26354#32447#35282#24230#65306
          end
          object RLowerAngleLabel: TLabel
            Left = 27
            Top = 102
            Width = 96
            Height = 19
            Caption = #19979#26354#32447#35282#24230#65306
          end
          object RUpperValueLabel: TLabel
            Left = 27
            Top = 160
            Width = 96
            Height = 19
            Caption = #19978#26354#32447#22343#20540#65306
          end
          object RLowerValueLabel: TLabel
            Left = 27
            Top = 224
            Width = 96
            Height = 19
            Caption = #19979#26354#32447#22343#20540#65306
          end
          object RSensorDistanceLabel: TLabel
            Left = 27
            Top = 294
            Width = 96
            Height = 19
            Caption = #20256#24863#22120#38388#36317#65306
          end
          object RUpperTempLabel: TLabel
            Left = 11
            Top = 358
            Width = 112
            Height = 19
            Caption = #19978#20256#24863#22120#28201#24230#65306
          end
          object RLowerTempLabel: TLabel
            Left = 11
            Top = 422
            Width = 112
            Height = 19
            Caption = #19979#20256#24863#22120#28201#24230#65306
          end
          object RUpperAngleEdit: TEdit
            Left = 117
            Top = 43
            Width = 97
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 0
          end
          object RLowerAngleEdit: TEdit
            Left = 117
            Top = 99
            Width = 97
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 1
          end
          object RUpperValueEdit: TEdit
            Left = 117
            Top = 157
            Width = 97
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 2
          end
          object RLowerValueEdit: TEdit
            Left = 117
            Top = 221
            Width = 97
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 3
          end
          object RSensorDistanceEdit: TEdit
            Left = 117
            Top = 291
            Width = 97
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 4
          end
          object RUpperTempEdit: TEdit
            Left = 117
            Top = 355
            Width = 97
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 5
          end
          object RLowerTempEdit: TEdit
            Left = 117
            Top = 419
            Width = 97
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 6
          end
        end
        object CalibrationSettingGroupBox: TGroupBox
          Left = 16
          Top = 56
          Width = 209
          Height = 473
          Caption = #26631#23450#35774#32622
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object StandardLabel: TLabel
            Left = 19
            Top = 160
            Width = 96
            Height = 19
            Caption = #26631#20934#22359#21402#24230#65306
          end
          object CenterPointLabel: TLabel
            Left = 19
            Top = 196
            Width = 96
            Height = 19
            Caption = #20013#24515#28857#22352#26631#65306
          end
          object CalibResultLabel: TLabel
            Left = 19
            Top = 241
            Width = 96
            Height = 19
            Caption = #26631#20934#22359#23454#27979#65306
          end
          object UpperSensorRadioButton: TRadioButton
            Left = 48
            Top = 48
            Width = 113
            Height = 17
            Caption = #19978#20256#24863#22120#36873#25321
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object LowerSensorRadioButton: TRadioButton
            Left = 48
            Top = 104
            Width = 113
            Height = 17
            Caption = #19979#20256#24863#22120#36873#25321
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object StandardEdit: TEdit
            Left = 113
            Top = 157
            Width = 89
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 2
            Text = '20'
          end
          object CenterPointEdit: TEdit
            Left = 113
            Top = 195
            Width = 89
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 3
            Text = '0'
          end
          object StartCalibrateButton: TButton
            Left = 64
            Top = 288
            Width = 85
            Height = 33
            Caption = #24320#22987#26631#23450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = StartCalibrateButtonClick
          end
          object StopCalibrateButton: TButton
            Left = 64
            Top = 352
            Width = 85
            Height = 33
            Caption = #20572#27490#26631#23450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = StopCalibrateButtonClick
          end
          object SaveButton: TButton
            Left = 64
            Top = 416
            Width = 85
            Height = 33
            Caption = #23384#20648#37197#32622
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = SaveButtonClick
          end
          object CalibResultEdit: TEdit
            Left = 113
            Top = 238
            Width = 89
            Height = 27
            Alignment = taCenter
            ReadOnly = True
            TabOrder = 7
            Text = '0'
          end
        end
      end
      object CalibrationChartPanel: TPanel
        Left = 715
        Top = 0
        Width = 715
        Height = 618
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object CalibrationChart: TChart
          Left = 1
          Top = 1
          Width = 713
          Height = 616
          BackWall.Color = clWhite
          BackWall.Dark3D = False
          BackWall.Size = 8
          BackWall.Transparent = False
          Border.Visible = True
          BottomWall.Dark3D = False
          BottomWall.Size = 8
          Foot.Font.Color = clBlue
          LeftWall.Color = clWhite
          LeftWall.Dark3D = False
          LeftWall.Size = 8
          Legend.Alignment = laBottom
          Legend.CheckBoxes = True
          Legend.Font.Height = -13
          Legend.Font.Name = 'Times New Roman'
          Legend.Frame.Visible = False
          Legend.Shadow.HorizSize = 0
          Legend.Shadow.Transparency = 0
          Legend.Shadow.VertSize = 0
          Legend.Symbol.Pen.Visible = False
          Legend.Transparent = True
          RightWall.Color = clWhite
          RightWall.Dark3D = False
          RightWall.Size = 8
          SubFoot.Font.Color = clBlack
          SubTitle.Font.Color = clBlack
          Title.Font.Color = clRed
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Text.Strings = (
            #26631#23450#26354#32447#26174#31034)
          BottomAxis.Axis.Width = 1
          BottomAxis.Grid.Color = clBlack
          BottomAxis.GridCentered = True
          BottomAxis.LabelsFormat.Font.Height = -13
          BottomAxis.LabelsFormat.Font.Name = 'Times New Roman'
          BottomAxis.MinorTicks.Visible = False
          BottomAxis.Ticks.Color = clBlack
          BottomAxis.TicksInner.Visible = False
          BottomAxis.Title.Font.Name = 'Times New Roman'
          DepthAxis.Axis.Width = 1
          DepthAxis.Grid.Color = clBlack
          DepthAxis.LabelsFormat.Font.Height = -13
          DepthAxis.LabelsFormat.Font.Name = 'Times New Roman'
          DepthAxis.MinorTicks.Visible = False
          DepthAxis.Ticks.Color = clBlack
          DepthAxis.TicksInner.Visible = False
          DepthAxis.Title.Font.Name = 'Times New Roman'
          DepthTopAxis.Axis.Width = 1
          DepthTopAxis.Grid.Color = clBlack
          DepthTopAxis.LabelsFormat.Font.Height = -13
          DepthTopAxis.LabelsFormat.Font.Name = 'Times New Roman'
          DepthTopAxis.MinorTicks.Visible = False
          DepthTopAxis.Ticks.Color = clBlack
          DepthTopAxis.TicksInner.Visible = False
          DepthTopAxis.Title.Font.Name = 'Times New Roman'
          LeftAxis.Axis.Width = 1
          LeftAxis.Grid.Color = clBlack
          LeftAxis.LabelsFormat.Font.Height = -13
          LeftAxis.LabelsFormat.Font.Name = 'Times New Roman'
          LeftAxis.MinorTicks.Visible = False
          LeftAxis.Ticks.Color = clBlack
          LeftAxis.TicksInner.Visible = False
          LeftAxis.Title.Font.Name = 'Times New Roman'
          RightAxis.Axis.Width = 1
          RightAxis.Grid.Color = clBlack
          RightAxis.LabelsFormat.Font.Height = -13
          RightAxis.LabelsFormat.Font.Name = 'Times New Roman'
          RightAxis.MinorTicks.Visible = False
          RightAxis.Ticks.Color = clBlack
          RightAxis.TicksInner.Visible = False
          RightAxis.Title.Font.Name = 'Times New Roman'
          TopAxis.Axis.Width = 1
          TopAxis.Grid.Color = clBlack
          TopAxis.LabelsFormat.Font.Height = -13
          TopAxis.LabelsFormat.Font.Name = 'Times New Roman'
          TopAxis.MinorTicks.Visible = False
          TopAxis.Ticks.Color = clBlack
          TopAxis.TicksInner.Visible = False
          TopAxis.Title.Font.Name = 'Times New Roman'
          View3D = False
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 5
          object UpperOriginalDataPotints: TPointSeries
            Title = #19978#20256#24863#22120#21407#22987#25968#25454#28857
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object LowerOriginalDataPotints: TPointSeries
            Title = #19979#20256#24863#22120#21407#22987#25968#25454#28857
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object UpperCorrectDataPotints: TPointSeries
            Title = #19978#20256#24863#22120#30699#27491#25968#25454#28857
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psTriangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object LowerCorrectDataPotints: TPointSeries
            Title = #19979#20256#24863#22120#30699#27491#25968#25454#28857
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psDownTriangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object UpperDataPotints: TPointSeries
            Title = #34987#27979#29289#19978#36718#24275#25968#25454#28857
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psDiamond
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object LowerDataPotints: TPointSeries
            Title = #34987#27979#29289#19979#36718#24275#25968#25454#28857
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psDiamond
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object CalibrationAreaDataPotints: TPointSeries
            Title = #26631#23450#36873#28857#21306#38388
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psStar
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
    end
    object DebugTabSheet: TRzTabSheet
      TabVisible = False
      Caption = 'DebugTabSheet'
      object DebugDisplayPanel: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 412
        TabOrder = 0
        object DebugDisplaySignalChart: TSignalChart
          Left = 1
          Top = 1
          Width = 713
          Height = 410
          BackWall.Pen.Visible = False
          BottomWall.Pen.Visible = False
          BottomWall.Size = 4
          Foot.Font.Color = clBlue
          LeftWall.Pen.Visible = False
          LeftWall.Size = 4
          Legend.Alignment = laBottom
          Legend.Frame.Color = clGray
          Legend.Frame.Visible = False
          Legend.Shadow.Color = 13421772
          Legend.Shadow.Transparency = 0
          Legend.Transparent = True
          Title.Alignment = taLeftJustify
          Title.Font.Color = clRed
          Title.Font.Height = -13
          Title.Frame.Color = clGray
          Title.Shadow.HorizSize = 0
          Title.Shadow.VertSize = 0
          Title.Text.Strings = (
            #26354#32447#21402#24230#20540)
          Title.Transparent = False
          BottomAxis.Axis.Color = 4210752
          BottomAxis.Grid.Color = 13421772
          BottomAxis.Grid.Visible = False
          DepthAxis.Grid.Color = clGray
          DepthTopAxis.Grid.Color = clGray
          Frame.Visible = False
          LeftAxis.Axis.Color = 4210752
          LeftAxis.Grid.Color = clGray
          LeftAxis.Grid.Visible = False
          RightAxis.Grid.Color = clGray
          TopAxis.Grid.Color = clGray
          Align = alClient
          BevelOuter = bvRaised
          TabOrder = 0
          Signals = <
            item
              SeriesName = 'DebugOriginalFastSeries'
              Series = DebugOriginalFastSeries
              InputsItemIndex = -1
              Input = DebugOriginalSignal
            end
            item
              SeriesName = 'DebugResultFastSeries'
              Series = DebugResultFastSeries
              InputsItemIndex = -1
              Input = DebugResultSignal
            end>
          ComplexSignalPart = cspReal
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 0
          object DebugOriginalFastSeries: TFastLineSeries
            Selected.Hover.Visible = True
            Marks.Frame.Color = clGray
            Marks.Shadow.Color = 13421772
            Marks.Shadow.HorizSize = 2
            Marks.Shadow.VertSize = 2
            Title = #21407#22987#21402#24230#20540
            LinePen.Color = clRed
            TreatNulls = tnDontPaint
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object DebugResultFastSeries: TFastLineSeries
            Selected.Hover.Visible = True
            Title = #32467#26524#21402#24230#20540
            LinePen.Color = clGreen
            TreatNulls = tnDontPaint
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object GridBandTool1: TGridBandTool
            Tag = 10061943
            Band1.Color = 15329769
            AxisID = 2
          end
        end
      end
      object DebugDataPanel: TPanel
        Left = 0
        Top = 412
        Width = 715
        Height = 206
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object DebugOrignalLabel: TLabel
          Left = 80
          Top = 93
          Width = 96
          Height = 19
          Caption = #21407#22987#21402#24230#20540#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugResultLabel: TLabel
          Left = 386
          Top = 93
          Width = 96
          Height = 19
          Caption = #32467#26524#21402#24230#20540#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugOriginalPanel: TPanel
          Left = 174
          Top = 81
          Width = 123
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object DebugResultPanel: TPanel
          Left = 480
          Top = 81
          Width = 129
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object DebugConditionPanel: TPanel
        Left = 715
        Top = 412
        Width = 715
        Height = 206
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object DebugHighTemperatureLabel: TLabel
          Left = 41
          Top = 28
          Width = 96
          Height = 19
          Caption = #39640#28201#20256#24863#22120#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugLowTemperatureLabel: TLabel
          Left = 41
          Top = 88
          Width = 96
          Height = 19
          Caption = #20302#28201#20256#24863#22120#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugUpperLaserCoreLabel: TLabel
          Left = 263
          Top = 28
          Width = 96
          Height = 19
          Caption = #19978#28608#20809#26680#24515#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugUpperLaserSurfaceLabel: TLabel
          Left = 263
          Top = 88
          Width = 96
          Height = 19
          Caption = #19978#28608#20809#34920#38754#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugUpperCFrameLabel: TLabel
          Left = 263
          Top = 148
          Width = 90
          Height = 19
          Caption = 'C'#22411#26550#19978#37096#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugLowerLaserCoreLabel: TLabel
          Left = 494
          Top = 28
          Width = 96
          Height = 19
          Caption = #19979#28608#20809#26680#24515#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugLowerLaserSurfaceLabel: TLabel
          Left = 494
          Top = 88
          Width = 96
          Height = 19
          Caption = #19979#28608#20809#34920#38754#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugLowerCFrameLabel: TLabel
          Left = 494
          Top = 148
          Width = 90
          Height = 19
          Caption = 'C'#22411#26550#19979#37096#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebugHighTemperaturePanel: TPanel
          Left = 135
          Top = 16
          Width = 82
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DebugLowTemperaturePanel: TPanel
          Left = 135
          Top = 76
          Width = 82
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DebugUpperLaserCorePanel: TPanel
          Left = 356
          Top = 16
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DebugUpperLaserSurfacePanel: TPanel
          Left = 356
          Top = 76
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DebugUpperCFramePanel: TPanel
          Left = 356
          Top = 136
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DebugLowerLaserCorePanel: TPanel
          Left = 588
          Top = 16
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DebugLowerLaserSurfacePanel: TPanel
          Left = 588
          Top = 76
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DebugLowerCFramePanel: TPanel
          Left = 588
          Top = 136
          Width = 85
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object DebugCurvePanel: TPanel
        Left = 715
        Top = 0
        Width = 715
        Height = 412
        TabOrder = 3
        object DebugChart: TChart
          Left = 1
          Top = 1
          Width = 713
          Height = 410
          BackWall.Brush.Gradient.Direction = gdBottomTop
          BackWall.Brush.Gradient.EndColor = clWhite
          BackWall.Brush.Gradient.StartColor = 15395562
          BackWall.Color = clBtnFace
          BackWall.Transparent = False
          Border.Color = clBtnFace
          Border.Visible = True
          BottomWall.Color = clBtnFace
          Foot.Font.Color = clBlack
          Foot.Font.Name = 'Verdana'
          Gradient.Direction = gdBottomTop
          Gradient.EndColor = clWhite
          Gradient.MidColor = 15395562
          Gradient.StartColor = 15395562
          LeftWall.Color = clBtnFace
          Legend.Alignment = laBottom
          Legend.CheckBoxes = True
          Legend.Font.Name = 'Verdana'
          Legend.Shadow.Color = clScrollBar
          Legend.Shadow.Transparency = 0
          RightWall.Color = clBtnFace
          SubFoot.Font.Color = clBlack
          SubTitle.Font.Color = clBlack
          Title.Font.Name = 'Verdana'
          Title.Text.Strings = (
            #20256#24863#22120#25968#25454#28857)
          BottomAxis.Axis.Color = 4210752
          BottomAxis.Grid.Color = 11119017
          BottomAxis.LabelsFormat.Font.Name = 'Verdana'
          BottomAxis.TicksInner.Color = 11119017
          BottomAxis.Title.Font.Name = 'Verdana'
          DepthAxis.Axis.Color = 4210752
          DepthAxis.Grid.Color = 11119017
          DepthAxis.LabelsFormat.Font.Name = 'Verdana'
          DepthAxis.TicksInner.Color = 11119017
          DepthAxis.Title.Font.Name = 'Verdana'
          DepthTopAxis.Axis.Color = 4210752
          DepthTopAxis.Grid.Color = 11119017
          DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
          DepthTopAxis.TicksInner.Color = 11119017
          DepthTopAxis.Title.Font.Name = 'Verdana'
          LeftAxis.Axis.Color = 4210752
          LeftAxis.Grid.Color = 11119017
          LeftAxis.LabelsFormat.Font.Name = 'Verdana'
          LeftAxis.TicksInner.Color = 11119017
          LeftAxis.Title.Font.Name = 'Verdana'
          RightAxis.Axis.Color = 4210752
          RightAxis.Grid.Color = 11119017
          RightAxis.LabelsFormat.Font.Name = 'Verdana'
          RightAxis.TicksInner.Color = 11119017
          RightAxis.Title.Font.Name = 'Verdana'
          TopAxis.Axis.Color = 4210752
          TopAxis.Grid.Color = 11119017
          TopAxis.LabelsFormat.Font.Name = 'Verdana'
          TopAxis.TicksInner.Color = 11119017
          TopAxis.Title.Font.Name = 'Verdana'
          View3D = False
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 0
          object DebugUpperDataPoints: TPointSeries
            Title = #19978#20256#24863#22120#25968#25454#28857
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object DebugLowerDataPoints: TPointSeries
            Title = #19979#20256#24863#22120#25968#25454#28857
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
    end
  end
  object cxImageList: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 680
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003F000000560000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000030000005F000000D8000000FF000000FF0000
          00E90000007C0000000B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000040000000DC000000FF000000C40000003A000000250000
          00A3000000FE000000ED00000066000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000F0000009E000000FF000000F4000000640000000000000000000000000000
          00000000003E000000E4000000FF000000C20000002000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000210000
          00DB000000FF000000D000000023000000000000000000000000000000000000
          00000000000000000010000000B4000000FF000000EE0000003F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000039000000EE0000
          00FF000000970000000500000000000000000000000000000000000000000000
          000000000000000000000000000000000074000000FC000000FA0000005C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000002C000000F4000000FD0000
          0065000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000041000000F0000000FE0000
          0055000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E000000E6000000FC0000004A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000029000000EA0000
          00FA000000390000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000A3000000FF00000069000000000000
          0000000000000000000000000000000000020000006000000006000000000000
          0000000000000000000000000000000000000000000000000000000000350000
          00FA000000EC0000000E00000000000000000000000000000000000000000000
          0000000000000000000000000040000000FF0000009E00000000000000000000
          00000000000000000000000000000000001A000000FF000000AD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0066000000FF0000008600000000000000000000000000000000000000000000
          00000000000000000003000000DE000000F00000000F00000000000000000000
          00000000000000000000000000000000000000000097000000FF000000710000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000D2000000F700000017000000000000000000000000000000000000
          0000000000000000005F000000FF000000790000000000000000000000000000
          00000000000000000000000000000000000000000005000000D0000000FC0000
          0038000000000000000000000000000000000000000000000000000000000000
          000000000046000000FF00000092000000000000000000000000000000000000
          000000000000000000B6000000F1000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000020000000F20000
          00E90000001A0000000000000000000000000000000000000000000000000000
          000000000000000000C9000000EC000000010000000000000000000000000000
          00000000000A000000F9000000AE000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000004F0000
          00FF000000CD0000000500000000000000000000000000000000000000000000
          0000000000000000007A000000FF000000360000000000000000000000000000
          00000000003B000000FF00000066000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00B6000000FF0000007F00000000000000000000000000000000000000000000
          00000000000000000032000000FF0000006F0000000000000000000000000000
          00000000006B000000FF00000025000000000000000000000000000000000000
          000000000000000000000000000000000000000000350000008B000000E30000
          00FF000000FF0000008900000000000000000000000000000000000000000000
          00000000000000000000000000F1000000A00000000000000000000000000000
          000000000083000000FF00000010000000000000000000000000000000000000
          000000000000000000000000002A000000DD000000FF000000FF000000F50000
          009D000000370000000000000000000000000000000000000000000000000000
          00000000000000000000000000DC000000B70000000000000000000000000000
          00000000008B000000FF00000008000000000000000000000000000000000000
          0000000000000000000000000067000000FF000000E9000000690000000D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000D4000000BE0000000000000000000000000000
          00000000008E000000FF00000004000000000000000000000000000000000000
          0000000000000000000000000005000000D0000000FB00000039000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000CF000000C10000000000000000000000000000
          000000000090000000FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000020000000F2000000E8000000170000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000CD000000C30000000000000000000000000000
          000000000090000000FF00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000004F000000FF000000C60000
          0004000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000CE000000C50000000000000000000000000000
          00000000008F000000FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000095000000FF0000
          008F000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000CC000000C30000000000000000000000000000
          00000000008E000000FF00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000005000000D00000
          00FF000000390000000000000000000000000000000000000000000000000000
          00000000000000000000000000CD000000C20000000000000000000000000000
          00000000008B000000FF00000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000220000
          00DA000000370000000000000000000000000000000000000000000000000000
          00000000000000000000000000CE000000C00000000000000000000000000000
          000000000089000000FF0000000B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000D4000000BD0000000000000000000000000000
          000000000074000000FF000000B0000000380000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000002500000090000000FF000000A80000000000000000000000000000
          00000000000B0000008C000000FB000000FF000000D500000068000000090000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000500000
          00BF000000FF000000FF000000A90000001E0000000000000000000000000000
          000000000000000000000000001E00000096000000F5000000FF000000EF0000
          0093000000290000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000180000007E000000E2000000FF0000
          00E6000000770000002300000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000090000005E000000C40000
          00FF000000FD000000A300000025000000000000000000000000000000000000
          0000000000000000001E00000087000000F7000000FE000000C4000000660000
          0005000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0034000000A6000000FC000000FE000000B00000004E00000004000000000000
          0058000000D0000000FF000000EB000000810000001B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000001C0000008C000000EF000000FF000000EE000000E00000
          00FF000000C80000006000000007000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000600000055000000BB000000A80000
          002A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000018000000670000
          0016000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000260000009B000000F9000000FF0000
          00F7000000980000001F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000020000000AC000000FE000000FF000000B70000005A0000
          00BB000000FF000000FD000000A50000001D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000C0000008E000000FA000000FF000000B30000003100000000000000000000
          000000000034000000B7000000FF000000F80000008A0000000B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000290000
          00DA000000FF000000B900000031000000000000000000000000000000000000
          0000000000000000000000000034000000C3000000FF000000D6000000250000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000039000000F50000
          00FB0000005B0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000061000000FC000000F30000
          0032000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000020000000EE000000F60000
          003D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000043000000F80000
          00EB0000001B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000C9000000FD0000004C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000530000
          00FE000000B60000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000005C000000FF00000094000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          009D000000FF0000003600000000000000000000000000000000000000000000
          0000000000000000000000000000000000C2000000F500000013000000000000
          000000000000000000CB00000031000000000000000000000094000000FF0000
          00FF000000850000000000000000000000000000000000000000000000000000
          0017000000FA000000A600000000000000000000000000000000000000000000
          0000000000000000000000000014000000FE000000A900000000000000000000
          000000000000000000CB000000310000005E0000003E0000002B0000002B0000
          004C000000EF00000000000000000000001C0000008600000002000000000000
          0000000000B2000000F600000006000000000000000000000000000000000000
          0000000000000000000000000044000000FF0000006300000000000000000000
          000000000000000000CB0000003100000071000000C900000000000000000000
          0017000000FA00000000000000000000008B000000BD00000000000000000000
          00000000006C000000FF00000030000000000000000000000000000000000000
          000000000000000000000000005F000000FF0000003D00000000000000000000
          001D00000000000000CB0000003100000005000000DD0000004A000000000000
          0017000000FA000000000000000C000000EF0000003E00000000000000000000
          000000000045000000FF00000053000000000000000000000000000000000000
          0000000000000000000000000068000000FF0000003100000000000000000000
          00D90000000E000000CB000000310000000000000064000000C1000000000000
          0017000000FA0000000000000078000000C10000000000000000000000000000
          000000000039000000FF0000005F000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          00A200000078000000CB000000310000000F00000006000000E9000000340000
          0017000000FA00000002000000E2000000440000000000000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          001C000000D4000000CB00000059000000E70000002100000020000000050000
          0017000000FA0000000000000013000000000000000000000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          0000000000A0000000F4000000CE0000005C0000003A00000040000000400000
          0051000000FB0000004000000040000000400000003600000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          00000000004C000000FF0000003100000000000000AF000000C0000000C00000
          00C0000000C0000000C0000000C0000000C0000000A400000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          003B00000046000000FC00000064000000400000000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          00B2000000C0000000F2000000CC000000C00000001300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          000000000000000000CB00000031000000000000001100000040000000400000
          0040000000400000004000000040000000400000000D00000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          000000000000000000CB000000310000000000000033000000C0000000C00000
          00C0000000C0000000C0000000C0000000C00000002800000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          0000000000000000006500000018000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF0000002F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000038000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF00000097000000800000007F0000
          0069000000420000000900000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000015000000580000007F0000
          00800000009C000000FF00000061000000000000000000000000000000000000
          000000000000000000000000006A000000FF000000FF000000FF000000FF0000
          00FF000000FF000000F8000000B4000000600000000600000000000000000000
          00000000000000000048000000B7000000E5000000FF000000FF000000FF0000
          00FF000000FF000000FF00000061000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          001F000000480000009A000000F1000000FF000000D800000036000000000000
          0043000000CE000000FF000000DE0000009E000000680000001D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000090000006F000000F0000000FD000000AA0000
          00FE000000DF0000005900000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000020000000C0000000FF0000
          00AA000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000F000000B50000
          000A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000F0000005D000000AC000000CE000000E2000000F5000000F50000
          00E2000000CE000000AC0000005D0000000F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000290000
          0096000000F0000000FF000000FF000000F4000000DF000000CA000000CB0000
          00E2000000F9000000FF000000FF000000F00000009600000029000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000084000000F10000
          00FF000000B80000007A0000002A000000000000000000000000000000000000
          0000000000000000003900000080000000B8000000FF000000F1000000840000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000AA000000FF000000D80000
          0062000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000062000000D8000000FF0000
          00AA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000DF000000FF00000097000000140000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000014000000970000
          00FF000000DF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000EB000000FF0000008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0080000000FF000000EB00000000000000000000000000000000000000000000
          000000000000000000C2000000FF000000A40000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000A4000000FF000000C2000000000000000000000000000000000000
          000000000084000000FF000000AA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000AA000000FF000000840000000000000000000000000000
          0029000000F1000000D800000014000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000014000000D8000000F10000002900000000000000000000
          0096000000FF0000006200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000062000000FF00000096000000000000000D0000
          00EE000000B60000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000B6000000EE0000000D000000510000
          00FF0000006D00000000000000000000000000000000000000AF000000F70000
          0021000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000099000000FF0000003E0000
          00000000000000000000000000000000006D000000FF00000051000000A80000
          00FF00000024000000000000000000000000000000000000009B000000FF0000
          00C50000000F0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000059000000FF000000E50000001D0000
          000000000000000000000000000000000024000000FF000000A8000000CE0000
          00F4000000000000000000000000000000000000000000000024000000640000
          00FF000000B50000000000000000000000000000000000000000000000000000
          000000000000000000000000003A000000FC000000E700000037000000000000
          000000000000000000000000000000000000000000F4000000CE000000E20000
          00DF000000000000000000000000000000000000000000000000000000000000
          0074000000FF000000A500000000000000000000000000000000000000000000
          0000000000000000001C000000DE000000F80000004700000000000000000000
          000000000000000000000000000000000000000000DF000000E2000000F50000
          00CA000000000000000000000000000000000000000000000000000000000000
          000000000083000000FF00000094000000000000000000000000000000000000
          000000000000000000BF000000FF000000560000000000000000000000000000
          000000000000000000000000000000000000000000CA000000F5000000F50000
          00CA000000000000000000000000000000000000000000000000000000000000
          00000000000000000093000000FF000000830000000000000000000000000000
          0000000000A1000000FF00000066000000000000000000000000000000000000
          000000000000000000000000000000000000000000CA000000F5000000E20000
          00DF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000A3000000FF0000007000000000000000000000
          0083000000FF0000007600000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000DF000000E2000000CE0000
          00F4000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000AF000000FF0000005E000000640000
          00FF000000870000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000F4000000CE000000AC0000
          00FF0000002A0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000B6000000FF000000FF0000
          0098000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000002A000000FF000000AC0000005D0000
          00FF0000007A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000BE000000A90000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000007A000000FF0000005D0000000F0000
          00F0000000B80000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000B8000000F00000000F000000000000
          0096000000FF0000006200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000062000000FF0000009600000000000000000000
          0029000000F1000000D800000014000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000014000000D8000000F10000002900000000000000000000
          000000000084000000FF00000097000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000097000000FF000000840000000000000000000000000000
          000000000000000000AA000000FF000000800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000080000000FF000000AA000000000000000000000000000000000000
          00000000000000000000000000DF000000FF000000A400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00A4000000FF000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000EB000000FF000000AA000000140000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000014000000AA0000
          00FF000000EB0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000C2000000FF000000D80000
          0062000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000062000000D8000000FF0000
          00C2000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000084000000F10000
          00FF000000B60000006D00000024000000000000000000000000000000000000
          0000000000000000003200000074000000B7000000FF000000F1000000840000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000290000
          0096000000EE000000FF000000FF000000F4000000DF000000CA000000CB0000
          00E2000000F9000000FF000000FF000000EE0000009600000029000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D00000051000000A8000000CE000000E2000000F5000000F50000
          00E2000000CE000000A8000000510000000D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000F0000005D000000AC000000CE000000E2000000F5000000F50000
          00E2000000CE000000AC0000005D0000000F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000290000
          0096000000F0000000FF000000FF000000F9000000E2000000CB000000CA0000
          00DF000000F4000000FF000000FF000000F00000009600000029000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000084000000F10000
          00FF000000B80000008000000039000000000000000000000000000000000000
          0000000000000000002A0000007A000000B8000000FF000000F1000000840000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000AA000000FF000000D80000
          0062000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000062000000D8000000FF0000
          00AA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000DF000000FF00000097000000140000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000014000000970000
          00FF000000DF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000EB000000FF0000008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0080000000FF000000EB00000000000000000000000000000000000000000000
          000000000000000000C2000000FF000000A40000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000A4000000FF000000C2000000000000000000000000000000000000
          000000000084000000FF000000AA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000AA000000FF000000840000000000000000000000000000
          0029000000F1000000D800000014000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000014000000D8000000F10000002900000000000000000000
          0096000000FF0000006200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000062000000FF00000096000000000000000D0000
          00EE000000B60000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000B6000000EE0000000D000000510000
          00FF0000006D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000A9000000BC0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000006D000000FF00000051000000A80000
          00FF000000240000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000099000000FF000000FF0000
          00A4000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000024000000FF000000A8000000CE0000
          00F4000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000089000000FF000000650000005D0000
          00FF0000008C0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000F4000000CE000000E20000
          00DF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000079000000FF0000008600000000000000000000
          006E000000FF0000007300000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000DF000000E2000000F50000
          00CA000000000000000000000000000000000000000000000000000000000000
          00000000000000000069000000FF000000A60000000000000000000000000000
          000000000080000000FF00000069000000000000000000000000000000000000
          000000000000000000000000000000000000000000CA000000F5000000F50000
          00CA000000000000000000000000000000000000000000000000000000000000
          000000000059000000FF000000C3000000000000000000000000000000000000
          00000000000000000090000000FF000000640000000000000000000000000000
          000000000000000000000000000000000000000000CA000000F5000000E20000
          00DF000000000000000000000000000000000000000000000000000000000000
          0049000000F8000000DF0000001D000000000000000000000000000000000000
          00000000000000000000000000A1000000FF0000005F00000000000000000000
          000000000000000000000000000000000000000000DF000000E2000000CE0000
          00F4000000000000000000000000000000000000000000000000000000380000
          00E8000000FC0000003E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000B3000000FF0000005A000000190000
          000000000000000000000000000000000000000000F4000000CE000000AC0000
          00FF0000002A000000000000000000000000000000000000001A000000E40000
          00FF0000005C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000F000000C4000000FF0000009B0000
          00000000000000000000000000000000002A000000FF000000AC0000005D0000
          00FF0000007A000000000000000000000000000000000000003F000000FF0000
          0095000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000020000000F1000000AF0000
          00000000000000000000000000000000007A000000FF0000005D0000000F0000
          00F0000000B80000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000B8000000F00000000F000000000000
          0096000000FF0000006200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000062000000FF0000009600000000000000000000
          0029000000F1000000D800000014000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000014000000D8000000F10000002900000000000000000000
          000000000084000000FF00000097000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000097000000FF000000840000000000000000000000000000
          000000000000000000AA000000FF000000800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000080000000FF000000AA000000000000000000000000000000000000
          00000000000000000000000000DF000000FF000000A400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00A4000000FF000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000EB000000FF000000AA000000140000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000014000000AA0000
          00FF000000EB0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000C2000000FF000000D80000
          0062000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000062000000D8000000FF0000
          00C2000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000084000000F10000
          00FF000000B70000007400000032000000000000000000000000000000000000
          000000000000000000240000006D000000B6000000FF000000F1000000840000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000290000
          0096000000EE000000FF000000FF000000F9000000E2000000CB000000CA0000
          00DF000000F4000000FF000000FF000000EE0000009600000029000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D00000051000000A8000000CE000000E2000000F5000000F50000
          00E2000000CE000000A8000000510000000D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000060000000B000000130000001D0000
          0023000000280000002B0000002E000000300000003100000032000000320000
          0031000000300000002F0000002D0000002A0000002600000020000000170000
          000F000000080000000300000001000000000000000000000000000000000000
          00000000000000000000000000030000000B0000001600000026000000380000
          00450000004E000E096F012C1CA900462CD6004C2FE001603CFF01603CFF004D
          31E100462CD6012F1DAA000F087100000051000000490000003E0000002E0000
          001E000000100000000500000002000000000000000000000000000000000000
          0000000000000000000000000002000000070000000F0000001A000000270019
          1069014A2ED30E7149FF289065FF40A97CFF47AE83FF59BD92FF59BD92FF47AE
          83FF40A97CFF289065FF0E7149FF014A2ED30019106C0000002C000000200000
          00150000000B0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000020106013B239C137B
          51FF39A477FF55BD91FF5EC197FF5FC197FF59BE93FF55BD91FF55BD91FF59BE
          93FF5FC197FF5EC197FF55BD91FF39A477FF137B51FF013B239C000201060000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000070515024B2EC31F8C60FF44B8
          88FF52BD91FF49BA8CFF34B17EFF20AA72FF12A468FF09A163FF09A163FF12A4
          68FF20AA72FF34B17EFF49BA8CFF52BD91FF44B888FF1F8C5FFF024B2CC00006
          0412000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000004030C065031C91C9061FF3BB686FF40B8
          89FF25AE78FF0CA569FF03A263FF01A162FF01A162FF01A162FF01A162FF01A1
          62FF01A162FF03A263FF0CA569FF25AE78FF40B889FF3BB685FF1C8E60FF0650
          31C9000302090000000000000000000000000000000000000000000000000000
          00000000000000000000000000000240279F0D8757FF30B583FF34B685FF17AB
          74FF06A569FF02A467FF02A467FF02A467FF02A467FF02A467FF02A467FF02A4
          67FF02A467FF02A467FF02A467FF06A569FF17AB74FF34B685FF30B583FF0E87
          57FF0240279F0000000000000000000000000000000000000000000000000000
          0000000000000000000000180E3C047748FF1AAF7AFF2EB686FF12AD75FF04A8
          6DFF02A76CFF02A76CFF0BAA71FF02A76CFF02A76CFF02A76CFF02A76CFF02A7
          6CFF02A76CFF02A76CFF02A76CFF02A76CFF04A86DFF13AD75FF2EB686FF1AAF
          7AFF047648FF00170E3900000000000000000000000000000000000000000000
          0000000000000000000005502EC304935FFF26B685FF15B07BFF05AB72FF03AA
          71FF03AA71FF03AA71FF67C0A2FF47C197FF15B07BFF03AA71FF03AA71FF03AA
          71FF03AA71FF03AA71FF03AA71FF03AA71FF03AA71FF05AB72FF15B07BFF26B6
          85FF04925EFF05502EC300000000000000000000000000000000000000000000
          00000000000001130A2D067748FF0AB07AFF1CB684FF06AF78FF03AE76FF03AE
          76FF03AE76FF03AE76FF353D3BFF4D7266FF6BBAA0FF4EC69FFF1AB582FF03AE
          76FF03AE76FF03AE76FF03AE76FF03AE76FF03AE76FF03AE76FF06AF78FF1CB6
          84FF0AB07AFF067748FF01130A2D000000000000000000000000000000000000
          00000000000003351F7E068F5DFF15B685FF0EB481FF04B17CFF04B17CFF04B1
          7CFF04B17CFF04B17CFF373D3BFF363636FF363636FF4B6C62FF68B49DFF58CB
          A8FF20BA8AFF04B17CFF04B17CFF04B17CFF04B17CFF04B17CFF04B17CFF0EB4
          81FF15B685FF068E5CFF03351D7B000000000000000000000000000000000000
          00000000000005542FC605A573FF13B989FF06B683FF04B582FF04B582FF04B5
          82FF04B582FF04B582FF3A403FFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF4962
          5BFF66AF9AFF5FD0AFFF2AC095FF04B582FF04B582FF04B582FF04B582FF06B6
          83FF13B989FF05A573FF05542FC6000000000000000000000000000000000000
          00000000000007663AED05B382FF11BB8DFF05B887FF05B887FF05B887FF05B8
          87FF05B887FF05B887FF3E4442FF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
          3EFF3E3E3EFF495D57FF63A392FF64D3B5FF2FC49BFF05B887FF05B887FF05B8
          87FF12BC8DFF05B382FF07663AED000000000000000000000000000000000000
          0000000000000B723FFF05BC8DFF10BF93FF05BC8DFF05BC8DFF05BC8DFF05BC
          8DFF05BC8DFF05BC8DFF434947FF434343FF434343FF434343FF434343FF4343
          43FF434343FF434343FF424242FF344843FF158065FF05BC8DFF05BC8DFF05BC
          8DFF10BF93FF05BC8DFF0B723FFF000000000000000000000000000000000000
          0000000000000C7440FF05C093FF16C59AFF05C093FF05C093FF05C093FF05C0
          93FF05C093FF05C093FF474D4BFF474747FF474747FF474747FF474747FF4747
          47FF474747FF343434FF1A1C1CFF0D5644FF07A982FF05C093FF05C093FF05C0
          93FF16C59AFF05C093FF0C7440FF000000000000000000000000000000000000
          0000000000000A6D3AED06BE92FF1DC9A2FF06C398FF06C398FF06C398FF06C3
          98FF06C398FF06C398FF4B5250FF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF3A3A
          3AFF1D1D1DFF0E5142FF08A884FF06C398FF06C398FF06C398FF06C398FF06C3
          98FF1DC9A2FF06BE92FF0A6D3AED000000000000000000000000000000000000
          000000000000095B31C608B589FF22CDA9FF0AC8A0FF06C79EFF06C79EFF06C7
          9EFF06C79EFF06C79EFF4F5654FF505050FF505050FF404040FF202020FF104D
          40FF08A786FF06C79EFF06C79EFF06C79EFF06C79EFF06C79EFF06C79EFF0AC8
          A0FF22CDA9FF08B589FF095B31C6000000000000000000000000000000000000
          00000000000007391E7B0BA071FF26D1AFFF19CEABFF07CAA4FF07CAA4FF07CA
          A4FF07CAA4FF07CAA4FF525857FF454545FF232323FF11463CFF0AA687FF07CA
          A4FF07CAA4FF07CAA4FF07CAA4FF07CAA4FF07CAA4FF07CAA4FF07CAA4FF19CE
          ABFF26D1AFFF0B9F70FF07381F78000000000000000000000000000000000000
          00000000000003160A2D0E8A53FF14D0ADFF36D7B9FF0DCFABFF07CEA9FF07CE
          A9FF07CEA9FF07CEA9FF252F2DFF124139FF0AA588FF07CEA9FF07CEA9FF07CE
          A9FF07CEA9FF07CEA9FF07CEA9FF07CEA9FF07CEA9FF07CEA9FF0DCFABFF36D7
          B9FF14D0ADFF0E8A53FF03160A2D000000000000000000000000000000000000
          000000000000000000000B5D31C30BB388FF4ADDC4FF2AD7B9FF0CD2AFFF08D1
          AEFF08D1AEFF08D1AEFF0BA78CFF08D1AEFF08D1AEFF08D1AEFF08D1AEFF08D1
          AEFF08D1AEFF08D1AEFF08D1AEFF08D1AEFF08D1AEFF0CD2AFFF2AD7B9FF4ADD
          C4FF0BB286FF0B5D31C300000000000000000000000000000000000000000000
          00000000000000000000041E0F3C0F925CFF35DCC1FF5AE2CCFF27D9BDFF0CD5
          B4FF08D4B3FF08D4B3FF08D4B3FF08D4B3FF08D4B3FF08D4B3FF08D4B3FF08D4
          B3FF08D4B3FF08D4B3FF08D4B3FF08D4B3FF0CD5B4FF27D9BDFF5AE2CCFF35DC
          C1FF0F915AFF041B0E3900000000000000000000000000000000000000000000
          00000000000000000000000000000D5029A021AE82FF61E5D1FF67E6D3FF30DD
          C3FF10D8BAFF09D7B8FF09D7B8FF09D7B8FF09D7B8FF09D7B8FF09D7B8FF09D7
          B8FF09D7B8FF09D7B8FF09D7B8FF10D8BAFF30DDC3FF68E6D3FF61E5D1FF20AC
          81FF0B4F299F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000006030C116937CA3BBD96FF75EAD9FF7EEC
          DCFF4DE4CEFF1EDDC2FF0DDBBDFF09DABCFF09DABCFF09DABCFF09DABCFF09DA
          BCFF09DABCFF0DDBBDFF1EDDC2FF4DE4CEFF7EECDCFF75EAD9FF3BBC96FF1169
          36CA000502090000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010B0515116232C044BC96FF85EE
          E0FFA0F2E7FF90EFE3FF69EAD8FF45E5CFFF2AE1C8FF1BDFC5FF1BDFC5FF2AE1
          C8FF45E5CFFF69EAD8FF90EFE3FF9FF1E7FF84EDDFFF42BB95FF116232C00009
          0512000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000302060C50279C2EA5
          75FF73DAC2FFA7F3E9FFB7F5EDFFB9F6EEFFAFF4EBFFA7F3E9FFA7F3E9FFAFF4
          EBFFB9F6EEFFB7F5EDFFA7F3E9FF73DAC2FF2EA575FF0B4C2696000302060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000421
          113F106532C6269961FF54C6A5FF80E2CFFF8CE8D8FFACF4ECFFACF4ECFF8CE8
          D8FF80E2CFFF54C6A5FF269961FF106532C60421113F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002100921093F2078106331BD106A36CC148140FC148140FC106A
          36CC106331BD093F207802100921000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000060000000B000000130000001D0000
          0023000000280000002B0000002E000000300000003100000032000000320000
          0031000000300000002F0000002D0000002A0000002600000020000000170000
          000F000000080000000300000001000000000000000000000000000000000000
          00000000000000000000000000030000000B0000001600000026000000380000
          00450000004E0D0D0D6F28282AA9414141D6454546E0585859FF585859FF4646
          47E1414141D62B2B2BAA0C0C0E7100000051000000490000003E0000002E0000
          001E000000100000000500000002000000000000000000000000000000000000
          0000000000000000000000000002000000070000000F0000001A000000271717
          1969464646D36C6C6DFF919192FFADADAEFFB3B3B3FFC3C3C4FFC3C3C4FFB3B3
          B3FFADADAEFF919192FF6C6C6DFF464646D31818186C0000002C000000200000
          00150000000B0000000400000001000000000000000000000000000000000000
          000000000000000000000000000000000000000000000202020638383A9C7A7A
          7AFFA7A7A8FFC3C3C4FFC6C6C7FFC6C6C7FFC4C4C5FFC3C3C4FFC3C3C4FFC4C4
          C5FFC6C6C7FFC6C6C7FFC3C3C4FFA7A7A8FF7A7A7AFF38383A9C020202060000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000007070715494949C38E8E8EFFBFBF
          BFFFC4C4C4FFC1C1C1FFB9B9B9FFB2B2B2FFAEAEAEFFABABABFFABABABFFAEAE
          AEFFB2B2B2FFB9B9B9FFC1C1C1FFC4C4C4FFBFBFBFFF8E8E8EFF484848C00606
          0612000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000404040C4F4F4FC9929393FFBDBEBEFFBFC0
          C0FFB6B7B7FFAEAFAFFFABACACFFAAABABFFAAABABFFAAABABFFAAABABFFAAAB
          ABFFAAABABFFABACACFFAEAFAFFFB6B7B7FFBFC0C0FFBDBEBEFF919292FF4F4F
          4FC9030303090000000000000000000000000000000000000000000000000000
          00000000000000000000000000004040409F8C8C8DFFBCBCBDFFBDBDBEFFB4B4
          B5FFAEAEAFFFADADAEFFADADAEFFADADAEFFADADAEFFADADAEFFADADAEFFADAD
          AEFFADADAEFFADADAEFFADADAEFFAEAEAFFFB4B4B5FFBDBDBEFFBCBCBDFF8B8B
          8CFF4040409F0000000000000000000000000000000000000000000000000000
          000000000000000000001818183C7B7B7BFFB8B8B8FFBFBFBFFFB6B6B6FFB2B2
          B2FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1
          B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB2B2B2FFB6B6B6FFBFBFBFFFB8B8
          B8FF7A7A7AFF1717173900000000000000000000000000000000000000000000
          00000000000000000000535353C39B9B9CFFBEBEBFFFB9B9BAFFB5B5B6FFB4B4
          B5FFB4B4B5FFB4B4B5FFB4B4B5FFBCBCBDFFCCCCCCFFD3D3D3FFD3D3D3FFCCCC
          CCFFBCBCBDFFB4B4B5FFB4B4B5FFB4B4B5FFB4B4B5FFB5B5B6FFB9B9BAFFBEBE
          BFFF9A9A9BFF535353C300000000000000000000000000000000000000000000
          0000000000001313132D7D7D7EFFB9B9BAFFBEBEBFFFB8B8B9FFB7B7B8FFB7B7
          B8FFB7B7B8FFB7B7B8FFC6C6C7FFA2A8C7FF4254A9FF142C9BFF142C9BFF4254
          A9FFA2A8C7FFC6C6C7FFB7B7B8FFB7B7B8FFB7B7B8FFB7B7B8FFB8B8B9FFBEBE
          BFFFB9B9BAFF7D7D7EFF1313132D000000000000000000000000000000000000
          0000000000003939397E989898FFC0C0C0FFBEBEBEFFBBBBBBFFBBBBBBFFBBBB
          BBFFBBBBBBFFC2C2C2FF7381BDFF001E9EFF001E9EFF001E9EFF001E9EFF001E
          9EFF001E9EFF7381BDFFC2C2C2FFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBEBE
          BEFFC0C0C0FF979797FF3737377B000000000000000000000000000000000000
          0000000000005C5C5CC6AEAEAFFFC2C2C3FFBFBFC0FFBEBEBFFFBEBEBFFFBEBE
          BFFFBEBEBFFFA0A7C3FF0324AAFF0022A9FF0022A9FF0022A9FF0022A9FF0022
          A9FF0022A9FF0324AAFFA2A9C3FFBEBEBFFFBEBEBFFFBEBEBFFFBEBEBFFFBFBF
          C0FFC2C2C3FFAEAEAFFF5C5C5CC6000000000000000000000000000000000000
          000000000000717172EDBDBDBEFFC5C5C6FFC2C2C3FFC2C2C3FFC2C2C3FFC2C2
          C3FFC2C2C3FF344FB8FF0026B5FF0026B5FF0026B5FF0026B5FF0026B5FF0026
          B5FF0026B5FF0026B5FF3652BAFFC2C2C3FFC2C2C3FFC2C2C3FFC2C2C3FFC2C2
          C3FFC5C5C6FFBDBDBEFF717172ED000000000000000000000000000000000000
          000000000000808080FFC6C6C6FFC9C9C9FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FF0D34BBFF002BC1FF002BC1FF002BC1FF002BC1FF002BC1FF002B
          C1FF002BC1FF002BC1FF0A32BBFFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC9C9C9FFC6C6C6FF808080FF000000000000000000000000000000000000
          000000000000848484FFC9C9CAFFCDCDCEFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9
          CAFFC9C9CAFF0D33ACFF0030CDFF0030CDFF0030CDFF0030CDFF0030CDFF0030
          CDFF0030CDFF0030CDFF0D32AAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9
          CAFFCDCDCEFFC9C9CAFF848484FF000000000000000000000000000000000000
          0000000000007D7D7DEDC8C8C9FFD2D2D3FFCDCDCEFFCDCDCEFFCDCDCEFFCDCD
          CEFFCDCDCEFF31437AFF0035D7FF0035D9FF0035D9FF0035D9FF0035D9FF0035
          D9FF0035D9FF0035D7FF34457AFFCDCDCEFFCDCDCEFFCDCDCEFFCDCDCEFFCDCD
          CEFFD2D2D3FFC8C8C9FF7D7D7DED000000000000000000000000000000000000
          0000000000006C6C6CC6C2C2C2FFD6D6D6FFD2D2D2FFD1D1D1FFD1D1D1FFD1D1
          D1FFD1D1D1FF9DA1ABFF03248BFF0039E4FF0039E4FF0039E4FF0039E4FF0039
          E4FF0039E4FF03248BFFA0A3ADFFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD2D2
          D2FFD6D6D6FFC2C2C2FF6C6C6CC6000000000000000000000000000000000000
          0000000000004444447BB1B1B1FFD9D9DAFFD7D7D8FFD4D4D5FFD4D4D5FFD4D4
          D5FFD4D4D5FFD4D4D5FF70778DFF001A67FF002EB7FF0037DAFF0037DAFF002E
          B7FF001A67FF70778DFFD4D4D5FFD4D4D5FFD4D4D5FFD4D4D5FFD4D4D5FFD7D7
          D8FFD9D9DAFFB0B0B0FF44444478000000000000000000000000000000000000
          0000000000001919192D9F9F9FFFDADADAFFDFDFDFFFD9D9D9FFD8D8D8FFD8D8
          D8FFD8D8D8FFD8D8D8FFD8D8D8FFA3A7B2FF424D6CFF17254DFF17254DFF424D
          6CFFA3A7B2FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD9D9D9FFDFDF
          DFFFDADADAFF9F9F9FFF1919192D000000000000000000000000000000000000
          00000000000000000000727272C3C3C3C4FFE5E5E5FFE0E0E1FFDCDCDDFFDBDB
          DCFFDBDBDCFFDBDBDCFFDBDBDCFFDBDBDCFFDBDBDCFFDBDBDCFFDBDBDCFFDBDB
          DCFFDBDBDCFFDBDBDCFFDBDBDCFFDBDBDCFFDBDBDCFFDCDCDDFFE0E0E1FFE5E5
          E5FFC2C2C3FF727272C300000000000000000000000000000000000000000000
          000000000000000000002424243CAAAAAAFFE4E4E5FFE9E9EAFFE2E2E3FFDFDF
          E0FFDEDEDFFFDEDEDFFFDEDEDFFFDEDEDFFFDEDEDFFFDEDEDFFFDEDEDFFFDEDE
          DFFFDEDEDFFFDEDEDFFFDEDEDFFFDEDEDFFFDFDFE0FFE2E2E3FFE9E9EAFFE4E4
          E5FFA9A9A9FF2121213900000000000000000000000000000000000000000000
          0000000000000000000000000000636363A0C2C2C2FFECECECFFECECEDFFE6E6
          E7FFE2E2E3FFE1E1E2FFE1E1E2FFE1E1E2FFE1E1E2FFE1E1E2FFE1E1E2FFE1E1
          E2FFE1E1E2FFE1E1E2FFE1E1E2FFE2E2E3FFE6E6E7FFEDEDEDFFECECECFFC0C0
          C1FF6363639F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000808080C808080CACDCDCEFFF0F0F0FFF1F1
          F1FFEBEBECFFE6E6E7FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4
          E5FFE4E4E5FFE4E4E5FFE6E6E7FFEBEBECFFF1F1F1FFF0F0F0FFCDCDCDFF8080
          80CA060606090000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000D0D0D157A7A7AC0CECECEFFF3F3
          F3FFF5F5F6FFF4F4F4FFF0F0F0FFECECEDFFE9E9EAFFE8E8E9FFE8E8E9FFE9E9
          EAFFECECEDFFF0F0F0FFF4F4F4FFF5F5F6FFF2F2F3FFCECECEFF7A7A7AC00C0C
          0C12000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000040404066666669CBFBF
          C0FFE4E4E5FFF7F7F7FFF8F8F9FFF8F8F9FFF8F8F8FFF7F7F7FFF7F7F7FFF8F8
          F8FFF8F8F9FFF8F8F9FFF7F7F7FFE4E4E5FFBFBFBFFF62626296040404060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002A2A
          2A3F818181C6B7B7B7FFD7D7D8FFEBEBECFFEFEFF0FFF8F8F8FFF8F8F8FFEFEF
          F0FFEBEBECFFD7D7D8FFB7B7B7FF818181C62A2A2A3F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000016161621505050787D7D7DBD888888CCA6A6A6FCA6A6A6FC8888
          88CC7D7D7DBD5050507816161621000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          00000000000000000000000000002A190E2D673C216E77462780774627807746
          2780774627807746278077462780774627807746278077462780774627807746
          278077462780774627807746278077462780774627807746278077462780673C
          216E2A190E2D0000000000000000000000000000000000000000000000000000
          000000000000000000007645267EEC8A4DFEEE8C4EFFEE8C4EFFEE8C4EFFEE8C
          4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C
          4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C
          4EFFEC8A4DFE7C48288500000000000000000000000000000000000000000000
          000000000000331E1036EE8C4EFF844D2B8D0101000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002013
          0A2290542F9AEE8C4EFF4C2C1851000000000000000000000000000000000000
          000000000000854E2B8FDD8248EE030201030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000004020104DE8248EF8A512D94000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000A26D4DA9E390
          5CF0E3905CF0E3905CF0E3905CF0E3905CF0E3905CF0E3905CF0E3905CF0E390
          5CF0E3905CF0E3905CF0E3905CF0E3905CF0E3905CF09F6B4DA6000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000D88D5CE5EE8F
          51FFF29E68FFF29E68FFF29E68FFF29E68FFF29E68FFF29E68FFF29E68FFF29E
          68FFF29E68FFF29E68FFF29E68FFF29E68FFEE8F52FFD78B5DE4000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000D88D5CE5F097
          5EFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4
          BAFFFDCAABFFF3A372FFFCC6A4FFFFD4BAFFF0975FFFD78B5DE4000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000D88D5CE5F097
          5EFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4
          BAFFFCC5A2FFEE8C4EFFFABF99FFFFD4BAFFF0975FFFD78B5DE4000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000D88D5CE5F097
          5EFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4
          BAFFFCC5A2FFEE8C4EFFFABF99FFFFD4BAFFF0975FFFD78B5DE4000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000D88D5CE5F097
          5EFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4
          BAFFFCC5A2FFEE8C4EFFFABF99FFFFD4BAFFF0975FFFD78B5DE4000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000D88D5CE5F097
          5EFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4
          BAFFFCC5A2FFEE8C4EFFFABF99FFFFD4BAFFF0975FFFD78B5DE4000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          000000000000A25F35AEC67540D5000000000000000000000000D88D5CE5F097
          5EFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4
          BAFFFCC5A2FFEE8C4EFFFABF99FFFFD4BAFFF0975FFFD78B5DE4000000000000
          000000000000C77541D6A25F35AE000000000000000000000000000000000000
          0000000000008A512D94DE8248EF030201030000000000000000D88D5CE5F097
          5EFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4
          BAFFFED0B3FFFABE99FFFECEB0FFFFD4BAFFF0975FFFD78B5DE4000000000000
          000003020103E08349F1854E2B8F000000000000000000000000000000000000
          0000000000004A2B184FEE8C4EFF90542F9A21130A2300000000D88D5CE5F097
          5EFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4
          BAFFFFD4BAFFFFD4BAFFFFD4BAFFFFD4BAFFF0975FFFD78B5DE4000000000101
          0001834D2A8CEE8C4EFF341F1138000000000000000000000000000000000000
          000000000000000000007A482883EC8A4DFEEE8C4EFFEE8C4EFFEE8C4EFFEE8C
          4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C
          4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C4EFFEE8C
          4EFFEB8A4CFD7746278000000000000000000000000000000000000000000000
          00000000000000000000000000002A190E2D673C216E77462780A6673EB1D283
          51E0D28351E0D28351E0D28351E0D28351E0D28351E0D28351E0D28351E0D283
          51E0D28351E0D28351E0D28351E0D28351E0D28351E0A5653DB077462780673C
          216E2A190E2D0000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          000000000000311E2A489F6085E7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
          00004463D8FF4463D8FF4463D8FF2F4597B2000000002F4597B24463D8FF4463
          D8FF2F4597B2000000002F4597B24463D8FF4463D8FF4463D8FF000000000000
          0000000000009C5F83E4AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
          00004463D8FF4463D8FF4463D8FF0000000000000000000000002F4597B22F45
          97B20000000000000000000000004463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
          00004463D8FF4463D8FF4463D8FF2F4597B20000000000000000000000000000
          000000000000000000002F4597B24463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF311E2A4800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF4463D8FF2F4597B200000000000000000000
          0000000000002F4597B24463D8FF4463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF4463D8FF2F4597B200000000000000000000
          0000000000002F4597B24463D8FF4463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF2F4597B20000000000000000000000000000
          000000000000000000002F4597B24463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF0000000000000000000000002F4597B22F45
          97B20000000000000000000000004463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF2F4597B2000000002F4597B24463D8FF4463
          D8FF2F4597B2000000002F4597B24463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF2D1B264200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002D1B
          2642AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          0000000000009F6085E7AF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FF9F6085E7000000000000000000000000000000000000
          0000000000002B1A243F8A5474C9AF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FF8A5474C92B1A243F000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB47F
          4BF9A97747EA92673DCA735230A0422E1B5B0C09051100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB27E4BF76B4B2D940C0805100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA17243DF1B13
          0B25000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF9D6F
          42DA0906040C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020201030C09
          05110E0A061421170E2E47321E628D633BC3B8824DFFB8824DFFB8824DFFB882
          4DFF593F257B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101000171502F9CB8824DFFB8824DFFB882
          4DFF9F7042DC0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000120D0819B6804CFCB8824DFFB882
          4DFFB8824DFF100B071600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004C36
          206AB7814DFEB8824DFFB8824DFFB8824DFF583E257A00000000000000000000
          00000000000000000000000000000000000000000000A57445E4B8824DFFB882
          4DFFB8824DFF21170E2E00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005039226FB781
          4DFEB8824DFFB8824DFFB8824DFF583E257A0000000000000000000000000000
          00000000000000000000000000000000000000000000A67545E6B8824DFFB882
          4DFFB8824DFF20170E2D00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000543C2375B8824DFFB882
          4DFFB8824DFFB8824DFF583E257A000000000000000000000000000000000000
          000000000000000000000000000000000000130E081BB7814CFDB8824DFFB882
          4DFFB8824DFF0E0A061300000000000000000000000000000000000000000000
          000000000000000000000000000000000000573E2579B8824DFFB8824DFFB882
          4DFFB8824DFF583E257A00000000000000000000000000000000000000000000
          000000000000000000000000000001010001735230A0B8824DFFB8824DFFB882
          4DFF9B6E41D70000000000000000000000000000000000000000000000000000
          00000000000000000000000000005C41267FB8824DFFB8824DFFB8824DFFB882
          4DFF583E257A0000000000000000000000000000000000000000000000000403
          02060C0905111E150C2947321E628E643BC5B8824DFFB8824DFFB8824DFFB882
          4DFF533B23730000000000000000000000000000000000000000000000000000
          0000000000000000000060442885B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF976B
          3FD1060402080000000000000000000000000000000000000000000000000000
          00000000000064462A8AB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF9A6D40D5160F
          091E000000000000000000000000000000000000000000000000000000000000
          0000000000005E422782B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFAC7A48EF5B40267E0806030B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000573D2478B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BF9AC79
          48EE9F7143DD886039BD6A4B2C933828184E0705030A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F38216EB7814DFEB8824DFFB8824DFFB882
          4DFF614428860000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004A341F66B7814CFDB8824DFFB882
          4DFFB8824DFF5F43288400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000422F1C5CB6804CFCB882
          4DFFB8824DFFB8824DFF5E422782000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003D2B1A55B47F
          4BF9B8824DFFB8824DFFB8824DFF5C4127800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003727
          174CB37E4BF8B8824DFFB8824DFFB8824DFF5C41267F00000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000004000000050000000700000007000000070000
          0007000000050000000400000002000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000070000000C0000001100000016000000190000001B0000001B0000
          001900000016000000120000000C000000070000000400000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000070000
          000E000000181B12104D442D289668463DD16C483FD985594EFF84584EFF6C48
          3EDA66453CD1432C27971A120F500000001A0000001000000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000001000000040000000B000000162D1E
          1B6B764F44E2966E64FFB19187FFC9AFA6FFCEB5ADFFDECAC2FFDECAC2FFCEB5
          ACFFC8AEA5FFB08F86FF936A60FF724C43E22C1D196E000000190000000D0000
          0005000000010000000100000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000E100B0A376C4A40D0A37E
          75FFCCB4ACFFDFCCC4FFDFCCC5FFDFCCC5FFDFCBC4FFDFCCC4FFDFCBC4FFDECB
          C3FFDFCBC3FFDFCBC3FFDECBC3FFCBB1A9FF9C766CFF68463DD1100B093A0000
          0011000000060000000100000001000000000000000000000000000000000000
          00000000000000000001000000050000000F23181556875E53F0C5ACA3FFE1CE
          C6FFE0CDC6FFDDC6BCFFC99F8BFFB98063FFB47555FFA9623CFFAA613CFFB475
          55FFB97F63FFC89E8AFFDCC4BAFFE0CCC4FFDFCCC5FFBEA197FF81594EF12217
          145A000000120000000600000001000000000000000000000000000000000000
          000000000001000000040000000D23191554946D61FAD2BDB5FFE2D0C9FFE0CB
          C4FFC69A85FFAE6A45FFAC643EFFAD663EFFAD663FFFAD653FFFAD653FFFAC64
          3FFFAD643DFFAB633DFFAD6843FFC69983FFDECAC1FFE0CEC6FFCBB2AAFF8D64
          5AFA221714590000001000000005000000010000000000000000000000000000
          00000000000200000009150F0D398A655AEEDBC9C4FFE3D2CBFFDCC5BAFFB77A
          5AFFAE653FFFAF6641FFAF6741FFAF6841FFAF6842FFB06842FFB06842FFAF67
          41FFAE673FFFAE663FFFAD653FFFAC643EFFB6785AFFDAC2B7FFE1CFC8FFCFB7
          B0FF855D53EF140D0C3E0000000C000000030000000100000000000000000000
          00010000000500000011725147CBD2BEB8FFE4D4CDFFDEC8BEFFB3714DFFAF67
          40FFB06942FFB16943FFB06A42FFAE673FFFAB633CFFAA623BFFA9613BFFAA64
          3CFFAE663FFFAF6941FFAF6841FFAF6740FFAD653EFFB16E4BFFDDC5BAFFE3D1
          C9FFC0A59CFF6D4B43D000000016000000070000000100000000000000000000
          00020000000A32242065AD8A80FFECE0DCFFE4D3CCFFB87C5BFFB16942FFB26A
          44FFB36C45FFB26C45FFB06842FFD0AA96FFF2E8E4FFFFFFFFFFFFFFFFFFF0E5
          DFFFCFA894FFAE6640FFB06A43FFB16A43FFAF6741FFAE6640FFB67959FFE2CF
          C7FFE4D2CCFFA17C72FF2F211D6A0000000D0000000300000001000000010000
          00050000000F835E54DDE3D6D2FFE7D8D3FFCCA28CFFB26942FFB36C44FFB46E
          46FFB46E46FFB56E46FFB06941FFE4D0C2FFF7F0E9FFF7F0E9FFF8F3ECFFFBF8
          F5FFF6EFEBFFAF673FFFB36B45FFB16B44FFB26A43FFB06841FFAE663FFFCA9E
          89FFE4D4CEFFD0B9B2FF7B574CDF000000150000000600000001000000020000
          0007271D194FB08D83FFF4ECE9FFE5D3CCFFB4704AFFB46C46FFB56F46FFB770
          48FFB77047FFB67048FFB56E46FFB57856FFF7F1EAFFF8F1EAFFF7F1EBFFF8F2
          EDFFBE896DFFB26A43FFB56E46FFB46E46FFB36C45FFB26B43FFB16843FFB16D
          47FFE2CFC7FFE6D6D0FFA78177FF261B18570000000A00000002000000020000
          0009553E3892D2BDB7FFEFE5E2FFD4B1A0FFB46C44FFB77048FFB87149FFB871
          49FFB97249FFBB774DFFBF7C52FFB6754AFFEFE2D9FFF8F2EBFFF7F2ECFFFDFB
          FAFFB7764FFFBA774CFFB9734AFFB66F48FFB56E47FFB46E46FFB36B44FFAF68
          41FFCFA896FFE7D8D2FFC4AAA2FF503933970000000D00000003000000020000
          000B7B5B52C6E7DDD9FFEEE2DEFFC38D70FFB66F47FFB9724AFFB9734AFFBF7C
          52FFC5895CFFC88C5FFFC88C5FFFBC7F52FFECDFD5FFF8F2EDFFF9F3ECFFFFFE
          FEFFB8774DFFC28359FFC18358FFBE7E53FFBA764CFFB56F47FFB56E46FFB26B
          44FFC0896DFFE9DAD4FFD5C1BBFF74544BC90000001000000004000000030000
          000C997367ECF6F1F0FFEDE2DDFFBD7F5CFFB87249FFBD784FFFC78A5EFFCA91
          63FFCA9164FFCA9164FFCB9263FFBF8156FFEDE0D6FFF8F4EEFFF9F3EEFFFFFF
          FFFFBB7B51FFC6895CFFC4875BFFC28559FFC18257FFBD7C53FFB87149FFB46D
          46FFB97B57FFEADCD7FFE2D2CCFF8F695DED0000001200000004000000030000
          000CA57D71FAFDFCFCFFEDE4DFFFB97650FFBE7B51FFCB9266FFCD9668FFCE96
          68FFCE9668FFCE9768FFCC9466FFBC7F53FFF5EDE6FFF9F4EEFFFAF4EFFFFFFF
          FFFFBD7F54FFC88D61FFC88B5FFFC6895CFFC4865BFFC38459FFC07F54FFB871
          4AFFB5704AFFEBDED9FFE9DDD7FF9B7467FA0000001200000005000000030000
          000BA88075FAFDFCFCFFF1E8E3FFBE7F57FFCC9568FFCF996CFFD19A6CFFD09B
          6DFFD19B6EFFD09B6CFFC99164FFDBBEAAFFFAF5EFFFFAF5F0FFFAF5EFFFFFFF
          FFFFBF8258FFCB9265FFCA8F63FFC88D61FFC78A5FFFC5885CFFC38558FFBF7F
          54FFB67149FFECE0DCFFECE1DCFF9E776AFA0000001100000005000000020000
          0009A17D71ECF7F2F1FFF5EDEBFFCF9F7DFFCF9A6DFFD29D70FFD3A072FFD4A0
          72FFD3A072FFD49F72FFCA9467FFEBDACFFFFAF6F1FFFAF6F1FFFAF5F1FFFFFF
          FFFFC1865BFFCE9669FFCD9467FFCA9165FFC98F62FFC78B60FFC5885DFFC282
          59FFC18560FFEEE4DEFFEADEDAFF977266ED0000000F00000004000000020000
          000887695FC4EBE1DEFFFAF7F6FFD9B59AFFCF9C6FFFD4A175FFD5A377FFD6A5
          77FFD6A677FFD6A578FFD3A173FFC9956AFFD2AC92FFE6D4C7FFFBF6F1FFFDFB
          FAFFC88E61FFD09B6DFFCF986BFFCD9569FFCC9267FFC88E63FFC78C60FFC284
          5AFFCEA084FFF1E7E4FFE3D4CEFF7E6057C70000000D00000003000000010000
          0005604C448EDBC9C2FFFEFDFDFFEADACDFFD09D70FFD6A678FFD8A97CFFD9AA
          7CFFDAAA7DFFD9AA7DFFD6A679FFCD996DFFBF885CFFBB8057FFBD8259FFCA98
          71FFCF9A6FFFD49E71FFD29C70FFD19A6DFFCE966BFFCC9367FFC88E63FFC385
          5BFFDEC2B0FFF3EAE7FFD5C1BBFF5A453E920000000900000002000000010000
          00042D242147C5A79BFFFFFFFFFFF9F5F2FFD3A47DFFD6A77BFFDAAC81FFDCAD
          81FFDCAF82FFDCAF82FFD4A376FFD8B8A1FFFAF6F3FFEBDCD4FFD7B9A6FFC08A
          61FFD19E73FFD6A277FFD4A074FFD29D72FFD1996EFFCD966AFFC98F64FFC68D
          67FFF2E7E3FFF7F1EFFFBD9E93FF2B221E4D0000000600000001000000000000
          0002000000079F7F73DAEDE4E0FFFEFDFDFFEAD5C5FFD5A67CFFDAAF84FFDEB2
          86FFDDB386FFDFB487FFD4A67BFFF5ECE6FFFDF9F7FFFDFBFAFFFFFFFFFFEADA
          D0FFD09C70FFD8A77BFFD6A479FFD49F75FFD29D73FFCE976EFFC98F64FFDFC3
          B0FFF5EFECFFEADFDBFF97746ADC0000000C0000000400000001000000000000
          0001000000043E322E5ACAADA2FFFFFFFFFFFCFAF9FFDDBB9DFFDBAE84FFDFB4
          8AFFE0B88CFFE0B78CFFDDB387FFEDDBCBFFFCF9F6FFFBF9F5FFFDFBF8FFFCF9
          F7FFD4A379FFDAAB7FFFD8A77DFFD5A47AFFD39E73FFCE976CFFD2A686FFF6EF
          EDFFFAF7F5FFC5A59BFF3C2F2A5F000000070000000200000000000000000000
          0000000000020000000593786DC6E6D7D2FFFFFFFFFFFAF6F4FFDCB593FFDCB2
          89FFE0B98EFFE2BB90FFE2BB90FFE1B78EFFE9D2B9FFF6EEE5FFF9F3EEFFEBD5
          C1FFDCAF84FFDDAF83FFDAAA80FFD6A57AFFD29D74FFD1A07DFFF3EBE6FFF9F6
          F4FFE3D4CFFF8C7066C70000000A000000030000000100000000000000000000
          0000000000010000000219151326B5968AECF2EAE8FFFFFFFFFFFBF8F6FFE1C1
          A5FFDCB38AFFE1BA91FFE3BC94FFE3BD94FFE3BD93FFE3BB91FFE1B98FFFE0B6
          8DFFDFB389FFDCAF85FFD8A980FFD3A076FFD8B091FFF5EEEAFFFAF7F6FFF1E8
          E5FFB08F83ED1813122B00000005000000010000000000000000000000000000
          000000000000000000010000000331282544C4A598F9F0E8E5FFFFFFFFFFFDFC
          FBFFEFDFD2FFDDB792FFDFB68FFFE1B991FFE2BA92FFE1BA92FFE0B88FFFDFB3
          8BFFDBAF87FFD8A980FFD5A883FFE9D4C3FFF9F4F3FFFCFAF9FFEFE6E3FFBF9D
          91F92F2623480000000500000002000000000000000000000000000000000000
          00000000000000000000000000010000000331292544BA9B8EEEE7D8D3FFFFFF
          FFFFFFFEFEFFFCFAF9FFF2E4DAFFE7CEB7FFE3C4A8FFDAB18AFFD9B087FFE1C0
          A2FFE4C7AEFFEEDDD1FFFAF4F2FFFCFAFAFFFEFEFEFFE6D6D0FFB49589EE3027
          2447000000050000000200000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000002181412229C8177C8D6BC
          B2FFF2E9E6FFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFDFBFAFFFDFC
          FBFFFEFCFBFFFEFDFDFFFFFFFFFFF1E9E6FFD3BAB0FF997D73C9171311250000
          0004000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000034136
          3154AC9083D9D1B4A8FFE3D1CBFFF2E9E5FFF4EEEBFFFEFEFEFFFEFEFEFFF4EE
          EBFFF1E8E5FFE2D0C9FFCFB2A5FFA88D81DA4236325900000005000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000003241E1C3065544D819C8378C5A3887DCDCAA89BFCC9A99AFCA289
          7DCE9B8277C564544D82231E1B32000000040000000300000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000020000000300000003000000030000
          0003000000030000000200000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0001000000010000000200000005000000060000000600000006000000060000
          0006000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000060000000600000003000000010000000100000000000000000000
          0001000000040000000B00000013000000170000001800000019000000190000
          001900000019000000190000001A0000001A0000001A0000001A0000001A0000
          001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
          001C0000001B000000160000000E000000050000000100000000000000010000
          00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
          96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
          93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
          8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
          0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
          B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
          B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
          B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
          000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
          C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
          C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
          C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
          000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
          C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
          C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
          C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
          000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
          C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
          C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
          C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
          0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
          C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
          C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
          C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
          0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
          CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
          D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
          C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
          0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
          D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
          B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
          C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
          0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
          BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
          C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
          C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
          000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
          AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
          F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
          CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
          000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
          B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
          E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
          CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
          00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
          D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
          E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
          CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
          00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
          D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
          E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
          D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
          00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
          D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
          E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
          D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
          00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
          DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
          EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
          D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
          00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
          BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
          D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
          D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
          00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
          A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
          BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
          D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
          00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
          B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
          A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
          DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
          00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
          E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
          B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
          E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
          00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
          EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
          E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
          E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
          0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
          EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
          E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
          E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
          0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
          EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
          EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
          E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
          000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
          EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
          EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
          E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
          0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
          EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
          EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
          E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
          0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
          F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
          F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
          F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
          00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
          DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
          D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
          D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
          0000000000010000000200000004000000050000000600000006000000060000
          0006000000070000000700000007000000070000000700000007000000080000
          0008000000080000000800000008000000080000000800000009000000090000
          0009000000080000000700000004000000020000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000020000
          0004000000060000000600000006000000060000000600000006000000060000
          0006000000060000000600000006000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0006000000040000000200000001000000000000000000000000000000060000
          000E000000150000001700000018000000180000001800000018000000190000
          001900000019000000190000001900000019000000190000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001B0000001B0000001A0000
          001700000010000000070000000200000000000000000000000000000010173B
          7ACD2557A4FF2859A5FF2758A6FF2757A5FF2558A5FF2656A3FF2656A4FF2456
          A4FF2455A4FF2455A3FF2354A2FF2353A2FF2252A2FF2253A2FF2151A1FF2151
          A1FF2051A1FF2050A0FF1F4FA0FF1F4F9FFF1F4E9FFF1E4D9FFF1D4D9EFF1C4B
          9CFF173F8AEE040A143D0000000B000000020000000000000000000000151D50
          9FFF2559A5FF4F95CFFF64BBEDFF47A7E7FF46A5E6FF44A4E6FF42A3E5FF40A2
          E4FF3FA1E4FF3E9FE3FF3C9EE3FF3B9DE2FF3A9CE1FF389BE1FF389AE1FF359A
          E1FF3598E0FF3497E0FF3397DEFF3296E0FF3195DEFF3095DEFF3095DEFF2E90
          DAFF297DCAFF12326BBF00000011000000040000000000000000000000162154
          A3FF3166ADFF3C7BBCFF7ECBF2FF4FADE9FF4BAAE8FF49AAE8FF47A7E6FF45A6
          E6FF43A5E5FF43A3E4FF40A2E5FF40A1E4FF3FA0E4FF3D9FE3FF3B9DE3FF3A9D
          E2FF399CE2FF379BE1FF379AE2FF3599E1FF3398E1FF3298DFFF3197DFFF3096
          DFFF3295DEFF1A4A98F80103051D00000005000000010000000000000014245C
          A9FF447ABAFF2862ACFF8CD1F2FF64BCEEFF52B0EBFF51AFEAFF50AEE9FF4DAD
          E8FF4CAAE7FF4AA9E7FF48A8E7FF47A7E6FF45A5E6FF43A4E6FF42A3E5FF41A1
          E4FF3FA1E4FF3D9FE4FF3C9FE3FF3B9EE3FF3A9DE2FF399CE1FF379AE1FF3699
          E0FF389CE1FF2363B1FF08162E5D000000080000000100000000000000132661
          AFFF548AC4FF2866AEFF7CB9E1FF82CFF3FF59B6EDFF57B5EDFF57B4ECFF54B3
          ECFF53B1EAFF51B0EAFF51AEE8FF4FADE8FF4DABE8FF4EACE8FF4CAAE8FF4BAA
          E7FF47A6E5FF44A6E6FF43A4E5FF41A3E5FF40A2E4FF3FA1E3FF3E9FE2FF3C9F
          E2FF3D9FE3FF2F7AC4FF0F2A56970000000A0000000200000000000000122A67
          B1FF649BCEFF3272B8FF619DCFFF9FDEF8FF5FBAF0FF5EBAEFFF5EB9EEFF5DBA
          EDFF62BBEEFF68BFEFFF6ABEEFFF6CC0EEFF69BDEDFF66BBEDFF63B9EDFF60B9
          ECFF5EB6ECFF5BB4EBFF56B1E9FF51ADE9FF4CA9E8FF47A6E6FF45A5E5FF43A4
          E5FF44A4E4FF4198D9FF164385D80000000D0000000300000001000000112D6C
          B5FF74AAD7FF4287C6FF4083C0FFB5E8FBFF71C6F3FF6FC4F2FF76C8F3FF7ACA
          F4FF7ACAF2FF78C8F3FF77C7F2FF73C6F1FF72C4F1FF70C2F0FF6DC0EFFF6ABF
          EEFF68BDEEFF65BAEEFF62B9ECFF5FB7EBFF5DB6EBFF5AB4EAFF54B0E9FF4EAC
          E7FF49A9E6FF50ADE8FF225EAAFF030A132C0000000400000001000000103071
          B7FF84B9DFFF5399D3FF3A7EBEFFADDCF1FFA5E1F9FF86D1F6FF85D0F6FF83CF
          F6FF82CEF5FF7FCDF3FF7DCBF3FF7CCBF3FF7ACAF2FF79C8F2FF76C6F1FF73C6
          F2FF70C4F0FF6DC2F0FF6CC1EFFF68BDEEFF66BCEDFF63B9ECFF60B8ECFF5EB6
          EBFF59B4EAFF5AB3EAFF357CC1FF0C2344740000000700000002000000103176
          BAFF93C6E7FF61ABDDFF4590CBFF8DC0E0FFC2EDFCFF8BD5F7FF8AD5F7FF89D3
          F6FF87D2F6FF86D1F6FF85D1F5FF83D0F5FF81CFF4FF7FCDF4FF7ECDF3FF7DCB
          F3FF7AC9F2FF77C8F2FF74C6F0FF72C5F0FF70C3F0FF6CC1F0FF6ABFEEFF66BD
          EEFF64BBEDFF66BCEDFF53A0D8FF153F75BA00000009000000020000000F347B
          BDFFA1D3EEFF70BBE6FF5AA8DBFF66A5D2FFD7F6FDFF95DCF9FF90D8F8FF8FD8
          F8FF8DD7F8FF8CD5F8FF8BD5F7FF88D3F6FF88D3F6FF86D1F6FF85D1F4FF82D0
          F4FF81CFF4FF80CEF4FF7DCCF4FF7BCBF3FF78C9F1FF75C7F1FF72C6F1FF70C5
          F1FF6DC1EFFF6CC1EFFF73C1EDFF215DA4F701030614000000030000000E357E
          BFFFAEDFF4FF7ECAEFFF73C2ECFF4C97CDFFCAEBF7FFDEF8FEFFDEF8FEFFDDF8
          FEFFDCF8FEFFDCF8FEFFDBF7FEFFD9F6FEFFD7F5FCFFBDECFBFF8FD7F7FF89D3
          F7FF87D2F6FF85D3F6FF84D1F5FF82D0F5FF80CEF5FF7ECDF4FF7CCBF3FF79CA
          F2FF76C8F2FF73C6F1FF7CCAF1FF3A7EBFFF091C3255000000050000000D3782
          C1FFBBE7F8FF8DD8F5FF84D2F4FF6ABDE7FF51A1D3FF4C99CCFF4B98CCFF4996
          CBFF4995CAFF4693CBFF4591CAFF4490C8FF75B0D8FFD0F0F9FFD0F4FCFF9BDE
          F9FF8DD7F8FF8CD6F7FF8AD4F7FF88D5F7FF87D3F7FF85D2F5FF83D1F5FF80CF
          F5FF7ECDF3FF7BCCF3FF81CEF3FF5CA4D5FF133A659D000000060000000C3985
          C3FFC5F0FCFF97E3FBFF93E1FAFF8DDCFAFF87D9F9FF83D7F9FF7FD5F8FF7CD2
          F8FF79D1F8FF77CEF6FF73CCF6FF6EC9F5FF5BB4E7FF559DD1FFACD6ECFFE0F9
          FEFFDFF9FEFFDEF9FEFFDEF8FEFFDDF7FEFFDDF7FEFFDBF7FEFFDAF6FEFFDAF6
          FEFFD8F5FDFFD6F5FDFFD5F4FDFFBDE2F2FF1D5897E0000000070000000B3B89
          C5FFCDF6FFFFA2ECFEFF9FEAFEFF9CE8FEFF99E7FEFF96E6FDFF93E4FDFF90E2
          FDFF8EDFFCFF8CDDFCFF89DCFCFF84D9FBFF7DD5FAFF6FCAF5FF52A7DAFF4694
          CAFF4592CAFF4492CAFF4290C9FF418FC8FF3F8DC7FF3E8BC7FF3D8AC6FF3B89
          C5FF226BB1FF226AB1FF216AB0FF2064A6F415416DA4000000050000000B3C8C
          C7FFD1F7FFFFA6EFFFFFA4EEFFFFA2ECFFFFA0EBFEFF9EE9FEFF9CE8FEFF99E7
          FEFF97E5FDFF95E3FDFF92E1FDFF8FE0FCFF8ADDFCFF83D9FBFF7DD4FAFF77D1
          F9FF73CFF9FF70CCF9FF6DC9F8FF6AC7F6FF68C5F6FF64C2F5FF62C0F4FF7CCC
          F6FF2C6CB1FF000000170000000D0000000800000006000000030000000A3D8F
          C9FFD4F9FFFFAAF1FFFFA8F0FFFFA6EFFFFFA4EEFFFFA2EDFFFFA0EBFFFF9EEA
          FEFF9CE8FEFF9AE7FEFF97E5FDFF95E3FDFF92E2FDFF8FDFFCFF8CDDFCFF89DA
          FBFF84D9FBFF81D7FBFF7ED5FAFF7CD3FAFF79D1F9FF76CEF9FF73CDF8FF8DD6
          F9FF357DBEFF0000000F00000005000000020000000100000001000000093E91
          CBFFD6FAFFFFADF3FFFFACF2FFFFAAF1FFFFA8F0FFFFA6EFFFFFA4EDFFFFA2ED
          FFFFA0EBFEFF9EEAFEFF9CE9FEFF9AE6FEFF97E6FEFF95E4FDFF93E2FDFF90E0
          FCFF8EDFFCFF8BDDFCFF88DBFBFF85D9FBFF83D7FAFF81D5FAFF7DD3F9FF95DC
          FBFF3985C4FF0000000C00000003000000000000000000000000000000084095
          CDFFDAFAFFFFB0F5FFFFAFF4FFFFADF3FFFFACF2FFFFAAF1FFFFA8F0FFFFA6EF
          FFFFA4EEFFFFABEFFEFFC0F6FEFFCEF8FEFFCDF8FEFFCDF8FEFFCDF8FEFFCCF8
          FEFFCCF8FEFFCBF8FEFFCBF8FEFFCBF8FEFFCAF8FEFFCAF8FEFFC9F8FEFFA7DE
          F1FF367CB3E90000000A00000003000000000000000000000000000000084297
          CEFFDBFBFFFFB3F6FFFFB2F6FFFFB0F5FFFFAFF4FFFFADF3FFFFACF2FFFFAAF1
          FFFFAEF2FEFF92D2ECFF3F93CBFF3F92CBFF3F92CBFF3F91CBFF3F91CAFF3F91
          CAFF3E90CAFF3D90CAFF3E8FC9FF3D8FC9FF3D8EC9FF3D8DC8FF3D8DC8FF306F
          9ECD0F23314A0000000700000002000000000000000000000000000000074299
          CFFFDDFCFFFFB5F7FFFFB4F7FFFFB3F6FFFFB1F6FFFFB0F5FFFFAFF4FFFFB3F4
          FFFF8ED2ECFF2A6082A80000000B000000090000000900000009000000090000
          0009000000090000000900000009000000090000000A0000000A0000000A0000
          0009000000060000000300000001000000000000000000000000000000053D8D
          BDE8B2E3F3FFD5F9FEFFD4F9FEFFD4F9FEFFD4F9FEFFD3F9FEFFD3F9FEFFC5F0
          FAFF4893C1EA050B0F1A00000004000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000010000000100000000000000000000000000000000000000031127
          3445357CA6CB449DD2FF449DD2FF449DD2FF449DD1FF449DD1FF449CD1FF449C
          D1FF163345590000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000050000000500000005000000050000000500000006000000060000
          0005000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002060404160D09082E100B
          0A38090606210101010600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020201091C14126230231FAE45312BF449342FFF49342FFF4934
          2FFF49342FFF49342FFF3B2926D2261B18850D09082E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000100
          00031D141266422E2AE849342FFF49342FFF49342FFF45302BF13C2A26D43929
          24C9402E29E447332EFD49342FFF49342FFF48332EFE2E211DA7090606200000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000302020D3627
          23C149342FFF49342FFF422F29E9271B19880B08072900000000000000000000
          0000000000000302020C1A12115C352421B949342FFF49342FFF46312DF7150F
          0D49000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050403133C2A26D44934
          2FFF45312CF3221816780302020A000000000000000000000000000000000000
          0000000000000000000000000000000000000F0A0934372723C249342FFF4733
          2EFD1B1311610000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D14126549342FFF412E
          29E50D09082E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001211715754732
          2DFB47332EFD140E0D4700000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050303111E15136B0604
          0417000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001912
          105A49342FFF45312CF30A070623000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002A1E1B9449342FFF332421B6000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000403020F0D09082E00000000000000000000
          00000302020B432F2BED49342FFF120D0B3F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000120D0B40412E29E543302BEF00000000000000000000
          0000000000002017157249342FFF342520B70000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000302020C2B1D1A9649342FFF48332EFE251A178100000000000000000000
          0000000000000503031147322DFC47322DFC0503031100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000110C
          0B3B402D29E249342FFF3F2D28DF110C0B3B0000000000000000000000000000
          00000000000000000000352422BA49342FFF18110F5600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000040303103D2A28DC4832
          2DFE48332EFE291E1B9502020109000000000000000000000000000000000000
          00000000000000000000291C1A9149342FFF2017147100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000140E0C4949342FFF4732
          2DF8120D0B400000000000000000000000000000000000000000000000000000
          000000000000000000002218167949342FFF271C198B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000120D0B4049342FFF3826
          22C3000000000000000000000000000000000000000000000000000000000000
          000000000000000000001F16146D49342FFF271C198A00000000000000000000
          000000000000000000002B1D1A992C1E1B9B0101010600000000000000000000
          00000000000000000000000000000000000000000000120D0B4049342FFF3726
          23C0000000000000000000000000000000000000000000000000000000000000
          00000000000000000000261B188649342FFF2017157200000000000000000000
          0000000000000101010949332EFF49342FFF412D29E31C141263010000030000
          00000000000000000000000000000000000000000000120D0B4049342FFF3726
          23C0000000000000000000000000000000000000000000000000000000000000
          000000000000000000002F211EA649342FFF1911105700000000000000000000
          0000000000000B08072948332EFF48332EFF49342FFF49342FFF3D2B27D81811
          0F540000000000000000000000000000000000000000120D0B4049342FFF3726
          23C0000000000000000000000000000000000000000000000000000000000000
          00000000000000000001432F2AEA48332EFE0504031400000000000000000000
          00000000000017100F5249342FFF48332EFF3A2825CD422F29E949342FFF4934
          2FFF362722BF00000001000000000000000000000000120D0B4049342FFF3726
          23C0000000000000000000000000000000000000000000000000000000000000
          0000000000000F0B0A3649342FFF382824C60000000000000000000000000000
          0000000000002319167B49342FFF46312BF447322DFC0E0A093421171573422F
          29E93B2926D200000001000000000000000000000000120D0B4049342FFF3726
          23C0000000000000000000000000000000000000000000000000000000000000
          00000000000030221FAA49342FFF1D1412660000000000000000000000000000
          0000000000002F211EA449342FFF2D1F1B9F49342FFF3A2825CD010101050000
          000000000000000000000000000000000000000000000D09083049342FFF3223
          20B0000000000000000000000000000000000000000000000000000000000000
          00000E0A093349342FFF3D2B28D9010000030000000000000000000000000000
          000000000000362722BF49342FFF130E0C45342520B849342FFF291E1B950000
          00000000000000000000000000000000000000000000000000000D0908300403
          0310000000000000000000000000000000000000000000000000000000000806
          051D412E29E548332EFE130E0C45000000000000000000000000000000000000
          00000000000017100F51281D1A8E0100000305030312412E29E549342FFF261A
          1887000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000906051F3F2B
          28DC49342FFF2319167C00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C09082C432F2BEC4934
          2FFF31221FAB0504031400000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0B0A36432F2AEA4934
          2FFF2D201CA10000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000A0706253E2C
          28DD49342FFF422E2AEB22181679050303110000000000000000000000000000
          00000000000000000000000000000E0A093331221FAB49342FFF49342FFF271B
          1988000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000201
          01072117157543302BEE49342FFF47322DFC3F2C27DE352422BA2B1F1B98241A
          1780241A1780271C19893D2B28D949342FFF49342FFF402D29E217100F520000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000403020E251A18833F2D28DF49342FFF49342FFF49342FFF4934
          2FFF49342FFF49342FFF47332EFD382724C51F16146F01010106000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000705041A150F0E4C1E15136A2218
          16781B131161130E0C4505030312000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
          0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
          0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
          0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
          0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          0000040404152E2E2EE52A2A2AD1252525BF252525BF252525BF252525BF2525
          25BF252525BF252525BF252525BF252525BF252525BF252525BF252525BF2525
          25BF252525BF252525BF252525BF252525BF252525BF252525BF252525BF2525
          25BF252525BF272727C9303030EF171717750000000000000000000000000000
          000013131360333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF222222A90000000000000000000000000000
          000000000000292929D2333333FF1E1E1E9B0D0D0D400D0D0D400D0D0D400D0D
          0D400D0D0D400D0D0D400D0D0D400D0D0D400D0D0D400D0D0D400D0D0D400D0D
          0D400D0D0D400D0D0D400D0D0D400D0D0D400D0D0D400D0D0D400D0D0D400D0D
          0D401C1C1C8B333333FF2B2B2BD50202020B0000000000000000000000000000
          0000000000001212125A333333FF2F2F2FE90707072100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E2E2EEC333333FF1313135D000000000000000000000000000000000000
          00000000000000000000252525BB333333FF222222AC00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001B1B
          1B8C333333FF2A2A2AD400000000000000000000000000000000000000000000
          000000000000000000000B0B0B35333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF1313135F00000000000000000000000000000000000000000000
          0000000000000000000014141466333333FF2F2F2FF100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002828
          28CE333333FF2B2B2BD600000000000000000000000000000000000000000000
          00000000000000000000292929CC333333FF1616166E00000000000000000000
          000000000000000000000D0D0D43000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000D0D
          0D43333333FF333333FF05050519000000000000000000000000000000000000
          0000000000000F0F0F4C333333FF282828CD0000000000000000000000000000
          0000000000002C2C2CDB333333FF080808280000000000000000000000000000
          000000000000000000000303030D131313600303030D00000000000000000000
          00002C2C2CDE333333FF0F0F0F4C000000000000000000000000000000000000
          0000000000001616166C333333FF1F1F1F9A0000000000000000000000000000
          0000222222AA333333FF333333FF333333FF0A0A0A3000000000000000000000
          000000000000000000002020209F333333FF0D0D0D4000000000000000000000
          00001212125B333333FF19191980000000000000000000000000000000000000
          0000000000001C1C1C8E333333FF171717710000000000000000000000001919
          1980333333FF282828C71B1B1B88333333FF333333FF10101050000000000000
          00000000000000000000212121A7333333FF1212125C00000000000000000000
          00000D0D0D40333333FF1F1F1F9C000000000000000000000000000000000000
          000000000000232323B5333333FF0F0F0F4A0000000000000000000000000D0D
          0D4019191980080808280000000019191980333333FF333333FF2A2A2AD11919
          197D1F1F1F9D252525BE303030F0333333FF222222AB00000000000000000000
          00000D0D0D40333333FF252525B8000000000000000000000000000000000000
          000000000000222222AC333333FF111111530000000000000000000000000000
          00000000000000000000000000000000000019191980333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF1919198200000000000000000000
          000011111155333333FF222222AC000000000000000000000000000000000000
          0000000000001D1D1D93333333FF161616700000000000000000000000000000
          0000000000000000000000000000000000001C1C1C8B333333FF303030F51E1E
          1E97151515690F0F0F4B0909092D0303030F0000000000000000000000000000
          000017171771333333FF1D1D1D93000000000000000000000000000000000000
          0000000000001515156A333333FF222222AC0000000000000000000000000000
          000000000000000000000000000000000000333333FF333333FF0F0F0F4C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000222222AA333333FF1616166E000000000000000000000000000000000000
          00000000000007070724333333FF333333FF0A0A0A3400000000000000000000
          00000000000000000000000000001C1C1C8A333333FF242424B2000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2D2DE3333333FF08080829000000000000000000000000000000000000
          00000000000000000000282828C7333333FF1F1F1F9900000000000000000000
          0000000000000000000000000000333333FF333333FF0F0F0F4C000000000000
          0000000000000000000000000000000000000000000000000000000000001414
          1466333333FF272727C800000000000000000000000000000000000000000000
          0000000000000000000011111155333333FF333333FF0A0A0A33000000000000
          0000000000000000000016161670333333FF333333FF252525BF111111550000
          0000000000000000000000000000000000000000000000000000000000002929
          29CC333333FF1414146600000000000000000000000000000000000000000000
          00000000000000000000000000002020209E333333FF2A2A2AD4000000000000
          0000000000000000000000000000292929CC333333FF333333FF252525BF0000
          0000000000000000000000000000000000000000000000000000191919803333
          33FF292929CC0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030303112D2D2DE7333333FF252525BF0000
          00000000000000000000000000000000000005050519191919800E0E0E460000
          00000000000000000000000000000000000000000000202020A2333333FF3333
          33FF0808082A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A33333333FF333333FF2525
          25BF0F0F0F4C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E0E0E47292929CC333333FF333333FF0808
          082A000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000606061C242424BA3333
          33FF333333FF242424B214141466070707240000000000000000000000000000
          000003030310101010501F1F1F9C333333FF333333FF2E2E2EEB0D0D0D400000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101061919
          19802E2E2EE5333333FF333333FF333333FF303030EF292929CF282828CD2F2F
          2FEA333333FF333333FF333333FF303030EE1C1C1C910909092F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000050505191616166D242424B6333333FF333333FF333333FF333333FF3333
          33FF333333FF222222AA141414660606061D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000050505190A0A0A330A0A0A330505
          0519000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000030000000A0000001100000016000000170000
          00120000000B0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000008120E0C425F4842FF5F4841FF5E4840FF5E47
          40FF0E0A09440000000900000002000000010000000000000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000003000000020000
          000100000001000000040000000E34282497A5958EFFCBBCB1FFC5B4A9FF8D7B
          71FF291D1A990000001100000005000000010000000100000003000000040000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000002000000060000000A0000000B000000080000
          0006000000060000000A00000018523F39DACABEB6FFC0AEA1FFBFACA1FFB3A1
          96FF44322DDB0000001C0000000D00000008000000080000000C000000100000
          000F000000090000000300000001000000000000000000000000000000000000
          00000000000000000002000000060202021542322DB843332EBF140F0D480000
          0013000000130B08083132272390745E56FFCFBFB6FFC0ADA1FFBFAC9FFFC7B7
          ABFF624E47FF281F1B930806053700000018000000190F0B0A50322520C22F22
          1EBD0201011E0000000B00000003000000010000000000000000000000000000
          000000000001000000050302021451413CBBBBADA6FFB9A9A1FF79655DFF4534
          30C13F302CB8735D55FD97847CFFC0AFA5FFC5B3A7FFC2AFA3FFC1AEA1FFC2AE
          A2FFB8A79DFF89766DFF5D4942FD372924BC382925C567534CFFA18D84FF9C8A
          7FFF332522C10201011E00000009000000020000000000000000000000000000
          0000000000020000000850403ABAC6BBB6FFD9CDC4FFD1C3BAFFD6C9BFFFB4A4
          9CFFA99890FFCFC2B8FFCDBEB4FFC7B7ACFFC4B3A7FFC4B1A5FFC2B0A4FFC0AE
          A2FFC1AFA2FFC5B4A8FFC4B3A9FF9C8A80FFA39288FFC4B1A6FFBDA99CFFBBA8
          9CFF9D8B80FF31241FBD0000000F000000030000000100000000000000000000
          0000000000020000000852423DBACABFBAFFE4DBD5FFCFC1B7FFCEBFB5FFD1C3
          B8FFD0C1B9FFCABBB0FFC9B8ADFFC8B7ABFFC7B5A9FFC5B4A8FFC4B2A6FFC2B1
          A4FFC2AFA3FFC0ADA1FFBFADA0FFC2B0A5FFC1AEA1FFBBA79BFFBBA79AFFBDA9
          9EFFA18E85FF342622C000000010000000040000000100000000000000000000
          0000000000010000000619141344907C75FFEDE7E2FFD8CCC4FFD0C2B8FFCEC0
          B6FFCDBDB4FFCCBCB2FFCBBBB0FFCAB9AEFFC8B7ACFFC7B5AAFFC5B4A8FFC4B2
          A7FFC3B1A5FFC1AFA3FFC0AEA1FFBFACA0FFBEAA9EFFBDA99CFFBCA99CFFC6B3
          A8FF6B5750FF100C0B500000000C000000030000000000000000000000000000
          000000000001000000040000000D55453FBDCAC0BAFFDED4CEFFD1C4BAFFD0C2
          B8FFCFC0B6FFCEBEB4FFCCBDB3FFCBBBB0FFC9B9AEFFC8B8ACFFC7B6ABFFC6B5
          A9FFC4B3A7FFC3B1A6FFC2B0A4FFC1AEA2FFC0ADA1FFBEAB9EFFC1AFA3FFA896
          8CFF3D2E29C50000001900000008000000010000000000000000000000000000
          000000000001000000040000000D51423CB0C2B6B1FFE0D7D0FFD9CDC5FFD5C8
          BFFFD2C3B9FFCFC1B7FFCEBFB4FFD0C1B8FFD9CEC6FFE3DBD5FFE7E0DAFFE5DC
          D6FFDBD0C8FFCBBCB2FFC4B2A6FFC2B0A4FFC1AEA3FFC0ADA1FFC5B2A8FF9F8D
          83FF3B2D28BA0000001800000008000000010000000100000000000000000000
          00010000000200000006100D0C2F87736BFCEDE7E3FFE0D5CEFFDED3CBFFDCD0
          C8FFDACEC5FFD6C9C0FFD8CCC4FFCEC1BAFFA7958EFF927E75FF937F76FFA997
          8FFFD3C8C1FFE5DCD6FFD3C3BAFFC4B2A7FFC3B0A5FFC1AFA3FFC0AEA1FFC9B9
          AFFF68534BFD0C09083C0000000D000000050000000200000001000000020000
          0004000000080000000D372B2793A69793FFEAE3DDFFE2D8D2FFE0D5CFFFDED3
          CCFFDCD1C8FFDFD5CEFFB6A7A0FF745F57E82B2420660C0A092D0C0A0A2D2C25
          216879645DE8BCAEA7FFE5DCD6FFCBBCB1FFC5B3A7FFC3B1A6FFC1AFA4FFC9B8
          ACFF97837BFF3227239D0000001C00000011000000090000000400000004120E
          0D2F3A2E2A875E4B45D3826D66FFDED5D2FFE7DED8FFE4DBD5FFE2D8D2FFE1D6
          CFFFE1D7D0FFCCC0B9FF67554DDA090707260000000C00000008000000080000
          000D090807286E5B54DCD2C7C1FFDDD3CBFFC6B5A9FFC5B3A7FFC4B2A6FFC5B3
          A7FFC1B1A7FF715B53FF4F3D36D82F2420910E0B093B0000000B00000007826C
          63FFBCB1ABFFDDD6D1FFF1ECE8FFEAE2DEFFE7E0DAFFE6DDD8FFE4DCD5FFE3D9
          D2FFE8E1DCFF8E7B74FF251E1B610000000B0000000400000002000000020000
          00040000000D28201E6599867EFFE8E0DBFFC7B7ABFFC6B5AAFFC5B4A8FFC4B2
          A6FFC4B3A8FFD0C1B7FFBEAEA5FF9E8C82FF6F5850FF00000012000000088C77
          6DFFFAF8F7FFEFEAE5FFEDE5E1FFEBE4DFFFE9E2DDFFE8E0DBFFE6DED8FFE4DC
          D6FFEBE5E0FF755E57FF07050520000000060000000200000000000000000000
          000200000007060504227D675FFFEBE3DFFFC9B9AEFFC8B8ACFFC6B6ABFFC6B4
          A8FFC5B2A6FFC3B1A5FFC5B3A7FFD1C3B9FF715A52FF00000017000000088F79
          6FFFFAF8F7FFF5F0EEFFF0EBE6FFEDE6E1FFECE4E0FFE9E2DDFFE8E0DBFFE6DE
          D9FFEEE7E4FF705A53FF0605041F000000060000000100000000000000000000
          0002000000070504042179635CFFE8E1DBFFCBBBB1FFCAB9AFFFC8B8ADFFC7B7
          ABFFC6B4A9FFC5B3A7FFC7B6AAFFD7C9C2FF745C55FF0000001600000006917B
          72FFC4B8B2FFE4DDDAFFF9F8F7FFF7F3F1FFEFE8E4FFECE4E0FFEAE2DEFFE8E0
          DBFFEEE7E4FF84716BFF211917620000000A0000000400000001000000020000
          00040000000C221B18638C7B73FFDED4CDFFCDBDB3FFCBBCB1FFCABAAFFFC9B8
          ADFFC9BAAFFFD7CBC3FFD1C6C0FFAE9F98FF765F57FF00000011000000031512
          102B473C388273635ACD9D887FFFEBE7E5FFF4EFEDFFEEE7E2FFECE5E1FFEBE3
          DFFFECE4DFFFCCC3BFFF53403ADC070505230000000A00000006000000070000
          000B0706052657453EDBCBC1BBFFD5C8C0FFCFBFB5FFCEBEB4FFCCBCB2FFCDBD
          B2FFCCBFB7FF867169FF62504AD53A302B8C110E0D3600000009000000010000
          000300000005000000094E423D8EC0B2ADFFF8F6F5FFEEEAE5FFEEE7E3FFECE6
          E1FFEBE4DFFFEEE7E3FFAB9E98FF533F38E7201816650A08072B0A08072C2119
          176756423BE7AA9B96FFDFD4CDFFD6C9C0FFD0C1B8FFCFC0B6FFCEBEB4FFD5C9
          C0FFAC9A91FF43363298000000170000000E0000000800000003000000000000
          00010000000200000004120F0E289E897FFCF7F4F3FFF3EFECFFEFE9E5FFEEE8
          E3FFEDE6E1FFEBE3DFFFEEE7E3FFCCC2BFFF887771FF6C5650FF6B5650FF8976
          71FFC8BEB7FFE3D9D4FFDBCEC6FFD9CDC4FFD4C7BFFFD1C3B9FFD0C1B7FFDBD1
          C8FF89756DFD0F0D0B340000000A000000040000000200000001000000000000
          000000000000000000020000000764554FADD3C9C4FFF6F3EFFFF0EAE7FFEFE9
          E6FFEEE8E3FFEDE6E1FFEBE4DFFFECE5E0FFEEE9E5FFEFEAE6FFEEE7E3FFEBE4
          DFFFE4DBD4FFDFD5CDFFDDD2CAFFDCCFC7FFD9CCC4FFD3C5BDFFD8CCC3FFAE9F
          98FF40302CB50000001300000006000000010000000100000000000000000000
          00000000000000000002000000076B5B54B6DBD4CFFFF4F0EEFFF1ECE9FFF0EB
          E8FFEFEAE5FFEEE8E4FFEDE6E2FFEBE5DFFFE9E3DDFFE9E0DBFFE7DED9FFE5DC
          D6FFE3DAD3FFE1D7D1FFE0D5CDFFDDD2CBFFDCCFC7FFD7CAC2FFD8CCC3FFBBAF
          A8FF453531BF0000001300000006000000010000000000000000000000000000
          000000000000000000031C181634AC9A91FDF8F6F5FFF3EFECFFF3EEEAFFF2EC
          E9FFF1EBE8FFF0EAE6FFEFE8E4FFEDE7E2FFEBE5E0FFEAE3DEFFE8E1DBFFE7DE
          D9FFE6DCD5FFE4DAD4FFE1D7D1FFE0D6CEFFDED2CCFFDBCFC7FFD5C8BFFFE0D6
          D1FF806C66FF15100F4800000008000000020000000000000000000000000000
          000000000001000000046D5E57B1DED6D3FFF8F5F4FFF5F0EDFFF4EFECFFF5F1
          EEFFF6F3F0FFF4F0ECFFF0EBE7FFEFE9E4FFEDE7E2FFEBE5E0FFEBE3DEFFE9E1
          DCFFE7DFD9FFE6DDD6FFE4DCD5FFE8DFD9FFE9E1DCFFE3DAD3FFD8CAC3FFDBCE
          C6FFC1B3AEFF483833BC0000000B000000030000000000000000000000000000
          000000000001000000036F6159B4E1D9D5FFFBF9F8FFF8F5F3FFFAF7F6FFDDD5
          D1FFD6CDC8FFF8F5F4FFF9F7F6FFF4F1EEFFF0EAE7FFEEE7E2FFECE5E0FFEBE4
          DFFFEBE4DEFFEFE8E4FFF1ECE9FFD0C6C1FFD9CFCBFFF4F1EEFFECE5E0FFE0D7
          CFFFC4B9B2FF493A35B80000000A000000020000000000000000000000000000
          000000000000000000020403030B73655DB6E0D9D5FFE2DCD8FFB2A198FF6E5E
          58B5685953ADA69187FCC7BAB4FFEDE8E6FFF8F4F3FFEFE9E5FFEEE7E3FFEEE7
          E2FFE0D9D5FFAC9E99FF9F8A81FC64554FB36B5B53BEA9988EFFDAD1CDFFD6CC
          C7FF695A53BB0303031500000006000000010000000000000000000000000000
          00000000000000000001000000020403030B71625AB475655DBA201C1A3A0000
          000800000007110F0D254E443F85AA968CFFFBF9F8FFF2EDE9FFEFE9E5FFF5F1
          EFFF847069FF362B2788100E0D290000000D0000000D201B19446B5C54BD6758
          51B7040303140000000600000002000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000004000000030000
          000200000002000000040000000A837268D5ECE6E3FFF6F2EFFFF2EDE9FFE6E0
          DDFF614E48D60000000D00000006000000040000000400000006000000080000
          0008000000050000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0000000000000000000200000005564A448DD2C6C1FFFCFAF9FFFCFAF9FFD0C5
          C0FF3F332F8F0000000800000002000000010000000100000001000000020000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000031F1B1936A48D83FFA28D82FFA28C82FFA18C
          80FF171211380000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000030000000600000008000000080000
          0007000000040000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000089000000DC000000EF000000AF0000001D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000089000000FF000000FF000000FF000000FF000000BA0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000660000
          0080000000800000008000000080000000800000008000000080000000800000
          00800000008A000000FF000000FF0000007400000050000000FF000000FF0000
          00AA000000800000008000000080000000800000008000000080000000800000
          0080000000800000008000000080000000800000008000000080000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000EF0000000000000000000000BF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000660000
          0080000000800000008000000080000000800000008000000080000000800000
          00800000008A000000FF000000FF0000007400000050000000FF000000FF0000
          00AA000000800000008000000080000000800000008000000080000000800000
          0080000000800000008000000080000000800000008000000080000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000089000000FF000000FF000000FF000000FF000000BA0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000089000000BF000000BF000000AF0000001D0000
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
          00000000000000000000000000000000000000000047000000750000005D0000
          0030000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000080000000FF000000FF000000FF0000
          00EF0000004E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000031000000F5000000FF000000D4000000E50000
          00FF000000C40000000000000000000000000000000000000000000000BF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000D900000000000000000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000BF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000D900000000000000000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000031000000F5000000FF000000D4000000E50000
          00FF000000C40000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000080000000FF000000FF000000FF0000
          00EF0000004E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000047000000750000005D0000
          0030000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000089000000BF0000
          009F0000006A0000001500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000DF000000FF000000FF0000
          00FF000000FF000000BF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000660000
          0080000000800000008000000080000000A7000000FF000000F00000006D0000
          0055000000F3000000FF000000AA000000800000008000000080000000800000
          0080000000800000008000000080000000800000008000000080000000800000
          0080000000800000008000000080000000800000008000000080000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000EF000000000000
          0000000000EF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF0000009F0000
          00BF000000BF000000BF000000BF000000D3000000FF000000F40000006D0000
          0055000000F6000000FF000000D4000000BF000000BF000000BF000000BF0000
          00BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF0000
          00BF000000BF000000BF000000BF000000BF000000BF000000BF000000000000
          000000000000000000000000000000000000000000DF000000FF000000FF0000
          00FF000000FF000000C800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000089000000E30000
          00DF0000009F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000004000000050000000700000007000000070000
          0006000000040000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000100000004000000090000000F000000150000001A0000001C0000001B0000
          0017000000110000000A00000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          000700000010000302230020167900402CCA004A32E300563BFF004A33E30040
          2CCB0020167B0003022600000012000000080000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000080000
          0014001B126A004F35EE13674BFF2C7F61FF3C8D6FFF166346FF409075FF2C7F
          61FF13674BFF004F36EF001B136E000000180000000A00000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000008000000150131
          22A1095E42FF328467FF368F6EFF2A8964FF2C8D6AFF0F6243FF31916EFF2B89
          65FF368F6EFF328467FF095E43FF003020A20000001A0000000A000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000600000012012D20960E64
          47FF388D6EFF288864FF248C64FF249169FF2C9A72FF116B49FF319E78FF2591
          69FF248C65FF288965FF388D6FFF0D6246FF002C1E9B00000018000000080000
          0002000000010000000000000000000000000000000000000000000000000000
          00000000000000000000010101040303020D020201130119125E0A6144FF348B
          6CFF258863FF259169FF279A71FF29A074FF30A77EFF147350FF35AB83FF2AA0
          75FF289A71FF25926AFF268964FF348B6DFF085E42FF001A11690302021A0404
          0313010101060000000000000000000000000000000000000000000000000000
          000000000000000000000302020B403532FA1C1B1880025238E72E8466FF2689
          63FF26946BFF299E74FF2BA67CFF2DA87EFF34B185FF167A55FF3AB58BFF2EA9
          7FFF2CA77CFF299F75FF27956DFF268A65FF2E8365FF004C33E91B1B178B3B30
          2DFA0403030F0000000000000000000000000000000000000000000000000000
          00000000000000000000020101081C171571264838FD1A7153FF2A8A66FF2592
          6AFF299F75FF2DA87DFF2FAD82FF31B386FF38B78EFF19805BFF3FBB93FF32B3
          87FF30AF84FF2EA97FFF2BA177FF27936CFF2B8C69FF186D50FF214234FD1C17
          157C0302020C0000000100000000000000000000000000000000000000000000
          00000000000000000001000000060303021C07563BED2E8667FF258D68FF299C
          73FF2DA77DFF31AE84FF32B588FF33B98CFF3BBD93FF1B8660FF42C198FF34B9
          8EFF33B68AFF32B086FF2EA97FFF2B9E75FF26906AFF2D8668FF054F35EF0404
          0329000000090000000100000000000000000000000000000000000000000000
          00000000000000000002000000080217104E146D4FFF298A67FF27966EFF2CA3
          7AFF30AD82FF33B589FF35B98EFF36BD91FF3FC298FF1D8C65FF44C59DFF38BE
          92FF36BB91FF34B78CFF32AF85FF2EA67EFF2A9771FF2A8C69FF10654AFF0015
          0F580000000C0000000300000000000000000000000000000000000000000000
          000000000000000000020000000A03302189237C5DFF268D68FF2A9D75FF2FA9
          80FF33B288FF36B98EFF38BE93FF38C196FF42C59DFF20916AFF47C8A0FF3AC2
          97FF39C095FF37BC91FF36B58CFF31AC84FF2DA078FF28906AFF21775AFF012B
          1E91000000110000000400000001000000000000000000000000000000000000
          000000000000000000030000000C064932BF2B8565FF28936DFF2DA27AFF30AD
          83FF35B68CFF39BC92FF3DC299FF47C8A0FF57CFAAFF31A17DFF5CD1AFFF49CA
          A3FF3FC39CFF3BBF96FF37B990FF34B188FF2FA57DFF299570FF288163FF0242
          2EC5000000150000000500000001000000000000000000000000000000000000
          000000000000000000030000000E08583DDD298866FF2A9770FF2FA77DFF33B0
          87FF3ABB92FF40C29AFF52CCA8FF5ED1B0FF65D5B5FF3BAA86FF6BD8BAFF5FD3
          B1FF56CFABFF44C59EFF3DBE96FF35B58CFF32A982FF2D9A75FF2A8868FF0352
          37E5000000170000000600000001000000000000000000000000000000000000
          0000000000000101010502020215096344ED278967FF2B9B74FF31A980FF39B6
          8EFF42BF99FF58CCABFF67D5B5FF6BD7B9FF74DCC0FF44B28FFF7ADDC2FF6DD8
          BAFF69D6B7FF59CEADFF46C39DFF3EBA94FF34AC84FF2E9E79FF2A8E6AFF045B
          3EF6040303250101010B00000001000000000000000000000000000000000000
          00000000000009070721473B37FF0D6C4BFF298E6AFF2C9D77FF36AD86FF41BA
          93FF4FC6A1FF70D6B9FF76D9BEFF7BDDC2FF84E0C7FF4EBA97FF8AE2CAFF7EDE
          C3FF77DBC0FF71D8BCFF52C9A7FF45BE99FF3AB18CFF2FA17BFF2B926EFF0661
          42FF413632FF0908072800000001000000000000000000000000000000000000
          00000000000001010105020201130B6646ED298D6BFF2FA17AFF3CB18BFF48BE
          98FF64CFAFFF7CDAC0FF83DFC6FF8AE1C9FF93E5CEFF59C09FFF98E6D2FF8BE3
          CBFF86E0C9FF7DDCC3FF66D1B3FF4BC29EFF40B591FF33A380FF2A906DFF065F
          41F6040303230101010A00000001000000000000000000000000000000000000
          000000000000000000020000000B0B6142DC2D906FFF35A07DFF41B38DFF4FC0
          9DFF77D5BAFF8ADFC7FF91E3CEFF98E6D0FFA1EAD6FF50B292FFA5EBD8FF99E7
          D3FF93E6D0FF8BE1CAFF7AD8BDFF51C4A2FF44B694FF38A583FF2C8F6DFF0658
          3CE4000000140000000500000001000000000000000000000000000000000000
          00000000000000000002000000090B5238BA31916FFF38A27DFF46B38FFF54C1
          9FFF86DAC2FF94E1CCFF9DE6D2FFA4E9D6FFAEECDBFF46A484FFB1EEDEFFA5EB
          D9FF9FE7D5FF96E3CFFF88DDC6FF57C5A4FF4AB795FF3BA583FF2C8C6BFF074A
          33C2000000110000000400000001000000000000000000000000000000000000
          0000000000000000000100000006083826822E8D6CFF39A17EFF49B38FFF58C1
          9FFF91DEC8FF9FE5D1FFB0EADBFFBBEFE1FFC5F1E5FF429578FFC6F2E8FFBAF0
          E2FFAFECDCFFA0E6D4FF94DFCCFF5CC5A5FF4DB896FF3DA583FF268464FF0532
          22890000000D0000000300000001000000000000000000000000000000000000
          0000000000000000000100000004041D14471F825FFF41A281FF4BB190FF5CC1
          A1FFA0E1CFFFACD9CCFF8A9A91FF6D6960FF645A50FF554238FF645A51FF6D69
          5FFF899A91FFABDBCCFFA0E2D1FF5EC3A4FF4DB594FF42A483FF197958FF031A
          1250000000090000000200000000000000000000000000000000000000000000
          00000000000000000000000000030101010D126D4CEB47A283FF4FB191FF74C4
          ADFF78887DFF5E483DFF70574AFF806554FF856857FF8B6D5CFF866858FF8164
          55FF705849FF5E483DFF76887DFF6FC4ABFF50B394FF419D7FFF0E6346ED0202
          0219000000060000000100000000000000000000000000000000000000000000
          00000000000000000000010100031C181664315845FC2D8E6CFF60A790FF3F42
          3AFF685146FF8D6E5DFF8F705FFF907160FF917360FF917360FF917360FF9072
          5FFF8E705EFF8E6E5DFF685146FF3E4139FF5AA58DFF278565FF2C5240FC1D18
          166F020101080000000000000000000000000000000000000000000000000000
          0000000000000000000001010104493E3AF91C1C196E186447DE403A32FF5E49
          3DFF6F5749FF957763FF937462FF957663FF967665FF977765FF967764FF9576
          64FF947461FF957764FF70574AFF5E483DFF3F3A31FF155C40E11D1D197A453A
          35FA020202090000000000000000000000000000000000000000000000000000
          0000000000000000000000000001010101050101000612110D4E4D352CFF654E
          41FF6B5345FF8B7161FF9C7E6BFF997A67FF9A7B68FF9A7B68FF9A7B68FF997A
          67FF9B7C69FF8B7161FF6A5345FF654E40FF4D352CFF12110D560101010E0202
          020B010101030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000006251915855138
          2FFF6A5345FF6F5849FF947968FFA48675FFA28370FF9F806CFFA18470FFA486
          74FF9A7E6DFF70594BFF6A5344FF51382FFF2519158A0000000C000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000000200000006281B
          168D4F372EFF685143FF735C4DFF8D7463FF9F8674FFAB907FFFA08674FF8D74
          63FF735B4DFF685144FF4F372EFF271A168E0000000C00000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0006160F0C53452E27EB573F35FF695245FF725A4BFF7A6353FF715A4CFF6952
          45FF583F35FF442E27EC160F0C570000000A0000000400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000040D0B0A373D2F29E637251FBE402A24DB4B322AFF402A24DB3725
          1FBF372925E60B08083A00000006000000030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B09092B221C1A80221C1A82000000060000000700000008000000080000
          00071D1716821C1615810907072C000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000443935FF221D1B800706051B000000010000000200000002000000020000
          00020605051B1D181680382D2AFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000060000000600000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000040000000600000006000000040000
          0002000000010000000000000000000000000000000000000000000000000000
          0001000000020000000800000010000000170000001700000012000000090000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000010000000300000009000000120000001800000018000000110000
          0008000000020000000100000000000000000000000000000000000000000000
          0001000000070000001509123688112168E0102169E50A143E990001031F0000
          000C000000040000000100000000000000000000000000000000000000000000
          0001000000040000000C0201011F2B1E199949322AE5473129E0261A16890000
          0017000000080000000200000000000000000000000000000000000000010000
          00030000000F091237863F68ADFF2478CDFF4599DDFF1E58ADFF0F1E58C10101
          03210000000C0000000400000001000000000000000000000000000000010000
          00040000000C020101213B2823C1877269FFC9BBB1FFC6B6ACFF765E55FF261A
          1689000000110000000400000001000000000000000000000000000000010000
          0005000000141F4C8DDF65A8E0FF2B8DDEFF2B8CDEFF4BA5E6FF236CBFFF0F20
          59C1010103210000000C00000004000000010000000000000001000000030000
          000C020101213B2923C08E7C72FFCFBDB1FFBAA495FFBAA495FFCBBBB1FF4731
          29E0000000170000000500000001000000000000000000000000000000010000
          000400000014235598E993C7ECFF3192E0FF3092E0FF3091E0FF4EA9E8FF2671
          C2FF11215BC1010103200000000B0000000300000002000000030000000B0202
          01203D2B25C088736AFFCDBCB2FFBAA395FFB8A192FFBAA395FFCEBFB5FF5E44
          3BEA000000170000000500000001000000000000000000000000000000010000
          00030000000E173C639888B8DEFF8ECBF1FF3598E2FF3497E2FF3496E1FF52AC
          E8FF2974C3FF11225CC10001031F0000000C000000060000000C0201011F3F2C
          27BF8B776DFFD0BEB5FFBBA599FFBAA396FFBAA293FFCDBCB0FF917970FF3729
          249B000000110000000400000001000000000000000000000000000000000000
          0002000000070103051B245788C0A6D0EAFF91CDF2FF3C9EE3FF3B9EE3FF3A9E
          E3FF56AEE9FF2E79C4FF12235DC00101032100000015020202223C2C2AC48975
          6DFFCFC0B6FFBEA79CFFBCA79AFFBCA598FFCDBCB2FF988178FF4B3630C00202
          021E000000090000000200000000000000000000000000000000000000000000
          000100000003000000090103051B255B8BBFA6D1EBFF94D0F3FF40A5E7FF3FA4
          E7FF3FA3E7FF5AB4EBFF327FC7FF12245EC10404073C3C3641DE675B60FFBBAD
          A9FFBAA79CFFBEA99DFFBEA99BFFCFBEB3FFA59188FF4C3932BF030202200000
          000B000000030000000100000000000000000000000000000000000000000000
          00000000000100000003000000090103051B265E8EBFA7D2ECFF97D5F4FF48AD
          EAFF47AAE8FF46A9E8FF5DB8ECFF3785C9FF1E3272FA2F334FFF6D6C7CFF8F83
          84FFAE9C94FFBCA69BFFD0BFB5FFA69389FF4F3B33BF0302021F0000000B0000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000002000000080103051A276090BEA8D4EEFF9AD8
          F5FF4EB3EBFF4EB2EBFF4DB0EAFF62BCEEFF3C8BCDFF1D3476FF3E425CFF6E6A
          77FF928687FFBEB1ACFF9C877FFF503D36BE0302021E0000000B000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000801030519276291BEA8D5
          EFFF9DDBF6FF57BAEDFF56B9EDFF55BAECFF67C1EFFF4391CEFF1F3978FF4649
          61FF7C7A86FF807273FF4F3D39C10302021C0000000A00000003000000010000
          0002000000020000000200000000000000000000000000000000000000000000
          000000000000000000010000000200000002000000060000000C0103051C2865
          94BFA8D6F0FFA1DFF7FF5DC2EFFF5CC0F1FF5BC0EFFF6BC6F1FF4797D1FF253F
          7DFF4C4D62FF4D434AD50302021D0000000A0000000300000002000000020000
          0005000000080000000600000002000000020000000000000000000000000000
          00000000000100000003000000060000000A0000000E00000011000000180507
          0831447FADF2A9D7F1FFA5E1F9FF65C9F2FF64C8F2FF63C8F1FF70CCF3FF498B
          C5FF2B3D6EF40504052B0000000C0000000300000002000000040000000B0000
          00160000001D000000170000000C000000050000000100000000000000000000
          0001000000040000000A140F0D3E47352EB360473EEA694E44FF60463EEB7966
          61EDA9A19DFF5E9CCBFFA9D7F1FFA8E6FAFF6DCFF4FF6DCEF4FF69CEF4FF7BC9
          EDFF1E4284F30000001A0000000A00000003000000030000000B0000001D2D20
          1B9B5D453BFF160C099D000000230000000F0000000500000001000000010000
          000403020211382A258E7D655BFCB9A9A2FFDED5CFFFEAE2DCFFDDD3CCFFC7BC
          B5FFDFD7D2FFC7C0BDFF5D9BC9FFA9D8F2FFB9ECFCFF91E0F8FF88DCF6FF9ED9
          F1FF3974AAFF0301017F0000000D000000060000000700000016382D299A8871
          63FFC5B4A7FF746056FF160C09A0000000230000000F00000005000000030000
          000942332DA1958177FFE5DCD6FFE0D4CDFFDACCC4FFD7C9BFFFD8CAC1FFD9CE
          C4FFD1C3BAFFD5CAC3FFC8C3BEFF5F9FCEFF8CC8ECFFC8EBF9FFC4E9F8FF82B7
          DDFF849BB0FF584E48FF0301017D000000100000001100000023755F57FFC6B5
          A9FFBBA799FFC5B3A6FF756157FF160D099F000000210000000B000000051B15
          1247846D62FFEDE7E0FFDCCEC6FFDACCC4FFD9CAC2FFD8CAC0FFD7C9BFFFD6C7
          BDFFD5C6BCFFD1C2BAFFDFD7D2FFB5ADA9FF527FA0E83184BFEC3888C1FE8FAB
          C1FFC8B5AAFFC5B4A7FF5A4F4AFF0302018200000025000000337B665DFFDFD5
          CCFFC6B5A8FFBCA89AFFC6B4A8FF766258FF170E0A9A00000016000000074C3B
          34ABC6BBB0FFE7DCD5FFE6DDD6FFF6F2E9FFFDFBF1FFFCFAEFFFECE4DAFFD8CA
          C0FFD6C7BDFFDACCC2FFD0C3BDFF84716AEA0505042100000014150F0D567A6A
          64F9D7CBC3FFC8B7ADFFC1B1A6FF645047FF674F47FF654D46FF796259FFBFAD
          A1FFDFD5CBFFC7B6AAFFBEA99CFFE3D8CEFF7C665DFF00000019000000086B54
          4AE6F1EEE3FFE7DFD9FFBFB0A5FF988175FF957F72FFC2B4A9FFFDFCF1FFEBE4
          DAFFD7C9BFFFD8CAC1FFDFD5CDFF766056E80000001000000008000000091C16
          145481726AF9D2C7BFFFC9B6AAFFCDBCB1FFCFBFB5FFCEBDB1FFC6B4A9FFB19B
          8DFFEDE6DDFFFDFCF6FFFCFAF1FFC4B8AFFF463B36960000001400000007785F
          54F9F8F5EAFFAF9C90FF6A5951B90907071C0504031753433BAAC0B2A7FFFCFA
          F0FFD8CAC1FFD6CAC0FFE7DFD9FF866E62FA0000000D00000004000000030000
          00081F1A1758745F56FCD7C8BDFFD4C6BBFFD0C1B6FFCFBEB3FFCCBBB0FFC8B7
          ACFF8A766CFF9E887EFF9C877DFF4D423E94000000190000000900000006715A
          50E5B3A196FF6F5E57B60403030F000000060000000704040317887166FCFEFC
          F2FFD9CBC2FFDACDC3FFE0D7D1FF7E695EE70000000B00000003000000010000
          000500000011503F37CBC4B7ADFFD7CABFFFD5C6BCFFD3C4B9FFD1C1B6FFD1C2
          B8FF7D655DFF0000002D0000001D000000120000000900000003000000045444
          3BA872635CB40403030D0000000400000003000000050A0807217E655AFCF7F4
          EBFFDACCC3FFE1D6CEFFC6B8AFFF5F5048AC0000000800000002000000020000
          00050000001030262183A5958BFFDDD0C7FFD9CBC1FFD7C8BEFFD5C6BCFFE9E1
          D7FF856E66FF0000001A0000000B000000040000000100000001000000010000
          0003000000030000000200000002000000030302020E523F37BCA7968CFFE7DE
          D9FFDCCFC6FFE6DCD7FFA48F84FF241E1B470000000700000005000000050000
          000A0000001559463FC7CDC1B9FFE7DDD6FFE2D8D1FFDCD1C9FFEEE7DDFFC4B8
          AEFF453B36900000000F00000004000000000000000000000000000000000000
          00010000000100000001000000020302020C4B3932B5897369FFE4DCD6FFE6DD
          D6FFEEE8E1FFB8A79CFF5B4F479900000009000000091612103B0706051E100D
          0B334B3D36A5C3B5AEFFEDE5DFFFEAE3DCFFEBE4DDFFF6F1E8FFC3B5AAFF4B40
          3B8F000000120000000700000001000000000000000000000000000000000000
          000000000000000000010000000349362FB3836D63FFF4F2E7FFF1EDE3FFDAD0
          C5FFAB998EFA4F443F820403030D00000006463A349099867BFF8A7469FF937F
          74FFC7B9B2FFF0E8E2FFF2ECE5FFF6F1EAFFF2EDE3FFBCACA1FD443A367C0000
          0010000000070000000300000000000000000000000000000000000000000000
          000000000000000000010000000373665DAD99867CE5AA968BFF98857AE57164
          5CAF1E1A18340000000500000003000000042A2522429A877EDCD3C6BAFFEAE3
          D8FFFCF9EFFFFBF8EEFFE9E2D7FFD0C3B8FF9D8B7FE8322B285B0000000C0000
          0005000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000030000000400000005000000050000
          000400000003000000010000000100000001000000040404030E5147427A8A7A
          71C7B49E92FFB19B90FC88786FC84F46417D0807071900000008000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0001000000010000000000000000000000000000000100000003000000040000
          0007000000090000000900000009000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000020000000200000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000001010202000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010102020000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005070F12354EA9C8151E424E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000016204552354EA9C80507
          1013000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005070F123750AECD4463D8FF4261D3F9151E
          424E000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000162045524261D3F94463D8FF3750
          AECE050710130000000000000000000000000000000000000000000000000000
          0000000000000000000000000101354DA9C74463D8FF4463D8FF4463D8FF4261
          D3F9151E424E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000162045524261D3F94463D8FF4463D8FF4463
          D8FF354EA9C80000010100000000000000000000000000000000000000000000
          0000000000000000000000000000151E414D4261D3F94463D8FF4463D8FF4463
          D8FF4261D3F9151E424E00000000000000000000000000000000000000000000
          00000000000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4261
          D3F9131C3E490000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000151E414D4261D3F94463D8FF4463
          D8FF4463D8FF4261D3F9151E424E000000000000000000000000000000000000
          000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C
          3E49000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000151E414D4261D3F94463
          D8FF4463D8FF4463D8FF4261D3F9151F434F0000000000000000000000000000
          0000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E490000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000151E414D4261
          D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F00000000000000001620
          45524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E49000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000151E
          414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F162045524261
          D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E4900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F94261D3F94463
          D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4261D3F9131C3E49000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4463
          D8FF4261D3F9131C3E4900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4463
          D8FF4261D3F9151F434F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4261D3F9151F434F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F94261D3F94463
          D8FF4463D8FF4463D8FF4261D3F9151F434F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001620
          45524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E49151E414D4261
          D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000162045524261
          D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000151E
          414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000162045524261D3F94463
          D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000000000000000
          0000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000162045524261D3F94463D8FF4463
          D8FF4463D8FF4261D3F9131C3E49000000000000000000000000000000000000
          000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F
          434F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000162046534261D3F94463D8FF4463D8FF4463
          D8FF4261D3F9131C3E4900000000000000000000000000000000000000000000
          00000000000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261
          D3F9151F434F0000000000000000000000000000000000000000000000000000
          0000000000000000000001010202354CA7C54463D8FF4463D8FF4463D8FF4261
          D3F9131C3E490000000000000000000000000000000000000000000000000000
          0000000000000000000000000000151E414D4261D3F94463D8FF4463D8FF4463
          D8FF354CA7C50000010100000000000000000000000000000000000000000000
          000000000000000000000000000004060D0F364EABCA4463D8FF4261D3F9131C
          3E49000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000151E414D4261D3F94463D8FF364F
          ACCB04060E100000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004060D0F344CA5C3131C3E490000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000151E414D354CA7C50406
          0E10000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010102020000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000040000000600000006000000040000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00020000000300000005000000080000000E00000016000000160000000F0000
          0008000000050000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          00080000000F000000110000001628201D7070594FFF6F584FFF201816710000
          001800000014000000110000000A000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000070404
          031C594842C63E302AB30E0B0A4B53423CC4B7A69DFFAD998EFF46352FC50E0B
          0A4F372925B040302ACC040302240000000A0000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000000B604F
          48C7CABCB5FFAB9990FF745E56FF7A635AFECAB8ADFFC7B4A8FF6B544BFE755F
          56FE9F8B80FFAA968AFF41312BC9000000100000000400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000C5344
          3EABC2B4ADFFE2D8D2FFD0C1B7FFC2B1A5FFCEBDB2FFCCBAB1FFBEAAA0FFC9B6
          AAFFCAB5A9FFA28E83FF3C2F29B1000000120000000500000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000040000000E120F
          0D3B927F77FCE9E1DDFFD7C9C1FFD5C7BEFFE1D6D0FFE6DDD6FFDFD3CBFFD0C0
          B5FFCBB8AEFF7A6359FD0E0B0A47000000140000000700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002000000072D24216C5242
          3BBB8B756BFED8CDC7FFE1D7D0FFCFC2BBFF998179FF9F887EFFD2C5BEFFE1D6
          CFFFC3B1A6FF755E55FF4F3E38C2281F1C720000000C00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000A957D72FFD9D0
          CCFFEBE4E1FFE7E0DCFFE7DDD9FF897167FF251D1B64261E1C65987F77FFE8E0
          DBFFD2C2B9FFCFC0B4FFBBA79CFF836C62FF0000001000000004000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0001000000000000000100000001000000010000000300000009998276FFDBD2
          CEFFF6F3F1FFF9F6F5FFEBE5E1FF7E625BFF1F17155C2018165D8A7068FFEDE6
          E2FFDACAC3FFD2C4BCFFC9BBB5FF877066FF0000000F00000004000000000000
          0000000000000000000000000001000000020000000400000005000000040000
          0002000000010000000200000004000000060000000500000007352E2A606A5B
          52B59A8379FEECE7E4FFEDE6E3FFCEC1BCFF8B736CFF8C736DFFD1C6C0FFE7DE
          D9FFD4C8C1FF8E776CFD60514AB92E2623620201010C00000002000000000000
          0000000000000000000100000003000000080000000F0504031E020202160000
          000800000005000000090101011305040320000000110000000B0000000B1713
          1232AB978EFDF4F0EEFFF0EAE7FFEEE8E4FFF0EAE7FFECE5E1FFEBE3DFFFEBE5
          E1FFE7DEDAFF8A756BFD130F0E3C0000000D0000000400000001000000000000
          0000000000000000000200000007100C0B373B2D289F675248F342332DB20000
          0018000000110000001841322CB2644E46F4382B25A10F0B0A3A0000000D695A
          53AADDD5D1FFF5F2F0FFF4F1EFFFEBE5E2FFFCFAFAFFF0E9E7FFE0D7D1FFF9F7
          F6FFF7F4F2FFC8BCB5FF54453DAF000000090000000200000000000000000000
          000000000001000000030000000B392C2795B1A39CFFD9CFC7FFA18E84FF3529
          24960000002535292599A5958DFFCABBB0FFA3928AFF35292497000000117868
          5FBDE5DFDCFFDED4D1FFAF9C92FDA28B80FDFAF8F8FFF2EDEBFF9E887EFDA997
          8DFBD9CFCBFFE1DAD5FF73625AC1000000070000000200000000000000000000
          000100000002000000050000000E352A258CAE9F99FFE1D7D0FFD6C9BFFF8D78
          6FFF6B5349FF8D786FFFD3C4BBFFD0C2B6FFA29188FF32262290000000130605
          05147B6B62C06A5B54A61814132E72625AB2E2DAD6FFE1DAD6FF705F58B31512
          112D645750A47A6A61C606050412000000030000000100000000000000020000
          0005000000090000000D000000163329248AA19189FFDCD1C9FFD1C1B6FFD9CD
          C2FFDCD1C7FFD7C9BFFFCDBFB2FFD5C7BDFF96837AFF332723910000001B0000
          0013000000100000000B000000073B332F5FA89186FFA89085FF3B332F5F0000
          0005000000050000000400000003000000010000000000000000000000050F0C
          0B2D372D28842F252176362B26897A665DF4D2C6BEFFD6C8BFFFD2C5B9FFD2C4
          B8FFD1C3B7FFD1C2B7FFD1C2B6FFD2C3B8FFCBBDB4FF7A6259F834282493382C
          279940312CA6100D0B3800000009000000040000000300000003000000020000
          0001000000010000000100000000000000000000000000000000000000094336
          3197B4A59FFFA7968EFFA6958DFFD5C8C4FFDCCFC8FFD7C8BEFFD5C7BDFFD5C7
          BDFFD3C6BBFFD3C5BBFFD2C5BBFFD2C4B9FFD3C6BBFFCFC3B9FF9C8A80FFA898
          8EFFAF9F95FF40322CA40000000E000000040000000200000001000000000000
          0000000000000000000000000000000000000000000000000000040403137964
          5AF0F0EDEAFFEEE8E5FFE9E1DCFFE2D7D1FFE0D3CCFFDDCFC7FFDCD0C7FFE5DD
          D7FFF0EBE8FFF1EBE7FFE6DBD6FFD8CAC0FFD5C6BCFFD5C8BEFFDBD0C8FFD9CD
          C3FFE1DAD4FF6F5951F50504041B000000040000000100000000000000000000
          00000000000000000000000000000000000000000000000000000302020E4F41
          3AA7BEB1ACFFF9F7F5FFECE5E0FFE2D8D0FFE1D8D0FFE1D6D0FFDED6D0FFAD9D
          96FF948078FFB09F99FFE6DFDBFFE5DCD7FFD7C8BFFFD6C8BEFFD6C7BEFFEBE3
          DFFFAA9B95FF41332E9F0101010F000000030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000B4236308CAA9A92FFF6F3F1FFE6DDD6FFE5DAD3FFE4DAD3FFA3928CFF3C32
          2F830000001B40363389A4938DFFECE4E0FFDACBC3FFD8CBC2FFE3D9D4FF9987
          7FFF3227237F0000001100000006000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000700000012806A60F9F3F0EFFFE8E0DAFFE7DFD8FFE6DDD8FF7E6A64FC0303
          021D0000001306050524836E66FFE9E1DCFFDBCEC6FFDBCDC6FFECE5E1FF7861
          57FF0000001A0000000B00000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000940352F82AA9992FFF3EEEAFFE9E3DDFFE9E2DDFFE9E1DCFF907D77FF382D
          2B86000000173C312E8C917F7AFFE0D5CDFFDDD2C9FFDDD1C8FFE9E2DCFF9A86
          7EFF332A267D0000000F00000005000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020101085647
          41A1C0B4AEFFF6F3F1FFEDE6E1FFECE5E1FFECE4DFFFEBE4DFFFDAD1CBFF8C79
          74FF735D57FF8C7872FFD4CBC4FFE0D6CDFFE0D5CDFFDFD3CCFFDFD3CCFFEBE4
          DDFFAE9E97FF4437319400000009000000020000000000000000000000000000
          00000000000000000000000000000000000000000000000000000504040F8A75
          6CF1F6F4F4FFFAF8F7FFFAF9F7FFF5F2EEFFEFE9E5FFEEE7E3FFEDE7E3FFECE7
          E2FFECE6E0FFECE5DFFFECE5DFFFE7DED8FFE2D8D1FFE3DCD5FFF1EDEAFFF2EC
          E9FFF0EDEAFF826E64F507060519000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000045245
          3F94CBBFBAFFBCAEA7FFBBAEA7FFEEEAE8FFF9F6F4FFF1EBE8FFEFE9E5FFEFE8
          E5FFEFE8E4FFEEE8E4FFEEE8E4FFEEE7E3FFEBE4E1FFEDE9E7FFB6A8A1FFCCC2
          BEFFCCC2BDFF4E403AA100000008000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000021310
          0F254E433C8B3B322D6D4539347F948076F5E7E2DFFFF7F3F1FFF1EBE8FFF1EB
          E8FFF0EBE7FFF0EAE7FFF0EAE6FFF1EBE8FFEFEAE9FF98867DFB4438338A5143
          3DA151433C9F1612103300000004000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030000000400000007493E3885C3B6B0FFFAF7F6FFF3EDEBFFFBF9
          F9FFFEFEFDFFFDFBFAFFF6F3F0FFF7F4F2FFBFB3ACFF4A3F38910000000C0000
          0008000000060000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000010000000453474091D0C5C0FFF9F8F5FFFAFAF8FFB09F
          97FF937C71FFAF9E96FFFCFAFAFFFAF7F5FFCCC1BCFF4F423D93000000070000
          0003000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000025A4C4698D4CBC6FFFAFAF9FFC3B5AFFF4036
          3172000000093F353172C1B4ADFFFAF9F9FFD3CAC6FF584A429D000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000011D19173261514BA19C887DF75A4C46990000
          00040000000300000005584B4499998479F75D4F48A21C181535000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000020B090915020201050000
          00010000000100000001020201060B0908160000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0004000000060000000700000008000000090000000A0000000A0000000B0000
          000A000000090000000900000008000000070000000500000003000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000005000000090000000E0000
          0014000000190000001D00000020000000230000002600000028000000280000
          00270000002500000024000000220000001E00000018000000120000000B0000
          0006000000030000000100000000000000000000000000000000000000000000
          00000000000000000001000000030000000A000000140000001F050D1A4C0C20
          418A112C5BB1143572D1153878DA153676DB194290FD194090FF183E8EFF183D
          8AFD122F6FDD112F6EDC102A67D30D2150B60916389103081656000000280000
          001B0000000E0000000500000001000000000000000000000000000000000000
          000000000000000000020000000A0204082610274D931C488EEB3D6AACFF7095
          C3FF95B4D3FFAACBE0FF96CCE5FF6BC1E1FF52CDEDFF3FB4E7FF36A4E2FF2C92
          D9FF2173C2FF2276C1FF3386C8FF4184C2FF366CB2FF1F4895FF122E75ED0918
          3F9D010205300000000F00000003000000000000000000000000000000000000
          00000000000000000004000000141E4378C94A88C5FF98CEEFFFD8F4F9FFE2F8
          F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF4194DAFF326A
          B0FF0E2056CE0000001D00000007000000010000000000000000000000000000
          000000000001000000060000001A2C5FA6FF78C0EBFFA6DDF8FFD8F4F9FFE2F8
          F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF214A92FF0000002600000009000000010000000000000000000000000000
          000000000001000000070000001B2F62A8FF79C1EBFFA6DDF8FFD8F4F9FFE2F8
          F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF224C95FF000000290000000B000000010000000000000000000000000000
          000000000001000000070000001B3166ABFF7AC1EBFFA6DDF8FFD8F4F9FFE2F8
          F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF234F97FF000000290000000A000000010000000000000000000000000000
          000000000001000000060000001A336AAEFF7CC2EBFFA6DDF8FFDBF5F9FFE8F9
          FAFFEDFBFBFFE6F9FAFFD0F4FAFFA9ECF8FF90E6F6FF7FD6F3FF73CAEFFF62BC
          EAFF49A3DEFF48A3DDFF5CB3E5FF72C2EDFF70BCEFFF5DADEBFF469FE4FF53A5
          E1FF26529AFF000000280000000A000000010000000000000000000000000000
          0000000000010000000600000019386EB0FF8DCBEFFFC4E9FAFFDEF1F7FFCFE4
          EDFFC1DAE5FFA3C8DCFF7CBAD8FF50ACD4FF2087C1FF166BB8FF125DB3FF1051
          AAFF1656AEFF1558ADFF2670BDFF4693D1FF57A0DDFF60AAE5FF55A9E7FF59A9
          E2FF26559BFF000000270000000A000000010000000000000000000000000000
          0000000000010000000600000018477EB9FF6DABDBFF63A0D3FF93BAD5FFB2D0
          E0FFC3DEE7FFC2E4EDFFA2DEEFFF6FD1EBFF53CEEEFF3FB4E7FF36A4E2FF2C93
          DAFF1D72C5FF1F76C4FF318BD0FF4396D5FF3E89D2FF296EC3FF1D61BBFF3C84
          CBFF2B5A9EFF000000260000000A000000010000000000000000000000000000
          0000000000010000000500000017163360A5579CD3FF9CD4F3FFD8F4F9FFE2F8
          F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF4096DEFF357D
          C7FF0E2452A50000002400000009000000010000000000000000000000000000
          0000000000010000000500000016356CADFF82C5EDFFA6DDF8FFD8F4F9FFE2F8
          F9FFE6FAF9FFDAF6F8FFB6EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF245298FF0000002300000009000000010000000000000000000000000000
          0000000000000000000500000014427DBAFF83C6EDFFA6DDF8FFD8F4F9FFE4F8
          F9FFE7FAF9FFDBF7F8FFB9EEF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF2C62A7FF0000002200000009000000010000000000000000000000000000
          00000000000000000005000000134482BDFF84C7EDFFA6DDF8FFDAF4F9FFE4F9
          FAFFE7FAFAFFDBF7F9FFBBEFF9FF84E1F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF2E66A9FF0000002100000008000000010000000000000000000000000000
          00000000000000000004000000134888C1FF86C8EDFFA6DDF8FFDFF6FAFFEBFA
          FBFFEFFBFBFFE9FAFBFFD5F5FBFFB1EEF9FF90E6F6FF7FD6F3FF73CAEFFF62BC
          EAFF49A3DEFF48A3DDFF5CB3E5FF72C2EDFF70BCEFFF5DADEBFF469FE4FF53A5
          E1FF2F68ABFF0000002000000008000000010000000000000000000000000000
          00000000000000000004000000124D8DC3FF96D1F0FFC6EAFAFFE1F2F7FFD2E5
          EEFFC4DAE6FFA9C9DDFF84BCDAFF5BB1D4FF2288C1FF166BB8FF125DB3FF1051
          AAFF1656AEFF1558ADFF2670BDFF4693D1FF57A0DDFF60AAE5FF55A9E7FF59A9
          E2FF316CAEFF0000001F00000008000000010000000000000000000000000000
          00000000000000000004000000115D98CAFF73AFDDFF67A2D3FF98BBD6FFB6D1
          E1FFC7DFE8FFC7E5EEFFACE2F0FF7DD5ECFF5BD1EFFF3FB4E7FF36A4E2FF2C93
          DAFF1D72C5FF1F76C4FF318BD0FF4396D5FF3E89D2FF296EC3FF1D61BBFF3C84
          CBFF3571B1FF0000001E00000008000000010000000000000000000000000000
          00000000000000000004000000101E416BA560A1D5FFA4D8F4FFDEF6FAFFE6F9
          FAFFE9FBFAFFDEF7F9FFC0F0F9FF90E5F6FF60D4F0FF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF4096DEFF357D
          C7FF112E5EA50000001D00000007000000010000000000000000000000000000
          000000000000000000040000000F4887BFFF8BCBEFFFB1E1F9FFDFF6FAFFE7F9
          FAFFEAFBFAFFDFF7F9FFC1F0F9FF92E5F6FF64D5F0FF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF2C68ABFF0000001C00000007000000010000000000000000000000000000
          000000000000000000030000000E579BCDFF8CCBEFFFB3E2F9FFDFF6FAFFE7F9
          FAFFEAFBFAFFDFF8F9FFC2F0F9FF93E6F6FF68D7F1FF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF367AB9FF0000001B00000007000000010000000000000000000000000000
          000000000000000000030000000D5B9FD0FF8ECCEFFFB6E3F9FFE0F6FAFFE8F9
          FAFFEAFBFAFFE0F8F9FFC3F1F9FF95E6F6FF6BD8F1FF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF397EBBFF0000001A00000007000000010000000000000000000000000000
          000000000000000000030000000C5DA2D1FF8FCDEFFFB8E4F9FFE0F6FAFFE8F9
          FAFFEBFBFAFFE0F8F9FFC4F1F9FF97E7F6FF6ED9F2FF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF53A5
          E1FF3A81BEFF0000001800000006000000010000000000000000000000000000
          000000000000000000030000000B61A6D3FF90CEF0FFB9E4F9FFE1F7FBFFE7FA
          FCFFE7FBFDFFE4FAFDFFDFF8FEFFD6F6FDFFDDF8FEFFDAF6FEFFD7F5FEFFD1F3
          FEFFB4E3F8FFB0E2F8FFAAE1F8FF9FDCF7FF8DD0F6FF6BB9EEFF469FE4FF53A5
          E1FF3B84C0FF0000001800000006000000010000000000000000000000000000
          000000000000000000020000000A64A9D5FFCBEBF9FFE5FBFEFFE9FCFEFFE6FC
          FEFFDEFAFEFFD7F8FEFFCFF5FDFFCAF2FDFFC3F1FDFFB8ECFDFFB1E9FCFFABE7
          FCFFA3E4FCFFA6E4FBFFA0E1FCFF9DE0FBFF9FE1FCFFA4E2FBFFA4E0FBFF84CB
          F1FF3D87C1FF0000001600000006000000010000000000000000000000000000
          000000000000000000020000000863ACD8FFF0FDFEFFE5FCFEFFD9F9FEFFD3F8
          FEFFD0F7FEFFCBF5FEFFC6F2FDFFC1F0FDFFBAEDFDFFB4EBFCFFADE8FCFFA7E5
          FCFFA0E2FCFF9AE0FBFF94DDFCFF8EDBFBFF89D9FBFF84D7FAFF80D4FAFF85D7
          FAFF3B88C4FF0000001300000005000000010000000000000000000000000000
          0000000000000000000100000006659AB3C6A7D9F0FFD6F3FBFFE4FBFEFFDFFA
          FEFFD8F8FDFFD0F5FDFFC8F2FDFFC1F0FDFFBCEDFDFFB3EAFCFFAAE7FCFFA3E3
          FCFF9FE2FBFF9DE0FCFF97DDFBFF93DCFAFF93DCFBFF95DDFCFF90D7F6FF6EB7
          E2FF35709BCA0000000E00000003000000000000000000000000000000000000
          00000000000000000001000000030507081036596A7C67A9CCE385C8EAFF9CD4
          EEFFB2E0F3FFBDE7F6FFC0E9F8FFBDE7F7FFC7EEFBFFC8F0FDFFC3EFFDFFB7E9
          FAFFA6DDF6FFA1DBF5FF97D5F2FF88CBEDFF73BBE4FF5FACDAFF478CBAE52447
          6083030607180000000600000002000000000000000000000000000000000000
          0000000000000000000000000001000000020000000500000008142026322F4B
          5B6C46738B9F558BA9BF5C97B8D05997B8D168AFD7F16CB9E3FF6AB7E1FF62AA
          D2F2518FB2D1508DB2D14780A0C1396883A3234255710F1C243A0000000F0000
          000A000000050000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000030000
          0005000000060000000700000008000000090000000A0000000B0000000B0000
          000B0000000B0000000B0000000B000000090000000800000006000000040000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000002000000020000000200000002000000030000
          0003000000030000000200000002000000020000000200000001000000010000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000050000
          000A0000000B0000000700000003000000010000000000000001000000040000
          00080000000B0000000B00000006000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000601010315170F
          53AA201571E107051A420000000A0000000400000002000000040000000A0705
          1A43201571E1170F52AB01010317000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000005010103131B135FBD4951
          BBFF505ECDFF2C278CF207051A430000000B000000070000000B07051A442D28
          8CF24F5CCCFF3F46B7FF1B135FBF010103160000000600000001000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00010000000100000001000000010000000300000009191159B5525DC1FF4C60
          D6FF4356D3FF4D5ED1FF2D278CF207051A440000001107051A452E298CF25262
          D3FF4052D0FF4454D2FF444BBBFF181059B60000000A00000002000000000000
          0000000000000000000100000001000000020000000200000003000000040000
          0004000000040000000400000004000000060000000C2B2687E77D94E1FF4A5F
          D7FF4358D3FF4458D3FF5060D2FF2D288DF20D092F6F2F2A8CF25668D4FF4254
          D2FF3E51D1FF4254D3FF6476D6FF251D7BE70000000A00000002000000000000
          0001000000010000000300000005000000080000000A0000000D0000000F0000
          001000000011000000120000001200000013000000150C0A2551494BA9F7829B
          E7FF4B60D6FF465AD4FF475BD4FF5263D3FF3837A2FE596CD6FF4659D3FF4256
          D2FF4459D3FF6C81DEFF3C3D9EF70A08214A0000000700000002000000010000
          0002000000050000000B010204160B172A54142B508E1B3767B21F427DD31F42
          7DD3254E95F526529BFF25519AFF234C92F5325186D77186AAE5556192DA4D51
          B0FC87A1E9FF4D64D7FF485ED7FF495FD6FF5469DAFF495CD5FF455AD5FF475E
          D6FF758CE1FF4142A2F70B09234A000000090000000300000001000000010000
          00060305091C19345C9D2C5699F25D84B8FF8BAACDFFA7C3DBFFAFD4E7FF89CC
          E5FF6BD4EEFF41B7E8FF35A3E2FF2A8CD5FF2276C3FF428ECCFF98BFDEFF8198
          C8FF5257B5FF849FE8FF4D66D9FF4A62D8FF4A61D8FF4A60D7FF4A60D7FF748D
          E2FF4547A6F70B0A234B00000009000000030000000100000000000000020000
          000A23487DC9679ECFFFB4DEF4FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8CD2FF62B5E3FFA7D1
          EAFF798DCAFF515ABDFF6681E2FF4E66DAFF4D65DAFF4D65D9FF586FDDFF474C
          B5FE14123C720000000E00000005000000020000000000000000000000030000
          000D3060A5FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF4098D5FF9DCFEBFF92AF
          D8FF4645A9FF788FE3FF6D87E5FF718AE8FF718AE7FF6D85E6FF657EE2FF6478
          DCFF352F96F209061C4000000008000000030000000100000000000000040000
          000E3263A6FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF388BD1FF8BBEE3FF8AADD9FF4A4B
          AEFF89A1EAFF849DEEFF8099EDFF829AEDFF9EBAF4FF7D97EBFF7790EAFF778F
          E9FF7286E1FF373296F109061C3D000000060000000200000001000000030000
          000D3567A8FF91CEF0FFBCE6F9FFE5F8FAFFECFAFAFFEAFBFAFFD7F5FAFFACEC
          F8FF7FE0F4FF56C2ECFF49B0E7FF3D9DDDFF8CBFE5FF84A8D7FF5051B4FF99B0
          EFFF91A9F2FF8CA5F1FF8DA6F1FFA9C6F4FF6971BFFEAAC8F4FF86A0EFFF8098
          EDFF7F98ECFF8093E6FF393397F109061C3C0000000400000001000000030000
          000C3669ABFF9AD2F1FFC4E9F9FFCDE5F0FFB2CEE5FF94B8DBFF6C9ECFFF4F92
          CBFF2975BDFF1863B5FF155CB1FF145AAFFF7EA5D4FF4D4FBAFFA5C0F3FF9BB3
          F6FF97B0F5FF98B1F4FFB1CEF8FF6168C4FF1B1A497C5B60BAF6AFCDF7FF8EA6
          F1FF88A0F0FF889FEFFF8DA4EAFF373398E80000000600000001000000030000
          000B386DACFF7FBAE4FF81B2DDFF9EC1E0FFB2CEE5FFBDD9EAFFB7DEEEFF8CD3
          ECFF6BD5EFFF41B7E8FF35A3E2FF298BD5FF82B3DEFF5F6CC6FF9BB2E9FFAFCA
          FAFFA3BCF9FFB5D3FAFF646BC8FF7F8FC4FF000000160F0F28445D61BCF6B2D1
          F9FF97B0F4FF9FBAF6FF92A8E3FF2B2976B20000000500000001000000030000
          000A2D5585C880BEE7FFB8E2F7FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF6CAADDFF90BEE3FF6471CCFF9FB8
          EBFFB7D5F9FF6770CCFF89A6D9FF728AAADE0000001000000008100F29405E63
          BEF6B3D2F7FF9AB1E8FF373688C2020206100000000300000001000000020000
          000A3D72B1FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF2581CEFF79B6E1FFA1CFECFF6A76
          CFFF666BD2FF8DAEE2FFA4CFEDFF4875AFFF0000000E00000004000000041010
          293E5555B8E8323082B70202060F000000030000000100000000000000030000
          000A3F75B3FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2F8FD4FF8CCAEDFFAAD6
          F2FFA5D1F2FF9AC9EFFF68AFE4FF3465A8FF0000000D00000003000000010000
          0002000000040000000300000002000000010000000000000000000000020000
          00094078B5FF91CEF0FFBCE6F9FFE5F8FAFFECFAFAFFEAFBFAFFD7F5FAFFACEC
          F8FF7FE0F4FF56C2ECFF49B0E7FF3D9EDEFF308DD4FF3B9AD8FF5CB6E7FF6FBE
          EDFF63B1ECFF48A0E5FF55A6E2FF3668AAFF0000000C00000003000000000000
          0000000000010000000100000000000000000000000000000000000000020000
          0009437BB6FF9AD2F1FFC4E9F9FFCDE5F0FFB2CEE5FF94B8DBFF6C9ECFFF4F92
          CBFF2975BDFF1863B5FF155CB1FF145AB0FF165FB5FF1A65B7FF307EC5FF4993
          D3FF59A2E0FF5AABE8FF60ADE5FF376BACFF0000000C00000003000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0008467EB9FF7FBAE4FF81B2DDFF9EC1E0FFB2CEE5FFBDD9EAFFB7DEEEFF8CD3
          ECFF6BD5EFFF41B7E8FF35A3E2FF298CD6FF1E77C8FF2683CCFF3D94D4FF4491
          D3FF337BC8FF246DBFFF4088CEFF3A6FAEFF0000000B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000736628DC680BEE7FFB8E2F7FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAFECFF469DE2FF428ED2FF2E5786C70000000A00000002000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00074984BCFF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAFECFF48A0E5FF55A6E2FF3E75B2FF0000000900000002000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00074B87BEFF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAFECFF48A0E5FF55A6E2FF4178B4FF0000000900000002000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00064D8AC0FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAFECFF48A0E5FF55A6E2FF427AB7FF0000000900000002000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00064F8CC2FF91CEF0FFBEE6F9FFE5F9FCFFE8FAFDFFE8FAFEFFE5F9FEFFDCF6
          FDFFDEF7FDFFDDF6FEFFD7F4FEFFCCEFFCFFB1DFF6FFACDEF7FF9DDAF6FF92D4
          F5FF76C0F1FF4BA1E6FF55A6E2FF447EB8FF0000000800000002000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0005518FC4FFDAF2FBFFF4FDFEFFF3FDFEFFE8FAFFFFDCF8FEFFD4F5FDFFCBF2
          FDFFC7F1FCFFBEEDFCFFB8ECFDFFB3E9FDFFB0E8FCFFB0E7FCFFABE5FCFFA9E4
          FBFFA5E3FBFF9EDDFAFF82C9F1FF4680BAFF0000000800000002000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00045391C6FFFAFEFFFFE8FBFEFFD4F5FEFFCEF5FEFFCAF3FDFFC7F1FEFFC3F0
          FDFFBFEEFDFFBBEDFDFFB7EBFCFFB2E9FCFFAEE6FCFFAAE5FCFFA5E3FBFFA1E1
          FBFF9CE0FBFF99DEFBFF96DDFBFF4983BCFF0000000600000002000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00034E83A9CAAFD6ECFFDEF4FBFFE3FAFEFFDCF7FEFFD3F4FDFFCDF3FDFFC5F0
          FDFFC2EFFCFFBBECFDFFB5EAFDFFB0E8FDFFAEE7FCFFABE5FCFFA6E4FBFFA3E2
          FBFF9FE0FBFF97DAF8FF7ABEE6FF43759ECB0000000500000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001060A0D12365C77905E9CC8EE85BCE1FFA0CEE9FFB1DAF0FFC1E5F6FFBEE5
          F6FFC5EBF9FFCCF1FDFFC6EFFDFFB8E6F9FFA8DCF3FFA3DAF3FF91CCECFF81C0
          E5FF6DADD9FF5390BEEE3154709105090C140000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000020204050A1B2D3A49305169813F6B8AA74E83AACD4D84
          AACE5793C0E85FA2D3FF5FA2D2FF5692BEE84A80A7CE4A80A6CE3B6686A82D4D
          6682182A38490204050B00000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000200000003000000030000
          0003000000030000000400000004000000040000000400000003000000030000
          0003000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object OpenDialog: TOpenDialog
    Left = 736
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Microsoft YaHei UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.HotImages = cxImageList
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 616
    PixelsPerInch = 96
    object EquipmentControlBar: TdxBar
      Caption = #35774#22791#25511#21046
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 669
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'InPlaceLargeButton'
        end
        item
          Visible = True
          ItemName = 'ResetLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object CollectControlBar: TdxBar
      Caption = #27979#37327#25511#21046
      CaptionButtons = <>
      DockedLeft = 298
      DockedTop = 0
      FloatLeft = 669
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'StartMeasureLargeButton'
        end
        item
          Visible = True
          ItemName = 'StopMeasureLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object SaveSettingBar: TdxBar
      Caption = #20445#23384#35774#32622
      CaptionButtons = <>
      DockedLeft = 620
      DockedTop = 0
      FloatLeft = 669
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'StartSaveLargeButton'
        end
        item
          Visible = True
          ItemName = 'StopSaveLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object SystemSettingBar: TdxBar
      Caption = #31995#32479#35774#32622
      CaptionButtons = <>
      DockedLeft = 757
      DockedTop = 0
      FloatLeft = 669
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'RecoveryLargeButton'
        end
        item
          Visible = True
          ItemName = 'SofewareInfoLargeButton'
        end
        item
          Visible = True
          ItemName = 'CloseLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DataplaySettingBar: TdxBar
      Caption = #22238#25918#35774#32622
      CaptionButtons = <>
      DockedLeft = 201
      DockedTop = 0
      FloatLeft = 782
      FloatTop = 8
      FloatClientWidth = 64
      FloatClientHeight = 168
      ItemLinks = <
        item
          Visible = True
          ItemName = 'SelectDataLargeButton'
        end
        item
          Visible = True
          ItemName = 'PlaybackLargeButton'
        end
        item
          Visible = True
          ItemName = 'StopPlaybackLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MotorControlBar: TdxBar
      Caption = #30005#26426#25511#21046
      CaptionButtons = <>
      DockedLeft = 402
      DockedTop = 0
      FloatLeft = 782
      FloatTop = 8
      FloatClientWidth = 64
      FloatClientHeight = 56
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MotorControlLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object IndicatorLightControlBar: TdxBar
      Caption = #25351#31034#28783#25511#21046
      CaptionButtons = <>
      DockedLeft = 475
      DockedTop = 0
      FloatLeft = 782
      FloatTop = 8
      FloatClientWidth = 76
      FloatClientHeight = 56
      ItemLinks = <
        item
          Visible = True
          ItemName = 'IndicatorLightControlLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object HardwareControlBar: TdxBar
      Caption = #39118#25159#25511#21046
      CaptionButtons = <>
      DockedLeft = 560
      DockedTop = 0
      FloatLeft = 782
      FloatTop = 8
      FloatClientWidth = 64
      FloatClientHeight = 56
      ItemLinks = <
        item
          Visible = True
          ItemName = 'HardwareControlLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DebugBar: TdxBar
      Caption = #21151#33021#27979#35797
      CaptionButtons = <>
      DockedLeft = 633
      DockedTop = 0
      FloatLeft = 782
      FloatTop = 8
      FloatClientWidth = 64
      FloatClientHeight = 56
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DebugLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object ModeSelectBar: TdxBar
      Caption = #27169#24335#36873#25321
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 782
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DetectModeLargeButton'
        end
        item
          Visible = True
          ItemName = 'CalibrationModeLargeButton'
        end
        item
          Visible = True
          ItemName = 'DebugModeLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object SensorControlBar: TdxBar
      Caption = #20256#24863#22120#25511#21046
      CaptionButtons = <>
      DockedLeft = 137
      DockedTop = 0
      FloatLeft = 782
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'OpenSensorLargeButton'
        end
        item
          Visible = True
          ItemName = 'CloseSensorLargeButton'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBar_3D: TdxBar
      Caption = #19977#32500#26174#31034
      CaptionButtons = <>
      DockedLeft = 435
      DockedTop = 0
      FloatLeft = 1458
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton_Show3D'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton_Hide3D'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object InPlaceLargeButton: TdxBarLargeButton
      Caption = #26816#27979#21040#20301
      Category = 0
      Hint = #26816#27979#21040#20301
      Visible = ivAlways
      OnClick = InPlaceLargeButtonClick
      HotImageIndex = 2
    end
    object ResetLargeButton: TdxBarLargeButton
      Caption = #36864#22238#21407#20301
      Category = 0
      Hint = #36864#22238#21407#20301
      Visible = ivAlways
      OnClick = ResetLargeButtonClick
      HotImageIndex = 3
    end
    object StartMeasureLargeButton: TdxBarLargeButton
      Caption = #24320#22987#27979#37327
      Category = 0
      Hint = #24320#22987#27979#37327
      Visible = ivAlways
      OnClick = StartMeasureLargeButtonClick
      HotImageIndex = 4
    end
    object StopMeasureLargeButton: TdxBarLargeButton
      Caption = #20572#27490#27979#37327
      Category = 0
      Hint = #20572#27490#27979#37327
      Visible = ivAlways
      OnClick = StopMeasureLargeButtonClick
      HotImageIndex = 5
    end
    object StartSaveLargeButton: TdxBarLargeButton
      Caption = #24320#22987#23384#20648
      Category = 0
      Hint = #24320#22987#23384#20648
      Visible = ivAlways
      OnClick = StartSaveLargeButtonClick
      HotImageIndex = 6
    end
    object StopSaveLargeButton: TdxBarLargeButton
      Caption = #20572#27490#23384#20648
      Category = 0
      Hint = #20572#27490#23384#20648
      Visible = ivAlways
      OnClick = StopSaveLargeButtonClick
      HotImageIndex = 7
    end
    object RecoveryLargeButton: TdxBarLargeButton
      Caption = #24674#22797#35774#32622
      Category = 0
      Hint = #24674#22797#35774#32622
      Visible = ivAlways
      OnClick = RecoveryLargeButtonClick
      HotImageIndex = 8
    end
    object CloseLargeButton: TdxBarLargeButton
      Caption = #20851#38381#36719#20214
      Category = 0
      Hint = #20851#38381#36719#20214
      Visible = ivAlways
      OnClick = CloseLargeButtonClick
      HotImageIndex = 10
    end
    object SofewareInfoLargeButton: TdxBarLargeButton
      Caption = #36719#20214#29256#26412
      Category = 0
      Hint = #36719#20214#29256#26412
      Visible = ivAlways
      OnClick = SofewareInfoLargeButtonClick
      HotImageIndex = 9
    end
    object SelectDataLargeButton: TdxBarLargeButton
      Caption = #36873#25321#25968#25454
      Category = 0
      Hint = #36873#25321#25968#25454
      Visible = ivAlways
      OnClick = SelectDataLargeButtonClick
      HotImageIndex = 11
    end
    object PlaybackLargeButton: TdxBarLargeButton
      Caption = #22238#25918#25968#25454
      Category = 0
      Hint = #22238#25918#25968#25454
      Visible = ivAlways
      OnClick = PlaybackLargeButtonClick
      HotImageIndex = 12
    end
    object StopPlaybackLargeButton: TdxBarLargeButton
      Caption = #26242#20572#22238#25918
      Category = 0
      Hint = #26242#20572#22238#25918
      Visible = ivAlways
      OnClick = StopPlaybackLargeButtonClick
      HotImageIndex = 13
    end
    object MotorControlLargeButton: TdxBarLargeButton
      Caption = #30005#26426#25511#21046
      Category = 0
      Hint = #30005#26426#25511#21046
      Visible = ivAlways
      OnClick = MotorControlLargeButtonClick
      HotImageIndex = 14
    end
    object IndicatorLightControlLargeButton: TdxBarLargeButton
      Caption = #25351#31034#28783#25511#21046
      Category = 0
      Hint = #25351#31034#28783#25511#21046
      Visible = ivAlways
      OnClick = IndicatorLightControlLargeButtonClick
      HotImageIndex = 15
    end
    object HardwareControlLargeButton: TdxBarLargeButton
      Caption = #39118#25159#25511#21046
      Category = 0
      Hint = #39118#25159#25511#21046
      Visible = ivAlways
      OnClick = HardwareControlLargeButtonClick
      HotImageIndex = 16
    end
    object DebugLargeButton: TdxBarLargeButton
      Caption = #21151#33021#27979#35797
      Category = 0
      Hint = #21151#33021#27979#35797
      Visible = ivAlways
      OnClick = DebugLargeButtonClick
      HotImageIndex = 17
    end
    object DetectModeLargeButton: TdxBarLargeButton
      Caption = #26816#27979#27169#24335
      Category = 0
      Hint = #26816#27979#27169#24335
      Visible = ivAlways
      OnClick = DetectModeLargeButtonClick
      HotImageIndex = 0
    end
    object CalibrationModeLargeButton: TdxBarLargeButton
      Caption = #26631#23450#27169#24335
      Category = 0
      Hint = #26631#23450#27169#24335
      Visible = ivAlways
      OnClick = CalibrationModeLargeButtonClick
      HotImageIndex = 1
    end
    object OpenSensorLargeButton: TdxBarLargeButton
      Caption = #24320#21551#20256#24863#22120
      Category = 0
      Hint = #24320#21551#20256#24863#22120
      Visible = ivAlways
      OnClick = OpenSensorLargeButtonClick
      HotImageIndex = 18
    end
    object CloseSensorLargeButton: TdxBarLargeButton
      Caption = #20851#38381#20256#24863#22120
      Category = 0
      Hint = #20851#38381#20256#24863#22120
      Visible = ivAlways
      OnClick = CloseSensorLargeButtonClick
      HotImageIndex = 19
    end
    object DebugModeLargeButton: TdxBarLargeButton
      Caption = #35843#35797#27169#24335
      Category = 0
      Hint = #35843#35797#27169#24335
      Visible = ivAlways
      OnClick = DebugModeLargeButtonClick
      HotImageIndex = 20
    end
    object dxBarLargeButton_Show3D: TdxBarLargeButton
      Caption = #24320#21551#19977#32500#26174#31034
      Category = 0
      Hint = #24320#21551#19977#32500#26174#31034
      Visible = ivAlways
      OnClick = dxBarLargeButton_Show3DClick
      HotImageIndex = 21
    end
    object dxBarLargeButton_Hide3D: TdxBarLargeButton
      Caption = #20851#38381#19977#32500#26174#31034
      Category = 0
      Hint = #20851#38381#19977#32500#26174#31034
      Visible = ivAlways
      OnClick = dxBarLargeButton_Hide3DClick
      HotImageIndex = 22
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerTimer
    Left = 568
  end
  object OriginalThicknessSignal: TSignal
    Length = 100
    SamplingFrequency = 1.000000000000000000
    Left = 736
    Top = 48
    MtxDataValues = {}
  end
  object ResultThicknessSignal: TSignal
    Length = 100
    SamplingFrequency = 1.000000000000000000
    Left = 840
    Top = 48
    MtxDataValues = {}
  end
  object DebugOriginalSignal: TSignal
    Length = 100
    SamplingFrequency = 1.000000000000000000
    Left = 936
    Top = 48
    MtxDataValues = {}
  end
  object DebugResultSignal: TSignal
    Length = 100
    SamplingFrequency = 1.000000000000000000
    Left = 1024
    Top = 48
    MtxDataValues = {}
  end
end
