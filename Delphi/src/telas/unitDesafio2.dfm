object frmDesafio2: TfrmDesafio2
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Desafio 2'
  ClientHeight = 250
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object lblInvertido: TLabel
    Left = 0
    Top = 41
    Width = 81
    Height = 142
    Align = alLeft
    Alignment = taCenter
    Caption = 'Texto Invertido '
    Layout = tlCenter
    ExplicitHeight = 15
  end
  object lblVogal: TLabel
    Left = 516
    Top = 41
    Width = 84
    Height = 142
    Align = alRight
    Alignment = taCenter
    Caption = 'Somente Vogais'
    Layout = tlCenter
    ExplicitLeft = 524
    ExplicitHeight = 15
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 183
    Width = 600
    Height = 67
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 171
    ExplicitWidth = 592
    object edtProcessar: TEdit
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
    object btnProcessar: TButton
      AlignWithMargins = True
      Left = 413
      Top = 17
      Width = 170
      Height = 33
      Margins.Left = 16
      Margins.Top = 16
      Margins.Right = 16
      Margins.Bottom = 16
      Align = alRight
      Caption = 'Processar'
      TabOrder = 1
      OnClick = btnProcessarClick
      ExplicitLeft = 405
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 41
    Align = alTop
    Caption = 'Escreva uma palavra/ frase'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 592
  end
end
