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
  object Panel2: TPanel
    Left = 8
    Top = 95
    Width = 855
    Height = 447
    TabOrder = 1
    object DBGridPesqGrupo: TDBGrid
      Left = 1
      Top = 1
      Width = 853
      Height = 445
      Align = alClient
      BorderStyle = bsNone
      DataSource = DmGrupo.dsPesqGrupoObj
      DrawingStyle = gdsClassic
      FixedColor = 7165253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7165253
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridPesqGrupoDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Grup_id'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grup_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do grupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
end
