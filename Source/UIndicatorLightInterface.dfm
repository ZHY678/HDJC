object IndicatorLightForm: TIndicatorLightForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #25351#31034#28783#35843#35797#25511#21046
  ClientHeight = 99
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MsLabel: TLabel
    Left = 8
    Top = 8
    Width = 200
    Height = 18
    Caption = #25351#31034#28783#38378#28865#38388#38548#26102#38388#65288'ms'#65289#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object MsEdit: TEdit
    Left = 208
    Top = 7
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
  object RedFlashButton: TButton
    Left = 64
    Top = 37
    Width = 75
    Height = 25
    Caption = #27491#24120#32418#28783#20142
    TabOrder = 1
    OnClick = RedFlashButtonClick
  end
  object CloseButton: TButton
    Left = 193
    Top = 37
    Width = 75
    Height = 25
    Caption = #25351#31034#28783#20851#38381
    TabOrder = 2
    OnClick = CloseButtonClick
  end
  object RedButton: TButton
    Left = 8
    Top = 68
    Width = 75
    Height = 25
    Caption = #32418#28783#20142
    TabOrder = 3
    OnClick = RedButtonClick
  end
  object GreenButton: TButton
    Left = 125
    Top = 68
    Width = 75
    Height = 25
    Caption = #32511#28783#20142
    TabOrder = 4
    OnClick = GreenButtonClick
  end
  object YellowButton: TButton
    Left = 253
    Top = 68
    Width = 75
    Height = 25
    Caption = #40644#28783#20142
    TabOrder = 5
    OnClick = YellowButtonClick
  end
end
