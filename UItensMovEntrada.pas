unit UItensMovEntrada;

interface

Type

  TItensMoviEntrada = class(TObject)
  private
    { private declarations }

      FIdItens : Integer;
      FIdProd : Integer;
      FIdUni : Integer;
      FIdMoe : Integer;
      FImeQuantidade : Double;
      FImeVlrUni : Double;
      FImeVlrTotBruto : Double;
      FImeVlrTotFrete : Double;
      FImeVlrDesconto : Double;
      FImeVlrTotLiquido : Double;

  protected
    { protected declarations }
  public
    { public declarations }
    Property IdItens : Integer read FIdItens write FIdItens;
    Property IdProd : Integer read FIdProd write FIdProd;
    Property IdUni : Integer read FIdUni write FIdUni;
    Property IdMoe : Integer read FIdMoe write FIdMoe;
    Property ImeQuantidade : Double read FImeQuantidade write FImeQuantidade;
    Property ImeVlrUni : Double read FImeVlrUni write FImeVlrUni;
    Property ImeVlrTotBruto : Double read FImeVlrTotBruto write FImeVlrTotBruto;
    Property ImeVlrTotFrete : Double read FImeVlrTotFrete write FImeVlrTotFrete;
    Property ImeVlrDesconto : Double read FImeVlrDesconto write FImeVlrDesconto;
    Property ImeVlrTotLiquido : Double read FImeVlrTotLiquido write FImeVlrTotLiquido;

    Function incluir : boolean;
    function alterar: Boolean;
    function excluir: Boolean;
    function pesquisarId : Boolean;
    function pesquisarMoeId : Boolean;

  published
    { published declarations }
  end;

implementation

Uses
  SysUtils, UDmItensMoviEntrada;

{ TItensMoviEntrada }

function TItensMoviEntrada.alterar: Boolean;
Var
  sqlUpdate,sqlCampos, sqlWhere : String;
begin

 Result := True;

   Try
    sqlCampos :=
      '   UPDATE Itens_Movimentacao_Entrada                 '+
      '     SET Prod_Id = :Prod_Id                          '+
      '        ,Uni_id =  :Uni_id                           '+
      '        ,Ime_Quantidade =  :Ime_Quantidade           '+
      '        ,Ime_Vlr_Unitario = :Ime_Vlr_Unitario        '+
      '        ,Ime_Vlr_Tot_Bruto = :Ime_Vlr_Tot_Bruto      '+
      '        ,Ime_Vlr_Tot_Frete = :Ime_Vlr_Tor_Frete      '+
      '        ,Ime_Vlr_Desconto  = :Ime_Vlr_Desconto       '+
      '        ,Moe_id  = :Moe_id                           '+
      '        ,Ime_Vlr_Tot_Liquido = :Ime_Vlr_Tot_Liquido  ';

      sqlWhere :=
      ' WHERE   Ime_id =  :Ime_id                           ';

      sqlUpdate := sqlCampos + sqlWhere;

      DmItensMoviEntrada.qItensMoviEntrada.Close;
      DmItensMoviEntrada.qItensMoviEntrada.SQL.Text := sqlUpdate;

      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_id').Value := Self.IdItens;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Prod_Id').Value  := Self.IdProd;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Uni_id').Value := Self.IdUni;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Quantidade').Value := Self.ImeQuantidade;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Unitario').Value := Self.ImeVlrUni;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Tot_Bruto').Value  := Self.ImeVlrTotBruto;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Moe_id').Value := Self.IdMoe;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Tot_Liquido').Value  := Self.ImeVlrTotLiquido;

      if Self.ImeVlrDesconto > 0 then
        DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Desconto').Value := Self.ImeVlrDesconto;

      if Self.ImeVlrTotFrete > 0 then
        DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Tot_Frete').Value  := Self.ImeVlrTotFrete;

      DmItensMoviEntrada.qItensMoviEntrada.ExecSQL;

    Except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
      end;

   End;

end;

function TItensMoviEntrada.excluir: Boolean;
var
  sql : string;
begin
 Result := True;

    sql :=
    '   delete from dbo.Itens_Movimentacao_Entrada   '+
    '   where Ime_id = :Ime_id        ';

    DmItensMoviEntrada.qItensMoviEntrada.Close;
    DmItensMoviEntrada.qItensMoviEntrada.SQL.Text := sql;

    DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_id').Value := Self.IdItens;

    DmItensMoviEntrada.qItensMoviEntrada.ExecSQL;


  Try

  Except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;

  End;


end;

function TItensMoviEntrada.incluir: boolean;
var
  sqlInsert,
  sqlCampos,
  sqlValues : string;

begin
  Result := True;

  try
    sqlCampos :=
    ' INSERT INTO Itens_Movimentacao_Entrada       ' +
    '           (Prod_id                ' +
    '           ,Uni_id                 ' +
    '           ,Ime_Quantidade               ' +
    '           ,Ime_Vlr_Unitario               ' +
    '           ,Ime_Vlr_Tot_Bruto             ' +
    '           ,Ime_Vlr_Tot_Frete                ' +
    '           ,Ime_Vlr_Desconto               ' +
    '           ,moe_id               ' +
    '           ,Ime_Vlr_Tot_Liquido              ' ;

    sqlCampos := sqlCampos +
    ' ) ';

    sqlValues :=
    '     VALUES (                        ' +
    '            :Prod_id               ' +
    '           ,:Uni_id                ' +
    '           ,:Ime_Quantidade              ' +
    '           ,:Ime_Vlr_Unitario              ' +
    '          , :Ime_Vlr_Tot_Bruto            ' +
    '          , :Ime_Vlr_Tot_Frete               ' +
    '           ,:Ime_Vlr_Desconto              ' +
    '           ,:moe_id              ' +
    '           ,:Ime_Vlr_Tot_Liquido             ' ;


    sqlValues :=  sqlValues +
    ' ) ';

    sqlInsert := sqlCampos + sqlValues;

    DmItensMoviEntrada.qItensMoviEntrada.Close;
    DmItensMoviEntrada.qItensMoviEntrada.SQL.Text := sqlInsert;

      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Prod_Id').Value  := Self.IdProd;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Uni_id').Value := Self.IdUni;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Quantidade').Value := Self.ImeQuantidade;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Unitario').Value := Self.ImeVlrUni;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Tot_Bruto').Value  := Self.ImeVlrTotBruto;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Moe_id').Value := Self.IdMoe;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Tot_Liquido').Value  := Self.ImeVlrTotLiquido;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Desconto').Value := Self.ImeVlrDesconto;
      DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_Vlr_Tot_Frete').Value  := Self.ImeVlrTotFrete;


    DmItensMoviEntrada.qItensMoviEntrada.ExecSQL;
  Except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;

  End;

end;

function TItensMoviEntrada.pesquisarId: Boolean;
var
  sql : string;

begin
 Result := True;

  Try
    sql :=
      ' SELECT    '+
      ' Ime.*      '+
      ' ,Prod.Prod_Nome   '+
      ' ,Uni.Uni_Descricao  '+
      ' ,Moe.moe_id   '+
      ' ,Forn.Forn_Nome   '+
      ' ,Moe.Num_Nota   '+
      ' from Itens_Movimentacao_Entrada Ime   '+
      ' left outer join Produtos Prod on Prod.Prod_id = Ime.Prod_id '+
      ' left outer join Unidades Uni on Uni.Uni_id = Ime.Uni_id   '+
      ' left outer join Movimento_Entrada Moe on Moe.moe_id = Ime.moe_id  '+
      ' inner join Fornecedor Forn on Forn.Forn_id = Moe.Forn_id  ';

      sql := sql + ' where Ime.Ime_id = :Ime_id ';

       DmItensMoviEntrada.qItensMoviEntrada.Close;
       DmItensMoviEntrada.qItensMoviEntrada.SQL.Text := sql;
       DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('Ime_id').Value := Self.IdItens;
       DmItensMoviEntrada.qItensMoviEntrada.Open;

       Result := not DmItensMoviEntrada.qItensMoviEntrada.IsEmpty;

       if Result then
       begin
         Self.IdProd := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Prod_Id').AsInteger;
         Self.IdUni := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Uni_id').AsInteger;
         self.ImeQuantidade := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Ime_Quantidade').AsFloat;
         Self.ImeVlrUni := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Ime_Vlr_Unitario').AsFloat;
         self.ImeVlrTotBruto := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Ime_Vlr_Tot_Bruto').AsFloat;
         self.IdMoe := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Moe_id').AsInteger;
         self.ImeVlrTotLiquido := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Ime_Vlr_Tot_Liquido').AsFloat;
         self.ImeVlrDesconto := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Ime_Vlr_Desconto').AsFloat;
         self.ImeVlrTotFrete := DmItensMoviEntrada.qItensMoviEntrada.FieldByName('Ime_Vlr_Tot_Frete').AsFloat;
       end;


  Except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;

  End;


end;

function TItensMoviEntrada.pesquisarMoeId: Boolean;
var
  sql : string;

begin
 Result := True;

  Try
    sql :=
      ' SELECT    '+
      ' Ime.*      '+
      ' ,Prod.Prod_Nome   '+
      ' ,Uni.Uni_Descricao  '+
      ' ,Moe.moe_id   '+
      ' ,Forn.Forn_Nome   '+
      ' ,Moe.Num_Nota   '+
      ' from Itens_Movimentacao_Entrada Ime   '+
      ' left outer join Produtos Prod on Prod.Prod_id = Ime.Prod_id '+
      ' left outer join Unidades Uni on Uni.Uni_id = Ime.Uni_id   '+
      ' left outer join Movimento_Entrada Moe on Moe.moe_id = Ime.moe_id  '+
      ' inner join Fornecedor Forn on Forn.Forn_id = Moe.Forn_id  ';

      sql := sql + ' where Moe.moe_id = :moe_id ';

       DmItensMoviEntrada.qItensMoviEntrada.Close;
       DmItensMoviEntrada.qItensMoviEntrada.SQL.Text := sql;
       DmItensMoviEntrada.qItensMoviEntrada.Parameters.ParamByName('moe_id').Value := Self.IdMoe;
       DmItensMoviEntrada.qItensMoviEntrada.Open;

       Result := not DmItensMoviEntrada.qItensMoviEntrada.IsEmpty;

   Except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;

  End;


end;

end.
