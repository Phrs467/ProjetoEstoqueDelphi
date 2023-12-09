unit UCadFornecedorObj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFornecedor, Vcl.StdCtrls;

type
  TFormCadFornecedorObj = class(TForm)
    LblCadIdFornObj: TLabel;
    EdtCadIdFornObj: TEdit;
    LblCadNomeFornId: TLabel;
    EdtCadNomeFornObj: TEdit;
    BtPesqCadFornObj: TButton;
    BtNovoCadFornObj: TButton;
    BtSalvarCadFornObj: TButton;
    BtExcluirCadFornObj: TButton;
    procedure BtPesqCadFornObjClick(Sender: TObject);
    procedure BtNovoCadFornObjClick(Sender: TObject);
    procedure BtSalvarCadFornObjClick(Sender: TObject);
    procedure BtExcluirCadFornObjClick(Sender: TObject);
    procedure EdtCadIdFornObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Fornecedor : TFornecedor;

    procedure LimparForm;

    procedure PesquisarFornecedor;
  public
    { Public declarations }
  end;

var
  FormCadFornecedorObj: TFormCadFornecedorObj;

implementation

uses
  UPesqFornecedor;

{$R *.dfm}

procedure TFormCadFornecedorObj.BtExcluirCadFornObjClick(Sender: TObject);
begin
  Fornecedor := TFornecedor.Create;

  Fornecedor.Id := StrToInt(EdtCadIdFornObj.Text);
  Fornecedor.excluir;

  Fornecedor.Free;

  LimparForm;

end;

procedure TFormCadFornecedorObj.BtNovoCadFornObjClick(Sender: TObject);
begin
  LimparForm;
end;

procedure TFormCadFornecedorObj.BtPesqCadFornObjClick(Sender: TObject);
begin
 FormPesqForn.ShowModal;
  if FormPesqForn.FrmIdForn > 0 then
  begin
    EdtCadIdFornObj.Text := IntToStr(FormPesqForn.FrmIdForn);
    PesquisarFornecedor;
  end;

end;

procedure TFormCadFornecedorObj.BtSalvarCadFornObjClick(Sender: TObject);
begin
     Fornecedor := TFornecedor.Create;

     Fornecedor.Nome := EdtCadNomeFornObj.Text;

     if EdtCadIdFornObj.Text = '' then
        Fornecedor.incluir
     else
     begin
       Fornecedor.Id := StrToInt(EdtCadIdFornObj.Text);
       Fornecedor.alterar;
     end;
     Fornecedor.Free;

end;

procedure TFormCadFornecedorObj.EdtCadIdFornObjKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    PesquisarFornecedor;
  end;
end;

procedure TFormCadFornecedorObj.LimparForm;
begin
    EdtCadIdFornObj.Clear;
    EdtCadNomeFornObj.Clear;
end;

procedure TFormCadFornecedorObj.PesquisarFornecedor;
begin
  if EdtCadIdFornObj.Text <> '' then
  begin

    Fornecedor := TFornecedor.Create;
    Fornecedor.Id := StrToInt(EdtCadIdFornObj.Text);

    if Fornecedor.pesquisarId then
    begin

      EdtCadIdFornObj.Text := IntToStr(Fornecedor.Id);
      EdtCadNomeFornObj.Text := Fornecedor.Nome;
    end
    else
    begin
      ShowMessage('Fornecedor não localizado!');
    end;

    Fornecedor.Free;

  end;

end;

end.
