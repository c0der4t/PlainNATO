program PhoneGenerator_p;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmMain_u in 'frmMain_u.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
