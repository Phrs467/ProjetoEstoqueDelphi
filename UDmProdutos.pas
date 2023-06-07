unit UDmProdutos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDmProdutos = class(TDataModule)
    dsProdutos: TDataSource;
    qProdutos: TADOQuery;
    qProdutosProd_id: TAutoIncField;
    qProdutosProd_Nome: TStringField;
    qProdutosUni_id: TIntegerField;
    DsPesqProd: TDataSource;
    qPesqProd: TADOQuery;
    qProdutosObj: TADOQuery;
    qPesqProdObj: TADOQuery;
    DsProdutosObj: TDataSource;
    DsPesqProdObj: TDataSource;
    qPesqProdProd_id: TAutoIncField;
    qPesqProdProd_Nome: TStringField;
    qPesqProdUni_id: TIntegerField;
    qPesqProdUni_Descricao: TStringField;
    qPesqProdGrup_id: TIntegerField;
    qPesqProdGrup_Nome: TStringField;
    qPesqProdMarc_id: TIntegerField;
    qPesqProdMarc_Nome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmProdutos: TDmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDBConexao;

{$R *.dfm}

end.
