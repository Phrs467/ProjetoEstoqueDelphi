object FormRelatorioDepar: TFormRelatorioDepar
  Left = 0
  Top = 0
  Caption = 'Relatorio Departamentos'
  ClientHeight = 640
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportDepar: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsDepartamentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
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
      object RLSystemInfo3: TRLSystemInfo
        Left = 270
        Top = 0
        Width = 177
        Height = 16
        Align = faCenterTop
        Info = itTitle
        Text = 'Relat'#243'rio departamentos'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 64
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 48
        Top = 0
        Width = 16
        Height = 16
        Align = faTopOnly
        Caption = 'ID'
      end
      object RLLabel2: TRLLabel
        Left = 158
        Top = 0
        Width = 141
        Height = 16
        Align = faTopOnly
        Caption = 'Nome do Departamento'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 72
      object RLDBText1: TRLDBText
        Left = 48
        Top = 0
        Width = 37
        Height = 16
        Align = faTopOnly
        DataField = 'Dp_id'
        DataSource = dsDepartamentos
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 158
        Top = 0
        Width = 61
        Height = 16
        Align = faTopOnly
        DataField = 'Dp_Nome'
        DataSource = dsDepartamentos
        Text = ''
      end
    end
  end
  object dsDepartamentos: TDataSource
    DataSet = dmRelatorio2.cdsDepartamentos
    Left = 800
    Top = 264
  end
end
