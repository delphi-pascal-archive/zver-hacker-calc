object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSizeToolWin
  ClientHeight = 127
  ClientWidth = 417
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnMouseDown = FormMouseDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 8
    Width = 14
    Height = 25
    Caption = 'a:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 4
    Top = 35
    Width = 14
    Height = 25
    Caption = 'b:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 4
    Top = 62
    Width = 12
    Height = 25
    Caption = 'c:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 32
    Top = 8
    Width = 417
    Height = 21
    NumbersOnly = True
    ParentColor = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 32
    Top = 35
    Width = 417
    Height = 21
    NumbersOnly = True
    ParentColor = True
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 32
    Top = 62
    Width = 417
    Height = 21
    NumbersOnly = True
    ParentColor = True
    TabOrder = 2
  end
  object Button1: TButton
    Left = 0
    Top = 104
    Width = 417
    Height = 25
    Caption = #1056#1077#1096#1080#1090#1100' '#1091#1088#1072#1074#1085#1077#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
end
