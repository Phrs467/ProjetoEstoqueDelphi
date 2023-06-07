unit UCadDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, UDepartamento;

type
  TFormDepartamentos = class(TForm)
    DBEdtCadNomeDepar: TDBEdit;
    LblCadNomeDepar: TLabel;
    DBGridCadDepar: TDBGrid;
    DBNavigatorCadDepar: TDBNavigator;
    DBEdtCadIdDepar: TDBEdit;
    LblCadIdDepar: TLabel;
    RadioPesqDep: TRadioGroup;
    LblPesqNomeCadDepar: TLabel;
    LblPesqIdCadDepar: TLabel;
    EditPesqDepNome: TEdit;
    EditPesqDepId: TEdit;
    BtPesqCadDepar: TButton;
    MainMenuImprimirCadDepar: TMainMenu;
    Imprimir1: TMenuItem;
    procedure BtPesqCadDeparClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
    Departamento : TDepartamento;
  public
    { Public declarations }
  end;

var
  FormDepartamentos: TFormDepartamentos;

implementation

{$R *.dfm}

uses UDmDepartamentos, URelatorioDepar;

procedure TFormDepartamentos.BtPesqCadDeparClick(Sender: TObject);
begin
    if RadioPesqDep.ItemIndex = 0  then
    begin
      if EditPesqDepNome.Text <> '' then
        begin
          if not dmDepartamentos.qDepartamentos.Locate('Dp_Nome', EditPesqDepNome.Text, [loPartialKey]) then
            begin
             ShowMessage('Não encontrado!');
            end;
        end;
    end;

  if RadioPesqDep.ItemIndex = 1  then
    begin
      if EditPesqDepId.Text <> '' then
        begin
          if not dmDepartamentos.qDepartamentos.Locate('Dp_id', EditPesqDepId.Text, []) then
            begin
             ShowMessage('Não encontrado!');
            end;
        end;
    end;

end;

procedure TFormDepartamentos.Imprimir1Click(Sender: TObject);
begin
  FormRelatorioDepar.RLReportDepar.Preview()
end;

end.
