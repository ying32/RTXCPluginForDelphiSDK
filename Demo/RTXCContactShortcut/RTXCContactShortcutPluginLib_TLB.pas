unit RTXCContactShortcutPluginLib_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 2015/01/29 14:44:32 from Type Library described below.

// ************************************************************************  //
// Type Lib:  (1)
// LIBID: {107074D6-9726-46AE-90A5-C8B990E622B0}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v4.0 StdVCL, (stdvcl40.dll)
//   (3) v1.0 RTXCMODULEINTERFACELib, (C:\Program Files (x86)\Tencent\RTXC\RTXCModuleInterface.dll)
//   (4) v1.0 stdole, (stdole32.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, RTXCMODULEINTERFACELib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  RTXCContactShortcutPluginLibMajorVersion = 1;
  RTXCContactShortcutPluginLibMinorVersion = 0;

  LIBID_RTXCContactShortcutPluginLib: TGUID = '{107074D6-9726-46AE-90A5-C8B990E622B0}';

  CLASS_RTXCContactShortcutPlugin: TGUID = '{7B73914F-718C-47AA-B945-887EF504EEDE}';
type

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  RTXCContactShortcutPlugin = IRTXCModule;


// *********************************************************************//
// The Class CoRTXCContactShortcutPlugin provides a Create and CreateRemote method to
// create instances of the default interface IRTXCModule exposed by
// the CoClass RTXCContactShortcutPlugin. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoRTXCContactShortcutPlugin = class
    class function Create: IRTXCModule;
    class function CreateRemote(const MachineName: string): IRTXCModule;
  end;

implementation

uses System.Win.ComObj;

class function CoRTXCContactShortcutPlugin.Create: IRTXCModule;
begin
  Result := CreateComObject(CLASS_RTXCContactShortcutPlugin) as IRTXCModule;
end;

class function CoRTXCContactShortcutPlugin.CreateRemote(const MachineName: string): IRTXCModule;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCContactShortcutPlugin) as IRTXCModule;
end;

end.

