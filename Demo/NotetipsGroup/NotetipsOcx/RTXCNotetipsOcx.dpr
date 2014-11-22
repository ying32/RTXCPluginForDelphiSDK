library RTXCNotetipsOcx;







{$R *.dres}

uses
  ComServ,
  Vcl.Themes,
  Vcl.Styles,
  RTXCNotetipsActiveXContainer in 'RTXCNotetipsActiveXContainer.pas' {TRXCNotetipsActiveXContainer: CoClass},
  ufrmMainForm in 'ufrmMainForm.pas' {frm_Main},
  RTXCNotetipsActiveXContainerLib_TLB in 'RTXCNotetipsActiveXContainerLib_TLB.pas',
  ufrmEditor in 'ufrmEditor.pas' {frm_Editor},
  uCommon in 'uCommon.pas';

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
  TStyleManager.TrySetStyle('RTXStyle');
  TCustomStyleEngine.UnRegisterSysStyleHook('#32768',  TSysStyleHook);
end.
