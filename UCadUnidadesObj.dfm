object FormCadUnidadesObj: TFormCadUnidadesObj
  Left = 0
  Top = 0
  Caption = 'Cadastro de Unidades OBJ'
  ClientHeight = 357
  ClientWidth = 323
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
  object LblCadIdUniObj: TLabel
    Left = 24
    Top = 114
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object LblCadDescUniObj: TLabel
    Left = 24
    Top = 160
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object EdtCadIdUniObj: TEdit
    Left = 24
    Top = 133
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyDown = EdtCadIdUniObjKeyDown
  end
  object MemoCadDescUniObj: TMemo
    Left = 24
    Top = 179
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object BtNovoCadUniObj: TButton
    Left = 24
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = BtNovoCadUniObjClick
  end
  object BtSalvarCadUniObj: TButton
    Left = 112
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtSalvarCadUniObjClick
  end
  object BtExcluirCadUniObj: TButton
    Left = 200
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BtExcluirCadUniObjClick
  end
  object BtPesqIdUniObj: TButton
    Left = 151
    Top = 121
    Width = 36
    Height = 25
    TabOrder = 5
    OnClick = BtPesqIdUniObjClick
  end
  object PanelCadUniObj: TPanel
    Left = 0
    Top = 0
    Width = 323
    Height = 113
    Align = alTop
    Caption = 'Cadastro de Unidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    ExplicitLeft = -27
    ExplicitWidth = 490
  end
end
