unit UCadItensMoviEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UItensMovEntrada, UDmItensMoviEntrada,UProduto,
  UUnidade, UMovimentacaoEntrada;

type
  TFormItensMoviEntrada = class(TForm)
    EdtIdItensMoviEntra: TEdit;
    LblIdItensMoviEntra: TLabel;
    EdtIdMoviEntrada: TEdit;
    LblMoviEntrada: TLabel;
    EdtIdProdItensMoviEntra: TEdit;
    LblProdItensMoviEntrada: TLabel;
    EdtIdUniItensMoviEntra: TEdit;
    LblUniItensMoviEntra: TLabel;
    BtIdItensMoviEntra: TButton;
    BtIdMoeItensMoviEntra: TButton;
    BtIdUniItensMoviEntra: TButton;
    BtIdProdItensMoviEntra: TButton;
    EdtNotaMoviEntrada: TEdit;
    EdtNomeProdItensMoviEntra: TEdit;
    EdtDescUniItensMoviEntra: TEdit;
    EdtQtdItensMoviEntra: TEdit;
    EdtVlrUnitarioItensMoviEntra: TEdit;
    EdtVlrDescontoItensMoviEntra: TEdit;
    EdtVlrFreteItensMoviEntra: TEdit;
    EdtVlrBrutoItensMoviEntra: TEdit;
    EdtVlrLiquiItensMoviEntra: TEdit;
    LblQtdItens: TLabel;
    LblVlrUnitario: TLabel;
    LblVlrDesconto: TLabel;
    LblVlrFrete: TLabel;
    LblVlrBruto: TLabel;
    LblVlrLiquido: TLabel;
    BtNovoItemMoviEntra: TButton;
    BtSalvarItemMoviEntra: TButton;
    BtExcluirItemMoviEntra: TButton;
    PanelItensMoviEntrada: TPanel;
    procedure BtNovoItemMoviEntraClick(Sender: TObject);
    procedure BtIdMoeItensMoviEntraClick(Sender: TObject);
    procedure BtIdUniItensMoviEntraClick(Sender: TObject);
    procedure BtIdProdItensMoviEntraClick(Sender: TObject);
    procedure BtIdItensMoviEntraClick(Sender: TObject);
    procedure BtSalvarItemMoviEntraClick(Sender: TObject);
    procedure BtExcluirItemMoviEntraClick(Sender: TObject);
    procedure EdtVlrBrutoItensMoviEntraExit(Sender: TObject);
  private
    { Private declarations }
    Produto : TProduto;
    Unidade : TUnidade;
    ItensMoviEntrada : TItensMoviEntrada;
    MovimentoEntrada : TMovimentacaoEntrada;


    Procedure PesquisarItens;
    Procedure PesquisarUnidade;
    Procedure PesquisarProduto;


  public
    { Public declarations }
    Procedure LimparForm;
    Procedure PesquisarMovimento;
  end;

var
  FormItensMoviEntrada: TFormItensMoviEntrada;

implementation

uses
  UPesqProduto, UPesqUnidades, UPesqMoviEntrada, UPesqItensMoviEntrada;

{$R *.dfm}

{ TFormItensMoviEntrada }

procedure TFormItensMoviEntrada.BtExcluirItemMoviEntraClick(Sender: TObject);
begin
  ItensMoviEntrada := TItensMoviEntrada.Create;

  if Application.MessageBox('Você deseja realmente excluir os dados?','Aviso', MB_ICONEXCLAMATION+MB_YESNO) = mrNo then
    abort;

  ItensMoviEntrada.IdItens := StrToInt(EdtIdItensMoviEntra.Text);
  ItensMoviEntrada.excluir;

  ItensMoviEntrada.Free;

  LimparForm;
end;

procedure TFormItensMoviEntrada.BtIdItensMoviEntraClick(Sender: TObject);
begin
  FormPesqItensMoviEntrada.ShowModal;
  if FormPesqItensMoviEntrada.FrmIdItens > 0 then
  begin
    EdtIdItensMoviEntra.Text := IntToStr(FormPesqItensMoviEntrada.FrmIdItens);
    PesquisarItens;
  end;

end;

procedure TFormItensMoviEntrada.BtIdMoeItensMoviEntraClick(Sender: TObject);
begin
    FormPesqMoviEntrada.ShowModal;
  if FormPesqMoviEntrada.FrmIdEntra > 0 then
  begin
    EdtIdMoviEntrada.Text := IntToStr(FormPesqMoviEntrada.FrmIdEntra);
    EdtNotaMoviEntrada.Text := IntToStr (FormPesqMoviEntrada.FrmNumNota);
  end;

end;

procedure TFormItensMoviEntrada.BtIdProdItensMoviEntraClick(Sender: TObject);
begin
  FormPesqProdutos.ShowModal;
  if FormPesqProdutos.FrmIdProduto > 0 then
  begin
    EdtIdProdItensMoviEntra.Text := IntToStr(FormPesqProdutos.FrmIdProduto);
    EdtNomeProdItensMoviEntra.Text := FormPesqProdutos.FrmNomeProduto;
  end;

end;

procedure TFormItensMoviEntrada.BtIdUniItensMoviEntraClick(Sender: TObject);
begin
  FormPesqUnidades.ShowModal;
  if FormPesqUnidades.FrmIdUnidades > 0 then
  begin
    EdtIdUniItensMoviEntra.Text := IntToStr(FormPesqUnidades.FrmIdUnidades);
    EdtDescUniItensMoviEntra.Text := FormPesqUnidades.FrmDescUnidades;
  end;

end;

procedure TFormItensMoviEntrada.BtNovoItemMoviEntraClick(Sender: TObject);
begin
  if (EdtIdItensMoviEntra.Text <> '') or(EdtIdMoviEntrada.Text <> '') or (EdtNotaMoviEntrada.Text <> '') or (EdtIdProdItensMoviEntra.Text <> '')
    or (EdtNomeProdItensMoviEntra.Text <> '') or  (EdtIdUniItensMoviEntra.Text <> '') or (EdtDescUniItensMoviEntra.Text <> '')
    or (EdtQtdItensMoviEntra.Text <> '') or (EdtVlrUnitarioItensMoviEntra.Text <> '') or (EdtVlrDescontoItensMoviEntra.Text <> '')
    or (EdtVlrFreteItensMoviEntra.Text <> '') or (EdtVlrBrutoItensMoviEntra.Text <> '') or (EdtVlrLiquiItensMoviEntra.Text <> '')
  then
    begin
    if Application.MessageBox('Você deseja limpar os dados preenchidos? ','Aviso',MB_ICONQUESTION+MB_YESNO) = mrNo then
      Exit;
  end;

  LimparForm;

end;

procedure TFormItensMoviEntrada.BtSalvarItemMoviEntraClick(Sender: TObject);
begin
  ItensMoviEntrada := TItensMoviEntrada.Create;

  ItensMoviEntrada.IdMoe := StrToInt(EdtIdMoviEntrada.Text);
  ItensMoviEntrada.IdProd :=  StrToInt(EdtIdProdItensMoviEntra.Text);
  ItensMoviEntrada.IdUni := StrToInt(EdtIdUniItensMoviEntra.Text);
  ItensMoviEntrada.ImeQuantidade := StrToInt(EdtQtdItensMoviEntra.Text);

  if EdtVlrDescontoItensMoviEntra.Text = '' then
  begin
    ItensMoviEntrada.ImeVlrDesconto := 00.00
  end
  else
  begin
    ItensMoviEntrada.ImeVlrDesconto := StrToFloat(EdtVlrDescontoItensMoviEntra.Text);
  end;

  if EdtVlrFreteItensMoviEntra.Text = '' then
  begin
    ItensMoviEntrada.ImeVlrTotFrete :=  00.00
  end
  else
  begin
    ItensMoviEntrada.ImeVlrTotFrete :=  StrToFloat(EdtVlrFreteItensMoviEntra.Text);
  end;
  ItensMoviEntrada.ImeVlrUni := StrToFloat(EdtVlrUnitarioItensMoviEntra.Text);
  ItensMoviEntrada.ImeVlrTotBruto := StrToFloat(EdtVlrBrutoItensMoviEntra.Text);
  ItensMoviEntrada.ImeVlrTotLiquido := StrToFloat(EdtVlrLiquiItensMoviEntra.Text);

  if EdtIdItensMoviEntra.Text = '' then
  begin
    if ItensMoviEntrada.incluir then
    begin
      Application.MessageBox('Os dados foram incluídos com sucesso', 'Aviso', MB_ICONEXCLAMATION+MB_OK)
    end
    else
    begin
      Application.MessageBox('Inclusão não deu certo', 'Aviso', MB_ICONWARNING+MB_OK)
    end;
  end
  else
  begin
    ItensMoviEntrada.IdItens := StrToInt(EdtIdItensMoviEntra.Text);
    ItensMoviEntrada.alterar;
  end;

  ItensMoviEntrada.Free

end;

procedure TFormItensMoviEntrada.EdtVlrBrutoItensMoviEntraExit(Sender: TObject);
//var
//  Quantidade ,ValorUnitário, Desconto, ValorFrete ,ValorBruto, ValorLiquido : Double;
begin
//  Quantidade := StrToInt(EdtQtdItensMoviEntra.Text);
//  ValorUnitário := StrToFloatDef(EdtVlrUnitarioItensMoviEntra.Text, 0);
//  Desconto := StrToFloatDef(EdtDescUniItensMoviEntra.Text, 0);
//  ValorFrete := StrToFloatDef(EdtVlrFreteItensMoviEntra.Text, 0);
//  ValorBruto := StrToFloatDef(EdtVlrBrutoItensMoviEntra.Text, 0);
//
//
//  ValorBruto := (ValorLiquido * Quantidade) - Desconto + ValorFrete;
//  EdtVlrLiquiItensMoviEntra.Text := FormatFloat('#0.00', ValorBruto);

end;

procedure TFormItensMoviEntrada.LimparForm;
begin
  EdtIdItensMoviEntra.Clear;
  EdtIdMoviEntrada.Clear;
  EdtNotaMoviEntrada.Clear;
  EdtIdProdItensMoviEntra.Clear;
  EdtNomeProdItensMoviEntra.Clear;
  EdtIdUniItensMoviEntra.Clear;
  EdtDescUniItensMoviEntra.Clear;
  EdtQtdItensMoviEntra.Clear;
  EdtVlrUnitarioItensMoviEntra.Clear;
  EdtVlrDescontoItensMoviEntra.Clear;
  EdtVlrFreteItensMoviEntra.Clear;
  EdtVlrBrutoItensMoviEntra.Clear;
  EdtVlrLiquiItensMoviEntra.Clear;

end;

procedure TFormItensMoviEntrada.PesquisarItens;
begin
  if EdtIdItensMoviEntra.Text <> '' then
  begin
    ItensMoviEntrada := TItensMoviEntrada.Create;
    ItensMoviEntrada.IdItens := StrToInt(EdtIdItensMoviEntra.Text);

    if ItensMoviEntrada.pesquisarId then
    begin
      EdtIdItensMoviEntra.Text := IntToStr(ItensMoviEntrada.IdItens);
      EdtIdMoviEntrada.Text := IntToStr(ItensMoviEntrada.IdMoe);
      EdtIdProdItensMoviEntra.Text := IntToStr(ItensMoviEntrada.IdProd);
      EdtIdUniItensMoviEntra.Text := IntToStr(ItensMoviEntrada.IdUni);
      EdtQtdItensMoviEntra.Text := FloatToStr(ItensMoviEntrada.ImeQuantidade);
      EdtVlrUnitarioItensMoviEntra.Text := FloatToStr(ItensMoviEntrada.ImeVlrUni);
      EdtVlrDescontoItensMoviEntra.Text := FloatToStr(ItensMoviEntrada.ImeVlrDesconto);
      EdtVlrFreteItensMoviEntra.Text := FloatToStr(ItensMoviEntrada.ImeVlrTotFrete);
      EdtVlrBrutoItensMoviEntra.Text := FloatToStr(ItensMoviEntrada.ImeVlrTotBruto);
      EdtVlrLiquiItensMoviEntra.Text := FloatToStr(ItensMoviEntrada.ImeVlrTotLiquido);

      if ItensMoviEntrada.IdMoe > 0 then
        PesquisarMovimento;

      if ItensMoviEntrada.IdProd > 0 then
        PesquisarProduto;

      if ItensMoviEntrada.IdUni > 0 then
        PesquisarUnidade;
    end
    else
    begin
      ShowMessage('Itens de movimentação de entrada não localizado!');
    end;

    ItensMoviEntrada.Free;


  end;

end;

procedure TFormItensMoviEntrada.PesquisarMovimento;
begin
  if EdtIdMoviEntrada.Text <> '' then
  begin
    MovimentoEntrada := TMovimentacaoEntrada.Create;
    MovimentoEntrada.IdEntra := StrToInt(EdtIdMoviEntrada.Text);

    if MovimentoEntrada.pesquisarIdEntrada then
    begin
      EdtNotaMoviEntrada.Text := IntToStr(MovimentoEntrada.NumNota);
    end
    else
    begin
      ShowMessage('Movimento de entrada não localizado!');
    end;

    MovimentoEntrada.Free;
  end;

end;

procedure TFormItensMoviEntrada.PesquisarProduto;
begin
  if EdtIdProdItensMoviEntra.Text <> '' then
  begin
    Produto := TProduto.Create;
    Produto.Id := StrToInt(EdtIdProdItensMoviEntra.Text);

    if Produto.pesquisarId then
    begin
      EdtNomeProdItensMoviEntra.Text := Produto.Nome;
    end
    else
    begin
      ShowMessage('Produto não localizado!');
    end;

    Produto.Free;
  end;

end;

procedure TFormItensMoviEntrada.PesquisarUnidade;
begin
  if EdtIdUniItensMoviEntra.Text <> '' then
  begin

    Unidade := TUnidade.Create;
    Unidade.Id := StrToInt(EdtIdUniItensMoviEntra.Text);

    if Unidade.pesquisarId then
    begin

      EdtDescUniItensMoviEntra.Text := Unidade.Descricao;

    end
    else
    begin
      ShowMessage('Unidade não localizado!');
    end;

    Unidade.Free;
  end;
end;

end.
