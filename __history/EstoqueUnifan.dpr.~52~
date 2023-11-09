program EstoqueUnifan;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UDBConexao in 'UDBConexao.pas' {DBConexao: TDataModule},
  UDmFuncionario in 'UDmFuncionario.pas' {DmFuncionario: TDataModule},
  UCadFuncionario in 'UCadFuncionario.pas' {frmCadFuncionario},
  UCadDepartamentos in 'UCadDepartamentos.pas' {FormDepartamentos},
  UDmDepartamentos in 'UDmDepartamentos.pas' {dmDepartamentos: TDataModule},
  UCadProdutos in 'UCadProdutos.pas' {FormCadProdutos},
  UDmProdutos in 'UDmProdutos.pas' {DmProdutos: TDataModule},
  UCadUnidades in 'UCadUnidades.pas' {FormUnidades},
  UDmUnidades in 'UDmUnidades.pas' {DmUnidades: TDataModule},
  UCadFornecedor in 'UCadFornecedor.pas' {FormCadFornecedor},
  UDmFornecedor in 'UDmFornecedor.pas' {DmFornecedor: TDataModule},
  URelatorio2 in 'URelatorio2.pas' {FormRelatorio2},
  UDmRelatorio2 in 'UDmRelatorio2.pas' {dmRelatorio2: TDataModule},
  URelatorioProd in 'URelatorioProd.pas' {FormRelatorioProd},
  URelatorioForn in 'URelatorioForn.pas' {FormRelatorioForn},
  URelatorioFunc in 'URelatorioFunc.pas' {FormRelatorioFunc},
  URelatorioDepar in 'URelatorioDepar.pas' {FormRelatorioDepar},
  URelatorioUni in 'URelatorioUni.pas' {FormRelatorioUni},
  UPesqFuncionario in 'UPesqFuncionario.pas' {FormPesqFunc},
  UPesqDepartamento in 'UPesqDepartamento.pas' {FormPesqDepartamento},
  UPesqProduto in 'UPesqProduto.pas' {FormPesqProdutos},
  UPesqUnidades in 'UPesqUnidades.pas' {FormPesqUnidades},
  UPesqFornecedor in 'UPesqFornecedor.pas' {FormPesqForn},
  UUnidade in 'UUnidade.pas',
  UFuncionario in 'UFuncionario.pas',
  UFornecedor in 'UFornecedor.pas',
  UProduto in 'UProduto.pas',
  UDepartamento in 'UDepartamento.pas',
  UCadFuncionarioObj in 'UCadFuncionarioObj.pas' {FormCadFuncionarioObj},
  UCadDepartamentoObj in 'UCadDepartamentoObj.pas' {FormCadDepartamentoObj},
  UCadProdutosObj in 'UCadProdutosObj.pas' {FormCadProdutosObj},
  UCadUnidadesObj in 'UCadUnidadesObj.pas' {FormCadUnidadesObj},
  UCadFornecedorObj in 'UCadFornecedorObj.pas' {FormCadFornecedorObj},
  UCadGrupoObj in 'UCadGrupoObj.pas' {FormCadGrupoObj},
  UCadMarcaObj in 'UCadMarcaObj.pas' {FormCadMarca},
  UDmMarca in 'UDmMarca.pas' {DmMarca: TDataModule},
  UDmGrupo in 'UDmGrupo.pas' {DmGrupo: TDataModule},
  UPesqMarca in 'UPesqMarca.pas' {FormPesqMarca},
  UPesqGrupo in 'UPesqGrupo.pas' {FormPesqGrupo},
  UGrupo in 'UGrupo.pas',
  UMarca in 'UMarca.pas',
  UMoviEntrada in 'UMoviEntrada.pas' {FormMoviEntrada},
  UDmMoviEntrada in 'UDmMoviEntrada.pas' {DmMoviEntrada: TDataModule},
  UPesqMoviEntrada in 'UPesqMoviEntrada.pas' {FormPesqMoviEntrada},
  UMovimentacaoEntrada in 'UMovimentacaoEntrada.pas',
  UCadItensMoviEntrada in 'UCadItensMoviEntrada.pas' {FormItensMoviEntrada},
  UItensMovEntrada in 'UItensMovEntrada.pas',
  UDmItensMoviEntrada in 'UDmItensMoviEntrada.pas' {DmItensMoviEntrada: TDataModule},
  UPesqItensMoviEntrada in 'UPesqItensMoviEntrada.pas' {FormPesqItensMoviEntrada},
  URelTeste in 'URelTeste.pas' {FormRelaProd};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDBConexao, DBConexao);
  Application.CreateForm(TDmFuncionario, DmFuncionario);
  Application.CreateForm(TfrmCadFuncionario, frmCadFuncionario);
  Application.CreateForm(TFormDepartamentos, FormDepartamentos);
  Application.CreateForm(TdmDepartamentos, dmDepartamentos);
  Application.CreateForm(TFormCadProdutos, FormCadProdutos);
  Application.CreateForm(TDmProdutos, DmProdutos);
  Application.CreateForm(TFormUnidades, FormUnidades);
  Application.CreateForm(TDmUnidades, DmUnidades);
  Application.CreateForm(TFormCadFornecedor, FormCadFornecedor);
  Application.CreateForm(TDmFornecedor, DmFornecedor);
  Application.CreateForm(TFormRelatorio2, FormRelatorio2);
  Application.CreateForm(TdmRelatorio2, dmRelatorio2);
  Application.CreateForm(TFormRelatorioProd, FormRelatorioProd);
  Application.CreateForm(TFormRelatorioForn, FormRelatorioForn);
  Application.CreateForm(TFormRelatorioFunc, FormRelatorioFunc);
  Application.CreateForm(TFormRelatorioDepar, FormRelatorioDepar);
  Application.CreateForm(TFormRelatorioUni, FormRelatorioUni);
  Application.CreateForm(TFormPesqFunc, FormPesqFunc);
  Application.CreateForm(TFormPesqDepartamento, FormPesqDepartamento);
  Application.CreateForm(TFormPesqProdutos, FormPesqProdutos);
  Application.CreateForm(TFormPesqUnidades, FormPesqUnidades);
  Application.CreateForm(TFormPesqForn, FormPesqForn);
  Application.CreateForm(TFormCadFuncionarioObj, FormCadFuncionarioObj);
  Application.CreateForm(TFormCadDepartamentoObj, FormCadDepartamentoObj);
  Application.CreateForm(TFormCadProdutosObj, FormCadProdutosObj);
  Application.CreateForm(TFormCadUnidadesObj, FormCadUnidadesObj);
  Application.CreateForm(TFormCadFornecedorObj, FormCadFornecedorObj);
  Application.CreateForm(TFormCadGrupoObj, FormCadGrupoObj);
  Application.CreateForm(TFormCadMarca, FormCadMarca);
  Application.CreateForm(TDmMarca, DmMarca);
  Application.CreateForm(TDmGrupo, DmGrupo);
  Application.CreateForm(TFormPesqMarca, FormPesqMarca);
  Application.CreateForm(TFormPesqGrupo, FormPesqGrupo);
  Application.CreateForm(TFormMoviEntrada, FormMoviEntrada);
  Application.CreateForm(TDmMoviEntrada, DmMoviEntrada);
  Application.CreateForm(TFormPesqMoviEntrada, FormPesqMoviEntrada);
  Application.CreateForm(TFormItensMoviEntrada, FormItensMoviEntrada);
  Application.CreateForm(TDmItensMoviEntrada, DmItensMoviEntrada);
  Application.CreateForm(TFormPesqItensMoviEntrada, FormPesqItensMoviEntrada);
//  Application.CreateForm(TFormRelaProd, FormRelaProd);
  Application.Run;
end.
