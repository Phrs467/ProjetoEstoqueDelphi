object FormDepartamentos: TFormDepartamentos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Departamentos'
  ClientHeight = 482
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenuImprimirCadDepar
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LblCadNomeDepar: TLabel
    Left = 32
    Top = 163
    Width = 34
    Height = 14
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblCadIdDepar: TLabel
    Left = 32
    Top = 101
    Width = 14
    Height = 14
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPesqNomeCadDepar: TLabel
    Left = 344
    Top = 392
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object LblPesqIdCadDepar: TLabel
    Left = 520
    Top = 392
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object DBEdtCadNomeDepar: TDBEdit
    Left = 32
    Top = 181
    Width = 249
    Height = 21
    DataField = 'Dp_Nome'
    DataSource = dmDepartamentos.dsDepartamentos
    TabOrder = 0
  end
  object DBGridCadDepar: TDBGrid
    Left = 344
    Top = 85
    Width = 320
    Height = 228
    DataSource = dmDepartamentos.dsDepartamentos
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dp_Nome'
        Title.Caption = 'NOME'
        Visible = True
      end>
  end
  object DBNavigatorCadDepar: TDBNavigator
    Left = 344
    Top = 38
    Width = 320
    Height = 41
    DataSource = dmDepartamentos.dsDepartamentos
    TabOrder = 2
  end
  object DBEdtCadIdDepar: TDBEdit
    Left = 32
    Top = 121
    Width = 89
    Height = 21
    Cursor = crNo
    DataField = 'Dp_id'
    DataSource = dmDepartamentos.dsDepartamentos
    ReadOnly = True
    TabOrder = 3
  end
  object RadioPesqDep: TRadioGroup
    Left = 344
    Top = 332
    Width = 320
    Height = 45
    Caption = 'Pesquisar por:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Id')
    TabOrder = 4
  end
  object EditPesqDepNome: TEdit
    Left = 344
    Top = 411
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EditPesqDepId: TEdit
    Left = 520
    Top = 411
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object BtPesqCadDepar: TButton
    Left = 344
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 7
    OnClick = BtPesqCadDeparClick
  end
  object MainMenuImprimirCadDepar: TMainMenu
    Left = 160
    Top = 432
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
  end
end
