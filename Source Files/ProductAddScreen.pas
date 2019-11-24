unit ProductAddScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, InventoryManagerDataModule, DBCtrls,
  DateUtils;

type
  TfrmProductAddScreen = class(TForm)
    gbAddNewProduct: TGroupBox;
    btnSaveNewProduct: TButton;
    gbSearchExistingProduct: TGroupBox;
    edtSearchProduct: TEdit;
    btnSearchProduct: TButton;
    DBGridProductList: TDBGrid;
    lblSelProdSubCat: TLabel;
    lblEnterProdName: TLabel;
    lblSelProdCat: TLabel;
    edtProdName: TEdit;
    lblEnterProdDesc: TLabel;
    edtProdDesc: TEdit;
    DBcmbProdCategory: TDBLookupComboBox;
    lblStockQuantity: TLabel;
    edtStockQuantity: TEdit;
    CmbProductSubCategory: TComboBox;
    procedure edtSearchProductClick(Sender: TObject);
    procedure btnSaveNewProductClick(Sender: TObject);
    procedure DBcmbProdCategoryCloseUp(Sender: TObject);
    function fetchCategoryID :string;
    function fetchSubCategoryID : string;
    function fetchProductID (aDateTime : TDateTime): string;
    procedure InsertDatainProductDetailsTable (aDateTime : TDateTime) ;
    procedure InsertDatainProductStockHistoryTable (aDateTime : TDateTime) ;
    procedure edtSearchProductChange(Sender: TObject);
    procedure btnSearchProductClick(Sender: TObject);
    procedure edtSearchProductKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductAddScreen: TfrmProductAddScreen;

implementation

uses
 LoginScreen;
 
{$R *.dfm}

procedure TfrmProductAddScreen.edtSearchProductClick(Sender: TObject);
begin
  if edtSearchProduct.Text = 'Search by Product Name' then
    edtSearchProduct.Text := '';
end;

procedure TfrmProductAddScreen.DBcmbProdCategoryCloseUp(Sender: TObject);
begin
  CmbProductSubCategory.Clear;

  //Fetch SubCategoryName details based on selected Category Name
  try
    with dmInvManagerDb do
    begin
      ADOQryInventory.Close;
      ADOQryInventory.SQL.Clear;
      ADOQryInventory.SQL.Add ('SELECT * FROM ProductSubCategory ' +
      'WHERE (CategoryID= '+ fetchCategoryID +');');
      ADOQryInventory.Open;

      while not ADOQryInventory.Eof do begin
        CmbProductSubCategory.Items.Add(ADOQryInventory['SubCategoryName']);
        ADOQryInventory.Next;
      end;
    end;
    except
      MessageDlg('Application encountered an exception while performing an operation',
      mtInformation,[mbOK],0);
    end;
end;

procedure TfrmProductAddScreen.btnSaveNewProductClick(Sender: TObject);
var
 CurrentDateTime        : TDateTime;
begin
  CurrentDateTime:= Now;

  try
    if (edtProdName.Text = '') or  (edtProdDesc.Text= '')
    or (DBcmbProdCategory.Text = '') or (CmbProductSubCategory.Text = '')
    or (edtStockQuantity.Text = '') then
    begin
      MessageDlg('Please enter details in all the fields',mtError,[mbOK],0);
      Exit;
    end;

    InsertDatainProductDetailsTable(CurrentDateTime);
    InsertDatainProductStockHistoryTable(CurrentDateTime);

    //Refresh data in DBgrid to display newly inserted data
    DBGridProductList.DataSource.DataSet.Active:= False;
    DBGridProductList.DataSource.DataSet.Active:= True;
    DBGridProductList.DataSource.DataSet.Refresh;
   except
      MessageDlg('Application encountered an exception while performing an operation',
      mtInformation,[mbOK],0);
   end;
end;

function TfrmProductAddScreen.fetchCategoryID : string;
var
 SelectedCategoryID     : string;
begin
  with dmInvManagerDb do
  begin
    ADOQryInventory.Close;
    ADOQryInventory.SQL.Clear;
    ADOQryInventory.SQL.Add ('SELECT * FROM ProductCategory ' +
    'WHERE (CategoryName="' + DBcmbProdCategory.Text +'");');
    ADOQryInventory.Open;
    SelectedCategoryID:= ADOQryInventory.FieldByName('CategoryID').Text;

    ADOQryInventory.Close;
    ADOQryInventory.SQL.Clear;
  end;
  Result:= SelectedCategoryID;
end;

function TfrmProductAddScreen.fetchSubCategoryID : string;
var
 SelectedSubCategoryID     : string;
begin
  with dmInvManagerDb do
  begin
    ADOQryInventory.Close;
    ADOQryInventory.SQL.Clear;
    ADOQryInventory.SQL.Add ('SELECT * FROM ProductSubCategory ' +
    'WHERE (SubCategoryName="' + CmbProductSubCategory.Text +'");');
    ADOQryInventory.Open;
    SelectedSubCategoryID:= ADOQryInventory.FieldByName('SubCategoryID').Text;

    ADOQryInventory.Close;
    ADOQryInventory.SQL.Clear;
  end;
  Result:= SelectedSubCategoryID;
end;

function TfrmProductAddScreen.fetchProductID (aDateTime : TDateTime): string;
var
 stProductID     : string;
begin
  with dmInvManagerDb do
  begin
    ADOQryInventory.Close;
    ADOQryInventory.SQL.Clear;
    ADOQryInventory.SQL.Add ('SELECT * FROM ProductDetails ' +
    'WHERE (ProductName="' + edtProdName.Text +'" ' +
    'AND AddedByUser="' + frmLoginScreen.edtUserName.Text +'" ' +
    'AND AddedonDate="' + DateTimeToStr (aDateTime) +'");');
    ADOQryInventory.Open;
    stProductID:= ADOQryInventory.FieldByName('ProductID').Text;

    ADOQryInventory.Close;
    ADOQryInventory.SQL.Clear;
  end;
  Result:= stProductID;
end;

procedure TfrmProductAddScreen.InsertDatainProductDetailsTable (aDateTime : TDateTime);
begin
  with dmInvManagerDb do
  begin
    ADOQryInsert.Close;
    ADOQryInsert.SQL.Clear;
    ADOQryInsert.SQL.Add('INSERT INTO ProductDetails (ProductName,' +
    'Description,CategoryID,SubCategoryID,StockQuantity,AddedByUser,AddedonDate)' +
    'VALUES ("' + edtProdName.Text + '","' + edtProdDesc.Text + '",' +
    '"' + fetchCategoryID + '","' + fetchSubCategoryID + '",'  +
    '"' + edtStockQuantity.Text + '", "' + frmLoginScreen.edtUserName.Text + '",' +
    '"' + DateTimeToStr (aDateTime) + '")');

    if (ADOQryInsert.ExecSQL) <> 0 then
      MessageDlg('Data saved successfully',mtInformation,[mbOK],0);
   end;
end;

procedure TfrmProductAddScreen.InsertDatainProductStockHistoryTable (aDateTime : TDateTime) ;
begin
  with dmInvManagerDb do
  begin
    ADOQryInsert.Close;
    ADOQryInsert.SQL.Clear;
    ADOQryInsert.SQL.Add('INSERT INTO ProductStockHistory (ProductID,' +
    'ProductName,StockQuantity,StockModificationDate,ModifiedByUser)' +
    'VALUES (' + fetchProductID (aDateTime) + ',"' + edtProdName.Text + '","' + edtStockQuantity.Text + '",' +
    '"' + DateTimeToStr (aDateTime) + '","' + frmLoginScreen.edtUserName.Text + '")');

    if (ADOQryInsert.ExecSQL) <> 0 then begin
      DBcmbProdCategory.Refresh;
      CmbProductSubCategory.Clear;
      edtProdName.Text:= '';
      edtProdDesc.Text:= '';
      edtStockQuantity.Text:= '';
    end;  
  end;
end;

procedure TfrmProductAddScreen.edtSearchProductChange(Sender: TObject);
begin
  if edtSearchProduct.Text = '' then begin
    with dmInvManagerDb do
    begin
      ADOQryProductDet.Filtered := False;
      ADOQryProductDet.Filter := '';
      ADOQryProductDet.First;
    end;
   end;
end;

procedure TfrmProductAddScreen.btnSearchProductClick(Sender: TObject);
begin
  with dmInvManagerDb do
  begin
    ADOQryProductDet.Filter :=  'ProductName LIKE ' +
    QuotedStr ('*'+ (edtSearchProduct.Text)+'*');
    ADOQryProductDet.Filtered := True;
    ADOQryProductDet.First;
  end;
end;

procedure TfrmProductAddScreen.edtSearchProductKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnSearchProduct.Click;
end;

end.
