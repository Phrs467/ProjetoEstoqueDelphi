object FormPesqGrupo: TFormPesqGrupo
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Grupo'
  ClientHeight = 550
  ClientWidth = 871
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 89
    TabOrder = 0
    object LblPesqGrupo: TLabel
      Left = 223
      Top = 20
      Width = 80
      Height = 13
      Caption = 'Digite seu nome:'
    end
    object RgPesqGrupo: TRadioGroup
      Left = 8
      Top = 5
      Width = 193
      Height = 57
      Caption = 'Pesquisar por: '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Id')
      TabOrder = 0
      OnClick = RgPesqGrupoClick
    end
    object EdtPesqGrupo: TEdit
      Left = 223
      Top = 39
      Width = 193
      Height = 21
      TabOrder = 1
    end
    object BtSelecPesqGrupo: TButton
      Left = 529
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 2
      OnClick = BtSelecPesqGrupoClick
    end
    object BtPesqGrupo: TButton
      Left = 440
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = BtPesqGrupoClick
    end
  end
  object DBGridPesqGrupo: TDBGrid
    Left = 8
    Top = 95
    Width = 855
    Height = 447
    DataSource = DmGrupo.dsPesqGrupoObj
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Grup_id'
        Title.Caption = 'Id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grup_Nome'
        Title.Caption = 'Nome do grupo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
