unit UFornecedor;

interface

Type
  TFornecedor = class(TObject)
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
  UDmFornecedor, SysUtils, UPesqFornecedor;

{ TFornecedor }

function TFornecedor.alterar: Boolean;
var
  sql : string;

begin
  Result := True;

  try

    sql :=
    ' UPDATE Fornecedor ' +
    '    SET Forn_Nome = :Forn_Nome ' +
    '  WHERE  Forn_id = :Forn_id ';


    DmFornecedor.qFornecedorObj.Close;
    DmFornecedor.qFornecedorObj.SQL.Text := sql;

    DmFornecedor.qFornecedorObj.Parameters.ParamByName('Forn_Nome').Value := Self.Nome;;
    DmFornecedor.qFornecedorObj.Parameters.ParamByName('Forn_id').Value := Self.Id;

    DmFornecedor.qFornecedorObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;

end;

function TFornecedor.excluir: Boolean;
var
  sql : string;
begin
  Result := True;

  try
    sql :=
    '   delete from dbo.Fornecedor   '+
    '   where Forn_id = :Forn_id        ';

    DmFornecedor.qFornecedorObj.Close;
    DmFornecedor.qFornecedorObj.SQL.Text := sql;

    DmFornecedor.qFornecedorObj.Parameters.ParamByName('Forn_id').Value := Self.Id;

    DmFornecedor.qFornecedorObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TFornecedor.incluir: Boolean;
var
  sql : string;

begin
  Result := True;

  try
    sql :=
    ' INSERT INTO Fornecedor     ' +
    '           (Forn_Nome)                ' +
    '     VALUES (                       ' +
    '           :Forn_Nome)  ';


    DmFornecedor.qFornecedorObj.Close;
    DmFornecedor.qFornecedorObj.SQL.Text := sql;

    DmFornecedor.qFornecedorObj.Parameters.ParamByName('Forn_Nome').Value := Self.Nome;


    DmFornecedor.qFornecedorObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;


end;

function TFornecedor.pesquisarId: Boolean;
var
  sql : string;

begin
  Result := True;

   try

      sql :=
      ' select ' +
      '  forn.* ' +
      ' from Fornecedor forn ' ;

       sql := sql + ' where forn.Forn_id = :Forn_id ';

       DmFornecedor.qFornecedorObj.Close;
       DmFornecedor.qFornecedorObj.SQL.Text := sql;
       DmFornecedor.qFornecedorObj.Parameters.ParamByName('Forn_id').Value := Self.Id;
       DmFornecedor.qFornecedorObj.Open;

       Result := not DmFornecedor.qFornecedorObj.IsEmpty;

       if Result then
       begin
         Self.Nome := DmFornecedor.qFornecedorObj.FieldByName('Forn_Nome').AsString;
       end;

   except on E: Exception do
     begin
       Result := False;
       raise Exception.Create(E.Message);
     end;
   end;

end;

end.
