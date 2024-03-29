unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,UDBConexao,
  dxGDIPlusClasses;

type
  TFormLogin = class(TForm)
    Image1: TImage;
    btnEntrar: TButton;
    edtSenha: TLabeledEdit;
    edtUsuario: TLabeledEdit;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses
  UDmLogin, UnitPrincipal;

{$R *.dfm}

procedure TFormLogin.btnEntrarClick(Sender: TObject);
var
  bconectado : Boolean;
  Situacao : String;
begin
  bconectado := UDBConexao.DBConexao.bconectar;

  dmLogin.ADOQuery1.Close;
  dmLogin.ADOQuery1.SQL.Clear;
  dmLogin.ADOQuery1.SQL.Text := 'SELECT * FROM Funcionarios where Fun_Matricula ='''+ edtUsuario.Text +
  ''' and Fun_Senha ='''+edtSenha.Text+''' ';
  dmLogin.ADOQuery1.Active := True;


  if dmLogin.ADOQuery1.RecordCount >0 then
  begin
    Situacao := dmLogin.ADOQuery1.FieldByName('Fun_Situacao').AsString;

    if Situacao = 'A' then
    begin
      dmLogin.ID_Logado := dmLogin.ADOQuery1.FieldByName('Fun_Matricula').AsString;
      dmLogin.Usuario_Logado := dmLogin.ADOQuery1.FieldByName('Fun_Nome').AsString;
      FrmPrincipal := TFrmPrincipal.Create(Application);
      FrmPrincipal.ShowModal;

    end
    else
    begin
      ShowMessage('Favor verificar a situa��o do seu cadastro juntamente ao RH.'+
      #13+ 'N�o foi poss�vel efetuar o login,tente novamente mais tarde!');
    end;
  end
  else
    ShowMessage('Usu�rio ou senha inv�lidos!');


end;

end.
