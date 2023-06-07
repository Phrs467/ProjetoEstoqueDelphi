object DmGrupo: TDmGrupo
  OldCreateOrder = False
  Height = 483
  Width = 731
  object qGrupoObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbo.Grupo')
    Left = 296
    Top = 104
  end
  object qPesqGrupoObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select'
      #9'Grup.Grup_id,'
      #9'Grup.Grup_Nome'
      'from Grupo Grup')
    Left = 296
    Top = 192
    object qPesqGrupoObjGrup_id: TIntegerField
      FieldName = 'Grup_id'
      ReadOnly = True
    end
    object qPesqGrupoObjGrup_Nome: TStringField
      FieldName = 'Grup_Nome'
      Size = 50
    end
  end
  object dsGrupoObj: TDataSource
    DataSet = qGrupoObj
    Left = 128
    Top = 104
  end
  object dsPesqGrupoObj: TDataSource
    DataSet = qPesqGrupoObj
    Left = 128
    Top = 192
  end
end
