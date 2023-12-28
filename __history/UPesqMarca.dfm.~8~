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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 111
    Width = 841
    Height = 474
    DataSource = DmMarca.dsPesqMarcaObj
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Marc_id'
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
        FieldName = 'Marc_Nome'
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
