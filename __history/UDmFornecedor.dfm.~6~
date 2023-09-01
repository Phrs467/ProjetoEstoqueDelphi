object DmFornecedor: TDmFornecedor
  OldCreateOrder = False
  Height = 487
  Width = 612
  object qFornecedor: TADOQuery
    Active = True
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbo.Fornecedor')
    Left = 136
    Top = 72
    object qFornecedorForn_id: TAutoIncField
      FieldName = 'Forn_id'
      ReadOnly = True
    end
    object qFornecedorForn_Nome: TStringField
      FieldName = 'Forn_Nome'
      Size = 50
    end
  end
  object dsFornecedor: TDataSource
    DataSet = qFornecedor
    Left = 40
    Top = 72
  end
  object qPesqFornecedor: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      #9'Forn.Forn_id,'
      #9'Forn.Forn_Nome'
      'from Fornecedor Forn')
    Left = 136
    Top = 152
    object qPesqFornecedorForn_id: TAutoIncField
      FieldName = 'Forn_id'
      ReadOnly = True
    end
    object qPesqFornecedorForn_Nome: TStringField
      FieldName = 'Forn_Nome'
      Size = 50
    end
  end
  object dsPesqFornecedor: TDataSource
    DataSet = qPesqFornecedor
    Left = 40
    Top = 152
  end
  object dsFornecedorObj: TDataSource
    DataSet = qFornecedorObj
    Left = 40
    Top = 240
  end
  object dsPesqFornObj: TDataSource
    DataSet = qPesqFornObj
    Left = 40
    Top = 336
  end
  object qFornecedorObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    Parameters = <>
    Left = 152
    Top = 240
  end
  object qPesqFornObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    Parameters = <>
    Left = 152
    Top = 336
  end
end
