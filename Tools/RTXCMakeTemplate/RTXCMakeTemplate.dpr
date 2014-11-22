program RTXCMakeTemplate;

{$R *.dres}

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmRTXCMakeTemplate};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRTXCMakeTemplate, frmRTXCMakeTemplate);
  Application.Run;
end.
