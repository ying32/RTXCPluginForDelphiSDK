library ManagerOcx;

uses
  ComServ,
  ManagerOcxLib_TLB in 'ManagerOcxLib_TLB.pas',
  ProjectManagerTabForm in 'ProjectManagerTabForm.pas' {ProjectManagerTab: TActiveForm};

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
end.
