unit UDmRelat�rio;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Datasnap.Provider,
  Datasnap.DBClient;

type
  TDmRelat�rio = class(TDataModule)
    DataSetRelatorio: TADODataSet;
    ClientDataSetRelatorio: TClientDataSet;
    DataSetProviderRelatorio: TDataSetProvider;
    ADOConexaoRelatorio: TADOConnection;
    DataSetRelatorioFun_id: TIntegerField;
    DataSetRelatorioFun_Nome: TStringField;
    DataSetRelatorioFun_Senha: TStringField;
    ClientDataSetRelatorioFun_id1: TIntegerField;
    ClientDataSetRelatorioFun_Nome1: TStringField;
    ClientDataSetRelatorioFun_Senha1: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmRelat�rio: TDmRelat�rio;

implementation

uses
  UDBConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
