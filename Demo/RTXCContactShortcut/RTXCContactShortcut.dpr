library RTXCContactShortcut;

uses
  ComServ,
  SysUtils,
  RTXCContactShortcutPluginLib_TLB in 'RTXCContactShortcutPluginLib_TLB.pas',
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
