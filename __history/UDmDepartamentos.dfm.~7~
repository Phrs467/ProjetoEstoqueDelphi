object dmDepartamentos: TdmDepartamentos
  OldCreateOrder = False
  Height = 475
  Width = 727
  object qDepartamentos: TADOQuery
    Active = True
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbo.Departamentos')
    Left = 248
    Top = 136
  end
  object dsDepartamentos: TDataSource
    DataSet = qDepartamentos
    Left = 160
    Top = 136
  end
  object DsPesqDepartamentos: TDataSource
    DataSet = qPesqDepartamentos
    Left = 160
    Top = 256
  end
  object qPesqDepartamentos: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select'
      #9'dep.Dp_id,'
      #9'dep.Dp_Nome'
      'from Departamentos dep')
    Left = 248
    Top = 256
    object qPesqDepartamentosDp_id: TIntegerField
      FieldName = 'Dp_id'
      ReadOnly = True
    end
    object qPesqDepartamentosDp_Nome: TStringField
      FieldName = 'Dp_Nome'
      Size = 50
    end
  end
  object DsPesqDeparObj: TDataSource
    DataSet = qPesqDeparObj
    Left = 432
    Top = 256
  end
  object qPesqDeparObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    LockType = ltReadOnly
    Parameters = <>
    Left = 520
    Top = 256
  end
  object dsDepartamentoObj: TDataSource
    DataSet = qDepartamentoObj
    Left = 432
    Top = 136
  end
  object qDepartamentoObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    Parameters = <>
    Left = 520
    Top = 136
  end
end
