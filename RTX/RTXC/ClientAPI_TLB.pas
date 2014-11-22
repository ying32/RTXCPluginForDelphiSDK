unit ClientAPI_TLB;

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
// File generated on 2014/11/8 16:48:56 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Program Files (x86)\Tencent\RTXC\RTX.exe (1)
// LIBID: {1512291F-F2F2-4E52-9F6A-5F0756F3B9CB}
// LCID: 0
// Helpfile: 
// HelpString: RTX API 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Parent TypeLibrary:
//   (0) v1.0 RTXCPluginLib, (C:\Users\鹏\Desktop\DelphiRTXClient\RTXPluginDemo\RTXCPluginLib)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: TypeInfo 'ClientAPI' changed to 'ClientAPI_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ClientAPIMajorVersion = 1;
  ClientAPIMinorVersion = 0;

  LIBID_ClientAPI: TGUID = '{1512291F-F2F2-4E52-9F6A-5F0756F3B9CB}';

  IID_IRTXParamsKeys: TGUID = '{5B1BFAA5-EEF9-4849-8DDB-8027EAEE21C7}';
  IID_IRTXParamsValues: TGUID = '{2085E47F-C588-4B14-AAFE-5E3C0F1B342D}';
  IID_IRTXParams: TGUID = '{D5A974F6-0440-4C16-872A-EA09123D6722}';
  IID_IRTXObject: TGUID = '{6CE1C6C5-BF0A-4F33-B14A-AF69CAF92D5E}';
  IID_IClientAPI: TGUID = '{561A4CFD-9878-4022-AD1E-499FDBB0D72F}';
  CLASS_ClientAPI_: TGUID = '{872B8C5D-4AA1-412E-B087-1F82AA38809C}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRTXParamsKeys = interface;
  IRTXParamsKeysDisp = dispinterface;
  IRTXParamsValues = interface;
  IRTXParamsValuesDisp = dispinterface;
  IRTXParams = interface;
  IRTXParamsDisp = dispinterface;
  IRTXObject = interface;
  IRTXObjectDisp = dispinterface;
  IClientAPI = interface;
  IClientAPIDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ClientAPI_ = IClientAPI;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PInteger1 = ^Integer; {*}


// *********************************************************************//
// Interface: IRTXParamsKeys
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5B1BFAA5-EEF9-4849-8DDB-8027EAEE21C7}
// *********************************************************************//
  IRTXParamsKeys = interface(IDispatch)
    ['{5B1BFAA5-EEF9-4849-8DDB-8027EAEE21C7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(lIndex: Integer): OleVariant; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Item[lIndex: Integer]: OleVariant read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IRTXParamsKeysDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5B1BFAA5-EEF9-4849-8DDB-8027EAEE21C7}
// *********************************************************************//
  IRTXParamsKeysDisp = dispinterface
    ['{5B1BFAA5-EEF9-4849-8DDB-8027EAEE21C7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2;
    property Item[lIndex: Integer]: OleVariant readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: IRTXParamsValues
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2085E47F-C588-4B14-AAFE-5E3C0F1B342D}
// *********************************************************************//
  IRTXParamsValues = interface(IDispatch)
    ['{2085E47F-C588-4B14-AAFE-5E3C0F1B342D}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(lIndex: Integer): OleVariant; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Item[lIndex: Integer]: OleVariant read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IRTXParamsValuesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2085E47F-C588-4B14-AAFE-5E3C0F1B342D}
// *********************************************************************//
  IRTXParamsValuesDisp = dispinterface
    ['{2085E47F-C588-4B14-AAFE-5E3C0F1B342D}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2;
    property Item[lIndex: Integer]: OleVariant readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: IRTXParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D5A974F6-0440-4C16-872A-EA09123D6722}
// *********************************************************************//
  IRTXParams = interface(IDispatch)
    ['{D5A974F6-0440-4C16-872A-EA09123D6722}']
    function Get_Count: Integer; safecall;
    function Get_Value(vKey: OleVariant): OleVariant; safecall;
    procedure Set_Value(vKey: OleVariant; pValue: OleVariant); safecall;
    function Get_Keys: IDispatch; safecall;
    function Get_Values: IDispatch; safecall;
    property Count: Integer read Get_Count;
    property Value[vKey: OleVariant]: OleVariant read Get_Value write Set_Value;
    property Keys: IDispatch read Get_Keys;
    property Values: IDispatch read Get_Values;
  end;

// *********************************************************************//
// DispIntf:  IRTXParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D5A974F6-0440-4C16-872A-EA09123D6722}
// *********************************************************************//
  IRTXParamsDisp = dispinterface
    ['{D5A974F6-0440-4C16-872A-EA09123D6722}']
    property Count: Integer readonly dispid 1;
    property Value[vKey: OleVariant]: OleVariant dispid 2;
    property Keys: IDispatch readonly dispid 3;
    property Values: IDispatch readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IRTXObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6CE1C6C5-BF0A-4F33-B14A-AF69CAF92D5E}
// *********************************************************************//
  IRTXObject = interface(IDispatch)
    ['{6CE1C6C5-BF0A-4F33-B14A-AF69CAF92D5E}']
    function Get_Name: OleVariant; safecall;
    function Call(lID: Integer; vProperty: OleVariant): OleVariant; safecall;
    property Name: OleVariant read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  IRTXObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6CE1C6C5-BF0A-4F33-B14A-AF69CAF92D5E}
// *********************************************************************//
  IRTXObjectDisp = dispinterface
    ['{6CE1C6C5-BF0A-4F33-B14A-AF69CAF92D5E}']
    property Name: OleVariant readonly dispid 1;
    function Call(lID: Integer; vProperty: OleVariant): OleVariant; dispid 2;
  end;

// *********************************************************************//
// Interface: IClientAPI
// Flags:     (320) Dual OleAutomation
// GUID:      {561A4CFD-9878-4022-AD1E-499FDBB0D72F}
// *********************************************************************//
  IClientAPI = interface(IUnknown)
    ['{561A4CFD-9878-4022-AD1E-499FDBB0D72F}']
    procedure GetObject(vObjectID: OleVariant; out ppObject: IDispatch); safecall;
    procedure Call(lID: Integer; vProperty: OleVariant; out pResult: OleVariant); safecall;
    procedure AddEventSink(const pSink: IDispatch; var plCookie: Integer); safecall;
    procedure RemoveEventSink(lCookie: Integer); safecall;
    procedure SetEventFilter(lCookie: Integer; vObjectID: OleVariant; lEvent: Integer); safecall;
    procedure GetEventFilter(lCookie: Integer; vObjectID: OleVariant; var plEvent: Integer); safecall;
    procedure FireEvent(vObjectID: OleVariant; lEvent: Integer; vProperty: OleVariant); safecall;
    procedure AddAPIObject(vObjectID: OleVariant; const pObject: IDispatch); safecall;
    procedure LockServer(nProcessID: LongWord); safecall;
    procedure UnlockServer(nProcessID: LongWord); safecall;
    function GetLockCount: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IClientAPIDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {561A4CFD-9878-4022-AD1E-499FDBB0D72F}
// *********************************************************************//
  IClientAPIDisp = dispinterface
    ['{561A4CFD-9878-4022-AD1E-499FDBB0D72F}']
    procedure GetObject(vObjectID: OleVariant; out ppObject: IDispatch); dispid 1610678272;
    procedure Call(lID: Integer; vProperty: OleVariant; out pResult: OleVariant); dispid 1610678273;
    procedure AddEventSink(const pSink: IDispatch; var plCookie: Integer); dispid 1610678274;
    procedure RemoveEventSink(lCookie: Integer); dispid 1610678275;
    procedure SetEventFilter(lCookie: Integer; vObjectID: OleVariant; lEvent: Integer); dispid 1610678276;
    procedure GetEventFilter(lCookie: Integer; vObjectID: OleVariant; var plEvent: Integer); dispid 1610678277;
    procedure FireEvent(vObjectID: OleVariant; lEvent: Integer; vProperty: OleVariant); dispid 1610678278;
    procedure AddAPIObject(vObjectID: OleVariant; const pObject: IDispatch); dispid 1610678279;
    procedure LockServer(nProcessID: LongWord); dispid 1610678280;
    procedure UnlockServer(nProcessID: LongWord); dispid 1610678281;
    function GetLockCount: Integer; dispid 1610678282;
  end;

// *********************************************************************//
// The Class CoClientAPI_ provides a Create and CreateRemote method to          
// create instances of the default interface IClientAPI exposed by              
// the CoClass ClientAPI_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClientAPI_ = class
    class function Create: IClientAPI;
    class function CreateRemote(const MachineName: string): IClientAPI;
  end;

implementation

uses System.Win.ComObj;

class function CoClientAPI_.Create: IClientAPI;
begin
  Result := CreateComObject(CLASS_ClientAPI_) as IClientAPI;
end;

class function CoClientAPI_.CreateRemote(const MachineName: string): IClientAPI;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClientAPI_) as IClientAPI;
end;

end.
