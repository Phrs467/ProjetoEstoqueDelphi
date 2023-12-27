unit UPesqDepartamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormPesqDepartamento = class(TForm)
    PanelPesqDepar: TPanel;
    RgPesqDepartamentos: TRadioGroup;
    LblPesqNomeDepar: TLabel;
    EdtPesqNomeDepar: TEdit;
    BtPesqNomeDepar: TButton;
    DBGrid1: TDBGrid;
    btSelecionar: TButton;
    Panel1: TPanel;
    procedure RgPesqDepartamentosClick(Sender: TObject);
    procedure BtPesqNomeDeparClick(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FrmIdDepartamento: Integer;
    FrmNomeDepartamento: string;
  end;

type
  TDBGridDepartamento = class(TDBGrid);

var
  FormPesqDepartamento: TFormPesqDepartamento;

implementation

uses
  UDmDepartamentos;

{$R *.dfm}

procedure TFormPesqDepartamento.BtPesqNomeDeparClick(Sender: TObject);
var
  sql : string;

begin
  sql :=
  'select ' +
      'dep.Dp_id,' +
      'dep.Dp_Nome ' +
  ' from Departamentos dep ';

    if RgPesqDepartamentos.ItemIndex = 0 then
  begin
    if EdtPesqNomeDepar.Text = '' then
    begin
      dmDepartamentos.qPesqDepartamentos.Close;
      dmDepartamentos.qPesqDepartamentos.SQL.Text := sql;
      dmDepartamentos.qPesqDepartamentos.Open;
    end
    else
    begin
      sql := sql + ' where dep.Dp_Nome like ''%' + EdtPesqNomeDepar.Text + '%''';

      dmDepartamentos.qPesqDepartamentos.Close;
      dmDepartamentos.qPesqDepartamentos.SQL.Text := sql;
      dmDepartamentos.qPesqDepartamentos.Open;
    end;
  end;

    if RgPesqDepartamentos.ItemIndex = 1 then
  begin
    if EdtPesqNomeDepar.Text = '' then
    begin
      dmDepartamentos.qPesqDepartamentos.Close;
      dmDepartamentos.qPesqDepartamentos.SQL.Text := sql;
      dmDepartamentos.qPesqDepartamentos.Open;
    end
    else
    begin
      sql := sql + ' where dep.Dp_id = :Dp_id ';

      dmDepartamentos.qPesqDepartamentos.Close;
      dmDepartamentos.qPesqDepartamentos.SQL.Text := sql;
      dmDepartamentos.qPesqDepartamentos.Parameters.ParamByName('Dp_id').Value := EdtPesqNomeDepar.Text;
      dmDepartamentos.qPesqDepartamentos.Open;
    end;
  end;

  TDBGridDepartamento(DBGrid1).DefaultRowHeight := 30;
  TDBGridDepartamento(DBGrid1).ClientHeight := (30 *   TDBGridDepartamento(DBGrid1).RowCount) +30;  
end;

procedure TFormPesqDepartamento.btSelecionarClick(Sender: TObject);
begin
  FrmIdDepartamento := 0;
  FrmNomeDepartamento := '';
   if not dmDepartamentos.qPesqDepartamentos.IsEmpty then
   begin
     FrmIdDepartamento := dmDepartamentos.qPesqDepartamentosDp_id.AsInteger;
     FrmNomeDepartamento := dmDepartamentos.qPesqDepartamentosDp_Nome.AsString;
   end;
   Self.Close;
end;

procedure TFormPesqDepartamento.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFormPesqDepartamento.RgPesqDepartamentosClick(Sender: TObject);
begin
  if RgPesqDepartamentos.ItemIndex = 0 then
  begin
      LblPesqNomeDepar.Caption := 'Digite seu nome';
  end;

  if RgPesqDepartamentos.ItemIndex = 1 then
  begin
      LblPesqNomeDepar.Caption := 'Digite seu ID';
  end;
end;

end.
