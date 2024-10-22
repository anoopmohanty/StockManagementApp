object dmInvManagerDb: TdmInvManagerDb
  OldCreateOrder = False
  Left = 532
  Top = 357
  Height = 342
  Width = 615
  object ADOConInventoryDb: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=InventoryDB.mdb;Mod' +
      'e=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 40
  end
  object ADOQryLoginDet: TADOQuery
    Connection = ADOConInventoryDb
    CursorType = ctStatic
    Parameters = <>
    Left = 176
    Top = 40
  end
  object DscProductCat: TDataSource
    DataSet = ADOQryProductCat
    Left = 464
    Top = 40
  end
  object DscLoginDet: TDataSource
    DataSet = ADOQryLoginDet
    Left = 272
    Top = 40
  end
  object DscProductSubCat: TDataSource
    DataSet = ADOQryProductSubCat
    Left = 176
    Top = 120
  end
  object ADOQryInsert: TADOQuery
    Connection = ADOConInventoryDb
    Parameters = <>
    Left = 280
    Top = 120
  end
  object ADOQryInventory: TADOQuery
    Connection = ADOConInventoryDb
    Parameters = <>
    Left = 376
    Top = 120
  end
  object DscProductDet: TDataSource
    DataSet = ADOQryProductDet
    Left = 152
    Top = 192
  end
  object ADOQryProductCat: TADOQuery
    Active = True
    Connection = ADOConInventoryDb
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ProductCategory')
    Left = 368
    Top = 40
  end
  object ADOQryProductSubCat: TADOQuery
    Active = True
    Connection = ADOConInventoryDb
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ProductSubCategory')
    Left = 48
    Top = 120
  end
  object ADOQryProductDet: TADOQuery
    Active = True
    Connection = ADOConInventoryDb
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ProductDetails')
    Left = 48
    Top = 192
  end
  object ADOQryStockUpdHistory: TADOQuery
    Connection = ADOConInventoryDb
    CursorLocation = clUseServer
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ProductStockHistory')
    Left = 264
    Top = 192
  end
  object DscQryStockUpdHistory: TDataSource
    DataSet = ADOQryStockUpdHistory
    Left = 384
    Top = 192
  end
end
