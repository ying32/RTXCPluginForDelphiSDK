//***************************************************************************
//
//       名称：RTXC.Event.pas
//       工具：RAD Studio XE6
//       日期：2014/11/8 23:42:46
//       作者：ying32
//       QQ  ：396506155
//       MSN ：ying_32@live.cn
//       E-mail：yuanfen3287@vip.qq.com
//       Website：http://www.ying32.com
//
//---------------------------------------------------------------------------
//
//       备注： 原IRTXCUICommand接口函数为
//               function OnQueryState(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant; out Text: WideString): RTXC_UI_ITEM_STATE; safecall;
//              现更改为
//               function OnQueryState(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant; var Text: WideString): RTXC_UI_ITEM_STATE; safecall;
//              变更为 out Text: WideString 到 var Text: WideString 原于delphi中 out会初始化值, 这样直接导致菜单的AddItem添加失败,
//              以至使用菜单不能显示出文本, 而需要函数中再次设置
//
//***************************************************************************
unit RTXC.Event;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj,
  ActiveX,
  Classes,
  RTXCAPILib_TLB,
  ClientObjectsLib_TLB,
  RTXCModulEinterfaceLib_TLB;

type

  { TRTXCUICommand }

  TRTXCUICommand = class(TAutoIntfObject, IRTXCUICommand)
  public type
    TOnInvokeEvent = procedure(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant) of object;
    TOnQueryStateEvent = procedure(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant; var Text: WideString; var State: RTXC_UI_ITEM_STATE) of object;
  private
    FOnInvokeEvent: TOnInvokeEvent;
    FOnQueryStateEvent: TOnQueryStateEvent;
  protected
    procedure OnInvoke(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant); safecall;
    function OnQueryState(UIType: RTXC_UI_TYPE; Id: Integer; Parameter: OleVariant; var Text: WideString): RTXC_UI_ITEM_STATE; safecall;
  public
    constructor Create;
    property OnInvoke_: TOnInvokeEvent read FOnInvokeEvent write FOnInvokeEvent;
    property OnQueryState_: TOnQueryStateEvent read FOnQueryStateEvent write FOnQueryStateEvent;
  end;

  { TRTXPluginHandler }

  TRTXPluginHandler = class(TAutoIntfObject, IRTXPluginHandler)
  public type
    TOnEvent = procedure(const id: WideString; const pData: IDispatch; out pRet: OleVariant; var Ret: HRESULT) of object;
  private
    FOnEvent: TOnEvent;
  protected
    function OnEvent(const id: WideString; const pData: IDispatch; out pRet: OleVariant): HResult; stdcall;
  public
    constructor Create;
    property OnEvent_: TOnEvent read FOnEvent write FOnEvent;
  end;


  TInitCtrlEvent = procedure(Sender: TObject; ARtxRoot: IRTXCRoot) of object;

  TRTXPluginTab = class(TAutoIntfObject, IRTXPluginTab)
  protected
    function InitCtrl(const RtxRoot: IDispatch): HResult; stdcall;
  private
    FOnInitCtrl: TInitCtrlEvent;
  public
    constructor Create;
    property OnInitCtrl: TInitCtrlEvent read FOnInitCtrl write FOnInitCtrl;
  end;

  TRTXCPluginExtTabNotify = class(TAutoIntfObject, IRTXCPluginExtTabNotify)
  protected
    function EnterExtTab: HResult; stdcall;
    function LeaveExtTab: HResult; stdcall;
  private
    FOnEnterExtTab: TNotifyEvent;
    FOnLeaveExtTab: TNotifyEvent;
  public
    constructor Create;
    property OnEnterExtTab: TNotifyEvent read FOnEnterExtTab write FOnEnterExtTab;
    property OnLeaveExtTab: TNotifyEvent read FOnLeaveExtTab write FOnLeaveExtTab;
  end;


implementation

{ TRTXCUICommand }

uses
  RTX.Common;

constructor TRTXCUICommand.Create;
begin
  inherited Create(TypeLibOfUUID(LIBID_CLIENTOBJECTSLib), IID_IRTXCUICommand);
end;

procedure TRTXCUICommand.OnInvoke(UIType: RTXC_UI_TYPE; Id: Integer;
  Parameter: OleVariant);
begin
  if Assigned(FOnInvokeEvent) then
    FOnInvokeEvent(UIType, Id, Parameter);
end;

function TRTXCUICommand.OnQueryState(UIType: RTXC_UI_TYPE; Id: Integer;
  Parameter: OleVariant; var Text: WideString): RTXC_UI_ITEM_STATE;
begin
  Result := RTXC_UI_ITEM_STATE_NORMAL;
  if Assigned(FOnQueryStateEvent) then
    FOnQueryStateEvent(UIType, Id, Parameter, Text, Result);
end;




{ TRTXPluginHandler }

constructor TRTXPluginHandler.Create;
begin
  inherited Create(TypeLibOfUUID(LIBID_RTXCMODULEINTERFACELib), IID_IRTXPluginHandler);
end;

function TRTXPluginHandler.OnEvent(const id: WideString; const pData: IDispatch;
  out pRet: OleVariant): HResult;
begin
  Result := S_OK;
  if Assigned(FOnEvent) then
    FOnEvent(id, pData, pRet, Result)
end;



{ TRTXPluginTab }

constructor TRTXPluginTab.Create;
begin
  inherited Create(TypeLibOfUUID(LIBID_RTXCMODULEINTERFACELib), IID_IRTXPluginTab);
end;

function TRTXPluginTab.InitCtrl(const RtxRoot: IDispatch): HResult;
begin
  if Assigned(FOnInitCtrl) then
    FOnInitCtrl(Self, RtxRoot as IRTXCRoot);
  Result := S_OK;
end;

{ TRTXCPluginExtTabNotify }

constructor TRTXCPluginExtTabNotify.Create;
begin
  inherited Create(TypeLibOfUUID(LIBID_RTXCMODULEINTERFACELib), IID_IRTXCPluginExtTabNotify);
end;

function TRTXCPluginExtTabNotify.EnterExtTab: HResult;
begin
  if Assigned(FOnEnterExtTab) then
    FOnEnterExtTab(Self);
  Result := S_OK;
end;

function TRTXCPluginExtTabNotify.LeaveExtTab: HResult;
begin
  if Assigned(FOnLeaveExtTab) then
    FOnLeaveExtTab(Self);
  Result := S_OK;
end;

end.
