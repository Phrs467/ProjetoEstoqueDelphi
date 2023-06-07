unit UDmMarca;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDmMarca = class(TDataModule)
    qMarcaObj: TADOQuery;
    qPesqMarcaObj: TADOQuery;
    dsMarcaObj: TDataSource;
    dsPesqMarcaObj: TDataSource;
    qPesqMarcaObjMarc_id: TAutoIncField;
    qPesqMarcaObjMarc_Nome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMarca: TDmMarca;

implementation

uses
  UDBConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
