unit UCadProdutosObj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UProduto, UUnidade, UMarca, UGrupo,
  Vcl.Menus, Vcl.ExtCtrls ;

type
  TFormCadProdutosObj = class(TForm)
    EdtCadProdIdObj: TEdit;
    EdtCadProdNomeObj: TEdit;
    EdtCadProdIdUniObj: TEdit;
    EdtCadProdNomeUniObj: TEdit;
    LblCadIdProdObj: TLabel;
    LblCadUniProdObj: TLabel;
    LblCadNomeProdObj: TLabel;
    BtPesqUniProdObj: TButton;
    BtPesqProdObj: TButton;
    BtNovoCadProdObj: TButton;
    BtSalvarCadProdObj: TButton;
    BtExcluirCadProdObj: TButton;
    EdtCadProdIdGrupObj: TEdit;
    EdtCadProdGrupNomeObj: TEdit;
    EdtCadProdIdMarcObj: TEdit;
    EdtCadProdMarcNomeObj: TEdit;
    BtPesqGrupProdObj: TButton;
    BtPesqMarcProdObj: TButton;
    LblCadGrupProdObj: TLabel;
    LblCadMarcProdObj: TLabel;
    PanelCadProdObj: TPanel;
    procedure BtPesqProdObjClick(Sender: TObject);
    procedure BtPesqUniProdObjClick(Sender: TObject);
    procedure BtNovoCadProdObjClick(Sender: TObject);
    procedure BtSalvarCadProdObjClick(Sender: TObject);
    procedure BtExcluirCadProdObjClick(Sender: TObject);
    procedure EdtCadProdIdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtPesqGrupProdObjClick(Sender: TObject);
    procedure BtPesqMarcProdObjClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtCadProdIdUniObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCadProdIdGrupObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCadProdIdMarcObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Produtos : TProduto;
    Unidade : TUnidade;
    Grupo : TGrupo;
    Marca : TMarca;
    procedure LimparForm;

    Procedure PesquisarGrupo;
    Procedure PesquisarMarca;
    procedure PesquisarUnidade;
    procedure PesquisarProdutos;
  public
    { Public declarations }
  end;

var
  FormCadProdutosObj: TFormCadProdutosObj;

implementation

uses
  UPesqProduto, UPesqUnidades, UPesqFornecedor, UPesqGrupo, UPesqMarca, UDmProdutos, URelTeste;

{$R *.dfm}

procedure TFormCadProdutosObj.BtExcluirCadProdObjClick(Sender: TObject);
begin
  Produtos := TProduto.Create;

  Produtos.Id := StrToInt(EdtCadProdIdObj.Text);
  Produtos.excluir;

  Produtos.Free;

  LimparForm;

end;

procedure TFormCadProdutosObj.BtNovoCadProdObjClick(Sender: TObject);
begin
  LimparForm;
end;

procedure TFormCadProdutosObj.BtPesqGrupProdObjClick(Sender: TObject);
begin
    FormPesqGrupo.ShowModal;
  if FormPesqGrupo.FrmIdGrupo > 0 then
  begin
    EdtCadProdIdGrupObj.Text := IntToStr(FormPesqGrupo.FrmIdGrupo);
    EdtCadProdGrupNomeObj.Text := FormPesqGrupo.FrmNomeGrupo;
  end;

end;

procedure TFormCadProdutosObj.BtPesqMarcProdObjClick(Sender: TObject);
begin
  FormPesqMarca.ShowModal;
  if FormPesqMarca.FrmIdMarca > 0 then
  begin
    EdtCadProdIdMarcObj.Text := IntToStr(FormPesqMarca.FrmIdMarca);
    EdtCadProdMarcNomeObj.Text := FormPesqMarca.FrmNomeMarca;
  end;
end;

procedure TFormCadProdutosObj.BtPesqProdObjClick(Sender: TObject);
begin
   FormPesqProdutos.ShowModal;
  if FormPesqProdutos.FrmIdProduto > 0 then
  begin
    EdtCadProdIdObj.Text := IntToStr(FormPesqProdutos.FrmIdProduto);
    PesquisarProdutos;
  end;
end;

procedure TFormCadProdutosObj.BtPesqUniProdObjClick(Sender: TObject);
begin
    FormPesqUnidades.ShowModal;
  if FormPesqUnidades.FrmIdUnidades > 0 then
  begin
    EdtCadProdIdUniObj.Text := IntToStr(FormPesqUnidades.FrmIdUnidades);
    EdtCadProdNomeUniObj.Text := FormPesqUnidades.FrmDescUnidades;
  end;

end;

procedure TFormCadProdutosObj.BtSalvarCadProdObjClick(Sender: TObject);
begin
     Produtos := TProduto.Create;

     Produtos.Nome := EdtCadProdNomeObj.Text;
     if EdtCadProdIdUniObj.Text <> ''  then
      begin
        Produtos.IdUni := StrToInt(EdtCadProdIdUniObj.Text);
      end;
     if EdtCadProdIdGrupObj.Text <> '' then
      begin
        Produtos.IdGrup := StrToInt(EdtCadProdIdGrupObj.Text);
      end;
      if EdtCadProdIdMarcObj.Text <> '' then
      begin
        Produtos.IdMarc := StrToInt(EdtCadProdIdMarcObj.Text);
      end;


     if EdtCadProdIdObj.Text = '' then
        Produtos.incluir
     else
     begin
       Produtos.Id := StrToInt(EdtCadProdIdObj.Text);
       Produtos.alterar;
     end;
     Produtos.Free;

end;


procedure TFormCadProdutosObj.EdtCadProdIdGrupObjKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  PesquisarGrupo
end;

procedure TFormCadProdutosObj.EdtCadProdIdMarcObjKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = VK_RETURN then
  begin
    PesquisarMarca;
  end;
end;

procedure TFormCadProdutosObj.EdtCadProdIdObjKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    PesquisarProdutos;
  end;
end;

procedure TFormCadProdutosObj.EdtCadProdIdUniObjKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    PesquisarUnidade;
  end;
end;

procedure TFormCadProdutosObj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LimparForm;
end;


procedure TFormCadProdutosObj.LimparForm;
begin
  EdtCadProdIdObj.Clear;
  EdtCadProdNomeObj.Clear;
  EdtCadProdIdUniObj.Clear;
  EdtCadProdNomeUniObj.Clear;
  EdtCadProdIdGrupObj.Clear;
  EdtCadProdGrupNomeObj.Clear;
  EdtCadProdIdMarcObj.Clear;
  EdtCadProdMarcNomeObj.Clear;

end;

procedure TFormCadProdutosObj.PesquisarGrupo;
begin
  if EdtCadProdIdGrupObj.Text <> '' then
  begin

    Grupo := TGrupo.Create;
    Grupo.Id := StrToInt(EdtCadProdIdGrupObj.Text);

    if Grupo.pesquisarId then
    begin

      EdtCadProdGrupNomeObj.Text := Grupo.Nome;

    end
    else
    begin
      ShowMessage('Grupo n�o localizada!');
    end;

    Grupo.Free;
  end;

end;

procedure TFormCadProdutosObj.PesquisarMarca;
begin
  if EdtCadProdIdMarcObj.Text <> '' then
  begin

    Marca := TMarca.Create;
    Marca.Id := StrToInt(EdtCadProdIdMarcObj.Text);

    if Marca.pesquisarId then
    begin

      EdtCadProdMarcNomeObj.Text := Marca.Nome;

    end
    else
    begin
      ShowMessage('Marca n�o localizada!');
    end;

    Marca.Free;
  end;
end;

procedure TFormCadProdutosObj.PesquisarProdutos;
begin
  if EdtCadProdIdObj.Text <> '' then
  begin

    Produtos := TProduto.Create;
    Produtos.Id := StrToInt(EdtCadProdIdObj.Text);

    if Produtos.pesquisarId then
    begin

      EdtCadProdIdObj.Text := IntToStr(Produtos.Id);
      EdtCadProdNomeObj.Text := Produtos.Nome;
      EdtCadProdIdUniObj.Text := IntToStr(Produtos.IdUni);
      EdtCadProdIdGrupObj.Text := IntToStr(Produtos.IdGrup);
      EdtCadProdIdMarcObj.Text := IntToStr(Produtos.IdMarc);

      if Produtos.IdUni > 0 then
        PesquisarUnidade;
      if Produtos.IdGrup > 0 then
        PesquisarGrupo;
      if Produtos.IdMarc > 0 then
        PesquisarMarca;
    end
    else
    begin
      ShowMessage('Produto n�o localizado!');
    end;

    Produtos.Free;

  end;

end;

procedure TFormCadProdutosObj.PesquisarUnidade;
begin
  if EdtCadProdIdUniObj.Text <> '' then
  begin

    Unidade := TUnidade.Create;
    Unidade.Id := StrToInt(EdtCadProdIdUniObj.Text);

    if Unidade.pesquisarId then
    begin

      EdtCadProdNomeUniObj.Text := Unidade.Descricao;

    end
    else
    begin
      ShowMessage('Unidade n�o localizada!');
    end;

    Unidade.Free;
  end;
end;

end.
