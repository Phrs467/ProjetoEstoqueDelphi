unit URelatorio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormRelatorio2 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    DataSource1: TDataSource;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorio2: TFormRelatorio2;

implementation

uses
  Unit1, UDmRelatorio2;

{$R *.dfm}

procedure TFormRelatorio2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dmRelatorio2.cdsFuncDepar.Open;
end;

end.
