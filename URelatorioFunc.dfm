object FormRelatorioFunc: TFormRelatorioFunc
  Left = 0
  Top = 0
  Caption = 'Relatorio Funcionario'
  ClientHeight = 580
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportFunc: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsFunc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio funcion'#225'rios'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 48
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 652
        Top = 0
        Width = 66
        Height = 16
        Align = faRightTop
        Text = 'Hora'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 578
        Top = 0
        Width = 74
        Height = 16
        Align = faRightTop
        Text = 'Data: '
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 341
        Top = 0
        Width = 36
        Height = 16
        Align = faCenterTop
        Info = itTitle
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 86
      Width = 718
      Height = 51
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 56
        Top = 0
        Width = 16
        Height = 16
        Align = faTopOnly
        Caption = 'ID'
      end
      object RLLabel2: TRLLabel
        Left = 200
        Top = 0
        Width = 38
        Height = 16
        Align = faTopOnly
        Caption = 'Nome'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 88
      object RLDBText1: TRLDBText
        Left = 56
        Top = 0
        Width = 43
        Height = 16
        Align = faTopOnly
        DataField = 'Fun_id'
        DataSource = dsFunc
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 200
        Top = 0
        Width = 67
        Height = 16
        Align = faTopOnly
        DataField = 'Fun_Nome'
        DataSource = dsFunc
        Text = ''
      end
    end
  end
  object dsFunc: TDataSource
    DataSet = dmRelatorio2.cdsFuncionario
    Left = 840
    Top = 296
  end
end
