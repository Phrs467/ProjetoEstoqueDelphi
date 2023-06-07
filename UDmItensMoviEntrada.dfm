object DmItensMoviEntrada: TDmItensMoviEntrada
  OldCreateOrder = False
  Height = 446
  Width = 676
  object qItensMoviEntrada: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '   Ime.*'
      '  ,Prod.Prod_Nome'
      '  ,Uni.Uni_Descricao'
      '  ,Moe.moe_id'
      '  ,Forn.Forn_Nome'
      '  ,Moe.Num_Nota'
      'from Itens_Movimentacao_Entrada Ime'
      #9'left outer join Produtos Prod on Prod.Prod_id = Ime.Prod_id'
      #9'left outer join Unidades Uni on Uni.Uni_id = Ime.Uni_id'
      
        #9'left outer join Movimento_Entrada Moe on Moe.moe_id = Ime.moe_i' +
        'd'
      #9'inner join Fornecedor Forn on Forn.Forn_id = Moe.Forn_id'
      ';')
    Left = 376
    Top = 104
    object qItensMoviEntradaIme_id: TAutoIncField
      FieldName = 'Ime_id'
      ReadOnly = True
    end
    object qItensMoviEntradaProd_id: TIntegerField
      FieldName = 'Prod_id'
    end
    object qItensMoviEntradaUni_id: TIntegerField
      FieldName = 'Uni_id'
    end
    object qItensMoviEntradaIme_Vlr_Unitario: TFMTBCDField
      FieldName = 'Ime_Vlr_Unitario'
      Precision = 21
      Size = 10
    end
    object qItensMoviEntradaIme_Vlr_Tot_Bruto: TBCDField
      FieldName = 'Ime_Vlr_Tot_Bruto'
      Precision = 15
      Size = 2
    end
    object qItensMoviEntradaIme_Vlr_Tot_Frete: TBCDField
      FieldName = 'Ime_Vlr_Tot_Frete'
      Precision = 15
      Size = 2
    end
    object qItensMoviEntradaIme_Vlr_Desconto: TBCDField
      FieldName = 'Ime_Vlr_Desconto'
      Precision = 15
      Size = 2
    end
    object qItensMoviEntradamoe_id: TIntegerField
      FieldName = 'moe_id'
    end
    object qItensMoviEntradaIme_Vlr_Tot_Liquido: TBCDField
      FieldName = 'Ime_Vlr_Tot_Liquido'
      Precision = 15
      Size = 2
    end
    object qItensMoviEntradaProd_Nome: TStringField
      FieldName = 'Prod_Nome'
      Size = 50
    end
    object qItensMoviEntradaUni_Descricao: TStringField
      FieldName = 'Uni_Descricao'
      Size = 50
    end
    object qItensMoviEntradaForn_Nome: TStringField
      FieldName = 'Forn_Nome'
      Size = 50
    end
    object qItensMoviEntradaNum_Nota: TLargeintField
      FieldName = 'Num_Nota'
    end
    object qItensMoviEntradaIme_Quatidade: TBCDField
      FieldName = 'Ime_Quantidade'
      Precision = 15
    end
  end
  object dsItensMoviEntrada: TDataSource
    DataSet = qItensMoviEntrada
    Left = 176
    Top = 104
  end
  object dsPesqItensMoviEntrada: TDataSource
    DataSet = qPesqItensMoviEntrada
    Left = 176
    Top = 192
  end
  object qPesqItensMoviEntrada: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select'
      '   Ime.*'
      '  ,Prod.Prod_Nome'
      '  ,Uni.Uni_Descricao'
      '  ,Moe.moe_id'
      '  ,Forn.Forn_Nome'
      '  ,Moe.Num_Nota'
      'from Itens_Movimentacao_Entrada Ime'
      #9'left outer join Produtos Prod on Prod.Prod_id = Ime.Prod_id'
      #9'left outer join Unidades Uni on Uni.Uni_id = Ime.Uni_id'
      
        #9'left outer join Movimento_Entrada Moe on Moe.moe_id = Ime.moe_i' +
        'd'
      #9'inner join Fornecedor Forn on Forn.Forn_id = Moe.Forn_id')
    Left = 376
    Top = 200
    object qPesqItensMoviEntradaIme_id: TAutoIncField
      FieldName = 'Ime_id'
      ReadOnly = True
    end
    object qPesqItensMoviEntradaProd_Nome: TStringField
      FieldName = 'Prod_Nome'
      Size = 50
    end
    object qPesqItensMoviEntradaUni_Descricao: TStringField
      FieldName = 'Uni_Descricao'
      Size = 50
    end
    object qPesqItensMoviEntradamoe_id: TAutoIncField
      FieldName = 'moe_id'
      ReadOnly = True
    end
    object qPesqItensMoviEntradaForn_Nome: TStringField
      FieldName = 'Forn_Nome'
      Size = 50
    end
    object qPesqItensMoviEntradaNum_Nota: TLargeintField
      FieldName = 'Num_Nota'
    end
  end
end
