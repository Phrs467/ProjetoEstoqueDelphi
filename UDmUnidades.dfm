object DmUnidades: TDmUnidades
  OldCreateOrder = False
  Height = 433
  Width = 475
  object qUnidades: TADOQuery
    Active = True
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbo.Unidades')
    Left = 144
    Top = 40
  end
  object dsUnidades: TDataSource
    DataSet = qUnidades
    Left = 40
    Top = 40
  end
  object qPesqUnidades: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      #9'Uni.Uni_id,'
      #9'Uni.Uni_Descricao'
      'from Unidades Uni')
    Left = 144
    Top = 120
    object qPesqUnidadesUni_id: TAutoIncField
      FieldName = 'Uni_id'
      ReadOnly = True
    end
    object qPesqUnidadesUni_Descricao: TStringField
      FieldName = 'Uni_Descricao'
      Size = 50
    end
  end
  object dsPesqUnidades: TDataSource
    DataSet = qPesqUnidades
    Left = 40
    Top = 120
  end
  object DsUnidadesObj: TDataSource
    DataSet = qUnidadesObj
    Left = 40
    Top = 248
  end
  object DsPesqUniObj: TDataSource
    DataSet = qPesqUniObj
    Left = 40
    Top = 328
  end
  object qUnidadesObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    Parameters = <>
    Left = 144
    Top = 248
  end
  object qPesqUniObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    LockType = ltReadOnly
    Parameters = <>
    Left = 144
    Top = 328
  end
end
