object FormItensMoviEntrada: TFormItensMoviEntrada
  Left = 0
  Top = 0
  Caption = 'Itens Movimenta'#231#227'o de Entrada'
  ClientHeight = 614
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
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
    Left = 360
    Top = 103
    Width = 130
    Height = 14
    Caption = 'Quantidade de Itens:'
  end
  object LblVlrUnitario: TLabel
    Left = 360
    Top = 159
    Width = 87
    Height = 14
    Caption = 'Valor Unit'#225'rio:'
  end
  object LblVlrDesconto: TLabel
    Left = 360
    Top = 213
    Width = 97
    Height = 14
    Caption = 'Valor Desconto:'
  end
  object LblVlrFrete: TLabel
    Left = 360
    Top = 271
    Width = 70
    Height = 14
    Caption = 'Valor Frete:'
  end
  object LblVlrBruto: TLabel
    Left = 624
    Top = 101
    Width = 74
    Height = 14
    Caption = 'Valor Bruto:'
  end
  object LblVlrLiquido: TLabel
    Left = 624
    Top = 157
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
    Top = 288
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
  end
  object BtIdMoeItensMoviEntra: TButton
    Left = 95
    Top = 174
    Width = 34
    Height = 25
    TabOrder = 5
  end
  object BtIdUniItensMoviEntra: TButton
    Left = 95
    Top = 230
    Width = 34
    Height = 25
    TabOrder = 6
  end
  object BtIdProdItensMoviEntra: TButton
    Left = 95
    Top = 286
    Width = 34
    Height = 25
    TabOrder = 7
  end
  object EdtNomeMoviEntrada: TEdit
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
  object EdtNomeUniItensMoviEntra: TEdit
    Left = 135
    Top = 287
    Width = 121
    Height = 22
    TabOrder = 10
  end
  object EdtQtdItensMoviEntra: TEdit
    Left = 360
    Top = 122
    Width = 121
    Height = 22
    TabOrder = 11
  end
  object EdtVlrUnitarioItensMoviEntra: TEdit
    Left = 360
    Top = 178
    Width = 121
    Height = 22
    TabOrder = 12
  end
  object EdtVlrDescontoItensMoviEntra: TEdit
    Left = 360
    Top = 232
    Width = 121
    Height = 22
    TabOrder = 13
  end
  object EdtVlrFreteItensMoviEntra: TEdit
    Left = 360
    Top = 290
    Width = 121
    Height = 22
    TabOrder = 14
  end
  object EdtVlrBrutoItensMoviEntra: TEdit
    Left = 624
    Top = 120
    Width = 121
    Height = 22
    TabOrder = 15
  end
  object EdtVlrLiquiItensMoviEntra: TEdit
    Left = 624
    Top = 176
    Width = 121
    Height = 22
    TabOrder = 16
  end
  object BtNovoItemMoviEntra: TButton
    Left = 40
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 17
  end
  object BtSalvarItemMoviEntra: TButton
    Left = 152
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 18
  end
  object BtExcluirItemMoviEntra: TButton
    Left = 264
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 19
  end
  object PanelItensMoviEntrada: TPanel
    Left = 0
    Top = 0
    Width = 875
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
