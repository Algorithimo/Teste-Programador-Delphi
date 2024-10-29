unit unitDesafio5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDesafio5 = class(TForm)
    pnlTop: TPanel;
    lblResultado: TLabel;
    pnlBottom: TPanel;
    edtCalcular: TEdit;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function CalculaExpressao(expressao: string; digitos: Byte): string;
  end;

var
  frmDesafio5: TfrmDesafio5;

implementation

{$R *.dfm}

function TfrmDesafio5.CalculaExpressao(expressao: string; digitos: Byte): string;
var
  z: Char;
  ipos: Integer;

  function StrToReal(chaine: string): Real;
  var
    r: Real;
    Pos: Integer;
  begin
    Val(chaine, r, Pos);
    if Pos > 0 then
      Val(Copy(chaine, 1, Pos - 1), r, Pos);
    Result := r;
  end;

  function RealToStr(inreal: Extended; digits: Byte): string;
  var
    S: string;
  begin
    Str(inreal:0:digits, S);
    Result := S;
  end;

  procedure NextChar;
  var
    s: string;
  begin
    if ipos > Length(expressao) then
    begin
      z := #9;
      Exit;
    end
    else
    begin
      s := Copy(expressao, ipos, 1);
      z := s[1];
      Inc(ipos);
    end;
    if z = ' ' then
      NextChar;
  end;

  function Expression: Real; forward;

  function Factor: Real;
  var
    ws: string;
  begin
    NextChar;
    if z in ['0'..'9'] then
    begin
      ws := '';
      repeat
        ws := ws + z;
        NextChar;
      until not (z in ['0'..'9', '.']);
      Result := StrToReal(ws);
    end
    else if z = '(' then
    begin
      Result := Expression;
      NextChar;
    end
    else if z = '+' then
      Result := +Factor
    else if z = '-' then
      Result := -Factor;
  end;

  function Term: Real;
  var
    w: Real;
  begin
    w := Factor;
    while z in ['*', '/'] do
      if z = '*' then
        w := w * Factor
      else
        w := w / Factor;
    Result := w;
  end;

  function Expression: Real;
  var
    w: Real;
  begin
    w := Term;
    while z in ['+', '-'] do
      if z = '+' then
        w := w + Term
      else
        w := w - Term;
    Result := w;
  end;

begin
  ipos := 1;
  Result := RealToStr(Expression, digitos);
end;

procedure TfrmDesafio5.FormCreate(Sender: TObject);
begin
  lblResultado.Caption := '0';
end;

procedure TfrmDesafio5.btnCalcularClick(Sender: TObject);
begin
  try
    lblResultado.Caption := CalculaExpressao(edtCalcular.Text, 2);
  except
    on E: Exception do
      ShowMessage('Erro ao calcular expressão: ' + E.Message);
  end;
end;

end.
