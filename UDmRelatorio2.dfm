object dmRelatorio2: TdmRelatorio2
  OldCreateOrder = False
  Height = 569
  Width = 848
  object dspFuncDepar: TDataSetProvider
    DataSet = qFuncDepar
    Left = 80
    Top = 240
  end
  object cdsFuncDepar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncDepar'
    Left = 80
    Top = 296
    object cdsFuncDeparFun_id: TIntegerField
      FieldName = 'Fun_id'
    end
    object cdsFuncDeparFun_Nome: TStringField
      FieldName = 'Fun_Nome'
      Size = 50
    end
    object cdsFuncDeparDp_id: TIntegerField
      FieldName = 'Dp_id'
    end
    object cdsFuncDeparDp_Nome: TStringField
      FieldName = 'Dp_Nome'
      Size = 50
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saoba123;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=BDPEDRO;Data Source=DESENV5'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 40
  end
  object qFuncDepar: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  fun.Fun_id, '#13#10'  fun.Fun_Nome, '#13#10'  fun.Fun_Senha, '#13#10'  ' +
      'fun.Dp_id,'#13#10'  dep.Dp_Nome'#13#10'from Funcionarios fun'#13#10'  Inner join D' +
      'epartamentos dep  On dep.dp_id = fun.dp_id'#13#10';'#13#10
    Parameters = <>
    Left = 80
    Top = 184
  end
  object dspProduto: TDataSetProvider
    DataSet = qProduto
    Left = 168
    Top = 240
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 168
    Top = 296
    object cdsProdutoProd_id: TAutoIncField
      FieldName = 'Prod_id'
      ReadOnly = True
    end
    object cdsProdutoProd_Nome: TStringField
      FieldName = 'Prod_Nome'
      Size = 50
    end
    object cdsProdutoUni_id: TIntegerField
      FieldName = 'Uni_id'
    end
  end
  object qProduto: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select '#13#10'  pro.*'#13#10'from Produtos pro'#13#10
    Parameters = <>
    Left = 168
    Top = 184
  end
  object dspFornecedor: TDataSetProvider
    DataSet = qFornecedor
    Left = 256
    Top = 240
  end
  object cdsFornecedor: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 256
    Top = 296
    object cdsFornecedorForn_id: TAutoIncField
      FieldName = 'Forn_id'
      ReadOnly = True
    end
    object cdsFornecedorForn_Nome: TStringField
      FieldName = 'Forn_Nome'
      Size = 50
    end
  end
  object qFornecedor: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select '#13#10'  Forn.*'#13#10'from Fornecedor Forn'#13#10
    Parameters = <>
    Left = 256
    Top = 184
  end
  object dspFuncionario: TDataSetProvider
    DataSet = qFuncionario
    Left = 344
    Top = 240
  end
  object cdsFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 344
    Top = 296
    object cdsFuncionarioFun_id: TIntegerField
      FieldName = 'Fun_id'
    end
    object cdsFuncionarioFun_Nome: TStringField
      FieldName = 'Fun_Nome'
      Size = 50
    end
  end
  object qFuncionario: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select '#13#10'  Fun. Fun_id, Fun_Nome, Dp_id'#13#10'from Funcionarios Fun'
    Parameters = <>
    Left = 344
    Top = 184
  end
  object dspDepartamentos: TDataSetProvider
    DataSet = qDepartamentos
    Left = 424
    Top = 240
  end
  object cdsDepartamentos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDepartamentos'
    Left = 424
    Top = 296
    object cdsDepartamentosDp_id: TAutoIncField
      FieldName = 'Dp_id'
      ReadOnly = True
    end
    object cdsDepartamentosDp_Nome: TStringField
      FieldName = 'Dp_Nome'
      Size = 50
    end
  end
  object qDepartamentos: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select '#13#10'  Dep. *'#13#10'from Departamentos Dep'
    Parameters = <>
    Left = 424
    Top = 184
  end
  object dspUnidades: TDataSetProvider
    DataSet = qUnidades
    Left = 504
    Top = 240
  end
  object cdsUnidades: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidades'
    Left = 504
    Top = 296
    object cdsUnidadesUni_id: TAutoIncField
      FieldName = 'Uni_id'
      ReadOnly = True
    end
    object cdsUnidadesUni_Descricao: TStringField
      FieldName = 'Uni_Descricao'
      Size = 50
    end
  end
  object qUnidades: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select '#13#10'  Uni. *'#13#10'from Unidades Uni'
    Parameters = <>
    Left = 504
    Top = 184
  end
end
