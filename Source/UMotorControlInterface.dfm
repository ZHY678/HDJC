object MotorControlForm: TMotorControlForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #30005#26426#25511#21046#35843#35797
  ClientHeight = 133
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PluseNumberLabel: TLabel
    Left = 24
    Top = 8
    Width = 56
    Height = 17
    Caption = #33033#20914#25968#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PluseNumberEdit: TEdit
    Left = 97
    Top = 5
    Width = 121
    Height = 24
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object InPlaceButton: TButton
    Left = 24
    Top = 35
    Width = 75
    Height = 25
    Caption = #21040#26816#27979#20301
    TabOrder = 1
    OnClick = InPlaceButtonClick
  end
  object ResetButton: TButton
    Left = 143
    Top = 35
    Width = 75
    Height = 25
    Caption = #30005#26426#22238#38646
    TabOrder = 2
    OnClick = ResetButtonClick
  end
  object FowardButton: TButton
    Left = 24
    Top = 66
    Width = 75
    Height = 25
    Caption = #30005#26426#21069#36827
    TabOrder = 3
    OnClick = FowardButtonClick
  end
  object BackButton: TButton
    Left = 143
    Top = 66
    Width = 75
    Height = 25
    Caption = #30005#26426#21518#36864
    TabOrder = 4
    OnClick = BackButtonClick
  end
  object LowLevelButton: TButton
    Left = 24
    Top = 97
    Width = 75
    Height = 25
    Caption = #30005#26426#20302#30005#24179
    TabOrder = 5
    OnClick = LowLevelButtonClick
  end
  object HighLevelButton: TButton
    Left = 143
    Top = 97
    Width = 75
    Height = 25
    Caption = #30005#26426#39640#30005#24179
    TabOrder = 6
    OnClick = HighLevelButtonClick
  end
end
