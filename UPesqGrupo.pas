unit UPesqGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormPesqGrupo = class(TForm)
    RgPesqGrupo: TRadioGroup;
    LblPesqGrupo: TLabel;
    EdtPesqGrupo: TEdit;
    BtPesqGrupo: TButton;
    BtSelecPesqGrupo: TButton;
    Panel1: TPanel;
    DBGridPesqGrupo: TDBGrid;
    Panel2: TPanel;
    procedure RgPesqGrupoClick(Sender: TObject);
    procedure BtPesqGrupoClick(Sender: TObject);
    procedure BtSelecPesqGrupoClick(Sender: TObject);
    procedure DBGridPesqGrupoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
    FrmNomeGrupo : String;
    FrmIdGrupo : Integer;
  end;

type
  TDBGridGrupo = class(TDBGrid);

var
  FormPesqGrupo: TFormPesqGrupo;

implementation

uses
  UDmGrupo;

{$R *.dfm}

procedure TFormPesqGrupo.BtPesqGrupoClick(Sender: TObject);

var
  sql : string;

begin
  sql :=
  ' select ' +
  '  Grup.Grup_id, ' +
  '  Grup.Grup_Nome ' +
  '  from Grupo Grup ';

  if RgPesqGrupo.ItemIndex = 0 then
  begin
    if EdtPesqGrupo.Text = '' then
    begin
      DmGrupo.qPesqGrupoObj.Close;
      DmGrupo.qPesqGrupoObj.SQL.Text := sql;
      DmGrupo.qPesqGrupoObj.Open;
    end
    else
    begin
      sql := sql + ' where Grup.Grup_Nome like ''%' + EdtPesqGrupo.Text + '%''';

      DmGrupo.qPesqGrupoObj.Close;
      DmGrupo.qPesqGrupoObj.SQL.Text := sql;
      DmGrupo.qPesqGrupoObj.Open;
    end;
  end;

  if RgPesqGrupo.ItemIndex = 1 then
  begin
    if EdtPesqGrupo.Text = '' then
    begin
      DmGrupo.qPesqGrupoObj.Close;
      DmGrupo.qPesqGrupoObj.SQL.Text := sql;
      DmGrupo.qPesqGrupoObj.Open;
    end
    else
    begin
      sql := sql + ' where Grup.Grup_id = :Grup_id ';

      DmGrupo.qPesqGrupoObj.Close;
      DmGrupo.qPesqGrupoObj.SQL.Text := sql;
      DmGrupo.qPesqGrupoObj.Parameters.ParamByName('Grup_id').Value := EdtPesqGrupo.Text;
      DmGrupo.qPesqGrupoObj.Open;
    end;
  end;

  TDBGridGrupo(DBGridPesqGrupo).DefaultRowHeight := 30;
  TDBGridGrupo(DBGridPesqGrupo).ClientHeight := (30 *   TDBGridGrupo(DBGridPesqGrupo).RowCount) +30;
end;

procedure TFormPesqGrupo.BtSelecPesqGrupoClick(Sender: TObject);
begin
  FrmIdGrupo := 0;
  FrmNomeGrupo := '';
   if not DmGrupo.qPesqGrupoObj.IsEmpty then
   begin
     FrmIdGrupo := DmGrupo.qPesqGrupoObjGrup_id .AsInteger;
     FrmNomeGrupo := DmGrupo.qPesqGrupoObjGrup_Nome.AsString;
   end;
   Self.Close;
end;

procedure TFormPesqGrupo.DBGridPesqGrupoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(DBGridPesqGrupo.DataSource.DataSet.RecNo) then
    DBGridPesqGrupo.Canvas.Brush.Color := $00E9E9E9
  else
    DBGridPesqGrupo.Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    DBGridPesqGrupo.Canvas.Brush.Color := clBlue;
    DBGridPesqGrupo.Canvas.Font.Color := clWhite;
    DBGridPesqGrupo.Canvas.Font.Style := [fsBold];
  end;

  DBGridPesqGrupo.Canvas.FillRect(Rect);
  DBGridPesqGrupo.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  DBGridPesqGrupo.Canvas.TextRect(Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText);
end;

procedure TFormPesqGrupo.RgPesqGrupoClick(Sender: TObject);
begin
  if RgPesqGrupo.ItemIndex = 0 then
  begin
    LblPesqGrupo.Caption := 'Digite seu nome:';
  end;

  if RgPesqGrupo.ItemIndex = 1 then
  begin
    LblPesqGrupo.Caption := 'Digite seu Id:';
  end;
end;

end.
