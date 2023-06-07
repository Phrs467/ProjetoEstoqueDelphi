unit UDepartamento;

interface

Type
  TDepartamento = class(TObject)
  private
    { private declarations }
    FId : Integer;
    FNome : String;

  protected
    { protected declarations }
  public
    { public declarations }
    Property Id : Integer read FId write FId;
    Property Nome : String read FNome write FNome;

    Function incluir : Boolean;
    function alterar: Boolean;
    function excluir: Boolean;
    function pesquisarId: Boolean;

  published
    { published declarations }
  end;

implementation

uses
  UDmDepartamentos, SysUtils;

{ TDepartamento }

function TDepartamento.alterar: Boolean;
var
  sql : string;
begin
  Result := True;

  try
    sql :=
    ' UPDATE Departamentos ' +
    '    SET Dp_Nome = :Dp_Nome ' +
    '  WHERE  Dp_id = :Dp_id ';


    dmDepartamentos.qDepartamentoObj.Close;
    dmDepartamentos.qDepartamentoObj.SQL.Text := sql;

    dmDepartamentos.qDepartamentoObj.Parameters.ParamByName('Dp_Nome').Value := Self.Nome;
    dmDepartamentos.qDepartamentoObj.Parameters.ParamByName('Dp_id').Value := Self.Id;


    dmDepartamentos.qDepartamentoObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TDepartamento.excluir: Boolean;
  var
  sql : string;
begin
  Result := True;

  try
    sql :=
    '   delete from dbo.Departamentos   '+
    '   where Dp_id = :Dp_id        ';

    dmDepartamentos.qDepartamentoObj.Close;
    dmDepartamentos.qDepartamentoObj.SQL.Text := sql;

    dmDepartamentos.qDepartamentoObj.Parameters.ParamByName('Dp_id').Value := Self.Id;

    dmDepartamentos.qDepartamentoObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;

end;

function TDepartamento.incluir: Boolean;
var
  sql : string;

begin
  Result := True;

  try
    sql :=
    ' INSERT INTO Departamentos     ' +
    '           (Dp_Nome)                ' +
    '     VALUES (                       ' +
    '           :Dp_Nome)  ';

    dmDepartamentos.qDepartamentoObj.Close;
    dmDepartamentos.qDepartamentoObj.SQL.Text := sql;

    dmDepartamentos.qDepartamentoObj.Parameters.ParamByName('Dp_Nome').Value := Self.Nome;


    dmDepartamentos.qDepartamentoObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;

end;

function TDepartamento.pesquisarId: Boolean;
var
  sql : string;

begin
  Result := True;

   try

      sql :=
      ' select ' +
      '  Dep.* ' +
      ' from Departamentos Dep ' ;

       sql := sql + ' where Dep.Dp_id = :Dp_id ';

       dmDepartamentos.qDepartamentoObj.Close;
       dmDepartamentos.qDepartamentoObj.SQL.Text := sql;
       dmDepartamentos.qDepartamentoObj.Parameters.ParamByName('Dp_id').Value := Self.Id;
       dmDepartamentos.qDepartamentoObj.Open;

       Result := not dmDepartamentos.qDepartamentoObj.IsEmpty;

       if Result then
       begin
         Self.Nome := dmDepartamentos.qDepartamentoObj.FieldByName('Dp_Nome').AsString;
         Self.Id := dmDepartamentos.qDepartamentoObj.FieldByName('Dp_id').AsInteger;
       end;

   except on E: Exception do
     begin
       Result := False;
       raise Exception.Create(E.Message);
     end;
   end;

end;

end.
