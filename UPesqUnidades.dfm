object FormPesqUnidades: TFormPesqUnidades
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Unidades'
  ClientHeight = 508
  ClientWidth = 796
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
  object PanelPesqUni: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 81
    Align = alTop
    TabOrder = 0
    object LblPesqUni: TLabel
      Left = 248
      Top = 16
      Width = 88
      Height = 13
      Caption = 'Digite a descri'#231#227'o:'
    end
    object RgPesqUni: TRadioGroup
      Left = 16
      Top = 8
      Width = 209
      Height = 49
      Caption = 'Pesquisar por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Descri'#231#227'o'
        'Id')
      TabOrder = 0
      OnClick = RgPesqUniClick
    end
    object EdtPesqUni: TEdit
      Left = 248
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object BtPesqUni: TButton
      Left = 400
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesqUniClick
    end
    object BtSelecUnidades: TButton
      Left = 504
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = BtSelecUnidadesClick
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 87
    Width = 780
    Height = 413
    TabOrder = 1
    object DBGridPesqUni: TDBGrid
      Left = 1
      Top = 1
      Width = 778
      Height = 411
      Align = alClient
      BorderStyle = bsNone
      DataSource = DmUnidades.dsPesqUnidades
      DrawingStyle = gdsClassic
      FixedColor = 7165253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7165253
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridPesqUniDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Uni_id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7165253
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Uni_Descricao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7165253
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
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
