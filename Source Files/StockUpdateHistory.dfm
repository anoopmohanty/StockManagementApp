object frmStockUpdateHistory: TfrmStockUpdateHistory
  Left = 537
  Top = 248
  Width = 633
  Height = 334
  Caption = 'Stock Update History'
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
  object btnSearch: TButton
    Left = 312
    Top = 26
    Width = 75
    Height = 25
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnSearchClick
  end
  object edtSrchProdName: TEdit
    Left = 40
    Top = 32
    Width = 233
    Height = 21
    TabOrder = 1
    Text = 'Search by Product Name'
    OnChange = edtSrchProdNameChange
    OnClick = edtSrchProdNameClick
    OnKeyPress = edtSrchProdNameKeyPress
  end
  object DBGridStockUpdHist: TDBGrid
    Left = 40
    Top = 80
    Width = 553
    Height = 185
    DataSource = dmInvManagerDb.DscQryStockUpdHistory
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
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'StockQuantity'
        Title.Alignment = taCenter
        Title.Caption = 'Stock Quantity'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ModifiedByUser'
        Title.Alignment = taCenter
        Title.Caption = 'Modified by User'
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'StockModificationDate'
        Title.Alignment = taCenter
        Title.Caption = 'Stock Modification Date'
        Width = 150
        Visible = True
      end>
  end
end
