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
    procedure RgPesqMarcaClick(Sender: TObject);
    procedure BtPesqGrupoClick(Sender: TObject);
    procedure BtSelecMarcaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FrmIdMarca : Integer;
    FrmNomeMarca : String;
  end;

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
