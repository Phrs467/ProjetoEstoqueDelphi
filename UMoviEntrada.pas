unit UMoviEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, UMovimentacaoEntrada,UItensMovEntrada, UFornecedor,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormMoviEntrada = class(TForm)
    EdtIdEntraMovi: TEdit;
    EdtNumSerie: TEdit;
    EdtNumNota: TEdit;
    EdtIdFornMovi: TEdit;
    PanelValoresMoviEntrada: TPanel;
    EdtValDesconto: TEdit;
    EdtValFrete: TEdit;
    EdtValEntrada: TEdit;
    EdtTotalProd: TEdit;
    LblIdEntraMovi: TLabel;
    LblDataEntra: TLabel;
    LblDataEmissao: TLabel;
    LblIdFornMovim: TLabel;
    LblNumSerie: TLabel;
    LblNumNota: TLabel;
    LblValDesconto: TLabel;
    LblValFrete: TLabel;
    LblTotalProd: TLabel;
    LblValEntrada: TLabel;
    Panel1: TPanel;
    BtNovoMovi: TButton;
    BtSalvarMovi: TButton;
    BtExcluirMovi: TButton;
    BtPesqMoviEntrada: TButton;
    MaskEdtDataEntra: TMaskEdit;
    MaskEdtDataEmissao: TMaskEdit;
    EdtNomeForn: TEdit;
    LblNomeForn: TLabel;
    BtPesqIdForn: TButton;
    DBGridItensMoviEntrada: TDBGrid;
    BtPesqCadItensMoviEntra: TButton;
    procedure BtNovoMoviClick(Sender: TObject);
    procedure BtPesqMoviEntradaClick(Sender: TObject);
    procedure BtExcluirMoviClick(Sender: TObject);
    procedure BtSalvarMoviClick(Sender: TObject);
    procedure BtPesqIdFornClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtIdEntraMoviKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtIdFornMoviKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtPesqCadItensMoviEntraClick(Sender: TObject);

  private
    { Private declarations }
    MovimentacaoEntrada : TMovimentacaoEntrada;
    Fornecedor : TFornecedor;
    ItensMoviEntrada : TItensMoviEntrada;


    Procedure LimparForm;
    Procedure PesquisarIdEntrada;
    Procedure PesquisarFornecedor;
    procedure PesquisarItensEntrada;

//    Procedure PesquisarFornecedor;
  public
    { Public declarations }
  end;

var
  FormMoviEntrada: TFormMoviEntrada;

implementation

uses
  UPesqMoviEntrada, UDmMoviEntrada, UPesqFornecedor, UDmItensMoviEntrada, UCadItensMoviEntrada;

{$R *.dfm}

procedure TFormMoviEntrada.BtExcluirMoviClick(Sender: TObject);
begin
  MovimentacaoEntrada := TMovimentacaoEntrada.Create;

  if Application.MessageBox('Você deseja realmente excluir os dados?','Aviso', MB_ICONEXCLAMATION+MB_YESNO) = mrNo then
    abort;

  MovimentacaoEntrada.IdEntra := StrToInt(EdtIdEntraMovi.Text);
  MovimentacaoEntrada.excluir;

  MovimentacaoEntrada.Free;

  LimparForm;
end;

procedure TFormMoviEntrada.BtNovoMoviClick(Sender: TObject);
begin
  if (EdtNumSerie.Text <> '') or (EdtNumNota.Text <> '') or (EdtIdFornMovi.Text <> '') or (MaskEdtDataEntra.Text <> '') or (MaskEdtDataEmissao.Text <> '') or (EdtValDesconto.Text <> '') or (EdtValFrete.Text <> '') or (EdtTotalProd.Text <> '') or (EdtValEntrada.Text <> '')then
  begin
    if Application.MessageBox('Você deseja limpar os dados preenchidos? ','Aviso',MB_ICONQUESTION+MB_YESNO) = mrNo then
      Exit;
  end;

  LimparForm;
end;

procedure TFormMoviEntrada.BtPesqCadItensMoviEntraClick(Sender: TObject);
begin
  FormItensMoviEntrada.LimparForm;

  FormItensMoviEntrada.EdtIdMoviEntrada.Text := EdtIdEntraMovi.Text;
  FormItensMoviEntrada.PesquisarMovimento;

  FormItensMoviEntrada.ShowModal;

  PesquisarItensEntrada;
end;

procedure TFormMoviEntrada.BtPesqIdFornClick(Sender: TObject);
begin
    FormPesqForn.ShowModal;
  if FormPesqForn.FrmIdForn > 0 then
  begin
    EdtIdFornMovi.Text := IntToStr(FormPesqForn.FrmIdForn);
    EdtNomeForn.Text := FormPesqForn.FrmNomeForn;
  end;

end;

procedure TFormMoviEntrada.BtPesqMoviEntradaClick(Sender: TObject);
begin
  FormPesqMoviEntrada.ShowModal;
  if FormPesqMoviEntrada.FrmIdEntra > 0 then
  begin
    EdtIdEntraMovi.Text := IntToStr(FormPesqMoviEntrada.FrmIdEntra);
    PesquisarIdEntrada;
  end;

end;

procedure TFormMoviEntrada.BtSalvarMoviClick(Sender: TObject);

begin

  MovimentacaoEntrada := TMovimentacaoEntrada.Create;

  MovimentacaoEntrada.NumSerie := StrToInt(EdtNumSerie.Text);
  MovimentacaoEntrada.NumNota :=  StrToInt(EdtNumNota.Text);
  MovimentacaoEntrada.DataEmissao := StrToDateTime(MaskEdtDataEntra.Text);
  //só para ver
  MovimentacaoEntrada.DataEntra := StrToDateTime(MaskEdtDataEmissao.Text);

  if EdtValDesconto.Text = '' then
  begin
    MovimentacaoEntrada.ValDesconto := 00.00
  end
  else
  begin
    MovimentacaoEntrada.ValDesconto := StrToFloat(EdtValDesconto.Text);
  end;

  if EdtValFrete.Text = '' then
  begin
    MovimentacaoEntrada.ValFrete :=  00.00
  end
  else
  begin
    MovimentacaoEntrada.ValFrete :=  StrToFloat(EdtValFrete.Text);
  end;
  MovimentacaoEntrada.ValEntrada := StrToFloat(EdtValEntrada.Text);
  MovimentacaoEntrada.ValTotalProd := StrToFloat(EdtTotalProd.Text);
  MovimentacaoEntrada.FornId := StrToInt(EdtIdFornMovi.Text);
  MovimentacaoEntrada.TipoMovi := 'ENF';


  if EdtIdEntraMovi.Text = '' then
    MovimentacaoEntrada.incluir
  else
  begin
    MovimentacaoEntrada.IdEntra := StrToInt(EdtIdEntraMovi.Text);
    MovimentacaoEntrada.alterar;
  end;

  MovimentacaoEntrada.Free

end;

procedure TFormMoviEntrada.EdtIdEntraMoviKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_RETURN then
  begin
    PesquisarIdEntrada;
  end;
end;



procedure TFormMoviEntrada.EdtIdFornMoviKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_RETURN then
  begin
    PesquisarFornecedor;
  end;
end;

procedure TFormMoviEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LimparForm;
end;

procedure TFormMoviEntrada.LimparForm;
begin
  EdtIdEntraMovi.Clear;
  EdtIdFornMovi.Clear;
  EdtNumSerie.Clear;
  EdtNumNota.Clear;
  MaskEdtDataEntra.Clear;
  MaskEdtDataEmissao.Clear;
  EdtValDesconto.Clear;
  EdtValFrete.Clear;
  EdtTotalProd.Clear;
  EdtValEntrada.Clear;
  EdtNomeForn.Clear
end;



procedure TFormMoviEntrada.PesquisarFornecedor;
begin
  if EdtIdFornMovi.Text <> '' then
  begin

    Fornecedor := TFornecedor.Create;
    Fornecedor.Id := StrToInt(EdtIdFornMovi.Text);

    if Fornecedor.pesquisarId then
    begin

      EdtNomeForn.Text := Fornecedor.Nome;

    end
    else
    begin
      ShowMessage('Fornecedor não localizado!');
    end;

    Fornecedor.Free;
  end;
end;

procedure TFormMoviEntrada.PesquisarIdEntrada;
begin
  if EdtIdEntraMovi.Text <> '' then
  begin
    MovimentacaoEntrada := TMovimentacaoEntrada.Create;
    MovimentacaoEntrada.IdEntra := StrToInt(EdtIdEntraMovi.Text);

    if MovimentacaoEntrada.pesquisarIdEntrada then
    begin
      EdtNumNota.Text := IntToStr(MovimentacaoEntrada.NumNota);
      EdtNumSerie.Text := IntToStr(MovimentacaoEntrada.NumSerie);
      EdtIdEntraMovi.Text := IntToStr(MovimentacaoEntrada.IdEntra);
      MaskEdtDataEntra.Text := DateToStr(MovimentacaoEntrada.DataEntra);
      MaskEdtDataEmissao.Text := DateToStr(MovimentacaoEntrada.DataEmissao);
      EdtValDesconto.Text := FloatToStr(MovimentacaoEntrada.ValDesconto);
      EdtValFrete.Text := FloatToStr(MovimentacaoEntrada.ValFrete);
      EdtTotalProd.Text := FloatToStr(MovimentacaoEntrada.ValTotalProd);
      EdtValEntrada.Text := FloatToStr(MovimentacaoEntrada.ValEntrada);
      EdtIdFornMovi.Text := IntToStr(MovimentacaoEntrada.FornId);

      if MovimentacaoEntrada.FornId > 0 then
        PesquisarFornecedor;

      PesquisarItensEntrada;
    end
    else
    begin
      ShowMessage('Nota de entrada não localizado!');
    end;

    MovimentacaoEntrada.Free;


  end;

end;

procedure TFormMoviEntrada.PesquisarItensEntrada;
begin
  if EdtIdEntraMovi.Text <> '' then
  begin
    ItensMoviEntrada := TItensMoviEntrada.Create;
    ItensMoviEntrada.IdMoe := StrToInt(EdtIdEntraMovi.Text);

    if ItensMoviEntrada.pesquisarMoeId then
    begin

    end
    else
    begin
      ShowMessage('Nota de entrada não localizado!');
    end;

    ItensMoviEntrada.Free;


  end;
end;

end.
