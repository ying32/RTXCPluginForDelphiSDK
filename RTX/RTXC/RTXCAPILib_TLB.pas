unit RTXCAPILib_TLB;

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
// File generated on 2014/11/8 17:48:58 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Program Files (x86)\Tencent\RTXC\rtxcapi.dll (2)
// LIBID: {8F1A1787-6F50-4DE4-90DC-8DE5663DEE81}
// LCID: 0
// Helpfile: 
// HelpString: RTXCAPI 1.1 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 RTXCMODULEINTERFACELib, (D:\Program Files (x86)\Tencent\RTXC\RTXCModuleInterface.dll)
// Parent TypeLibrary:
//   (0) v1.0 RTXCPluginLib, (C:\Users\鹏\Desktop\DelphiRTXClient\RTXPluginDemo\RTXCPluginLib)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'String' of IRTXCData.GetString changed to 'String_'
//   Hint: Parameter 'String' of IRTXCData.SetString changed to 'String_'
//   Hint: Parameter 'Object' of IRTXCData.GetObject changed to 'Object_'
//   Hint: Parameter 'Object' of IRTXCData.SetObject changed to 'Object_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of IRTXCSessionManager.CreateSession changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCSessionManager.CreateSession2 changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCSessionManager.CreateSession3 changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCMDSessionManager.CreateSession changed to 'Type_'
//   Hint: Parameter 'Type' of IRTXCRoot.ServerAddress changed to 'Type_'
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
  RTXCAPILibMajorVersion = 1;
  RTXCAPILibMinorVersion = 1;

  LIBID_RTXCAPILib: TGUID = '{8F1A1787-6F50-4DE4-90DC-8DE5663DEE81}';

  IID_IRTXCDataCollection: TGUID = '{DB69C2A9-C6E4-4200-B418-61C1ED532499}';
  IID_IRTXCData: TGUID = '{B1251EE5-3843-4857-9CFF-A97EC20C3D85}';
  IID_IRTXCLicense: TGUID = '{93899B30-3AC4-4C33-8443-2ECDABE8CE5D}';
  IID_IRTXCRTXGroup: TGUID = '{6E9340FD-535F-4997-AA6D-9EA59202C58B}';
  IID_IRTXCRTXGroupCollection: TGUID = '{33156ED4-7EDA-40CD-92F4-160C3DCD5970}';
  IID_IRTXCRTXBuddyCollection: TGUID = '{142275C8-B019-498B-956D-B6FDA135F69B}';
  IID_IRTXCRTXBuddy: TGUID = '{2E38F2E2-5E73-4447-A9C8-F3ED22C05E28}';
  IID_IRTXCExtBuddy: TGUID = '{07C671CC-7905-4301-8A7A-BE292A575F60}';
  IID_IRTXCExtGroupCollection: TGUID = '{814EEE2C-097C-41D3-907D-043B5F96921B}';
  IID_IRTXCExtGroup: TGUID = '{524BA3C7-4AC8-4BFC-84B4-63DCFFCCE845}';
  IID_IRTXCExtBuddyCollection: TGUID = '{9D70436E-E766-4025-9FB5-2343D8D1D493}';
  IID_IRTXCRTXGroupManager: TGUID = '{4DF115EC-9AB2-4D75-A610-5D0B58129E29}';
  IID_IRTXCRTXBuddyManager: TGUID = '{B7A37633-D5E6-4472-B00E-BA741F6B4AE9}';
  IID_IRTXCPresence: TGUID = '{6B73CB5C-BAA6-4DBC-B0F6-75DDDC66147A}';
  IID_IRTXCExState: TGUID = '{E4373FD6-6ADD-408B-ACF2-E66D796AC608}';
  IID_IRTXCModuleCollection: TGUID = '{2CB3B961-DC69-49D2-AF3C-7CD73C9BFBBA}';
  IID_IRTXCSession: TGUID = '{F747E1C2-FE0B-4A3B-9906-22804DACA844}';
  IID_IRTXCSessionCollection: TGUID = '{C4914EAE-8D0D-4FB2-8E89-11ADC809FB1D}';
  IID_IRTXCSessionManager: TGUID = '{91F9D53D-DC7E-4A10-B109-20972C7564AA}';
  IID_IRTXCMFCSupport: TGUID = '{19EC1A99-03E4-463B-A643-93B887B31356}';
  IID_IRTXCMDSessionManager: TGUID = '{0FCEBD34-F4F9-4244-A9A7-DA04BADB80A0}';
  IID_IRTXCMDSession: TGUID = '{3A9CA998-1DEF-4682-8976-0892FF6613D4}';
  IID_IRTXCExtGroupManager: TGUID = '{552B2C18-C977-4850-BF82-46E8BC4C9C70}';
  IID_IRTXCExtBuddyManager: TGUID = '{BD43582C-4CDB-4168-8D12-02BA2E73E19A}';
  IID_IRTXCEventCenter: TGUID = '{E4508738-C04A-4E1D-861E-3C701049E153}';
  IID_IRTXCRoot: TGUID = '{2C86C87B-A019-4204-A7D3-FB4C2464CFE0}';
  IID_IRTXCModuleSite: TGUID = '{7BAC8791-6182-45E0-A067-30A040F36553}';
  IID_IRTXCModuleSite2: TGUID = '{D7392FBC-BC0B-4865-9D77-9EF52D8762BC}';
  IID_IRTXCModuleSite3: TGUID = '{DEEC9BD4-338A-42BD-B029-DDC142B1B11F}';
  DIID__IRTXCModuleSiteEvents: TGUID = '{E32DC330-3889-4D94-BFD6-39FC3A5432BD}';
  DIID__IRTXCMFCSupportEvents: TGUID = '{7C96E265-9231-431A-91E0-15A5846FF59A}';
  DIID__IRTXCRootEvents: TGUID = '{8295917F-7481-438F-9BAD-6AFD6EF7AC7B}';
  DIID__IRTXCRTXGroupManagerEvents: TGUID = '{DEE9D53F-41D4-463D-B064-3BAF402F85DD}';
  CLASS_RTXCRoot: TGUID = '{43CAA076-FE58-4951-9B25-18D87403642F}';
  CLASS_RTXCData: TGUID = '{21C835C0-2073-4FBC-BA5C-DF491340D257}';
  CLASS_RTXCDataCollection: TGUID = '{28681DA9-6BA8-4EA3-BC9D-7DA1A1B07021}';
  CLASS_RTXCRTXGroupManager: TGUID = '{189F90D6-37CF-40DF-A9E8-6F12637223ED}';
  CLASS_RTXCRTXGroup: TGUID = '{D5B54235-CBA4-4FCF-BEA0-D830F796A21A}';
  DIID__IRTXCRTXBuddyManagerEvents: TGUID = '{A3C821FE-D270-470E-8535-F5797993A1BA}';
  CLASS_RTXCRTXBuddyManager: TGUID = '{BF4227B0-9654-48A6-B414-844A8813AC46}';
  DIID__IRTXCRTXBuddyEvents: TGUID = '{DE015F73-C0EA-46DE-9E9D-3374F3D0E209}';
  CLASS_RTXCRTXBuddy: TGUID = '{B5350793-63CC-4F34-B6E3-631088A6BF85}';
  CLASS_RTXCRTXGroupCollection: TGUID = '{631CC46D-D197-415C-99BD-D83FF728C84D}';
  CLASS_RTXCRTXBuddyCollection: TGUID = '{4D9002C2-6C26-4BBE-88F4-A1ABC03C5C72}';
  CLASS_RTXCModuleSite: TGUID = '{70E181AB-7D63-4E9B-A2CA-31F77C50F833}';
  CLASS_RTXCModuleCollection: TGUID = '{474DEF81-D0E0-49F4-BC00-25A0E85E4D87}';
  DIID__IRTXCPresenceEvents: TGUID = '{EB354242-29F3-4FA5-A5E6-B3599973589D}';
  CLASS_RTXCPresence: TGUID = '{B5E82D5B-84DC-4A06-80A9-B4D0BB3B428C}';
  DIID__IRTXCSessionManagerEvents: TGUID = '{84525E5C-A868-41B2-B01F-A42B7B12D7B0}';
  CLASS_RTXCSessionManager: TGUID = '{8DD21917-E595-4DB7-B0C5-4A0A0DC827B0}';
  DIID__IRTXCSessionEvents: TGUID = '{08191316-5140-48FD-8AE7-17F07F149BE0}';
  CLASS_RTXCSession: TGUID = '{9B0F99BB-4B0E-4150-B257-600EC504A1AB}';
  CLASS_RTXCSessionCollection: TGUID = '{EAB6E590-6CBD-4531-926F-2429233A3B57}';
  CLASS_RTXCMFCSupport: TGUID = '{0320CDC5-D075-493B-8792-28B1FB082FCF}';
  DIID__IRTXCMDSessionManagerEvents: TGUID = '{277CDFBB-5EF6-449E-B09F-5B984C1EBDCF}';
  CLASS_RTXCMDSessionManager: TGUID = '{CF2D1287-9DBB-44DB-8B55-740EDE1D4934}';
  DIID__IRTXCMDSessionEvents: TGUID = '{8244EED1-C5AC-4648-9606-DF81E3891744}';
  CLASS_RTXCMDSession: TGUID = '{0E9C9BB4-DAC9-4550-AF7F-67D099453E2C}';
  DIID__IRTXCLicenseEvents: TGUID = '{5E6697F9-A328-4B68-9C8F-36DD4C8AC009}';
  CLASS_RTXCLicense: TGUID = '{1C8DC091-BC25-454C-ADFB-0020EBE2E230}';
  DIID__IRTXCExtBuddyEvents: TGUID = '{CDF6A4E0-0068-4C51-A3FF-8640DF5ABD0B}';
  CLASS_RTXCExtBuddy: TGUID = '{50F66EA7-D35F-4CC3-8468-A2F993C2D35A}';
  DIID__IRTXCExtBuddyManagerEvents: TGUID = '{8FF094D3-E84C-40EA-AFEE-34B06B3F2AC5}';
  CLASS_RTXCExtBuddyManager: TGUID = '{38DFC555-083E-426E-AD32-91E3986E7B1A}';
  CLASS_RTXCExtBuddyCollection: TGUID = '{E413FDB8-E5D0-4336-8E17-6C536BBB7E19}';
  DIID__IRTXCExtGroupManagerEvents: TGUID = '{C69ED89F-4024-45E9-BE5E-CD27700E5EF5}';
  DIID__IRTXCExtGroupEvents: TGUID = '{31955751-57A1-4067-8F6D-0E4118C955FB}';
  CLASS_RTXCExtGroup: TGUID = '{6D016796-A3F9-471B-84E9-AF56E8ECCB31}';
  CLASS_RTXCExtGroupManager: TGUID = '{A25BA79E-EBAE-4471-B413-A492A1858DB0}';
  DIID__IRTXCExtGroupCollectionEvents: TGUID = '{E1F89F78-2BBE-41D9-B91D-DB379938145D}';
  CLASS_RTXCExtGroupCollection: TGUID = '{0FF28A4D-C74D-4FED-9D02-5EE14D02571E}';
  DIID__IRTXCEventCenterEvents: TGUID = '{528935AA-74A9-425F-A632-51C4F3E3E458}';
  CLASS_RTXCEventCenter: TGUID = '{5436FBFA-1386-4987-9899-26A6ED679571}';
  DIID__DRTXOrg: TGUID = '{BC0AC144-423E-40D5-B369-9C5DD05360A1}';
  DIID__DRTXOrgEvents: TGUID = '{7AEFD014-CD49-40A4-8593-EBA23BC4C6A3}';
  DIID__IRTXCExStateEvents: TGUID = '{45846CFE-5908-458D-A6BC-BFEF97CD39F6}';
  CLASS_RTXCExState: TGUID = '{ABC82D40-6F0C-46BC-85A2-A0E73000140B}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum OBJECT_TYPE
type
  OBJECT_TYPE = TOleEnum;
const
  OBJECT_RTX_BUDDY = $00000000;
  OBJECT_RTX_GROUP = $00000001;
  OBJECT_MOBILE_BUDDY = $00000002;
  OBJECT_MOBILE_GROUP = $00000003;
  OBJECT_QQBAR_HITEM = $00000004;
  OBJECT_MOBILE = $00000005;
  OBJECT_RTX_SESSION = $00000006;
  OBJECT_RTX_RECENTCONTACT = $00000007;
  OBJECT_RTX_MENUPARAFROM = $00000008;
  OBJECT_RTX_MOUSEBUTTON = $00000009;
  OBJECT_RTX_DRAGFILEPATH = $0000000A;
  OBJECT_RCA_BUDDY = $0000000B;
  OBJECT_PHONENUM = $0000000C;

// Constants for enum RTX_SERVER_TYPE
type
  RTX_SERVER_TYPE = TOleEnum;
const
  RST_MAIN_SVR = $00000000;
  RST_FILE_SVR = $00000001;
  RST_SESSION_SVR = $00000002;
  RST_HTTP_SVR = $00000003;
  RST_SESSION_SVR_WAN = $0000000A;
  RST_HTTP_SVR_WAN = $0000000B;
  RST_FILE_SVR_WAN = $0000000C;
  RST_INFOSERVER = $00000064;
  RST_INFOSERVER_PHOTO = $00000065;
  RST_INFOSERVER_ORGSTRUCT = $00000066;
  RST_INFOSERVER_MAINFRAME = $00000067;
  RST_INFOSERVER_WAN = $000000C8;
  RST_INFOSERVER_PHOTO_WAN = $000000C9;
  RST_INFOSERVER_ORGSTRUCT_WAN = $000000CA;
  RST_INFOSERVER_MAINFRAME_WAN = $000000CB;

// Constants for enum RTX_GENDER
type
  RTX_GENDER = TOleEnum;
const
  RTX_GENDER_UNKNOWN = $FFFFFFFF;
  RTX_GENDER_MALE = $00000000;
  RTX_GENDER_FEMALE = $00000001;

// Constants for enum RTX_PRESENCE
type
  RTX_PRESENCE = TOleEnum;
const
  RTX_PRESENCE_OFFLINE = $00000000;
  RTX_PRESENCE_ONLINE = $00000001;
  RTX_PRESENCE_AWAY = $00000002;
  RTX_PRESENCE_ONTHEPHONE = $00000003;

// Constants for enum RTX_UIN
type
  RTX_UIN = TOleEnum;
const
  RTX_UIN_INVALID = $00000000;

// Constants for enum RTX_ITEM_TYPE
type
  RTX_ITEM_TYPE = TOleEnum;
const
  RTX_ITEM_TYPE_RTX_BUDDY = $00000000;
  RTX_ITEM_TYPE_RTX_GROUP = $00000001;
  RTX_ITEM_TYPE_MOBILE_BUDDY = $00000002;
  RTX_ITEM_TYPE_MOBILE_GROUP = $00000003;
  RTX_ITEM_TYPE_MOBILE = $00000004;
  RTX_ITEM_TYPE_RCA_BUDDY = $00000005;
  RTX_ITEM_TYPE_RCA_GROUP = $00000006;
  RTX_ITEM_TYPE_PHONENUM = $00000007;

// Constants for enum RTX_GROUP_TYPE
type
  RTX_GROUP_TYPE = TOleEnum;
const
  RTX_GROUP_TYPE_INVALID = $00000000;
  RTX_GROUP_TYPE_ORGSTRUCT = $00000001;
  RTX_GROUP_TYPE_MY_CONTACTS = $00000002;
  RTX_GROUP_TYPE_RECENT_CONTACTS = $00000003;
  RTX_GROUP_TYPE_USER_DEFINED = $00000004;
  RTX_GROUP_TYPE_MOBILE = $00000005;
  RTX_GROUP_TYPE_EXTBUDDY = $00000006;

// Constants for enum RTX_GROUP_ROOT_ID
type
  RTX_GROUP_ROOT_ID = TOleEnum;
const
  RTX_GROUP_ROOT_ID_ORG_STRUCT = $01312919;
  RTX_GROUP_ROOT_ID_ALL_CONTACTS = $0131291A;
  RTX_GROUP_ROOT_ID_MOBILE = $0131291C;
  RTX_GROUP_ROOT_ID_RCA = $0131291D;

// Constants for enum RTX_GROUP_ID
type
  RTX_GROUP_ID = TOleEnum;
const
  RTX_GROUP_ID_INVALID = $FFFFFFFF;
  RTX_GROUP_ID_ORGSTRUCT = $00989681;
  RTX_GROUP_ID_MY_CONTACTS = $01312D01;
  RTX_GROUP_ID_RECENT_CONTACTS = $02625A01;
  RTX_GROUP_ID_DAILY_DEPT = $02FAF081;
  RTX_GROUP_ID_USER_DEFINED = $03938701;
  RTX_GROUP_ID_USER_GROUP = $042C1D81;
  RTX_GROUP_ID_SESSION = $04C4B401;
  RTX_GROUP_ID_MOBILE = $055D4A81;
  RTX_GROUP_ID_EXTBUDDY = $05F5E101;
  RTX_GROUP_ID_RCA = $068E7781;
  RTX_GROUP_ID_RCA_FRIEND = $07270E01;

// Constants for enum RTXC_SESSION_STATE
type
  RTXC_SESSION_STATE = TOleEnum;
const
  RTXC_SESSION_STATE_NORMAL = $00000000;
  RTXC_SESSION_STATE_BLOCKMSG = $00000001;

// Constants for enum RTXC_MDSESSION_STATE
type
  RTXC_MDSESSION_STATE = TOleEnum;
const
  RTXC_MDSESSION_STATE_IDLE = $00000000;
  RTXC_MDSESSION_STATE_INCOMING = $00000001;
  RTXC_MDSESSION_STATE_ANSWERING = $00000002;
  RTXC_MDSESSION_STATE_INPROGRESS = $00000003;
  RTXC_MDSESSION_STATE_CONNECTED = $00000004;

// Constants for enum RTXC_MDSESSION_CONNTYPE
type
  RTXC_MDSESSION_CONNTYPE = TOleEnum;
const
  RTXC_MDSESSION_CONNTYPE_STREAM = $00000000;
  RTXC_MDSESSION_CONNTYPE_DGRAM = $00000001;
  RTXC_MDSESSION_CONNTYPE_SESSION_STREAM = $00000002;
  RTXC_MDSESSION_CONNTYPE_SESSION_DGRAM = $00000003;
  RTXC_MDSESSION_CONNTYPE_ANY = $00000004;

// Constants for enum RTXC_RESULT
type
  RTXC_RESULT = TOleEnum;
const
  RTXC_RESULT_OK = $00000000;
  RTXC_RESULT_TIME_OUT = $FFFFFFFF;
  RTXC_RESULT_UNKNOWN_ERROR = $FFFFFFFE;
  RTXC_RESULT_TICKOUT = $FFFFFFFD;
  RTXC_RESULT_SETOFFLINE = $FFFFFFFC;

// Constants for enum RTXC_LOGIN_RESULT
type
  RTXC_LOGIN_RESULT = TOleEnum;
const
  RTXC_LOGIN_RESULT_OK = $00000000;
  RTXC_LOGIN_RESULT_START = $00000001;
  RTXC_LOGIN_RESULT_START_DETECTING = $00000002;
  RTXC_LOGIN_RESULT_TIME_OUT = $FFFFFFFF;
  RTXC_LOGIN_RESULT_UNKNOWN_ERROR = $FFFFFFFE;
  RTXC_LOGIN_RESULT_ACCOUNT_OR_PASSWORD_INCORRECT = $FFFFFFFD;
  RTXC_LOGIN_RESULT_CONNECT_FAILED = $FFFFFFFC;
  RTXC_LOGIN_RESULT_USER_FULL = $FFFFFFFB;
  RTXC_LOGIN_RESULT_CONNREFUSE = $FFFFFFFA;
  RTXC_LOGIN_RESULT_TIMEDOUT = $FFFFFFF9;
  RTXC_LOGIN_RESULT_HOSTUNREACH = $FFFFFFF8;
  RTXC_LOGIN_RESULT_PLAIN_PASSWORD_NO_HANDLER = $FFFFFFF7;
  RTXC_LOGIN_RESULT_ADDRNOTAVAIL = $FFFFFFF6;
  RTXC_LOGIN_RESULT_RESERVED = $000007D0;

// Constants for enum RTXC_MODIFY_PWD_RESULT
type
  RTXC_MODIFY_PWD_RESULT = TOleEnum;
const
  RTXC_MODIFY_PWD_RESULT_OK = $00000000;
  RTXC_MODIFY_PWD_RESULT_FAILED = $FFFFFFFF;
  RTXC_MODIFY_PWD_RESULT_ACCOUNT_NOT_EXIST = $FFFFFFFE;
  RTXC_MODIFY_PWD_RESULT_DENIED = $FFFFFFFD;
  RTXC_MODIFY_PWD_RESULT_OLD_PWD_INCORRECT = $FFFFFFFC;

// Constants for enum RTXC_SEND_DATA_FLAG
type
  RTXC_SEND_DATA_FLAG = TOleEnum;
const
  RTXC_SEND_DATA_FLAG_DEFAULT = $00000000;
  RTXC_SEND_DATA_FLAG_FILTERING_IS_ALLOWED = $00000000;
  RTXC_SEND_DATA_FLAG_PICKING_OFF_IS_ALLOWED = $00000000;
  RTXC_SEND_DATA_FLAG_FILTERING_IS_FORBIDDEN = $00000001;
  RTXC_SEND_DATA_FLAG_PICKING_OFF_IS_FORBIDDEN = $00000002;

// Constants for enum RTXC_PLGUIN_LOAD_RESULT
type
  RTXC_PLGUIN_LOAD_RESULT = TOleEnum;
const
  RTXC_PLUGIN_LOAD_OK = $00000000;
  RTXC_PLGUIN_LOAD_NORIGHT = $00000001;
  RTXC_PLGUIN_LOAD_NOFILE = $00000002;
  RTXC_PLUGIN_LOAD_NOXML = $00000003;
  RTXC_PLUGIN_LOAD_SETERROR = $00000004;
  RTXC_PLUGIN_LOAD_OTHERERROR = $00000005;

// Constants for enum RTXC_LOGIN_MODE
type
  RTXC_LOGIN_MODE = TOleEnum;
const
  RTXC_LOGIN_MODE_NORMAL = $00000000;
  RTXC_LOGIN_MODE_OUT_SUPPORT = $00000001;
  RTXC_LOGIN_MODE_OTHER = $000000FF;

// Constants for enum RTXC_LANGUAGE_TYPE
type
  RTXC_LANGUAGE_TYPE = TOleEnum;
const
  RTXC_LANGUAGE_CN = $00000000;
  RTXC_LANGUAGE_EN = $00000001;
  RTXC_LANGUAGE_TW = $00000002;

// Constants for enum RTXC_NET_PROXY_TYPE
type
  RTXC_NET_PROXY_TYPE = TOleEnum;
const
  RTXC_NET_PROXY_NONE = $00000000;
  RTXC_NET_PROXY_SOCK5 = $00000001;
  RTXC_NET_PROXY_HTTP = $00000002;

// Constants for enum RCA_GROUP_TYPE
type
  RCA_GROUP_TYPE = TOleEnum;
const
  RCA_GROUP_TYPE_INVALID = $00000000;
  RCA_GROUP_TYPE_ORGSTRUCT = $00000001;
  RCA_GROUP_TYPE_MY_CONTACTS = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRTXCDataCollection = interface;
  IRTXCDataCollectionDisp = dispinterface;
  IRTXCData = interface;
  IRTXCDataDisp = dispinterface;
  IRTXCLicense = interface;
  IRTXCLicenseDisp = dispinterface;
  IRTXCRTXGroup = interface;
  IRTXCRTXGroupDisp = dispinterface;
  IRTXCRTXGroupCollection = interface;
  IRTXCRTXGroupCollectionDisp = dispinterface;
  IRTXCRTXBuddyCollection = interface;
  IRTXCRTXBuddyCollectionDisp = dispinterface;
  IRTXCRTXBuddy = interface;
  IRTXCRTXBuddyDisp = dispinterface;
  IRTXCExtBuddy = interface;
  IRTXCExtBuddyDisp = dispinterface;
  IRTXCExtGroupCollection = interface;
  IRTXCExtGroupCollectionDisp = dispinterface;
  IRTXCExtGroup = interface;
  IRTXCExtGroupDisp = dispinterface;
  IRTXCExtBuddyCollection = interface;
  IRTXCExtBuddyCollectionDisp = dispinterface;
  IRTXCRTXGroupManager = interface;
  IRTXCRTXGroupManagerDisp = dispinterface;
  IRTXCRTXBuddyManager = interface;
  IRTXCRTXBuddyManagerDisp = dispinterface;
  IRTXCPresence = interface;
  IRTXCPresenceDisp = dispinterface;
  IRTXCExState = interface;
  IRTXCExStateDisp = dispinterface;
  IRTXCModuleCollection = interface;
  IRTXCModuleCollectionDisp = dispinterface;
  IRTXCSession = interface;
  IRTXCSessionDisp = dispinterface;
  IRTXCSessionCollection = interface;
  IRTXCSessionCollectionDisp = dispinterface;
  IRTXCSessionManager = interface;
  IRTXCSessionManagerDisp = dispinterface;
  IRTXCMFCSupport = interface;
  IRTXCMFCSupportDisp = dispinterface;
  IRTXCMDSessionManager = interface;
  IRTXCMDSessionManagerDisp = dispinterface;
  IRTXCMDSession = interface;
  IRTXCMDSessionDisp = dispinterface;
  IRTXCExtGroupManager = interface;
  IRTXCExtGroupManagerDisp = dispinterface;
  IRTXCExtBuddyManager = interface;
  IRTXCExtBuddyManagerDisp = dispinterface;
  IRTXCEventCenter = interface;
  IRTXCEventCenterDisp = dispinterface;
  IRTXCRoot = interface;
  IRTXCRootDisp = dispinterface;
  IRTXCModuleSite = interface;
  IRTXCModuleSiteDisp = dispinterface;
  IRTXCModuleSite2 = interface;
  IRTXCModuleSite2Disp = dispinterface;
  IRTXCModuleSite3 = interface;
  IRTXCModuleSite3Disp = dispinterface;
  _IRTXCModuleSiteEvents = dispinterface;
  _IRTXCMFCSupportEvents = dispinterface;
  _IRTXCRootEvents = dispinterface;
  _IRTXCRTXGroupManagerEvents = dispinterface;
  _IRTXCRTXBuddyManagerEvents = dispinterface;
  _IRTXCRTXBuddyEvents = dispinterface;
  _IRTXCPresenceEvents = dispinterface;
  _IRTXCSessionManagerEvents = dispinterface;
  _IRTXCSessionEvents = dispinterface;
  _IRTXCMDSessionManagerEvents = dispinterface;
  _IRTXCMDSessionEvents = dispinterface;
  _IRTXCLicenseEvents = dispinterface;
  _IRTXCExtBuddyEvents = dispinterface;
  _IRTXCExtBuddyManagerEvents = dispinterface;
  _IRTXCExtGroupManagerEvents = dispinterface;
  _IRTXCExtGroupEvents = dispinterface;
  _IRTXCExtGroupCollectionEvents = dispinterface;
  _IRTXCEventCenterEvents = dispinterface;
  _DRTXOrg = dispinterface;
  _DRTXOrgEvents = dispinterface;
  _IRTXCExStateEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RTXCRoot = IRTXCRoot;
  RTXCData = IRTXCData;
  RTXCDataCollection = IRTXCDataCollection;
  RTXCRTXGroupManager = IRTXCRTXGroupManager;
  RTXCRTXGroup = IRTXCRTXGroup;
  RTXCRTXBuddyManager = IRTXCRTXBuddyManager;
  RTXCRTXBuddy = IRTXCRTXBuddy;
  RTXCRTXGroupCollection = IRTXCRTXGroupCollection;
  RTXCRTXBuddyCollection = IRTXCRTXBuddyCollection;
  RTXCModuleSite = IRTXCModuleSite;
  RTXCModuleCollection = IRTXCModuleCollection;
  RTXCPresence = IRTXCPresence;
  RTXCSessionManager = IRTXCSessionManager;
  RTXCSession = IRTXCSession;
  RTXCSessionCollection = IRTXCSessionCollection;
  RTXCMFCSupport = IRTXCMFCSupport;
  RTXCMDSessionManager = IRTXCMDSessionManager;
  RTXCMDSession = IRTXCMDSession;
  RTXCLicense = IRTXCLicense;
  RTXCExtBuddy = IRTXCExtBuddy;
  RTXCExtBuddyManager = IRTXCExtBuddyManager;
  RTXCExtBuddyCollection = IRTXCExtBuddyCollection;
  RTXCExtGroup = IRTXCExtGroup;
  RTXCExtGroupManager = IRTXCExtGroupManager;
  RTXCExtGroupCollection = IRTXCExtGroupCollection;
  RTXCEventCenter = IRTXCEventCenter;
  RTXCExState = IRTXCExState;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PByte1 = ^Byte; {*}
  PPUserType1 = ^IRTXCExtBuddy; {*}
  PInteger1 = ^Integer; {*}
  PUINT1 = ^LongWord; {*}
  PWideString1 = ^WideString; {*}
  PWordBool1 = ^WordBool; {*}


// *********************************************************************//
// Interface: IRTXCDataCollection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DB69C2A9-C6E4-4200-B418-61C1ED532499}
// *********************************************************************//
  IRTXCDataCollection = interface(IDispatch)
    ['{DB69C2A9-C6E4-4200-B418-61C1ED532499}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IRTXCData; safecall;
    function Get_Count: Integer; safecall;
    procedure Add(const RTXCData: IRTXCData); safecall;
    procedure Remove(Index: Integer); safecall;
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IRTXCData read Get_Item; default;
    property Count: Integer read Get_Count;
    property XML: WideString read Get_XML write Set_XML;
  end;

// *********************************************************************//
// DispIntf:  IRTXCDataCollectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DB69C2A9-C6E4-4200-B418-61C1ED532499}
// *********************************************************************//
  IRTXCDataCollectionDisp = dispinterface
    ['{DB69C2A9-C6E4-4200-B418-61C1ED532499}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IRTXCData readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    procedure Add(const RTXCData: IRTXCData); dispid 2;
    procedure Remove(Index: Integer); dispid 3;
    property XML: WideString dispid 4;
  end;

// *********************************************************************//
// Interface: IRTXCData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1251EE5-3843-4857-9CFF-A97EC20C3D85}
// *********************************************************************//
  IRTXCData = interface(IDispatch)
    ['{B1251EE5-3843-4857-9CFF-A97EC20C3D85}']
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    function GetLong(const Key: WideString): Integer; safecall;
    procedure SetLong(const Key: WideString; Value: Integer); safecall;
    function GetString(const Key: WideString): WideString; safecall;
    procedure SetString(const Key: WideString; const String_: WideString); safecall;
    procedure SetBuffer(const Key: WideString; var Buffer: Byte; Length: Integer); safecall;
    function GetBufferLength(const Key: WideString): Integer; safecall;
    procedure GetBuffer(const Key: WideString; var Buffer: Byte; Length: Integer); safecall;
    procedure SetRTXCData(const Key: WideString; const RTXCData: IRTXCData); safecall;
    function GetRTXCData(const Key: WideString): IRTXCData; safecall;
    function GetRTXCDataCollection(const Key: WideString): IRTXCDataCollection; safecall;
    procedure SetRTXCDataCollection(const Key: WideString; 
                                    const RTXCDataCollection: IRTXCDataCollection); safecall;
    procedure Clear; safecall;
    function GetObject(const Key: WideString): IDispatch; safecall;
    procedure SetObject(const Key: WideString; const Object_: IDispatch); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const pVal: WideString); safecall;
    procedure Save; safecall;
    procedure Load(const FileName: WideString); safecall;
    property XML: WideString read Get_XML write Set_XML;
    property FileName: WideString read Get_FileName write Set_FileName;
  end;

// *********************************************************************//
// DispIntf:  IRTXCDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1251EE5-3843-4857-9CFF-A97EC20C3D85}
// *********************************************************************//
  IRTXCDataDisp = dispinterface
    ['{B1251EE5-3843-4857-9CFF-A97EC20C3D85}']
    property XML: WideString dispid 1;
    function GetLong(const Key: WideString): Integer; dispid 2;
    procedure SetLong(const Key: WideString; Value: Integer); dispid 3;
    function GetString(const Key: WideString): WideString; dispid 4;
    procedure SetString(const Key: WideString; const String_: WideString); dispid 5;
    procedure SetBuffer(const Key: WideString; var Buffer: Byte; Length: Integer); dispid 6;
    function GetBufferLength(const Key: WideString): Integer; dispid 7;
    procedure GetBuffer(const Key: WideString; var Buffer: Byte; Length: Integer); dispid 8;
    procedure SetRTXCData(const Key: WideString; const RTXCData: IRTXCData); dispid 9;
    function GetRTXCData(const Key: WideString): IRTXCData; dispid 10;
    function GetRTXCDataCollection(const Key: WideString): IRTXCDataCollection; dispid 11;
    procedure SetRTXCDataCollection(const Key: WideString; 
                                    const RTXCDataCollection: IRTXCDataCollection); dispid 12;
    procedure Clear; dispid 13;
    function GetObject(const Key: WideString): IDispatch; dispid 14;
    procedure SetObject(const Key: WideString; const Object_: IDispatch); dispid 15;
    property FileName: WideString dispid 16;
    procedure Save; dispid 17;
    procedure Load(const FileName: WideString); dispid 18;
  end;

// *********************************************************************//
// Interface: IRTXCLicense
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {93899B30-3AC4-4C33-8443-2ECDABE8CE5D}
// *********************************************************************//
  IRTXCLicense = interface(IDispatch)
    ['{93899B30-3AC4-4C33-8443-2ECDABE8CE5D}']
    function Get_Config(const Name: WideString): OleVariant; safecall;
    property Config[const Name: WideString]: OleVariant read Get_Config;
  end;

// *********************************************************************//
// DispIntf:  IRTXCLicenseDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {93899B30-3AC4-4C33-8443-2ECDABE8CE5D}
// *********************************************************************//
  IRTXCLicenseDisp = dispinterface
    ['{93899B30-3AC4-4C33-8443-2ECDABE8CE5D}']
    property Config[const Name: WideString]: OleVariant readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCRTXGroup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6E9340FD-535F-4997-AA6D-9EA59202C58B}
// *********************************************************************//
  IRTXCRTXGroup = interface(IDispatch)
    ['{6E9340FD-535F-4997-AA6D-9EA59202C58B}']
    function Get_Parent: IRTXCRTXGroup; safecall;
    function Get_Groups: IRTXCRTXGroupCollection; safecall;
    function Get_Buddies: IRTXCRTXBuddyCollection; safecall;
    function Get_Id: Integer; safecall;
    function Get_type_: RTX_GROUP_TYPE; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    procedure AddBuddy(const Buddy: IRTXCRTXBuddy); safecall;
    procedure RemoveBuddy(const Buddy: IRTXCRTXBuddy); safecall;
    function Get_VirtualProperty: Integer; safecall;
    procedure Set_VirtualProperty(pVal: Integer); safecall;
    property Parent: IRTXCRTXGroup read Get_Parent;
    property Groups: IRTXCRTXGroupCollection read Get_Groups;
    property Buddies: IRTXCRTXBuddyCollection read Get_Buddies;
    property Id: Integer read Get_Id;
    property type_: RTX_GROUP_TYPE read Get_type_;
    property Name: WideString read Get_Name write Set_Name;
    property VirtualProperty: Integer read Get_VirtualProperty write Set_VirtualProperty;
  end;

// *********************************************************************//
// DispIntf:  IRTXCRTXGroupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6E9340FD-535F-4997-AA6D-9EA59202C58B}
// *********************************************************************//
  IRTXCRTXGroupDisp = dispinterface
    ['{6E9340FD-535F-4997-AA6D-9EA59202C58B}']
    property Parent: IRTXCRTXGroup readonly dispid 1;
    property Groups: IRTXCRTXGroupCollection readonly dispid 2;
    property Buddies: IRTXCRTXBuddyCollection readonly dispid 3;
    property Id: Integer readonly dispid 4;
    property type_: RTX_GROUP_TYPE readonly dispid 5;
    property Name: WideString dispid 6;
    procedure AddBuddy(const Buddy: IRTXCRTXBuddy); dispid 7;
    procedure RemoveBuddy(const Buddy: IRTXCRTXBuddy); dispid 8;
    property VirtualProperty: Integer dispid 9;
  end;

// *********************************************************************//
// Interface: IRTXCRTXGroupCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {33156ED4-7EDA-40CD-92F4-160C3DCD5970}
// *********************************************************************//
  IRTXCRTXGroupCollection = interface(IDispatch)
    ['{33156ED4-7EDA-40CD-92F4-160C3DCD5970}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IRTXCRTXGroup; safecall;
    function Get_Count: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IRTXCRTXGroup read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IRTXCRTXGroupCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {33156ED4-7EDA-40CD-92F4-160C3DCD5970}
// *********************************************************************//
  IRTXCRTXGroupCollectionDisp = dispinterface
    ['{33156ED4-7EDA-40CD-92F4-160C3DCD5970}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IRTXCRTXGroup readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCRTXBuddyCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {142275C8-B019-498B-956D-B6FDA135F69B}
// *********************************************************************//
  IRTXCRTXBuddyCollection = interface(IDispatch)
    ['{142275C8-B019-498B-956D-B6FDA135F69B}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IRTXCRTXBuddy; safecall;
    function Get_Count: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IRTXCRTXBuddy read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IRTXCRTXBuddyCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {142275C8-B019-498B-956D-B6FDA135F69B}
// *********************************************************************//
  IRTXCRTXBuddyCollectionDisp = dispinterface
    ['{142275C8-B019-498B-956D-B6FDA135F69B}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IRTXCRTXBuddy readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCRTXBuddy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E38F2E2-5E73-4447-A9C8-F3ED22C05E28}
// *********************************************************************//
  IRTXCRTXBuddy = interface(IDispatch)
    ['{2E38F2E2-5E73-4447-A9C8-F3ED22C05E28}']
    function Get_Account: WideString; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Mobile: WideString; safecall;
    procedure Set_Mobile(const pVal: WideString); safecall;
    function Get_UIN: Integer; safecall;
    function Get_Gender: RTX_GENDER; safecall;
    procedure Set_Gender(pVal: RTX_GENDER); safecall;
    function Get_Email: WideString; safecall;
    procedure Set_Email(const pVal: WideString); safecall;
    function Get_UserRights: Integer; safecall;
    procedure Update; safecall;
    function Get_Telephone: WideString; safecall;
    procedure Set_Telephone(const pVal: WideString); safecall;
    function Get_Presence: RTX_PRESENCE; safecall;
    procedure Modify; safecall;
    function Get_Groups: IRTXCRTXGroupCollection; safecall;
    function Get_RealName: WideString; safecall;
    procedure Set_RealName(const pVal: WideString); safecall;
    procedure UpdateNow; safecall;
    function Get_PhotoPath: WideString; safecall;
    property Account: WideString read Get_Account;
    property Name: WideString read Get_Name write Set_Name;
    property Mobile: WideString read Get_Mobile write Set_Mobile;
    property UIN: Integer read Get_UIN;
    property Gender: RTX_GENDER read Get_Gender write Set_Gender;
    property Email: WideString read Get_Email write Set_Email;
    property UserRights: Integer read Get_UserRights;
    property Telephone: WideString read Get_Telephone write Set_Telephone;
    property Presence: RTX_PRESENCE read Get_Presence;
    property Groups: IRTXCRTXGroupCollection read Get_Groups;
    property RealName: WideString read Get_RealName write Set_RealName;
    property PhotoPath: WideString read Get_PhotoPath;
  end;

// *********************************************************************//
// DispIntf:  IRTXCRTXBuddyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E38F2E2-5E73-4447-A9C8-F3ED22C05E28}
// *********************************************************************//
  IRTXCRTXBuddyDisp = dispinterface
    ['{2E38F2E2-5E73-4447-A9C8-F3ED22C05E28}']
    property Account: WideString readonly dispid 1;
    property Name: WideString dispid 2;
    property Mobile: WideString dispid 4;
    property UIN: Integer readonly dispid 5;
    property Gender: RTX_GENDER dispid 6;
    property Email: WideString dispid 7;
    property UserRights: Integer readonly dispid 8;
    procedure Update; dispid 9;
    property Telephone: WideString dispid 10;
    property Presence: RTX_PRESENCE readonly dispid 11;
    procedure Modify; dispid 12;
    property Groups: IRTXCRTXGroupCollection readonly dispid 13;
    property RealName: WideString dispid 14;
    procedure UpdateNow; dispid 15;
    property PhotoPath: WideString readonly dispid 16;
  end;

// *********************************************************************//
// Interface: IRTXCExtBuddy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {07C671CC-7905-4301-8A7A-BE292A575F60}
// *********************************************************************//
  IRTXCExtBuddy = interface(IDispatch)
    ['{07C671CC-7905-4301-8A7A-BE292A575F60}']
    function Get_Field(const bstrName: WideString; const bstrNamespace: WideString): OleVariant; safecall;
    procedure Set_Field(const bstrName: WideString; const bstrNamespace: WideString; 
                        pResult: OleVariant); safecall;
    function Get_Name: WideString; safecall;
    function Get_Groups: IRTXCExtGroupCollection; safecall;
    property Field[const bstrName: WideString; const bstrNamespace: WideString]: OleVariant read Get_Field write Set_Field;
    property Name: WideString read Get_Name;
    property Groups: IRTXCExtGroupCollection read Get_Groups;
  end;

// *********************************************************************//
// DispIntf:  IRTXCExtBuddyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {07C671CC-7905-4301-8A7A-BE292A575F60}
// *********************************************************************//
  IRTXCExtBuddyDisp = dispinterface
    ['{07C671CC-7905-4301-8A7A-BE292A575F60}']
    property Field[const bstrName: WideString; const bstrNamespace: WideString]: OleVariant dispid 1;
    property Name: WideString readonly dispid 2;
    property Groups: IRTXCExtGroupCollection readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IRTXCExtGroupCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {814EEE2C-097C-41D3-907D-043B5F96921B}
// *********************************************************************//
  IRTXCExtGroupCollection = interface(IDispatch)
    ['{814EEE2C-097C-41D3-907D-043B5F96921B}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IRTXCExtGroup; safecall;
    function Get_Count: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IRTXCExtGroup read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IRTXCExtGroupCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {814EEE2C-097C-41D3-907D-043B5F96921B}
// *********************************************************************//
  IRTXCExtGroupCollectionDisp = dispinterface
    ['{814EEE2C-097C-41D3-907D-043B5F96921B}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IRTXCExtGroup readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCExtGroup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {524BA3C7-4AC8-4BFC-84B4-63DCFFCCE845}
// *********************************************************************//
  IRTXCExtGroup = interface(IDispatch)
    ['{524BA3C7-4AC8-4BFC-84B4-63DCFFCCE845}']
    function Get_Parent: IRTXCExtGroup; safecall;
    function Get_Groups: IRTXCExtGroupCollection; safecall;
    function Get_Buddies: IRTXCExtBuddyCollection; safecall;
    function Get_Id: Integer; safecall;
    function Get_type_: RTX_GROUP_TYPE; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    procedure AddBuddy(const Buddy: IRTXCExtBuddy); safecall;
    procedure RemoveBuddy(const Buddy: IRTXCExtBuddy); safecall;
    property Parent: IRTXCExtGroup read Get_Parent;
    property Groups: IRTXCExtGroupCollection read Get_Groups;
    property Buddies: IRTXCExtBuddyCollection read Get_Buddies;
    property Id: Integer read Get_Id;
    property type_: RTX_GROUP_TYPE read Get_type_;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  IRTXCExtGroupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {524BA3C7-4AC8-4BFC-84B4-63DCFFCCE845}
// *********************************************************************//
  IRTXCExtGroupDisp = dispinterface
    ['{524BA3C7-4AC8-4BFC-84B4-63DCFFCCE845}']
    property Parent: IRTXCExtGroup readonly dispid 1;
    property Groups: IRTXCExtGroupCollection readonly dispid 2;
    property Buddies: IRTXCExtBuddyCollection readonly dispid 3;
    property Id: Integer readonly dispid 4;
    property type_: RTX_GROUP_TYPE readonly dispid 5;
    property Name: WideString dispid 6;
    procedure AddBuddy(const Buddy: IRTXCExtBuddy); dispid 7;
    procedure RemoveBuddy(const Buddy: IRTXCExtBuddy); dispid 8;
  end;

// *********************************************************************//
// Interface: IRTXCExtBuddyCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D70436E-E766-4025-9FB5-2343D8D1D493}
// *********************************************************************//
  IRTXCExtBuddyCollection = interface(IDispatch)
    ['{9D70436E-E766-4025-9FB5-2343D8D1D493}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IRTXCExtBuddy; safecall;
    function Get_Count: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IRTXCExtBuddy read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IRTXCExtBuddyCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D70436E-E766-4025-9FB5-2343D8D1D493}
// *********************************************************************//
  IRTXCExtBuddyCollectionDisp = dispinterface
    ['{9D70436E-E766-4025-9FB5-2343D8D1D493}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IRTXCExtBuddy readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCRTXGroupManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4DF115EC-9AB2-4D75-A610-5D0B58129E29}
// *********************************************************************//
  IRTXCRTXGroupManager = interface(IDispatch)
    ['{4DF115EC-9AB2-4D75-A610-5D0B58129E29}']
    function Get_Group(Id: Integer): IRTXCRTXGroup; safecall;
    function AddGroup(const Parent: IRTXCRTXGroup; const Name: WideString): IRTXCRTXGroup; safecall;
    procedure RemoveGroup(const Group: IRTXCRTXGroup); safecall;
    function Get_Groups: IRTXCRTXGroupCollection; safecall;
    procedure GetAllGroups(var pVal: IRTXCRTXGroupCollection); safecall;
    property Group[Id: Integer]: IRTXCRTXGroup read Get_Group;
    property Groups: IRTXCRTXGroupCollection read Get_Groups;
  end;

// *********************************************************************//
// DispIntf:  IRTXCRTXGroupManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4DF115EC-9AB2-4D75-A610-5D0B58129E29}
// *********************************************************************//
  IRTXCRTXGroupManagerDisp = dispinterface
    ['{4DF115EC-9AB2-4D75-A610-5D0B58129E29}']
    property Group[Id: Integer]: IRTXCRTXGroup readonly dispid 2;
    function AddGroup(const Parent: IRTXCRTXGroup; const Name: WideString): IRTXCRTXGroup; dispid 3;
    procedure RemoveGroup(const Group: IRTXCRTXGroup); dispid 4;
    property Groups: IRTXCRTXGroupCollection readonly dispid 5;
    procedure GetAllGroups(var pVal: IRTXCRTXGroupCollection); dispid 6;
  end;

// *********************************************************************//
// Interface: IRTXCRTXBuddyManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7A37633-D5E6-4472-B00E-BA741F6B4AE9}
// *********************************************************************//
  IRTXCRTXBuddyManager = interface(IDispatch)
    ['{B7A37633-D5E6-4472-B00E-BA741F6B4AE9}']
    function Get_Buddy(const Account: WideString): IRTXCRTXBuddy; safecall;
    procedure Update(const RTXBuddy: IRTXCRTXBuddy); safecall;
    function Get_Buddies: IRTXCRTXBuddyCollection; safecall;
    procedure QueryExistence(const Account: WideString); safecall;
    function Get_LocalExistence(const Account: WideString): WordBool; safecall;
    procedure ForEach(pfCallBack: Integer; Param: Integer); safecall;
    procedure UpdateNow(const RTXBuddy: IRTXCRTXBuddy); safecall;
    procedure GetBuddyFromPhoneNum(const bstrPhoneNum: WideString; out ppRTXBuddy: IRTXCRTXBuddy); safecall;
    property Buddy[const Account: WideString]: IRTXCRTXBuddy read Get_Buddy;
    property Buddies: IRTXCRTXBuddyCollection read Get_Buddies;
    property LocalExistence[const Account: WideString]: WordBool read Get_LocalExistence;
  end;

// *********************************************************************//
// DispIntf:  IRTXCRTXBuddyManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7A37633-D5E6-4472-B00E-BA741F6B4AE9}
// *********************************************************************//
  IRTXCRTXBuddyManagerDisp = dispinterface
    ['{B7A37633-D5E6-4472-B00E-BA741F6B4AE9}']
    property Buddy[const Account: WideString]: IRTXCRTXBuddy readonly dispid 1;
    procedure Update(const RTXBuddy: IRTXCRTXBuddy); dispid 2;
    property Buddies: IRTXCRTXBuddyCollection readonly dispid 3;
    procedure QueryExistence(const Account: WideString); dispid 4;
    property LocalExistence[const Account: WideString]: WordBool readonly dispid 5;
    procedure ForEach(pfCallBack: Integer; Param: Integer); dispid 6;
    procedure UpdateNow(const RTXBuddy: IRTXCRTXBuddy); dispid 7;
    procedure GetBuddyFromPhoneNum(const bstrPhoneNum: WideString; out ppRTXBuddy: IRTXCRTXBuddy); dispid 8;
  end;

// *********************************************************************//
// Interface: IRTXCPresence
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B73CB5C-BAA6-4DBC-B0F6-75DDDC66147A}
// *********************************************************************//
  IRTXCPresence = interface(IDispatch)
    ['{6B73CB5C-BAA6-4DBC-B0F6-75DDDC66147A}']
    function Get_RTXPresence(const Account: WideString): RTX_PRESENCE; safecall;
    procedure Set_RTXPresence(const Account: WideString; pVal: RTX_PRESENCE); safecall;
    procedure UpdatePresence(const Accounts: IRTXCDataCollection); safecall;
    procedure UpdateAllPresence(ForceFromServer: WordBool); safecall;
    procedure AddFocusUser(User: OleVariant; UpdateAtOnce: WordBool); safecall;
    function Get_PhonePresenceSwitch: WordBool; safecall;
    procedure Set_PhonePresenceSwitch(pvbSwitchOn: WordBool); safecall;
    property RTXPresence[const Account: WideString]: RTX_PRESENCE read Get_RTXPresence write Set_RTXPresence;
    property PhonePresenceSwitch: WordBool read Get_PhonePresenceSwitch write Set_PhonePresenceSwitch;
  end;

// *********************************************************************//
// DispIntf:  IRTXCPresenceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B73CB5C-BAA6-4DBC-B0F6-75DDDC66147A}
// *********************************************************************//
  IRTXCPresenceDisp = dispinterface
    ['{6B73CB5C-BAA6-4DBC-B0F6-75DDDC66147A}']
    property RTXPresence[const Account: WideString]: RTX_PRESENCE dispid 1;
    procedure UpdatePresence(const Accounts: IRTXCDataCollection); dispid 2;
    procedure UpdateAllPresence(ForceFromServer: WordBool); dispid 3;
    procedure AddFocusUser(User: OleVariant; UpdateAtOnce: WordBool); dispid 4;
    property PhonePresenceSwitch: WordBool dispid 5;
  end;

// *********************************************************************//
// Interface: IRTXCExState
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E4373FD6-6ADD-408B-ACF2-E66D796AC608}
// *********************************************************************//
  IRTXCExState = interface(IDispatch)
    ['{E4373FD6-6ADD-408B-ACF2-E66D796AC608}']
    function Get_ExState(const bstrAccount: WideString; const bstrExStateName: WideString): Integer; safecall;
    function Get_MyExState(const bstrExStateName: WideString): Integer; safecall;
    procedure Set_MyExState(const bstrExStateName: WideString; pVal: Integer); safecall;
    procedure QueryUsersExState(varArrUin: OleVariant); safecall;
    procedure QueryUsersExState2(varArrAccounts: OleVariant); safecall;
    property ExState[const bstrAccount: WideString; const bstrExStateName: WideString]: Integer read Get_ExState;
    property MyExState[const bstrExStateName: WideString]: Integer read Get_MyExState write Set_MyExState;
  end;

// *********************************************************************//
// DispIntf:  IRTXCExStateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E4373FD6-6ADD-408B-ACF2-E66D796AC608}
// *********************************************************************//
  IRTXCExStateDisp = dispinterface
    ['{E4373FD6-6ADD-408B-ACF2-E66D796AC608}']
    property ExState[const bstrAccount: WideString; const bstrExStateName: WideString]: Integer readonly dispid 1;
    property MyExState[const bstrExStateName: WideString]: Integer dispid 2;
    procedure QueryUsersExState(varArrUin: OleVariant); dispid 3;
    procedure QueryUsersExState2(varArrAccounts: OleVariant); dispid 4;
  end;

// *********************************************************************//
// Interface: IRTXCModuleCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2CB3B961-DC69-49D2-AF3C-7CD73C9BFBBA}
// *********************************************************************//
  IRTXCModuleCollection = interface(IDispatch)
    ['{2CB3B961-DC69-49D2-AF3C-7CD73C9BFBBA}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IRTXCModule; safecall;
    function Get_Count: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IRTXCModule read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IRTXCModuleCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2CB3B961-DC69-49D2-AF3C-7CD73C9BFBBA}
// *********************************************************************//
  IRTXCModuleCollectionDisp = dispinterface
    ['{2CB3B961-DC69-49D2-AF3C-7CD73C9BFBBA}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IRTXCModule readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCSession
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F747E1C2-FE0B-4A3B-9906-22804DACA844}
// *********************************************************************//
  IRTXCSession = interface(IDispatch)
    ['{F747E1C2-FE0B-4A3B-9906-22804DACA844}']
    function Get_State: RTXC_SESSION_STATE; safecall;
    procedure Set_State(pVal: RTXC_SESSION_STATE); safecall;
    function Get_type_: WideString; safecall;
    function Get_Topic: WideString; safecall;
    procedure Set_Topic(const pVal: WideString); safecall;
    function Get_Initiator: WideString; safecall;
    function Get_AppName: WideString; safecall;
    function Get_Participant: WideString; safecall;
    procedure Set_Participant(const pVal: WideString); safecall;
    procedure Refresh; safecall;
    function Get_Id: WideString; safecall;
    function Get_CreateTime: TDateTime; safecall;
    function Get_ParticipantCount: Integer; safecall;
    function Get_MessageCount: Integer; safecall;
    procedure Set_MessageCount(pVal: Integer); safecall;
    procedure RequestInitiator; safecall;
    procedure AcceptInitiatorRequest; safecall;
    procedure RejectInitiatorRequest; safecall;
    function Get_LastTime: TDateTime; safecall;
    procedure Save; safecall;
    function Get_LocalTopic: WideString; safecall;
    procedure Set_LocalTopic(const pVal: WideString); safecall;
    property State: RTXC_SESSION_STATE read Get_State write Set_State;
    property type_: WideString read Get_type_;
    property Topic: WideString read Get_Topic write Set_Topic;
    property Initiator: WideString read Get_Initiator;
    property AppName: WideString read Get_AppName;
    property Participant: WideString read Get_Participant write Set_Participant;
    property Id: WideString read Get_Id;
    property CreateTime: TDateTime read Get_CreateTime;
    property ParticipantCount: Integer read Get_ParticipantCount;
    property MessageCount: Integer read Get_MessageCount write Set_MessageCount;
    property LastTime: TDateTime read Get_LastTime;
    property LocalTopic: WideString read Get_LocalTopic write Set_LocalTopic;
  end;

// *********************************************************************//
// DispIntf:  IRTXCSessionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F747E1C2-FE0B-4A3B-9906-22804DACA844}
// *********************************************************************//
  IRTXCSessionDisp = dispinterface
    ['{F747E1C2-FE0B-4A3B-9906-22804DACA844}']
    property State: RTXC_SESSION_STATE dispid 1;
    property type_: WideString readonly dispid 2;
    property Topic: WideString dispid 3;
    property Initiator: WideString readonly dispid 4;
    property AppName: WideString readonly dispid 5;
    property Participant: WideString dispid 6;
    procedure Refresh; dispid 7;
    property Id: WideString readonly dispid 8;
    property CreateTime: TDateTime readonly dispid 9;
    property ParticipantCount: Integer readonly dispid 10;
    property MessageCount: Integer dispid 11;
    procedure RequestInitiator; dispid 12;
    procedure AcceptInitiatorRequest; dispid 13;
    procedure RejectInitiatorRequest; dispid 14;
    property LastTime: TDateTime readonly dispid 15;
    procedure Save; dispid 16;
    property LocalTopic: WideString dispid 17;
  end;

// *********************************************************************//
// Interface: IRTXCSessionCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C4914EAE-8D0D-4FB2-8E89-11ADC809FB1D}
// *********************************************************************//
  IRTXCSessionCollection = interface(IDispatch)
    ['{C4914EAE-8D0D-4FB2-8E89-11ADC809FB1D}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IRTXCSession; safecall;
    function Get_Count: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IRTXCSession read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IRTXCSessionCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C4914EAE-8D0D-4FB2-8E89-11ADC809FB1D}
// *********************************************************************//
  IRTXCSessionCollectionDisp = dispinterface
    ['{C4914EAE-8D0D-4FB2-8E89-11ADC809FB1D}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IRTXCSession readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCSessionManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {91F9D53D-DC7E-4A10-B109-20972C7564AA}
// *********************************************************************//
  IRTXCSessionManager = interface(IDispatch)
    ['{91F9D53D-DC7E-4A10-B109-20972C7564AA}']
    function CreateSession(const Type_: WideString; const Initiator: WideString; 
                           const AppName: WideString): IRTXCSession; safecall;
    function Get_Session(const SessionId: WideString): IRTXCSession; safecall;
    procedure QuerySessionInfo(const Receiver: WideString; const SessionId: WideString; 
                               Cookie: Integer); safecall;
    function CreateSession2(const SessionId: WideString; const Type_: WideString; 
                            const Initiator: WideString; const AppName: WideString; 
                            const Participant: WideString): IRTXCSession; safecall;
    function Get_Sessions: IRTXCSessionCollection; safecall;
    function GetRecentSession: IRTXCSessionCollection; safecall;
    procedure RegisterSession(const Session: IRTXCSession); safecall;
    function CreateSession3(const SessionId: WideString; const Type_: WideString; 
                            const Initiator: WideString; const AppName: WideString; 
                            const Participant: WideString): IRTXCSession; safecall;
    property Session[const SessionId: WideString]: IRTXCSession read Get_Session;
    property Sessions: IRTXCSessionCollection read Get_Sessions;
  end;

// *********************************************************************//
// DispIntf:  IRTXCSessionManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {91F9D53D-DC7E-4A10-B109-20972C7564AA}
// *********************************************************************//
  IRTXCSessionManagerDisp = dispinterface
    ['{91F9D53D-DC7E-4A10-B109-20972C7564AA}']
    function CreateSession(const Type_: WideString; const Initiator: WideString; 
                           const AppName: WideString): IRTXCSession; dispid 1;
    property Session[const SessionId: WideString]: IRTXCSession readonly dispid 2;
    procedure QuerySessionInfo(const Receiver: WideString; const SessionId: WideString; 
                               Cookie: Integer); dispid 3;
    function CreateSession2(const SessionId: WideString; const Type_: WideString; 
                            const Initiator: WideString; const AppName: WideString; 
                            const Participant: WideString): IRTXCSession; dispid 4;
    property Sessions: IRTXCSessionCollection readonly dispid 5;
    function GetRecentSession: IRTXCSessionCollection; dispid 6;
    procedure RegisterSession(const Session: IRTXCSession); dispid 7;
    function CreateSession3(const SessionId: WideString; const Type_: WideString; 
                            const Initiator: WideString; const AppName: WideString; 
                            const Participant: WideString): IRTXCSession; dispid 8;
  end;

// *********************************************************************//
// Interface: IRTXCMFCSupport
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19EC1A99-03E4-463B-A643-93B887B31356}
// *********************************************************************//
  IRTXCMFCSupport = interface(IDispatch)
    ['{19EC1A99-03E4-463B-A643-93B887B31356}']
    procedure PreTranslateMessage(MSGPointer: Integer); safecall;
    procedure OnIdle(Count: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCMFCSupportDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19EC1A99-03E4-463B-A643-93B887B31356}
// *********************************************************************//
  IRTXCMFCSupportDisp = dispinterface
    ['{19EC1A99-03E4-463B-A643-93B887B31356}']
    procedure PreTranslateMessage(MSGPointer: Integer); dispid 1;
    procedure OnIdle(Count: Integer); dispid 2;
  end;

// *********************************************************************//
// Interface: IRTXCMDSessionManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0FCEBD34-F4F9-4244-A9A7-DA04BADB80A0}
// *********************************************************************//
  IRTXCMDSessionManager = interface(IDispatch)
    ['{0FCEBD34-F4F9-4244-A9A7-DA04BADB80A0}']
    function CreateSession(const AppName: WideString; const Type_: WideString): IRTXCMDSession; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCMDSessionManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0FCEBD34-F4F9-4244-A9A7-DA04BADB80A0}
// *********************************************************************//
  IRTXCMDSessionManagerDisp = dispinterface
    ['{0FCEBD34-F4F9-4244-A9A7-DA04BADB80A0}']
    function CreateSession(const AppName: WideString; const Type_: WideString): IRTXCMDSession; dispid 1;
  end;

// *********************************************************************//
// Interface: IRTXCMDSession
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A9CA998-1DEF-4682-8976-0892FF6613D4}
// *********************************************************************//
  IRTXCMDSession = interface(IDispatch)
    ['{3A9CA998-1DEF-4682-8976-0892FF6613D4}']
    function Get_State: RTXC_MDSESSION_STATE; safecall;
    function Get_AppName: WideString; safecall;
    function Get_type_: WideString; safecall;
    function Get_Initiator: WideString; safecall;
    function Get_Participant: WideString; safecall;
    function Get_Id: WideString; safecall;
    procedure AddParticipant(const Participant: WideString; ConnType: RTXC_MDSESSION_CONNTYPE; 
                             const VerifyString: WideString); safecall;
    procedure RemoveParticipant(const Participant: WideString); safecall;
    procedure Accept; safecall;
    procedure Reject; safecall;
    procedure SendData(Data: OleVariant); safecall;
    procedure SendData2(Data: OleVariant); safecall;
    procedure SendData3(const Participant: WideString; Data: OleVariant); safecall;
    procedure Cancel(const Participant: WideString); safecall;
    property State: RTXC_MDSESSION_STATE read Get_State;
    property AppName: WideString read Get_AppName;
    property type_: WideString read Get_type_;
    property Initiator: WideString read Get_Initiator;
    property Participant: WideString read Get_Participant;
    property Id: WideString read Get_Id;
  end;

// *********************************************************************//
// DispIntf:  IRTXCMDSessionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A9CA998-1DEF-4682-8976-0892FF6613D4}
// *********************************************************************//
  IRTXCMDSessionDisp = dispinterface
    ['{3A9CA998-1DEF-4682-8976-0892FF6613D4}']
    property State: RTXC_MDSESSION_STATE readonly dispid 1;
    property AppName: WideString readonly dispid 2;
    property type_: WideString readonly dispid 3;
    property Initiator: WideString readonly dispid 4;
    property Participant: WideString readonly dispid 5;
    property Id: WideString readonly dispid 6;
    procedure AddParticipant(const Participant: WideString; ConnType: RTXC_MDSESSION_CONNTYPE; 
                             const VerifyString: WideString); dispid 7;
    procedure RemoveParticipant(const Participant: WideString); dispid 8;
    procedure Accept; dispid 9;
    procedure Reject; dispid 10;
    procedure SendData(Data: OleVariant); dispid 11;
    procedure SendData2(Data: OleVariant); dispid 12;
    procedure SendData3(const Participant: WideString; Data: OleVariant); dispid 13;
    procedure Cancel(const Participant: WideString); dispid 14;
  end;

// *********************************************************************//
// Interface: IRTXCExtGroupManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {552B2C18-C977-4850-BF82-46E8BC4C9C70}
// *********************************************************************//
  IRTXCExtGroupManager = interface(IDispatch)
    ['{552B2C18-C977-4850-BF82-46E8BC4C9C70}']
    function Get_Group(Id: Integer): IRTXCExtGroup; safecall;
    function AddGroup(const Parent: IRTXCExtGroup; const Name: WideString): IRTXCExtGroup; safecall;
    procedure RemoveGroup(const Group: IRTXCExtGroup); safecall;
    function Get_Groups: IRTXCExtGroupCollection; safecall;
    property Group[Id: Integer]: IRTXCExtGroup read Get_Group;
    property Groups: IRTXCExtGroupCollection read Get_Groups;
  end;

// *********************************************************************//
// DispIntf:  IRTXCExtGroupManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {552B2C18-C977-4850-BF82-46E8BC4C9C70}
// *********************************************************************//
  IRTXCExtGroupManagerDisp = dispinterface
    ['{552B2C18-C977-4850-BF82-46E8BC4C9C70}']
    property Group[Id: Integer]: IRTXCExtGroup readonly dispid 2;
    function AddGroup(const Parent: IRTXCExtGroup; const Name: WideString): IRTXCExtGroup; dispid 3;
    procedure RemoveGroup(const Group: IRTXCExtGroup); dispid 4;
    property Groups: IRTXCExtGroupCollection readonly dispid 5;
  end;

// *********************************************************************//
// Interface: IRTXCExtBuddyManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BD43582C-4CDB-4168-8D12-02BA2E73E19A}
// *********************************************************************//
  IRTXCExtBuddyManager = interface(IDispatch)
    ['{BD43582C-4CDB-4168-8D12-02BA2E73E19A}']
    function Get_Buddy(const Account: WideString): IRTXCExtBuddy; safecall;
    procedure RemoveBuddy(lpszAccount: PWideChar); safecall;
    procedure DeleteBuddy(lpszAccount: PWideChar); safecall;
    function Get_Buddies: IRTXCExtBuddyCollection; safecall;
    function Get_Phones(const Account: WideString): OleVariant; safecall;
    function Get_Username(const bstrPhone: WideString): WideString; safecall;
    procedure ImportExtBuddy(const bstrFilename: WideString); safecall;
    procedure ExportExtBuddy(const bstrFilename: WideString); safecall;
    procedure CreateRTXCExtBuddy(const Account: WideString; var ppVal: IRTXCExtBuddy); safecall;
    procedure GetBuddyFromPhoneNum(const bstrPhoneNum: WideString; out ppRTXBuddy: IRTXCExtBuddy); safecall;
    property Buddy[const Account: WideString]: IRTXCExtBuddy read Get_Buddy;
    property Buddies: IRTXCExtBuddyCollection read Get_Buddies;
    property Phones[const Account: WideString]: OleVariant read Get_Phones;
    property Username[const bstrPhone: WideString]: WideString read Get_Username;
  end;

// *********************************************************************//
// DispIntf:  IRTXCExtBuddyManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BD43582C-4CDB-4168-8D12-02BA2E73E19A}
// *********************************************************************//
  IRTXCExtBuddyManagerDisp = dispinterface
    ['{BD43582C-4CDB-4168-8D12-02BA2E73E19A}']
    property Buddy[const Account: WideString]: IRTXCExtBuddy readonly dispid 1;
    procedure RemoveBuddy(lpszAccount: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 2;
    procedure DeleteBuddy(lpszAccount: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 3;
    property Buddies: IRTXCExtBuddyCollection readonly dispid 4;
    property Phones[const Account: WideString]: OleVariant readonly dispid 5;
    property Username[const bstrPhone: WideString]: WideString readonly dispid 6;
    procedure ImportExtBuddy(const bstrFilename: WideString); dispid 7;
    procedure ExportExtBuddy(const bstrFilename: WideString); dispid 8;
    procedure CreateRTXCExtBuddy(const Account: WideString; var ppVal: IRTXCExtBuddy); dispid 9;
    procedure GetBuddyFromPhoneNum(const bstrPhoneNum: WideString; out ppRTXBuddy: IRTXCExtBuddy); dispid 10;
  end;

// *********************************************************************//
// Interface: IRTXCEventCenter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E4508738-C04A-4E1D-861E-3C701049E153}
// *********************************************************************//
  IRTXCEventCenter = interface(IDispatch)
    ['{E4508738-C04A-4E1D-861E-3C701049E153}']
    function AddEventSink(const Id: WideString; const pSink: IUnknown; IsUnique: WordBool): Integer; safecall;
    function FireEvent(const Id: WideString; const pData: IDispatch): OleVariant; safecall;
    procedure RemoveEventSink(const Id: WideString; Cookie: Integer); safecall;
    function AddModuleEventSink(const Id: WideString; const pSink: IUnknown; IsUnique: WordBool; 
                                const pRTXModule: IRTXCModule): Integer; safecall;
    function FireModuleEvent(const Id: WideString; const pRTXModule: IRTXCModule; 
                             const pData: IDispatch): OleVariant; safecall;
    procedure RemoveModuleEventSink(const Id: WideString; Cookie: Integer; 
                                    const pRTXModule: IRTXCModule); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCEventCenterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E4508738-C04A-4E1D-861E-3C701049E153}
// *********************************************************************//
  IRTXCEventCenterDisp = dispinterface
    ['{E4508738-C04A-4E1D-861E-3C701049E153}']
    function AddEventSink(const Id: WideString; const pSink: IUnknown; IsUnique: WordBool): Integer; dispid 1;
    function FireEvent(const Id: WideString; const pData: IDispatch): OleVariant; dispid 2;
    procedure RemoveEventSink(const Id: WideString; Cookie: Integer); dispid 3;
    function AddModuleEventSink(const Id: WideString; const pSink: IUnknown; IsUnique: WordBool; 
                                const pRTXModule: IRTXCModule): Integer; dispid 4;
    function FireModuleEvent(const Id: WideString; const pRTXModule: IRTXCModule; 
                             const pData: IDispatch): OleVariant; dispid 5;
    procedure RemoveModuleEventSink(const Id: WideString; Cookie: Integer; 
                                    const pRTXModule: IRTXCModule); dispid 6;
  end;

// *********************************************************************//
// Interface: IRTXCRoot
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2C86C87B-A019-4204-A7D3-FB4C2464CFE0}
// *********************************************************************//
  IRTXCRoot = interface(IDispatch)
    ['{2C86C87B-A019-4204-A7D3-FB4C2464CFE0}']
    function CreateRTXCData: IRTXCData; safecall;
    function CreateRTXCDataCollection: IRTXCDataCollection; safecall;
    function Get_RTXGroupManager: IRTXCRTXGroupManager; safecall;
    function Get_RTXBuddyManager: IRTXCRTXBuddyManager; safecall;
    procedure Login(const Server: WideString; Port: Integer; Account: OleVariant; 
                    const Password: WideString); safecall;
    function Get_TCP: WordBool; safecall;
    procedure Set_TCP(pVal: WordBool); safecall;
    procedure Test(const RTXCRoot: IRTXCRoot); safecall;
    procedure Initialize; safecall;
    function Get_Account: WideString; safecall;
    function Get_UIN: Integer; safecall;
    function Get_Module(const Identifier: WideString): IRTXCModule; safecall;
    function Get_Presence: IRTXCPresence; safecall;
    function Get_MyPresence: RTX_PRESENCE; safecall;
    procedure Set_MyPresence(pVal: RTX_PRESENCE); safecall;
    procedure Logout; safecall;
    function Get_ModuleCollection: IRTXCModuleCollection; safecall;
    function Get_SessionManager: IRTXCSessionManager; safecall;
    function Get_CurrentServerTime: Integer; safecall;
    function Get_Token: IRTXCData; safecall;
    function Get_Sign: IRTXCData; safecall;
    function Get_ServerInfo: IRTXCDataCollection; safecall;
    function Get_MFCSupport: IRTXCMFCSupport; safecall;
    function Get_MDSessionManager: IRTXCMDSessionManager; safecall;
    procedure ModifyPassword(const OldPwd: WideString; const NewPwd: WideString); safecall;
    procedure Uninitialize; safecall;
    function Get_EnterpriseInfo: IRTXCData; safecall;
    procedure LoadPlugin(const Identifier: WideString); safecall;
    procedure UnloadPlugin(const Identifier: WideString); safecall;
    function Get_License: IRTXCLicense; safecall;
    function Get_RTXExtBuddyManager: IRTXCExtBuddyManager; safecall;
    function Get_RTXExtGroupManager: IRTXCExtGroupManager; safecall;
    procedure LoadPluginEx(const Identifier: WideString; out Result: RTXC_PLGUIN_LOAD_RESULT); safecall;
    procedure LoginSessionKey(const bstrServer: WideString; lPort: Integer; varAccount: OleVariant; 
                              const bstrSessionKey: WideString); safecall;
    function Get_RTXCEventCenter: IRTXCEventCenter; safecall;
    function Get_ExState: IRTXCExState; safecall;
    function Get_LoginMode: RTXC_LOGIN_MODE; safecall;
    procedure Set_LoginMode(pVal: RTXC_LOGIN_MODE); safecall;
    function Get_ETrunk: LongWord; safecall;
    procedure Set_ETrunk(pVal: LongWord); safecall;
    function Get_NetProxy: Integer; safecall;
    function CreateP2PMgr: IDispatch; safecall;
    function Get_ConnectionInfo: IRTXCData; safecall;
    function Get_ServerAddress(Type_: RTX_SERVER_TYPE): IRTXCData; safecall;
    function Get_Base64Sign: IRTXCData; safecall;
    procedure ShowTabs(const bstrGuid: WideString); safecall;
    function Get_Language: RTXC_LANGUAGE_TYPE; safecall;
    function Get_NetProxyParam: IRTXCData; safecall;
    function Get_AVSetInfo: IRTXCData; safecall;
    procedure GetMainFrameWnd(var pWnd: Integer); safecall;
    function Get_ServerIP: HResult; safecall;
    function Get_RCAToken: IRTXCData; safecall;
    function Get_UseMultiFileServer: Integer; safecall;
    function Get_OutSupServerInfo: IRTXCData; safecall;
    function Get_RTXIM: IDispatch; safecall;
    function Get_RTXOrgInfo: IUnknown; safecall;
    procedure PreExit(out pbCanExit: WordBool); safecall;
    procedure ShowDialPad; safecall;
    property RTXGroupManager: IRTXCRTXGroupManager read Get_RTXGroupManager;
    property RTXBuddyManager: IRTXCRTXBuddyManager read Get_RTXBuddyManager;
    property TCP: WordBool read Get_TCP write Set_TCP;
    property Account: WideString read Get_Account;
    property UIN: Integer read Get_UIN;
    property Module[const Identifier: WideString]: IRTXCModule read Get_Module;
    property Presence: IRTXCPresence read Get_Presence;
    property MyPresence: RTX_PRESENCE read Get_MyPresence write Set_MyPresence;
    property ModuleCollection: IRTXCModuleCollection read Get_ModuleCollection;
    property SessionManager: IRTXCSessionManager read Get_SessionManager;
    property CurrentServerTime: Integer read Get_CurrentServerTime;
    property Token: IRTXCData read Get_Token;
    property Sign: IRTXCData read Get_Sign;
    property ServerInfo: IRTXCDataCollection read Get_ServerInfo;
    property MFCSupport: IRTXCMFCSupport read Get_MFCSupport;
    property MDSessionManager: IRTXCMDSessionManager read Get_MDSessionManager;
    property EnterpriseInfo: IRTXCData read Get_EnterpriseInfo;
    property License: IRTXCLicense read Get_License;
    property RTXExtBuddyManager: IRTXCExtBuddyManager read Get_RTXExtBuddyManager;
    property RTXExtGroupManager: IRTXCExtGroupManager read Get_RTXExtGroupManager;
    property RTXCEventCenter: IRTXCEventCenter read Get_RTXCEventCenter;
    property ExState: IRTXCExState read Get_ExState;
    property LoginMode: RTXC_LOGIN_MODE read Get_LoginMode write Set_LoginMode;
    property ETrunk: LongWord read Get_ETrunk write Set_ETrunk;
    property NetProxy: Integer read Get_NetProxy;
    property ConnectionInfo: IRTXCData read Get_ConnectionInfo;
    property ServerAddress[Type_: RTX_SERVER_TYPE]: IRTXCData read Get_ServerAddress;
    property Base64Sign: IRTXCData read Get_Base64Sign;
    property Language: RTXC_LANGUAGE_TYPE read Get_Language;
    property NetProxyParam: IRTXCData read Get_NetProxyParam;
    property AVSetInfo: IRTXCData read Get_AVSetInfo;
    property ServerIP: HResult read Get_ServerIP;
    property RCAToken: IRTXCData read Get_RCAToken;
    property UseMultiFileServer: Integer read Get_UseMultiFileServer;
    property OutSupServerInfo: IRTXCData read Get_OutSupServerInfo;
    property RTXIM: IDispatch read Get_RTXIM;
    property RTXOrgInfo: IUnknown read Get_RTXOrgInfo;
  end;

// *********************************************************************//
// DispIntf:  IRTXCRootDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2C86C87B-A019-4204-A7D3-FB4C2464CFE0}
// *********************************************************************//
  IRTXCRootDisp = dispinterface
    ['{2C86C87B-A019-4204-A7D3-FB4C2464CFE0}']
    function CreateRTXCData: IRTXCData; dispid 1;
    function CreateRTXCDataCollection: IRTXCDataCollection; dispid 2;
    property RTXGroupManager: IRTXCRTXGroupManager readonly dispid 3;
    property RTXBuddyManager: IRTXCRTXBuddyManager readonly dispid 4;
    procedure Login(const Server: WideString; Port: Integer; Account: OleVariant; 
                    const Password: WideString); dispid 5;
    property TCP: WordBool dispid 6;
    procedure Test(const RTXCRoot: IRTXCRoot); dispid 7;
    procedure Initialize; dispid 8;
    property Account: WideString readonly dispid 9;
    property UIN: Integer readonly dispid 10;
    property Module[const Identifier: WideString]: IRTXCModule readonly dispid 11;
    property Presence: IRTXCPresence readonly dispid 12;
    property MyPresence: RTX_PRESENCE dispid 13;
    procedure Logout; dispid 14;
    property ModuleCollection: IRTXCModuleCollection readonly dispid 15;
    property SessionManager: IRTXCSessionManager readonly dispid 16;
    property CurrentServerTime: Integer readonly dispid 17;
    property Token: IRTXCData readonly dispid 18;
    property Sign: IRTXCData readonly dispid 19;
    property ServerInfo: IRTXCDataCollection readonly dispid 20;
    property MFCSupport: IRTXCMFCSupport readonly dispid 21;
    property MDSessionManager: IRTXCMDSessionManager readonly dispid 22;
    procedure ModifyPassword(const OldPwd: WideString; const NewPwd: WideString); dispid 23;
    procedure Uninitialize; dispid 24;
    property EnterpriseInfo: IRTXCData readonly dispid 25;
    procedure LoadPlugin(const Identifier: WideString); dispid 26;
    procedure UnloadPlugin(const Identifier: WideString); dispid 27;
    property License: IRTXCLicense readonly dispid 28;
    property RTXExtBuddyManager: IRTXCExtBuddyManager readonly dispid 29;
    property RTXExtGroupManager: IRTXCExtGroupManager readonly dispid 30;
    procedure LoadPluginEx(const Identifier: WideString; out Result: RTXC_PLGUIN_LOAD_RESULT); dispid 31;
    procedure LoginSessionKey(const bstrServer: WideString; lPort: Integer; varAccount: OleVariant; 
                              const bstrSessionKey: WideString); dispid 32;
    property RTXCEventCenter: IRTXCEventCenter readonly dispid 33;
    property ExState: IRTXCExState readonly dispid 34;
    property LoginMode: RTXC_LOGIN_MODE dispid 35;
    property ETrunk: LongWord dispid 36;
    property NetProxy: Integer readonly dispid 37;
    function CreateP2PMgr: IDispatch; dispid 38;
    property ConnectionInfo: IRTXCData readonly dispid 39;
    property ServerAddress[Type_: RTX_SERVER_TYPE]: IRTXCData readonly dispid 40;
    property Base64Sign: IRTXCData readonly dispid 41;
    procedure ShowTabs(const bstrGuid: WideString); dispid 42;
    property Language: RTXC_LANGUAGE_TYPE readonly dispid 43;
    property NetProxyParam: IRTXCData readonly dispid 44;
    property AVSetInfo: IRTXCData readonly dispid 45;
    procedure GetMainFrameWnd(var pWnd: Integer); dispid 46;
    property ServerIP: HResult readonly dispid 47;
    property RCAToken: IRTXCData readonly dispid 48;
    property UseMultiFileServer: Integer readonly dispid 49;
    property OutSupServerInfo: IRTXCData readonly dispid 50;
    property RTXIM: IDispatch readonly dispid 51;
    property RTXOrgInfo: IUnknown readonly dispid 52;
    procedure PreExit(out pbCanExit: WordBool); dispid 53;
    procedure ShowDialPad; dispid 54;
  end;

// *********************************************************************//
// Interface: IRTXCModuleSite
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7BAC8791-6182-45E0-A067-30A040F36553}
// *********************************************************************//
  IRTXCModuleSite = interface(IDispatch)
    ['{7BAC8791-6182-45E0-A067-30A040F36553}']
    function GetData(const Key: WideString; Remove: WordBool): IRTXCData; safecall;
    function Get_DataCount(const Key: WideString): Integer; safecall;
    procedure ViewData(const Key: WideString); safecall;
    procedure ReceiveData(const RTXCData: IRTXCData); safecall;
    function Get_GlobalModuleData: IRTXCData; safecall;
    function Get_UserModuleData: IRTXCData; safecall;
    procedure SendData(const Receiver: WideString; const RTXCData: IRTXCData; 
                       Flags: RTXC_SEND_DATA_FLAG); safecall;
    function Get_RTXCRoot: IRTXCRoot; safecall;
    property DataCount[const Key: WideString]: Integer read Get_DataCount;
    property GlobalModuleData: IRTXCData read Get_GlobalModuleData;
    property UserModuleData: IRTXCData read Get_UserModuleData;
    property RTXCRoot: IRTXCRoot read Get_RTXCRoot;
  end;

// *********************************************************************//
// DispIntf:  IRTXCModuleSiteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7BAC8791-6182-45E0-A067-30A040F36553}
// *********************************************************************//
  IRTXCModuleSiteDisp = dispinterface
    ['{7BAC8791-6182-45E0-A067-30A040F36553}']
    function GetData(const Key: WideString; Remove: WordBool): IRTXCData; dispid 1;
    property DataCount[const Key: WideString]: Integer readonly dispid 2;
    procedure ViewData(const Key: WideString); dispid 5;
    procedure ReceiveData(const RTXCData: IRTXCData); dispid 6;
    property GlobalModuleData: IRTXCData readonly dispid 7;
    property UserModuleData: IRTXCData readonly dispid 8;
    procedure SendData(const Receiver: WideString; const RTXCData: IRTXCData; 
                       Flags: RTXC_SEND_DATA_FLAG); dispid 3;
    property RTXCRoot: IRTXCRoot readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IRTXCModuleSite2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D7392FBC-BC0B-4865-9D77-9EF52D8762BC}
// *********************************************************************//
  IRTXCModuleSite2 = interface(IRTXCModuleSite)
    ['{D7392FBC-BC0B-4865-9D77-9EF52D8762BC}']
    procedure SendData2(const MsgType: WideString; const Receiver: WideString; 
                        const RTXCData: IRTXCData; Flags: RTXC_SEND_DATA_FLAG); safecall;
    procedure SendData3(DisGroupId: Integer; const RTXCData: IRTXCData; Flags: RTXC_SEND_DATA_FLAG); safecall;
    procedure DisGroupGetVer; safecall;
    procedure DisGroupGetBasic(DisGroupId: Integer); safecall;
    procedure DisGroupGetUserlist(DisGroupId: Integer; const NextAccount: WideString); safecall;
    function GetData2(const Key: WideString; Remove: WordBool; Reverse: WordBool): IRTXCData; safecall;
    procedure GetRCACorpVer(byteProtoVer: Byte; nRId: Integer); safecall;
    procedure GetRCACorpUserRight(byteProtoVer: Byte; dwCount: LongWord; var pdwUin: LongWord; 
                                  var pdwRId: LongWord); safecall;
    procedure GetRCACorpList(byteProtoVer: Byte; dwNextUIN: LongWord); safecall;
    procedure GetRCACorpUserState(byteProtoVer: Byte; dwCount: LongWord; var pdwUin: LongWord; 
                                  var pdwRId: LongWord); safecall;
    procedure GetRCACorpFriends(byteProtoVer: Byte; nRId: Integer; const NextAccount: WideString); safecall;
    procedure GetRCACorpFriendVer(byteProtoVer: Byte); safecall;
    procedure GetRCAUserProfileVer(byteProtoVer: Byte; dwCount: LongWord; 
                                   var pAccounts: WideString; var pdwRId: LongWord); safecall;
    procedure GetRCAUserProfile(byteProtoVer: Byte; const lpszAccount: WideString; dwRId: LongWord); safecall;
    procedure QueryRCAUserExistence(byteProtoVer: Byte; const lpszAccount: WideString; 
                                    dwRId: LongWord); safecall;
    procedure GetCorpUserListVer(byteProtoVer: Byte; dwRId: LongWord; dwNextDeptId: LongWord); safecall;
    procedure GetCorpUserList(byteProtoVer: Byte; dwRId: LongWord; dwDeptId: LongWord; 
                              dwNextUIN: LongWord); safecall;
    procedure GetOrgFileInfo(byteProtoVer: Byte; nRId: Integer); safecall;
    procedure GetExtConfig(byteProtoVer: Byte); safecall;
    procedure GetRCACorpListVer(byteProtoVer: Byte); safecall;
    procedure RCASendData(byteProtoVer: Byte; const Receiver: WideString; 
                          const RTXCData: IRTXCData; Flags: RTXC_SEND_DATA_FLAG); safecall;
    procedure SetIdentifyMode(byteProtoVer: Byte; byteVal: Byte); safecall;
    procedure SetRCABasicInfo(byteProtoVer: Byte; dwUIN: LongWord; const Nick: WideString; 
                              const Name: WideString; Gender: Byte; const Position: WideString; 
                              Age: Byte; const Mobile: WideString; const Email: WideString; 
                              const Phone: WideString); safecall;
    procedure RCASearchUser(byteProtoVer: Byte; dwBUIN: LongWord; szKeyWord: PWideChar); safecall;
    procedure RCAApplyAddExtBuddy(byteProtoVer: Byte; dwBUIN: LongWord; szUserAccount: PWideChar; 
                                  dwBuddyBUin: LongWord; szBuddyAccount: PWideChar); safecall;
    procedure RCAAddExtBuddy(byteProtoVer: Byte; dwBUIN: LongWord; szUserAccount: PWideChar; 
                             dwBuddyBUin: LongWord; szBuddyAccount: PWideChar; szAuthInfo: PWideChar); safecall;
    procedure RCAReAddExtBuddy(byteProtoVer: Byte; bAllowAdd: Integer; dwBUIN: LongWord; 
                               szAccount: PWideChar; dwBuddyBUin: LongWord; dwBuddyCUin: LongWord; 
                               szBuddyAccount: PWideChar; szInfo: PWideChar); safecall;
    procedure RCADelExtBuddy(byteProtoVer: Byte; dwBUIN: LongWord; dwBuddyBUin: LongWord; 
                             dwBuddyCUin: LongWord; szBuddyAccount: PWideChar); safecall;
    procedure RCAGetToken(byteProtoVer: Byte); safecall;
    procedure GetRCACorpUserRightEx(byteProtoVer: Byte; dwCount: LongWord; 
                                    var pAccounts: WideString; var pdwRId: LongWord); safecall;
    procedure GetRCAFriendMsg(byteProtoVer: Byte; dwNextBuin: LongWord; const pAccounts: WideString); safecall;
    procedure RCAGetMyExtInfo(byteProtoVer: Byte); safecall;
    procedure RCASearchExactUser(byteProtoVer: Byte; dwBUIN: LongWord; lpszAccount: PWideChar); safecall;
    procedure RCAQUeryExtUserStateEx(byteProtoVer: Byte; dwCount: LongWord; 
                                     var pAccounts: WideString; var pdwRId: LongWord); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRTXCModuleSite2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D7392FBC-BC0B-4865-9D77-9EF52D8762BC}
// *********************************************************************//
  IRTXCModuleSite2Disp = dispinterface
    ['{D7392FBC-BC0B-4865-9D77-9EF52D8762BC}']
    procedure SendData2(const MsgType: WideString; const Receiver: WideString; 
                        const RTXCData: IRTXCData; Flags: RTXC_SEND_DATA_FLAG); dispid 9;
    procedure SendData3(DisGroupId: Integer; const RTXCData: IRTXCData; Flags: RTXC_SEND_DATA_FLAG); dispid 10;
    procedure DisGroupGetVer; dispid 12;
    procedure DisGroupGetBasic(DisGroupId: Integer); dispid 13;
    procedure DisGroupGetUserlist(DisGroupId: Integer; const NextAccount: WideString); dispid 14;
    function GetData2(const Key: WideString; Remove: WordBool; Reverse: WordBool): IRTXCData; dispid 15;
    procedure GetRCACorpVer(byteProtoVer: Byte; nRId: Integer); dispid 16;
    procedure GetRCACorpUserRight(byteProtoVer: Byte; dwCount: LongWord; var pdwUin: LongWord; 
                                  var pdwRId: LongWord); dispid 17;
    procedure GetRCACorpList(byteProtoVer: Byte; dwNextUIN: LongWord); dispid 18;
    procedure GetRCACorpUserState(byteProtoVer: Byte; dwCount: LongWord; var pdwUin: LongWord; 
                                  var pdwRId: LongWord); dispid 19;
    procedure GetRCACorpFriends(byteProtoVer: Byte; nRId: Integer; const NextAccount: WideString); dispid 20;
    procedure GetRCACorpFriendVer(byteProtoVer: Byte); dispid 21;
    procedure GetRCAUserProfileVer(byteProtoVer: Byte; dwCount: LongWord; 
                                   var pAccounts: WideString; var pdwRId: LongWord); dispid 22;
    procedure GetRCAUserProfile(byteProtoVer: Byte; const lpszAccount: WideString; dwRId: LongWord); dispid 23;
    procedure QueryRCAUserExistence(byteProtoVer: Byte; const lpszAccount: WideString; 
                                    dwRId: LongWord); dispid 24;
    procedure GetCorpUserListVer(byteProtoVer: Byte; dwRId: LongWord; dwNextDeptId: LongWord); dispid 25;
    procedure GetCorpUserList(byteProtoVer: Byte; dwRId: LongWord; dwDeptId: LongWord; 
                              dwNextUIN: LongWord); dispid 26;
    procedure GetOrgFileInfo(byteProtoVer: Byte; nRId: Integer); dispid 27;
    procedure GetExtConfig(byteProtoVer: Byte); dispid 28;
    procedure GetRCACorpListVer(byteProtoVer: Byte); dispid 29;
    procedure RCASendData(byteProtoVer: Byte; const Receiver: WideString; 
                          const RTXCData: IRTXCData; Flags: RTXC_SEND_DATA_FLAG); dispid 30;
    procedure SetIdentifyMode(byteProtoVer: Byte; byteVal: Byte); dispid 31;
    procedure SetRCABasicInfo(byteProtoVer: Byte; dwUIN: LongWord; const Nick: WideString; 
                              const Name: WideString; Gender: Byte; const Position: WideString; 
                              Age: Byte; const Mobile: WideString; const Email: WideString; 
                              const Phone: WideString); dispid 32;
    procedure RCASearchUser(byteProtoVer: Byte; dwBUIN: LongWord; 
                            szKeyWord: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 33;
    procedure RCAApplyAddExtBuddy(byteProtoVer: Byte; dwBUIN: LongWord; 
                                  szUserAccount: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                  dwBuddyBUin: LongWord; 
                                  szBuddyAccount: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 34;
    procedure RCAAddExtBuddy(byteProtoVer: Byte; dwBUIN: LongWord; 
                             szUserAccount: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                             dwBuddyBUin: LongWord; 
                             szBuddyAccount: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                             szAuthInfo: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 35;
    procedure RCAReAddExtBuddy(byteProtoVer: Byte; bAllowAdd: Integer; dwBUIN: LongWord; 
                               szAccount: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                               dwBuddyBUin: LongWord; dwBuddyCUin: LongWord; 
                               szBuddyAccount: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                               szInfo: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 36;
    procedure RCADelExtBuddy(byteProtoVer: Byte; dwBUIN: LongWord; dwBuddyBUin: LongWord; 
                             dwBuddyCUin: LongWord; 
                             szBuddyAccount: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 37;
    procedure RCAGetToken(byteProtoVer: Byte); dispid 38;
    procedure GetRCACorpUserRightEx(byteProtoVer: Byte; dwCount: LongWord; 
                                    var pAccounts: WideString; var pdwRId: LongWord); dispid 39;
    procedure GetRCAFriendMsg(byteProtoVer: Byte; dwNextBuin: LongWord; const pAccounts: WideString); dispid 40;
    procedure RCAGetMyExtInfo(byteProtoVer: Byte); dispid 41;
    procedure RCASearchExactUser(byteProtoVer: Byte; dwBUIN: LongWord; 
                                 lpszAccount: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 42;
    procedure RCAQUeryExtUserStateEx(byteProtoVer: Byte; dwCount: LongWord; 
                                     var pAccounts: WideString; var pdwRId: LongWord); dispid 43;
    function GetData(const Key: WideString; Remove: WordBool): IRTXCData; dispid 1;
    property DataCount[const Key: WideString]: Integer readonly dispid 2;
    procedure ViewData(const Key: WideString); dispid 5;
    procedure ReceiveData(const RTXCData: IRTXCData); dispid 6;
    property GlobalModuleData: IRTXCData readonly dispid 7;
    property UserModuleData: IRTXCData readonly dispid 8;
    procedure SendData(const Receiver: WideString; const RTXCData: IRTXCData; 
                       Flags: RTXC_SEND_DATA_FLAG); dispid 3;
    property RTXCRoot: IRTXCRoot readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IRTXCModuleSite3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DEEC9BD4-338A-42BD-B029-DDC142B1B11F}
// *********************************************************************//
  IRTXCModuleSite3 = interface(IRTXCModuleSite)
    ['{DEEC9BD4-338A-42BD-B029-DDC142B1B11F}']
  end;

// *********************************************************************//
// DispIntf:  IRTXCModuleSite3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DEEC9BD4-338A-42BD-B029-DDC142B1B11F}
// *********************************************************************//
  IRTXCModuleSite3Disp = dispinterface
    ['{DEEC9BD4-338A-42BD-B029-DDC142B1B11F}']
    function GetData(const Key: WideString; Remove: WordBool): IRTXCData; dispid 1;
    property DataCount[const Key: WideString]: Integer readonly dispid 2;
    procedure ViewData(const Key: WideString); dispid 5;
    procedure ReceiveData(const RTXCData: IRTXCData); dispid 6;
    property GlobalModuleData: IRTXCData readonly dispid 7;
    property UserModuleData: IRTXCData readonly dispid 8;
    procedure SendData(const Receiver: WideString; const RTXCData: IRTXCData; 
                       Flags: RTXC_SEND_DATA_FLAG); dispid 3;
    property RTXCRoot: IRTXCRoot readonly dispid 4;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCModuleSiteEvents
// Flags:     (4096) Dispatchable
// GUID:      {E32DC330-3889-4D94-BFD6-39FC3A5432BD}
// *********************************************************************//
  _IRTXCModuleSiteEvents = dispinterface
    ['{E32DC330-3889-4D94-BFD6-39FC3A5432BD}']
    function OnDataReceived(const Key: WideString): HResult; dispid 1;
    function OnViewData(const Key: WideString): HResult; dispid 2;
    function OnSendDataResult(Result: RTXC_MODULE_SEND_DATA_RESULT; Extra: OleVariant): HResult; dispid 3;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCMFCSupportEvents
// Flags:     (4096) Dispatchable
// GUID:      {7C96E265-9231-431A-91E0-15A5846FF59A}
// *********************************************************************//
  _IRTXCMFCSupportEvents = dispinterface
    ['{7C96E265-9231-431A-91E0-15A5846FF59A}']
    function OnPreTranslateMessage(MSGPointer: Integer): WordBool; dispid 1;
    function OnIdle(Count: Integer): HResult; dispid 2;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCRootEvents
// Flags:     (4096) Dispatchable
// GUID:      {8295917F-7481-438F-9BAD-6AFD6EF7AC7B}
// *********************************************************************//
  _IRTXCRootEvents = dispinterface
    ['{8295917F-7481-438F-9BAD-6AFD6EF7AC7B}']
    function OnLoginResult(Result: RTXC_LOGIN_RESULT): HResult; dispid 1;
    function OnMyPresenceChange(Result: RTXC_RESULT; RTXPresence: RTX_PRESENCE): HResult; dispid 2;
    function OnLogoutResult(Result: RTXC_RESULT): HResult; dispid 3;
    function OnAccountChange: HResult; dispid 4;
    function OnPackageCome(Reserved: Integer): HResult; dispid 5;
    function OnModifyPassword(Result: RTXC_MODIFY_PWD_RESULT): HResult; dispid 6;
    function OnMsgCountChange(Count: Integer; Forbid: WordBool; const Identifier: WideString; 
                              const Key: WideString; const Sender: WideString): HResult; dispid 7;
    function OnExitApp(const pData: IRTXCData; var pbCanExit: WordBool): HResult; dispid 8;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCRTXGroupManagerEvents
// Flags:     (4096) Dispatchable
// GUID:      {DEE9D53F-41D4-463D-B064-3BAF402F85DD}
// *********************************************************************//
  _IRTXCRTXGroupManagerEvents = dispinterface
    ['{DEE9D53F-41D4-463D-B064-3BAF402F85DD}']
    function OnGroupChange(const RTXCRTXGroup: IRTXCRTXGroup): HResult; dispid 1;
    function OnGroupAdd(const RTXCRTXGroup: IRTXCRTXGroup): HResult; dispid 2;
    function OnGroupRemove(const RTXCRTXGroup: IRTXCRTXGroup): HResult; dispid 3;
    function OnBuddyAdd(const RTXCRTXGroup: IRTXCRTXGroup; const RTXCRTXBuddy: IRTXCRTXBuddy): HResult; dispid 4;
    function OnBuddyRemove(const RTXCRTXGroup: IRTXCRTXGroup; const RTXCRTXBuddy: IRTXCRTXBuddy): HResult; dispid 5;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCRTXBuddyManagerEvents
// Flags:     (4096) Dispatchable
// GUID:      {A3C821FE-D270-470E-8535-F5797993A1BA}
// *********************************************************************//
  _IRTXCRTXBuddyManagerEvents = dispinterface
    ['{A3C821FE-D270-470E-8535-F5797993A1BA}']
    function OnBuddyProfileChange(const RTXCRTXBuddy: IRTXCRTXBuddy): HResult; dispid 1;
    function OnQueryExistence(const Account: WideString; Existence: WordBool): HResult; dispid 2;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCRTXBuddyEvents
// Flags:     (4096) Dispatchable
// GUID:      {DE015F73-C0EA-46DE-9E9D-3374F3D0E209}
// *********************************************************************//
  _IRTXCRTXBuddyEvents = dispinterface
    ['{DE015F73-C0EA-46DE-9E9D-3374F3D0E209}']
    function OnModifyProfile(Success: WordBool): HResult; dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCPresenceEvents
// Flags:     (4096) Dispatchable
// GUID:      {EB354242-29F3-4FA5-A5E6-B3599973589D}
// *********************************************************************//
  _IRTXCPresenceEvents = dispinterface
    ['{EB354242-29F3-4FA5-A5E6-B3599973589D}']
    function OnPresenceChange(const Account: WideString; RTXPresence: RTX_PRESENCE): HResult; dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCSessionManagerEvents
// Flags:     (4096) Dispatchable
// GUID:      {84525E5C-A868-41B2-B01F-A42B7B12D7B0}
// *********************************************************************//
  _IRTXCSessionManagerEvents = dispinterface
    ['{84525E5C-A868-41B2-B01F-A42B7B12D7B0}']
    function OnQuerySessionInfoComplete(const Session: IRTXCSession; Cookie: Integer): HResult; dispid 1;
    function OnSessionAdd(const Session: IRTXCSession): HResult; dispid 2;
    function OnRequestInitiator(const Session: IRTXCSession; const Participant: WideString): HResult; dispid 3;
    function OnRegisterSession(const Session: IRTXCSession): HResult; dispid 4;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCSessionEvents
// Flags:     (4096) Dispatchable
// GUID:      {08191316-5140-48FD-8AE7-17F07F149BE0}
// *********************************************************************//
  _IRTXCSessionEvents = dispinterface
    ['{08191316-5140-48FD-8AE7-17F07F149BE0}']
    function OnParticipantChange(const Participant: WideString): HResult; dispid 1;
    function OnTopicChange(const Topic: WideString): HResult; dispid 2;
    function OnMessageCountChange(MsgCount: Integer): HResult; dispid 3;
    function OnRequestInitiator(const Participant: WideString): HResult; dispid 4;
    function OnRequestInitiatorComplete(nResult: Integer): HResult; dispid 5;
    function OnInitiatorChange(const Initiator: WideString): HResult; dispid 6;
    function OnStateChange(State: RTXC_SESSION_STATE): HResult; dispid 7;
    function OnParticipantChangeState(const Participant: WideString; State: RTXC_SESSION_STATE): HResult; dispid 8;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCMDSessionManagerEvents
// Flags:     (4096) Dispatchable
// GUID:      {277CDFBB-5EF6-449E-B09F-5B984C1EBDCF}
// *********************************************************************//
  _IRTXCMDSessionManagerEvents = dispinterface
    ['{277CDFBB-5EF6-449E-B09F-5B984C1EBDCF}']
    function OnInvite(const Session: IRTXCMDSession; const VerifyString: WideString): HResult; dispid 1;
    function OnCancel(const Session: IRTXCMDSession): HResult; dispid 2;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCMDSessionEvents
// Flags:     (4096) Dispatchable
// GUID:      {8244EED1-C5AC-4648-9606-DF81E3891744}
// *********************************************************************//
  _IRTXCMDSessionEvents = dispinterface
    ['{8244EED1-C5AC-4648-9606-DF81E3891744}']
    function OnAddParticipantComplete(const Participant: WideString; nResult: Integer): HResult; dispid 1;
    function OnConnectComplete(const Participant: WideString; nResult: Integer): HResult; dispid 2;
    function OnParticipantChange(const Participant: WideString): HResult; dispid 3;
    function OnDisConnect(const Participant: WideString): HResult; dispid 4;
    function OnBye(const Participant: WideString): HResult; dispid 5;
    function OnRecvData(const Participant: WideString; Data: OleVariant): HResult; dispid 6;
    function OnKickout(const Participant: WideString): HResult; dispid 7;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCLicenseEvents
// Flags:     (4096) Dispatchable
// GUID:      {5E6697F9-A328-4B68-9C8F-36DD4C8AC009}
// *********************************************************************//
  _IRTXCLicenseEvents = dispinterface
    ['{5E6697F9-A328-4B68-9C8F-36DD4C8AC009}']
    function OnConfigChanged(IsSucceed: WordBool; const Name: WideString; Val: OleVariant): HResult; dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCExtBuddyEvents
// Flags:     (4096) Dispatchable
// GUID:      {CDF6A4E0-0068-4C51-A3FF-8640DF5ABD0B}
// *********************************************************************//
  _IRTXCExtBuddyEvents = dispinterface
    ['{CDF6A4E0-0068-4C51-A3FF-8640DF5ABD0B}']
  end;

// *********************************************************************//
// DispIntf:  _IRTXCExtBuddyManagerEvents
// Flags:     (4096) Dispatchable
// GUID:      {8FF094D3-E84C-40EA-AFEE-34B06B3F2AC5}
// *********************************************************************//
  _IRTXCExtBuddyManagerEvents = dispinterface
    ['{8FF094D3-E84C-40EA-AFEE-34B06B3F2AC5}']
    function OnExtBuddyChange(const RTXCExtBuddy: IRTXCExtBuddy): HResult; dispid 1;
    function OnAddNewExtBuddy(const Account: WideString): HResult; dispid 2;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCExtGroupManagerEvents
// Flags:     (4096) Dispatchable
// GUID:      {C69ED89F-4024-45E9-BE5E-CD27700E5EF5}
// *********************************************************************//
  _IRTXCExtGroupManagerEvents = dispinterface
    ['{C69ED89F-4024-45E9-BE5E-CD27700E5EF5}']
    function OnGroupChange(const RTXCRTXGroup: IRTXCExtGroup): HResult; dispid 1;
    function OnGroupAdd(const RTXCRTXGroup: IRTXCExtGroup): HResult; dispid 2;
    function OnGroupRemove(const RTXCRTXGroup: IRTXCExtGroup): HResult; dispid 3;
    function OnBuddyAdd(const RTXCRTXGroup: IRTXCExtGroup; const RTXCRTXBuddy: IRTXCExtBuddy): HResult; dispid 4;
    function OnBuddyRemove(const RTXCRTXGroup: IRTXCExtGroup; const RTXCRTXBuddy: IRTXCExtBuddy): HResult; dispid 5;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCExtGroupEvents
// Flags:     (4096) Dispatchable
// GUID:      {31955751-57A1-4067-8F6D-0E4118C955FB}
// *********************************************************************//
  _IRTXCExtGroupEvents = dispinterface
    ['{31955751-57A1-4067-8F6D-0E4118C955FB}']
  end;

// *********************************************************************//
// DispIntf:  _IRTXCExtGroupCollectionEvents
// Flags:     (4096) Dispatchable
// GUID:      {E1F89F78-2BBE-41D9-B91D-DB379938145D}
// *********************************************************************//
  _IRTXCExtGroupCollectionEvents = dispinterface
    ['{E1F89F78-2BBE-41D9-B91D-DB379938145D}']
  end;

// *********************************************************************//
// DispIntf:  _IRTXCEventCenterEvents
// Flags:     (4096) Dispatchable
// GUID:      {528935AA-74A9-425F-A632-51C4F3E3E458}
// *********************************************************************//
  _IRTXCEventCenterEvents = dispinterface
    ['{528935AA-74A9-425F-A632-51C4F3E3E458}']
  end;

// *********************************************************************//
// DispIntf:  _DRTXOrg
// Flags:     (4112) Hidden Dispatchable
// GUID:      {BC0AC144-423E-40D5-B369-9C5DD05360A1}
// *********************************************************************//
  _DRTXOrg = dispinterface
    ['{BC0AC144-423E-40D5-B369-9C5DD05360A1}']
    procedure SetShowStyle(lstyle: Integer); dispid 1;
    function InitCtrl(const pModule: IDispatch): Shortint; dispid 2;
    function RemoveUsers(lDeptID: Integer): Integer; dispid 3;
    function StartAnimate(const pszUserName: WideString): Shortint; dispid 4;
    function SetState(const pszUserName: WideString; nState: Smallint): Shortint; dispid 5;
    function GetSelectedData(out RTXCDataCollection: IRTXCDataCollection): IRTXCDataCollection; dispid 6;
    function SetTipsIcon(const Account: WideString; const pIconDataCollection: IRTXCDataCollection): Shortint; dispid 7;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DRTXOrgEvents
// Flags:     (4096) Dispatchable
// GUID:      {7AEFD014-CD49-40A4-8593-EBA23BC4C6A3}
// *********************************************************************//
  _DRTXOrgEvents = dispinterface
    ['{7AEFD014-CD49-40A4-8593-EBA23BC4C6A3}']
    procedure LClickEvent(Val: OleVariant; nType: Integer); dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _IRTXCExStateEvents
// Flags:     (4096) Dispatchable
// GUID:      {45846CFE-5908-458D-A6BC-BFEF97CD39F6}
// *********************************************************************//
  _IRTXCExStateEvents = dispinterface
    ['{45846CFE-5908-458D-A6BC-BFEF97CD39F6}']
    function OnExStateChange(const bstrAccount: WideString; const bstrExStateName: WideString; 
                             lExState: Integer): HResult; dispid 1;
  end;

// *********************************************************************//
// The Class CoRTXCRoot provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCRoot exposed by              
// the CoClass RTXCRoot. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCRoot = class
    class function Create: IRTXCRoot;
    class function CreateRemote(const MachineName: string): IRTXCRoot;
  end;

// *********************************************************************//
// The Class CoRTXCData provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCData exposed by              
// the CoClass RTXCData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCData = class
    class function Create: IRTXCData;
    class function CreateRemote(const MachineName: string): IRTXCData;
  end;

// *********************************************************************//
// The Class CoRTXCDataCollection provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCDataCollection exposed by              
// the CoClass RTXCDataCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCDataCollection = class
    class function Create: IRTXCDataCollection;
    class function CreateRemote(const MachineName: string): IRTXCDataCollection;
  end;

// *********************************************************************//
// The Class CoRTXCRTXGroupManager provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCRTXGroupManager exposed by              
// the CoClass RTXCRTXGroupManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCRTXGroupManager = class
    class function Create: IRTXCRTXGroupManager;
    class function CreateRemote(const MachineName: string): IRTXCRTXGroupManager;
  end;

// *********************************************************************//
// The Class CoRTXCRTXGroup provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCRTXGroup exposed by              
// the CoClass RTXCRTXGroup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCRTXGroup = class
    class function Create: IRTXCRTXGroup;
    class function CreateRemote(const MachineName: string): IRTXCRTXGroup;
  end;

// *********************************************************************//
// The Class CoRTXCRTXBuddyManager provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCRTXBuddyManager exposed by              
// the CoClass RTXCRTXBuddyManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCRTXBuddyManager = class
    class function Create: IRTXCRTXBuddyManager;
    class function CreateRemote(const MachineName: string): IRTXCRTXBuddyManager;
  end;

// *********************************************************************//
// The Class CoRTXCRTXBuddy provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCRTXBuddy exposed by              
// the CoClass RTXCRTXBuddy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCRTXBuddy = class
    class function Create: IRTXCRTXBuddy;
    class function CreateRemote(const MachineName: string): IRTXCRTXBuddy;
  end;

// *********************************************************************//
// The Class CoRTXCRTXGroupCollection provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCRTXGroupCollection exposed by              
// the CoClass RTXCRTXGroupCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCRTXGroupCollection = class
    class function Create: IRTXCRTXGroupCollection;
    class function CreateRemote(const MachineName: string): IRTXCRTXGroupCollection;
  end;

// *********************************************************************//
// The Class CoRTXCRTXBuddyCollection provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCRTXBuddyCollection exposed by              
// the CoClass RTXCRTXBuddyCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCRTXBuddyCollection = class
    class function Create: IRTXCRTXBuddyCollection;
    class function CreateRemote(const MachineName: string): IRTXCRTXBuddyCollection;
  end;

// *********************************************************************//
// The Class CoRTXCModuleSite provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCModuleSite exposed by              
// the CoClass RTXCModuleSite. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCModuleSite = class
    class function Create: IRTXCModuleSite;
    class function CreateRemote(const MachineName: string): IRTXCModuleSite;
  end;

// *********************************************************************//
// The Class CoRTXCModuleCollection provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCModuleCollection exposed by              
// the CoClass RTXCModuleCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCModuleCollection = class
    class function Create: IRTXCModuleCollection;
    class function CreateRemote(const MachineName: string): IRTXCModuleCollection;
  end;

// *********************************************************************//
// The Class CoRTXCPresence provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCPresence exposed by              
// the CoClass RTXCPresence. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCPresence = class
    class function Create: IRTXCPresence;
    class function CreateRemote(const MachineName: string): IRTXCPresence;
  end;

// *********************************************************************//
// The Class CoRTXCSessionManager provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCSessionManager exposed by              
// the CoClass RTXCSessionManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCSessionManager = class
    class function Create: IRTXCSessionManager;
    class function CreateRemote(const MachineName: string): IRTXCSessionManager;
  end;

// *********************************************************************//
// The Class CoRTXCSession provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCSession exposed by              
// the CoClass RTXCSession. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCSession = class
    class function Create: IRTXCSession;
    class function CreateRemote(const MachineName: string): IRTXCSession;
  end;

// *********************************************************************//
// The Class CoRTXCSessionCollection provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCSessionCollection exposed by              
// the CoClass RTXCSessionCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCSessionCollection = class
    class function Create: IRTXCSessionCollection;
    class function CreateRemote(const MachineName: string): IRTXCSessionCollection;
  end;

// *********************************************************************//
// The Class CoRTXCMFCSupport provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCMFCSupport exposed by              
// the CoClass RTXCMFCSupport. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCMFCSupport = class
    class function Create: IRTXCMFCSupport;
    class function CreateRemote(const MachineName: string): IRTXCMFCSupport;
  end;

// *********************************************************************//
// The Class CoRTXCMDSessionManager provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCMDSessionManager exposed by              
// the CoClass RTXCMDSessionManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCMDSessionManager = class
    class function Create: IRTXCMDSessionManager;
    class function CreateRemote(const MachineName: string): IRTXCMDSessionManager;
  end;

// *********************************************************************//
// The Class CoRTXCMDSession provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCMDSession exposed by              
// the CoClass RTXCMDSession. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCMDSession = class
    class function Create: IRTXCMDSession;
    class function CreateRemote(const MachineName: string): IRTXCMDSession;
  end;

// *********************************************************************//
// The Class CoRTXCLicense provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCLicense exposed by              
// the CoClass RTXCLicense. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCLicense = class
    class function Create: IRTXCLicense;
    class function CreateRemote(const MachineName: string): IRTXCLicense;
  end;

// *********************************************************************//
// The Class CoRTXCExtBuddy provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCExtBuddy exposed by              
// the CoClass RTXCExtBuddy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCExtBuddy = class
    class function Create: IRTXCExtBuddy;
    class function CreateRemote(const MachineName: string): IRTXCExtBuddy;
  end;

// *********************************************************************//
// The Class CoRTXCExtBuddyManager provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCExtBuddyManager exposed by              
// the CoClass RTXCExtBuddyManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCExtBuddyManager = class
    class function Create: IRTXCExtBuddyManager;
    class function CreateRemote(const MachineName: string): IRTXCExtBuddyManager;
  end;

// *********************************************************************//
// The Class CoRTXCExtBuddyCollection provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCExtBuddyCollection exposed by              
// the CoClass RTXCExtBuddyCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCExtBuddyCollection = class
    class function Create: IRTXCExtBuddyCollection;
    class function CreateRemote(const MachineName: string): IRTXCExtBuddyCollection;
  end;

// *********************************************************************//
// The Class CoRTXCExtGroup provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCExtGroup exposed by              
// the CoClass RTXCExtGroup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCExtGroup = class
    class function Create: IRTXCExtGroup;
    class function CreateRemote(const MachineName: string): IRTXCExtGroup;
  end;

// *********************************************************************//
// The Class CoRTXCExtGroupManager provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCExtGroupManager exposed by              
// the CoClass RTXCExtGroupManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCExtGroupManager = class
    class function Create: IRTXCExtGroupManager;
    class function CreateRemote(const MachineName: string): IRTXCExtGroupManager;
  end;

// *********************************************************************//
// The Class CoRTXCExtGroupCollection provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCExtGroupCollection exposed by              
// the CoClass RTXCExtGroupCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCExtGroupCollection = class
    class function Create: IRTXCExtGroupCollection;
    class function CreateRemote(const MachineName: string): IRTXCExtGroupCollection;
  end;

// *********************************************************************//
// The Class CoRTXCEventCenter provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCEventCenter exposed by              
// the CoClass RTXCEventCenter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCEventCenter = class
    class function Create: IRTXCEventCenter;
    class function CreateRemote(const MachineName: string): IRTXCEventCenter;
  end;

// *********************************************************************//
// The Class CoRTXCExState provides a Create and CreateRemote method to          
// create instances of the default interface IRTXCExState exposed by              
// the CoClass RTXCExState. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRTXCExState = class
    class function Create: IRTXCExState;
    class function CreateRemote(const MachineName: string): IRTXCExState;
  end;

implementation

uses System.Win.ComObj;

class function CoRTXCRoot.Create: IRTXCRoot;
begin
  Result := CreateComObject(CLASS_RTXCRoot) as IRTXCRoot;
end;

class function CoRTXCRoot.CreateRemote(const MachineName: string): IRTXCRoot;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCRoot) as IRTXCRoot;
end;

class function CoRTXCData.Create: IRTXCData;
begin
  Result := CreateComObject(CLASS_RTXCData) as IRTXCData;
end;

class function CoRTXCData.CreateRemote(const MachineName: string): IRTXCData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCData) as IRTXCData;
end;

class function CoRTXCDataCollection.Create: IRTXCDataCollection;
begin
  Result := CreateComObject(CLASS_RTXCDataCollection) as IRTXCDataCollection;
end;

class function CoRTXCDataCollection.CreateRemote(const MachineName: string): IRTXCDataCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCDataCollection) as IRTXCDataCollection;
end;

class function CoRTXCRTXGroupManager.Create: IRTXCRTXGroupManager;
begin
  Result := CreateComObject(CLASS_RTXCRTXGroupManager) as IRTXCRTXGroupManager;
end;

class function CoRTXCRTXGroupManager.CreateRemote(const MachineName: string): IRTXCRTXGroupManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCRTXGroupManager) as IRTXCRTXGroupManager;
end;

class function CoRTXCRTXGroup.Create: IRTXCRTXGroup;
begin
  Result := CreateComObject(CLASS_RTXCRTXGroup) as IRTXCRTXGroup;
end;

class function CoRTXCRTXGroup.CreateRemote(const MachineName: string): IRTXCRTXGroup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCRTXGroup) as IRTXCRTXGroup;
end;

class function CoRTXCRTXBuddyManager.Create: IRTXCRTXBuddyManager;
begin
  Result := CreateComObject(CLASS_RTXCRTXBuddyManager) as IRTXCRTXBuddyManager;
end;

class function CoRTXCRTXBuddyManager.CreateRemote(const MachineName: string): IRTXCRTXBuddyManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCRTXBuddyManager) as IRTXCRTXBuddyManager;
end;

class function CoRTXCRTXBuddy.Create: IRTXCRTXBuddy;
begin
  Result := CreateComObject(CLASS_RTXCRTXBuddy) as IRTXCRTXBuddy;
end;

class function CoRTXCRTXBuddy.CreateRemote(const MachineName: string): IRTXCRTXBuddy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCRTXBuddy) as IRTXCRTXBuddy;
end;

class function CoRTXCRTXGroupCollection.Create: IRTXCRTXGroupCollection;
begin
  Result := CreateComObject(CLASS_RTXCRTXGroupCollection) as IRTXCRTXGroupCollection;
end;

class function CoRTXCRTXGroupCollection.CreateRemote(const MachineName: string): IRTXCRTXGroupCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCRTXGroupCollection) as IRTXCRTXGroupCollection;
end;

class function CoRTXCRTXBuddyCollection.Create: IRTXCRTXBuddyCollection;
begin
  Result := CreateComObject(CLASS_RTXCRTXBuddyCollection) as IRTXCRTXBuddyCollection;
end;

class function CoRTXCRTXBuddyCollection.CreateRemote(const MachineName: string): IRTXCRTXBuddyCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCRTXBuddyCollection) as IRTXCRTXBuddyCollection;
end;

class function CoRTXCModuleSite.Create: IRTXCModuleSite;
begin
  Result := CreateComObject(CLASS_RTXCModuleSite) as IRTXCModuleSite;
end;

class function CoRTXCModuleSite.CreateRemote(const MachineName: string): IRTXCModuleSite;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCModuleSite) as IRTXCModuleSite;
end;

class function CoRTXCModuleCollection.Create: IRTXCModuleCollection;
begin
  Result := CreateComObject(CLASS_RTXCModuleCollection) as IRTXCModuleCollection;
end;

class function CoRTXCModuleCollection.CreateRemote(const MachineName: string): IRTXCModuleCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCModuleCollection) as IRTXCModuleCollection;
end;

class function CoRTXCPresence.Create: IRTXCPresence;
begin
  Result := CreateComObject(CLASS_RTXCPresence) as IRTXCPresence;
end;

class function CoRTXCPresence.CreateRemote(const MachineName: string): IRTXCPresence;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCPresence) as IRTXCPresence;
end;

class function CoRTXCSessionManager.Create: IRTXCSessionManager;
begin
  Result := CreateComObject(CLASS_RTXCSessionManager) as IRTXCSessionManager;
end;

class function CoRTXCSessionManager.CreateRemote(const MachineName: string): IRTXCSessionManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCSessionManager) as IRTXCSessionManager;
end;

class function CoRTXCSession.Create: IRTXCSession;
begin
  Result := CreateComObject(CLASS_RTXCSession) as IRTXCSession;
end;

class function CoRTXCSession.CreateRemote(const MachineName: string): IRTXCSession;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCSession) as IRTXCSession;
end;

class function CoRTXCSessionCollection.Create: IRTXCSessionCollection;
begin
  Result := CreateComObject(CLASS_RTXCSessionCollection) as IRTXCSessionCollection;
end;

class function CoRTXCSessionCollection.CreateRemote(const MachineName: string): IRTXCSessionCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCSessionCollection) as IRTXCSessionCollection;
end;

class function CoRTXCMFCSupport.Create: IRTXCMFCSupport;
begin
  Result := CreateComObject(CLASS_RTXCMFCSupport) as IRTXCMFCSupport;
end;

class function CoRTXCMFCSupport.CreateRemote(const MachineName: string): IRTXCMFCSupport;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCMFCSupport) as IRTXCMFCSupport;
end;

class function CoRTXCMDSessionManager.Create: IRTXCMDSessionManager;
begin
  Result := CreateComObject(CLASS_RTXCMDSessionManager) as IRTXCMDSessionManager;
end;

class function CoRTXCMDSessionManager.CreateRemote(const MachineName: string): IRTXCMDSessionManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCMDSessionManager) as IRTXCMDSessionManager;
end;

class function CoRTXCMDSession.Create: IRTXCMDSession;
begin
  Result := CreateComObject(CLASS_RTXCMDSession) as IRTXCMDSession;
end;

class function CoRTXCMDSession.CreateRemote(const MachineName: string): IRTXCMDSession;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCMDSession) as IRTXCMDSession;
end;

class function CoRTXCLicense.Create: IRTXCLicense;
begin
  Result := CreateComObject(CLASS_RTXCLicense) as IRTXCLicense;
end;

class function CoRTXCLicense.CreateRemote(const MachineName: string): IRTXCLicense;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCLicense) as IRTXCLicense;
end;

class function CoRTXCExtBuddy.Create: IRTXCExtBuddy;
begin
  Result := CreateComObject(CLASS_RTXCExtBuddy) as IRTXCExtBuddy;
end;

class function CoRTXCExtBuddy.CreateRemote(const MachineName: string): IRTXCExtBuddy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCExtBuddy) as IRTXCExtBuddy;
end;

class function CoRTXCExtBuddyManager.Create: IRTXCExtBuddyManager;
begin
  Result := CreateComObject(CLASS_RTXCExtBuddyManager) as IRTXCExtBuddyManager;
end;

class function CoRTXCExtBuddyManager.CreateRemote(const MachineName: string): IRTXCExtBuddyManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCExtBuddyManager) as IRTXCExtBuddyManager;
end;

class function CoRTXCExtBuddyCollection.Create: IRTXCExtBuddyCollection;
begin
  Result := CreateComObject(CLASS_RTXCExtBuddyCollection) as IRTXCExtBuddyCollection;
end;

class function CoRTXCExtBuddyCollection.CreateRemote(const MachineName: string): IRTXCExtBuddyCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCExtBuddyCollection) as IRTXCExtBuddyCollection;
end;

class function CoRTXCExtGroup.Create: IRTXCExtGroup;
begin
  Result := CreateComObject(CLASS_RTXCExtGroup) as IRTXCExtGroup;
end;

class function CoRTXCExtGroup.CreateRemote(const MachineName: string): IRTXCExtGroup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCExtGroup) as IRTXCExtGroup;
end;

class function CoRTXCExtGroupManager.Create: IRTXCExtGroupManager;
begin
  Result := CreateComObject(CLASS_RTXCExtGroupManager) as IRTXCExtGroupManager;
end;

class function CoRTXCExtGroupManager.CreateRemote(const MachineName: string): IRTXCExtGroupManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCExtGroupManager) as IRTXCExtGroupManager;
end;

class function CoRTXCExtGroupCollection.Create: IRTXCExtGroupCollection;
begin
  Result := CreateComObject(CLASS_RTXCExtGroupCollection) as IRTXCExtGroupCollection;
end;

class function CoRTXCExtGroupCollection.CreateRemote(const MachineName: string): IRTXCExtGroupCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCExtGroupCollection) as IRTXCExtGroupCollection;
end;

class function CoRTXCEventCenter.Create: IRTXCEventCenter;
begin
  Result := CreateComObject(CLASS_RTXCEventCenter) as IRTXCEventCenter;
end;

class function CoRTXCEventCenter.CreateRemote(const MachineName: string): IRTXCEventCenter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCEventCenter) as IRTXCEventCenter;
end;

class function CoRTXCExState.Create: IRTXCExState;
begin
  Result := CreateComObject(CLASS_RTXCExState) as IRTXCExState;
end;

class function CoRTXCExState.CreateRemote(const MachineName: string): IRTXCExState;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RTXCExState) as IRTXCExState;
end;

end.
