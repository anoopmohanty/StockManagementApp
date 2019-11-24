object Form1: TForm1
  Left = 429
  Top = 260
  Width = 365
  Height = 210
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCategory: TLabel
    Left = 16
    Top = 24
    Width = 42
    Height = 13
    Caption = 'Category'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 64
    Height = 13
    Caption = 'Sub-Category'
  end
  object DbCmbCategory: TDBComboBox
    Left = 120
    Top = 16
    Width = 145
    Height = 21
    Hint = 'Enter'
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object DBComboBox2: TDBComboBox
    Left = 120
    Top = 56
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
end
