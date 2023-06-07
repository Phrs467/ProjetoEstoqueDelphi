unit UMovimentacao;

interface

type

  TMovimentacao = class(TObject)
  private
    { private declarations }
    FIdEntra : Integer;
    FNumSerie : Integer;
    FNumeNota : LongInt;
    FDataEntra : TDate;
    FDataEmissao : TDate;
    FTipoMovi : String;
    FFornId : Integer;
    FValDesconto : Real ;
    FValFrete : Real;
    FValTotalProd : Real;
    FValEntrada : Real;
  protected
    { protected declarations }
  public
    { public declarations }
    Property IdEntra : Integer read FIdEntra write FIdEntra;
    Property NumSerie : Integer read FNumSerie write FNumSerie;
    Property NumNota : LongInt read FNumeNota write FNumeNota;
    Property DataEntra : TDate read FDataEntra write FDataEntra;
    Property DataEmissao : TDate read FDataEmissao write FDataEmissao;
    Property TipoMovi : String read FTipoMovi write FTipoMovi;
    Property FornId : Integer read FFornId write FFornId;
    Property ValDesconto : Real read FValDesconto write FValDesconto;
    Property ValFrete : Real read FValFrete write FValFrete;
    Property ValTotalProd : Real read FValTotalProd write FValTotalProd;
    Property ValEntrada : Real read FValEntrada write FValEntrada;

    Function incluir : boolean;
    function alterar: Boolean;
    function excluir: Boolean;
    function pesquisarIdEntrada: Boolean;

  published
    { published declarations }
  end;

implementation

Uses
  SysUtils, UDmMoviEntrada;

{ TMovimentacao }

function TMovimentacao.alterar: Boolean;
Var
  sqlUpdate, sqlCampos, sqlWhere: String;
begin
 Result := True;

  try
    sqlCampos:=
    ' UPDATE Movimento_Entrada              ' +
    '   Set Num_Serie = :Num_Serie          ' +
    '       ,Num_Nota = :Num_Nota           ' +
    '       ,Dt_Entrada = :Dt_Entrada       ' +
    '       ,Dt_Emissao = :Dt_Emissao       ' +
    '       ,Val_Desconto = :Val_Desconto  ' +
    '       ,Val_Frete = :Val_Frete        ' +
    '       ,Tipo_Movim = :Tipo_Movim       ' +
    '       ,Total_Prod = :Total_Prod       ' +
    '       ,Val_Entrada = :Val_Entrada     ' +
    '       ,Forn_id = :Forn_id             ' ;

    sqlWhere :=
    '   WHERE Moe_id = :Moe_id              ' ;

    sqlUpdate := sqlCampos + sqlWhere;

    DmMoviEntrada.qMoviEntrada.Close;
    DmMoviEntrada.qMoviEntrada.SQL.Text := sqlUpdate;

    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Moe_id').Value := Self.IdEntra;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Num_Serie').Value := Self.NumSerie;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Num_Nota').Value := Self.NumNota;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Dt_Entrada').Value := Self.DataEntra;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Dt_Emissao').Value := Self.DataEmissao;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Tipo_Movim').Value := Self.TipoMovi;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Total_Prod').Value := Self.ValTotalProd;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Val_Entrada').Value := Self.ValEntrada;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Forn_id').Value := Self.FornId;

    if Self.ValDesconto > 0 then
      DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Val_Desconto').Value := Self.ValDesconto;

    if Self.ValFrete > 0 then
      DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Val_Frete').Value := Self.ValFrete;


    DmMoviEntrada.qMoviEntrada.ExecSQL;
  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TMovimentacao.excluir: Boolean;
var
  sql : string;
begin
  Result := True;
  try
    sql :=
    '   delete from dbo.Movimento_Entrada   '+
    '   where Moe_id = :Moe_id        ';

    DmMoviEntrada.qMoviEntrada.Close;
    DmMoviEntrada.qMoviEntrada.SQL.Text := sql;

    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Moe_id').Value := Self.IdEntra;

    DmMoviEntrada.qMoviEntrada.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TMovimentacao.incluir: boolean;
var
  sqlInsert,
  sqlCampos,
  sqlValues : string;

begin
  Result := True;

  try
    sqlCampos :=
    ' INSERT INTO Movimento_Entrada       ' +
    '           (Num_Serie                ' +
    '           ,Num_Nota                 ' +
    '           ,Dt_Entrada               ' +
    '           ,Dt_Emissao               ' +
    '           ,Val_Desconto             ' +
    '           ,Val_Frete                ' +
    '           ,Tipo_Movim               ' +
    '           ,Total_Prod               ' +
    '           ,Val_Entrada              ' +
    '           ,Forn_id                  ' ;

    sqlCampos := sqlCampos +
    ' ) ';

    sqlValues :=
    '     VALUES (                        ' +
    '            :Num_Serie               ' +
    '           ,:Num_Nota                ' +
    '           ,:Dt_Entrada              ' +
    '           ,:Dt_Emissao              ' +
    '          , :Val_Desconto            ' +
    '          , :Val_Frete               ' +
    '           ,:Tipo_Movim              ' +
    '           ,:Total_Prod              ' +
    '           ,:Val_Entrada             ' +
    '           ,:Forn_id                 ' ;

    sqlValues :=  sqlValues +
    ' ) ';

    sqlInsert := sqlCampos + sqlValues;

    DmMoviEntrada.qMoviEntrada.Close;
    DmMoviEntrada.qMoviEntrada.SQL.Text := sqlInsert;

    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Num_Serie').Value := Self.NumSerie;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Num_Nota').Value := Self.NumNota;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Dt_Entrada').Value := Self.DataEntra;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Dt_Emissao').Value := Self.DataEmissao;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Tipo_Movim').Value := Self.TipoMovi;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Total_Prod').Value := Self.ValTotalProd;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Val_Entrada').Value := Self.ValEntrada;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Forn_id').Value := Self.FornId;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Val_Desconto').Value := Self.ValDesconto;
    DmMoviEntrada.qMoviEntrada.Parameters.ParamByName('Val_Frete').Value := Self.ValFrete;


    DmMoviEntrada.qMoviEntrada.ExecSQL;
  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;

end;

function TMovimentacao.pesquisarIdEntrada: Boolean;
var
  sql : string;

begin
  Result := True;

   try

      sql :=
      ' select ' +
      '  Mov. * ' +
      ' ,Forn.Forn_Nome ' +
      ' from Movimento_Entrada Mov ' +
      '   left outer join Fornecedor Forn on Forn.Forn_id = Mov.Forn_id  ';

       sql := sql + ' where Mov.Moe_id = :Moe_id ';

       DmMoviEntrada.qPesqMoviEntrada.Close;
       DmMoviEntrada.qPesqMoviEntrada.SQL.Text := sql;
       DmMoviEntrada.qPesqMoviEntrada.Parameters.ParamByName('Moe_id').Value := Self.IdEntra;
       DmMoviEntrada.qPesqMoviEntrada.Open;

       Result := not DmMoviEntrada.qPesqMoviEntrada.IsEmpty;

       if Result then
       begin
         Self.NumSerie := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Num_Serie').AsInteger;
         Self.NumNota := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Num_Nota').AsInteger;
         self.DataEntra := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Dt_Entrada').AsDateTime;
         self.DataEmissao := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Dt_Emissao').AsDateTime;
         self.TipoMovi := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Tipo_Movim').AsString;
         self.ValTotalProd := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Total_Prod').AsFloat;
         self.ValEntrada := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Val_Entrada').AsFloat;
         self.FornId := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Forn_id').AsInteger;
         self.ValDesconto := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Val_Desconto').AsFloat;
         self.ValFrete := DmMoviEntrada.qPesqMoviEntrada.FieldByName('Val_Frete').AsFloat;

       end;

   except on E: Exception do
     begin
       Result := False;
       raise Exception.Create(E.Message);
     end;
   end;


end;

end.
