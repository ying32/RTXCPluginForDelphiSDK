library ProjectManager;


{ Reduce EXE size by disabling as much of RTTI as possible (delphi 2009/2010/xe/xe2/xe3/xe4/xe5/xe6/xe7) }
{$IF CompilerVersion >= 21.0}
  {$WEAKLINKRTTI ON}
  {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$ENDIF}

uses
  ComServ,
  SysUtils,
  RTX_ProjectManager in 'RTX_ProjectManager.pas' {RTXTestDemo: CoClass},
  RTXCPluginLib_TLB in 'RTXCPluginLib_TLB.pas',
  uFrmManagerView in 'uFrmManagerView.pas' {frm_ManagerView},
  ufrmMsgTips in 'ufrmMsgTips.pas' {frm_MsgTips};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
  //TStyleManager.SetStyle(TStyleManager.LoadFromFile(ExtractFilePath(GetModuleName(Hinstance)) + 'Light.vsf'));
end.
