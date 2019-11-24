unit InventoryManagerDataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmInvManagerDb = class(TDataModule)
    ADOConInventoryDb: TADOConnection;
    ADOQryLoginDet: TADOQuery;
    DscProductCat: TDataSource;
    DscLoginDet: TDataSource;
    DscProductSubCat: TDataSource;
    ADOQryInsert: TADOQuery;
    ADOQryInventory: TADOQuery;
    DscProductDet: TDataSource;
    ADOQryProductCat: TADOQuery;
    ADOQryProductSubCat: TADOQuery;
    ADOQryProductDet: TADOQuery;
    ADOQryStockUpdHistory: TADOQuery;
    DscQryStockUpdHistory: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmInvManagerDb: TdmInvManagerDb;

implementation

{$R *.dfm}

end.


