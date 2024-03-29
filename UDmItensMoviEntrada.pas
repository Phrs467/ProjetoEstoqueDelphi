unit UDmItensMoviEntrada;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDmItensMoviEntrada = class(TDataModule)
    qItensMoviEntrada: TADOQuery;
    dsItensMoviEntrada: TDataSource;
    dsPesqItensMoviEntrada: TDataSource;
    qPesqItensMoviEntrada: TADOQuery;
    qPesqItensMoviEntradaIme_id: TAutoIncField;
    qPesqItensMoviEntradaProd_Nome: TStringField;
    qPesqItensMoviEntradaUni_Descricao: TStringField;
    qPesqItensMoviEntradamoe_id: TAutoIncField;
    qPesqItensMoviEntradaForn_Nome: TStringField;
    qPesqItensMoviEntradaNum_Nota: TLargeintField;
    qItensMoviEntradaIme_id: TAutoIncField;
    qItensMoviEntradaProd_id: TIntegerField;
    qItensMoviEntradaUni_id: TIntegerField;
    qItensMoviEntradaMoe_id: TIntegerField;
    qItensMoviEntradaIme_Quantidade: TIntegerField;
    qItensMoviEntradaIme_Vlr_Unitario: TFMTBCDField;
    qItensMoviEntradaIme_Vlr_Tot_Bruto: TBCDField;
    qItensMoviEntradaIme_Vlr_Tot_Frete: TBCDField;
    qItensMoviEntradaIme_Vlr_Desconto: TBCDField;
    qItensMoviEntradaIme_Vlr_Tot_Liquido: TBCDField;
    qItensMoviEntradaProd_Nome: TStringField;
    qItensMoviEntradaUni_Descricao: TStringField;
    qItensMoviEntradamoe_id_1: TAutoIncField;
    qItensMoviEntradaForn_Nome: TStringField;
    qItensMoviEntradaNum_Nota: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmItensMoviEntrada: TDmItensMoviEntrada;

implementation

uses
  UDBConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
