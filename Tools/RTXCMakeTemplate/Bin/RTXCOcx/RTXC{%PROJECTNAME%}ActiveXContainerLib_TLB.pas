unit RTXC<%PROJECTNAME%>ActiveXContainerLib_TLB;

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
// File generated on <%CURRENTDATETIME%> from Type Library described below.

// ************************************************************************  //
// Type Lib: <%LIBRARYGUID%>
// LIBID: 
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v4.0 StdVCL, (stdvcl40.dll)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleCtrls, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  RTXC<%PROJECTNAME%>ActiveXContainerLibMajorVersion = 1;
  RTXC<%PROJECTNAME%>ActiveXContainerLibMinorVersion = 0;

  LIBID_RTXC<%PROJECTNAME%>ActiveXContainerLib: TGUID = '<%LIBRARYGUID%>';

  IID_ITRXC<%PROJECTNAME%>ActiveXContainer: TGUID = '<%INTERFACEGUID%>';
  DIID_ITRXC<%PROJECTNAME%>ActiveXContainerEvents: TGUID = '<%INTERFACEEVENTSGUID%>';
  CLASS_TRXC<%PROJECTNAME%>ActiveXContainer: TGUID = '<%COCLASSGUID%>';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  ITRXC<%PROJECTNAME%>ActiveXContainer = interface;
  ITRXC<%PROJECTNAME%>ActiveXContainerDisp = dispinterface;
  ITRXC<%PROJECTNAME%>ActiveXContainerEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  TRXC<%PROJECTNAME%>ActiveXContainer = ITRXC<%PROJECTNAME%>ActiveXContainer;


// *********************************************************************//
// Interface: ITRXC<%PROJECTNAME%>ActiveXContainer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      <%INTERFACEGUID%>
// *********************************************************************//
  ITRXC<%PROJECTNAME%>ActiveXContainer = interface(IDispatch)
    ['<%INTERFACEGUID%>']
  end;

// *********************************************************************//
// DispIntf:  ITRXC<%PROJECTNAME%>ActiveXContainerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      <%INTERFACEGUID%>
// *********************************************************************//
  ITRXC<%PROJECTNAME%>ActiveXContainerDisp = dispinterface
    ['<%INTERFACEGUID%>']
  end;

// *********************************************************************//
// DispIntf:  ITRXC<%PROJECTNAME%>ActiveXContainerEvents
// Flags:     (0)
// GUID:      <%INTERFACEEVENTSGUID%>
// *********************************************************************//
  ITRXC<%PROJECTNAME%>ActiveXContainerEvents = dispinterface
    ['<%INTERFACEEVENTSGUID%>']
  end;

implementation

uses System.Win.ComObj;

end.

