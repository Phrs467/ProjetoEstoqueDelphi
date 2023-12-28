unit UPesqUnidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormPesqUnidades = class(TForm)
    PanelPesqUni: TPanel;
    RgPesqUni: TRadioGroup;
    LblPesqUni: TLabel;
    EdtPesqUni: TEdit;
    BtPesqUni: TButton;
    DBGridPesqUni: TDBGrid;
    BtSelecUnidades: TButton;
    Panel1: TPanel;
    procedure RgPesqUniClick(Sender: TObject);
    procedure BtPesqUniClick(Sender: TObject);
    procedure BtSelecUnidadesClick(Sender: TObject);
    procedure DBGridPesqUniDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FrmIdUnidades : Integer;
    FrmDescUnidades : string;
  end;

type
  TDBGridUnidades = class(TDBGrid);

var
  FormPesqUnidades: TFormPesqUnidades;

implementation

uses
  UDmUnidades, UDmProdutos;

{$R *.dfm}

procedure TFormPesqUnidades.BtPesqUniClick(Sender: TObject);
var
  sql : string;
begin
sql :=
  ' select ' +
  '  Uni.Uni_id, ' +
  '  Uni.Uni_Descricao ' +
  '  From Unidades Uni ' ;

  if RgPesqUni.ItemIndex = 0 then
  begin
    if EdtPesqUni.Text = '' then
    begin
      DmUnidades.qPesqUnidades.Close;
      DmUnidades.qPesqUnidades.SQL.Text := sql;
      DmUnidades.qPesqUnidades.Open;
    end
    else
    begin
      sql := sql + ' where Uni.Uni_Descricao like ''%' + EdtPesqUni.Text + '%''';

      DmUnidades.qPesqUnidades.Close;
      DmUnidades.qPesqUnidades.SQL.Text := sql;
      DmUnidades.qPesqUnidades.Open;
    end;
  end;

  if RgPesqUni.ItemIndex = 1 then
  begin
    if EdtPesqUni.Text = '' then
    begin
      DmUnidades.qPesqUnidades.Close;
      DmUnidades.qPesqUnidades.SQL.Text := sql;
      DmUnidades.qPesqUnidades.Open;
    end
    else
    begin
      sql := sql + ' where Uni.Uni_id = :Uni_id ';

      DmUnidades.qPesqUnidades.Close;
      DmUnidades.qPesqUnidades.SQL.Text := sql;
      DmUnidades.qPesqUnidades.Parameters.ParamByName('Uni_id').Value := EdtPesqUni.Text;
      DmUnidades.qPesqUnidades.Open;
    end;
  end;

  TDBGridUnidades(DBGridPesqUni).DefaultRowHeight := 30;
  TDBGridUnidades(DBGridPesqUni).ClientHeight := (30 *   TDBGridUnidades(DBGridPesqUni).RowCount) +30;
end;

procedure TFormPesqUnidades.BtSelecUnidadesClick(Sender: TObject);
begin
  FrmIdUnidades := 0;
  FrmDescUnidades := '';
   if not DmUnidades.qPesqUnidades.IsEmpty then
   begin
     FrmIdUnidades := DmUnidades.qPesqUnidadesUni_id.AsInteger;
     FrmDescUnidades := DmUnidades.qPesqUnidadesUni_Descricao.AsString;
   end;
   Self.Close;
end;

procedure TFormPesqUnidades.DBGridPesqUniDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(DBGridPesqUni.DataSource.DataSet.RecNo) then
    DBGridPesqUni.Canvas.Brush.Color := $00E9E9E9
  else
    DBGridPesqUni.Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    DBGridPesqUni.Canvas.Brush.Color := clBlue;
    DBGridPesqUni.Canvas.Font.Color := clWhite;
    DBGridPesqUni.Canvas.Font.Style := [fsBold];
  end;

  DBGridPesqUni.Canvas.FillRect(Rect);
  DBGridPesqUni.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  DBGridPesqUni.Canvas.TextRect(Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText);
end;

procedure TFormPesqUnidades.RgPesqUniClick(Sender: TObject);
begin
    if RgPesqUni.ItemIndex = 0 then
    begin
      LblPesqUni.Caption := 'Digite a descri��o:';
    end;

  if RgPesqUni.ItemIndex = 1 then
    begin
      LblPesqUni.Caption := 'Digite seu ID';
    end;

end;

end.
