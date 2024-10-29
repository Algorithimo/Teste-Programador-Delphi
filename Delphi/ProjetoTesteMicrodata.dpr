program ProjetoTesteMicrodata;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  unitDesafio1 in 'src\telas\unitDesafio1.pas' {frmDesafio1},
  uArrayNumeroInteiro in 'src\servicos\uArrayNumeroInteiro.pas',
  unitDesafio2 in 'src\telas\unitDesafio2.pas' {frmDesafio2},
  uProcessadorTexto in 'src\servicos\uProcessadorTexto.pas',
  unitDesafio3 in 'src\telas\unitDesafio3.pas' {frmDesafio3},
  uPessoa in 'src\servicos\uPessoa.pas',
  unitDesafio4 in 'src\telas\unitDesafio4.pas' {frmDesafio4},
  unitDesafio5 in 'src\telas\unitDesafio5.pas' {frmDesafio5},
  unitDesafio6 in 'src\telas\unitDesafio6.pas' {frmDesafio6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
