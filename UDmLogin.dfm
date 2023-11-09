object dmLogin: TdmLogin
  OldCreateOrder = False
  Height = 237
  Width = 324
  object DsPesqUsuario: TDataSource
    DataSet = qPesqUsuario
    Left = 188
    Top = 40
  end
  object qPesqUsuario: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from Funcionarios')
    Left = 188
    Top = 88
    object qPesqUsuarioCD_USU: TIntegerField
      FieldName = 'CD_USU'
    end
    object qPesqUsuarioNOME_USU: TStringField
      FieldName = 'NOME_USU'
    end
    object qPesqUsuarioLOGIN_USU: TStringField
      FieldName = 'LOGIN_USU'
    end
    object qPesqUsuarioSENHA_USU: TStringField
      FieldName = 'SENHA_USU'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    Parameters = <>
    Left = 104
    Top = 88
  end
end
