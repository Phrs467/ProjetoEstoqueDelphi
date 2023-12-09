object FormCadMarca: TFormCadMarca
  Left = 0
  Top = 0
  Caption = 'Cadastro de Marca'
  ClientHeight = 345
  ClientWidth = 317
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
  object LblCadIdMarca: TLabel
    Left = 40
    Top = 125
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object Label2: TLabel
    Left = 40
    Top = 192
    Width = 59
    Height = 13
    Caption = 'Nome Marca'
  end
  object EdtCadIdMarca: TEdit
    Left = 40
    Top = 144
    Width = 49
    Height = 21
    TabOrder = 0
  end
  object EdtCadNomeMarca: TEdit
    Left = 40
    Top = 211
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object BtNovoCadMarca: TButton
    Left = 40
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = BtNovoCadMarcaClick
  end
  object BtSalvarCadMarca: TButton
    Left = 121
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtSalvarCadMarcaClick
  end
  object BtExcluirCadMarca: TButton
    Left = 202
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BtExcluirCadMarcaClick
  end
  object BtPesqCadMarca: TButton
    Left = 96
    Top = 144
    Width = 33
    Height = 25
    TabOrder = 5
    OnClick = BtPesqCadMarcaClick
  end
  object PanelCadMarcaObj: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 113
    Align = alTop
    Caption = 'Cadastro de Marca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    ExplicitWidth = 490
  end
end
