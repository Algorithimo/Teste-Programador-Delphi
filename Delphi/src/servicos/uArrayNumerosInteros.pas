unit uArrayNumerosInteros;

interface

uses
  System.SysUtils,
  System.Classes;

type
  EArrayNumerosInterosException = class( Exception );

  IArrayNumerosInteros = interface
    [ '{FC8BFC89-AF48-48E7-BA37-89AD831C4B0F}' ]
    function ProcessarEntrada( const AEntrada : string ) : Boolean;
    function ObterSegundoMaior : Integer;
    function ObterSomaDosPares : Integer;
  end;

  TArrayNumerosInteros = class( TInterfacedObject, IArrayNumerosInteros )
    private
      FNumeros : TArray< Integer >;

      function ValidarEntrada( const ANumeros : TArray< Integer > ) : Boolean;
      function ConverterTextoParaNumeros( const AEntrada : string )
        : TArray< Integer >;
      function EhNumeroPar( const ANumero : Integer ) : Boolean;
    public
      constructor Create;

      function ProcessarEntrada( const AEntrada : string ) : Boolean;
      function ObterSegundoMaior : Integer;
      function ObterSomaDosPares : Integer;

      class function CriarProcessador : IArrayNumerosInteros;
  end;

implementation

const
  DELIMITADOR = ';';
  QUANTIDADE_MINIMA_NUMEROS = 2;
  ERRO_QUANTIDADE_MINIMA = '� necess�rio informar pelo menos %d n�meros';
  ERRO_ENTRADA_INVALIDA = 'A entrada fornecida � inv�lida';

  { TArrayNumerosInteros }

constructor TArrayNumerosInteros.Create;
  begin
    inherited Create;
    SetLength( FNumeros, 0 );
  end;

class function TArrayNumerosInteros.CriarProcessador : IArrayNumerosInteros;
  begin
    Result := TArrayNumerosInteros.Create;
  end;

function TArrayNumerosInteros.ValidarEntrada( const ANumeros
  : TArray< Integer > ) : Boolean;
  begin
    Result := Length( ANumeros ) >= QUANTIDADE_MINIMA_NUMEROS;
  end;

function TArrayNumerosInteros.ConverterTextoParaNumeros( const AEntrada
  : string ) : TArray< Integer >;
  var
    ListaTexto : TStringList;
    I : Integer;
  begin
    if AEntrada.Trim.IsEmpty
    then
      raise EArrayNumerosInterosException.Create( ERRO_ENTRADA_INVALIDA );

    ListaTexto := TStringList.Create;
    try
      ListaTexto.Delimiter := DELIMITADOR;
      ListaTexto.StrictDelimiter := True;
      ListaTexto.DelimitedText := AEntrada;

      SetLength( Result, ListaTexto.Count );

      for I := 0 to ListaTexto.Count - 1 do
        if not TryStrToInt( ListaTexto[ I ], Result[ I ] )
        then
          raise EArrayNumerosInterosException.Create( ERRO_ENTRADA_INVALIDA );

    finally
      ListaTexto.Free;
    end;
  end;

function TArrayNumerosInteros.ProcessarEntrada( const AEntrada : string )
  : Boolean;
  begin
    Result := False;
    try
      FNumeros := ConverterTextoParaNumeros( AEntrada );
      Result := ValidarEntrada( FNumeros );

      if not Result
      then
        raise EArrayNumerosInterosException.CreateFmt( ERRO_QUANTIDADE_MINIMA,
          [ QUANTIDADE_MINIMA_NUMEROS ] );
    except
      on E : EArrayNumerosInterosException do
        raise;
      on E : Exception do
        raise EArrayNumerosInterosException.Create( ERRO_ENTRADA_INVALIDA );
    end;
  end;

function TArrayNumerosInteros.EhNumeroPar( const ANumero : Integer ) : Boolean;
  begin
    Result := ANumero mod 2 = 0;
  end;

function TArrayNumerosInteros.ObterSegundoMaior : Integer;
  var
    Maior, SegundoMaior : Integer;
    NumeroAtual : Integer;
  begin
    if not ValidarEntrada( FNumeros )
    then
      raise EArrayNumerosInterosException.CreateFmt( ERRO_QUANTIDADE_MINIMA,
        [ QUANTIDADE_MINIMA_NUMEROS ] );

    Maior := FNumeros[ 0 ];
    SegundoMaior := FNumeros[ 0 ];

    for NumeroAtual in FNumeros do
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

function TArrayNumerosInteros.ObterSomaDosPares : Integer;
  var
    Numero : Integer;
  begin
    Result := 0;
    for Numero in FNumeros do
      if EhNumeroPar( Numero )
      then
        Result := Result + Numero;
  end;

end.
