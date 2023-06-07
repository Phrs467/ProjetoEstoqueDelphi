unit UDmRelatorio2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Datasnap.DBClient,
  Datasnap.Provider;

type
  TdmRelatorio2 = class(TDataModule)
    dspFuncDepar: TDataSetProvider;
    cdsFuncDepar: TClientDataSet;
    ADOConnection1: TADOConnection;
    qFuncDepar: TADODataSet;
    cdsFuncDeparFun_id: TIntegerField;
    cdsFuncDeparFun_Nome: TStringField;
    cdsFuncDeparDp_id: TIntegerField;
    cdsFuncDeparDp_Nome: TStringField;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    qProduto: TADODataSet;
    cdsProdutoProd_id: TAutoIncField;
    cdsProdutoProd_Nome: TStringField;
    cdsProdutoUni_id: TIntegerField;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    qFornecedor: TADODataSet;
    cdsFornecedorForn_id: TAutoIncField;
    cdsFornecedorForn_Nome: TStringField;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    qFuncionario: TADODataSet;
    cdsFuncionarioFun_id: TIntegerField;
    cdsFuncionarioFun_Nome: TStringField;
    dspDepartamentos: TDataSetProvider;
    cdsDepartamentos: TClientDataSet;
    qDepartamentos: TADODataSet;
    cdsDepartamentosDp_id: TAutoIncField;
    cdsDepartamentosDp_Nome: TStringField;
    dspUnidades: TDataSetProvider;
    cdsUnidades: TClientDataSet;
    qUnidades: TADODataSet;
    cdsUnidadesUni_id: TAutoIncField;
    cdsUnidadesUni_Descricao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRelatorio2: TdmRelatorio2;

implementation

uses
  UDBConexao, URelatorio2;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
