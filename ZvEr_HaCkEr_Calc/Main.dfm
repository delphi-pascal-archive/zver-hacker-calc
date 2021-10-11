object Form1: TForm1
  Left = 234
  Top = 123
  AlphaBlendValue = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 352
  ClientWidth = 424
  Color = clSilver
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Monotype Corsiva'
  Font.Style = [fsItalic]
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClick = FormClick
  OnClose = FormClose
  OnMouseDown = FormMouseDown
  PixelsPerInch = 120
  TextHeight = 18
  object Edit1: TEdit
    Left = 0
    Top = 10
    Width = 424
    Height = 26
    Hint = #1055#1077#1088#1074#1086#1077' '#1095#1072#1089#1090#1085#1086#1077'('#1095#1080#1089#1083#1086')'
    ImeMode = imAlpha
    ParentColor = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 0
    Top = 42
    Width = 424
    Height = 26
    Hint = #1042#1090#1086#1088#1086#1077' '#1095#1072#1089#1090#1085#1086#1077'('#1089#1090#1077#1087#1077#1085#1100')'
    ParentColor = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 298
    Width = 424
    Height = 49
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnClick = Panel1Click
    OnMouseDown = Panel1MouseDown
    object Label1: TLabel
      Left = 0
      Top = 10
      Width = 7
      Height = 33
      Hint = #1054#1090#1074#1077#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = Label1MouseDown
    end
  end
  object Panel2: TPanel
    Left = 202
    Top = 67
    Width = 222
    Height = 241
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnClick = Panel2Click
    OnMouseDown = Panel2MouseDown
    object SpeedButton1: TSpeedButton
      Left = 28
      Top = 7
      Width = 40
      Height = 33
      Hint = #1054#1076#1080#1085
      Caption = '1'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 76
      Top = 7
      Width = 40
      Height = 33
      Hint = #1044#1074#1072
      Caption = '2'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 124
      Top = 7
      Width = 40
      Height = 33
      Hint = #1058#1088#1080
      Caption = '3'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 172
      Top = 7
      Width = 40
      Height = 33
      Hint = #1063#1077#1090#1099#1088#1077
      Caption = '4'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 28
      Top = 47
      Width = 40
      Height = 32
      Hint = #1055#1103#1090#1100
      Caption = '5'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 76
      Top = 47
      Width = 40
      Height = 32
      Hint = #1064#1077#1089#1090#1100
      Caption = '6'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 124
      Top = 47
      Width = 40
      Height = 32
      Hint = #1057#1077#1084#1100
      Caption = '7'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 172
      Top = 47
      Width = 40
      Height = 32
      Hint = #1042#1086#1089#1077#1084#1100
      Caption = '8'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 28
      Top = 86
      Width = 40
      Height = 33
      Hint = #1044#1077#1074#1103#1090#1100
      Caption = '9'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton9Click
    end
    object SpeedButton10: TSpeedButton
      Left = 76
      Top = 86
      Width = 40
      Height = 33
      Hint = #1053#1091#1083#1100
      Caption = '0'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton10Click
    end
    object SpeedButton11: TSpeedButton
      Left = 124
      Top = 86
      Width = 40
      Height = 33
      Hint = #1055#1083#1102#1089
      Caption = '+'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton11Click
    end
    object SpeedButton12: TSpeedButton
      Left = 172
      Top = 86
      Width = 40
      Height = 33
      Hint = #1052#1080#1085#1091#1089
      Caption = '-'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton12Click
    end
    object SpeedButton13: TSpeedButton
      Left = 28
      Top = 126
      Width = 40
      Height = 32
      Hint = #1059#1084#1085#1086#1078#1080#1090#1100
      Caption = '*'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton13Click
    end
    object SpeedButton14: TSpeedButton
      Left = 76
      Top = 126
      Width = 40
      Height = 32
      Hint = #1056#1072#1079#1076#1077#1083#1080#1090#1100
      Caption = '/'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton14Click
    end
    object SpeedButton35: TSpeedButton
      Left = 124
      Top = 126
      Width = 40
      Height = 32
      Hint = #1044#1077#1083#1080#1090#1077#1083#1100
      Caption = ','
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton35Click
    end
    object SpeedButton37: TSpeedButton
      Left = 172
      Top = 126
      Width = 40
      Height = 32
      Hint = #1054#1095#1080#1089#1090#1082#1072
      Caption = 'clear'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Monotype Corsiva'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton37Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 67
    Width = 203
    Height = 241
    PopupMenu = PopupMenu1
    TabOrder = 4
    OnClick = Panel3Click
    OnMouseDown = Panel3MouseDown
    object SpeedButton15: TSpeedButton
      Left = 0
      Top = 7
      Width = 41
      Height = 33
      Hint = #1044#1077#1089#1103#1090#1080#1095#1085#1099#1081' '#1083#1086#1075#1072#1088#1080#1092#1084
      Caption = 'log10'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton15Click
    end
    object SpeedButton16: TSpeedButton
      Left = 48
      Top = 7
      Width = 41
      Height = 33
      Hint = #1044#1074#1086#1080#1095#1085#1099#1081' '#1083#1086#1075#1072#1088#1080#1092#1084
      Caption = 'lg2'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton16Click
    end
    object SpeedButton17: TSpeedButton
      Left = 96
      Top = 7
      Width = 41
      Height = 33
      Hint = #1053#1072#1090#1091#1088#1072#1083#1100#1085#1099#1081' '#1083#1086#1075#1072#1088#1080#1092#1084
      Caption = 'ln'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton17Click
    end
    object SpeedButton18: TSpeedButton
      Left = 144
      Top = 7
      Width = 41
      Height = 33
      Hint = #1050#1074#1072#1076#1088#1072#1090#1085#1072#1103' '#1089#1090#1077#1087#1077#1085#1100
      Caption = 'x2'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton18Click
    end
    object SpeedButton19: TSpeedButton
      Left = 0
      Top = 47
      Width = 41
      Height = 32
      Hint = #1057#1080#1085#1091#1089
      Caption = 'sin'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton19Click
    end
    object SpeedButton20: TSpeedButton
      Left = 48
      Top = 47
      Width = 41
      Height = 32
      Hint = #1050#1086#1089#1080#1085#1091#1089
      Caption = 'cos'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton20Click
    end
    object SpeedButton21: TSpeedButton
      Left = 96
      Top = 47
      Width = 41
      Height = 32
      Hint = #1058#1072#1085#1075#1077#1085#1089
      Caption = 'tg'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton21Click
    end
    object SpeedButton22: TSpeedButton
      Left = 144
      Top = 47
      Width = 41
      Height = 32
      Hint = #1050#1086#1090#1072#1085#1075#1077#1085#1089
      Caption = 'ctg'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton22Click
    end
    object SpeedButton23: TSpeedButton
      Left = 0
      Top = 86
      Width = 41
      Height = 33
      Hint = #1060#1072#1082#1090#1086#1088#1080#1072#1083
      Caption = 'fact'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton23Click
    end
    object SpeedButton24: TSpeedButton
      Left = 48
      Top = 86
      Width = 41
      Height = 33
      Hint = #1050#1074#1072#1076#1088#1072#1090#1085#1072#1103' '#1089#1090#1077#1087#1077#1085#1100
      Caption = 'sqr'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton24Click
    end
    object SpeedButton25: TSpeedButton
      Left = 96
      Top = 86
      Width = 41
      Height = 33
      Hint = '1/x'
      Caption = '1/x'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton25Click
    end
    object SpeedButton26: TSpeedButton
      Left = 144
      Top = 86
      Width = 41
      Height = 33
      Hint = #1040#1073#1089#1086#1083#1102#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      Caption = 'abs'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton26Click
    end
    object SpeedButton27: TSpeedButton
      Left = 0
      Top = 126
      Width = 41
      Height = 32
      Hint = #1062#1077#1083#1086#1095#1080#1089#1083#1077#1085#1085#1086#1077' '#1095#1072#1089#1090#1085#1086#1077'  '#1086#1090' '#1076#1077#1083#1077#1085#1080#1103' '#1076#1074#1091#1093' '#1095#1080#1089#1077#1083
      Caption = 'div'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton27Click
    end
    object SpeedButton28: TSpeedButton
      Left = 48
      Top = 126
      Width = 41
      Height = 32
      Hint = #1062#1077#1083#1086#1095#1080#1089#1083#1077#1085#1085#1099#1081' '#1086#1089#1090#1072#1090#1086#1082' '#1086#1089#1090#1072#1074#1096#1080#1081#1089#1103' '#1086#1090' '#1076#1077#1083#1077#1085#1080#1103' '#1076#1074#1091#1093' '#1095#1080#1089#1077#1083
      Caption = 'mod'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton28Click
    end
    object SpeedButton29: TSpeedButton
      Left = 96
      Top = 126
      Width = 41
      Height = 32
      Hint = #1055#1088#1086#1094#1077#1085#1090#1099
      Caption = '%'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton29Click
    end
    object SpeedButton30: TSpeedButton
      Left = 144
      Top = 126
      Width = 41
      Height = 32
      Hint = #1050#1074#1072#1076#1088#1072#1090#1085#1099#1081' '#1082#1086#1088#1077#1085#1100' '#1095#1080#1089#1083#1072
      Caption = 'sqrt'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton30Click
    end
    object SpeedButton31: TSpeedButton
      Left = 0
      Top = 166
      Width = 41
      Height = 32
      Hint = #1044#1077#1089#1103#1090#1072#1103' '#1089#1090#1077#1087#1077#1085#1100' '#1095#1080#1089#1083#1072
      Caption = 'x10'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton31Click
    end
    object SpeedButton32: TSpeedButton
      Left = 48
      Top = 166
      Width = 41
      Height = 32
      Hint = #1055#1080
      Caption = 'Pi'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton32Click
    end
    object SpeedButton33: TSpeedButton
      Left = 96
      Top = 166
      Width = 41
      Height = 32
      Hint = #1042#1088#1077#1084#1103
      Caption = 't'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton33Click
    end
    object SpeedButton34: TSpeedButton
      Left = 144
      Top = 166
      Width = 41
      Height = 32
      Hint = #1044#1072#1090#1072
      Caption = 'd'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton34Click
    end
    object SpeedButton36: TSpeedButton
      Left = 0
      Top = 205
      Width = 41
      Height = 33
      Hint = #1057#1090#1077#1087#1077#1085#1100' '#1080#1082#1089#1072
      Caption = 'Xn'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton36Click
    end
    object SpeedButton39: TSpeedButton
      Left = 48
      Top = 205
      Width = 41
      Height = 33
      Hint = #1042#1086#1079#1074#1077#1076#1077#1085#1080#1077' '#1095#1080#1089#1083#1072' y '#1074' '#1089#1090#1077#1087#1077#1085#1100' x'
      Caption = 'exp'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton39Click
    end
    object SpeedButton38: TSpeedButton
      Left = 96
      Top = 205
      Width = 41
      Height = 33
      Hint = #1040#1088#1082#1082#1086#1090#1072#1085#1075#1077#1085#1089
      Caption = 'arct'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton38Click
    end
    object SpeedButton40: TSpeedButton
      Left = 144
      Top = 205
      Width = 41
      Height = 33
      Hint = #1040#1088#1082#1090#1072#1085#1075#1077#1085#1089
      Caption = 'art'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton40Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 200
    object about1: TMenuItem
      Caption = #1050#1074#1072#1076#1088#1072#1090#1085#1086#1077' '#1091#1088#1072#1074#1085#1077#1085#1080#1077
      OnClick = about1Click
    end
    object about: TMenuItem
      Caption = 'about'
      OnClick = aboutClick
    end
    object N1: TMenuItem
      Caption = #1058#1077#1083#1072
      OnClick = N1Click
    end
  end
end
