object FormRelatório: TFormRelatório
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio '
  ClientHeight = 566
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlrprtRelatorio: TRLReport
    Left = 72
    Top = 72
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = rlrprtRelatorioBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object RLLabel: TRLLabel
        Left = 0
        Top = 0
        Width = 128
        Height = 16
        Align = faLeftTop
        Caption = 'Relat'#243'rio funcion'#225'rios'
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
      Height = 64
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 18
        Height = 16
        Align = faTopOnly
        Caption = 'N'#186
      end
      object RLLabel2: TRLLabel
        Left = 120
        Top = 0
        Width = 38
        Height = 16
        Align = faTopOnly
        Caption = 'Nome'
      end
      object RLLabel3: TRLLabel
        Left = 224
        Top = 0
        Width = 41
        Height = 16
        Align = faTopOnly
        Caption = 'Senha'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 72
      object RLDBText1: TRLDBText
        Left = 32
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'Fun_id1'
        DataSource = DsFormRelatorio
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 224
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'Fun_Nome1'
        DataSource = DsFormRelatorio
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 408
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'Fun_Senha1'
        DataSource = DsFormRelatorio
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 241
      Width = 718
      Height = 64
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 644
        Top = 0
        Width = 74
        Height = 16
        Align = faRightTop
        Info = itHour
        Text = 'Hora: '
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 570
        Top = 0
        Width = 74
        Height = 16
        Align = faRightTop
        Text = 'Data: '
      end
    end
  end
  object DsFormRelatorio: TDataSource
    DataSet = DmRelatório.ClientDataSetRelatorio
    Left = 808
    Top = 280
  end
end
