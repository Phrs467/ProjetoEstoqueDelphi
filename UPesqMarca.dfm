object FormPesqMarca: TFormPesqMarca
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Marca'
  ClientHeight = 599
  ClientWidth = 860
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
    Width = 860
    Height = 105
    Align = alTop
    TabOrder = 0
    object LblPesqMarca: TLabel
      Left = 224
      Top = 32
      Width = 80
      Height = 13
      Caption = 'Digite seu nome:'
    end
    object RgPesqMarca: TRadioGroup
      Left = 16
      Top = 17
      Width = 185
      Height = 57
      Caption = 'Pesquisar por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Id')
      TabOrder = 0
      OnClick = RgPesqMarcaClick
    end
    object EdtPesqMarca: TEdit
      Left = 224
      Top = 51
      Width = 233
      Height = 21
      TabOrder = 1
    end
    object BtPesqGrupo: TButton
      Left = 472
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesqGrupoClick
    end
    object BtSelecMarca: TButton
      Left = 568
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = BtSelecMarcaClick
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 111
    Width = 844
    Height = 480
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 842
      Height = 478
      Align = alClient
      BorderStyle = bsNone
      DataSource = DmMarca.dsPesqMarcaObj
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
          FieldName = 'Marc_id'
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
          FieldName = 'Marc_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
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
