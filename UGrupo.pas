unit UGrupo;

interface

type

  TGrupo = class(TObject)
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
    Function alterar : Boolean;
    Function excluir : Boolean;
    Function pesquisarId : Boolean;

  published
    { published declarations }
  end;

implementation

Uses SysUtils, UDmGrupo;

{ TGrupo }

function TGrupo.alterar: Boolean;
var
  sql : string;

begin
  Result := True;

  try
    sql :=
    ' UPDATE Grupo ' +
    '    SET Grup_Nome = :Grup_Nome ' +
    '  WHERE  Grup_id = :Grup_id ';


    DmGrupo.qGrupoObj.Close;
    DmGrupo.qGrupoObj.SQL.Text := sql;

    DmGrupo.qGrupoObj.Parameters.ParamByName('Grup_Nome').Value := Self.Nome;
    DmGrupo.qGrupoObj.Parameters.ParamByName('Grup_id').Value := Self.Id;

    DmGrupo.qGrupoObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;

end;

function TGrupo.excluir: Boolean;
var
  sql : string;
begin
  Result := True;

  try
    sql :=
    '   delete from dbo.Grupo   '+
    '   where Grup_id = :Grup_id        ';

    DmGrupo.qGrupoObj.Close;
    DmGrupo.qGrupoObj.SQL.Text := sql;

    DmGrupo.qGrupoObj.Parameters.ParamByName('Grup_id').Value := Self.Id;

    DmGrupo.qGrupoObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;


end;

function TGrupo.incluir: Boolean;
var
  sql : string;

begin
  Result := True;

  try
    sql :=
    ' INSERT INTO Grupo     ' +
    '           (Grup_Nome )                ' +
    '     VALUES (                       ' +
    '           :Grup_Nome)  ';


    DmGrupo.qGrupoObj.Close;
    DmGrupo.qGrupoObj.SQL.Text := sql;

    DmGrupo.qGrupoObj.Parameters.ParamByName('Grup_Nome').Value := Self.Nome;

    DmGrupo.qGrupoObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;

end;

function TGrupo.pesquisarId: Boolean;
var
  sql : string;

begin
  Result := True;

   try

      sql :=
      ' select ' +
      '  Grup.* ' +
      ' from Grupo Grup ' ;

       sql := sql + ' where Grup.Grup_id = :Grup_id ';

       DmGrupo.qPesqGrupoObj.Close;
       DmGrupo.qPesqGrupoObj.SQL.Text := sql;
       DmGrupo.qPesqGrupoObj.Parameters.ParamByName('Grup_id').Value := Self.Id;
       DmGrupo.qPesqGrupoObj.Open;

       Result := not DmGrupo.qPesqGrupoObj.IsEmpty;

       if Result then
       begin
         Self.Nome := DmGrupo.qPesqGrupoObj.FieldByName('Grup_Nome').AsString;

       end;

   except on E: Exception do
     begin
       Result := False;
       raise Exception.Create(E.Message);
     end;
   end;


end;

end.
