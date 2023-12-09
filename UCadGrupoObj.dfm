object FormCadGrupoObj: TFormCadGrupoObj
  Left = 0
  Top = 0
  Caption = 'Cadastro de Grupo OBJ'
  ClientHeight = 330
  ClientWidth = 328
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
    Left = 32
    Top = 125
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object LblCadNomeGrupo: TLabel
    Left = 32
    Top = 184
    Width = 74
    Height = 13
    Caption = 'Nome do Grupo'
  end
  object EdtCadIdGrupo: TEdit
    Left = 32
    Top = 144
    Width = 57
    Height = 21
    TabOrder = 0
    OnKeyDown = EdtCadIdGrupoKeyDown
  end
  object EdtCadNomeGrupo: TEdit
    Left = 32
    Top = 203
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object BtNovoCadGrupo: TButton
    Left = 32
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = BtNovoCadGrupoClick
  end
  object BtSalvarCadGrupo: TButton
    Left = 113
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtSalvarCadGrupoClick
  end
  object BtExcluirCadGrupo: TButton
    Left = 194
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BtExcluirCadGrupoClick
  end
  object BtPesqCadGrupo: TButton
    Left = 95
    Top = 142
    Width = 34
    Height = 25
    TabOrder = 5
    OnClick = BtPesqCadGrupoClick
  end
  object PanelCadGrupoObj: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 113
    Align = alTop
    Caption = 'Cadastro de Grupo'
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
