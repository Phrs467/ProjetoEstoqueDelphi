unit UPesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormPesqProdutos = class(TForm)
    PanelPesqProduto: TPanel;
    RgPesqProduto: TRadioGroup;
    LblPesqProd: TLabel;
    EdtPesqProd: TEdit;
    BtPesquisarProd: TButton;
    DBGrid1: TDBGrid;
    BtSelecionarProd: TButton;
    Panel1: TPanel;
    procedure RgPesqProdutoClick(Sender: TObject);
    procedure BtPesquisarProdClick(Sender: TObject);
    procedure BtSelecionarProdClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FrmNomeProduto : string;
    FrmIdProduto : Integer;
  end;

type
  TDBGridProduto = class(TDBGrid);

var
  FormPesqProdutos: TFormPesqProdutos;

implementation

uses
  UDmProdutos, UDmFuncionario;

{$R *.dfm}

procedure TFormPesqProdutos.BtPesquisarProdClick(Sender: TObject);
var
 sql : string;

begin

  sql :=
  ' select ' +
  '  Prod.Prod_id, ' +
  '  Prod.Prod_Nome, ' +
  '  Prod.Uni_id, ' +
  '  Uni.Uni_Descricao, ' +
  '  Prod.Grup_id, ' +
  '  Grup.Grup_Nome, ' +
  '  Prod.Marc_id,  ' +
  '  Marc.Marc_Nome  ' +
  '  From Produtos Prod ' +
  '  left outer join Unidades Uni On Uni.Uni_id = Prod.Uni_id ' +
  '  left outer join Grupo Grup On Grup.Grup_id = Prod.Grup_id '+
  '  left outer join Marca Marc On Marc.Marc_id = Prod.Marc_id ';

  if RgPesqProduto.ItemIndex = 0 then
  begin
    if EdtPesqProd.Text = '' then
    begin
      DmProdutos.qPesqProd.Close;
      DmProdutos.qPesqProd.SQL.Text := sql;
      DmProdutos.qPesqProd.Open;
    end
    else
    begin
      sql := sql + ' where Prod.Prod_Nome like ''%' + EdtPesqProd.Text + '%''';

      DmProdutos.qPesqProd.Close;
      DmProdutos.qPesqProd.SQL.Text := sql;
      DmProdutos.qPesqProd.Open;
    end;
  end;

  if RgPesqProduto.ItemIndex = 1 then
  begin
    if EdtPesqProd.Text = '' then
    begin
      DmProdutos.qPesqProd.Close;
      DmProdutos.qPesqProd.SQL.Text := sql;
      DmProdutos.qPesqProd.Open;
    end
    else
    begin
      sql := sql + ' where Prod.Prod_id = :Prod_id ';

      DmProdutos.qPesqProd.Close;
      DmProdutos.qPesqProd.SQL.Text := sql;
      DmProdutos.qPesqProd.Parameters.ParamByName('Prod_id').Value := EdtPesqProd.Text;
      DmProdutos.qPesqProd.Open;
    end;
  end;

  TDBGridProduto(DBGrid1).DefaultRowHeight := 30;
  TDBGridProduto(DBGrid1).ClientHeight := (30 *   TDBGridProduto(DBGrid1).RowCount) +30;
end;

procedure TFormPesqProdutos.BtSelecionarProdClick(Sender: TObject);
begin
  FrmIdProduto := 0;
  FrmNomeProduto := '';
   if not DmProdutos.qPesqProd.IsEmpty then
   begin
     FrmIdProduto := DmProdutos.qPesqProdProd_id.AsInteger;
     FrmNomeProduto := DmProdutos.qPesqProdProd_Nome.AsString;
   end;
   Self.Close;
end;

procedure TFormPesqProdutos.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFormPesqProdutos.RgPesqProdutoClick(Sender: TObject);
begin
  if RgPesqProduto.ItemIndex = 0 then
    begin
      LblPesqProd.Caption := 'Digite seu nome';
    end;

  if RgPesqProduto.ItemIndex = 1 then
    begin
      LblPesqProd.Caption := 'Digite seu ID';
    end;

end;

end.
