unit UDmDepartamentos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmDepartamentos = class(TDataModule)
    qDepartamentos: TADOQuery;
    dsDepartamentos: TDataSource;
    DsPesqDepartamentos: TDataSource;
    qPesqDepartamentos: TADOQuery;
    qPesqDepartamentosDp_id: TIntegerField;
    qPesqDepartamentosDp_Nome: TStringField;
    DsPesqDeparObj: TDataSource;
    qPesqDeparObj: TADOQuery;
    dsDepartamentoObj: TDataSource;
    qDepartamentoObj: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function RetornaNomeDepartamento(pDepId: Integer): string;
  end;

var
  dmDepartamentos: TdmDepartamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDBConexao;

{$R *.dfm}

{ TdmDepartamentos }

function TdmDepartamentos.RetornaNomeDepartamento(pDepId: Integer): string;
var
  sql : string;
begin
  Result := '';

  sql :=
  'select ' +
  ' dep.Dp_id,' +
  ' dep.Dp_Nome ' +
  ' from Departamentos dep ';

  sql := sql + ' where dep.Dp_id = :Dp_id ';

  qPesqDepartamentos.Close;
  qPesqDepartamentos.SQL.Text := sql;
  qPesqDepartamentos.Parameters.ParamByName('Dp_id').Value := pDepId;
  qPesqDepartamentos.Open;

  if not qPesqDepartamentos.IsEmpty then
  begin
    Result := qPesqDepartamentos.FieldByName('Dp_Nome').AsString;
  end;

end;

end.
