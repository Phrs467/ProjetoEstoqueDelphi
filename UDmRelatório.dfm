﻿object DmRelatório: TDmRelatório
  OldCreateOrder = False
  Height = 600
  Width = 666
  object DataSetRelatorio: TADODataSet
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    CommandText = 
      'select Fun_id, Fun_Nome, Fun_Senha  from Funcionarios'#13#10'inner joi' +
      'n Departamentos On Dp_Nome = Fun_Nome'
    Parameters = <>
    Left = 272
    Top = 168
    object DataSetRelatorioFun_id: TIntegerField
      FieldName = 'Fun_id'
    end
    object DataSetRelatorioFun_Nome: TStringField
      FieldName = 'Fun_Nome'
      Size = 50
    end
    object DataSetRelatorioFun_Senha: TStringField
      FieldName = 'Fun_Senha'
      Size = 10
    end
  end
  object ClientDataSetRelatorio: TClientDataSet
    PersistDataPacket.Data = {
      5B0000009619E0BD0100000018000000030000000000030000005B000746756E
      5F69643104000100000000000946756E5F4E6F6D653101004900000001000557
      494454480200020032000A46756E5F53656E68613104000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 288
    object ClientDataSetRelatorioFun_id1: TIntegerField
      FieldName = 'Fun_id1'
    end
    object ClientDataSetRelatorioFun_Nome1: TStringField
      FieldName = 'Fun_Nome1'
      Size = 50
    end
    object ClientDataSetRelatorioFun_Senha1: TIntegerField
      FieldName = 'Fun_Senha1'
    end
  end
  object DataSetProviderRelatorio: TDataSetProvider
    DataSet = DataSetRelatorio
    Left = 272
    Top = 224
  end
  object ADOConexaoRelatorio: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saoba123;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=BDPEDRO;Data Source=DESENV5;Use Proc' +
      'edure for Prepare=1;Auto Translate=True;Packet Size=4096;Worksta' +
      'tion ID=DESENV1;Use Encryption for Data=False;Tag with column co' +
      'llation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 272
    Top = 112
  end
end
