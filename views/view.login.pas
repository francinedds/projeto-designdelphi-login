unit view.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.WinXPanels, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TViewLogin = class(TForm)
    pnlBackground: TPanel;
    CardPanel_DadosLogin: TCardPanel;
    CardLogin: TCard;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtNomeUsuario: TEdit;
    edtSenha: TEdit;
    pnlBtnLogin: TPanel;
    btnEntrar: TSpeedButton;
    pnlBtnCancelar: TPanel;
    btnCadastrar: TSpeedButton;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    imgUserLogin: TImage;
    lblDev: TLabel;
    lblAno: TLabel;
    CardSignUp: TCard;
    imgUserCadastro: TImage;
    pnlBtnVoltar: TPanel;
    btnVoltar: TSpeedButton;
    lblNomeCompleto: TLabel;
    edtNomeCompleto: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblNovoUsuario: TLabel;
    edtNovoUsuario: TEdit;
    lblNovaSenha: TLabel;
    edtNovaSenha: TEdit;
    lblConfirmeSenha: TLabel;
    edtConfirmarSenha: TEdit;
    pnlBtnEnviar: TPanel;
    btnEnviar: TSpeedButton;
    lblHelp: TLabel;
    lblBoasVindas: TLabel;
    lblTituloCadastrar: TLabel;
    iconeInstagram: TImage;
    iconeFacebook: TImage;
    iconeTwitter: TImage;
    procedure btnFecharClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

procedure TViewLogin.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewLogin.btnVoltarClick(Sender: TObject);
begin
    CardSignUp.Visible := False;
    CardLogin.Visible := True;
end;

procedure TViewLogin.FormShow(Sender: TObject);
begin
  CardLogin.SetFocus;
  edtNomeUsuario.SetFocus;
end;

procedure TViewLogin.btnEnviarClick(Sender: TObject);
begin
  // Verifica se os campos de usu�rio e senha no cadastro est�o vazios
  if (edtNomeCompleto.Text   = '') or
     (edtEmail.Text          = '') or
     (edtNovoUsuario.Text    = '') or
     (edtNovaSenha.Text      = '') or
     (edtConfirmarSenha.Text = '') then
  begin
    ShowMessage('Por favor, preencha todos os campos.');
  end
  else
  begin
    ShowMessage('Login realizado com sucesso!');
  end;
end;

procedure TViewLogin.btnCadastrarClick(Sender: TObject);
begin
    CardLogin.Visible := False;  // Ocultar o primeiro painel
    CardSignUp.Visible := True;   // Mostrar o segundo painel
end;

procedure TViewLogin.btnEntrarClick(Sender: TObject);
const // login
  UsuarioValido = 'admin';
  SenhaValida = '1234';
begin
  if (edtNomeUsuario.Text = '') or (edtSenha.Text = '') then
  begin
    ShowMessage('Por favor, preencha todos os campos.');
    Exit;
  end;
  if (edtNomeUsuario.Text <> UsuarioValido) or (edtSenha.Text <> SenhaValida) then
  begin
    ShowMessage('Usu�rio ou senha inv�lidos!');
    Exit;
  end;
  ShowMessage('Login realizado com sucesso!');
  // ViewPrincipal.ShowModal; exemplo para pr�xima tela
end;

end.
