unit unitDesafio3;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmDesafio3 = class( TForm )
    btnContagemRegrissiva : TButton;
    lblContagemRegressiva : TLabel;
    Timer : TTimer;
    procedure FormCreate( Sender : TObject );
    procedure btnContagemRegrissivaClick( Sender : TObject );
    procedure TimerTimer( Sender : TObject );
    private
      { Private declarations }
      FContador : Integer;
    public
      { Public declarations }
  end;

var
  frmDesafio3 : TfrmDesafio3;

implementation

{$R *.dfm}

procedure TfrmDesafio3.btnContagemRegrissivaClick( Sender : TObject );
  begin
    lblContagemRegressiva.Caption := '';
    FContador := 10;
    lblContagemRegressiva.Caption := IntToStr( FContador );
    Timer.Enabled := True;
    btnContagemRegrissiva.Enabled := False;
  end;

procedure TfrmDesafio3.FormCreate( Sender : TObject );
  begin
    Timer.Enabled := False;

  end;

procedure TfrmDesafio3.TimerTimer( Sender : TObject );
  begin
    Dec( FContador );
    lblContagemRegressiva.Caption := IntToStr( FContador );

    if FContador <= 0
    then
    begin
      Timer.Enabled := False;
      ShowMessage( 'Acabou a contagem!' );
      btnContagemRegrissiva.Enabled := True;
      lblContagemRegressiva.Caption := '';
    end;
  end;

end.
