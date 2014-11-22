unit RTXCNotetipsActiveXContainerLib_TLB;

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
// File generated on 2014/11/14 14:07:45 from Type Library described below.

// ************************************************************************  //
// Type Lib: {62B4856D-8644-4DFE-B8BD-AA4C7EAD8AF0}
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
  RTXCNotetipsActiveXContainerLibMajorVersion = 1;
  RTXCNotetipsActiveXContainerLibMinorVersion = 0;

  LIBID_RTXCNotetipsActiveXContainerLib: TGUID = '{62B4856D-8644-4DFE-B8BD-AA4C7EAD8AF0}';

  IID_ITRXCNotetipsActiveXContainer: TGUID = '{B071104F-13CD-4E53-97EF-148C177D7F40}';
  DIID_ITRXCNotetipsActiveXContainerEvents: TGUID = '{BD2F42B1-6BF1-486E-8A9A-B2F19E7FD438}';
  CLASS_TRXCNotetipsActiveXContainer: TGUID = '{C2678E0F-AB4D-4E49-B9E5-629EBB788998}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  ITRXCNotetipsActiveXContainer = interface;
  ITRXCNotetipsActiveXContainerDisp = dispinterface;
  ITRXCNotetipsActiveXContainerEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  TRXCNotetipsActiveXContainer = ITRXCNotetipsActiveXContainer;


// *********************************************************************//
// Interface: ITRXCNotetipsActiveXContainer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B071104F-13CD-4E53-97EF-148C177D7F40}
// *********************************************************************//
  ITRXCNotetipsActiveXContainer = interface(IDispatch)
    ['{B071104F-13CD-4E53-97EF-148C177D7F40}']
  end;

// *********************************************************************//
// DispIntf:  ITRXCNotetipsActiveXContainerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B071104F-13CD-4E53-97EF-148C177D7F40}
// *********************************************************************//
  ITRXCNotetipsActiveXContainerDisp = dispinterface
    ['{B071104F-13CD-4E53-97EF-148C177D7F40}']
  end;

// *********************************************************************//
// DispIntf:  ITRXCNotetipsActiveXContainerEvents
// Flags:     (0)
// GUID:      {BD2F42B1-6BF1-486E-8A9A-B2F19E7FD438}
// *********************************************************************//
  ITRXCNotetipsActiveXContainerEvents = dispinterface
    ['{BD2F42B1-6BF1-486E-8A9A-B2F19E7FD438}']
  end;

implementation

uses System.Win.ComObj;

end.

