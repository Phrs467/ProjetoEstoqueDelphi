object DmMoviEntrada: TDmMoviEntrada
  OldCreateOrder = False
  Height = 410
  Width = 483
  object DsMoviEntrada: TDataSource
    DataSet = qMoviEntrada
    Left = 56
    Top = 104
  end
  object DsPesqMoviEntrada: TDataSource
    DataSet = qPesqMoviEntrada
    Left = 56
    Top = 184
  end
  object qMoviEntrada: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  Mov.*'
      '  , Forn.Forn_Nome'
      'from Movimento_Entrada Mov'
      'left outer join Fornecedor Forn on Forn.Forn_id = Mov.Forn_id')
    Left = 272
    Top = 104
    object qMoviEntradaMoe_id: TAutoIncField
      FieldName = 'Moe_id'
      ReadOnly = True
    end
    object qMoviEntradaNum_Serie: TIntegerField
      FieldName = 'Num_Serie'
    end
    object qMoviEntradaNum_Nota: TLargeintField
      FieldName = 'Num_Nota'
    end
    object qMoviEntradaDt_Entrada: TDateTimeField
      FieldName = 'Dt_Entrada'
    end
    object qMoviEntradaDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object qMoviEntradaTipo_Movim: TWideStringField
      FieldName = 'Tipo_Movim'
      FixedChar = True
      Size = 5
    end
    object qMoviEntradaVal_Desconto: TFloatField
      FieldName = 'Val_Desconto'
    end
    object qMoviEntradaVal_Frete: TFloatField
      FieldName = 'Val_Frete'
    end
    object qMoviEntradaTotal_Prod: TFloatField
      FieldName = 'Total_Prod'
    end
    object qMoviEntradaVal_Entrada: TFloatField
      FieldName = 'Val_Entrada'
    end
    object qMoviEntradaForn_id: TIntegerField
      FieldName = 'Forn_id'
    end
    object qMoviEntradaForn_Nome: TStringField
      FieldName = 'Forn_Nome'
      Size = 50
    end
  end
  object qPesqMoviEntrada: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select'
      '  Mov.*'
      '  ,Forn.Forn_Nome'
      'from Movimento_Entrada Mov'
      #9'left outer join Fornecedor Forn on Forn.Forn_id = Mov.Forn_id')
    Left = 272
    Top = 184
    object qPesqMoviEntradaNum_Nota: TLargeintField
      FieldName = 'Num_Nota'
    end
    object qPesqMoviEntradaForn_id: TIntegerField
      FieldName = 'Forn_id'
    end
    object qPesqMoviEntradaForn_Nome: TStringField
      FieldName = 'Forn_Nome'
      Size = 50
    end
    object qPesqMoviEntradaMoe_id: TIntegerField
      FieldName = 'Moe_id'
      ReadOnly = True
    end
    object qPesqMoviEntradaNum_Serie: TIntegerField
      FieldName = 'Num_Serie'
    end
    object qPesqMoviEntradaDt_Entrada: TDateTimeField
      FieldName = 'Dt_Entrada'
    end
    object qPesqMoviEntradaDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object qPesqMoviEntradaTipo_Movim: TWideStringField
      FieldName = 'Tipo_Movim'
      FixedChar = True
      Size = 5
    end
    object qPesqMoviEntradaVal_Desconto: TFloatField
      FieldName = 'Val_Desconto'
    end
    object qPesqMoviEntradaVal_Frete: TFloatField
      FieldName = 'Val_Frete'
    end
    object qPesqMoviEntradaTotal_Prod: TFloatField
      FieldName = 'Total_Prod'
    end
    object qPesqMoviEntradaVal_Entrada: TFloatField
      FieldName = 'Val_Entrada'
    end
  end
end
