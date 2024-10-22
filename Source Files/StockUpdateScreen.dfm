object frmStockUpdateScreen: TfrmStockUpdateScreen
  Left = 867
  Top = 162
  Width = 486
  Height = 392
  VertScrollBar.Visible = False
  Caption = 'Update Inventory'
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
  object lblStockQuant: TLabel
    Left = 40
    Top = 80
    Width = 108
    Height = 26
    Caption = 'Stock Quantity for Selected Product'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object edtSearchProductName: TEdit
    Left = 40
    Top = 32
    Width = 201
    Height = 21
    TabOrder = 0
    Text = 'Search by Product Name'
    OnChange = edtSearchProductNameChange
    OnClick = edtSearchProductNameClick
    OnKeyPress = edtSearchProductNameKeyPress
  end
  object btnSearchProduct: TButton
    Left = 264
    Top = 32
    Width = 97
    Height = 23
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
  object DBGridProductDetails: TDBGrid
    Left = 32
    Top = 144
    Width = 401
    Height = 169
    DataSource = dmInvManagerDb.DscProductDet
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'AddedByUser'
        Title.Alignment = taCenter
        Title.Caption = 'Added by User'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'StockQuantity'
        Title.Alignment = taCenter
        Title.Caption = 'Stock Quantity'
        Width = 100
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 40
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
  end
  object DBEdtStockNumber: TDBEdit
    Left = 176
    Top = 80
    Width = 65
    Height = 21
    DataField = 'StockQuantity'
    DataSource = dmInvManagerDb.DscProductDet
    TabOrder = 2
    OnKeyPress = DBEdtStockNumberKeyPress
  end
  object btnStockUpdate: TButton
    Left = 264
    Top = 80
    Width = 97
    Height = 25
    Caption = 'Update Stock'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnStockUpdateClick
  end
  object DBedtProductID: TDBEdit
    Left = 40
    Top = 320
    Width = 97
    Height = 21
    DataField = 'ProductID'
    DataSource = dmInvManagerDb.DscProductDet
    TabOrder = 6
    Visible = False
  end
  object DBedtProductName: TDBEdit
    Left = 152
    Top = 320
    Width = 105
    Height = 21
    DataField = 'ProductName'
    DataSource = dmInvManagerDb.DscProductDet
    TabOrder = 7
    Visible = False
  end
end
