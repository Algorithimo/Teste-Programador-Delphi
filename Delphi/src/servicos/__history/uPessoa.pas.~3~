unit uPessoa;

interface

uses
  System.SysUtils,
  System.Classes;

type
  TPessoa = class
    private
      FNome : String;
      FIdade : Integer;
    public
      function GetNome : String;
      procedure SetNome( const Value : String );

      function GetIdade : Integer;
      procedure SetIdade( const Value : Integer );

      function ExibirInfo : String;

      property Nome : String
        read GetNome
        write SetNome;
      property Idade : Integer
        read GetIdade
        write SetIdade;
  end;

implementation

{ TPessoa }

function TPessoa.GetNome : String;
  begin
    Result := FNome;
  end;

procedure TPessoa.SetNome( const Value : String );
  begin
    FNome := Value;
  end;

function TPessoa.GetIdade : Integer;
  begin
    Result := FIdade;
  end;

procedure TPessoa.SetIdade( const Value : Integer );
  begin
    FIdade := Value;
  end;

function TPessoa.ExibirInfo : String;
  begin
    Result := 'Nome: ' + FNome + ', Idade: ' + IntToStr( FIdade ) + ' anos';
  end;

end.
