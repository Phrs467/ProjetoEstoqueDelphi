object FormPesqDepartamento: TFormPesqDepartamento
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Departamentos'
  ClientHeight = 559
  ClientWidth = 817
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
    Width = 817
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 838
    object LblPesqNomeDepar: TLabel
      Left = 216
      Top = 16
      Width = 83
      Height = 13
      Caption = 'Digite seu nome: '
    end
    object RgPesqDepartamentos: TRadioGroup
      Left = 9
      Top = 14
      Width = 185
      Height = 44
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
      Width = 178
      Height = 23
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
      Left = 481
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = btSelecionarClick
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 95
    Width = 801
    Height = 450
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 799
      Height = 448
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = dmDepartamentos.DsPesqDepartamentos
      DrawingStyle = gdsClassic
      FixedColor = 7165253
      GradientEndColor = clSilver
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
          FieldName = 'Dp_id'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Nome'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome Departamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 563
          Visible = True
        end>
    end
  end
end
