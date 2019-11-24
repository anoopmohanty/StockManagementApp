unit StockUpdateScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, InventoryManagerDataModule, Mask,
  DBCtrls;

type
  TfrmStockUpdateScreen = class(TForm)
    edtSearchProductName: TEdit;
    btnSearchProduct: TButton;
    DBGridProductDetails: TDBGrid;
    DBEdtStockNumber: TDBEdit;
    lblStockQuant: TLabel;
    btnStockUpdate: TButton;
    DBedtProductID: TDBEdit;
    DBedtProductName: TDBEdit;
    procedure edtSearchProductNameClick(Sender: TObject);
    procedure edtSearchProductNameChange(Sender: TObject);
    procedure btnSearchProductClick(Sender: TObject);
    procedure btnStockUpdateClick(Sender: TObject);
    procedure edtSearchProductNameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockUpdateScreen: TfrmStockUpdateScreen;

implementation

uses
LoginScreen;

{$R *.dfm}

procedure TfrmStockUpdateScreen.edtSearchProductNameClick(Sender: TObject);
begin
  if edtSearchProductName.Text = 'Search by Product Name' then
    edtSearchProductName.Text := '';
end;

procedure TfrmStockUpdateScreen.edtSearchProductNameChange(
  Sender: TObject);
begin
  if edtSearchProductName.Text = '' then begin
    with dmInvManagerDb do
    begin
      ADOQryProductDet.Filtered := False;
      ADOQryProductDet.Filter := '';
      ADOQryProductDet.First;
    end;
   end;
end;

procedure TfrmStockUpdateScreen.btnSearchProductClick(Sender: TObject);
begin
  with dmInvManagerDb do
  begin
    ADOQryProductDet.Filter :=  'ProductName LIKE ' +
    QuotedStr ('*'+ (edtSearchProductName.Text)+'*');
    ADOQryProductDet.Filtered := True;
    ADOQryProductDet.First;
  end;
end;

procedure TfrmStockUpdateScreen.btnStockUpdateClick(Sender: TObject);
begin
 try
  with dmInvManagerDb do
  begin
    ADOQryInventory.Close;
    ADOQryInventory.SQL.Clear;
    ADOQryInventory.SQL.Add
    ('UPDATE ProductDetails SET StockQuantity = "'+ (DBEdtStockNumber.Text) +'" '+
    'WHERE ProductID = '+ (DBedtProductID.Text) + '');
    if (ADOQryInventory.ExecSQL) <> 0 then
        MessageDlg('Data updated successfully ',mtInformation,[mbOK],0);

    ADOQryInsert.Close;
    ADOQryInsert.SQL.Clear;
    ADOQryInsert.SQL.Add('INSERT INTO ProductStockHistory (ProductID,' +
    'ProductName,StockQuantity,StockModificationDate,ModifiedByUser)' +
    'VALUES ("' + DBedtProductID.Text + '","' + DBedtProductName.Text + '","' + DBEdtStockNumber.Text + '",' +
    '"' + DateTimeToStr (Now) + '","' + frmLoginScreen.edtUserName.Text + '")');
    ADOQryInsert.ExecSQL;
  end;
 except
   MessageDlg('Application encountered an exception while performing an operation',
   mtInformation,[mbOK],0);
 end;
end;

procedure TfrmStockUpdateScreen.edtSearchProductNameKeyPress(
  Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    btnSearchProduct.Click;
end;

end.
