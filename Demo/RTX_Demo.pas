unit RTX_Demo;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Winapi.windows,
  SysUtils,
  ComObj,
  ActiveX,

  StdVcl,

  Variants,
  Classes,

  RTXCPluginLib_TLB,

  RTXCAPILib_TLB,
  ClientObjectsLib_TLB,
  RTXCModulEinterfaceLib_TLB,

  RTXC.IMEventSink,
  RTXC.EventSink,
  RTXC.ClientObjectsEventSink,
  RTXC.Consts,
  RTXC.Plugin,
  RTXC.Event;

type
  TRTXCDelphiPluginDemo = class(TRTXCPlugin)
  private
    FMenuSink: TRTXCUICommand;
    FPluginSink: TRTXPluginHandler;
    FRootSink: TRTXCRootEventsSink;
    FEventSinkExtraInfoShow: TRTXCExtraInfoShowEventsSink;
    FlCookie: Integer;
    FEventSink: TRTXCModuleSiteEventsSink;
    FRTXCExtraInfoShow: IRTXCExtraInfoShow;
  protected
    procedure OnLoad_(const RTXCModuleSite: IDispatch); override;
    procedure OnUnload_(Reason: RTXC_MODULE_UNLOAD_REASON); override;
  public
    function GetSelUserName(Parameter: OleVariant): string;

    procedure OnModuleSiteViewData(const Key: WideString);

    procedure DoPluginSinkEvent(const id: WideString; const pData: IDispatch; out pRet: OleVariant; var Ret: HResult);

    procedure DoMenuSinkInvoke(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant);
    procedure DoMenuSinkQueryState(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant; var Text: WideString; var State: RTXC_UI_ITEM_STATE);

    procedure DoOnExtraInfoShowActived(const Account: WideString; varType: OleVariant; varExtra: OleVariant);
    procedure DoOnInvoked(const Account: WideString; varType: OleVariant; varExtra: OleVariant);
  end;

implementation

uses ComServ, RTX.Common;

const
  MENU_INDEX1 = 1;
  MENU_INDEX2 = 2;

  RDK_MSG_CONTENT = 'Msg_Content';

procedure TRTXCDelphiPluginDemo.DoMenuSinkInvoke(UIType: RTXC_UI_TYPE;
  Id: Integer; Parameter: OleVariant);
var
  LData: IRTXCData;
begin
  try
    case id of
      MENU_INDEX1 :
        begin
//          LData := RTXRoot_.CreateRTXCData;
//          LData.SetString(RDK_KEY, TGuid.NewGuid.ToString);
//          LData.SetString(RDK_TITLE, 'Delphi Plugin Send Test.');
//          LData.SetString(RDK_MSG_CONTENT, '这是一段字符串');
//
//          RTXModuleSite_.SendData('test', LData, RTXC_SEND_DATA_FLAG_FILTERING_IS_FORBIDDEN);

          //  MessageBox(0, PChar(Format('Delphi RTX 组织架构=%s', [FRTXRoot.Account])), '', 0);
          //FRTXRoot.RTXCEventCenter.FireEvent('RTXDelphiEvent', nil);
        end;
      MENU_INDEX2 :
        begin
          MessageBox(0, PChar(GetSelUserName(Parameter)), '', 0);
        end;
    end;
  except
    on E: Exception do
      MessageBox(0, PChar(E.Message), '', 0);
  end;
end;

procedure TRTXCDelphiPluginDemo.DoMenuSinkQueryState(UIType: RTXC_UI_TYPE;
  Id: Integer; Parameter: OleVariant; var Text: WideString;
  var State: RTXC_UI_ITEM_STATE);
begin
  case Id of
    MENU_INDEX1 :
      begin
         //if FRTXCPlugin.RTXRootPtr.Presence.RTXPresence[ TRTXCDelphiPluginDemo(FRTXCPlugin).GetSelUserName(Parameter)] = RTX_PRESENCE_OFFLINE then
         State := RTXC_UI_ITEM_STATE_NORMAL;
      end;
    MENU_INDEX2 :
      begin
         if RTXRoot_.MyPresence = RTX_PRESENCE_OFFLINE then
           State := RTXC_UI_ITEM_STATE_DISABLED;
      end;
  end;
end;

procedure TRTXCDelphiPluginDemo.DoOnExtraInfoShowActived(
  const Account: WideString; varType, varExtra: OleVariant);
//var
//  varExtra, varType1: OleVariant;
begin
  try
    if FRTXCExtraInfoShow <> nil then
    begin

      if Variants.VarType(varType) = varInteger then
      begin
        FRTXCExtraInfoShow.SetExtraInfo(Account, EXTRAINFO_SHOW_TYPE_IM, 'Delphi信息');
      end;
    end;
  except
  end;
end;

procedure TRTXCDelphiPluginDemo.DoOnInvoked(const Account: WideString; varType,
  varExtra: OleVariant);
begin

end;

procedure TRTXCDelphiPluginDemo.DoPluginSinkEvent(const id: WideString;
  const pData: IDispatch; out pRet: OleVariant; var Ret: HResult);
begin
  if id = 'RTXDelphiEvent' then
  begin
    if pData <> nil then
      MessageBox(0, PChar((pData as IRTXCData).GetString('STR_PARAM1')), '模块事件', 0)
    else MessageBox(0, 'RTXDelphiEvent', '模块事件', 0);
  end;
end;

function TRTXCDelphiPluginDemo.GetSelUserName(Parameter: OleVariant): string;
var
  ptrReceivers: IRTXCDataCollection;
  pstrRtxData: IRTXCData;
begin
  Result := '';
  case VarType(Parameter) of
    VT_DISPATCH :
      begin

        ptrReceivers := IRTXCDataCollection(TVarData(VarAsType(Parameter, varDispatch)).VDispatch);
        if ptrReceivers.Count > 0 then
        begin
          pstrRtxData := ptrReceivers.Item[1];
          if pstrRtxData.GetLong(RDK_TYPE) = OBJECT_RTX_BUDDY then
            Result := pstrRtxData.GetString(RDK_VALUE);
        end;
      end;
    VT_BSTR :
      begin
        Result := VarToStr(Parameter);
      end;
  end;
end;

procedure TRTXCDelphiPluginDemo.OnLoad_(const RTXCModuleSite: IDispatch);
var
  ptrClientObject: IClientObjectsModule;
  ptrMenu: IRTXCMenu;
  ptrEventCtr: IRTXCEventCenter;
begin
  inherited;
  try
    FMenuSink := TRTXCUICommand.Create;

    FMenuSink.OnInvoke_ := DoMenuSinkInvoke;
    FMenuSink.OnQueryState_ := DoMenuSinkQueryState;

    FPluginSink := TRTXPluginHandler.Create;
    FPluginSink.OnEvent_ := DoPluginSinkEvent;

    FEventSink := TRTXCModuleSiteEventsSink.Create(RTXModuleSite_);
    FEventSink.OnViewData := OnModuleSiteViewData;

    //FRootSink := TRTXCRootEventsSink.Create(RTXRoot_);

    ptrClientObject := RTXRoot_.Module[RTX_MODULE_IDENTIFIER_CLIENT_OBJS] as IClientObjectsModule;
    ptrMenu := ptrClientObject.Object_[RTX_CLIENT_OBJECTS_IDENTIFIER_MENU] as IRTXCMenu;

    ptrMenu.AddItem(VARIANT_FALSE, -1, RTXC_UI_TYPE_MYCONTACTS_USERDEFINEDGROUP_USER, MENU_INDEX1,
        FMenuSink, 'Delphi菜单常用联系人', '', RTXC_MENU_ITEM_SEPARATOR_ABOVE_AND_BELOW, 6, VARIANT_FALSE);

    ptrMenu.AddItem(VARIANT_FALSE, -1, RTXC_UI_TYPE_ORG_STRUCT_USER, MENU_INDEX2,
        FMenuSink, 'Delphi菜单组织架构', '', RTXC_MENU_ITEM_SEPARATOR_ABOVE_AND_BELOW, 6, VARIANT_FALSE);

    ptrEventCtr := RTXRoot_.RTXCEventCenter;
    FlCookie := ptrEventCtr.AddEventSink('RTXDelphiEvent', FPluginSink, False);


    FRTXCExtraInfoShow := ptrClientObject.Object_[RTX_CLIENT_OBJECTS_IDENTIFIER_EXTRAINFO] as IRTXCExtraInfoShow;

    FEventSinkExtraInfoShow := TRTXCExtraInfoShowEventsSink.Create(FRTXCExtraInfoShow);
    FEventSinkExtraInfoShow.OnExtraInfoShowActived := DoOnExtraInfoShowActived;
    FEventSinkExtraInfoShow.OnInvoked := DoOnInvoked;

  except

    on E: Exception  do
      MessageBox(0, PChar(e.Message + '  '), 'error', 0);
  end;

end;

procedure TRTXCDelphiPluginDemo.OnModuleSiteViewData(const Key: WideString);
begin

end;

procedure TRTXCDelphiPluginDemo.OnUnload_(Reason: RTXC_MODULE_UNLOAD_REASON);
var
  ptrClientObject: IClientObjectsModule;
  ptrMenu: IRTXCMenu;
  ptrEventCtr: IRTXCEventCenter;
begin
  inherited;
  ptrClientObject := RTXRoot_.Module[RTX_MODULE_IDENTIFIER_CLIENT_OBJS] as IClientObjectsModule;
  ptrMenu := ptrClientObject.Get_Object_(RTX_CLIENT_OBJECTS_IDENTIFIER_MENU) as IRTXCMenu;
  ptrMenu.DelItem(RTXC_UI_TYPE_MYCONTACTS_USERDEFINEDGROUP_USER, MENU_INDEX1, FMenuSink);
  ptrMenu.DelItem(RTXC_UI_TYPE_MYCONTACTS_USERDEFINEDGROUP_USER, MENU_INDEX2, FMenuSink);
  if FlCookie <> 0 then
  begin
    ptrEventCtr := RTXRoot_.RTXCEventCenter;
    ptrEventCtr.RemoveEventSink('RTXDelphiEvent', FlCookie);
  end;
  FEventSinkExtraInfoShow.Free;
  FEventSink.Free;
  FPluginSink.Free;
  FMenuSink.Free;
end;




initialization
  TAutoObjectFactory.Create(ComServer, TRTXCDelphiPluginDemo, CLASS_RTXCPluginX,
    ciMultiInstance, tmApartment);
end.
