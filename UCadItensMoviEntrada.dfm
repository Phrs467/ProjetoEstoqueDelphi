object FormItensMoviEntrada: TFormItensMoviEntrada
  Left = 0
  Top = 0
  Caption = 'Itens Movimenta'#231#227'o de Entrada'
  ClientHeight = 382
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object LblIdItensMoviEntra: TLabel
    Left = 40
    Top = 101
    Width = 14
    Height = 14
    Caption = 'ID'
  end
  object LblMoviEntrada: TLabel
    Left = 40
    Top = 157
    Width = 141
    Height = 14
    Caption = 'Movimenta'#231#227'o Entrada'
  end
  object LblProdItensMoviEntrada: TLabel
    Left = 40
    Top = 213
    Width = 57
    Height = 14
    Caption = 'Produtos'
  end
  object LblUniItensMoviEntra: TLabel
    Left = 40
    Top = 269
    Width = 55
    Height = 14
    Caption = 'Unidades'
  end
  object LblQtdItens: TLabel
    Left = 304
    Top = 100
    Width = 130
    Height = 14
    Caption = 'Quantidade de Itens:'
  end
  object LblVlrUnitario: TLabel
    Left = 304
    Top = 156
    Width = 87
    Height = 14
    Caption = 'Valor Unit'#225'rio:'
  end
  object LblVlrDesconto: TLabel
    Left = 304
    Top = 210
    Width = 97
    Height = 14
    Caption = 'Valor Desconto:'
  end
  object LblVlrFrete: TLabel
    Left = 304
    Top = 268
    Width = 70
    Height = 14
    Caption = 'Valor Frete:'
  end
  object LblVlrBruto: TLabel
    Left = 456
    Top = 100
    Width = 74
    Height = 14
    Caption = 'Valor Bruto:'
  end
  object LblVlrLiquido: TLabel
    Left = 456
    Top = 156
    Width = 84
    Height = 14
    Caption = 'Valor L'#237'quido:'
  end
  object EdtIdItensMoviEntra: TEdit
    Left = 40
    Top = 120
    Width = 49
    Height = 22
    TabOrder = 0
  end
  object EdtIdMoviEntrada: TEdit
    Left = 40
    Top = 176
    Width = 49
    Height = 22
    TabOrder = 1
  end
  object EdtIdProdItensMoviEntra: TEdit
    Left = 40
    Top = 232
    Width = 49
    Height = 22
    TabOrder = 2
  end
  object EdtIdUniItensMoviEntra: TEdit
    Left = 40
    Top = 289
    Width = 49
    Height = 22
    TabOrder = 3
  end
  object BtIdItensMoviEntra: TButton
    Left = 95
    Top = 118
    Width = 34
    Height = 25
    TabOrder = 4
    OnClick = BtIdItensMoviEntraClick
  end
  object BtIdMoeItensMoviEntra: TButton
    Left = 95
    Top = 174
    Width = 34
    Height = 25
    TabOrder = 5
    OnClick = BtIdMoeItensMoviEntraClick
  end
  object BtIdUniItensMoviEntra: TButton
    Left = 95
    Top = 286
    Width = 34
    Height = 25
    TabOrder = 6
    OnClick = BtIdUniItensMoviEntraClick
  end
  object BtIdProdItensMoviEntra: TButton
    Left = 96
    Top = 231
    Width = 34
    Height = 25
    TabOrder = 7
    OnClick = BtIdProdItensMoviEntraClick
  end
  object EdtNotaMoviEntrada: TEdit
    Left = 135
    Top = 176
    Width = 121
    Height = 22
    TabOrder = 8
  end
  object EdtNomeProdItensMoviEntra: TEdit
    Left = 136
    Top = 232
    Width = 121
    Height = 22
    TabOrder = 9
  end
  object EdtDescUniItensMoviEntra: TEdit
    Left = 135
    Top = 287
    Width = 121
    Height = 22
    TabOrder = 10
  end
  object EdtQtdItensMoviEntra: TEdit
    Left = 304
    Top = 119
    Width = 121
    Height = 22
    TabOrder = 11
  end
  object EdtVlrUnitarioItensMoviEntra: TEdit
    Left = 304
    Top = 175
    Width = 121
    Height = 22
    TabOrder = 12
  end
  object EdtVlrDescontoItensMoviEntra: TEdit
    Left = 304
    Top = 229
    Width = 121
    Height = 22
    TabOrder = 13
  end
  object EdtVlrFreteItensMoviEntra: TEdit
    Left = 304
    Top = 287
    Width = 121
    Height = 22
    TabOrder = 14
  end
  object EdtVlrBrutoItensMoviEntra: TEdit
    Left = 456
    Top = 119
    Width = 121
    Height = 22
    TabOrder = 15
    OnExit = EdtVlrBrutoItensMoviEntraExit
  end
  object EdtVlrLiquiItensMoviEntra: TEdit
    Left = 456
    Top = 175
    Width = 121
    Height = 22
    TabOrder = 16
  end
  object BtNovoItemMoviEntra: TButton
    Left = 40
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 17
    OnClick = BtNovoItemMoviEntraClick
  end
  object BtSalvarItemMoviEntra: TButton
    Left = 152
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 18
    OnClick = BtSalvarItemMoviEntraClick
  end
  object BtExcluirItemMoviEntra: TButton
    Left = 264
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 19
    OnClick = BtExcluirItemMoviEntraClick
  end
  object PanelItensMoviEntrada: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 79
    Align = alTop
    Caption = 'Itens de movimenta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
  end
end
