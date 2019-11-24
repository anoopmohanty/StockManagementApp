unit InventoryManagerSelectionScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TMainSelectionScreenForm = class(TForm)
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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainSelectionScreenForm: TMainSelectionScreenForm;

implementation

{$R *.dfm}


end.
