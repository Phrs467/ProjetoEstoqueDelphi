object FormCadDepartamentoObj: TFormCadDepartamentoObj
  Left = 0
  Top = 0
  Caption = 'Cadastro de Departamento OBJ'
  ClientHeight = 548
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblCadIdDepObj: TLabel
    Left = 40
    Top = 157
    Width = 14
    Height = 14
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblCadNomeDepObj: TLabel
    Left = 40
    Top = 224
    Width = 34
    Height = 14
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PanelCadDepartamentoObj: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 89
    Align = alTop
    Caption = 'Cadastro de Departamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object EdtCadIdDepObj: TEdit
    Left = 40
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyDown = EdtCadIdDepObjKeyDown
  end
  object EdtCadNomeDepObj: TEdit
    Left = 40
    Top = 243
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnBtNovoCadDepartamento: TButton
    Left = 40
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 3
    OnClick = btnBtNovoCadDepartamentoClick
  end
  object BtSalvarCadDepartamento: TButton
    Left = 136
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = BtSalvarCadDepartamentoClick
  end
  object BtExcluirCadDepartamento: TButton
    Left = 232
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = BtExcluirCadDepartamentoClick
  end
  object BtPesqDepartamento: TButton
    Left = 167
    Top = 174
    Width = 34
    Height = 25
    TabOrder = 6
    OnClick = BtPesqDepartamentoClick
  end
end
