object FormCadMarca: TFormCadMarca
  Left = 0
  Top = 0
  Caption = 'Cadastro de Marca'
  ClientHeight = 499
  ClientWidth = 717
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
    Left = 48
    Top = 61
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object Label2: TLabel
    Left = 48
    Top = 128
    Width = 59
    Height = 13
    Caption = 'Nome Marca'
  end
  object EdtCadIdMarca: TEdit
    Left = 48
    Top = 80
    Width = 49
    Height = 21
    TabOrder = 0
  end
  object EdtCadNomeMarca: TEdit
    Left = 48
    Top = 147
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object BtNovoCadMarca: TButton
    Left = 48
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = BtNovoCadMarcaClick
  end
  object BtSalvarCadMarca: TButton
    Left = 129
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtSalvarCadMarcaClick
  end
  object BtExcluirCadMarca: TButton
    Left = 210
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BtExcluirCadMarcaClick
  end
  object BtPesqCadMarca: TButton
    Left = 104
    Top = 80
    Width = 33
    Height = 25
    TabOrder = 5
    OnClick = BtPesqCadMarcaClick
  end
end
