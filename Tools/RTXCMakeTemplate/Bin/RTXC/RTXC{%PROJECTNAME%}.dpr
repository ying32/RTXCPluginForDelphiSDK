library RTXC<%PROJECTNAME%>;

uses
  ComServ,
  SysUtils,
  RTXC<%PROJECTNAME%>PluginLib_TLB in 'RTXC<%PROJECTNAME%>PluginLib_TLB.pas',
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
