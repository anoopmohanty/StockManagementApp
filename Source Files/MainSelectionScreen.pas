unit MainSelectionScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ProductAddScreen,
  CategoryAddScreen, SubCategoryScreen, StockUpdateScreen, StockUpdateHistory;

type
  TfrmMainSelectionScreen = class(TForm)
    pnlProduct: TPanel;
    lblProductHeading: TLabel;
    lblProductDesc: TLabel;
    btnProductAdd: TButton;
    pnlCategory: TPanel;
    lblCategoryHeading: TLabel;
    lblCategoryDesc: TLabel;
    btnCategoryModify: TButton;
    btnCategoryAdd: TButton;
    pnlStockLevel: TPanel;
    lblStockLvlHeading: TLabel;
    lblStockLvlDesc: TLabel;
    btnStockLvlUpdate: TButton;
    pnlStockHistory: TPanel;
    lblStockHistHeading: TLabel;
    lblStockHistDesc: TLabel;
    btnStockHistView: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCategoryModifyClick(Sender: TObject);
    procedure btnCategoryAddClick(Sender: TObject);
    procedure btnProductAddClick(Sender: TObject);
    procedure btnStockLvlUpdateClick(Sender: TObject);
    procedure btnStockHistViewClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainSelectionScreen: TfrmMainSelectionScreen;

implementation

uses LoginScreen;

{$R *.dfm}


procedure TfrmMainSelectionScreen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with frmLoginScreen do
  begin
    edtUserName.Clear;
    edtPassword.Clear;
    Show;
  end;  
end;

procedure TfrmMainSelectionScreen.btnCategoryModifyClick(Sender: TObject);
var
 CategoryAddForm: TfrmCategoryAddScreen;
begin
  CategoryAddForm:= TfrmCategoryAddScreen.Create(self);
  CategoryAddForm.ShowModal;
  CategoryAddForm.Free;
end;

procedure TfrmMainSelectionScreen.btnCategoryAddClick(Sender: TObject);
var
  SubCategoryAddForm : TfrmSubCategoryAddScreen;
begin
  SubCategoryAddForm:= TfrmSubCategoryAddScreen.Create(self);
  SubCategoryAddForm.ShowModal;
  SubCategoryAddForm.Free;
end;

procedure TfrmMainSelectionScreen.btnProductAddClick(Sender: TObject);
var
 ProductAddForm: TfrmProductAddScreen;
begin
  ProductAddForm:= TfrmProductAddScreen.Create(self);
  ProductAddForm.ShowModal;
  ProductAddForm.Free;
end;

procedure TfrmMainSelectionScreen.btnStockLvlUpdateClick(Sender: TObject);
var
  StockUpdateScreenForm:  TfrmStockUpdateScreen;
begin
  StockUpdateScreenForm:= TfrmStockUpdateScreen.Create(self);
  StockUpdateScreenForm.ShowModal;
  StockUpdateScreenForm.Free;
end;

procedure TfrmMainSelectionScreen.btnStockHistViewClick(Sender: TObject);
var
  StockUpdateHistoryForm:  TfrmStockUpdateHistory;
begin
  StockUpdateHistoryForm:= TfrmStockUpdateHistory.Create(self);
  StockUpdateHistoryForm.ShowModal;
  StockUpdateHistoryForm.Free;
end;

end.
