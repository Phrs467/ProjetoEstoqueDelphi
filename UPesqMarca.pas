unit UPesqMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormPesqMarca = class(TForm)
    Panel1: TPanel;
    RgPesqMarca: TRadioGroup;
    LblPesqMarca: TLabel;
    EdtPesqMarca: TEdit;
    BtPesqGrupo: TButton;
    BtSelecMarca: TButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    procedure RgPesqMarcaClick(Sender: TObject);
    procedure BtPesqGrupoClick(Sender: TObject);
    procedure BtSelecMarcaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FrmIdMarca : Integer;
    FrmNomeMarca : String;
  end;

type
  TDBGridMarca = class(TDBGrid);

var
  FormPesqMarca: TFormPesqMarca;

implementation

uses
  UDmMarca;

{$R *.dfm}

procedure TFormPesqMarca.BtPesqGrupoClick(Sender: TObject);
var
  sql : string;

begin
  sql :=
  ' select ' +
  '  Marc.Marc_id, ' +
  '  Marc.Marc_Nome ' +
  '  from Marca Marc ';

  if RgPesqMarca.ItemIndex = 0 then
  begin
    if EdtPesqMarca.Text = '' then
    begin
      DmMarca.qPesqMarcaObj.Close;
      DmMarca.qPesqMarcaObj.SQL.Text := sql;
      DmMarca.qPesqMarcaObj.Open;
    end
    else
    begin
      sql := sql + ' where Marc.Marc_Nome like ''%' + EdtPesqMarca.Text + '%''';

      DmMarca.qPesqMarcaObj.Close;
      DmMarca.qPesqMarcaObj.SQL.Text := sql;
      DmMarca.qPesqMarcaObj.Open;
    end;
  end;

  if RgPesqMarca.ItemIndex = 1 then
  begin
    if EdtPesqMarca.Text = '' then
    begin
      DmMarca.qPesqMarcaObj.Close;
      DmMarca.qPesqMarcaObj.SQL.Text := sql;
      DmMarca.qPesqMarcaObj.Open;
    end
    else
    begin
      sql := sql + ' where Marc.Marc_id = :Marc_id ';

      DmMarca.qPesqMarcaObj.Close;
      DmMarca.qPesqMarcaObj.SQL.Text := sql;
      DmMarca.qPesqMarcaObj.Parameters.ParamByName('Marc_id').Value := EdtPesqMarca.Text;
      DmMarca.qPesqMarcaObj.Open;
    end;
  end;

  TDBGridMarca(DBGrid1).DefaultRowHeight := 30;
  TDBGridMarca(DBGrid1).ClientHeight := (30 *   TDBGridMarca(DBGrid1).RowCount) +30;
end;

procedure TFormPesqMarca.BtSelecMarcaClick(Sender: TObject);
begin
  FrmIdMarca := 0;
  FrmNomeMarca := '';
   if not DmMarca.qPesqMarcaObj.IsEmpty then
   begin
     FrmIdMarca := DmMarca.qPesqMarcaObjMarc_id .AsInteger;
     FrmNomeMarca := DmMarca.qPesqMarcaObjMarc_Nome.AsString;
   end;
   Self.Close;

end;

procedure TFormPesqMarca.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFormPesqMarca.RgPesqMarcaClick(Sender: TObject);
begin
  if RgPesqMarca.ItemIndex = 0 then
  begin
    LblPesqMarca.Caption := 'Digite seu nome:';
  end;

  if RgPesqMarca.ItemIndex = 1 then
  begin
    LblPesqMarca.Caption := 'Digite seu Id:';
  end;


end;

end.
