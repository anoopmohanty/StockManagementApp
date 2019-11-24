unit SubCategoryScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, InventoryManagerDataModule;

type
  TfrmSubCategoryAddScreen = class(TForm)
    gbAddnewSubCt: TGroupBox;
    lblEnterSubCatName: TLabel;
    lblEnterSubCatDesc: TLabel;
    edtSubCatName: TEdit;
    edtSubCatDesc: TEdit;
    btnSubCatSave: TButton;
    gbSearchExistingSubCat: TGroupBox;
    edtSearchSubCat: TEdit;
    btnSubCatSearch: TButton;
    DBGridSubCat: TDBGrid;
    lblSelProdCat: TLabel;
    DBCmbProdCat: TDBLookupComboBox;
    procedure btnSubCatSaveClick(Sender: TObject);
    procedure edtSearchSubCatClick(Sender: TObject);
    procedure InsertDatainProdSubCategoryTable;
    procedure edtSearchSubCatChange(Sender: TObject);
    procedure btnSubCatSearchClick(Sender: TObject);
    procedure edtSearchSubCatKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubCategoryAddScreen: TfrmSubCategoryAddScreen;

implementation

{$R *.dfm}

procedure TfrmSubCategoryAddScreen.btnSubCatSaveClick(Sender: TObject);
begin
  try
    if (edtSubCatName.Text = '') or  (edtSubCatDesc.Text= '')
    or (DBCmbProdCat.Text = '') then
    begin
      MessageDlg('Please enter details in all the fields' ,mtError,[mbOK],0);
      exit;
    end;

    InsertDatainProdSubCategoryTable;

    //Refresh data in DBgrid to display newly inserted data
    DBGridSubCat.DataSource.DataSet.Active:= False;
    DBGridSubCat.DataSource.DataSet.Active:= True;
    DBGridSubCat.DataSource.DataSet.Refresh;
   except
      MessageDlg('Application encountered an exception while performing an operation',
      mtInformation,[mbOK],0);
   end;
end;

procedure TfrmSubCategoryAddScreen.edtSearchSubCatClick(Sender: TObject);
begin
  if edtSearchSubCat.Text = 'Search by Sub-Category Name' then
    edtSearchSubCat.Text := '';
end;

procedure TfrmSubCategoryAddScreen.InsertDatainProdSubCategoryTable;
var
 SelectedCategoryID: string;
begin
  with dmInvManagerDb do
  begin
    //Fetching related CategoryID based on selected Product Category Name
    ADOQryInventory.Close;
    ADOQryInventory.SQL.Clear;
    ADOQryInventory.SQL.Add
    ('SELECT * FROM ProductCategory WHERE (CategoryName="' + DBCmbProdCat.Text +'");');
    ADOQryInventory.Open;
    SelectedCategoryID:= ADOQryInventory.FieldByName('CategoryID').Text;

    //Insert data into ProductSubCategory table
    ADOQryInsert.Close;
    ADOQryInsert.SQL.Clear;
    ADOQryInsert.SQL.Add('INSERT INTO ProductSubCategory (CategoryID,' +
    'SubCategoryName,SubCategoryDescription)' +
    'VALUES ("' + SelectedCategoryID + '","' + edtSubCatName.Text + '","' + edtSubCatDesc.Text + '")');

    if (ADOQryInsert.ExecSQL) <> 0 then begin
      MessageDlg('Data saved successfully',mtInformation,[mbOK],0);
      DBCmbProdCat.Refresh;
      edtSubCatName.Text:= '';
      edtSubCatDesc.Text:= '';
    end;
  end;
end;

procedure TfrmSubCategoryAddScreen.edtSearchSubCatChange(Sender: TObject);
begin
  if edtSearchSubCat.Text = '' then begin
    with dmInvManagerDb do
    begin
      ADOQryProductSubCat.Filtered := False;
      ADOQryProductSubCat.Filter := '';
      ADOQryProductSubCat.First;
    end;
   end;
end;

procedure TfrmSubCategoryAddScreen.btnSubCatSearchClick(Sender: TObject);
begin
  with dmInvManagerDb do
  begin
    ADOQryProductSubCat.Filter :=  'SubCategoryName LIKE ' +
    QuotedStr ('*'+ (edtSearchSubCat.Text)+'*');
    ADOQryProductSubCat.Filtered := True;
    ADOQryProductSubCat.First;
  end;
end;

procedure TfrmSubCategoryAddScreen.edtSearchSubCatKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnSubCatSearch.Click;
end;

end.
