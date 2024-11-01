unit unitDesafio2;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  uProcessadorTexto,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmDesafio2 = class( TForm )
    lblInvertido : TLabel;
    lblVogal : TLabel;
    pnlBottom : TPanel;
    edtProcessar : TEdit;
    btnProcessar : TButton;
    pnlTop : TPanel;
    procedure FormCreate( Sender : TObject );
    procedure btnProcessarClick( Sender : TObject );
    procedure FormResize( Sender : TObject );
    private
      FProcessador : IProcessadorTexto;
  end;

var
  frmDesafio2 : TfrmDesafio2;

implementation

{$R *.dfm}

procedure TfrmDesafio2.btnProcessarClick( Sender : TObject );
  var
    TextoInvertido : string;
    NumeroVogais : Integer;
  begin
    TextoInvertido := FProcessador.ProcessarTexto( edtProcessar.Text,
      NumeroVogais );
    lblInvertido.Caption := 'Texto invertido: ' + TextoInvertido;
    lblVogal.Caption := 'Quantidade de vogais: ' + IntToStr( NumeroVogais );
    FormResize( Self );
  end;

procedure TfrmDesafio2.FormCreate( Sender : TObject );
  begin
    FProcessador := TProcessadorTexto.Create;
  end;

procedure TfrmDesafio2.FormResize( Sender : TObject );
  begin
    lblInvertido.Width := Round( Width / 2 ) - 50;
    lblVogal.Width := Round( Width / 2 ) - 50;
  end;

end.
