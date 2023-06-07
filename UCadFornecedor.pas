unit UCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.Menus, UFornecedor;

type
  TFormCadFornecedor = class(TForm)
    DBEditIdForn: TDBEdit;
    DBGridCadForn: TDBGrid;
    DBNavigatorCadForn: TDBNavigator;
    LblidForn: TLabel;
    LblNomeForn: TLabel;
    LblPesqNomeForn: TLabel;
    LblPesqIdForn: TLabel;
    BtPesqForn: TButton;
    EditPesqNomeForn: TEdit;
    EditPesqIdForn: TEdit;
    RadioCadForn: TRadioGroup;
    DBEditNomeForn: TDBEdit;
    MainMenuImprimirCadForn: TMainMenu;
    Imprimir1: TMenuItem;
    procedure BtPesqFornClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
    Fornecedor : TFornecedor;
  public
    { Public declarations }
  end;

var
  FormCadFornecedor: TFormCadFornecedor;

implementation

{$R *.dfm}

uses UDmFornecedor, URelatorioForn;

procedure TFormCadFornecedor.BtPesqFornClick(Sender: TObject);
begin
  if RadioCadForn.ItemIndex = 0  then
    begin
      if EditPesqNomeForn.Text <> '' then
        begin
          if not DmFornecedor.qFornecedor.Locate('Forn_Nome', EditPesqNomeForn.Text, [loPartialKey]) then
            begin
             ShowMessage('N�o encontrado!');
            end;
        end;
    end;

  if RadioCadForn.ItemIndex = 1  then
    begin
      if EditPesqIdForn.Text <> '' then
        begin
          if not DmFornecedor.qFornecedor.Locate('Forn_id', EditPesqIdForn.Text, []) then
            begin
             ShowMessage('N�o encontrado!');
            end;
        end;
    end;

end;

procedure TFormCadFornecedor.Imprimir1Click(Sender: TObject);
begin
  FormRelatorioForn.RLReportForn.Preview()
end;

end.
