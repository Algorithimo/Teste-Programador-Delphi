unit unitDesafio1;

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
  uArrayNumeroInteiro,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmDesafio1 = class( TForm )
    lblSomaPares : TLabel;
    lblSegundoMaior : TLabel;
    pnlTop : TPanel;
    pnlBottom : TPanel;
    edtNumeros : TEdit;
    btnProcessar : TButton;
    procedure FormCreate( Sender : TObject );
    procedure btnProcessarClick( Sender : TObject );
    procedure FormResize( Sender : TObject );
    private
      FProcessador : IArrayNumeroInteiro;
      procedure InicializarProcessador;
      procedure ProcessarNumeros;
      procedure ExibirResultados;
      procedure TratarErro( const AMensagem : string );
  end;

var
  frmDesafio1 : TfrmDesafio1;

implementation

{$R *.dfm}

procedure TfrmDesafio1.btnProcessarClick( Sender : TObject );
  begin
    try
      ProcessarNumeros;
    except
      on E : EArrayNumeroInteiroException do
        TratarErro( E.Message );
    end;
  end;

procedure TfrmDesafio1.FormCreate( Sender : TObject );
  begin
    InicializarProcessador;
  end;

procedure TfrmDesafio1.FormResize( Sender : TObject );
  begin
    lblSegundoMaior.Width := Round( Width / 2 ) - 50;
    lblSomaPares.Width := Round( Width / 2 ) - 50;
  end;

procedure TfrmDesafio1.InicializarProcessador;
  begin
    FProcessador := TArrayNumeroInteiro.CriarProcessador;
  end;

procedure TfrmDesafio1.ProcessarNumeros;
  begin
    if FProcessador.ProcessarEntrada( edtNumeros.Text )
    then
      ExibirResultados;
  end;

procedure TfrmDesafio1.ExibirResultados;
  begin
    lblSegundoMaior.Caption := 'Segundo maior n�mero: ' +
      FProcessador.ObterSegundoMaior.ToString;
    lblSomaPares.Caption := 'Soma dos n�meros pares: ' +
      FProcessador.ObterSomaDosPares.ToString;
    FormResize( Self );
  end;

procedure TfrmDesafio1.TratarErro( const AMensagem : string );
  begin
    ShowMessage( AMensagem );
  end;

end.
