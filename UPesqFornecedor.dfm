object FormPesqForn: TFormPesqForn
  Left = 0
  Top = 0
  Caption = 'Pesquisa fornecedor'
  ClientHeight = 559
  ClientWidth = 817
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
  object PanelPesqForn: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 89
    Align = alTop
    TabOrder = 0
    object LblPesqForn: TLabel
      Left = 216
      Top = 16
      Width = 69
      Height = 13
      Caption = 'Digite o nome:'
    end
    object RgPesqForn: TRadioGroup
      Left = 16
      Top = 8
      Width = 185
      Height = 49
      Caption = 'Pesquisar por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Id')
      TabOrder = 0
      OnClick = RgPesqFornClick
    end
    object EdtPesqForn: TEdit
      Left = 216
      Top = 35
      Width = 185
      Height = 21
      TabOrder = 1
    end
    object BtPesqForn: TButton
      Left = 407
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesqFornClick
    end
    object BtSelecionarForn: TButton
      Left = 488
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = BtSelecionarFornClick
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 95
    Width = 801
    Height = 450
    TabOrder = 1
    object DBGridPesqForn: TDBGrid
      Left = 1
      Top = 1
      Width = 799
      Height = 448
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DmFornecedor.dsPesqFornecedor
      DrawingStyle = gdsClassic
      FixedColor = 7165253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7165253
      Font.Height = -11
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
      OnDrawColumnCell = DBGridPesqFornDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Forn_id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Id'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Forn_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome Fornecedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 537
          Visible = True
        end>
    end
  end
end
