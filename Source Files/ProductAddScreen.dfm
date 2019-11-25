object frmProductAddScreen: TfrmProductAddScreen
  Left = 288
  Top = 167
  Width = 951
  Height = 398
  Caption = 'Add Product Details'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gbAddNewProduct: TGroupBox
    Left = 24
    Top = 24
    Width = 353
    Height = 305
    Caption = 'Add New Details'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblSelProdSubCat: TLabel
      Left = 13
      Top = 92
      Width = 137
      Height = 13
      Caption = 'Select Product Sub-Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblEnterProdName: TLabel
      Left = 16
      Top = 130
      Width = 96
      Height = 13
      Caption = 'Enter Product Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSelProdCat: TLabel
      Left = 13
      Top = 56
      Width = 115
      Height = 13
      Caption = 'Select Product Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblEnterProdDesc: TLabel
      Left = 17
      Top = 168
      Width = 121
      Height = 13
      Caption = 'Enter Product Description'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblStockQuantity: TLabel
      Left = 17
      Top = 208
      Width = 98
      Height = 13
      Caption = 'Enter Stock Quantity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnSaveNewProduct: TButton
      Left = 242
      Top = 245
      Width = 83
      Height = 25
      Caption = 'Save '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnSaveNewProductClick
    end
    object edtProdName: TEdit
      Left = 163
      Top = 128
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtProdDesc: TEdit
      Left = 163
      Top = 168
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBcmbProdCategory: TDBLookupComboBox
      Left = 160
      Top = 48
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CategoryName'
      ListField = 'CategoryName'
      ListSource = dmInvManagerDb.DscProductCat
      ParentFont = False
      TabOrder = 0
      OnCloseUp = DBcmbProdCategoryCloseUp
    end
    object edtStockQuantity: TEdit
      Left = 163
      Top = 208
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edtStockQuantityKeyPress
    end
    object CmbProductSubCategory: TComboBox
      Left = 160
      Top = 88
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
    end
  end
  object gbSearchExistingProduct: TGroupBox
    Left = 400
    Top = 23
    Width = 505
    Height = 305
    Caption = 'Search Existing Product Categories'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object edtSearchProduct: TEdit
      Left = 16
      Top = 32
      Width = 209
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Search by Product Name'
      OnChange = edtSearchProductChange
      OnClick = edtSearchProductClick
      OnKeyPress = edtSearchProductKeyPress
    end
    object btnSearchProduct: TButton
      Left = 256
      Top = 32
      Width = 75
      Height = 24
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSearchProductClick
    end
    object DBGridProductList: TDBGrid
      Left = 16
      Top = 80
      Width = 481
      Height = 209
      DataSource = dmInvManagerDb.DscProductDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ProductID'
          Title.Alignment = taCenter
          Title.Caption = 'Product ID'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ProductName'
          Title.Alignment = taCenter
          Title.Caption = 'Product Name'
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Description'
          Title.Alignment = taCenter
          Width = 140
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AddedByUser'
          Title.Alignment = taCenter
          Title.Caption = 'Added by User'
          Width = 120
          Visible = True
        end>
    end
  end
end
