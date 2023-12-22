unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Pesquisar1: TMenuItem;
    Funcionrio1: TMenuItem;
    Departa1: TMenuItem;
    Produtos2: TMenuItem;
    Unidades2: TMenuItem;
    Fornecedor2: TMenuItem;
    Cadastros1: TMenuItem;
    FuncionrioOBJ1: TMenuItem;
    DepartamentosOBJ1: TMenuItem;
    ProdutosOBJ1: TMenuItem;
    UnidadesOBJ1: TMenuItem;
    FornecedorOBJ1: TMenuItem;
    GrupoOBJ1: TMenuItem;
    MarcaOBJ1: TMenuItem;
    Grupo1: TMenuItem;
    Marca1: TMenuItem;
    MovimentosNFe1: TMenuItem;
    Entrada1: TMenuItem;
    ItensMovimentao1: TMenuItem;
    PesquisaNFe1: TMenuItem;
    PesquisaMovimentaoentrada1: TMenuItem;
    ItensMovimentaoentrada1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Departa1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Unidades2Click(Sender: TObject);
    procedure Fornecedor2Click(Sender: TObject);
    procedure FuncionrioOBJ1Click(Sender: TObject);
    procedure DepartamentosOBJ1Click(Sender: TObject);
    procedure ProdutosOBJ1Click(Sender: TObject);
    procedure UnidadesOBJ1Click(Sender: TObject);
    procedure FornecedorOBJ1Click(Sender: TObject);
    procedure GrupoOBJ1Click(Sender: TObject);
    procedure MarcaOBJ1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure ItensMovimentao1Click(Sender: TObject);

    procedure ItensMovimentaoentrada1Click(Sender: TObject);
    procedure PesquisaMovimentaoentrada1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);




  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UDBConexao ,URelatório, URelatorio2, UPesqFuncionario, UPesqDepartamento,
  UPesqProduto, UPesqUnidades, UPesqFornecedor, UCadFuncionarioObj,
  UCadDepartamentoObj, UCadProdutosObj, UCadUnidadesObj, UCadFornecedorObj,
  UCadGrupoObj, UCadMarcaObj, UPesqGrupo, UPesqMarca, UMoviEntrada, UCadItensMoviEntrada,
  UPesqItensMoviEntrada, UDepartamento, UPesqMoviEntrada;


procedure TFrmPrincipal.Departa1Click(Sender: TObject);
begin
  FormPesqDepartamento.ShowModal;
end;


procedure TFrmPrincipal.DepartamentosOBJ1Click(Sender: TObject);
begin
  FormCadDepartamentoObj.ShowModal;
end;

procedure TFrmPrincipal.Entrada1Click(Sender: TObject);
begin
  FormMoviEntrada.ShowModal;
end;


procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.Fornecedor2Click(Sender: TObject);
begin
  FormPesqForn.ShowModal;
end;

procedure TFrmPrincipal.FornecedorOBJ1Click(Sender: TObject);
begin
  FormCadFornecedorObj.ShowModal;
end;

procedure TFrmPrincipal.Funcionrio1Click(Sender: TObject);
begin
  FormPesqFunc.ShowModal;
end;

procedure TFrmPrincipal.FuncionrioOBJ1Click(Sender: TObject);
begin
  FormCadFuncionarioObj.ShowModal;
end;

procedure TFrmPrincipal.Grupo1Click(Sender: TObject);
begin
  FormPesqMarca.ShowModal;
end;

procedure TFrmPrincipal.GrupoOBJ1Click(Sender: TObject);
begin
  FormCadGrupoObj.ShowModal;
end;

procedure TFrmPrincipal.ItensMovimentao1Click(Sender: TObject);
begin
  FormItensMoviEntrada.ShowModal;
end;

procedure TFrmPrincipal.ItensMovimentaoentrada1Click(Sender: TObject);
begin
  FormPesqItensMoviEntrada.ShowModal;
end;

procedure TFrmPrincipal.Marca1Click(Sender: TObject);
begin
  FormPesqGrupo.ShowModal;
end;

procedure TFrmPrincipal.MarcaOBJ1Click(Sender: TObject);
begin
  FormCadMarca.ShowModal;
end;

procedure TFrmPrincipal.PesquisaMovimentaoentrada1Click(Sender: TObject);
begin
  FormMoviEntrada.ShowModal;
end;

procedure TFrmPrincipal.Produtos2Click(Sender: TObject);
begin
  FormPesqProdutos.ShowModal;
end;

procedure TFrmPrincipal.ProdutosOBJ1Click(Sender: TObject);
begin
  FormCadProdutosObj.ShowModal;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  application.Terminate;
end;


procedure TFrmPrincipal.Unidades2Click(Sender: TObject);
begin
  FormPesqUnidades.ShowModal;
end;

procedure TFrmPrincipal.UnidadesOBJ1Click(Sender: TObject);
begin
  FormCadUnidadesObj.ShowModal;
end;

end.
