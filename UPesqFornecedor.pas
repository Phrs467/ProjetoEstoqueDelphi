unit UPesqFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TFormPesqForn = class(TForm)
    PanelPesqForn: TPanel;
    RgPesqForn: TRadioGroup;
    LblPesqForn: TLabel;
    EdtPesqForn: TEdit;
    BtPesqForn: TButton;
    BtSelecionarForn: TButton;
    Panel1: TPanel;
    DBGridPesqForn: TDBGrid;
    procedure RgPesqFornClick(Sender: TObject);
    procedure BtPesqFornClick(Sender: TObject);
    procedure BtSelecionarFornClick(Sender: TObject);
    procedure DBGridPesqFornDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
    FrmNomeForn : string;
    FrmIdForn : Integer;
  end;

type
  TDBGridFornecedor = class(TDBGrid);

var
  FormPesqForn: TFormPesqForn;

implementation

uses
  UDmFornecedor;

{$R *.dfm}



procedure TFormPesqForn.BtPesqFornClick(Sender: TObject);
var
  sql : string;
begin
sql :=
  ' select ' +
  '  Forn.Forn_id, ' +
  '  Forn.Forn_Nome ' +
  '  from Fornecedor Forn ' ;

  if RgPesqForn.ItemIndex = 0 then
  begin
    if EdtPesqForn.Text = '' then
    begin
      DmFornecedor.qPesqFornecedor.Close;
      DmFornecedor.qPesqFornecedor.SQL.Text := sql;
      DmFornecedor.qPesqFornecedor.Open;
    end
    else
    begin
      sql := sql + ' where Forn.Forn_Nome like ''%' + EdtPesqForn.Text + '%''';

      DmFornecedor.qPesqFornecedor.Close;
      DmFornecedor.qPesqFornecedor.SQL.Text := sql;
      DmFornecedor.qPesqFornecedor.Open;
    end;
  end;

  if RgPesqForn.ItemIndex = 1 then
  begin
    if EdtPesqForn.Text = '' then
    begin
      DmFornecedor.qPesqFornecedor.Close;
      DmFornecedor.qPesqFornecedor.SQL.Text := sql;
      DmFornecedor.qPesqFornecedor.Open;
    end
    else
    begin
      sql := sql + ' where Forn.Forn_id = :Forn_id ';

      DmFornecedor.qPesqFornecedor.Close;
      DmFornecedor.qPesqFornecedor.SQL.Text := sql;
      DmFornecedor.qPesqFornecedor.Parameters.ParamByName('Forn_id').Value := EdtPesqForn.Text;
      DmFornecedor.qPesqFornecedor.Open;
    end;
  end;

  TDBGridFornecedor(DBGridPesqForn).DefaultRowHeight := 30;
  TDBGridFornecedor(DBGridPesqForn).ClientHeight := (30 *   TDBGridFornecedor(DBGridPesqForn).RowCount) +30;
end;

procedure TFormPesqForn.BtSelecionarFornClick(Sender: TObject);
begin
  FrmIdForn := 0;
  FrmNomeForn := '';
   if not DmFornecedor.qFornecedor.IsEmpty then
   begin
     FrmIdForn := DmFornecedor.qPesqFornecedorForn_id.AsInteger;
     FrmNomeForn := DmFornecedor.qPesqFornecedorForn_Nome.AsString;
   end;
   Self.Close;
end;

procedure TFormPesqForn.DBGridPesqFornDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(DBGridPesqForn.DataSource.DataSet.RecNo) then
    DBGridPesqForn.Canvas.Brush.Color := $00E9E9E9
  else
    DBGridPesqForn.Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    DBGridPesqForn.Canvas.Brush.Color := clBlue;
    DBGridPesqForn.Canvas.Font.Color := clWhite;
    DBGridPesqForn.Canvas.Font.Style := [fsBold];
  end;

  DBGridPesqForn.Canvas.FillRect(Rect);
  DBGridPesqForn.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  DBGridPesqForn.Canvas.TextRect(Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText);
end;

procedure TFormPesqForn.RgPesqFornClick(Sender: TObject);
begin
    if RgPesqForn.ItemIndex = 0 then
    begin
      LblPesqForn.Caption := 'Digite o nome:';
    end;

  if RgPesqForn.ItemIndex = 1 then
    begin
      LblPesqForn.Caption := 'Digite seu ID';
    end;
end;

end.
