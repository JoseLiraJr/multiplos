object frmMultiplos: TfrmMultiplos
  Left = 277
  Top = 124
  BorderStyle = bsDialog
  Caption = 'M'#250'ltiplos entre 2 N'#250'meros'
  ClientHeight = 571
  ClientWidth = 1030
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object gbMultiplos: TGroupBox
    Left = 0
    Top = 0
    Width = 449
    Height = 571
    Align = alLeft
    Caption = 'M'#250'ltiplos entre dois n'#250'meros.:'
    TabOrder = 0
    object lbPrimeiro: TLabel
      Left = 18
      Top = 29
      Width = 116
      Height = 16
      Caption = 'Primeiro Termo.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbUltimo: TLabel
      Left = 18
      Top = 60
      Width = 114
      Height = 16
      Caption = #218'ltimo Termo....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMultiplo: TLabel
      Left = 18
      Top = 92
      Width = 115
      Height = 16
      Caption = 'M'#250'ltiplo..............:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtUltimoTermo: TEdit
      Left = 136
      Top = 56
      Width = 105
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = edtPrimeiroTermoKeyPress
    end
    object edtPrimeiroTermo: TEdit
      Left = 136
      Top = 24
      Width = 105
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = edtPrimeiroTermoKeyPress
    end
    object edtMultiplo: TEdit
      Left = 136
      Top = 88
      Width = 105
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = edtPrimeiroTermoKeyPress
    end
    object btnGerarMultiplos: TButton
      Left = 254
      Top = 22
      Width = 178
      Height = 89
      Caption = '&Gerar M'#250'ltiplos'
      TabOrder = 3
      OnClick = btnGerarMultiplosClick
    end
    object mmoMultiplos: TMemo
      Left = 18
      Top = 124
      Width = 414
      Height = 429
      Ctl3D = False
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
  object gbCompararMultiplos: TGroupBox
    Left = 449
    Top = 0
    Width = 581
    Height = 571
    Align = alClient
    Caption = 'Comparar n'#250'meros m'#250'ltiplos.:'
    TabOrder = 1
    object lbPrimeiroMultiplo: TLabel
      Left = 16
      Top = 24
      Width = 190
      Height = 16
      Caption = 'Primeiro c'#225'lculo realizado.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSegundoMultiplo: TLabel
      Left = 16
      Top = 70
      Width = 194
      Height = 16
      Caption = 'Segundo c'#225'lculo realizado.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCompararMultiplos: TButton
      Left = 322
      Top = 70
      Width = 245
      Height = 40
      Caption = 'Comparar n'#250'meros m'#250'ltiplos das lista '
      TabOrder = 0
      OnClick = btnCompararMultiplosClick
    end
    object btnCarregarMultiplos: TButton
      Left = 322
      Top = 22
      Width = 245
      Height = 40
      Caption = '&Carregar n'#250'meros em uma Lista'
      TabOrder = 1
      OnClick = btnCarregarMultiplosClick
    end
    object edtPrimeiroMultiplo: TEdit
      Left = 16
      Top = 41
      Width = 300
      Height = 22
      Color = clInactiveBorder
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtSegundoMultiplo: TEdit
      Left = 16
      Top = 86
      Width = 300
      Height = 22
      Color = clInactiveBorder
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object mmoNumerosIguais: TMemo
      Left = 16
      Top = 125
      Width = 550
      Height = 428
      Ctl3D = False
      Lines.Strings = (
        '')
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
end
