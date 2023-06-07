object FormRelatorioForn: TFormRelatorioForn
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Fornecedor'
  ClientHeight = 628
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportForn: TRLReport
    Left = 2
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsRelatorioForn
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 644
        Top = 0
        Width = 74
        Height = 16
        Align = faRightTop
        Info = itHour
        Text = 'Hora: '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 570
        Top = 0
        Width = 74
        Height = 16
        Align = faRightTop
        Text = 'Data: '
      end
      object RLLabel1: TRLLabel
        Left = 296
        Top = 0
        Width = 124
        Height = 16
        Align = faTopOnly
        Caption = 'Relat'#243'rio Fornecedor'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 48
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 48
        Top = 0
        Width = 16
        Height = 16
        Align = faTopOnly
        Caption = 'ID'
      end
      object RLLabel3: TRLLabel
        Left = 200
        Top = 0
        Width = 69
        Height = 16
        Align = faTopOnly
        Caption = 'Fornecedor'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 57
      object RLDBText1: TRLDBText
        Left = 48
        Top = 0
        Width = 47
        Height = 16
        Align = faTopOnly
        DataField = 'Forn_id'
        DataSource = dsRelatorioForn
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 200
        Top = 0
        Width = 71
        Height = 16
        Align = faTopOnly
        DataField = 'Forn_Nome'
        DataSource = dsRelatorioForn
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 194
      Width = 718
      Height = 64
      BandType = btFooter
    end
  end
  object dsRelatorioForn: TDataSource
    DataSet = dmRelatorio2.cdsFornecedor
    Left = 816
    Top = 264
  end
end
