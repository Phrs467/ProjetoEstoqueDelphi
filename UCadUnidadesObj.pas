unit UCadUnidadesObj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UUnidade, Vcl.ExtCtrls;

type
  TFormCadUnidadesObj = class(TForm)
    LblCadIdUniObj: TLabel;
    LblCadDescUniObj: TLabel;
    EdtCadIdUniObj: TEdit;
    MemoCadDescUniObj: TMemo;
    BtNovoCadUniObj: TButton;
    BtSalvarCadUniObj: TButton;
    BtExcluirCadUniObj: TButton;
    BtPesqIdUniObj: TButton;
    PanelCadUniObj: TPanel;
    procedure BtPesqIdUniObjClick(Sender: TObject);
    procedure BtNovoCadUniObjClick(Sender: TObject);
    procedure BtSalvarCadUniObjClick(Sender: TObject);
    procedure BtExcluirCadUniObjClick(Sender: TObject);
    procedure EdtCadIdUniObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Unidade : TUnidade;

    procedure LimparForm;

    procedure PesquisarUnidade;
  public
    { Public declarations }
  end;

var
  FormCadUnidadesObj: TFormCadUnidadesObj;

implementation

uses
  UPesqUnidades;

{$R *.dfm}

procedure TFormCadUnidadesObj.BtExcluirCadUniObjClick(Sender: TObject);
begin
  Unidade := TUnidade.Create;

  Unidade.Id := StrToInt(EdtCadIdUniObj.Text);
  Unidade.excluir;

  Unidade.Free;

  LimparForm;

end;

procedure TFormCadUnidadesObj.BtNovoCadUniObjClick(Sender: TObject);
begin
  LimparForm;
end;

procedure TFormCadUnidadesObj.BtPesqIdUniObjClick(Sender: TObject);
begin
 FormPesqUnidades.ShowModal;
  if FormPesqUnidades.FrmIdUnidades > 0 then
  begin
    EdtCadIdUniObj.Text := IntToStr(FormPesqUnidades.FrmIdUnidades);
    PesquisarUnidade;
  end;

end;

procedure TFormCadUnidadesObj.BtSalvarCadUniObjClick(Sender: TObject);
begin
     Unidade := TUnidade.Create;

     Unidade.Descricao := MemoCadDescUniObj.Text;

     if EdtCadIdUniObj.Text = '' then
        Unidade.incluir
     else
     begin
       Unidade.Id := StrToInt(EdtCadIdUniObj.Text);
       Unidade.alterar;
     end;
     Unidade.Free;

end;

procedure TFormCadUnidadesObj.EdtCadIdUniObjKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    PesquisarUnidade;
  end;
end;

procedure TFormCadUnidadesObj.LimparForm;
begin
  EdtCadIdUniObj.Clear;
  MemoCadDescUniObj.Clear;
end;

procedure TFormCadUnidadesObj.PesquisarUnidade;
begin
  if EdtCadIdUniObj.Text <> '' then
  begin

    Unidade := TUnidade.Create;
    Unidade.Id := StrToInt(EdtCadIdUniObj.Text);

    if Unidade.pesquisarId then
    begin

      EdtCadIdUniObj.Text := IntToStr(Unidade.Id);
      MemoCadDescUniObj.Text := Unidade.Descricao;

    end
    else
    begin
      ShowMessage('Unidade n�o localizado!');
    end;

    Unidade.Free;

  end;

end;

end.
