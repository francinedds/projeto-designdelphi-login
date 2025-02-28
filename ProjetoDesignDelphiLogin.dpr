program ProjetoDesignDelphiLogin;

uses
  Vcl.Forms,
  view.login in 'views\view.login.pas' {ViewLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewLogin, ViewLogin);
  Application.Run;
end.
