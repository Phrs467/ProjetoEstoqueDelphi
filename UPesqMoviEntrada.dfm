object FormPesqMoviEntrada: TFormPesqMoviEntrada
  Left = 0
  Top = 0
  Caption = 'Pesquisar Movimenta'#231#245'es de entrada'
  ClientHeight = 402
  ClientWidth = 709
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
  object PanelPesqMoviEntrada: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 73
    Align = alTop
    TabOrder = 0
    object LblPesqMoviEntrada: TLabel
      Left = 240
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Digite o N'#186':'
    end
    object RgPesqMoviEntrada: TRadioGroup
      Left = 8
      Top = 8
      Width = 226
      Height = 49
      Caption = 'Pesquisar por:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'ID Entrada'
        'N'#186' Nota'
        'Fornecedor')
      TabOrder = 0
      OnClick = RgPesqMoviEntradaClick
    end
    object EdtPesqMoviEntrada: TEdit
      Left = 240
      Top = 27
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object BtPesqMoviEntrada: TButton
      Left = 392
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesqMoviEntradaClick
    end
    object BtSelecMoviEntrada: TButton
      Left = 488
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = BtSelecMoviEntradaClick
    end
  end
  object DBGridPesqMoviEntrada: TDBGrid
    Left = 8
    Top = 79
    Width = 693
    Height = 315
    DataSource = DmMoviEntrada.DsPesqMoviEntrada
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Moe_id'
        Title.Caption = 'ID Nota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_Nota'
        Title.Caption = 'Nota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Forn_id'
        Title.Caption = 'Id Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Forn_Nome'
        Title.Caption = 'Nome Fornecedor'
        Visible = True
      end>
  end
end
