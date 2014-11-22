unit CLIENTOBJECTSLib_TLB;

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
// File generated on 2014/11/8 17:48:59 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Program Files (x86)\Tencent\RTXC\ClientObjects.dll (1)
// LIBID: {2C5A016F-4DB6-4C71-97B4-5C6DCCE17A96}
// LCID: 0
// Helpfile: 
// HelpString: ClientObjects 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.1 RTXCAPILib, (D:\Program Files (x86)\Tencent\RTXC\rtxcapi.dll)
// Parent TypeLibrary:
//   (0) v1.0 RTXCPluginLib, (C:\Users\鹏\Desktop\DelphiRTXClient\RTXPluginDemo\RTXCPluginLib)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'Type' of IRTXCMenu.AddItem changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCMenu.AddItemEx changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCMenu.Popup2 changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCMenu.DelItem changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCMenu.Popup changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCMenu.Popup3 changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCMenu.IsMenuExist changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCMenu.Popup4 changed to 'Type_'
//   Hint: Member 'Object' of 'IClientObjectsModule' changed to 'Object_'
//   Hint: Parameter 'Type' of _IRTXCSubItemEvents.OnSubItemChange changed to 'Type_'
//   Hint: Parameter 'Type' of _IRTXCSubItemEvents.OnClickSubItem changed to 'Type_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, RTXCAPILib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CLIENTOBJECTSLibMajorVersion = 1;
  CLIENTOBJECTSLibMinorVersion = 0;

  LIBID_CLIENTOBJECTSLib: TGUID = '{2C5A016F-4DB6-4C71-97B4-5C6DCCE17A96}';

  IID_IRTXCExtraInfoShow: TGUID = '{A0890BFC-15F4-461D-8646-389A6C8AF928}';
  DIID__IRTXCExtraInfoShowEvents: TGUID = '{2844AAF9-AEB6-4DC6-89C4-F2D2EDC7B484}';
  CLASS_RTXCExtraInfoShow: TGUID = '{63A5AEC8-28BA-4304-AE43-A6A463AE7FCA}';
  IID_IRTXCUserTips: TGUID = '{7B7D4D1B-C1C3-40CD-9FE9-FAE50F9103BA}';
  DIID__IRTXCUserTipsEvents: TGUID = '{60FFF9D1-7BFE-4956-A91C-A34A9622379F}';
  CLASS_RTXCUserTips: TGUID = '{A497F762-5C2E-444C-8186-D93BC9ADBDAD}';
  IID_IRTXCDeptPortal: TGUID = '{A7B4E2B4-0AAC-46AB-9324-5FD0AB963C24}';
  DIID__IRTXCDeptPortalEvents: TGUID = '{FDFD3F16-D229-4700-911D-2010F58C2E85}';
  CLASS_RTXCDeptPortal: TGUID = '{9F61A206-682E-4433-885D-66EFBF5888DC}';
  IID_IRTXCUICommand: TGUID = '{A9EE332E-105A-45E2-A5E7-7A2FFE9A9E43}';
  IID_IRTXCMenu: TGUID = '{E065F019-AF95-4FC0-9F93-50AE6130B75B}';
  IID_IClientObjectsModule: TGUID = '{8CD6FE52-DAD5-4B87-817C-C96715635692}';
  IID_ITabBaseMgr: TGUID = '{28B750A2-06C4-425F-BE9A-7EBC8731472A}';
  IID_IRTXCNotification: TGUID = '{67559248-D777-4136-8EC1-B242EB310249}';
  IID_IRTXCSubItem: TGUID = '{6727FBBA-9ABB-4F73-8A47-39E9E1EA0BBD}';
  DIID__IRTXCNotificationEvents: TGUID = '{E685BC36-0EBC-4FA8-8177-D5E430183F1B}';
  CLASS_ClientObjectsModule: TGUID = '{65A8F2B5-64DD-424B-B3BC-1D033B54FA39}';
  CLASS_RTXCMenu: TGUID = '{4A287ADB-2280-4BDB-A927-5E04B0012B4E}';
  CLASS_RTXCUICommand: TGUID = '{8A281E04-B00D-4F9F-8297-7AFD3666F558}';
  CLASS_RTXCNotification: TGUID = '{01528744-119C-47EE-A47D-4386042959EA}';
  CLASS_TabBaseMgr: TGUID = '{43ABC5D6-56D4-41DF-98B1-ECC2C805D356}';
  DIID__IRTXCSubItemEvents: TGUID = '{30434D7B-690B-45FF-96ED-C6775624D12E}';
  IID_IRTXSpecialTipWnd: TGUID = '{838974FE-D2E0-43C5-8A80-22900AC42C82}';
  CLASS_RTXCSubItem: TGUID = '{0FDD4B1C-D6DA-4336-B599-C0401EEE01C2}';
  CLASS_RTXSpecialTipWnd: TGUID = '{2AF08B58-901B-41D1-86A0-C41416F32F5F}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum RTXC_UI_TYPE
type
  RTXC_UI_TYPE = TOleEnum;
const
  RTXC_UI_TYPE_ORG_STRUCT_BAR = $00000000;
  RTXC_UI_TYPE_ORG_STRUCT_GROUP = $00000001;
  RTXC_UI_TYPE_ORG_STRUCT_USER = $00000002;
  RTXC_UI_TYPE_ORG_STRUCT_BLANK = $00000003;
  RTXC_UI_TYPE_ALL_CONTACTS_BAR = $00000004;
  RTXC_UI_TYPE_ALL_CONTACTS_GROUP = $00000005;
  RTXC_UI_TYPE_MYCONTACTS_USERDEFINEDGROUP_USER = $00000006;
  RTXC_UI_TYPE_RECENTCONTACTS_SESSIONS_USER = $00000007;
  RTXC_UI_TYPE_ALL_CONTACTS_DISCUSS_GROUP = $00000008;
  RTXC_UI_TYPE_ALL_CONTACTS_RECENT = $00000009;
  RTXC_UI_TYPE_ALL_CONTACTS_MINE = $0000000A;
  RTXC_UI_TYPE_ALL_CONTACTS_BLANK = $0000000B;
  RTXC_UI_TYPE_USER_DEFINED_ROOT = $0000000C;
  RTXC_UI_TYPE_DAILY_DEPT_ROOT = $0000000D;
  RTXC_UI_TYPE_USER_MOBILEICON = $0000000E;
  RTXC_UI_TYPE_USER_STATE_WATCHER = $0000000F;
  RTXC_UI_TYPE_MOBILEBAR_USER = $00000010;
  RTXC_UI_TYPE_MOBILEBAR_BLANK = $00000011;
  RTXC_UI_TYPE_MOBILEBAR_GROUP = $00000012;
  RTXC_UI_TYPE_MOBILEBAR_BAR = $00000013;
  RTXC_UI_TYPE_MULTISELECTED = $00000014;
  RTXC_UI_TYPE_MAINFRAME_LOGIN = $00000015;
  RTXC_UI_TYPE_MAINFRAME_PANEL_USER = $00000016;
  RTXC_UI_TYPE_MAINFRAME_YOUCANDO = $00000017;
  RTXC_UI_TYPE_MINIBAR = $00000018;
  RTXC_UI_TYPE_BUDDY_SUBITEM = $00000019;
  RTXC_UI_TYPE_CONTACTBAR_BUDDY_SUBITEM = $0000001A;
  RTXC_UI_TYPE_MAINFRAME_FILE = $0000001B;
  RTXC_UI_TYPE_MAINFRAME_CONTACT = $0000001C;
  RTXC_UI_TYPE_MAINFRAME_ACTION = $0000001D;
  RTXC_UI_TYPE_PHONE_DIALER = $0000001E;
  RTXC_UI_TYPE_DRAGFILETOSEND = $0000001F;
  RTXC_UI_TYPE_INVALID = $00000020;
  RTXC_UI_TYPE_MAINFRAME_BEFORE_LOGIN = $00000021;
  RTXC_UI_TYPE_ALLINONE_USER_PIC = $00000022;
  RTXC_UI_TYPE_ALLINONE_NORMAL_ADDTO = $00000023;
  RTXC_UI_TYPE_ALLINONE_MULTI_ADDTO = $00000024;
  RTXC_UI_TYPE_MAINFRAME_BEFORE_LOGIN_STATUS = $00000025;
  RTXC_UI_TYPE_ORG_USER_MOBILEICON = $00000026;
  RTXC_UI_TYPE_IM_THIRDPARTY = $00000027;
  RTXC_UI_TYPE_RTXNAME = $00000028;
  RTXC_UI_TYPE_RTXNAME_GROUP = $00000029;
  RTXC_UI_TYPE_STATEBAR_ORGUPDATE = $0000002A;
  RTXC_UI_TYPE_ACTION = $0000002B;
  RTXC_UI_TYPE_ALLINONE_MOBILE = $0000002C;
  RTXC_UI_TYPE_ALLINONE_PHONE = $0000002D;
  RTXC_UI_TYPE_ALL_CONTACTS_DISGROUP = $0000002E;
  RTXC_UI_TYPY_RCA_BUDDY = $0000002F;
  RTXC_UI_TYPY_RCA_SEARCHEDBUDDY = $00000030;
  RTXC_UI_TYPY_RCA_FRIEND = $00000031;
  RTXC_UI_TYPE_RCA_AIO_BUDDY = $00000032;
  RTXC_UI_TYPE_ALLINONE_RCAUSER_PIC = $00000033;
  RTXC_UI_TYPE_ALL_CONTACTS_RCADISCUSS_GROUP = $00000034;
  RTXC_UI_TYPY_RCA_RECENTCONTACTS_BUDDY = $00000035;
  RTXC_UI_TYPY_RCA_ORGBUDDY = $00000036;
  RTXC_UI_TYPE_DEPT_PORTAL_SUBITEM = $00000037;
  RTXC_UI_TYPE_MAINFRAME_HELP = $00000038;
  RTXC_UI_TYPE_MAX = $00000039;

// Constants for enum RTXC_MENU_ITEM_SEPARATOR
type
  RTXC_MENU_ITEM_SEPARATOR = TOleEnum;
const
  RTXC_MENU_ITEM_SEPARATOR_NONE = $00000000;
  RTXC_MENU_ITEM_SEPARATOR_ABOVE = $00000001;
  RTXC_MENU_ITEM_SEPARATOR_BELOW = $00000002;
  RTXC_MENU_ITEM_SEPARATOR_ABOVE_AND_BELOW = $00000003;

// Constants for enum RTXC_UI_ITEM_STATE
type
  RTXC_UI_ITEM_STATE = TOleEnum;
const
  RTXC_UI_ITEM_STATE_NORMAL = $00000000;
  RTXC_UI_ITEM_STATE_DISABLED = $00000001;
  RTXC_UI_ITEM_STATE_CHECKED = $00000002;
  RTXC_UI_ITEM_STATE_DISABLED_CHECKED = $00000004;
  RTXC_UI_ITEM_STATE_HIDE = $00000008;
  RTXC_UI_ITEM_STATE_ADD = $00000010;
  RTXC_UI_ITEM_STATE_DELETE = $00000020;

// Constants for enum RTXC_QQBAR_SUBITEM_LAYOUT
type
  RTXC_QQBAR_SUBITEM_LAYOUT = TOleEnum;
const
  RTXC_QQBAR_SUBITEM_LAYOUT_NORMAL = $00000000;
  RTXC_QQBAR_SUBITEM_LAYOUT_FIRST = $00000001;
  RTXC_QQBAR_SUBITEM_LAYOUT_LAST = $00000002;

// Constants for enum RTXC_MENU_LAYOUT
type
  RTXC_MENU_LAYOUT = TOleEnum;
const
  RTXC_MENU_ITEM_LAYOUT_TOP = $00000000;
  RTXC_MENU_ITEM_LAYOUT_NORMAL = $00000001;
  RTXC_MENU_ITEM_LAYOUT_BOTTOM = $00000002;

// Constants for enum SUB_ITEM_TYPE
type
  SUB_ITEM_TYPE = TOleEnum;
const
  SUB_ITEM_TYPE_INVALID = $FFFFFFFF;
  SUB_ITEM_TYPE_MenuRClk = $00000000;
  SUB_ITEM_TYPE_MenuDropDown = $00000001;

// Constants for enum SUBITEM_ACTION_TYPE
type
  SUBITEM_ACTION_TYPE = TOleEnum;
const
  SUBITEM_ACTION_TYPE_MENUPOPUP = $00000000;
  SUBITEM_ACTION_TYPE_RUN = $00000001;

// Constants for enum EXTRAINFO_SHOW_TYPE
type
  EXTRAINFO_SHOW_TYPE = TOleEnum;
const
  EXTRAINFO_SHOW_TYPE_IM = $00000000;
  EXTRAICON_SHOW_TYPE_IM = $00000001;

// Constants for enum USERTIPS_CLICK_TYPE
type
  USERTIPS_CLICK_TYPE = TOleEnum;
const
  USERTIPS_CLICK_TYPE_ICON = $00000000;

// Constants for enum MAINFRAME_TABTYPE
type
  MAINFRAME_TABTYPE = TOleEnum;
const
  MFTT_ORGSTRUCT = $00000001;
  MFTT_MOBILE = $00000002;
  MFTT_OTHER = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRTXCExtraInfoShow = interface;
  IRTXCExtraInfoShowDisp = dispinterface;
  _IRTXCExtraInfoShowEvents = dispinterface;
  IRTXCUserTips = interface;
  IRTXCUserTipsDisp = dispinterface;
  _IRTXCUserTipsEvents = dispinterface;
  IRTXCDeptPortal = interface;
  IRTXCDeptPortalDisp = dispinterface;
  _IRTXCDeptPortalEvents = dispinterface;
  IRTXCUICommand = interface;
  IRTXCUICommandDisp = dispinterface;
  IRTXCMenu = interface;
  IRTXCMenuDisp = dispinterface;
  IClientObjectsModule = interface;
  IClientObjectsModuleDisp = dispinterface;
  ITabBaseMgr = interface;
  ITabBaseMgrDisp = dispinterface;
  IRTXCNotification = interface;
  IRTXCNotificationDisp = dispinterface;
  IRTXCSubItem = interface;
  IRTXCSubItemDisp = dispinterface;
  _IRTXCNotificationEvents = dispinterface;
  _IRTXCSubItemEvents = dispinterface;
  IRTXSpecialTipWnd = interface;
  IRTXSpecialTipWndDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RTXCExtraInfoShow = IRTXCExtraInfoShow;
  RTXCUserTips = IRTXCUserTips;
  RTXCDeptPortal = IRTXCDeptPortal;
  ClientObjectsModule = IClientObjectsModule;
  RTXCMenu = IRTXCMenu;
  RTXCUICommand = IRTXCUICommand;
  RTXCNotification = IRTXCNotification;
  TabBaseMgr = ITabBaseMgr;
  RTXCSubItem = IRTXCSubItem;
  RTXSpecialTipWnd = IRTXSpecialTipWnd;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  wireHWND = ^_RemotableHandle; 
  PUserType1 = ^MAINFRAME_TABTYPE; {*}


  __MIDL_IWinTypes_0009 = record
    case Integer of
      0: (hInproc: Integer);
      1: (hRemote: Integer);
  end;

  _RemotableHandle = record
    fContext: Integer;
    u: __MIDL_IWinTypes_0009;
  end;


// *********************************************************************//
// Interface: IRTXCExtraInfoShow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0890BFC-15F4-461D-8646-389A6C8AF928}
// *********************************************************************//
  IRTXCExtraInfoShow = interface(IDispatch)
    ['{A0890BFC-15F4-461D-8646-389A6C8AF928}']
    procedure SetExtraInfo(const Account: WideString; varType: OleVariant; varExtraInfo: OleVariant); safecall;
    procedure ExtraInfoInvoked(const Account: WideString; varType: OleVariant; 
                               varExtraInfo: OleVariant); safecall;
    procedure ExtraInfoActived(const Account: WideString; varType: OleVariant); safecall;
    procedure SetExtraIcon(const Account: WideString; varType: OleVariant; varExtraInfo: OleVariant); safecall;
    procedure ExtraIconInvoked(const Account: WideString; varType: OleVariant; 
                               varExtraInfo: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCExtraInfoShowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0890BFC-15F4-461D-8646-389A6C8AF928}
// *********************************************************************//
  IRTXCExtraInfoShowDisp = dispinterface
    ['{A0890BFC-15F4-461D-8646-389A6C8AF928}']
    procedure SetExtraInfo(const Account: WideString; varType: OleVariant; varExtraInfo: OleVariant); dispid 1;
    procedure ExtraInfoInvoked(const Account: WideString; varType: OleVariant; 
                               varExtraInfo: OleVariant); dispid 2;
    procedure ExtraInfoActived(const Account: WideString; varType: OleVariant); dispid 3;
    procedure SetExtraIcon(const Account: WideString; varType: OleVariant; varExtraInfo: OleVariant); dispid 4;
    procedure ExtraIconInvoked(const Account: WideString; varType: OleVariant; 
                               varExtraInfo: OleVariant); dispid 5;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCExtraInfoShowEvents
// Flags:     (4096) Dispatchable
// GUID:      {2844AAF9-AEB6-4DC6-89C4-F2D2EDC7B484}
// *********************************************************************//
  _IRTXCExtraInfoShowEvents = dispinterface
    ['{2844AAF9-AEB6-4DC6-89C4-F2D2EDC7B484}']
    function OnExtraInfoShowActived(const Account: WideString; varType: OleVariant; 
                                    varExtra: OleVariant): HResult; dispid 1;
    function OnInvoked(const Account: WideString; varType: OleVariant; varExtra: OleVariant): HResult; dispid 2;
    function OnExtraIconInvoked(const Account: WideString; varType: OleVariant; varExtra: OleVariant): HResult; dispid 3;
  end;

// *********************************************************************//
// Interface: IRTXCUserTips
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B7D4D1B-C1C3-40CD-9FE9-FAE50F9103BA}
// *********************************************************************//
  IRTXCUserTips = interface(IDispatch)
    ['{7B7D4D1B-C1C3-40CD-9FE9-FAE50F9103BA}']
    procedure UserTipsActived(const Account: WideString); safecall;
    procedure AddUserTipsIcon(const Account: WideString; const IconData: IRTXCDataCollection); safecall;
    procedure MouseClick(const Account: WideString; varType: OleVariant; varExtraInfo: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCUserTipsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B7D4D1B-C1C3-40CD-9FE9-FAE50F9103BA}
// *********************************************************************//
  IRTXCUserTipsDisp = dispinterface
    ['{7B7D4D1B-C1C3-40CD-9FE9-FAE50F9103BA}']
    procedure UserTipsActived(const Account: WideString); dispid 1;
    procedure AddUserTipsIcon(const Account: WideString; const IconData: IRTXCDataCollection); dispid 2;
    procedure MouseClick(const Account: WideString; varType: OleVariant; varExtraInfo: OleVariant); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCUserTipsEvents
// Flags:     (4096) Dispatchable
// GUID:      {60FFF9D1-7BFE-4956-A91C-A34A9622379F}
// *********************************************************************//
  _IRTXCUserTipsEvents = dispinterface
    ['{60FFF9D1-7BFE-4956-A91C-A34A9622379F}']
    function OnUserTipsActived(const Account: WideString; varExtra: OleVariant): HResult; dispid 1;
    function OnMouseClick(const Account: WideString; varType: OleVariant; varExtra: OleVariant): HResult; dispid 2;
  end;

// *********************************************************************//
// Interface: IRTXCDeptPortal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A7B4E2B4-0AAC-46AB-9324-5FD0AB963C24}
// *********************************************************************//
  IRTXCDeptPortal = interface(IDispatch)
    ['{A7B4E2B4-0AAC-46AB-9324-5FD0AB963C24}']
  end;

// *********************************************************************//
// DispIntf:  IRTXCDeptPortalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A7B4E2B4-0AAC-46AB-9324-5FD0AB963C24}
// *********************************************************************//
  IRTXCDeptPortalDisp = dispinterface
    ['{A7B4E2B4-0AAC-46AB-9324-5FD0AB963C24}']
  end;

// *********************************************************************//
// DispIntf:  _IRTXCDeptPortalEvents
// Flags:     (4096) Dispatchable
// GUID:      {FDFD3F16-D229-4700-911D-2010F58C2E85}
// *********************************************************************//
  _IRTXCDeptPortalEvents = dispinterface
    ['{FDFD3F16-D229-4700-911D-2010F58C2E85}']
  end;

// *********************************************************************//
// Interface: IRTXCUICommand
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9EE332E-105A-45E2-A5E7-7A2FFE9A9E43}
// *********************************************************************//
  IRTXCUICommand = interface(IDispatch)
    ['{A9EE332E-105A-45E2-A5E7-7A2FFE9A9E43}']
    procedure OnInvoke(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant); safecall;
    function OnQueryState(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant; 
                          var Text: WideString): RTXC_UI_ITEM_STATE; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCUICommandDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9EE332E-105A-45E2-A5E7-7A2FFE9A9E43}
// *********************************************************************//
  IRTXCUICommandDisp = dispinterface
    ['{A9EE332E-105A-45E2-A5E7-7A2FFE9A9E43}']
    procedure OnInvoke(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant); dispid 1;
    function OnQueryState(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant; 
                          var Text: WideString): RTXC_UI_ITEM_STATE; dispid 2;
  end;

// *********************************************************************//
// Interface: IRTXCMenu
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E065F019-AF95-4FC0-9F93-50AE6130B75B}
// *********************************************************************//
  IRTXCMenu = interface(IDispatch)
    ['{E065F019-AF95-4FC0-9F93-50AE6130B75B}']
    procedure AddItem(IsGroup: WordBool; ParentId: Integer; Type_: RTXC_UI_TYPE; Id: Integer; 
                      const RTXCUICommand: IRTXCUICommand; const Text: WideString; 
                      const IconFile: WideString; Separator: RTXC_MENU_ITEM_SEPARATOR; 
                      Level: Integer; IsDefault: WordBool); safecall;
    procedure AddItemEx(IsGroup: WordBool; ParentId: Integer; Type_: RTXC_UI_TYPE; Id: Integer; 
                        const RTXCUICommand: IRTXCUICommand; const Text: WideString; 
                        const IconFile: WideString; Separator: RTXC_MENU_ITEM_SEPARATOR; 
                        Level: Integer; IsDefault: WordBool); safecall;
    procedure CancelLastPop; safecall;
    procedure Popup2(PariantWnd: Integer; IsAutoRun: WordBool; Type_: RTXC_UI_TYPE; 
                     Parameter: OleVariant; X: Integer; Y: Integer); safecall;
    procedure DelItem(Type_: RTXC_UI_TYPE; Id: Integer; const RTXCUICommand: IRTXCUICommand); safecall;
    procedure Popup(IsAutoRun: WordBool; Type_: RTXC_UI_TYPE; Parameter: OleVariant; X: Integer; 
                    Y: Integer); safecall;
    procedure AddItem2(IsGroup: WordBool; ParentId: Integer; Types: OleVariant; Id: Integer; 
                       const RTXCUICommand: IRTXCUICommand; const Text: WideString; 
                       const IconFile: WideString; Separator: RTXC_MENU_ITEM_SEPARATOR; 
                       Level: Integer; IsDefault: WordBool); safecall;
    procedure AddItem2Ex(IsGroup: WordBool; ParentId: Integer; Types: OleVariant; Id: Integer; 
                         const RTXCUICommand: IRTXCUICommand; const Text: WideString; 
                         const IconFile: WideString; Separator: RTXC_MENU_ITEM_SEPARATOR; 
                         Level: Integer; IsDefault: WordBool); safecall;
    procedure Popup3(PariantWnd: Integer; IsAutoRun: WordBool; Type_: RTXC_UI_TYPE; 
                     Parameter: OleVariant; X: Integer; Y: Integer); safecall;
    procedure RegisterCtMenuType(const bstrMenuType: WideString; out lRet: Integer); safecall;
    procedure GetCtMenuType(const bstrMenuType: WideString; out lMenuTypeIndex: Integer); safecall;
    procedure IsMenuExist(Type_: RTXC_UI_TYPE; out pbRet: WordBool); safecall;
    procedure Popup4(IsAutoRun: WordBool; Type_: RTXC_UI_TYPE; Parameter: OleVariant; X: Integer; 
                     Y: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCMenuDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E065F019-AF95-4FC0-9F93-50AE6130B75B}
// *********************************************************************//
  IRTXCMenuDisp = dispinterface
    ['{E065F019-AF95-4FC0-9F93-50AE6130B75B}']
    procedure AddItem(IsGroup: WordBool; ParentId: Integer; Type_: RTXC_UI_TYPE; Id: Integer; 
                      const RTXCUICommand: IRTXCUICommand; const Text: WideString; 
                      const IconFile: WideString; Separator: RTXC_MENU_ITEM_SEPARATOR; 
                      Level: Integer; IsDefault: WordBool); dispid 1;
    procedure AddItemEx(IsGroup: WordBool; ParentId: Integer; Type_: RTXC_UI_TYPE; Id: Integer; 
                        const RTXCUICommand: IRTXCUICommand; const Text: WideString; 
                        const IconFile: WideString; Separator: RTXC_MENU_ITEM_SEPARATOR; 
                        Level: Integer; IsDefault: WordBool); dispid 12;
    procedure CancelLastPop; dispid 5;
    procedure Popup2(PariantWnd: Integer; IsAutoRun: WordBool; Type_: RTXC_UI_TYPE; 
                     Parameter: OleVariant; X: Integer; Y: Integer); dispid 6;
    procedure DelItem(Type_: RTXC_UI_TYPE; Id: Integer; const RTXCUICommand: IRTXCUICommand); dispid 2;
    procedure Popup(IsAutoRun: WordBool; Type_: RTXC_UI_TYPE; Parameter: OleVariant; X: Integer; 
                    Y: Integer); dispid 3;
    procedure AddItem2(IsGroup: WordBool; ParentId: Integer; Types: OleVariant; Id: Integer; 
                       const RTXCUICommand: IRTXCUICommand; const Text: WideString; 
                       const IconFile: WideString; Separator: RTXC_MENU_ITEM_SEPARATOR; 
                       Level: Integer; IsDefault: WordBool); dispid 4;
    procedure AddItem2Ex(IsGroup: WordBool; ParentId: Integer; Types: OleVariant; Id: Integer; 
                         const RTXCUICommand: IRTXCUICommand; const Text: WideString; 
                         const IconFile: WideString; Separator: RTXC_MENU_ITEM_SEPARATOR; 
                         Level: Integer; IsDefault: WordBool); dispid 13;
    procedure Popup3(PariantWnd: Integer; IsAutoRun: WordBool; Type_: RTXC_UI_TYPE; 
                     Parameter: OleVariant; X: Integer; Y: Integer); dispid 7;
    procedure RegisterCtMenuType(const bstrMenuType: WideString; out lRet: Integer); dispid 8;
    procedure GetCtMenuType(const bstrMenuType: WideString; out lMenuTypeIndex: Integer); dispid 9;
    procedure IsMenuExist(Type_: RTXC_UI_TYPE; out pbRet: WordBool); dispid 10;
    procedure Popup4(IsAutoRun: WordBool; Type_: RTXC_UI_TYPE; Parameter: OleVariant; X: Integer; 
                     Y: Integer); dispid 11;
  end;

// *********************************************************************//
// Interface: IClientObjectsModule
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8CD6FE52-DAD5-4B87-817C-C96715635692}
// *********************************************************************//
  IClientObjectsModule = interface(IDispatch)
    ['{8CD6FE52-DAD5-4B87-817C-C96715635692}']
    function Get_Object_(const Identifier: WideString): IDispatch; safecall;
    property Object_[const Identifier: WideString]: IDispatch read Get_Object_;
  end;

// *********************************************************************//
// DispIntf:  IClientObjectsModuleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8CD6FE52-DAD5-4B87-817C-C96715635692}
// *********************************************************************//
  IClientObjectsModuleDisp = dispinterface
    ['{8CD6FE52-DAD5-4B87-817C-C96715635692}']
    property Object_[const Identifier: WideString]: IDispatch readonly dispid 1;
  end;

// *********************************************************************//
// Interface: ITabBaseMgr
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {28B750A2-06C4-425F-BE9A-7EBC8731472A}
// *********************************************************************//
  ITabBaseMgr = interface(IDispatch)
    ['{28B750A2-06C4-425F-BE9A-7EBC8731472A}']
    procedure Init(const pMainFrame: IUnknown; var hParent: _RemotableHandle); safecall;
    function GetMainFrameWnd: wireHWND; safecall;
    procedure AddTab(dwTabID: LongWord; strTabName: PWideChar; var hWnd: _RemotableHandle; 
                     strIconName: PWideChar; guid: TGUID); safecall;
    procedure DeleteTab(dwTabID: LongWord); safecall;
    function GetTabInfoList: IDispatch; safecall;
    procedure AddTab2(dwTabID: LongWord; strTabName: PWideChar; var hWnd: _RemotableHandle; 
                      strIconName: PWideChar; X: Integer; Y: Integer; guid: TGUID); safecall;
    procedure StartTabFlash(guid: TGUID; nFeq: SYSINT); safecall;
    procedure StopTabFlash(guid: TGUID); safecall;
    procedure GetCurrentTab(var pMFTabType: MAINFRAME_TABTYPE); safecall;
  end;

// *********************************************************************//
// DispIntf:  ITabBaseMgrDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {28B750A2-06C4-425F-BE9A-7EBC8731472A}
// *********************************************************************//
  ITabBaseMgrDisp = dispinterface
    ['{28B750A2-06C4-425F-BE9A-7EBC8731472A}']
    procedure Init(const pMainFrame: IUnknown; 
                   var hParent: {NOT_OLEAUTO(_RemotableHandle)}OleVariant); dispid 1610743808;
    function GetMainFrameWnd: {NOT_OLEAUTO(wireHWND)}OleVariant; dispid 1610743809;
    procedure AddTab(dwTabID: LongWord; strTabName: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                     var hWnd: {NOT_OLEAUTO(_RemotableHandle)}OleVariant; 
                     strIconName: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                     guid: {NOT_OLEAUTO(TGUID)}OleVariant); dispid 1610743810;
    procedure DeleteTab(dwTabID: LongWord); dispid 1610743811;
    function GetTabInfoList: IDispatch; dispid 1610743812;
    procedure AddTab2(dwTabID: LongWord; strTabName: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                      var hWnd: {NOT_OLEAUTO(_RemotableHandle)}OleVariant; 
                      strIconName: {NOT_OLEAUTO(PWideChar)}OleVariant; X: Integer; Y: Integer; 
                      guid: {NOT_OLEAUTO(TGUID)}OleVariant); dispid 1610743813;
    procedure StartTabFlash(guid: {NOT_OLEAUTO(TGUID)}OleVariant; nFeq: SYSINT); dispid 1610743814;
    procedure StopTabFlash(guid: {NOT_OLEAUTO(TGUID)}OleVariant); dispid 1610743815;
    procedure GetCurrentTab(var pMFTabType: MAINFRAME_TABTYPE); dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IRTXCNotification
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67559248-D777-4136-8EC1-B242EB310249}
// *********************************************************************//
  IRTXCNotification = interface(IDispatch)
    ['{67559248-D777-4136-8EC1-B242EB310249}']
    procedure Show(const Key: WideString; const Data: IRTXCData); safecall;
    procedure Hide(const Key: WideString); safecall;
    procedure Update(const moduleId: WideString; const Key: WideString; iType: SYSINT; 
                     const content: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCNotificationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67559248-D777-4136-8EC1-B242EB310249}
// *********************************************************************//
  IRTXCNotificationDisp = dispinterface
    ['{67559248-D777-4136-8EC1-B242EB310249}']
    procedure Show(const Key: WideString; const Data: IRTXCData); dispid 1;
    procedure Hide(const Key: WideString); dispid 2;
    procedure Update(const moduleId: WideString; const Key: WideString; iType: SYSINT; 
                     const content: WideString); dispid 3;
  end;

// *********************************************************************//
// Interface: IRTXCSubItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6727FBBA-9ABB-4F73-8A47-39E9E1EA0BBD}
// *********************************************************************//
  IRTXCSubItem = interface(IDispatch)
    ['{6727FBBA-9ABB-4F73-8A47-39E9E1EA0BBD}']
    procedure AddItem(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer; 
                      const RTXCUICommand: IRTXCUICommand; const bstrCaption: WideString; 
                      const IconPath: WideString; enMenuUIType: RTXC_UI_TYPE; 
                      enSubItemType: SUB_ITEM_TYPE); safecall;
    procedure DelItem(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer); safecall;
    procedure InvokeSubItem(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer; 
                            enActionType: SUBITEM_ACTION_TYPE; lXPos: Integer; lYPos: Integer; 
                            varMenuPara: OleVariant); safecall;
    procedure Refresh(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer); safecall;
    procedure AddItemEx(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer; 
                        const RTXCUICommand: IRTXCUICommand; const bstrCaption: WideString; 
                        const IconPath: WideString; enMenuUIType: RTXC_UI_TYPE; 
                        enSubItemType: SUB_ITEM_TYPE; enLayoutType: RTXC_QQBAR_SUBITEM_LAYOUT); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCSubItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6727FBBA-9ABB-4F73-8A47-39E9E1EA0BBD}
// *********************************************************************//
  IRTXCSubItemDisp = dispinterface
    ['{6727FBBA-9ABB-4F73-8A47-39E9E1EA0BBD}']
    procedure AddItem(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer; 
                      const RTXCUICommand: IRTXCUICommand; const bstrCaption: WideString; 
                      const IconPath: WideString; enMenuUIType: RTXC_UI_TYPE; 
                      enSubItemType: SUB_ITEM_TYPE); dispid 1;
    procedure DelItem(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer); dispid 2;
    procedure InvokeSubItem(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer; 
                            enActionType: SUBITEM_ACTION_TYPE; lXPos: Integer; lYPos: Integer; 
                            varMenuPara: OleVariant); dispid 3;
    procedure Refresh(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer); dispid 4;
    procedure AddItemEx(enType: RTXC_UI_TYPE; const bstrGroupName: WideString; lID: Integer; 
                        const RTXCUICommand: IRTXCUICommand; const bstrCaption: WideString; 
                        const IconPath: WideString; enMenuUIType: RTXC_UI_TYPE; 
                        enSubItemType: SUB_ITEM_TYPE; enLayoutType: RTXC_QQBAR_SUBITEM_LAYOUT); dispid 5;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCNotificationEvents
// Flags:     (4096) Dispatchable
// GUID:      {E685BC36-0EBC-4FA8-8177-D5E430183F1B}
// *********************************************************************//
  _IRTXCNotificationEvents = dispinterface
    ['{E685BC36-0EBC-4FA8-8177-D5E430183F1B}']
  end;

// *********************************************************************//
// DispIntf:  _IRTXCSubItemEvents
// Flags:     (4096) Dispatchable
// GUID:      {30434D7B-690B-45FF-96ED-C6775624D12E}
// *********************************************************************//
  _IRTXCSubItemEvents = dispinterface
    ['{30434D7B-690B-45FF-96ED-C6775624D12E}']
    function OnSubItemChange(Type_: RTXC_UI_TYPE; lID: Integer; const bstrGroupName: WideString; 
                             const SubItemState: IRTXCDataCollection): HResult; dispid 1;
    function OnClickSubItem(Type_: RTXC_UI_TYPE; const bstrName: WideString; lID: Integer; 
                            enActionType: SUBITEM_ACTION_TYPE): HResult; dispid 2;
  end;

// *********************************************************************//
// Interface: IRTXSpecialTipWnd
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {838974FE-D2E0-43C5-8A80-22900AC42C82}
// *********************************************************************//
  IRTXSpecialTipWnd = interface(IDispatch)
    ['{838974FE-D2E0-43C5-8A80-22900AC42C82}']
    procedure Show(const pRTXCData: IRTXCData; const bstrSpecialTitle: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXSpecialTipWndDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {838974FE-D2E0-43C5-8A80-22900AC42C82}
// *********************************************************************//
  IRTXSpecialTipWndDisp = dispinterface
    ['{838974FE-D2E0-43C5-8A80-22900AC42C82}']
    procedure Show(const pRTXCData: IRTXCData; const bstrSpecialTitle: WideString); dispid 1;
  end;

// *********************************************************************//
// The Class CoRTXCExtraInfoShow provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCExtraInfoShow exposed by              
// the CoClass RTXCExtraInfoShow. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCExtraInfoShow = class
    class function Create: IRTXCExtraInfoShow;
    class function CreateRemote(const MachineName: string): IRTXCExtraInfoShow;
  end;

// *********************************************************************//
// The Class CoRTXCUserTips provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCUserTips exposed by              
// the CoClass RTXCUserTips. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCUserTips = class
    class function Create: IRTXCUserTips;
    class function CreateRemote(const MachineName: string): IRTXCUserTips;
  end;

// *********************************************************************//
// The Class CoRTXCDeptPortal provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCDeptPortal exposed by              
// the CoClass RTXCDeptPortal. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCDeptPortal = class
    class function Create: IRTXCDeptPortal;
    class function CreateRemote(const MachineName: string): IRTXCDeptPortal;
  end;

// *********************************************************************//
// The Class CoClientObjectsModule provides a Create and CreateRemote method to          
// create instances of the default interface IClientObjectsModule exposed by              
// the CoClass ClientObjectsModule. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClientObjectsModule = class
    class function Create: IClientObjectsModule;
    class function CreateRemote(const MachineName: string): IClientObjectsModule;
  end;

// *********************************************************************//
// The Class CoRTXCMenu provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCMenu exposed by              
// the CoClass RTXCMenu. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCMenu = class
    class function Create: IRTXCMenu;
    class function CreateRemote(const MachineName: string): IRTXCMenu;
  end;

// *********************************************************************//
// The Class CoRTXCUICommand provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCUICommand exposed by              
// the CoClass RTXCUICommand. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCUICommand = class
    class function Create: IRTXCUICommand;
    class function CreateRemote(const MachineName: string): IRTXCUICommand;
  end;

// *********************************************************************//
// The Class CoRTXCNotification provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCNotification exposed by              
// the CoClass RTXCNotification. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCNotification = class
    class function Create: IRTXCNotification;
    class function CreateRemote(const MachineName: string): IRTXCNotification;
  end;

// *********************************************************************//
// The Class CoTabBaseMgr provides a Create and CreateRemote method to          
// create instances of the default interface ITabBaseMgr exposed by              
// the CoClass TabBaseMgr. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTabBaseMgr = class
    class function Create: ITabBaseMgr;
    class function CreateRemote(const MachineName: string): ITabBaseMgr;
  end;

// *********************************************************************//
// The Class CoRTXCSubItem provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCSubItem exposed by              
// the CoClass RTXCSubItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCSubItem = class
    class function Create: IRTXCSubItem;
    class function CreateRemote(const MachineName: string): IRTXCSubItem;
  end;

// *********************************************************************//
// The Class CoRTXSpecialTipWnd provides a Create and CreateRemote method to          
// create instances of the default interface IRTXSpecialTipWnd exposed by              
// the CoClass RTXSpecialTipWnd. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXSpecialTipWnd = class
    class function Create: IRTXSpecialTipWnd;
    class function CreateRemote(const MachineName: string): IRTXSpecialTipWnd;
  end;

implementation

uses System.Win.ComObj;

class function CoRTXCExtraInfoShow.Create: IRTXCExtraInfoShow;
begin
  Result := CreateComObject(CLASS_RTXCExtraInfoShow) as IRTXCExtraInfoShow;
end;

class function CoRTXCExtraInfoShow.CreateRemote(const MachineName: string): IRTXCExtraInfoShow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCExtraInfoShow) as IRTXCExtraInfoShow;
end;

class function CoRTXCUserTips.Create: IRTXCUserTips;
begin
  Result := CreateComObject(CLASS_RTXCUserTips) as IRTXCUserTips;
end;

class function CoRTXCUserTips.CreateRemote(const MachineName: string): IRTXCUserTips;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCUserTips) as IRTXCUserTips;
end;

class function CoRTXCDeptPortal.Create: IRTXCDeptPortal;
begin
  Result := CreateComObject(CLASS_RTXCDeptPortal) as IRTXCDeptPortal;
end;

class function CoRTXCDeptPortal.CreateRemote(const MachineName: string): IRTXCDeptPortal;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCDeptPortal) as IRTXCDeptPortal;
end;

class function CoClientObjectsModule.Create: IClientObjectsModule;
begin
  Result := CreateComObject(CLASS_ClientObjectsModule) as IClientObjectsModule;
end;

class function CoClientObjectsModule.CreateRemote(const MachineName: string): IClientObjectsModule;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClientObjectsModule) as IClientObjectsModule;
end;

class function CoRTXCMenu.Create: IRTXCMenu;
begin
  Result := CreateComObject(CLASS_RTXCMenu) as IRTXCMenu;
end;

class function CoRTXCMenu.CreateRemote(const MachineName: string): IRTXCMenu;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCMenu) as IRTXCMenu;
end;

class function CoRTXCUICommand.Create: IRTXCUICommand;
begin
  Result := CreateComObject(CLASS_RTXCUICommand) as IRTXCUICommand;
end;

class function CoRTXCUICommand.CreateRemote(const MachineName: string): IRTXCUICommand;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCUICommand) as IRTXCUICommand;
end;

class function CoRTXCNotification.Create: IRTXCNotification;
begin
  Result := CreateComObject(CLASS_RTXCNotification) as IRTXCNotification;
end;

class function CoRTXCNotification.CreateRemote(const MachineName: string): IRTXCNotification;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCNotification) as IRTXCNotification;
end;

class function CoTabBaseMgr.Create: ITabBaseMgr;
begin
  Result := CreateComObject(CLASS_TabBaseMgr) as ITabBaseMgr;
end;

class function CoTabBaseMgr.CreateRemote(const MachineName: string): ITabBaseMgr;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TabBaseMgr) as ITabBaseMgr;
end;

class function CoRTXCSubItem.Create: IRTXCSubItem;
begin
  Result := CreateComObject(CLASS_RTXCSubItem) as IRTXCSubItem;
end;

class function CoRTXCSubItem.CreateRemote(const MachineName: string): IRTXCSubItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCSubItem) as IRTXCSubItem;
end;

class function CoRTXSpecialTipWnd.Create: IRTXSpecialTipWnd;
begin
  Result := CreateComObject(CLASS_RTXSpecialTipWnd) as IRTXSpecialTipWnd;
end;

class function CoRTXSpecialTipWnd.CreateRemote(const MachineName: string): IRTXSpecialTipWnd;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXSpecialTipWnd) as IRTXSpecialTipWnd;
end;

end.
