unit RTX_ProjectManager;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows,
  SysUtils,
  ComObj,
  ComServ,
  Variants,
  RTXCPluginLib_TLB,
  ActionLib_TLB,
  RTXCModulEinterfaceLib_TLB,
  RTXCAPILib_TLB,
  RTXC.ClientObjectsEventSink,
  RTXC.EventSink,
  //RTXC.Event,
  RTXC.Plugin, uFrmManagerView;


type
  TRTXCProjectManager = class(TRTXCPlugin)
  private
    FActionMgr: IActionMgr;
    FActionEvent: TActionMgrEventsSink;
    FRootEvent: TRTXCRootEventsSink;
    FModuleSiteEvent: TRTXCModuleSiteEventsSink;
  protected
    procedure OnPluginLoad(const RTXCModuleSite: IDispatch); override;
    procedure OnPluginUnload(Reason: RTXC_MODULE_UNLOAD_REASON); override;
    function GetPluginDescription(Field: RTXC_PLUGIN_INFO_FIELD): WideString; override;
    function GetPluginName: WideString; override;
  public
    procedure DoOnActionDel(const bstrGroup: WideString; varID: OleVariant; varExtraInfo: OleVariant);
    procedure DoOnActionInvoked(const bstrGroup: WideString; varID: OleVariant; varExtraInfo: OleVariant);

    procedure DoOnLoginResult(Result: RTXC_LOGIN_RESULT);
    procedure DoOnDataReceived(const Key: WideString);
    procedure DoOnViewData(const Key: WideString);
    procedure DoOnSendDataResult(Result: RTXC_MODULE_SEND_DATA_RESULT; Extra: OleVariant);
  end;

implementation

uses
//  RTXCModulEinterfaceLib_TLB,
  RTXC.Consts,
  RTX.Common,
  ClientObjectsLib_TLB
  , ufrmMsgTips;


procedure ShowMessage(const Msg: string);
begin
  MessageBox(GetActiveWindow, PChar(Msg), '消息', 0);
end;

procedure TRTXCProjectManager.DoOnActionDel(const bstrGroup: WideString; varID,
  varExtraInfo: OleVariant);
begin
  if bstrGroup = ACTION_GROUP_NAME_MAINTOOLBAR_AREA then
  begin
    if VarType(varID) = varInteger then
       case Integer(varId) of
         11 :
           begin
             if VarType(varExtraInfo) = varDispatch then
               IRTXCData(TVarData(VarAsType(varExtraInfo, varDispatch)).VDispatch)._Release;
           end;
       end;
  end;
end;

procedure TRTXCProjectManager.DoOnActionInvoked(const bstrGroup: WideString;
  varID, varExtraInfo: OleVariant);
var
  LData: IRTXCData;
begin
  if bstrGroup = ACTION_GROUP_NAME_MAINTOOLBAR_AREA then
  begin
    if VarType(varID) = varInteger then
       case Integer(varId) of
         11 :
           begin
              ShowMessage('主窗口图标点击测试');

              LData := Self.RTXRoot.CreateRTXCData;
              LData.SetString(RDK_MAINTOOLBARBTN_ITEM_ICON_PATH, ExtractFilePath(GetModuleName(Hinstance)) + 'love.ico');
              LData.SetString(RDK_MAINTOOLBARBTN_ITEM_CAPTION, '(0)');
              LData.SetString(RDK_MAINTOOLBARBTN_ITEM_TOOLTIP, '0个未回复帖');
              LData.SetString(RDK_MAINTOOLBARBTN_ITEM_DISABLE, 'false');
              LData.SetLong(RDK_MAINTOOLBARBTN_ITEM_WIDTH, 40);
              FActionMgr.SetActionExtraInfo(ACTION_GROUP_NAME_MAINTOOLBAR_AREA, 11, LData);
           end;
       end;
  end
  else if bstrGroup = ACTION_GROUP_NAME_STATUSBAR_AREA then
  begin
    if VarType(varID) = varInteger then
       case Integer(varId) of
         12 :
           begin
             if not frm_ManagerView.Visible then
                frm_ManagerView.Show;
           end;
       end;
  end;
end;

procedure TRTXCProjectManager.DoOnDataReceived(const Key: WideString);
var
  LData: IRTXCData;
  LBuddyMgr: IRTXCRTXBuddyManager;
  LBuddy: IRTXCRTXBuddy;
begin
  try
    LData := RTXModuleSite.GetData(Key, True);
  except
    Exit;
  end;
  if LData <> nil then
  begin
    LBuddyMgr := Self.RTXRoot.RTXBuddyManager;
    LBuddy := LBuddyMgr.Buddy[LData.GetString(RDK_SENDER)];
    ShowTipsMessage(LData.GetString(RDK_TITLE), LData.GetString(RDK_SENDER), LData.GetString(RDK_MSG_CONTENT));
   // ShowMessage(Format('消息来自：%s  UID=%d,  Msg=%s', [LData.GetString(RDK_SENDER), LBuddy.UIN, LData.GetString(RDK_MSG_CONTENT)]));
  end;
end;

procedure TRTXCProjectManager.DoOnLoginResult(Result: RTXC_LOGIN_RESULT);
begin
   TGuid.NewGuid.ToString
end;

procedure TRTXCProjectManager.DoOnSendDataResult(
  Result: RTXC_MODULE_SEND_DATA_RESULT; Extra: OleVariant);
begin

end;

procedure TRTXCProjectManager.DoOnViewData(const Key: WideString);
//var
//  LData: IRTXCData;
//  LBuddyMgr: IRTXCRTXBuddyManager;
//  LBuddy: IRTXCRTXBuddy;
begin
//  try
//    LData := RTXModuleSite.GetData(Key, True);
//  except
//    Exit;
//  end;
//  if LData <> nil then
//  begin
//    LBuddyMgr := Self.RTXRoot.RTXBuddyManager;
//    LBuddy := LBuddyMgr.Buddy[LData.GetString(RDK_SENDER)];
//    ShowMessage(Format('消息来自：%s  UID=%d,  Msg=%s', [LData.GetString(RDK_SENDER), LBuddy.UIN, LData.GetString(RDK_MSG_CONTENT)]));
//  end;
end;

function TRTXCProjectManager.GetPluginDescription(
  Field: RTXC_PLUGIN_INFO_FIELD): WideString;
begin
  Result := '这是一个项目管理器';
end;

function TRTXCProjectManager.GetPluginName: WideString;
begin
  Result := '项目管理器';
end;

procedure TRTXCProjectManager.OnPluginLoad(const RTXCModuleSite: IDispatch);
var
  LData: IRTXCData;
begin
  inherited;
  try
    // create form
    frm_ManagerView := Tfrm_ManagerView.Create(nil);
    frm_ManagerView.Init(Self);

    frm_MsgTips := Tfrm_MsgTips.Create(nil);

    // Root Event
    FRootEvent := TRTXCRootEventsSink.Create(Self.RTXRoot);
    FRootEvent.OnLoginResult := DoOnLoginResult;

    // Module Site Event
    FModuleSiteEvent := TRTXCModuleSiteEventsSink.Create(RTXModuleSite);
    FModuleSiteEvent.OnDataReceived := DoOnDataReceived;
    FModuleSiteEvent.OnViewData := DoOnViewData;
    FModuleSiteEvent.OnSendDataResult := DoOnSendDataResult;

    //FActionMgr := ClientObjectsModule.Object_[RTX_CLIENT_OBJECTS_IDENTIFIER_ACTIONMGR] as IActionMgr;
    FActionMgr := GetModuleObject<IActionMgr>(RTX_CLIENT_OBJECTS_IDENTIFIER_ACTIONMGR);
    if FActionMgr <> nil then
    begin
      FActionEvent := TActionMgrEventsSink.Create(FActionMgr);
      FActionEvent.OnActionDel := DoOnActionDel;
      FActionEvent.OnActionInvoked := DoOnActionInvoked;

      // 添加一个图标到主窗口栏
      LData := Self.RTXRoot.CreateRTXCData;
      LData.SetString(RDK_MAINTOOLBARBTN_ITEM_ICON_PATH, ExtractFilePath(GetModuleName(Hinstance)) + 'love.ico');
      LData.SetString(RDK_MAINTOOLBARBTN_ITEM_CAPTION, '(11)');
      LData.SetString(RDK_MAINTOOLBARBTN_ITEM_TOOLTIP, '11个未回复帖');
      LData.SetString(RDK_MAINTOOLBARBTN_ITEM_DISABLE, 'false');
      LData.SetLong(RDK_MAINTOOLBARBTN_ITEM_WIDTH, 40);

      FActionMgr.AddAction(ACTION_GROUP_NAME_MAINTOOLBAR_AREA, 11, LData);


      // 添加一个图标按钮到状态栏
      LData := Self.RTXRoot.CreateRTXCData;
      LData.SetString(RDK_STATUSBAR_ITEM_ICON_PATH, ExtractFilePath(GetModuleName(Hinstance)) + 'love.ico');
      LData.SetString(RDK_STATUSBAR_ITEM_TOOLTIP, '打开窗口');//项目管理器');
      LData.SetString(RDK_STATUSBAR_ITEM_DISABLE, 'false');
      LData.SetString(RDK_STATUSBAR_ITEM_TYPE, RDK_STATUSBAR_ITEMTYPE_BUTTON);
      LData.SetLong(RDK_STATUSBAR_ITEM_WIDTH, 17);
      FActionMgr.AddAction(ACTION_GROUP_NAME_STATUSBAR_AREA, 12, LData);
    end;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TRTXCProjectManager.OnPluginUnload(Reason: RTXC_MODULE_UNLOAD_REASON);
begin
  if FActionEvent <> nil then
    FActionEvent.Free;

  if FRootEvent <> nil then
    FRootEvent.Free;

  if FModuleSiteEvent <> nil then
    FModuleSiteEvent.Free;

  if frm_MsgTips <> nil then
    frm_MsgTips.Free;

  if frm_ManagerView <> nil then
    frm_ManagerView.Free;
  inherited;
end;




initialization
  TAutoObjectFactory.Create(ComServer, TRTXCProjectManager, CLASS_RTXCPluginX,
    ciMultiInstance, tmApartment);
end.
