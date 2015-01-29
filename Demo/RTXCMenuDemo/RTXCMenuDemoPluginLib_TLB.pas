unit RTXCMenuDemoPluginLib_TLB;

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
// File generated on 2014/11/22 11:55:40 from Type Library described below.

// ************************************************************************  //
// Type Lib:  (1)
// LIBID: {3355447D-ACBF-4D2E-B83D-6D2D3B530A28}
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
  RTXCMenuDemoPluginLibMajorVersion = 1;
  RTXCMenuDemoPluginLibMinorVersion = 0;

  LIBID_RTXCMenuDemoPluginLib: TGUID = '{3355447D-ACBF-4D2E-B83D-6D2D3B530A28}';

  CLASS_RTXCMenuDemoPlugin: TGUID = '{98D56037-B96F-448B-875E-6927BD97A5C9}';
type

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  RTXCMenuDemoPlugin = IRTXCModule;


// *********************************************************************//
// The Class CoRTXCMenuDemoPlugin provides a Create and CreateRemote method to
// create instances of the default interface IRTXCModule exposed by
// the CoClass RTXCMenuDemoPlugin. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoRTXCMenuDemoPlugin = class
    class function Create: IRTXCModule;
    class function CreateRemote(const MachineName: string): IRTXCModule;
  end;

implementation

uses System.Win.ComObj;

class function CoRTXCMenuDemoPlugin.Create: IRTXCModule;
begin
  Result := CreateComObject(CLASS_RTXCMenuDemoPlugin) as IRTXCModule;
end;

class function CoRTXCMenuDemoPlugin.CreateRemote(const MachineName: string): IRTXCModule;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCMenuDemoPlugin) as IRTXCModule;
end;

end.

