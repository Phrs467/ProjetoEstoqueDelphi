object FormRelatorio2: TFormRelatorio2
  Left = 0
  Top = 0
  Caption = 'FormRelatorio2'
  ClientHeight = 688
  ClientWidth = 855
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 231
        Height = 16
        Align = faLeftTop
        Caption = 'Relat'#243'rio funcion'#225'rios e Departamentos'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 341
        Top = 0
        Width = 36
        Height = 16
        Align = faCenterTop
        Info = itTitle
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 600
        Top = 0
        Width = 118
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'P'#225'g.:'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 32
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 72
        Top = 0
        Width = 16
        Height = 16
        Align = faTopOnly
        Caption = 'ID'
      end
      object RLLabel3: TRLLabel
        Left = 288
        Top = 0
        Width = 38
        Height = 16
        Align = faTopOnly
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 448
        Top = 0
        Width = 85
        Height = 16
        Align = faTopOnly
        Caption = 'Departamento'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 32
      object RLDBText1: TRLDBText
        Left = 72
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'Fun_id'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 288
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'Fun_Nome'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 448
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'Dp_Nome'
        DataSource = DataSource1
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 32
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 648
        Top = 0
        Width = 70
        Height = 16
        Align = faRightTop
        Info = itHour
        Text = 'Hora:'
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 578
        Top = 0
        Width = 70
        Height = 16
        Align = faRightTop
        Text = 'Data:'
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dmRelatorio2.cdsFuncDepar
    Left = 768
    Top = 352
  end
end
