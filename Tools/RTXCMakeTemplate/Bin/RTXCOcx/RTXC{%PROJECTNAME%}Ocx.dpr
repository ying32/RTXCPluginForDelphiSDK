library RTXC<%PROJECTNAME%>Ocx;



uses
  ComServ,
  RTXC<%PROJECTNAME%>ActiveXContainer in 'RTXC<%PROJECTNAME%>ActiveXContainer.pas' ,
  ufrmMainForm in 'ufrmMainForm.pas' {frm_Main},
  RTXC<%PROJECTNAME%>ActiveXContainerLib_TLB in 'RTXC<%PROJECTNAME%>ActiveXContainerLib_TLB.pas';

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
