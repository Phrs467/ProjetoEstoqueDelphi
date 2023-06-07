unit UItensMoviEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

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
    EdtNomeMoviEntrada: TEdit;
    EdtNomeProdItensMoviEntra: TEdit;
    EdtNomeUniItensMoviEntra: TEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormItensMoviEntrada: TFormItensMoviEntrada;

implementation

{$R *.dfm}

end.
