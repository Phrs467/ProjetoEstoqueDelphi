object FormCadGrupoObj: TFormCadGrupoObj
  Left = 0
  Top = 0
  Caption = 'Cadastro de Grupo OBJ'
  ClientHeight = 565
  ClientWidth = 799
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
  object LblCadIdGrupo: TLabel
    Left = 40
    Top = 37
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object LblCadNomeGrupo: TLabel
    Left = 40
    Top = 96
    Width = 74
    Height = 13
    Caption = 'Nome do Grupo'
  end
  object EdtCadIdGrupo: TEdit
    Left = 40
    Top = 56
    Width = 57
    Height = 21
    TabOrder = 0
    OnKeyDown = EdtCadIdGrupoKeyDown
  end
  object EdtCadNomeGrupo: TEdit
    Left = 40
    Top = 115
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object BtNovoCadGrupo: TButton
    Left = 40
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = BtNovoCadGrupoClick
  end
  object BtSalvarCadGrupo: TButton
    Left = 121
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtSalvarCadGrupoClick
  end
  object BtExcluirCadGrupo: TButton
    Left = 202
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BtExcluirCadGrupoClick
  end
  object BtPesqCadGrupo: TButton
    Left = 103
    Top = 54
    Width = 34
    Height = 25
    TabOrder = 5
    OnClick = BtPesqCadGrupoClick
  end
end
