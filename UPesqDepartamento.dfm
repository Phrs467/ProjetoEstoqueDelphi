object FormPesqDepartamento: TFormPesqDepartamento
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Departamentos'
  ClientHeight = 552
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
  object PanelPesqDepar: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 89
    Align = alTop
    TabOrder = 0
    object LblPesqNomeDepar: TLabel
      Left = 216
      Top = 16
      Width = 83
      Height = 13
      Caption = 'Digite seu nome: '
    end
    object RgPesqDepartamentos: TRadioGroup
      Left = 8
      Top = 8
      Width = 185
      Height = 49
      Caption = 'Pesquisar por: '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Id')
      TabOrder = 0
      OnClick = RgPesqDepartamentosClick
    end
    object EdtPesqNomeDepar: TEdit
      Left = 216
      Top = 35
      Width = 137
      Height = 21
      TabOrder = 1
    end
    object BtPesqNomeDepar: TButton
      Left = 400
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesqNomeDeparClick
    end
    object btSelecionar: TButton
      Left = 512
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = btSelecionarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 809
    Height = 440
    DataSource = dmDepartamentos.DsPesqDepartamentos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Dp_id'
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
        FieldName = 'Dp_Nome'
        Title.Caption = 'Nome Departamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
