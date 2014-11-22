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
//       本代码为RTXCMakeTemplate自动生成
//
//***************************************************************************
unit RTXC.Plugin;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows,
  ComObj,
  Comserv,
  Variants,
  SysUtils,
  RTXCMenuDemoPluginLib_TLB,
  RTXCAPILib_TLB,
  CLIENTOBJECTSLib_TLB,
  RTXCModulEinterfaceLib_TLB,
  RTXC.Event,
  StdVcl;

type
  TRTXCMenuDemoPlugin = class sealed(TAutoObject, IRTXCModule, IRTXCPlugin)
  private
    FRTXRoot: IRTXCRoot;
    FRTXModuleSite: IRTXCModuleSite;
    FClientObjectsModule: IClientObjectsModule;

    FMenuSink: TRTXCUICommand;

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

    // 菜单相关的两个事件
    procedure MenuOnInvoke(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant);
    // MenuOnQueryState函数中Text的参数一定要是var, 自动生成的接口文件中为out,这样会直接
    // 造成菜单添加后不会显示文字, 源于out与var关键字的区别
    procedure MenuOnQueryState(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant;
      var Text: WideString; var State: RTXC_UI_ITEM_STATE);
  public
    property RTXRoot: IRTXCRoot read FRTXRoot;
    property RTXModuleSite: IRTXCModuleSite read FRTXModuleSite;
    property ClientObjectsModule: IClientObjectsModule read FClientObjectsModule;
  end;


implementation

uses
  RTXC.Consts;

const
  MENU_INDEX1 = 111;

{ TRTXCMenuDemoPlugin }

function TRTXCMenuDemoPlugin.Get_Identifier: WideString;
begin
  Result := getClassNoT;
end;

function TRTXCMenuDemoPlugin.Get_Info(Field: RTXC_PLUGIN_INFO_FIELD): WideString;
begin
  Result := '一个使用Delphi开发的RTX插件Demo';
end;

function TRTXCMenuDemoPlugin.Get_ModuleSite: IDispatch;
begin
  Result := FRTXModuleSite;
end;

function TRTXCMenuDemoPlugin.Get_Name: WideString;
begin
  Result := 'Delphi菜单插件Demo';
end;

procedure TRTXCMenuDemoPlugin.MenuOnInvoke(UIType: RTXC_UI_TYPE; Id: Integer;
  Parameter: OleVariant);
begin
  case Id of
    MENU_INDEX1 :
      begin
        MessageBox(0, '消息了', '消息', MB_OK);
        // 添加的菜单调用事件
      end;
  end;
end;

procedure TRTXCMenuDemoPlugin.MenuOnQueryState(UIType: RTXC_UI_TYPE;
  Id: Integer; Parameter: OleVariant; var Text: WideString;
  var State: RTXC_UI_ITEM_STATE);
begin
  case  Id of
    MENU_INDEX1 :
      begin

        // 菜单的状态
      end;
  end;
end;

procedure TRTXCMenuDemoPlugin.OnAccountChange;
begin

end;

function TRTXCMenuDemoPlugin.OnInvoke(Receiver, Parameter,
  Extra: OleVariant): OleVariant;
begin
  Result := null;;
end;

procedure TRTXCMenuDemoPlugin.OnLoad(const RTXCModuleSite: IDispatch);
var
  LMenu: IRTXCMenu;
begin
  FMenuSink := TRTXCUICommand.Create;
  FMenuSink.OnInvoke_ := MenuOnInvoke;
  FMenuSink.OnQueryState_ := MenuOnQueryState;

  if RTXCModuleSite = nil then
  begin
    FRTXRoot := nil;
    FRTXModuleSite := nil;
    Exit;
  end;
  FRTXModuleSite := RTXCModuleSite as IRTXCModuleSite;
  FRTXRoot := FRTXModuleSite.RTXCRoot;
  FClientObjectsModule := GetClientObjsModule;

  LMenu := GetModuleObject<IRTXCMenu>(RTX_CLIENT_OBJECTS_IDENTIFIER_MENU);
  LMenu.AddItem(False, -1, RTXC_UI_TYPE_MYCONTACTS_USERDEFINEDGROUP_USER, MENU_INDEX1,
    FMenuSink, 'Delphi菜单常用联系人', '', RTXC_MENU_ITEM_SEPARATOR_ABOVE_AND_BELOW, 6, False);
end;

procedure TRTXCMenuDemoPlugin.OnUnload(Reason: RTXC_MODULE_UNLOAD_REASON);
var
  LMenu: IRTXCMenu;
begin
  LMenu := GetModuleObject<IRTXCMenu>(RTX_CLIENT_OBJECTS_IDENTIFIER_MENU);
  LMenu.DelItem(RTXC_UI_TYPE_MYCONTACTS_USERDEFINEDGROUP_USER, MENU_INDEX1, FMenuSink);
  FMenuSink.Free;
end;

function TRTXCMenuDemoPlugin.getClassNoT: string;
begin
  Result := ToString;
  Delete(Result, 1, 1);
end;

function TRTXCMenuDemoPlugin.GetModuleObject<T>(const Identifier: string): T;
type
  PT = ^T;
var
  Obj: Cardinal;
begin
  Obj := Cardinal(Pointer(FClientObjectsModule.Object_[Identifier]));
  Result := PT(@Obj)^;
end;

function TRTXCMenuDemoPlugin.GetClientObjsModule: IClientObjectsModule;
begin
  Result := FRTXRoot.Module[RTX_MODULE_IDENTIFIER_CLIENT_OBJS] as IClientObjectsModule;
end;

procedure TRTXCMenuDemoPlugin.SendMessage(const Receiver, ATitle, AMsg: string);
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
  TAutoObjectFactory.Create(ComServer, TRTXCMenuDemoPlugin, CLASS_RTXCMenuDemoPlugin,
    ciMultiInstance, tmApartment);

end.
