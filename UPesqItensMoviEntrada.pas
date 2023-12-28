unit UPesqItensMoviEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormPesqItensMoviEntrada = class(TForm)
    PanelPesqItensMoviEntra: TPanel;
    RgPesqItensMoviEntra: TRadioGroup;
    EdtPesqItensMoviEntra: TEdit;
    LblPesqItensMoviEntra: TLabel;
    BtPesqItensMoviEntra: TButton;
    BtSelecionarItensMoviEntrada: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    procedure RgPesqItensMoviEntraClick(Sender: TObject);
    procedure BtPesqItensMoviEntraClick(Sender: TObject);
    procedure BtSelecionarItensMoviEntradaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FrmIdItens : Integer;
    FrmNomeProd : String;
    FrmIdMov : Integer;
  end;

type
  TDBGridItensMoviEntrada = class(TDBGrid);

var
  FormPesqItensMoviEntrada: TFormPesqItensMoviEntrada;

implementation

uses
  UDmItensMoviEntrada;

{$R *.dfm}

procedure TFormPesqItensMoviEntrada.BtPesqItensMoviEntraClick(Sender: TObject);
var
  sql : string;

begin

  sql :=
  ' select '+
  '   Ime.*      '+
  '  ,Prod.Prod_Nome '+
  '  ,Uni.Uni_Descricao '+
  '  ,Moe.moe_id '+
  '  ,Forn.Forn_Nome '+
  '  ,Moe.Num_Nota '+
  '  From Itens_Movimentacao_Entrada Ime '+
  '  left outer join Produtos Prod on Prod.Prod_id = Ime.Prod_id '+
  '  left outer join Unidades Uni on Uni.Uni_id = Ime.Uni_id '+
  '  left outer join Movimento_Entrada Moe on Moe.moe_id = Ime.moe_id '+
  '  inner join Fornecedor Forn on Forn.Forn_id = Moe.Forn_id ';

  if RgPesqItensMoviEntra.ItemIndex = 0 then
  begin
    if EdtPesqItensMoviEntra.Text = '' then
    begin
      DmItensMoviEntrada.qPesqItensMoviEntrada.Close;
      DmItensMoviEntrada.qPesqItensMoviEntrada.SQL.Text := sql;
      DmItensMoviEntrada.qPesqItensMoviEntrada.Open;
    end
    else
    begin
      sql := sql + ' where Ime.Ime_id = :Ime_id ';

      DmItensMoviEntrada.qPesqItensMoviEntrada.Close;
      DmItensMoviEntrada.qPesqItensMoviEntrada.SQL.Text := sql;
      DmItensMoviEntrada.qPesqItensMoviEntrada.Parameters.ParamByName('Ime_id').Value := EdtPesqItensMoviEntra.Text;
      DmItensMoviEntrada.qPesqItensMoviEntrada.Open;
    end;
  end;

  if RgPesqItensMoviEntra.ItemIndex = 1 then
  begin
    if EdtPesqItensMoviEntra.Text = '' then
    begin
      DmItensMoviEntrada.qPesqItensMoviEntrada.Close;
      DmItensMoviEntrada.qPesqItensMoviEntrada.SQL.Text := sql;
      DmItensMoviEntrada.qPesqItensMoviEntrada.Open;
    end
    else
    begin
      sql := sql + ' where Prod.Prod_Nome like ''%' + EdtPesqItensMoviEntra.Text + '%''';

      DmItensMoviEntrada.qPesqItensMoviEntrada.Close;
      DmItensMoviEntrada.qPesqItensMoviEntrada.SQL.Text := sql;
      DmItensMoviEntrada.qPesqItensMoviEntrada.Open;
    end;
  end;

  if RgPesqItensMoviEntra.ItemIndex = 2 then
  begin
    if EdtPesqItensMoviEntra.Text = '' then
    begin
      DmItensMoviEntrada.qPesqItensMoviEntrada.Close;
      DmItensMoviEntrada.qPesqItensMoviEntrada.SQL.Text := sql;
      DmItensMoviEntrada.qPesqItensMoviEntrada.Open;
    end
    else
    begin
      sql := sql + ' where Moe.moe_id = :moe_id ';

      DmItensMoviEntrada.qPesqItensMoviEntrada.Close;
      DmItensMoviEntrada.qPesqItensMoviEntrada.SQL.Text := sql;
      DmItensMoviEntrada.qPesqItensMoviEntrada.Parameters.ParamByName('moe_id').Value := EdtPesqItensMoviEntra.Text;
      DmItensMoviEntrada.qPesqItensMoviEntrada.Open;
    end;
  end;

  TDBGridItensMoviEntrada(DBGrid1).DefaultRowHeight := 30;
  TDBGridItensMoviEntrada(DBGrid1).ClientHeight := (30 *   TDBGridItensMoviEntrada(DBGrid1).RowCount) +30;
end;

procedure TFormPesqItensMoviEntrada.BtSelecionarItensMoviEntradaClick(
  Sender: TObject);
begin
  FrmIdItens := 0;
  FrmIdMov := 0;
  FrmNomeProd := '';
  if not DmItensMoviEntrada.qPesqItensMoviEntrada.IsEmpty then
  begin
     FrmIdItens := DmItensMoviEntrada.qPesqItensMoviEntradaIme_id.AsInteger;
     FrmIdMov := DmItensMoviEntrada.qPesqItensMoviEntradamoe_id.AsInteger;
     FrmNomeProd := DmItensMoviEntrada.qPesqItensMoviEntradaForn_Nome.AsString;
  end;
  Self.Close;
end;

procedure TFormPesqItensMoviEntrada.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(DBGrid1.DataSource.DataSet.RecNo) then
    DBGrid1.Canvas.Brush.Color := $00E9E9E9
  else
    DBGrid1.Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    DBGrid1.Canvas.Brush.Color := clBlue;
    DBGrid1.Canvas.Font.Color := clWhite;
    DBGrid1.Canvas.Font.Style := [fsBold];
  end;

  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  DBGrid1.Canvas.TextRect(Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText);
end;

procedure TFormPesqItensMoviEntrada.RgPesqItensMoviEntraClick(Sender: TObject);
begin
  if RgPesqItensMoviEntra.ItemIndex = 0 then
  begin
    LblPesqItensMoviEntra.Caption := 'Digite seu ID:'
  end;

  if RgPesqItensMoviEntra.ItemIndex = 1 then
  begin
    LblPesqItensMoviEntra.Caption := 'Digite o Nome do produto:'
  end;

  if RgPesqItensMoviEntra.ItemIndex = 2 then
  begin
    LblPesqItensMoviEntra.Caption := 'Digite o ID de movimentação: '
  end;

end;

end.
