unit UCadMarcaObj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UMarca;

type
  TFormCadMarca = class(TForm)
    LblCadIdMarca: TLabel;
    EdtCadIdMarca: TEdit;
    Label2: TLabel;
    EdtCadNomeMarca: TEdit;
    BtNovoCadMarca: TButton;
    BtSalvarCadMarca: TButton;
    BtExcluirCadMarca: TButton;
    BtPesqCadMarca: TButton;
    procedure BtPesqCadMarcaClick(Sender: TObject);
    procedure BtNovoCadMarcaClick(Sender: TObject);
    procedure BtSalvarCadMarcaClick(Sender: TObject);
    procedure BtExcluirCadMarcaClick(Sender: TObject);
  private
    { Private declarations }
    Marca : TMarca;

    Procedure LimparForm;
    Procedure PesquisarMarca;
  public
    { Public declarations }
  end;

var
  FormCadMarca: TFormCadMarca;

implementation

uses
  UPesqMarca;

{$R *.dfm}

{ TFormCadMarca }

procedure TFormCadMarca.BtExcluirCadMarcaClick(Sender: TObject);
begin
  Marca := TMarca.Create;

  if Application.MessageBox('Você deseja realmente excluir os dados?','Aviso', MB_ICONEXCLAMATION+MB_YESNO) = mrNo then
    abort;

  Marca.Id := StrToInt(EdtCadIdMarca.Text);
  Marca.excluir;

  Marca.Free;

  LimparForm;

end;

procedure TFormCadMarca.BtNovoCadMarcaClick(Sender: TObject);
begin
  if (EdtCadNomeMarca.Text <> '') then
  begin
    if Application.MessageBox('Você deseja limpar os dados preenchidos? ','Aviso',MB_ICONQUESTION+MB_YESNO) = mrNo then
      Exit;
  end;

  LimparForm;

end;

procedure TFormCadMarca.BtPesqCadMarcaClick(Sender: TObject);
begin
 FormPesqMarca.ShowModal;
  if FormPesqMarca.FrmIdMarca > 0 then
  begin
    EdtCadIdMarca.Text := IntToStr(FormPesqMarca.FrmIdMarca);
    PesquisarMarca;
  end;

end;

procedure TFormCadMarca.BtSalvarCadMarcaClick(Sender: TObject);
begin
     Marca := TMarca.Create;

     Marca.Nome := EdtCadNomeMarca.Text;
     if EdtCadIdMarca.Text <> '' then
     begin
        Marca.Id := StrToInt(EdtCadIdMarca.Text);
     end;

    if (EdtCadNomeMarca.Text = '') then
      begin
        Application.MessageBox('Você deve preencher os campos obrigatórios','Aviso', MB_ICONEXCLAMATION+MB_OK);
        abort
      end;

     if EdtCadIdMarca.Text = '' then
        Marca.incluir
     else
     begin
       Marca.Id := StrToInt(EdtCadIdMarca.Text);
       Marca.alterar;
     end;
     Marca.Free;

end;

procedure TFormCadMarca.LimparForm;
begin
  EdtCadIdMarca.Clear;
  EdtCadNomeMarca.Clear;
end;

procedure TFormCadMarca.PesquisarMarca;
begin
  if EdtCadIdMarca.Text <> '' then
  begin

    Marca := TMarca.Create;
    Marca.Id := StrToInt(EdtCadIdMarca.Text);

    if Marca.pesquisarId then
    begin

      EdtCadIdMarca.Text := IntToStr(Marca.Id);
      EdtCadNomeMarca.Text := Marca.Nome;

    end
    else
    begin
      ShowMessage('Marca não localizado!');
    end;

    Marca.Free;

  end;

end;

end.
