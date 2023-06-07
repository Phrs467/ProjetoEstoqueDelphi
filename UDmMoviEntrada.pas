unit UDmMoviEntrada;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDmMoviEntrada = class(TDataModule)
    DsMoviEntrada: TDataSource;
    DsPesqMoviEntrada: TDataSource;
    qMoviEntrada: TADOQuery;
    qPesqMoviEntrada: TADOQuery;
    qPesqMoviEntradaNum_Nota: TLargeintField;
    qPesqMoviEntradaForn_id: TIntegerField;
    qPesqMoviEntradaForn_Nome: TStringField;
    qPesqMoviEntradaMoe_id: TIntegerField;
    qPesqMoviEntradaNum_Serie: TIntegerField;
    qPesqMoviEntradaDt_Entrada: TDateTimeField;
    qPesqMoviEntradaDt_Emissao: TDateTimeField;
    qPesqMoviEntradaTipo_Movim: TWideStringField;
    qPesqMoviEntradaVal_Desconto: TFloatField;
    qPesqMoviEntradaVal_Frete: TFloatField;
    qPesqMoviEntradaTotal_Prod: TFloatField;
    qPesqMoviEntradaVal_Entrada: TFloatField;
    qMoviEntradaMoe_id: TAutoIncField;
    qMoviEntradaNum_Serie: TIntegerField;
    qMoviEntradaNum_Nota: TLargeintField;
    qMoviEntradaDt_Entrada: TDateTimeField;
    qMoviEntradaDt_Emissao: TDateTimeField;
    qMoviEntradaTipo_Movim: TWideStringField;
    qMoviEntradaVal_Desconto: TFloatField;
    qMoviEntradaVal_Frete: TFloatField;
    qMoviEntradaTotal_Prod: TFloatField;
    qMoviEntradaVal_Entrada: TFloatField;
    qMoviEntradaForn_id: TIntegerField;
    qMoviEntradaForn_Nome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMoviEntrada: TDmMoviEntrada;

implementation

uses
  UDBConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
