unit URelatorioProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TFormRelatorioProd = class(TForm)
    RLReportProdutos: TRLReport;
    dsRelatorioProd: TDataSource;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProd: TFormRelatorioProd;

implementation

uses
  UDmRelatorio2;

{$R *.dfm}

end.
