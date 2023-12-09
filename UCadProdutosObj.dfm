object FormCadProdutosObj: TFormCadProdutosObj
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos OBJ'
  ClientHeight = 484
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LblCadIdProdObj: TLabel
    Left = 24
    Top = 117
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object LblCadUniProdObj: TLabel
    Left = 24
    Top = 237
    Width = 44
    Height = 13
    Caption = 'Unidades'
  end
  object LblCadNomeProdObj: TLabel
    Left = 24
    Top = 173
    Width = 83
    Height = 13
    Caption = 'Nome do produto'
  end
  object LblCadGrupProdObj: TLabel
    Left = 24
    Top = 293
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object LblCadMarcProdObj: TLabel
    Left = 24
    Top = 349
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object EdtCadProdIdObj: TEdit
    Left = 24
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyDown = EdtCadProdIdObjKeyDown
  end
  object EdtCadProdNomeObj: TEdit
    Left = 24
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdtCadProdIdUniObj: TEdit
    Left = 24
    Top = 256
    Width = 52
    Height = 21
    TabOrder = 2
    OnKeyDown = EdtCadProdIdUniObjKeyDown
  end
  object EdtCadProdNomeUniObj: TEdit
    Left = 122
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object BtPesqUniProdObj: TButton
    Left = 82
    Top = 255
    Width = 34
    Height = 24
    TabOrder = 4
    OnClick = BtPesqUniProdObjClick
  end
  object BtPesqProdObj: TButton
    Left = 151
    Top = 134
    Width = 35
    Height = 25
    TabOrder = 5
    OnClick = BtPesqProdObjClick
  end
  object BtNovoCadProdObj: TButton
    Left = 24
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 6
    OnClick = BtNovoCadProdObjClick
  end
  object BtSalvarCadProdObj: TButton
    Left = 105
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = BtSalvarCadProdObjClick
  end
  object BtExcluirCadProdObj: TButton
    Left = 186
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 8
    OnClick = BtExcluirCadProdObjClick
  end
  object EdtCadProdIdGrupObj: TEdit
    Left = 24
    Top = 312
    Width = 52
    Height = 21
    TabOrder = 9
    OnKeyDown = EdtCadProdIdGrupObjKeyDown
  end
  object EdtCadProdGrupNomeObj: TEdit
    Left = 122
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object EdtCadProdIdMarcObj: TEdit
    Left = 24
    Top = 368
    Width = 52
    Height = 21
    TabOrder = 11
    OnKeyDown = EdtCadProdIdMarcObjKeyDown
  end
  object EdtCadProdMarcNomeObj: TEdit
    Left = 122
    Top = 368
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object BtPesqGrupProdObj: TButton
    Left = 82
    Top = 310
    Width = 34
    Height = 25
    TabOrder = 13
    OnClick = BtPesqGrupProdObjClick
  end
  object BtPesqMarcProdObj: TButton
    Left = 82
    Top = 366
    Width = 34
    Height = 25
    TabOrder = 14
    OnClick = BtPesqMarcProdObjClick
  end
  object PanelCadProdObj: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 113
    Align = alTop
    Caption = 'Cadastro de Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    ExplicitWidth = 490
  end
end
