object frmDesafio5: TfrmDesafio5
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Desafio 5'
  ClientHeight = 277
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object lblResultado: TLabel
    AlignWithMargins = True
    Left = 80
    Top = 61
    Width = 444
    Height = 129
    Margins.Left = 80
    Margins.Top = 20
    Margins.Right = 80
    Margins.Bottom = 20
    Align = alClient
    Alignment = taCenter
    Caption = 'Resultado da express'#227'o: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
    ExplicitWidth = 229
    ExplicitHeight = 30
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 41
    Align = alTop
    Caption = 
      'Escreva uma fun'#231#227'o simples do 1'#176' Grau no edit, exemplo: "10 + (2' +
      ' * 3)"'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 596
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 210
    Width = 604
    Height = 67
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 198
    ExplicitWidth = 596
    object edtCalcular: TEdit
      AlignWithMargins = True
      Left = 21
      Top = 21
      Width = 248
      Height = 25
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 23
    end
    object btnCalcular: TButton
      AlignWithMargins = True
      Left = 417
      Top = 17
      Width = 170
      Height = 33
      Margins.Left = 16
      Margins.Top = 16
      Margins.Right = 16
      Margins.Bottom = 16
      Align = alRight
      Caption = 'Calcular'
      TabOrder = 1
      OnClick = btnCalcularClick
      ExplicitLeft = 409
    end
  end
end
