object FormPesqFunc: TFormPesqFunc
  Left = 0
  Top = 0
  Caption = 'Pesquisa de funcion'#225'rio'
  ClientHeight = 596
  ClientWidth = 874
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
  object PanelPesqFuncionario: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 89
    TabOrder = 0
    object LblPesqNomeFunc: TLabel
      Left = 207
      Top = 13
      Width = 83
      Height = 13
      Caption = 'Digite seu nome: '
    end
    object RgPesqFuncionario: TRadioGroup
      Left = 6
      Top = 13
      Width = 185
      Height = 49
      Caption = 'Pesquisar por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'ID')
      TabOrder = 0
      OnClick = RgPesqFuncionarioClick
    end
    object EdtPesqFuncionario: TEdit
      Left = 207
      Top = 32
      Width = 177
      Height = 21
      TabOrder = 1
    end
    object BtPesqFuncionario: TButton
      Left = 504
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesqFuncionarioClick
    end
    object BtSelecionar: TButton
      Left = 504
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = BtSelecionarClick
    end
    object CheckBoxAtivo: TCheckBox
      Left = 401
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Ativo'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object DBGridPesqFuncionario: TDBGrid
    Left = 8
    Top = 107
    Width = 858
    Height = 481
    DataSource = DmFuncionario.dsPesqFuncionario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fun_id'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fun_Nome'
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fun_Situacao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Situa'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dp_Nome'
        Title.Caption = 'Nome do departamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
