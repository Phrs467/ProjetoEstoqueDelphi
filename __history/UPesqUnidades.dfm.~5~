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
  object DBGridPesqUni: TDBGrid
    Left = 8
    Top = 87
    Width = 780
    Height = 413
    DataSource = DmUnidades.dsPesqUnidades
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Uni_id'
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
        FieldName = 'Uni_Descricao'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
