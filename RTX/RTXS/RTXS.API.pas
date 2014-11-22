//***************************************************************************
//
//       名称：RTXS.API.pas
//       工具：RAD Studio XE6
//       日期：2014/11/9 15:12:01
//       作者：ying32
//       QQ  ：396506155
//       MSN ：ying_32@live.cn
//       E-mail：yuanfen3287@vip.qq.com
//       Website：http://www.ying32.com
//
//---------------------------------------------------------------------------
//
//       备注：RTX服务端API
//
//
//***************************************************************************
unit RTXS.API;

interface



//旧的接口定义
function SendSMS(pszSender, pszRecver, pszSMS: PAnsiChar): Integer; stdcall;
function GetSMSCount(pszUserName: PAnsiChar):Integer; stdcall;
function GetSMS(pszUserName: PAnsiChar; bDel: Boolean; pBuf: PAnsiChar; nLen: Integer): Integer; stdcall;
function GetFuncSMSCount(nFuncNo: Integer): Integer; stdcall;
function GetFuncSMS(nFuncNo: Integer; bDel: Boolean; pBuf: PAnsiChar; nLen: Integer): Integer; stdcall;
function GetUnReadSMSCount(pszUserName: PAnsiChar): Integer; stdcall;
function QueryUserState(pszUserName: PAnsiChar): Integer; stdcall;
function SendIM(pszSender, pszRecver, pszMsg: PAnsiChar): Integer; stdcall; 
function NotifyUser(pszUserName: PAnsiChar; lType: Cardinal; varMsgId, pszMsg: PAnsiChar; lAssType: Cardinal; pszTitle: PChar): Integer; stdcall;
//////////////
function RTXSendSMSA(pszSender, pszRecver, pszSMS: PAnsiChar; bAutoCut: Boolean): Integer; stdcall;
function RTXGetSMSCountA(pszUserName: PAnsiChar): Integer; stdcall;
function RTXGetSMSA(pszUserName: PAnsiChar; bDel: Boolean; pBuf: PAnsiChar; cbBuf: Integer; pcbBuf: PAnsiChar): Integer; stdcall;
function RTXGetFuncSMSCount(nFuncNo: Integer): Integer; stdcall;
function RTXGetFuncSMSA(nFuncNo: Integer; bDel: Boolean; pBuf: PAnsiChar; cbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetUnReadSMSCountA(lpszUserName: PAnsiChar): Integer; stdcall;
function RTXQueryUserStateA(lpszUserName: PAnsiChar; var pState: Integer): Integer; stdcall;
function RTXSendIMA(lpszSender, lpszRecver, lpszMsg: PAnsiChar): Integer; stdcall;
function RTXNotifyUserA(pszUserName: PAnsiChar; iType: Integer; lpszMsgId, pszMsg: PAnsiChar; iAssType: Integer; pszTitle: PChar): Integer; stdcall;
function RTXGetUserFaceA(pszUserName: PAnsiChar; pFace: Integer): Integer;

function RTXSendSMS(pszSender, pszRecver, pszSMS: PWideChar; bAutoCut: Boolean): Integer; stdcall;
function RTXSendSMSW(pszSender, pszRecver, pszSMS: PWideChar; bAutoCut: Boolean): Integer; stdcall;
function RTXGetSMSCount(pszUserName: PWideChar): Integer; stdcall;
function RTXGetSMSCountW(pszUserName: PWideChar): Integer; stdcall;
function RTXGetSMSW(pszUserName: PWideChar; bDel: Boolean; pBuf: PWideChar; cbBuf: Integer; pcbBuf: PWideChar): Integer; stdcall;
function RTXGetSMS(pszUserName: PWideChar; bDel: Boolean; pBuf: PWideChar; cbBuf: Integer; pcbBuf: PWideChar): Integer; stdcall;
function RTXGetFuncSMS(nFuncNo: Integer; bDel: Boolean; pBuf: PWideChar; cbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetFuncSMSW(nFuncNo: Integer; bDel: Boolean; pBuf: PWideChar; cbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetUnReadSMSCount(lpszUserName: PWideChar): Integer; stdcall;
function RTXGetUnReadSMSCountW(lpszUserName: PWideChar): Integer; stdcall;
function RTXQueryUserState(lpszUserName: PWideChar; var pState: Integer): Integer; stdcall;
function RTXQueryUserStateW(lpszUserName: PWideChar; var pState: Integer): Integer; stdcall;
function RTXSendIM(lpszSender, lpszRecver, lpszMsg: PWideChar): Integer; stdcall;
function RTXSendIMW(lpszSender, lpszRecver, lpszMsg: PWideChar): Integer; stdcall;
function RTXNotifyUser(pszUserName: PWideChar; iType: Integer; lpszMsgId, pszMsg: PWideChar; iAssType: Integer; pszTitle: PChar): Integer; stdcall;
function RTXNotifyUserW(pszUserName: PWideChar; iType: Integer; lpszMsgId, pszMsg: PWideChar; iAssType: Integer; pszTitle: PChar): Integer; stdcall;
function RTXGetUserFace(pszUserName: PWideChar; pFace: Integer): Integer;
function RTXGetUserFaceW(pszUserName: PWideChar; pFace: Integer): Integer;
///////////////////////////////////////////////////////////////
function RTXGetErrorA(iErrorCode: Integer; pszBuf: PAnsiChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetVersionA(pszBuf: PAnsiChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetNewObjectA(lpszObjectName: PAnsiChar): Integer; stdcall;
function RTXGetObjectNameA(iObjectHandle: Integer; lpszName: PAnsiChar; cbName: Integer; var pcbName: Integer): Integer; stdcall;
function RTXSetObjectNameA(iObjectHandle: Integer; lpszObjectName: PAnsiChar): Integer; stdcall;
function RTXAddRefHandle(iHandle: Integer): Integer; stdcall;
function RTXReleaseHandle(iHandle: Integer): Integer; stdcall;
function RTXIsHandle(iHandle: Integer): Integer; stdcall;
function RTXAddProperty(iHandle: Integer; vName, vValue: VARIANT): Integer; stdcall;
function RTXClearProperty(iPropertyHandle, iIndex: Integer): Integer; stdcall;
function RTXRemoveProperty(iPropertyHandle: Integer; vName, vValue: VARIANT): Integer; stdcall;
function RTXGetProperty(iPropertyHandle: Integer; vName: VARIANT; out vValue: VARIANT): Integer; stdcall;
function RTXSetServerIPA(iObjectHandle: Integer; lpszServerIP: PAnsiChar): Integer; stdcall;
function RTXGetServerIPA(iObjectHandle: Integer; lpszServerIP: PAnsiChar; cbIP: Integer; var pcbIP: Integer): Integer; stdcall;
function RTXGetServerPort(iObjectHandle: Integer; var pResult: Integer): Integer; stdcall;
function RTXSetServerPort(iObjectHandle: Integer; iPort: Integer): Integer; stdcall;
function RTXSetServerIP(iObjectHandle: Integer; lpwszServerIP: PWideChar): Integer; stdcall;
function RTXSetServerIPW(iObjectHandle: Integer; lpwszServerIP: PWideChar): Integer; stdcall;
function RTXGetServerIP(iObjectHandle: Integer; lpwszServerIP: PWideChar; cbIP: Integer; var pcbIP: Integer): Integer; stdcall;
function RTXGetServerIPW(iObjectHandle: Integer; lpwszServerIP: PWideChar; cbIP: Integer; var pcbIP: Integer): Integer; stdcall;
function RTXGetPropertysCount(iHandle: Integer; var pResult: Integer): Integer; stdcall;
function RTXGetPropertysItem(iHandle, lIndex: Integer; out pvName, pvName: VARIANT): Integer; stdcall;
function RTXCall(iObjectHandle, iPropertyHandle, iCmdID: Integer; var piResultType, piResult: Integer; out pvResult: VARIANT): Integer; stdcall;
function RTXGetError(iErrorCode: Integer; pwszBuf: PWideChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetErrorW(iErrorCode: Integer; pwszBuf: PWideChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetVersion(pszBuf: PWideChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetVersionW(pszBuf: PWideChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
function RTXGetNewObjectW(lpszObjectName: PWideChar): Integer; stdcall;
function RTXGetNewObjectW(lpszObjectName: PWideChar): Integer; stdcall;
function RTXGetObjectName(iObjectHandle: Integer; lpwszName: PWideChar; cbName: Integer; var pcbName: Integer): Integer; stdcall;
function RTXGetObjectNameW(iObjectHandle: Integer; lpwszName: PWideChar; cbName: Integer; var pcbName: Integer): Integer; stdcall;
function RTXGetObjectName(iObjectHandle: Integer; lpwszName: PWideChar; cbName: Integer; var pcbName: Integer): Integer; stdcall;
function RTXGetObjectNameW(iObjectHandle: Integer; lpwszName: PWideChar; cbName: Integer; var pcbName: Integer): Integer; stdcall;
function RTXGetNewPropertys: Integer; stdcall;

//回调接口 
type 
  TRTXFireEvent = function(iPropertyHandle: Integer): Integer; stdcall;
 
function RTXSetCallBack(iObjectHandle: Integer; pEvent: TRTXFireEvent): Integer; stdcall;

type
  tagRTXSDKA_ = record
	//基本接口
	GetError: function(iErrorCode: Integer; pszBuf: PAnsiChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
	GetVersion: function(pszBuf: PAnsiChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
	GetNewObject: function(lpszObjectName: PAnsiChar): Integer; stdcall;
	GetObjectName: function(iObjectHandle: Integer; lpszName: PAnsiChar; cbName: Integer; var pcbName: Integer): Integer; stdcall;
	SetObjectName: function(iObjectHandle: Integer; lpszObjectName: PAnsiChar): Integer; stdcall;
	GetNewPropertys: function: Integer; stdcall;
	IsHandle: function(iHandle: Integer): Integer; stdcall;
	AddRefHandle: function(iHandle: Integer): Integer; stdcall;
	ReleaseHandle: function(iHandle: Integer): Integer; stdcall;
	AddProperty: function(iHandle: Integer; vName, vValue: VARIANT): Integer; stdcall;
	ClearProperty: function(iPropertyHandle, iIndex: Integer): Integer; stdcall;
	RemoveProperty: function(iPropertyHandle: Integer; vName: VARIANT): Integer; stdcall;
    GetProperty: function(iPropertyHandle: Integer; vName: VARIANT; out vValue: VARIANT): Integer; stdcall;
	SetServerIP: function(iObjectHandle: Integer; lpszServerIP: PAnsiChar): Integer; stdcall;
	GetServerIP: function(iObjectHandle: Integer; lpszServerIP: PAnsiChar; cbIP: Integer; var pcbIP: Integer): Integer; stdcall;
	GetServerPort: function(iObjectHandle: Integer; var pResult: Integer): Integer; stdcall;
    SetServerPort: function(iObjectHandle, iPort: Integer): Integer; stdcall;
	GetPropertysCount: function(iHandle: Integer; var piResult: Integer): Integer; stdcall;
	GetPropertysItem: function(iHandle, iIndex: Integer; out pvValue, pvName: VARIANT): Integer; stdcall;
	Call: function(iObjectHandle, iPropertyHandle, iCmdID: Integer; var piResultType, piResult: Integer; out pvResult: VARIANT): Integer; stdcall;
    SetCallBack: function(iObjectHandle: Integer; pEvent: TRTXFireEvent): Integer; stdcall;

	//便捷接口
	SendSMS: function(lpszSender, lpszRecver, lpszSMS: PAnsiChar; bAutoCut: Boolean): Integer; stdcall;
	GetSMSCount: function(lpszUserName: PAnsiChar): Integer; stdcall;
	GetSMS: function(lpszUserName: PAnsiChar; bDel: Boolean; pBuf: PAnsiChar; cbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
	GetFuncSMS: function(nFuncNo: Integer; bDel: Boolean; pBuf: PAnsiChar; cbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
	GetUnReadSMSCount: function(lpszUserName: PAnsiChar): Integer; stdcall;
	QueryUserState: function(lpszUserName: PAnsiChar; var pState: Integer): Integer; stdcall;
	SendIM: function(lpszSender, lpszRecver, lpszMsg: PAnsiChar): Integer; stdcall;
	NotifyUser: function(lpszUserName: PAnsiChar; iType: Integer; lpszMsgId, lpszMsg: PAnsiChar; iAssType: Integer; lpszTitle: PAnsiChar): Integer; stdcall;
	GetUserFace: function(lpszUserName: PAnsiChar; var pFace: Integer): Integer; stdcall;
  end;
  tagRTXSDKA = tagRTXSDKA_;
　TRTXSDKA = tagRTXSDKA;　
  PRTXSDKA = ^TRTXSDKA;

  tagRTXSDKW_ = record
	//基本接口
	GetError: function(iErrorCode: Integer; pszBuf: PWideChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
	GetVersion: function(pszBuf: PWideChar; lcbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
	GetNewObject: function(lpszObjectName: PWideChar): Integer; stdcall;
	GetObjectName: function(iObjectHandle: Integer; lpszName: PWideChar; cbName: Integer; var pcbName: Integer): Integer; stdcall;
	SetObjectName: function(iObjectHandle: Integer; lpszObjectName: PWideChar): Integer; stdcall;
	GetNewPropertys: function: Integer; stdcall;
	IsHandle: function(iHandle: Integer): Integer; stdcall;
	AddRefHandle: function(iHandle: Integer): Integer; stdcall;
	ReleaseHandle: function(iHandle: Integer): Integer; stdcall;
	AddProperty: function(iHandle: Integer; vName, vValue: VARIANT): Integer; stdcall;
	ClearProperty: function(iPropertyHandle, iIndex: Integer): Integer; stdcall;
	RemoveProperty: function(iPropertyHandle: Integer; vName: VARIANT): Integer; stdcall;
    GetProperty: function(iPropertyHandle: Integer; vName: VARIANT; out vValue: VARIANT): Integer; stdcall;
	SetServerIP: function(iObjectHandle: Integer; lpszServerIP: PWideChar): Integer; stdcall;
	GetServerIP: function(iObjectHandle: Integer; lpszServerIP: PWideChar; cbIP: Integer; var pcbIP: Integer): Integer; stdcall;
	GetServerPort: function(iObjectHandle: Integer; var pResult: Integer): Integer; stdcall;
    SetServerPort: function(iObjectHandle, iPort: Integer): Integer; stdcall;
	GetPropertysCount: function(iHandle: Integer; var piResult: Integer): Integer; stdcall;
	GetPropertysItem: function(iHandle, iIndex: Integer; out pvValue, pvName: VARIANT): Integer; stdcall;
	Call: function(iObjectHandle, iPropertyHandle, iCmdID: Integer; var piResultType, piResult: Integer; out pvResult: VARIANT): Integer; stdcall;
    SetCallBack: function(iObjectHandle: Integer; pEvent: TRTXFireEvent): Integer; stdcall;

	//便捷接口
	SendSMS: function(lpszSender, lpszRecver, lpszSMS: PWideChar; bAutoCut: Boolean): Integer; stdcall;
	GetSMSCount: function(lpszUserName: PWideChar): Integer; stdcall;
	GetSMS: function(lpszUserName: PWideChar; bDel: Boolean; pBuf: PWideChar; cbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
	GetFuncSMS: function(nFuncNo: Integer; bDel: Boolean; pBuf: PWideChar; cbBuf: Integer; var pcbBuf: Integer): Integer; stdcall;
	GetUnReadSMSCount: function(lpszUserName: PWideChar): Integer; stdcall;
	QueryUserState: function(lpszUserName: PWideChar; var pState: Integer): Integer; stdcall;
	SendIM: function(lpszSender, lpszRecver, lpszMsg: PWideChar): Integer; stdcall;
	NotifyUser: function(lpszUserName: PWideChar; iType: Integer; lpszMsgId, lpszMsg: PWideChar; iAssType: Integer; lpszTitle: PWideChar): Integer; stdcall;
	GetUserFace: function(lpszUserName: PWideChar; var pFace: Integer): Integer; stdcall;
  end;
  tagRTXSDKW = tagRTXSDKW_;
　TRTXSDKW = tagRTXSDKW;
  PRTXSDKW = ^TRTXSDKW;　

type
  TRTXGetSDK = function: TRTXSDK;
  //typedef tagRTXSDK* (*pRTXGetSDK)();

function RTXGetSDKA: PRTXSDKA; stdcall;
function RTXGetSDKW: PRTXSDKW; stdcall;
  
//function RTXSDKCallA(const char* pszFormat, ...): ;
//function RTXSDKCallW(const wchar_t* pwszpFormat, ...);

implementation

const
  sdkapic = 'SDKAPIC.dll';
  
  
function SendSMS; external sdkapic name 'SendSMS';
function GetSMSCount; external sdkapic name 'GetSMSCount';
function GetSMS; external sdkapic name 'GetSMS';
function GetFuncSMSCount; external sdkapic name 'GetFuncSMSCount';
function GetFuncSMS; external sdkapic name 'GetFuncSMS';
function GetUnReadSMSCount; external sdkapic name 'GetUnReadSMSCount';
function QueryUserState; external sdkapic name 'QueryUserState';
function SendIM; external sdkapic name 'SendIM'; 
function NotifyUser; external sdkapic name 'NotifyUser';
//////////////
function RTXSendSMSA; external sdkapic name 'RTXSendSMSA';
function RTXGetSMSCountA; external sdkapic name 'RTXGetSMSCountA';
function RTXGetSMSA; external sdkapic name 'RTXGetSMSA';
function RTXGetFuncSMSCount; external sdkapic name 'RTXGetFuncSMSCount';
function RTXGetFuncSMSA; external sdkapic name 'RTXGetFuncSMSA';
function RTXGetUnReadSMSCountA; external sdkapic name 'RTXGetUnReadSMSCountA';
function RTXQueryUserStateA; external sdkapic name 'RTXQueryUserStateA';
function RTXSendIMA; external sdkapic name 'RTXSendIMA';
function RTXNotifyUserA; external sdkapic name 'RTXNotifyUserA';
function RTXGetUserFaceA; external sdkapic name 'RTXGetUserFaceA';
function RTXGetSMSCount; external sdkapic name 'RTXGetSMSCountW';
function RTXGetSMSCountW; external sdkapic name 'RTXGetSMSCountW';
function RTXGetSMS; external sdkapic name 'RTXGetSMSW';
function RTXGetSMSW; external sdkapic name 'RTXGetSMSW';
function RTXGetFuncSMS; external sdkapic name 'RTXGetFuncSMSW';
function RTXGetFuncSMSW; external sdkapic name 'RTXGetFuncSMSW';
function RTXGetUnReadSMSCount; external sdkapic name 'RTXGetUnReadSMSCountW';
function RTXGetUnReadSMSCountW; external sdkapic name 'RTXGetUnReadSMSCountW';
function RTXQueryUserState; external sdkapic name 'RTXQueryUserStateW';
function RTXQueryUserStateW; external sdkapic name 'RTXQueryUserStateW';
function RTXSendIM; external sdkapic name 'RTXSendIMW';
function RTXSendIMW; external sdkapic name 'RTXSendIMW';
function RTXNotifyUser; external sdkapic name 'RTXNotifyUserW';
function RTXNotifyUserW; external sdkapic name 'RTXNotifyUserW';
function RTXGetUserFace; external sdkapic name 'RTXGetUserFaceW';
function RTXGetUserFaceW; external sdkapic name 'RTXGetUserFaceW';
function RTXGetVersionA; external sdkapic name 'RTXGetVersionA';
function RTXGetNewObjectA; external sdkapic name 'RTXGetNewObjectA';
function RTXGetObjectNameA; external sdkapic name 'RTXGetObjectNameA';
function RTXSetObjectNameA; external sdkapic name 'RTXSetObjectNameA';
function RTXAddRefHandle; external sdkapic name 'RTXAddRefHandle';
function RTXReleaseHandle; external sdkapic name 'RTXReleaseHandle';
function RTXIsHandle; external sdkapic name 'RTXIsHandle';
function RTXAddProperty; external sdkapic name 'RTXAddProperty';
function RTXClearProperty; external sdkapic name 'RTXClearProperty';
function RTXRemoveProperty; external sdkapic name 'RTXRemoveProperty';
function RTXGetProperty; external sdkapic name 'RTXGetProperty';
function RTXSetServerIPA; external sdkapic name 'RTXSetServerIPA';
function RTXGetServerIPA; external sdkapic name 'RTXGetServerIPA';
function RTXGetServerPort; external sdkapic name 'RTXGetServerPort';
function RTXSetServerPort; external sdkapic name 'RTXSetServerPort';
function RTXSetServerIP; external sdkapic name 'RTXSetServerIPW';
function RTXSetServerIPW; external sdkapic name 'RTXSetServerIPW';
function RTXGetServerIP; external sdkapic name 'RTXGetServerIPW';
function RTXGetServerIPW; external sdkapic name 'RTXGetServerIPW';
function RTXGetPropertysCount; external sdkapic name 'RTXGetPropertysCount';
function RTXGetPropertysItem; external sdkapic name 'RTXGetPropertysItem';
function RTXCall; external sdkapic name 'RTXCall';
function RTXGetError; external sdkapic name 'RTXGetErrorW';
function RTXGetErrorW; external sdkapic name 'RTXGetErrorW';
function RTXGetVersion; external sdkapic name 'RTXGetVersionW';
function RTXGetVersionW; external sdkapic name 'RTXGetVersionW';
function RTXGetNewObject; external sdkapic name 'RTXGetNewObjectW';
function RTXGetNewObjectW; external sdkapic name 'RTXGetNewObjectW';
function RTXGetObjectName; external sdkapic name 'RTXGetObjectNameW';
function RTXGetObjectNameW; external sdkapic name 'RTXGetObjectNameW';
function RTXSetObjectName; external sdkapic name 'RTXSetObjectNameW';
function RTXSetObjectNameW; external sdkapic name 'RTXSetObjectNameW';
function RTXGetNewPropertys; external sdkapic name 'RTXGetNewPropertys';
function RTXSetCallBack; external sdkapic name 'RTXSetCallBack';  

function RTXGetSDKA: PRTXSDKA; external sdkapic name 'RTXGetSDKA';
function RTXGetSDKW: PRTXSDKW; external sdkapic name 'RTXGetSDKW';

end.