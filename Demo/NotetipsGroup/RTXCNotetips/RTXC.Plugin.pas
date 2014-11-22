//***************************************************************************
//
//       名称：RTXC.Plugin.pas
//       工具：RAD Studio XE6
//       日期：2014/11/8 15:11:21
//       作者：ying32
//       QQ  ：396506155
//       MSN ：ying_32@live.cn
//       E-mail：yuanfen3287@vip.qq.com
//       Website：http://www.ying32.com
//
//---------------------------------------------------------------------------
//
//       备注：RTX客户端插件类
//
//
//***************************************************************************
unit RTXC.Plugin;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj,
  Comserv,
  Variants,
  SysUtils,
  RTXCNotetipsPluginLib_TLB,
  RTXCAPILib_TLB,
  CLIENTOBJECTSLib_TLB,
  RTXCModulEinterfaceLib_TLB,
//  RTXC.ClientObjectsEventSink,
  RTXC.EventSink,
  RTXC.Event,
  StdVcl;

type
  TRTXCNotetipsPlugin = class sealed(TAutoObject, IRTXCModule, IRTXCPlugin)
  private
    FRTXRoot: IRTXCRoot;
    FRTXModuleSite: IRTXCModuleSite;
    FClientObjectsModule: IClientObjectsModule;

    FModuleSiteEvent: TRTXCModuleSiteEventsSink;
    function getClassNoT: string; inline;
    function GetClientObjsModule: IClientObjectsModule;
  protected
    /// <remarks>
    ///   接口部分实现
    /// </remarks>
    function  Get_Identifier: WideString; safecall;
    function  Get_ModuleSite: IDispatch; safecall;
    function  Get_Name: WideString; safecall;
    function  OnInvoke(Receiver, Parameter, Extra: OleVariant): OleVariant; safecall;
    procedure OnAccountChange; safecall;
    procedure OnLoad(const RTXCModuleSite: IDispatch); safecall;
    procedure OnUnload(Reason: RTXC_MODULE_UNLOAD_REASON); safecall;
    function  Get_Info(Field: RTXC_PLUGIN_INFO_FIELD): WideString; safecall;
  public
    function GetModuleObject<T>(const Identifier: string): T;
    procedure SendMessage(const Receiver, ATitle, AMsg: string);

    procedure DoOnDataReceived(const Key: WideString);
  public
    property RTXRoot: IRTXCRoot read FRTXRoot;
    property RTXModuleSite: IRTXCModuleSite read FRTXModuleSite;
    property ClientObjectsModule: IClientObjectsModule read FClientObjectsModule;
  end;


implementation

uses
  RTXC.Consts, ufrmTipsWindow;

{ TRTXCNotetipsPlugin }

function TRTXCNotetipsPlugin.Get_Identifier: WideString;
begin
  Result := getClassNoT;
end;

function TRTXCNotetipsPlugin.Get_Info(Field: RTXC_PLUGIN_INFO_FIELD): WideString;
begin
  Result := '事务提醒备忘录';
end;

function TRTXCNotetipsPlugin.Get_ModuleSite: IDispatch;
begin
  Result := FRTXModuleSite;
end;

function TRTXCNotetipsPlugin.Get_Name: WideString;
begin
  Result := '备忘录';
end;

procedure TRTXCNotetipsPlugin.OnAccountChange;
begin

end;

function TRTXCNotetipsPlugin.OnInvoke(Receiver, Parameter,
  Extra: OleVariant): OleVariant;
begin
  Result := null;;
end;

procedure TRTXCNotetipsPlugin.OnLoad(const RTXCModuleSite: IDispatch);
begin
  if RTXCModuleSite = nil then
  begin
    FRTXRoot := nil;
    FRTXModuleSite := nil;
    Exit;
  end;
  FRTXModuleSite := RTXCModuleSite as IRTXCModuleSite;
  FRTXRoot := FRTXModuleSite.RTXCRoot;
  FClientObjectsModule := GetClientObjsModule;

  // Module Site Event
  FModuleSiteEvent := TRTXCModuleSiteEventsSink.Create(RTXModuleSite);
  FModuleSiteEvent.OnDataReceived := DoOnDataReceived;
end;

procedure TRTXCNotetipsPlugin.OnUnload(Reason: RTXC_MODULE_UNLOAD_REASON); safecall;
begin
  if FModuleSiteEvent <> nil then
    FModuleSiteEvent.Free;
end;

procedure TRTXCNotetipsPlugin.DoOnDataReceived(const Key: WideString);
var
  LData: IRTXCData;
//  LBuddyMgr: IRTXCRTXBuddyManager;
//  LBuddy: IRTXCRTXBuddy;
begin
  try
    LData := RTXModuleSite.GetData(Key, True);
  except
    Exit;
  end;
  if LData <> nil then
  begin
//    LBuddyMgr := Self.RTXRoot.RTXBuddyManager;
    //LBuddy := LBuddyMgr.Buddy[LData.GetString(RDK_SENDER)];
    ShowTipsWindow(LData.GetString(RDK_SENDER), LData.GetString(RDK_TITLE), LData.GetString(RDK_MSG_CONTENT));
  end;
end;

function TRTXCNotetipsPlugin.getClassNoT: string;
begin
  Result := ToString;
  Delete(Result, 1, 1);
end;

function TRTXCNotetipsPlugin.GetModuleObject<T>(const Identifier: string): T;
type
  PT = ^T;
var
  Obj: Cardinal;
begin
  Obj := Cardinal(Pointer(FClientObjectsModule.Object_[RTX_CLIENT_OBJECTS_IDENTIFIER_ACTIONMGR]));
  Result := PT(@Obj)^;
end;

function TRTXCNotetipsPlugin.GetClientObjsModule: IClientObjectsModule;
begin
  Result := FRTXRoot.Module[RTX_MODULE_IDENTIFIER_CLIENT_OBJS] as IClientObjectsModule;
end;

procedure TRTXCNotetipsPlugin.SendMessage(const Receiver, ATitle, AMsg: string);
var
  LData: IRTXCData;
begin
  try
    LData := FRTXRoot.CreateRTXCData;
    LData.SetString(RDK_KEY, GUIDToString(TGuid.NewGuid));
    LData.SetString(RDK_TITLE, ATitle);
    LData.SetString(RDK_MSG_CONTENT, AMsg);
    RTXModuleSite.SendData(Receiver, LData, RTXC_SEND_DATA_FLAG_FILTERING_IS_FORBIDDEN);
  except
  end;
end;


initialization
  TAutoObjectFactory.Create(ComServer, TRTXCNotetipsPlugin, CLASS_RTXCNotetipsPlugin,
    ciMultiInstance, tmApartment);

end.
