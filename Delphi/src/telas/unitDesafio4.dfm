object frmDesafio4: TfrmDesafio4
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Desafio 4'
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
  OnDestroy = FormDestroy
  DesignSize = (
    600
    250)
  TextHeight = 15
  object Label1: TLabel
    Left = 20
    Top = 67
    Width = 104
    Height = 17
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Informe seu Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 112
  end
  object lblIdade: TLabel
    Left = 327
    Top = 67
    Width = 101
    Height = 17
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Informe sua Idade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 109
  end
  object edtNome: TEdit
    Left = 20
    Top = 90
    Width = 245
    Height = 37
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 237
    ExplicitHeight = 25
  end
  object edtIdade: TEdit
    Left = 327
    Top = 90
    Width = 245
    Height = 37
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 237
    ExplicitHeight = 25
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 41
    Align = alTop
    Caption = 'Informe seu nome e idade e em seguida clique no bot'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 592
  end
  object btnExibir: TButton
    AlignWithMargins = True
    Left = 20
    Top = 173
    Width = 560
    Height = 57
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    Caption = 'Exibir Info'
    TabOrder = 3
    OnClick = btnExibirClick
    ExplicitTop = 161
    ExplicitWidth = 552
  end
end
