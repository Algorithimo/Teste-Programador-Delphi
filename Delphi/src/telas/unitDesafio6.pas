unit unitDesafio6;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls;

type
  TfrmDesafio6 = class( TForm )
    btnCriarBotao : TButton;
    procedure btnCriarBotaoClick( Sender : TObject );
    procedure FormCreate( Sender : TObject );
    procedure FormDestroy( Sender : TObject );
    private
      FContadorBotoes : Integer;
      FArrayBotoes : TList;
      procedure CriarNovoBotao( PosX, PosY : Integer );
      procedure BotaoClick( Sender : TObject );
    public
  end;

var
  frmDesafio6 : TfrmDesafio6;

implementation

{$R *.DFM}

procedure TfrmDesafio6.FormCreate( Sender : TObject );
  begin
    FContadorBotoes := 0;
    FArrayBotoes := TList.Create;
    btnCriarBotao.Caption := 'Iniciar';
  end;

procedure TfrmDesafio6.FormDestroy( Sender : TObject );
  var
    i : Integer;
  begin
    if Assigned( FArrayBotoes )
    then
    begin
      for i := 0 to FArrayBotoes.Count - 1 do
        if Assigned( FArrayBotoes[ i ] )
        then
          TButton( FArrayBotoes[ i ] ).Free;
      FArrayBotoes.Free;
    end;
  end;

procedure TfrmDesafio6.CriarNovoBotao( PosX, PosY : Integer );
  var
    NovoBotao : TButton;
  begin
    if not Assigned( FArrayBotoes )
    then
      FArrayBotoes := TList.Create;

    Inc( FContadorBotoes );

    // Cria um novo botão
    NovoBotao := TButton.Create( Self );
    try
      with NovoBotao do
      begin
        Parent := Self;
        Left := PosX + 100;
        Top := PosY + 30;
        Width := 75;
        Height := 35;
        Caption := IntToStr( FContadorBotoes );
        OnClick := BotaoClick;
        if Left > Self.Width - 100
        then
          Left := 20;
        if Top > Self.Height - 100
        then
          Top := 50;
      end;
    except
      NovoBotao.Free;
    end;

    FArrayBotoes.Add( NovoBotao );
  end;

procedure TfrmDesafio6.btnCriarBotaoClick( Sender : TObject );
  begin
    if Sender = btnCriarBotao
    then
      CriarNovoBotao( 20, 50 )
    else if Sender is TButton
    then
      CriarNovoBotao( TButton( Sender ).Left, TButton( Sender ).Top );
  end;

procedure TfrmDesafio6.BotaoClick( Sender : TObject );
  begin
    if Sender is TButton
    then
    begin
      ShowMessage( 'Botão ' + TButton( Sender ).Caption +
        ' criará um novo botão!' );
      btnCriarBotaoClick( Sender );
    end;
  end;

end.
