library RTXCNotetips;





{$R *.dres}

uses
  ComServ,
  SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  RTXCNotetipsPluginLib_TLB in 'RTXCNotetipsPluginLib_TLB.pas',
  RTXC.Plugin in 'RTXC.Plugin.pas',
  ufrmTipsWindow in 'ufrmTipsWindow.pas' {frm_TipsWindow};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
  TStyleManager.TrySetStyle('RTXStyle');
  TCustomStyleEngine.UnRegisterSysStyleHook('#32768',  TSysStyleHook);
end.
