object FormPesqItensMoviEntrada: TFormPesqItensMoviEntrada
  Left = 0
  Top = 0
  Caption = 'Pesquisar Itens de Movimenta'#231#227'o'
  ClientHeight = 512
  ClientWidth = 825
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
  object PanelPesqItensMoviEntra: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 89
    Align = alTop
    TabOrder = 0
    object LblPesqItensMoviEntra: TLabel
      Left = 352
      Top = 23
      Width = 54
      Height = 13
      Caption = 'Digite o ID:'
    end
    object RgPesqItensMoviEntra: TRadioGroup
      Left = 16
      Top = 8
      Width = 321
      Height = 57
      Caption = 'Pesquisar por:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'ID'
        'Nome Produto'
        'Id Movimenta'#231#227'o')
      TabOrder = 0
      OnClick = RgPesqItensMoviEntraClick
    end
    object EdtPesqItensMoviEntra: TEdit
      Left = 352
      Top = 42
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object BtPesqItensMoviEntra: TButton
      Left = 496
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesqItensMoviEntraClick
    end
    object BtSelecionarItensMoviEntrada: TButton
      Left = 600
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = BtSelecionarItensMoviEntradaClick
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 95
    Width = 809
    Height = 409
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 807
      Height = 407
      Align = alClient
      BorderStyle = bsNone
      DataSource = DmItensMoviEntrada.dsPesqItensMoviEntrada
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
          FieldName = 'Ime_id'
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
          FieldName = 'Prod_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Produto Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'moe_id'
          Title.Alignment = taCenter
          Title.Caption = 'ID Movimenta'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Forn_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Fornecedor Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Num_Nota'
          Title.Alignment = taCenter
          Title.Caption = 'Numero Nota'
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
