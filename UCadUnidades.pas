unit UCadUnidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Menus, UUnidade;

type
  TFormUnidades = class(TForm)
    LblCadIdUni: TLabel;
    LblDescCadUni: TLabel;
    DBGridCadUni: TDBGrid;
    DBMemoDescCadUni: TDBMemo;
    RadioPesqUni: TRadioGroup;
    LblPesqDesc: TLabel;
    LblPesqId: TLabel;
    EditPesqDescUni: TEdit;
    EditPesqIdUni: TEdit;
    BtPesqUni: TButton;
    DBEdtCadIdUni: TDBEdit;
    MainMenuImprimirCadUni: TMainMenu;
    Imprimir1: TMenuItem;
    DBNavigatorCadUni: TDBNavigator;
    procedure BtPesqUniClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
    unidade : TUnidade;
  public
    { Public declarations }
  end;

var
  FormUnidades: TFormUnidades;

implementation

{$R *.dfm}

uses UDmUnidades, URelatorioUni;

procedure TFormUnidades.BtPesqUniClick(Sender: TObject);
begin
  if RadioPesqUni.ItemIndex = 0  then
    begin
      if EditPesqDescUni.Text <> '' then
        begin
          if not DmUnidades.qUnidades.Locate('Uni_Descricao', EditPesqDescUni.Text, [loPartialKey]) then
            begin
             ShowMessage('N�o encontrado!');
            end;
        end;
    end;

  if RadioPesqUni.ItemIndex = 1  then
    begin
      if EditPesqIdUni.Text <> '' then
        begin
          if not DmUnidades.qUnidades.Locate('Uni_id', EditPesqIdUni.Text, []) then
            begin
             ShowMessage('N�o encontrado!');
            end;
        end;
    end;
end;

procedure TFormUnidades.Imprimir1Click(Sender: TObject);
begin
  FormRelatorioUni.RLReport1.Preview()
end;

end.
