object FormCadFornecedorObj: TFormCadFornecedorObj
  Left = 0
  Top = 0
  Caption = 'Cadastro de Fornecedor OBJ'
  ClientHeight = 342
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LblCadIdFornObj: TLabel
    Left = 32
    Top = 141
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object LblCadNomeFornId: TLabel
    Left = 32
    Top = 208
    Width = 98
    Height = 13
    Caption = 'Nome do fornecedor'
  end
  object EdtCadIdFornObj: TEdit
    Left = 32
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyDown = EdtCadIdFornObjKeyDown
  end
  object EdtCadNomeFornObj: TEdit
    Left = 32
    Top = 227
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BtPesqCadFornObj: TButton
    Left = 159
    Top = 158
    Width = 34
    Height = 25
    TabOrder = 2
    OnClick = BtPesqCadFornObjClick
  end
  object BtNovoCadFornObj: TButton
    Left = 32
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 3
    OnClick = BtNovoCadFornObjClick
  end
  object BtSalvarCadFornObj: TButton
    Left = 113
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = BtSalvarCadFornObjClick
  end
  object BtExcluirCadFornObj: TButton
    Left = 200
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = BtExcluirCadFornObjClick
  end
  object PanelCadFornObj: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 113
    Align = alTop
    Caption = 'Cadastro de Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
end
