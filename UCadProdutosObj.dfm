object FormCadProdutosObj: TFormCadProdutosObj
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos OBJ'
  ClientHeight = 566
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MmCadProdObj
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LblCadIdProdObj: TLabel
    Left = 48
    Top = 93
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object LblCadUniProdObj: TLabel
    Left = 48
    Top = 213
    Width = 44
    Height = 13
    Caption = 'Unidades'
  end
  object LblCadNomeProdObj: TLabel
    Left = 48
    Top = 149
    Width = 83
    Height = 13
    Caption = 'Nome do produto'
  end
  object LblCadGrupProdObj: TLabel
    Left = 48
    Top = 269
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object LblCadMarcProdObj: TLabel
    Left = 48
    Top = 325
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object EdtCadProdIdObj: TEdit
    Left = 48
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyDown = EdtCadProdIdObjKeyDown
  end
  object EdtCadProdNomeObj: TEdit
    Left = 48
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdtCadProdIdUniObj: TEdit
    Left = 48
    Top = 232
    Width = 52
    Height = 21
    TabOrder = 2
    OnKeyDown = EdtCadProdIdUniObjKeyDown
  end
  object EdtCadProdNomeUniObj: TEdit
    Left = 146
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object BtPesqUniProdObj: TButton
    Left = 106
    Top = 231
    Width = 34
    Height = 24
    TabOrder = 4
    OnClick = BtPesqUniProdObjClick
  end
  object BtPesqProdObj: TButton
    Left = 175
    Top = 110
    Width = 35
    Height = 25
    TabOrder = 5
    OnClick = BtPesqProdObjClick
  end
  object BtNovoCadProdObj: TButton
    Left = 48
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 6
    OnClick = BtNovoCadProdObjClick
  end
  object BtSalvarCadProdObj: TButton
    Left = 129
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = BtSalvarCadProdObjClick
  end
  object BtExcluirCadProdObj: TButton
    Left = 210
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 8
    OnClick = BtExcluirCadProdObjClick
  end
  object EdtCadProdIdGrupObj: TEdit
    Left = 48
    Top = 288
    Width = 52
    Height = 21
    TabOrder = 9
    OnKeyDown = EdtCadProdIdGrupObjKeyDown
  end
  object EdtCadProdGrupNomeObj: TEdit
    Left = 146
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object EdtCadProdIdMarcObj: TEdit
    Left = 48
    Top = 344
    Width = 52
    Height = 21
    TabOrder = 11
    OnKeyDown = EdtCadProdIdMarcObjKeyDown
  end
  object EdtCadProdMarcNomeObj: TEdit
    Left = 146
    Top = 344
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object BtPesqGrupProdObj: TButton
    Left = 106
    Top = 286
    Width = 34
    Height = 25
    TabOrder = 13
    OnClick = BtPesqGrupProdObjClick
  end
  object BtPesqMarcProdObj: TButton
    Left = 106
    Top = 342
    Width = 34
    Height = 25
    TabOrder = 14
    OnClick = BtPesqMarcProdObjClick
  end
  object MmCadProdObj: TMainMenu
    Left = 24
    Top = 16
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
  end
end
