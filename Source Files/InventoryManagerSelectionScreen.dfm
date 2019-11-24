object MainSelectionScreenForm: TMainSelectionScreenForm
  Left = 272
  Top = 24
  Width = 666
  Height = 718
  Caption = 'Inventory Manager Selection Screen'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlProduct: TPanel
    Left = 120
    Top = 32
    Width = 417
    Height = 121
    BorderStyle = bsSingle
    TabOrder = 0
    object lblProductHeading: TLabel
      Left = 32
      Top = 8
      Width = 164
      Height = 24
      Caption = 'Manage Products'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblProductDesc: TLabel
      Left = 32
      Top = 40
      Width = 205
      Height = 13
      Caption = 'Use this option to Add new Product Details '
    end
    object btnProductAdd: TButton
      Left = 304
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlCategory: TPanel
    Left = 120
    Top = 192
    Width = 417
    Height = 121
    BorderStyle = bsSingle
    TabOrder = 1
    object lblCategoryHeading: TLabel
      Left = 32
      Top = 8
      Width = 260
      Height = 24
      Caption = 'Manage Product Categories'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCategoryDesc: TLabel
      Left = 32
      Top = 40
      Width = 290
      Height = 13
      Caption = 'Use this option to Add new Product Category or Sub-category'
    end
    object btnCategoryModify: TButton
      Left = 120
      Top = 80
      Width = 107
      Height = 25
      Caption = 'Add Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btnCategoryAdd: TButton
      Left = 256
      Top = 80
      Width = 121
      Height = 25
      Caption = 'Add Sub-Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnlStockLevel: TPanel
    Left = 120
    Top = 344
    Width = 417
    Height = 121
    BorderStyle = bsSingle
    TabOrder = 2
    object lblStockLvlHeading: TLabel
      Left = 32
      Top = 8
      Width = 199
      Height = 24
      Caption = 'Manage Stock Levels'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblStockLvlDesc: TLabel
      Left = 32
      Top = 40
      Width = 248
      Height = 13
      Caption = 'Use this option to update Stock Quanity of Products '
    end
    object btnStockLvlUpdate: TButton
      Left = 272
      Top = 80
      Width = 115
      Height = 25
      Caption = 'Update'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlStockHistory: TPanel
    Left = 120
    Top = 496
    Width = 417
    Height = 121
    BorderStyle = bsSingle
    TabOrder = 3
    object lblStockHistHeading: TLabel
      Left = 32
      Top = 8
      Width = 246
      Height = 24
      Caption = 'View Stock Update History'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblStockHistDesc: TLabel
      Left = 32
      Top = 40
      Width = 312
      Height = 26
      Caption = 
        'Use this option to check history of Updates made to Stock Levels' +
        ', for any product '
      WordWrap = True
    end
    object btnStockHistView: TButton
      Left = 280
      Top = 80
      Width = 107
      Height = 25
      Caption = 'View Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
end
