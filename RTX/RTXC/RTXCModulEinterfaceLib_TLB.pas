unit RTXCMODULEINTERFACELib_TLB;

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
// File generated on 2014/11/9 3:18:57 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Program Files (x86)\Tencent\RTXC\RTXCModuleInterface.dll (1)
// LIBID: {547F2ACE-60B1-41E1-BD00-12AFF14D777C}
// LCID: 0
// Helpfile: 
// HelpString: RTXCModuleInterface 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Parent TypeLibrary:
//   (0) v1.0 RTXCPluginLib, (C:\Users\鹏\Desktop\DelphiRTXClient\RTXPluginDemo\RTXCPluginLib)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'type' of IRTXFaceImage.GetFaceImage changed to 'type_'
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
  RTXCMODULEINTERFACELibMajorVersion = 1;
  RTXCMODULEINTERFACELibMinorVersion = 0;

  LIBID_RTXCMODULEINTERFACELib: TGUID = '{547F2ACE-60B1-41E1-BD00-12AFF14D777C}';

  IID_IRTXCModule: TGUID = '{0D603557-93D7-4E0A-BEFF-0670BB092C51}';
  IID_IRTXCModule2: TGUID = '{9C49F56D-D4E4-4795-A530-AB6DD158750E}';
  IID_IRTXCPlugin: TGUID = '{FE51872F-051C-4514-BA4F-F2A40FD75927}';
  IID_IRTXIM: TGUID = '{D74B0924-115E-4CD0-88B6-030866069048}';
  DIID__IRTXIMEvents: TGUID = '{EDF18C0F-F0EF-477F-B8F2-1F5509F4709C}';
  IID_IRTXFaceImage: TGUID = '{693A6AC8-0D45-430D-A6E9-8F01D089261C}';
  IID_IAppRoot: TGUID = '{8D0D0E36-399E-4E7A-96E7-7DC3FB14C1D7}';
  IID_IAPI_Helper: TGUID = '{63A8CCDF-5A17-45C6-8978-536BEF951970}';
  IID_IAPI_Version: TGUID = '{467ABC8C-A54B-4DF6-AC4E-53E68F675748}';
  IID_IRTXPluginIcon: TGUID = '{DA859190-C54D-45A4-A983-FDDF4BF36E06}';
  IID_IRTXPluginTab: TGUID = '{153701C0-C789-442C-80AF-A3CA2C416303}';
  IID_IRTXPluginHandler: TGUID = '{92CFDCF3-FD82-4A7C-ABD1-37EB92B4ECB8}';
  IID_IRTXPluginTip: TGUID = '{2C2C957B-0776-43D8-8D6E-D1779FAD3EC5}';
  IID_IRTXPluginPage: TGUID = '{DE88B7D6-41D8-4FC6-BD48-2EFA53C705AB}';
  IID_IRTXImageSite: TGUID = '{C30272E8-9F6C-4409-A965-EF2493CC1CE2}';
  IID_IRTXImageEvent: TGUID = '{151B5477-6D02-4E99-9318-E7D7E7A5BC97}';
  IID_IRTXSMS: TGUID = '{94E2A404-727C-4874-A137-7B030F3CF0D1}';
  IID_IAPILicense: TGUID = '{02E63391-0145-45D4-902E-62C82F70CE1D}';
  IID_IRTXPluginFrameSize: TGUID = '{5AE854F0-3880-4130-87BD-1551BE54BE0F}';
  IID_IRTXCPluginExtTabNotify: TGUID = '{D4E42DC6-D204-46F6-93AE-11C0EE96FD4B}';
  CLASS_RTXCModule: TGUID = '{4CC1780D-3DE7-420F-B6F9-BF387FC8C64D}';
  IID_IRTXPluginMsgMgr: TGUID = '{F0B061FA-33DD-4A98-8960-47528966794F}';
  IID_IRTXCCRight: TGUID = '{C2CE9D09-AC4B-4B66-93ED-43D96C9DB4D5}';
  IID_IRTXMainFrame: TGUID = '{8A7407C6-37F5-490D-AF1B-2A5B722623C1}';
  DIID__IRTXCRightEvents: TGUID = '{82DEEE29-FE19-4912-AD44-CC3550DFA791}';
  IID_IRTXOrgInfo: TGUID = '{D547F08F-694F-4CA9-ABA0-B948BF9CE8E3}';
  IID_IRTXCUserSelector: TGUID = '{DD1E9418-6117-4513-B6ED-E8D544D6B0A1}';
  IID_IRTXCUserProfile: TGUID = '{98E66FB1-4EF7-410D-97B0-48ED9FC15413}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum RTXC_MODULE_SEND_DATA_RESULT
type
  RTXC_MODULE_SEND_DATA_RESULT = TOleEnum;
const
  RTXC_MODULE_SEND_DATA_RESULT_OK = $00000000;
  RTXC_MODULE_SEND_DATA_RESULT_FAILED = $FFFFFFFF;
  RTXC_MODULE_SEND_DATA_RESULT_TIME_OUT = $FFFFFFFE;
  RTXC_MODULE_SEND_DATA_RESULT_UNKNOWN_ERROR = $FFFFFFFD;
  RTXC_MODULE_SEND_DATA_RESULT_NO_APP = $FFFFFFFC;
  RTXC_MODULE_SEND_DATA_RESULT_NOT_EXIST = $FFFFFFFB;

// Constants for enum RTXC_PLUGIN_INFO_FIELD
type
  RTXC_PLUGIN_INFO_FIELD = TOleEnum;
const
  RTXC_PLUGIN_INFO_FIELD_DESCRIPTION = $00000000;

// Constants for enum RTXC_MODULE_UNLOAD_REASON
type
  RTXC_MODULE_UNLOAD_REASON = TOleEnum;
const
  RTXC_MODULE_UNLOAD_REASON_NORMAL = $00000000;

// Constants for enum RTX_FACE
type
  RTX_FACE = TOleEnum;
const
  RTX_FACE_ONLINE = $00000000;
  RTX_FACE_OFFLINE = $00000001;
  RTX_FACE_AWAY = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRTXCModule = interface;
  IRTXCModuleDisp = dispinterface;
  IRTXCModule2 = interface;
  IRTXCModule2Disp = dispinterface;
  IRTXCPlugin = interface;
  IRTXCPluginDisp = dispinterface;
  IRTXIM = interface;
  IRTXIMDisp = dispinterface;
  _IRTXIMEvents = dispinterface;
  IRTXFaceImage = interface;
  IRTXFaceImageDisp = dispinterface;
  IAppRoot = interface;
  IAppRootDisp = dispinterface;
  IAPI_Helper = interface;
  IAPI_HelperDisp = dispinterface;
  IAPI_Version = interface;
  IAPI_VersionDisp = dispinterface;
  IRTXPluginIcon = interface;
  IRTXPluginTab = interface;
  IRTXPluginHandler = interface;
  IRTXPluginTip = interface;
  IRTXPluginTipDisp = dispinterface;
  IRTXPluginPage = interface;
  IRTXImageSite = interface;
  IRTXImageSiteDisp = dispinterface;
  IRTXImageEvent = interface;
  IRTXImageEventDisp = dispinterface;
  IRTXSMS = interface;
  IRTXSMSDisp = dispinterface;
  IAPILicense = interface;
  IAPILicenseDisp = dispinterface;
  IRTXPluginFrameSize = interface;
  IRTXCPluginExtTabNotify = interface;
  IRTXPluginMsgMgr = interface;
  IRTXCCRight = interface;
  IRTXCCRightDisp = dispinterface;
  IRTXMainFrame = interface;
  IRTXMainFrameDisp = dispinterface;
  _IRTXCRightEvents = dispinterface;
  IRTXOrgInfo = interface;
  IRTXOrgInfoDisp = dispinterface;
  IRTXCUserSelector = interface;
  IRTXCUserSelectorDisp = dispinterface;
  IRTXCUserProfile = interface;
  IRTXCUserProfileDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RTXCModule = IRTXCModule;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PWordBool1 = ^WordBool; {*}
  PWideString1 = ^WideString; {*}
  PSYSINT1 = ^SYSINT; {*}
  PInteger1 = ^Integer; {*}
  POleVariant1 = ^OleVariant; {*}
  PIDispatch1 = ^IDispatch; {*}
  PIUnknown1 = ^IUnknown; {*}


// *********************************************************************//
// Interface: IRTXCModule
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0D603557-93D7-4E0A-BEFF-0670BB092C51}
// *********************************************************************//
  IRTXCModule = interface(IDispatch)
    ['{0D603557-93D7-4E0A-BEFF-0670BB092C51}']
    function Get_Identifier: WideString; safecall;
    function Get_Name: WideString; safecall;
    function Get_ModuleSite: IDispatch; safecall;
    procedure OnLoad(const RTXCModuleSite: IDispatch); safecall;
    procedure OnAccountChange; safecall;
    function OnInvoke(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; safecall;
    procedure OnUnload(Reason: RTXC_MODULE_UNLOAD_REASON); safecall;
    property Identifier: WideString read Get_Identifier;
    property Name: WideString read Get_Name;
    property ModuleSite: IDispatch read Get_ModuleSite;
  end;

// *********************************************************************//
// DispIntf:  IRTXCModuleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0D603557-93D7-4E0A-BEFF-0670BB092C51}
// *********************************************************************//
  IRTXCModuleDisp = dispinterface
    ['{0D603557-93D7-4E0A-BEFF-0670BB092C51}']
    property Identifier: WideString readonly dispid 1;
    property Name: WideString readonly dispid 2;
    property ModuleSite: IDispatch readonly dispid 3;
    procedure OnLoad(const RTXCModuleSite: IDispatch); dispid 4;
    procedure OnAccountChange; dispid 5;
    function OnInvoke(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; dispid 6;
    procedure OnUnload(Reason: RTXC_MODULE_UNLOAD_REASON); dispid 7;
  end;

// *********************************************************************//
// Interface: IRTXCModule2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C49F56D-D4E4-4795-A530-AB6DD158750E}
// *********************************************************************//
  IRTXCModule2 = interface(IRTXCModule)
    ['{9C49F56D-D4E4-4795-A530-AB6DD158750E}']
    function OnSDKInvoke(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCModule2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C49F56D-D4E4-4795-A530-AB6DD158750E}
// *********************************************************************//
  IRTXCModule2Disp = dispinterface
    ['{9C49F56D-D4E4-4795-A530-AB6DD158750E}']
    function OnSDKInvoke(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; dispid 12;
    property Identifier: WideString readonly dispid 1;
    property Name: WideString readonly dispid 2;
    property ModuleSite: IDispatch readonly dispid 3;
    procedure OnLoad(const RTXCModuleSite: IDispatch); dispid 4;
    procedure OnAccountChange; dispid 5;
    function OnInvoke(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; dispid 6;
    procedure OnUnload(Reason: RTXC_MODULE_UNLOAD_REASON); dispid 7;
  end;

// *********************************************************************//
// Interface: IRTXCPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE51872F-051C-4514-BA4F-F2A40FD75927}
// *********************************************************************//
  IRTXCPlugin = interface(IRTXCModule)
    ['{FE51872F-051C-4514-BA4F-F2A40FD75927}']
    function Get_Info(Field: RTXC_PLUGIN_INFO_FIELD): WideString; safecall;
    property Info[Field: RTXC_PLUGIN_INFO_FIELD]: WideString read Get_Info;
  end;

// *********************************************************************//
// DispIntf:  IRTXCPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE51872F-051C-4514-BA4F-F2A40FD75927}
// *********************************************************************//
  IRTXCPluginDisp = dispinterface
    ['{FE51872F-051C-4514-BA4F-F2A40FD75927}']
    property Info[Field: RTXC_PLUGIN_INFO_FIELD]: WideString readonly dispid 15;
    property Identifier: WideString readonly dispid 1;
    property Name: WideString readonly dispid 2;
    property ModuleSite: IDispatch readonly dispid 3;
    procedure OnLoad(const RTXCModuleSite: IDispatch); dispid 4;
    procedure OnAccountChange; dispid 5;
    function OnInvoke(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; dispid 6;
    procedure OnUnload(Reason: RTXC_MODULE_UNLOAD_REASON); dispid 7;
  end;

// *********************************************************************//
// Interface: IRTXIM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D74B0924-115E-4CD0-88B6-030866069048}
// *********************************************************************//
  IRTXIM = interface(IDispatch)
    ['{D74B0924-115E-4CD0-88B6-030866069048}']
    function SendIM(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; safecall;
    function SendIMEx(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXIMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D74B0924-115E-4CD0-88B6-030866069048}
// *********************************************************************//
  IRTXIMDisp = dispinterface
    ['{D74B0924-115E-4CD0-88B6-030866069048}']
    function SendIM(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; dispid 101;
    function SendIMEx(Receiver: OleVariant; Parameter: OleVariant; Extra: OleVariant): OleVariant; dispid 102;
  end;

// *********************************************************************//
// DispIntf:  _IRTXIMEvents
// Flags:     (4096) Dispatchable
// GUID:      {EDF18C0F-F0EF-477F-B8F2-1F5509F4709C}
// *********************************************************************//
  _IRTXIMEvents = dispinterface
    ['{EDF18C0F-F0EF-477F-B8F2-1F5509F4709C}']
    function OnPreStartAudio(const bstrParticipants: WideString; var pbHandled: WordBool): HResult; dispid 1;
    function OnPreStartVideo(const bstrParticipants: WideString; var pbHandled: WordBool): HResult; dispid 2;
  end;

// *********************************************************************//
// Interface: IRTXFaceImage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {693A6AC8-0D45-430D-A6E9-8F01D089261C}
// *********************************************************************//
  IRTXFaceImage = interface(IDispatch)
    ['{693A6AC8-0D45-430D-A6E9-8F01D089261C}']
    procedure GetFaceImage(vUser: OleVariant; type_: RTX_FACE; var pbstrPath: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXFaceImageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {693A6AC8-0D45-430D-A6E9-8F01D089261C}
// *********************************************************************//
  IRTXFaceImageDisp = dispinterface
    ['{693A6AC8-0D45-430D-A6E9-8F01D089261C}']
    procedure GetFaceImage(vUser: OleVariant; type_: RTX_FACE; var pbstrPath: WideString); dispid 101;
  end;

// *********************************************************************//
// Interface: IAppRoot
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8D0D0E36-399E-4E7A-96E7-7DC3FB14C1D7}
// *********************************************************************//
  IAppRoot = interface(IDispatch)
    ['{8D0D0E36-399E-4E7A-96E7-7DC3FB14C1D7}']
    function GetAppObject(vObjectID: OleVariant): IDispatch; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAppRootDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8D0D0E36-399E-4E7A-96E7-7DC3FB14C1D7}
// *********************************************************************//
  IAppRootDisp = dispinterface
    ['{8D0D0E36-399E-4E7A-96E7-7DC3FB14C1D7}']
    function GetAppObject(vObjectID: OleVariant): IDispatch; dispid 1;
  end;

// *********************************************************************//
// Interface: IAPI_Helper
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63A8CCDF-5A17-45C6-8978-536BEF951970}
// *********************************************************************//
  IAPI_Helper = interface(IDispatch)
    ['{63A8CCDF-5A17-45C6-8978-536BEF951970}']
    procedure GetBuddyDept(const bstrAccount: WideString; var pbstrDept: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IAPI_HelperDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63A8CCDF-5A17-45C6-8978-536BEF951970}
// *********************************************************************//
  IAPI_HelperDisp = dispinterface
    ['{63A8CCDF-5A17-45C6-8978-536BEF951970}']
    procedure GetBuddyDept(const bstrAccount: WideString; var pbstrDept: WideString); dispid 1;
  end;

// *********************************************************************//
// Interface: IAPI_Version
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {467ABC8C-A54B-4DF6-AC4E-53E68F675748}
// *********************************************************************//
  IAPI_Version = interface(IDispatch)
    ['{467ABC8C-A54B-4DF6-AC4E-53E68F675748}']
    procedure GetCompileVer(var pbstrVer: WideString); safecall;
    procedure GetLicenseVer(var pbstrVer: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IAPI_VersionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {467ABC8C-A54B-4DF6-AC4E-53E68F675748}
// *********************************************************************//
  IAPI_VersionDisp = dispinterface
    ['{467ABC8C-A54B-4DF6-AC4E-53E68F675748}']
    procedure GetCompileVer(var pbstrVer: WideString); dispid 1;
    procedure GetLicenseVer(var pbstrVer: WideString); dispid 2;
  end;

// *********************************************************************//
// Interface: IRTXPluginIcon
// Flags:     (0)
// GUID:      {DA859190-C54D-45A4-A983-FDDF4BF36E06}
// *********************************************************************//
  IRTXPluginIcon = interface(IUnknown)
    ['{DA859190-C54D-45A4-A983-FDDF4BF36E06}']
    function GetIcon(out IconPath: WideString; IsMsgIcon: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRTXPluginTab
// Flags:     (0)
// GUID:      {153701C0-C789-442C-80AF-A3CA2C416303}
// *********************************************************************//
  IRTXPluginTab = interface(IUnknown)
    ['{153701C0-C789-442C-80AF-A3CA2C416303}']
    function InitCtrl(const RtxRoot: IDispatch): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRTXPluginHandler
// Flags:     (0)
// GUID:      {92CFDCF3-FD82-4A7C-ABD1-37EB92B4ECB8}
// *********************************************************************//
  IRTXPluginHandler = interface(IUnknown)
    ['{92CFDCF3-FD82-4A7C-ABD1-37EB92B4ECB8}']
    function OnEvent(const id: WideString; const pData: IDispatch; out pRet: OleVariant): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRTXPluginTip
// Flags:     (320) Dual OleAutomation
// GUID:      {2C2C957B-0776-43D8-8D6E-D1779FAD3EC5}
// *********************************************************************//
  IRTXPluginTip = interface(IUnknown)
    ['{2C2C957B-0776-43D8-8D6E-D1779FAD3EC5}']
    function Get_GetTipWndTitle: WideString; safecall;
    procedure ShowTipWnd(const Key: WideString); safecall;
    procedure GetWinType(var nType: SYSINT); safecall;
    property GetTipWndTitle: WideString read Get_GetTipWndTitle;
  end;

// *********************************************************************//
// DispIntf:  IRTXPluginTipDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {2C2C957B-0776-43D8-8D6E-D1779FAD3EC5}
// *********************************************************************//
  IRTXPluginTipDisp = dispinterface
    ['{2C2C957B-0776-43D8-8D6E-D1779FAD3EC5}']
    property GetTipWndTitle: WideString readonly dispid 1;
    procedure ShowTipWnd(const Key: WideString); dispid 2;
    procedure GetWinType(var nType: SYSINT); dispid 3;
  end;

// *********************************************************************//
// Interface: IRTXPluginPage
// Flags:     (0)
// GUID:      {DE88B7D6-41D8-4FC6-BD48-2EFA53C705AB}
// *********************************************************************//
  IRTXPluginPage = interface(IUnknown)
    ['{DE88B7D6-41D8-4FC6-BD48-2EFA53C705AB}']
    function InitCtrl(const pRTXRoot: IDispatch): HResult; stdcall;
    function GetInfo(var pbstrTitleIconPath: WideString; var pbstrTitleText: WideString; 
                     var pbstrTreeText: WideString): HResult; stdcall;
    function OnOK: HResult; stdcall;
    function OnCancel: HResult; stdcall;
    function OnApply: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRTXImageSite
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C30272E8-9F6C-4409-A965-EF2493CC1CE2}
// *********************************************************************//
  IRTXImageSite = interface(IDispatch)
    ['{C30272E8-9F6C-4409-A965-EF2493CC1CE2}']
    function GetUserImagePath(const Account: WideString; nUserLocalImage: Integer): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXImageSiteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C30272E8-9F6C-4409-A965-EF2493CC1CE2}
// *********************************************************************//
  IRTXImageSiteDisp = dispinterface
    ['{C30272E8-9F6C-4409-A965-EF2493CC1CE2}']
    function GetUserImagePath(const Account: WideString; nUserLocalImage: Integer): WideString; dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXImageEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {151B5477-6D02-4E99-9318-E7D7E7A5BC97}
// *********************************************************************//
  IRTXImageEvent = interface(IDispatch)
    ['{151B5477-6D02-4E99-9318-E7D7E7A5BC97}']
    procedure OnSetUserImage(const bstrAccount: WideString; const bstrImagePath: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXImageEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {151B5477-6D02-4E99-9318-E7D7E7A5BC97}
// *********************************************************************//
  IRTXImageEventDisp = dispinterface
    ['{151B5477-6D02-4E99-9318-E7D7E7A5BC97}']
    procedure OnSetUserImage(const bstrAccount: WideString; const bstrImagePath: WideString); dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXSMS
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {94E2A404-727C-4874-A137-7B030F3CF0D1}
// *********************************************************************//
  IRTXSMS = interface(IDispatch)
    ['{94E2A404-727C-4874-A137-7B030F3CF0D1}']
    procedure SendSMS(vReceivers: OleVariant; out pResult: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXSMSDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {94E2A404-727C-4874-A137-7B030F3CF0D1}
// *********************************************************************//
  IRTXSMSDisp = dispinterface
    ['{94E2A404-727C-4874-A137-7B030F3CF0D1}']
    procedure SendSMS(vReceivers: OleVariant; out pResult: OleVariant); dispid 101;
  end;

// *********************************************************************//
// Interface: IAPILicense
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {02E63391-0145-45D4-902E-62C82F70CE1D}
// *********************************************************************//
  IAPILicense = interface(IDispatch)
    ['{02E63391-0145-45D4-902E-62C82F70CE1D}']
    function Get_EnterpriseName: WideString; safecall;
    function Get_EnterpriseShortName: WideString; safecall;
    function Get_EnterpriseTrunkNumber: WideString; safecall;
    function Get_EnterpriseAddress: WideString; safecall;
    property EnterpriseName: WideString read Get_EnterpriseName;
    property EnterpriseShortName: WideString read Get_EnterpriseShortName;
    property EnterpriseTrunkNumber: WideString read Get_EnterpriseTrunkNumber;
    property EnterpriseAddress: WideString read Get_EnterpriseAddress;
  end;

// *********************************************************************//
// DispIntf:  IAPILicenseDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {02E63391-0145-45D4-902E-62C82F70CE1D}
// *********************************************************************//
  IAPILicenseDisp = dispinterface
    ['{02E63391-0145-45D4-902E-62C82F70CE1D}']
    property EnterpriseName: WideString readonly dispid 102;
    property EnterpriseShortName: WideString readonly dispid 103;
    property EnterpriseTrunkNumber: WideString readonly dispid 104;
    property EnterpriseAddress: WideString readonly dispid 105;
  end;

// *********************************************************************//
// Interface: IRTXPluginFrameSize
// Flags:     (0)
// GUID:      {5AE854F0-3880-4130-87BD-1551BE54BE0F}
// *********************************************************************//
  IRTXPluginFrameSize = interface(IUnknown)
    ['{5AE854F0-3880-4130-87BD-1551BE54BE0F}']
    function GetCustomSize(out x: Integer; out y: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRTXCPluginExtTabNotify
// Flags:     (0)
// GUID:      {D4E42DC6-D204-46F6-93AE-11C0EE96FD4B}
// *********************************************************************//
  IRTXCPluginExtTabNotify = interface(IUnknown)
    ['{D4E42DC6-D204-46F6-93AE-11C0EE96FD4B}']
    function EnterExtTab: HResult; stdcall;
    function LeaveExtTab: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRTXPluginMsgMgr
// Flags:     (0)
// GUID:      {F0B061FA-33DD-4A98-8960-47528966794F}
// *********************************************************************//
  IRTXPluginMsgMgr = interface(IUnknown)
    ['{F0B061FA-33DD-4A98-8960-47528966794F}']
    function InitCtrl(const RtxRoot: IDispatch): HResult; stdcall;
    function OnMsgMgrCmd(iCmd: SYSINT): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRTXCCRight
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2CE9D09-AC4B-4B66-93ED-43D96C9DB4D5}
// *********************************************************************//
  IRTXCCRight = interface(IDispatch)
    ['{C2CE9D09-AC4B-4B66-93ED-43D96C9DB4D5}']
    procedure GetClientRight(const strRightName: WideString; var Result: Integer; 
                             const ExtendParam: OleVariant; const Extend: OleVariant); safecall;
    procedure GetClientRightInfos(var val: OleVariant); safecall;
    procedure GetGivenRightInfo(const bstrRightID: WideString; var val: OleVariant); safecall;
    procedure GetClientRoleList(var bstrRoleList: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCCRightDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2CE9D09-AC4B-4B66-93ED-43D96C9DB4D5}
// *********************************************************************//
  IRTXCCRightDisp = dispinterface
    ['{C2CE9D09-AC4B-4B66-93ED-43D96C9DB4D5}']
    procedure GetClientRight(const strRightName: WideString; var Result: Integer; 
                             const ExtendParam: OleVariant; const Extend: OleVariant); dispid 1;
    procedure GetClientRightInfos(var val: OleVariant); dispid 2;
    procedure GetGivenRightInfo(const bstrRightID: WideString; var val: OleVariant); dispid 3;
    procedure GetClientRoleList(var bstrRoleList: WideString); dispid 4;
  end;

// *********************************************************************//
// Interface: IRTXMainFrame
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A7407C6-37F5-490D-AF1B-2A5B722623C1}
// *********************************************************************//
  IRTXMainFrame = interface(IDispatch)
    ['{8A7407C6-37F5-490D-AF1B-2A5B722623C1}']
    procedure GetMenuObject(var ppObject: IDispatch); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXMainFrameDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A7407C6-37F5-490D-AF1B-2A5B722623C1}
// *********************************************************************//
  IRTXMainFrameDisp = dispinterface
    ['{8A7407C6-37F5-490D-AF1B-2A5B722623C1}']
    procedure GetMenuObject(var ppObject: IDispatch); dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCRightEvents
// Flags:     (4096) Dispatchable
// GUID:      {82DEEE29-FE19-4912-AD44-CC3550DFA791}
// *********************************************************************//
  _IRTXCRightEvents = dispinterface
    ['{82DEEE29-FE19-4912-AD44-CC3550DFA791}']
    function OnRightArrive: HResult; dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXOrgInfo
// Flags:     (320) Dual OleAutomation
// GUID:      {D547F08F-694F-4CA9-ABA0-B948BF9CE8E3}
// *********************************************************************//
  IRTXOrgInfo = interface(IUnknown)
    ['{D547F08F-694F-4CA9-ABA0-B948BF9CE8E3}']
    procedure GetOrgSelected(var ptrDispatch: IDispatch); safecall;
    procedure GetMobileSelected(var ppDispatch: IDispatch); safecall;
    procedure GetRtxOrgCtrl(var ppUnknown: IUnknown); safecall;
    procedure GetOrgSelectedContacts(var pbstrContacts: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXOrgInfoDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {D547F08F-694F-4CA9-ABA0-B948BF9CE8E3}
// *********************************************************************//
  IRTXOrgInfoDisp = dispinterface
    ['{D547F08F-694F-4CA9-ABA0-B948BF9CE8E3}']
    procedure GetOrgSelected(var ptrDispatch: IDispatch); dispid 1610678272;
    procedure GetMobileSelected(var ppDispatch: IDispatch); dispid 1610678273;
    procedure GetRtxOrgCtrl(var ppUnknown: IUnknown); dispid 1610678274;
    procedure GetOrgSelectedContacts(var pbstrContacts: WideString); dispid 1610678275;
  end;

// *********************************************************************//
// Interface: IRTXCUserSelector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DD1E9418-6117-4513-B6ED-E8D544D6B0A1}
// *********************************************************************//
  IRTXCUserSelector = interface(IDispatch)
    ['{DD1E9418-6117-4513-B6ED-E8D544D6B0A1}']
    procedure SelectUserWithPhoneNum(bSingleSel: WordBool; bCanSelFolder: WordBool; 
                                     hParent: LongWord; varReceiver: OleVariant; 
                                     const pVarResult: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCUserSelectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DD1E9418-6117-4513-B6ED-E8D544D6B0A1}
// *********************************************************************//
  IRTXCUserSelectorDisp = dispinterface
    ['{DD1E9418-6117-4513-B6ED-E8D544D6B0A1}']
    procedure SelectUserWithPhoneNum(bSingleSel: WordBool; bCanSelFolder: WordBool; 
                                     hParent: LongWord; varReceiver: OleVariant; 
                                     const pVarResult: OleVariant); dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCUserProfile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {98E66FB1-4EF7-410D-97B0-48ED9FC15413}
// *********************************************************************//
  IRTXCUserProfile = interface(IDispatch)
    ['{98E66FB1-4EF7-410D-97B0-48ED9FC15413}']
    procedure ShowProfile(const bstrAccount: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCUserProfileDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {98E66FB1-4EF7-410D-97B0-48ED9FC15413}
// *********************************************************************//
  IRTXCUserProfileDisp = dispinterface
    ['{98E66FB1-4EF7-410D-97B0-48ED9FC15413}']
    procedure ShowProfile(const bstrAccount: WideString); dispid 1;
  end;

// *********************************************************************//
// The Class CoRTXCModule provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCModule exposed by              
// the CoClass RTXCModule. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCModule = class
    class function Create: IRTXCModule;
    class function CreateRemote(const MachineName: string): IRTXCModule;
  end;

implementation

uses System.Win.ComObj;

class function CoRTXCModule.Create: IRTXCModule;
begin
  Result := CreateComObject(CLASS_RTXCModule) as IRTXCModule;
end;

class function CoRTXCModule.CreateRemote(const MachineName: string): IRTXCModule;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCModule) as IRTXCModule;
end;

end.
