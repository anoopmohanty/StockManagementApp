program InventoryManager;

uses
  Forms,
  LoginScreen in 'Source Files\LoginScreen.pas' {frmLoginScreen},
  MainSelectionScreen in 'Source Files\MainSelectionScreen.pas' {frmMainSelectionScreen},
  InventoryManagerDataModule in 'Source Files\InventoryManagerDataModule.pas' {dmInvManagerDb: TDataModule},
  ProductAddScreen in 'Source Files\ProductAddScreen.pas' {frmProductAddScreen},
  CategoryAddScreen in 'Source Files\CategoryAddScreen.pas' {frmCategoryAddScreen},
  StockUpdateScreen in 'Source Files\StockUpdateScreen.pas' {frmStockUpdateScreen},
  SubCategoryScreen in 'Source Files\SubCategoryScreen.pas' {frmSubCategoryAddScreen},
  StockUpdateHistory in 'Source Files\StockUpdateHistory.pas' {frmStockUpdateHistory};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLoginScreen, frmLoginScreen);
  Application.CreateForm(TfrmMainSelectionScreen, frmMainSelectionScreen);
  Application.CreateForm(TdmInvManagerDb, dmInvManagerDb);
  Application.Run;
end.
