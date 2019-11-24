object frmLoginScreen: TfrmLoginScreen
  Left = 274
  Top = 158
  Width = 642
  Height = 369
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblUserName: TLabel
    Left = 139
    Top = 136
    Width = 66
    Height = 17
    Caption = 'User Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblPassword: TLabel
    Left = 144
    Top = 200
    Width = 56
    Height = 17
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblForgotPwd: TLabel
    Left = 291
    Top = 256
    Width = 92
    Height = 13
    Caption = 'Forgot Password?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lblAppHeading: TLabel
    Left = 56
    Top = 24
    Width = 513
    Height = 49
    AutoSize = False
    Caption = 'Inventory Management Application'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtUserName: TEdit
    Left = 251
    Top = 128
    Width = 262
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edtUserNameKeyPress
  end
  object edtPassword: TEdit
    Left = 251
    Top = 192
    Width = 262
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = edtPasswordKeyPress
  end
  object btnLogin: TButton
    Left = 424
    Top = 240
    Width = 86
    Height = 33
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
