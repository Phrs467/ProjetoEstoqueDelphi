object DmProdutos: TDmProdutos
  OldCreateOrder = False
  Height = 489
  Width = 637
  object dsProdutos: TDataSource
    DataSet = qProdutos
    Left = 136
    Top = 168
  end
  object qProdutos: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbo.Produtos')
    Left = 240
    Top = 168
    object qProdutosProd_id: TAutoIncField
      FieldName = 'Prod_id'
      ReadOnly = True
    end
    object qProdutosProd_Nome: TStringField
      FieldName = 'Prod_Nome'
      Size = 50
    end
    object qProdutosUni_id: TIntegerField
      FieldName = 'Uni_id'
    end
  end
  object DsPesqProd: TDataSource
    DataSet = qPesqProd
    Left = 136
    Top = 264
  end
  object qPesqProd: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  Prod.Prod_id, '
      '  Prod.Prod_Nome,'
      '  Prod.Uni_id, '
      '  Uni.Uni_Descricao,'
      '  Prod.Grup_id,'
      '  Grup.Grup_Nome,'
      '  Prod.Marc_id,'
      '  Marc.Marc_Nome'
      '  From Produtos Prod '
      '  left outer join Unidades Uni On Uni.Uni_id = Prod.Uni_id'
      '  left outer join Grupo Grup On Grup.Grup_id = Prod.Grup_id'
      '  left outer join Marca Marc On Marc.Marc_id = Prod.Marc_id')
    Left = 240
    Top = 264
    object qPesqProdProd_id: TAutoIncField
      FieldName = 'Prod_id'
      ReadOnly = True
    end
    object qPesqProdProd_Nome: TStringField
      FieldName = 'Prod_Nome'
      Size = 50
    end
    object qPesqProdUni_id: TIntegerField
      FieldName = 'Uni_id'
    end
    object qPesqProdUni_Descricao: TStringField
      FieldName = 'Uni_Descricao'
      Size = 50
    end
    object qPesqProdGrup_id: TIntegerField
      FieldName = 'Grup_id'
    end
    object qPesqProdGrup_Nome: TStringField
      FieldName = 'Grup_Nome'
      Size = 50
    end
    object qPesqProdMarc_id: TIntegerField
      FieldName = 'Marc_id'
    end
    object qPesqProdMarc_Nome: TStringField
      FieldName = 'Marc_Nome'
      Size = 50
    end
  end
  object qProdutosObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    Parameters = <>
    Left = 520
    Top = 160
  end
  object qPesqProdObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    LockType = ltReadOnly
    Parameters = <>
    Left = 520
    Top = 264
  end
  object DsProdutosObj: TDataSource
    DataSet = qProdutosObj
    Left = 400
    Top = 160
  end
  object DsPesqProdObj: TDataSource
    DataSet = qPesqProdObj
    Left = 400
    Top = 264
  end
end
