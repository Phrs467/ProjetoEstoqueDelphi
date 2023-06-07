unit URelTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLFilters, RLPDFFilter, RLReport,
  Data.DB, Data.Win.ADODB, Vcl.Imaging.pngimage;

type
  TFormRelaProd = class(TForm)
    RLReportProd: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLLabel2: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLImage1: TRLImage;
    RLSystemInfo3: TRLSystemInfo;
    RLMemo1: TRLMemo;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelaProd: TFormRelaProd;

implementation

uses
  UDmProdutos, UDBConexao;

{$R *.dfm}

end.
