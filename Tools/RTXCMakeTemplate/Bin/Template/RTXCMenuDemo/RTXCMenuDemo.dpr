library RTXCMenuDemo;

uses
  ComServ,
  SysUtils,
  RTXCMenuDemoPluginLib_TLB in 'RTXCMenuDemoPluginLib_TLB.pas',
  RTXC.Plugin in 'RTXC.Plugin.pas';

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
