unit InventoryManagerDataModule;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs;

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
    function CheckSimilarDataExistsinDatabase (DBName:string; Searchtxt:string) : Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmInvManagerDb: TdmInvManagerDb;

implementation

{$R *.dfm}

function TdmInvManagerDb.CheckSimilarDataExistsinDatabase (DBName:string; Searchtxt:string) : Boolean;
var
  FieldName: string;
begin
   FieldName:= '';
   Result:= False;

   if (DBName = 'ProductCategory') then
     FieldName:= 'CategoryName'
   else if  (DBName = 'ProductSubCategory') then
     FieldName:= 'SubCategoryName'
   else if (DBName = 'ProductDetails') then
     FieldName:= 'ProductName';

   try
    with dmInvManagerDb do
    begin
      ADOQryInventory.Close;
      ADOQryInventory.SQL.Clear;
      ADOQryInventory.SQL.Add ('SELECT * FROM ' + DBName + ' WHERE ' + FieldName + '=  "'+ Searchtxt +'"');
      ADOQryInventory.Open;
      if ADOQryInventory.RecordCount > 0 then
        Result:= True;
    end;
    except
      MessageDlg('Application encountered an exception while performing an operation',
      mtInformation,[mbOK],0);
    end;
end;
end.


