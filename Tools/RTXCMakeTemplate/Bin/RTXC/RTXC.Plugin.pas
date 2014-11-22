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
//       本代码为RTXCMakeTemplate自动生成 <%CURRENTDATETIME%>
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
  RTXC<%PROJECTNAME%>PluginLib_TLB,
  RTXCAPILib_TLB,
  CLIENTOBJECTSLib_TLB,
  RTXCModulEinterfaceLib_TLB,
  RTXC.Event,
  StdVcl;

type
  TRTXC<%PROJECTNAME%>Plugin = class sealed(TAutoObject, IRTXCModule, IRTXCPlugin)
  private
    FRTXRoot: IRTXCRoot;
    FRTXModuleSite: IRTXCModuleSite;
    FClientObjectsModule: IClientObjectsModule;
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
  public
    property RTXRoot: IRTXCRoot read FRTXRoot;
    property RTXModuleSite: IRTXCModuleSite read FRTXModuleSite;
    property ClientObjectsModule: IClientObjectsModule read FClientObjectsModule;
  end;


implementation

uses
  RTXC.Consts;

{ TRTXC<%PROJECTNAME%>Plugin }

function TRTXC<%PROJECTNAME%>Plugin.Get_Identifier: WideString;
begin
  Result := getClassNoT;
end;

function TRTXC<%PROJECTNAME%>Plugin.Get_Info(Field: RTXC_PLUGIN_INFO_FIELD): WideString;
begin
  Result := getClassNoT;
end;

function TRTXC<%PROJECTNAME%>Plugin.Get_ModuleSite: IDispatch;
begin
  Result := FRTXModuleSite;
end;

function TRTXC<%PROJECTNAME%>Plugin.Get_Name: WideString;
begin
  Result := getClassNoT;
end;

procedure TRTXC<%PROJECTNAME%>Plugin.OnAccountChange;
begin

end;

function TRTXC<%PROJECTNAME%>Plugin.OnInvoke(Receiver, Parameter,
  Extra: OleVariant): OleVariant;
begin
  Result := null;;
end;

procedure TRTXC<%PROJECTNAME%>Plugin.OnLoad(const RTXCModuleSite: IDispatch);
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
end;

procedure TRTXC<%PROJECTNAME%>Plugin.OnUnload(Reason: RTXC_MODULE_UNLOAD_REASON); 
begin

end;

function TRTXC<%PROJECTNAME%>Plugin.getClassNoT: string;
begin
  Result := ToString;
  Delete(Result, 1, 1);
end;

function TRTXC<%PROJECTNAME%>Plugin.GetModuleObject<T>(const Identifier: string): T;
type
  PT = ^T;
var
  Obj: Cardinal;
begin
  Obj := Cardinal(Pointer(FClientObjectsModule.Object_[Identifier]));
  Result := PT(@Obj)^;
end;

function TRTXC<%PROJECTNAME%>Plugin.GetClientObjsModule: IClientObjectsModule;
begin
  Result := FRTXRoot.Module[RTX_MODULE_IDENTIFIER_CLIENT_OBJS] as IClientObjectsModule;
end;

procedure TRTXC<%PROJECTNAME%>Plugin.SendMessage(const Receiver, ATitle, AMsg: string);
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
  TAutoObjectFactory.Create(ComServer, TRTXC<%PROJECTNAME%>Plugin, CLASS_RTXC<%PROJECTNAME%>Plugin,
    ciMultiInstance, tmApartment);

end.
