unit CategoryAddScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, InventoryManagerDataModule, DB;

type
  TfrmCategoryAddScreen = class(TForm)
    gbNewCatDetails: TGroupBox;
    gbExistingCat: TGroupBox;
    edtCategorySearch: TEdit;
    btnCatSearch: TButton;
    DBGridCategory: TDBGrid;
    lblCatName: TLabel;
    edtNewCatName: TEdit;
    edtNewCatDesc: TEdit;
    lblCatDesc: TLabel;
    btnNewCatSave: TButton;
    procedure edtCategorySearchClick(Sender: TObject);
    procedure btnCatSearchClick(Sender: TObject);
    procedure btnNewCatSaveClick(Sender: TObject);
    procedure InsertDatainProdCategoryTable;
    procedure edtCategorySearchChange(Sender: TObject);
    procedure edtCategorySearchKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoryAddScreen: TfrmCategoryAddScreen;

implementation

{$R *.dfm}

procedure TfrmCategoryAddScreen.edtCategorySearchClick(Sender: TObject);
begin
  if edtCategorySearch.Text = 'Search by Category Name' then
    edtCategorySearch.Text := '';
end;

procedure TfrmCategoryAddScreen.btnCatSearchClick(Sender: TObject);
begin
  with dmInvManagerDb do
  begin
    ADOQryProductCat.Filter :=  'CategoryName LIKE ' +
    QuotedStr ('*'+ (edtCategorySearch.Text)+'*');
    ADOQryProductCat.Filtered := True;
    ADOQryProductCat.First;
  end;
end;

procedure TfrmCategoryAddScreen.btnNewCatSaveClick(Sender: TObject);
begin
  try
    if (edtNewCatName.Text = '') or  (edtNewCatDesc.Text= '') then
    begin
      MessageDlg('Please enter details in Category Name and Description fields',mtError,[mbOK],0);
      Exit;
    end;

    InsertDatainProdCategoryTable;

    //Refresh data in DBgrid to display newly inserted data
    DBGridCategory.DataSource.DataSet.Active:= False;
    DBGridCategory.DataSource.DataSet.Active:= True;
    DBGridCategory.DataSource.DataSet.Refresh;
   except
      MessageDlg('Application encountered an exception while performing an operation',
      mtInformation,[mbOK],0);
   end;   
end;

procedure TfrmCategoryAddScreen.InsertDatainProdCategoryTable;
begin
    with dmInvManagerDb do
    begin
      ADOQryInsert.Close;
      ADOQryInsert.SQL.Clear;
      ADOQryInsert.SQL.Add('INSERT INTO ProductCategory (CategoryName,CategoryDescription)' +
      'VALUES ("' + edtNewCatName.Text + '","' + edtNewCatDesc.Text + '")');

      if (ADOQryInsert.ExecSQL) <> 0 then begin
        MessageDlg('Data saved successfully ',mtInformation,[mbOK],0);
        edtNewCatName.Text:= '';
        edtNewCatDesc.Text:= '';
       end;
     end;
end;

procedure TfrmCategoryAddScreen.edtCategorySearchChange(Sender: TObject);
begin
  if edtCategorySearch.Text = '' then begin
    with dmInvManagerDb do
    begin
      ADOQryProductCat.Filtered := False;
      ADOQryProductCat.Filter := '';
      ADOQryProductCat.First;
    end;
   end; 
end;

procedure TfrmCategoryAddScreen.edtCategorySearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
   btnCatSearch.Click;
end;

end.
