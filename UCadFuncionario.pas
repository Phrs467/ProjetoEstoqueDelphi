unit UCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, UFuncionario;

type
  TfrmCadFuncionario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    LblCadIdFunc: TLabel;
    LblCadNomeFunc: TLabel;
    LblCadSenhaFunc: TLabel;
    DBEdtCadIdFunc: TDBEdit;
    DBEdtCadNomeFunc: TDBEdit;
    DBEdtCadSenhaFunc: TDBEdit;
    DBNavigatorCadFunc: TDBNavigator;
    DBGridCadFunc: TDBGrid;
    EditPesqNome: TEdit;
    LabelPesquisas: TLabel;
    LabelPesqNome: TLabel;
    ButtonPesquisar: TButton;
    EditPesqId: TEdit;
    LblPesqIdCadFunc: TLabel;
    RadioPesquisaPor: TRadioGroup;
    DBEdtCadIdDeparFunc: TDBEdit;
    LblCadDeparFunc: TLabel;
    MainMenuImprimirCadFunc: TMainMenu;
    Imprimir1: TMenuItem;
    RelatrioFuncionrio1: TMenuItem;
    FuncionrioeDepartamento1: TMenuItem;
    btPesqDepartamento: TButton;
    EditNomeDepartamento: TEdit;
    dsFuncTela: TDataSource;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RelatrioFuncionrio1Click(Sender: TObject);
    procedure FuncionrioeDepartamento1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btPesqDepartamentoClick(Sender: TObject);
    procedure dsFuncTelaDataChange(Sender: TObject; Field: TField);




  private
    { Private declarations }
    Funcionario : TFuncionario;
  public
    { Public declarations }
  end;

var
  frmCadFuncionario: TfrmCadFuncionario;
implementation
{$R *.dfm}

uses UDmFuncionario, URelatorio2, URelatorioFunc, UPesqDepartamento, UDmDepartamentos;




procedure TfrmCadFuncionario.btPesqDepartamentoClick(Sender: TObject);
begin
  FormPesqDepartamento.ShowModal;
  if FormPesqDepartamento.FrmIdDepartamento > 0 then
  begin
    if not (DmFuncionario.dsFuncionarios.State in [dsEdit, dsInsert]) then
    begin
      DmFuncionario.qFuncionarios.Edit;
    end;

    DBEdtCadIdDeparFunc.Field.Value := FormPesqDepartamento.FrmIdDepartamento;
    EditNomeDepartamento.Text := FormPesqDepartamento.FrmNomeDepartamento;
  end;

end;

procedure TfrmCadFuncionario.ButtonPesquisarClick(Sender: TObject);
begin
  if RadioPesquisaPor.ItemIndex = 0 then
  begin
    if EditPesqNome.Text <> '' then
    begin
      if not DmFuncionario.qFuncionarios.Locate('Fun_Nome', EditPesqNome.Text,[loPartialKey]) then
      begin
        ShowMessage('Não encontrado!');
      end;
    end;
  end;

  if RadioPesquisaPor.ItemIndex = 1 then
  begin
    if EditPesqId.Text <> '' then
     begin
      if not DmFuncionario.qFuncionarios.Locate('Fun_id', EditPesqId.Text, []) then
        begin
          ShowMessage('Não encontrado!');
        end;
      end;

  end;

end;

procedure TfrmCadFuncionario.dsFuncTelaDataChange(Sender: TObject;
  Field: TField);
begin
  EditNomeDepartamento.Text := dmDepartamentos.RetornaNomeDepartamento(DBEdtCadIdDeparFunc.Field.AsInteger);
end;

procedure TfrmCadFuncionario.FormShow(Sender: TObject);
begin
  DmFuncionario.qFuncionarios.Open;
end;

procedure TfrmCadFuncionario.FuncionrioeDepartamento1Click(Sender: TObject);
begin
  FormRelatorio2.RLReport1.Preview()
end;

procedure TfrmCadFuncionario.RelatrioFuncionrio1Click(Sender: TObject);
begin
  FormRelatorioFunc.RLReportFunc.Preview()
end;

end.
