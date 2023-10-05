object FormMoviEntrada: TFormMoviEntrada
  Left = 0
  Top = 0
  Caption = 'Movimenta'#231#245'es de Entrada'
  ClientHeight = 649
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LblIdEntraMovi: TLabel
    Left = 53
    Top = 75
    Width = 78
    Height = 13
    Caption = 'ID de entrada'
  end
  object LblDataEntra: TLabel
    Left = 56
    Top = 219
    Width = 92
    Height = 13
    Caption = 'Data da entrada'
  end
  object LblDataEmissao: TLabel
    Left = 189
    Top = 218
    Width = 77
    Height = 13
    Caption = 'Data emiss'#227'o'
  end
  object LblIdFornMovim: TLabel
    Left = 56
    Top = 172
    Width = 79
    Height = 13
    Caption = 'Id Fornecedor'
  end
  object LblNumSerie: TLabel
    Left = 56
    Top = 121
    Width = 62
    Height = 13
    Caption = 'N'#176' de S'#233'rie'
  end
  object LblNumNota: TLabel
    Left = 170
    Top = 121
    Width = 59
    Height = 13
    Caption = 'N'#186' da Nota'
  end
  object LblNomeForn: TLabel
    Left = 189
    Top = 172
    Width = 99
    Height = 13
    Caption = 'Nome Fornecedor'
  end
  object EdtIdEntraMovi: TEdit
    Left = 53
    Top = 94
    Width = 65
    Height = 21
    TabOrder = 0
    OnKeyDown = EdtIdEntraMoviKeyDown
  end
  object EdtNumSerie: TEdit
    Left = 56
    Top = 140
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object EdtNumNota: TEdit
    Left = 170
    Top = 140
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object EdtIdFornMovi: TEdit
    Left = 56
    Top = 191
    Width = 65
    Height = 21
    TabOrder = 3
    OnKeyDown = EdtIdFornMoviKeyDown
  end
  object PanelValoresMoviEntrada: TPanel
    Left = 472
    Top = 63
    Width = 388
    Height = 218
    TabOrder = 7
    object LblValDesconto: TLabel
      Left = 16
      Top = 24
      Width = 104
      Height = 13
      Caption = 'Valor de desconto:'
    end
    object LblValFrete: TLabel
      Left = 16
      Top = 70
      Width = 63
      Height = 13
      Caption = 'Valor frete:'
    end
    object LblTotalProd: TLabel
      Left = 16
      Top = 116
      Width = 103
      Height = 13
      Caption = 'Total de produtos:'
    end
    object LblValEntrada: TLabel
      Left = 16
      Top = 162
      Width = 80
      Height = 13
      Caption = 'Valor entrada:'
    end
    object EdtValDesconto: TEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EdtValFrete: TEdit
      Left = 16
      Top = 89
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object EdtValEntrada: TEdit
      Left = 16
      Top = 181
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object EdtTotalProd: TEdit
      Left = 16
      Top = 135
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 57
    Align = alTop
    Caption = 'Movimenta'#231#245'es de Entrada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object BtNovoMovi: TButton
    Left = 28
    Top = 616
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 9
    OnClick = BtNovoMoviClick
  end
  object BtSalvarMovi: TButton
    Left = 125
    Top = 616
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 10
    OnClick = BtSalvarMoviClick
  end
  object BtExcluirMovi: TButton
    Left = 232
    Top = 616
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 11
    OnClick = BtExcluirMoviClick
  end
  object BtPesqMoviEntrada: TButton
    Left = 124
    Top = 94
    Width = 27
    Height = 21
    TabOrder = 12
    OnClick = BtPesqMoviEntradaClick
  end
  object MaskEdtDataEntra: TMaskEdit
    Left = 56
    Top = 238
    Width = 118
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
  end
  object MaskEdtDataEmissao: TMaskEdit
    Left = 189
    Top = 238
    Width = 118
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 6
    Text = '  /  /    '
  end
  object EdtNomeForn: TEdit
    Left = 189
    Top = 191
    Width = 174
    Height = 21
    TabOrder = 4
  end
  object BtPesqIdForn: TButton
    Left = 127
    Top = 189
    Width = 29
    Height = 23
    TabOrder = 13
    OnClick = BtPesqIdFornClick
  end
  object DBGridItensMoviEntrada: TDBGrid
    Left = 8
    Top = 309
    Width = 852
    Height = 301
    DataSource = DmItensMoviEntrada.dsItensMoviEntrada
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Ime_id'
        Title.Caption = 'ID Itens '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prod_id'
        Title.Caption = 'ID Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Uni_id'
        Title.Caption = 'ID Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ime_Vlr_Unitario'
        Title.Caption = 'Valor Unit'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ime_Vlr_Tot_Bruto'
        Title.Caption = 'Valor Bruto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ime_Vlr_Tot_Frete'
        Title.Caption = 'Total Frete'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ime_Vlr_Desconto'
        Title.Caption = 'Valor Desconto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'moe_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ime_Vlr_Tot_Liquido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prod_Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Uni_Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Forn_Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_Nota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ime_Quantidade'
        Visible = True
      end>
  end
  object BtPesqCadItensMoviEntra: TButton
    Left = 56
    Top = 274
    Width = 137
    Height = 23
    Caption = 'Itens Movimenta'#231#227'o'
    TabOrder = 15
    OnClick = BtPesqCadItensMoviEntraClick
  end
end
