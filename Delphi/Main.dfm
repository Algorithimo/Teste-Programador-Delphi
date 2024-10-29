object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 347
  ClientWidth = 928
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnResize = FormResize
  TextHeight = 15
  object pnlBottom: TPanel
    Left = 0
    Top = 174
    Width = 928
    Height = 173
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 173
    ExplicitWidth = 924
    object btnDesafio4: TButton
      AlignWithMargins = True
      Left = 20
      Top = 10
      Width = 240
      Height = 143
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alLeft
      Caption = 'Desafio 4'
      TabOrder = 0
      OnClick = btnDesafio4Click
    end
    object btnDesafio5: TButton
      AlignWithMargins = True
      Left = 300
      Top = 10
      Width = 305
      Height = 143
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alLeft
      Caption = 'Desafio 5'
      TabOrder = 1
      OnClick = btnDesafio5Click
    end
    object btnDesafio6: TButton
      AlignWithMargins = True
      Left = 645
      Top = 10
      Width = 263
      Height = 143
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alLeft
      Caption = 'Desafio 6'
      TabOrder = 2
      OnClick = btnDesafio6Click
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 928
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 924
    object btnDesafio1: TButton
      AlignWithMargins = True
      Left = 20
      Top = 20
      Width = 240
      Height = 139
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Desafio 1'
      TabOrder = 0
      OnClick = btnDesafio1Click
    end
    object btnDesafio2: TButton
      AlignWithMargins = True
      Left = 300
      Top = 20
      Width = 305
      Height = 139
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Desafio 2'
      TabOrder = 1
      OnClick = btnDesafio2Click
    end
    object btnDesafio3: TButton
      AlignWithMargins = True
      Left = 645
      Top = 20
      Width = 263
      Height = 139
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Desafio 3'
      TabOrder = 2
      OnClick = btnDesafio3Click
    end
  end
end
