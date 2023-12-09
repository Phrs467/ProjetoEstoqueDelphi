unit UCadGrupoObj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UGrupo, Vcl.ExtCtrls;

type
  TFormCadGrupoObj = class(TForm)
    LblCadIdGrupo: TLabel;
    EdtCadIdGrupo: TEdit;
    LblCadNomeGrupo: TLabel;
    EdtCadNomeGrupo: TEdit;
    BtNovoCadGrupo: TButton;
    BtSalvarCadGrupo: TButton;
    BtExcluirCadGrupo: TButton;
    BtPesqCadGrupo: TButton;
    PanelCadGrupoObj: TPanel;
    procedure BtPesqCadGrupoClick(Sender: TObject);
    procedure EdtCadIdGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtNovoCadGrupoClick(Sender: TObject);
    procedure BtSalvarCadGrupoClick(Sender: TObject);
    procedure BtExcluirCadGrupoClick(Sender: TObject);
  private
    { Private declarations }
    Grupo : TGrupo;

    Procedure LimparForm;
    Procedure PesquisarGrupo;
  public
    { Public declarations }
  end;

var
  FormCadGrupoObj: TFormCadGrupoObj;

implementation

uses
  UPesqGrupo;

{$R *.dfm}

procedure TFormCadGrupoObj.BtExcluirCadGrupoClick(Sender: TObject);
begin
  Grupo := TGrupo.Create;

  if Application.MessageBox('Você deseja realmente excluir os dados?','Aviso', MB_ICONEXCLAMATION+MB_YESNO) = mrNo then
    abort;

  Grupo.Id := StrToInt(EdtCadIdGrupo.Text);
  Grupo.excluir;

  Grupo.Free;

  LimparForm;


end;

procedure TFormCadGrupoObj.BtNovoCadGrupoClick(Sender: TObject);
begin

  if (EdtCadNomeGrupo.Text <> '') then
  begin
    if Application.MessageBox('Você deseja limpar os dados preenchidos? ','Aviso',MB_ICONQUESTION+MB_YESNO) = mrNo then
      Exit;
  end;

  LimparForm;

end;

procedure TFormCadGrupoObj.BtPesqCadGrupoClick(Sender: TObject);
begin
 FormPesqGrupo.ShowModal;
  if FormPesqGrupo.FrmIdGrupo > 0 then
  begin
    EdtCadIdGrupo.Text := IntToStr(FormPesqGrupo.FrmIdGrupo);
    PesquisarGrupo;
  end;

end;

procedure TFormCadGrupoObj.BtSalvarCadGrupoClick(Sender: TObject);
begin
     Grupo := TGrupo.Create;

     Grupo.Nome := EdtCadNomeGrupo.Text;
     if EdtCadIdGrupo.Text <> '' then
     begin
        Grupo.Id := StrToInt(EdtCadIdGrupo.Text);
     end;

    if (EdtCadNomeGrupo.Text = '') then
      begin
        Application.MessageBox('Você deve preencher os campos obrigatórios','Aviso', MB_ICONEXCLAMATION+MB_OK);
        abort
      end;

     if EdtCadIdGrupo.Text = '' then
        Grupo.incluir
     else
     begin
       Grupo.Id := StrToInt(EdtCadIdGrupo.Text);
       Grupo.alterar;
     end;
     Grupo.Free;

end;

procedure TFormCadGrupoObj.EdtCadIdGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    PesquisarGrupo;
  end;
end;

procedure TFormCadGrupoObj.LimparForm;
begin
  EdtCadIdGrupo.Clear;
  EdtCadNomeGrupo.Clear;
end;

procedure TFormCadGrupoObj.PesquisarGrupo;
begin
  if EdtCadIdGrupo.Text <> '' then
  begin

    Grupo := TGrupo.Create;
    Grupo.Id := StrToInt(EdtCadIdGrupo.Text);

    if Grupo.pesquisarId then
    begin

      EdtCadIdGrupo.Text := IntToStr(Grupo.Id);
      EdtCadNomeGrupo.Text := Grupo.Nome;

    end
    else
    begin
      ShowMessage('Grupo não localizado!');
    end;

    Grupo.Free;

  end;

end;

end.
