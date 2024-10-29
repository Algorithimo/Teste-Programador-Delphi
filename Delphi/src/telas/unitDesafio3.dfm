object frmDesafio3: TfrmDesafio3
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'frmDesafio3'
  ClientHeight = 300
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblContagemRegressiva: TLabel
    AlignWithMargins = True
    Left = 80
    Top = 20
    Width = 440
    Height = 129
    Margins.Left = 80
    Margins.Top = 20
    Margins.Right = 80
    Margins.Bottom = 20
    Align = alClient
    Alignment = taCenter
    Caption = 'Aperte o bot'#227'o para iniciar a contagem regressiva (10)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
    ExplicitWidth = 370
    ExplicitHeight = 60
  end
  object btnContagemRegrissiva: TButton
    AlignWithMargins = True
    Left = 20
    Top = 189
    Width = 560
    Height = 91
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    Caption = 'Iniciar Contagem'
    TabOrder = 0
    OnClick = btnContagemRegrissivaClick
    ExplicitTop = 177
    ExplicitWidth = 552
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 16
    Top = 16
  end
end
