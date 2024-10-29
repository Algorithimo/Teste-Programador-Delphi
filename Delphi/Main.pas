unit Main;

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
  Vcl.ExtCtrls;

type
  TfrmMain = class( TForm )
    pnlBottom : TPanel;
    pnlTop : TPanel;
    btnDesafio1 : TButton;
    btnDesafio2 : TButton;
    btnDesafio3 : TButton;
    btnDesafio4 : TButton;
    btnDesafio5 : TButton;
    btnDesafio6 : TButton;
    procedure FormResize( Sender : TObject );
    procedure btnDesafio1Click( Sender : TObject );
    procedure btnDesafio2Click( Sender : TObject );
    procedure btnDesafio4Click( Sender : TObject );
    procedure btnDesafio3Click( Sender : TObject );
    procedure btnDesafio5Click( Sender : TObject );
    procedure btnDesafio6Click( Sender : TObject );
  end;

var
  frmMain : TfrmMain;

implementation

{$R *.dfm}

uses
  unitDesafio1,
  unitDesafio2,
  unitDesafio3,
  unitDesafio4,
  unitDesafio5,
  unitDesafio6;

procedure TfrmMain.btnDesafio1Click( Sender : TObject );
  begin
    try
      frmDesafio1 := TfrmDesafio1.Create( Self );
      frmDesafio1.ShowModal;
    finally
      FreeAndNil( frmDesafio1 );
    end;
  end;

procedure TfrmMain.btnDesafio2Click( Sender : TObject );
  begin
    try
      frmDesafio2 := TfrmDesafio2.Create( Self );
      frmDesafio2.ShowModal;
    finally
      FreeAndNil( frmDesafio2 );
    end;
  end;

procedure TfrmMain.btnDesafio3Click( Sender : TObject );
  begin
    try
      frmDesafio3 := TfrmDesafio3.Create( Self );
      frmDesafio3.ShowModal;
    finally
      FreeAndNil( frmDesafio3 );
    end;
  end;

procedure TfrmMain.btnDesafio4Click( Sender : TObject );
  begin
    try
      frmDesafio4 := TfrmDesafio4.Create( Self );
      frmDesafio4.ShowModal;
    finally
      FreeAndNil( frmDesafio4 );
    end;
  end;

procedure TfrmMain.btnDesafio5Click( Sender : TObject );
  begin
    try
      frmDesafio5 := TfrmDesafio5.Create( Self );
      frmDesafio5.ShowModal;
    finally
      FreeAndNil( frmDesafio5 );
    end;
  end;

procedure TfrmMain.btnDesafio6Click( Sender : TObject );
  begin
    try
      frmDesafio6 := TfrmDesafio6.Create( Self );
      frmDesafio6.ShowModal;
    finally
      FreeAndNil( frmDesafio6 );
    end;
  end;

procedure TfrmMain.FormResize( Sender : TObject );
  var
    ButtonWidth : Integer;
    ButtonSpacing : Integer;
  begin
    pnlTop.Height := Round( Height / 2 ) - 20;
    pnlBottom.Height := Round( Height / 2 ) - 20;
    ButtonWidth := Round( pnlTop.Width / 3 );
    ButtonSpacing := 40;
    btnDesafio1.Width := ButtonWidth - ButtonSpacing;
    btnDesafio2.Width := ButtonWidth - ButtonSpacing;;
    btnDesafio3.Width := ButtonWidth - ButtonSpacing;;
    btnDesafio4.Width := ButtonWidth - ButtonSpacing;;
    btnDesafio5.Width := ButtonWidth - ButtonSpacing;;
    btnDesafio6.Width := ButtonWidth - ButtonSpacing;;
  end;

end.
