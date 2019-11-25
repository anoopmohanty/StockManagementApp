unit LoginScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MainSelectionScreen, InventoryManagerDataModule;

type
  TfrmLoginScreen = class(TForm)
    lblUserName: TLabel;
    lblPassword: TLabel;
    edtUserName: TEdit;
    edtPassword: TEdit;
    btnLogin: TButton;
    lblForgotPwd: TLabel;
    lblAppHeading: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure edtUserNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginScreen: TfrmLoginScreen;

implementation


{$R *.dfm}

procedure TfrmLoginScreen.btnLoginClick(Sender: TObject);
begin
 //Validate whether data has entered in both UserName and Password fields
 if (edtUserName.Text = '') or (edtPassword.Text = '') then
   MessageDlg('Please enter both Username and Password',mtError,[mbOK],0);

 if (edtUserName.Text <> '') and (edtPassword.Text <> '') then
 begin
   with dmInvManagerDb do
   begin
     ADOQryLoginDet.Close;
     ADOQryLoginDet.SQL.Clear;
     ADOQryLoginDet.SQL.Add ('SELECT * FROM LoginDet  ' +
     'WHERE (UserName ="' + edtUserName.Text +'" ' +
     'AND Password ="' + edtPassword.Text +'");');
     ADOQryLoginDet.Open;
     if ADOQryLoginDet.RecordCount > 0 then
     begin
       Self.Hide;
       frmMainSelectionScreen.Show;
     end
     else
     begin
      edtUserName.Text:='';
      edtPassword.Text:='';
      edtUserName.SetFocus;
      MessageDlg('Username or Password is incorrect',mtError,[mbOK],0);
     end;
   end;
 end
end;

procedure TfrmLoginScreen.edtUserNameKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
   btnLogin.Click;
end;

procedure TfrmLoginScreen.edtPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnLogin.Click;
end;


end.
