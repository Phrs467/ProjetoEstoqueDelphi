unit URelat�rio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TFormRelat�rio = class(TForm)
    rlrprtRelatorio: TRLReport;
    DsFormRelatorio: TDataSource;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    procedure rlrprtRelatorioBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat�rio: TFormRelat�rio;

implementation

uses
  UDmRelat�rio;

{$R *.dfm}

procedure TFormRelat�rio.rlrprtRelatorioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  DmRelat�rio.ClientDataSetRelatorio.Open;
end;

end.
