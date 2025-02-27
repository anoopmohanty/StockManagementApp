unit StockUpdateHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InventoryManagerDataModule, Grids, DBGrids, StdCtrls;

type
  TfrmStockUpdateHistory = class(TForm)
    btnSearch: TButton;
    edtSrchProdName: TEdit;
    DBGridStockUpdHist: TDBGrid;
    procedure edtSrchProdNameClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edtSrchProdNameChange(Sender: TObject);
    procedure edtSrchProdNameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockUpdateHistory: TfrmStockUpdateHistory;

implementation

{$R *.dfm}

procedure TfrmStockUpdateHistory.edtSrchProdNameClick(Sender: TObject);
begin
  if edtSrchProdName.Text = 'Search by Product Name' then
    edtSrchProdName.Text := '';
end;

procedure TfrmStockUpdateHistory.btnSearchClick(Sender: TObject);
begin
  with dmInvManagerDb do
  begin
    ADOQryStockUpdHistory.Filter :=  'ProductName LIKE ' +
    QuotedStr ('*'+ (edtSrchProdName.Text)+'*');
    ADOQryStockUpdHistory.Filtered := True;
    ADOQryStockUpdHistory.First;
  end;
end;

procedure TfrmStockUpdateHistory.edtSrchProdNameChange(Sender: TObject);
begin
  if edtSrchProdName.Text = '' then begin
    with dmInvManagerDb do
    begin
      ADOQryStockUpdHistory.Filtered := False;
      ADOQryStockUpdHistory.Filter := '';
      ADOQryStockUpdHistory.First;
    end;
   end;
end;

procedure TfrmStockUpdateHistory.edtSrchProdNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnSearch.Click;
end;

end.
