object frmMainSelectionScreen: TfrmMainSelectionScreen
  Left = 260
  Top = 8
  Width = 661
  Height = 669
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Inventory Manager Selection Screen'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlProduct: TPanel
    Left = 120
    Top = 176
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
      OnClick = btnProductAddClick
    end
  end
  object pnlCategory: TPanel
    Left = 120
    Top = 24
    Width = 417
    Height = 121
    BorderStyle = bsSingle
    TabOrder = 1
    object lblCategoryHeading: TLabel
      Left = 30
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
      Width = 291
      Height = 13
      Caption = 'Use this option to Add new Product Category or Sub-Category'
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
      OnClick = btnCategoryModifyClick
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
      OnClick = btnCategoryAddClick
    end
  end
  object pnlStockLevel: TPanel
    Left = 120
    Top = 328
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
      Width = 231
      Height = 13
      Caption = 'Use this option to update Product Stock Quanity '
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
      OnClick = btnStockLvlUpdateClick
    end
  end
  object pnlStockHistory: TPanel
    Left = 120
    Top = 480
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
        ' of any product '
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
      OnClick = btnStockHistViewClick
    end
  end
end
