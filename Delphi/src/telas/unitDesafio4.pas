unit unitDesafio4;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  uPessoa;

type
  TfrmDesafio4 = class( TForm )
    edtNome : TEdit;
    edtIdade : TEdit;
    Label1 : TLabel;
    lblIdade : TLabel;
    pnlTop : TPanel;
    btnExibir : TButton;
    procedure FormDestroy( Sender : TObject );
    procedure FormCreate( Sender : TObject );
    procedure btnExibirClick( Sender : TObject );
    private
      FPessoa : TPessoa;
  end;

var
  frmDesafio4 : TfrmDesafio4;

implementation

{$R *.dfm}

procedure TfrmDesafio4.btnExibirClick( Sender : TObject );
  begin
    FPessoa.Nome := edtNome.Text;
    FPessoa.Idade := StrToIntDef( edtIdade.Text, 0 );
    ShowMessage( FPessoa.ExibirInfo );
  end;

procedure TfrmDesafio4.FormCreate( Sender : TObject );
  begin
    FPessoa := TPessoa.Create;
  end;

procedure TfrmDesafio4.FormDestroy( Sender : TObject );
  begin
    FPessoa.Free;
  end;

end.
