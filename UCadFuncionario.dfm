object frmCadFuncionario: TfrmCadFuncionario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 610
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenuImprimirCadFunc
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelPesquisas: TLabel
    Left = 600
    Top = 208
    Width = 47
    Height = 13
    Caption = 'Pesquisas'
  end
  object LabelPesqNome: TLabel
    Left = 476
    Top = 286
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object LblPesqIdCadFunc: TLabel
    Left = 682
    Top = 285
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 81
    Align = alTop
    Caption = 'Cadastro de Funcion'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBNavigatorCadFunc: TDBNavigator
      Left = 552
      Top = 40
      Width = 297
      Height = 33
      DataSource = DmFuncionario.dsFuncionarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 17
    Top = 87
    Width = 296
    Height = 396
    TabOrder = 1
    object LblCadIdFunc: TLabel
      Left = 16
      Top = 40
      Width = 18
      Height = 14
      Caption = 'ID '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblCadNomeFunc: TLabel
      Left = 16
      Top = 88
      Width = 38
      Height = 14
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblCadSenhaFunc: TLabel
      Left = 16
      Top = 144
      Width = 42
      Height = 14
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblCadDeparFunc: TLabel
      Left = 16
      Top = 194
      Width = 89
      Height = 14
      Caption = 'Departamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdtCadNomeFunc: TDBEdit
      Left = 16
      Top = 108
      Width = 209
      Height = 21
      DataField = 'Fun_Nome'
      DataSource = DmFuncionario.dsFuncionarios
      TabOrder = 0
    end
    object DBEdtCadSenhaFunc: TDBEdit
      Left = 16
      Top = 164
      Width = 121
      Height = 21
      DataField = 'Fun_Senha'
      DataSource = DmFuncionario.dsFuncionarios
      TabOrder = 1
    end
    object DBEdtCadIdDeparFunc: TDBEdit
      Left = 16
      Top = 214
      Width = 73
      Height = 21
      DataField = 'Dp_id'
      DataSource = DmFuncionario.dsFuncionarios
      TabOrder = 2
    end
    object btPesqDepartamento: TButton
      Left = 91
      Top = 212
      Width = 33
      Height = 25
      TabOrder = 3
      OnClick = btPesqDepartamentoClick
    end
    object EditNomeDepartamento: TEdit
      Left = 128
      Top = 214
      Width = 161
      Height = 21
      TabOrder = 4
    end
  end
  object DBEdtCadIdFunc: TDBEdit
    Left = 33
    Top = 148
    Width = 73
    Height = 21
    Cursor = crNo
    DataField = 'Fun_id'
    DataSource = DmFuncionario.dsFuncionarios
    ReadOnly = True
    TabOrder = 2
  end
  object DBGridCadFunc: TDBGrid
    Left = 319
    Top = 96
    Width = 517
    Height = 93
    DataSource = DmFuncionario.dsFuncionarios
    TabOrder = 3
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fun_Nome'
        Title.Caption = 'NOME'
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fun_Senha'
        Title.Caption = 'SENHA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dp_id'
        Title.Caption = 'DEPARTAMENTO'
        Visible = True
      end>
  end
  object EditPesqNome: TEdit
    Left = 472
    Top = 301
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object ButtonPesquisar: TButton
    Left = 474
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 5
    OnClick = ButtonPesquisarClick
  end
  object EditPesqId: TEdit
    Left = 680
    Top = 301
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object RadioPesquisaPor: TRadioGroup
    Left = 474
    Top = 231
    Width = 329
    Height = 48
    Caption = 'Pesquisar por:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Id')
    TabOrder = 7
  end
  object MainMenuImprimirCadFunc: TMainMenu
    Left = 800
    Top = 384
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      object RelatrioFuncionrio1: TMenuItem
        Caption = 'Relat'#243'rio Funcion'#225'rio'
        OnClick = RelatrioFuncionrio1Click
      end
      object FuncionrioeDepartamento1: TMenuItem
        Caption = 'Funcion'#225'rio e Departamento'
        OnClick = FuncionrioeDepartamento1Click
      end
    end
  end
  object dsFuncTela: TDataSource
    DataSet = DmFuncionario.qFuncionarios
    OnDataChange = dsFuncTelaDataChange
    Left = 368
    Top = 232
  end
end
