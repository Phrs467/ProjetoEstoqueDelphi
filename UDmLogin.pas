unit UDmLogin;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmLogin = class(TDataModule)
    DsPesqUsuario: TDataSource;
    qPesqUsuario: TADOQuery;
    qPesqUsuarioCD_USU: TIntegerField;
    qPesqUsuarioNOME_USU: TStringField;
    qPesqUsuarioLOGIN_USU: TStringField;
    qPesqUsuarioSENHA_USU: TStringField;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    ID_Logado : String;
    Usuario_Logado : string;
  end;

var
  dmLogin: TdmLogin;

implementation

uses
  UDBConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
