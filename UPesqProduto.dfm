object FormPesqProdutos: TFormPesqProdutos
  Left = 0
  Top = 0
  Caption = 'Pesquisar Produtos'
  ClientHeight = 606
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
  object PanelPesqProduto: TPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 863
    object LblPesqProd: TLabel
      Left = 236
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Digite seu nome:'
    end
    object RgPesqProduto: TRadioGroup
      Left = 8
      Top = 8
      Width = 209
      Height = 49
      Caption = 'Pesquisar por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Id')
      TabOrder = 0
      OnClick = RgPesqProdutoClick
    end
    object EdtPesqProd: TEdit
      Left = 236
      Top = 35
      Width = 170
      Height = 22
      TabOrder = 1
    end
    object BtPesquisarProd: TButton
      Left = 416
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesquisarProdClick
    end
    object BtSelecionarProd: TButton
      Left = 497
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = BtSelecionarProdClick
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 87
    Width = 855
    Height = 511
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 853
      Height = 509
      Align = alClient
      BorderStyle = bsNone
      DataSource = DmProdutos.DsPesqProd
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
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Prod_id'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Prod_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Uni_id'
          Title.Alignment = taCenter
          Title.Caption = 'ID Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Uni_Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grup_id'
          Title.Alignment = taCenter
          Title.Caption = 'ID Grupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grup_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Grupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Marc_id'
          Title.Alignment = taCenter
          Title.Caption = 'ID Marca'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Marc_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Marca'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 118
          Visible = True
        end>
    end
  end
end
