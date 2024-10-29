unit uProcessadorTexto;

interface

uses
  System.SysUtils,
  System.Classes,
  System.StrUtils;

type
  IProcessadorTexto = interface
    [ '{1234B521-6789-4DEF-ABCD-ABCDEF123456}' ]
    function ContarVogais( const ATexto : string ) : Integer;
    function InverterPalavras( const ATexto : string ) : string;
    function ProcessarTexto(
      const ATexto     : string;
      out NumeroVogais : Integer ) : string;
  end;

  TProcessadorTexto = class( TInterfacedObject, IProcessadorTexto )
    public
      function ContarVogais( const ATexto : string ) : Integer;
      function InverterPalavras( const ATexto : string ) : string;
      function ProcessarTexto(
        const ATexto     : string;
        out NumeroVogais : Integer ) : string;
  end;

implementation

{ TProcessadorTexto }

function TProcessadorTexto.ContarVogais( const ATexto : string ) : Integer;
  var
    I : Integer;
    Caractere : Char;
  begin
    Result := 0;
    for I := 1 to Length( ATexto ) do
    begin
      Caractere := UpCase( ATexto[ I ] );
      if Caractere in [ 'A', 'E', 'I', 'O', 'U' ]
      then
        Inc( Result );
    end;
  end;

function TProcessadorTexto.InverterPalavras( const ATexto : string ) : string;
  begin
    Result := ReverseString( ATexto );
  end;

function TProcessadorTexto.ProcessarTexto(
  const ATexto     : string;
  out NumeroVogais : Integer ) : string;
  begin
    NumeroVogais := ContarVogais( ATexto );
    Result := InverterPalavras( ATexto );
  end;

end.
