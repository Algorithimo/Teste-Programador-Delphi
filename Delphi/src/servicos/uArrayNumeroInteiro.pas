unit uArrayNumeroInteiro;

interface

uses
  System.SysUtils,
  System.Classes;

type
  EArrayNumeroInteiroException = class( Exception );

  IArrayNumeroInteiro = interface
    [ '{FC8BFC89-AF48-48E7-BA37-89AD831C4B0F}' ]
    function ProcessarEntrada( const AEntrada : string ) : Boolean;
    function ObterSegundoMaior : Integer;
    function ObterSomaDosPares : Integer;
  end;

  TArrayNumeroInteiro = class( TInterfacedObject, IArrayNumeroInteiro )
    private
      FNumero : TArray< Integer >;
      function ValidarEntrada( const ANumeros : TArray< Integer > ) : Boolean;
      function ConverterTextoParaNumero( const AEntrada : string )
        : TArray< Integer >;
      function EhNumeroPar( const ANumero : Integer ) : Boolean;
    public
      constructor Create;
      function ProcessarEntrada( const AEntrada : string ) : Boolean;
      function ObterSegundoMaior : Integer;
      function ObterSomaDosPares : Integer;
      class function CriarProcessador : IArrayNumeroInteiro;
  end;

implementation

const
  DELIMITADOR = ';';
  QUANTIDADE_MINIMA_NUMEROS = 2;
  ERRO_QUANTIDADE_MINIMA = '� necess�rio informar pelo menos %d n�meros';
  ERRO_ENTRADA_INVALIDA = 'A entrada fornecida � inv�lida';

  { TArrayNumeroInteiro }

constructor TArrayNumeroInteiro.Create;
  begin
    inherited Create;
    SetLength( FNumero, 0 );
  end;

class function TArrayNumeroInteiro.CriarProcessador : IArrayNumeroInteiro;
  begin
    Result := TArrayNumeroInteiro.Create;
  end;

function TArrayNumeroInteiro.ValidarEntrada( const ANumeros
  : TArray< Integer > ) : Boolean;
  begin
    Result := Length( ANumeros ) >= QUANTIDADE_MINIMA_NUMEROS;
  end;

function TArrayNumeroInteiro.ConverterTextoParaNumero( const AEntrada
  : string ) : TArray< Integer >;
  var
    ListaTexto : TStringList;
    I : Integer;
  begin
    if AEntrada.Trim.IsEmpty
    then
      raise EArrayNumeroInteiroException.Create( ERRO_ENTRADA_INVALIDA );
    ListaTexto := TStringList.Create;
    try
      ListaTexto.Delimiter := DELIMITADOR;
      ListaTexto.StrictDelimiter := True;
      ListaTexto.DelimitedText := AEntrada;
      SetLength( Result, ListaTexto.Count );
      for I := 0 to ListaTexto.Count - 1 do
        if not TryStrToInt( ListaTexto[ I ], Result[ I ] )
        then
          raise EArrayNumeroInteiroException.Create( ERRO_ENTRADA_INVALIDA );
    finally
      ListaTexto.Free;
    end;
  end;

function TArrayNumeroInteiro.ProcessarEntrada( const AEntrada : string )
  : Boolean;
  begin
    Result := False;
    try
      FNumero := ConverterTextoParaNumero( AEntrada );
      Result := ValidarEntrada( FNumero );
      if not Result
      then
        raise EArrayNumeroInteiroException.CreateFmt( ERRO_QUANTIDADE_MINIMA,
          [ QUANTIDADE_MINIMA_NUMEROS ] );
    except
      on E : EArrayNumeroInteiroException do
        raise;
      on E : Exception do
        raise EArrayNumeroInteiroException.Create( ERRO_ENTRADA_INVALIDA );
    end;
  end;

function TArrayNumeroInteiro.EhNumeroPar( const ANumero : Integer ) : Boolean;
  begin
    Result := ANumero mod 2 = 0;
  end;

function TArrayNumeroInteiro.ObterSegundoMaior : Integer;
  var
    Maior, SegundoMaior : Integer;
    NumeroAtual : Integer;
  begin
    if not ValidarEntrada( FNumero )
    then
      raise EArrayNumeroInteiroException.CreateFmt( ERRO_QUANTIDADE_MINIMA,
        [ QUANTIDADE_MINIMA_NUMEROS ] );
    Maior := FNumero[ 0 ];
    SegundoMaior := FNumero[ 0 ];
    for NumeroAtual in FNumero do
    begin
      if NumeroAtual > Maior
      then
      begin
        SegundoMaior := Maior;
        Maior := NumeroAtual;
      end
      else if ( NumeroAtual > SegundoMaior ) and ( NumeroAtual < Maior )
      then
      begin
        SegundoMaior := NumeroAtual;
      end;
    end;
    Result := SegundoMaior;
  end;

function TArrayNumeroInteiro.ObterSomaDosPares : Integer;
  var
    Numero : Integer;
  begin
    Result := 0;
    for Numero in FNumero do
      if EhNumeroPar( Numero )
      then
        Result := Result + Numero;
  end;

end.
