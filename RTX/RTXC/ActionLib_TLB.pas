unit ActionLib_TLB;

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
// File generated on 2014/11/11 13:41:38 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Windows\Desktop\新建文件夹\Action (1)
// LIBID: {A7A77064-8915-4B6B-B17F-72469323948D}
// LCID: 0
// Helpfile:
// HelpString: Action 1.0 Type Librabry
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
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
  ActionLibMajorVersion = 1;
  ActionLibMinorVersion = 0;

  LIBID_ActionLib: TGUID = '{A7A77064-8915-4B6B-B17F-72469323948D}';

  IID_IAction: TGUID = '{82776DDB-5018-40F3-AF4A-9AF68C901958}';
  IID_IActionCollection: TGUID = '{FBA26CB7-E238-4595-ADA7-9702D15FC2D9}';
  IID_IActionMgr: TGUID = '{F935D258-FA96-4639-B6C4-D441BDBF0687}';
  DIID__IActionMgrEvents: TGUID = '{B33795DF-8C59-45D7-9E75-C070A74BFDB9}';
  CLASS_ActionMgr: TGUID = '{0F82C839-FBAE-49D5-988B-64980013F604}';
  DIID__IActionEvents: TGUID = '{007F50AC-85FD-4CFC-97F3-94ED1B79E31A}';
  CLASS_Action: TGUID = '{23179102-11D6-4F75-B435-BED7F8E16032}';
  CLASS_ActionCollection: TGUID = '{5F1B042C-5498-494E-B6A8-3774A7ABE067}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IAction = interface;
  IActionDisp = dispinterface;
  IActionCollection = interface;
  IActionCollectionDisp = dispinterface;
  IActionMgr = interface;
  IActionMgrDisp = dispinterface;
  _IActionMgrEvents = dispinterface;
  _IActionEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  ActionMgr = IActionMgr;
  Action = IAction;
  ActionCollection = IActionCollection;


// *********************************************************************//
// Interface: IAction
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {82776DDB-5018-40F3-AF4A-9AF68C901958}
// *********************************************************************//
  IAction = interface(IDispatch)
    ['{82776DDB-5018-40F3-AF4A-9AF68C901958}']
    function Get_ID: OleVariant; safecall;
    function Get_GroupName: WideString; safecall;
    function Get_Position: Integer; safecall;
    function Get_ExtraInfo: OleVariant; safecall;
    property ID: OleVariant read Get_ID;
    property GroupName: WideString read Get_GroupName;
    property Position: Integer read Get_Position;
    property ExtraInfo: OleVariant read Get_ExtraInfo;
  end;

// *********************************************************************//
// DispIntf:  IActionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {82776DDB-5018-40F3-AF4A-9AF68C901958}
// *********************************************************************//
  IActionDisp = dispinterface
    ['{82776DDB-5018-40F3-AF4A-9AF68C901958}']
    property ID: OleVariant readonly dispid 1;
    property GroupName: WideString readonly dispid 2;
    property Position: Integer readonly dispid 3;
    property ExtraInfo: OleVariant readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IActionCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FBA26CB7-E238-4595-ADA7-9702D15FC2D9}
// *********************************************************************//
  IActionCollection = interface(IDispatch)
    ['{FBA26CB7-E238-4595-ADA7-9702D15FC2D9}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IAction; safecall;
    function Get_Count: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IAction read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IActionCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FBA26CB7-E238-4595-ADA7-9702D15FC2D9}
// *********************************************************************//
  IActionCollectionDisp = dispinterface
    ['{FBA26CB7-E238-4595-ADA7-9702D15FC2D9}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IAction readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IActionMgr
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F935D258-FA96-4639-B6C4-D441BDBF0687}
// *********************************************************************//
  IActionMgr = interface(IDispatch)
    ['{F935D258-FA96-4639-B6C4-D441BDBF0687}']
    procedure AddAction(const bstrGroup: WideString; varID: OleVariant; varExtraInfo: OleVariant); safecall;
    procedure DelAction(const bstrGroup: WideString; varID: OleVariant); safecall;
    procedure SetActionPos(const bstrGroup: WideString; varID: OleVariant; lPos: Integer); safecall;
    procedure SetActionExtraInfo(const bstrGroup: WideString; varID: OleVariant;
                                 varExtraInfo: OleVariant); safecall;
    procedure InvokeAction(const bstrGroup: WideString; varID: OleVariant); safecall;
    function Get_Action(const bstrGroupName: WideString; varID: OleVariant): IAction; safecall;
    function Get_Actions(const bstrGroupName: WideString): IActionCollection; safecall;
    property Action[const bstrGroupName: WideString; varID: OleVariant]: IAction read Get_Action;
    property Actions[const bstrGroupName: WideString]: IActionCollection read Get_Actions;
  end;

// *********************************************************************//
// DispIntf:  IActionMgrDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F935D258-FA96-4639-B6C4-D441BDBF0687}
// *********************************************************************//
  IActionMgrDisp = dispinterface
    ['{F935D258-FA96-4639-B6C4-D441BDBF0687}']
    procedure AddAction(const bstrGroup: WideString; varID: OleVariant; varExtraInfo: OleVariant); dispid 1;
    procedure DelAction(const bstrGroup: WideString; varID: OleVariant); dispid 2;
    procedure SetActionPos(const bstrGroup: WideString; varID: OleVariant; lPos: Integer); dispid 3;
    procedure SetActionExtraInfo(const bstrGroup: WideString; varID: OleVariant;
                                 varExtraInfo: OleVariant); dispid 4;
    procedure InvokeAction(const bstrGroup: WideString; varID: OleVariant); dispid 5;
    property Action[const bstrGroupName: WideString; varID: OleVariant]: IAction readonly dispid 6;
    property Actions[const bstrGroupName: WideString]: IActionCollection readonly dispid 7;
  end;

// *********************************************************************//
// DispIntf:  _IActionMgrEvents
// Flags:     (0)
// GUID:      {B33795DF-8C59-45D7-9E75-C070A74BFDB9}
// *********************************************************************//
  _IActionMgrEvents = dispinterface
    ['{B33795DF-8C59-45D7-9E75-C070A74BFDB9}']
    function OnActionPosChange(const bstrGroup: WideString; varID: OleVariant; lPos: Integer;
                               varExtraInfo: OleVariant): HResult; dispid 1;
    function OnActionExtraInfoChange(const bstrGroup: WideString; varID: OleVariant;
                                     varExtraInfo: OleVariant): HResult; dispid 2;
    function OnActionAdd(const bstrGroup: WideString; varID: OleVariant; varExtraInfo: OleVariant): HResult; dispid 3;
    function OnActionDel(const bstrGroup: WideString; varID: OleVariant; varExtraInfo: OleVariant): HResult; dispid 4;
    function OnActionInvoked(const bstrGroup: WideString; varID: OleVariant;
                             varExtraInfo: OleVariant): HResult; dispid 5;
  end;

// *********************************************************************//
// DispIntf:  _IActionEvents
// Flags:     (0)
// GUID:      {007F50AC-85FD-4CFC-97F3-94ED1B79E31A}
// *********************************************************************//
  _IActionEvents = dispinterface
    ['{007F50AC-85FD-4CFC-97F3-94ED1B79E31A}']
  end;

// *********************************************************************//
// The Class CoActionMgr provides a Create and CreateRemote method to
// create instances of the default interface IActionMgr exposed by
// the CoClass ActionMgr. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoActionMgr = class
    class function Create: IActionMgr;
    class function CreateRemote(const MachineName: string): IActionMgr;
  end;

// *********************************************************************//
// The Class CoAction provides a Create and CreateRemote method to
// create instances of the default interface IAction exposed by
// the CoClass Action. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAction = class
    class function Create: IAction;
    class function CreateRemote(const MachineName: string): IAction;
  end;

// *********************************************************************//
// The Class CoActionCollection provides a Create and CreateRemote method to
// create instances of the default interface IActionCollection exposed by
// the CoClass ActionCollection. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoActionCollection = class
    class function Create: IActionCollection;
    class function CreateRemote(const MachineName: string): IActionCollection;
  end;

implementation

uses System.Win.ComObj;

class function CoActionMgr.Create: IActionMgr;
begin
  Result := CreateComObject(CLASS_ActionMgr) as IActionMgr;
end;

class function CoActionMgr.CreateRemote(const MachineName: string): IActionMgr;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ActionMgr) as IActionMgr;
end;

class function CoAction.Create: IAction;
begin
  Result := CreateComObject(CLASS_Action) as IAction;
end;

class function CoAction.CreateRemote(const MachineName: string): IAction;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Action) as IAction;
end;

class function CoActionCollection.Create: IActionCollection;
begin
  Result := CreateComObject(CLASS_ActionCollection) as IActionCollection;
end;

class function CoActionCollection.CreateRemote(const MachineName: string): IActionCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ActionCollection) as IActionCollection;
end;

end.

