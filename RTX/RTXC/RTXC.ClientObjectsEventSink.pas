//***************************************************************************
//
//       名称：RTXC.ClientObjectsEventSink.pas
//       工具：RAD Studio XE6
//       日期：2014/11/8 15:11:56
//       作者：ying32
//       QQ  ：396506155
//       MSN ：ying_32@live.cn
//       E-mail：yuanfen3287@vip.qq.com
//       Website：http://www.ying32.com
//
//---------------------------------------------------------------------------
//
//       备注：
//
//
//***************************************************************************
unit RTXC.ClientObjectsEventSink;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj,
  ActiveX,
  Variants,
  RTXCAPILib_TLB,
  ClientObjectsLib_TLB,
  ActionLib_TLB,
  RTX.Common;

type

  { TRTXCSubItemEventsSink }

  TRTXCSubItemEventsSink = class(TEventSink)
  public type
    TOnSubItemChangeEvent = procedure(Type_: RTXC_UI_TYPE; lID: Integer; const bstrGroupName: WideString;
                             const SubItemState: IRTXCDataCollection) of object;
    TOnClickSubItemEvent = procedure(Type_: RTXC_UI_TYPE; const bstrName: WideString; lID: Integer;
                             enActionType: SUBITEM_ACTION_TYPE) of object;
  private
    FOnSubItemChange: TOnSubItemChangeEvent;
    FOnClickSubItem: TOnClickSubItemEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnOnSubItemChange: TOnSubItemChangeEvent read FOnSubItemChange write FOnSubItemChange;
    property OnClickSubItem: TOnClickSubItemEvent read FOnClickSubItem write FOnClickSubItem;
  end;


  { TRTXCExtraInfoShowEventsSink }

  TRTXCExtraInfoShowEventsSink = class(TEventSink)
  public type
    TOnExtraInfoShowActivedEvent = procedure(const Account: WideString; varType: OleVariant; varExtra: OleVariant) of object;
    TOnInvokedEvent = procedure(const Account: WideString; varType: OleVariant; varExtra: OleVariant) of object;
    TOnExtraIconInvokedEvent = procedure(const Account: WideString; varType: OleVariant; varExtra: OleVariant) of object;
  private
    FOnExtraInfoShowActived: TOnExtraInfoShowActivedEvent;
    FOnInvoked: TOnInvokedEvent;
    FOnExtraIconInvoked: TOnExtraIconInvokedEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnExtraInfoShowActived: TOnExtraInfoShowActivedEvent read FOnExtraInfoShowActived write FOnExtraInfoShowActived;
    property OnInvoked: TOnInvokedEvent read FOnInvoked write FOnInvoked;
    property OnExtraIconInvoked: TOnExtraIconInvokedEvent read FOnExtraIconInvoked write FOnExtraIconInvoked;
  end;


  { TRTXCUserTipsEventsSink }

  TRTXCUserTipsEventsSink = class(TEventSink)
  public type
    TOnUserTipsActivedEvent = procedure(const Account: WideString; varExtra: OleVariant) of object;
    TOnMouseClickEvent = procedure(const Account: WideString; varType: OleVariant; varExtra: OleVariant) of object;
  private
    FOnUserTipsActivedActived: TOnUserTipsActivedEvent;
    FOnMouseClick: TOnMouseClickEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnUserTipsActivedActived: TOnUserTipsActivedEvent read FOnUserTipsActivedActived write FOnUserTipsActivedActived;
    property OnMouseClick: TOnMouseClickEvent read FOnMouseClick write FOnMouseClick;
  end;


  { TActionMgrEventsSink }

  TActionMgrEventsSink = class(TEventSink)
  public type
    TOnActionPosChangeEvent = procedure(const bstrGroup: WideString; varID: OleVariant; lPos: Integer;
                               varExtraInfo: OleVariant) of object;
    TOnActionExtraInfoChangeEvent = procedure(const bstrGroup: WideString; varID: OleVariant;
                                     varExtraInfo: OleVariant) of object;
    TOnActionAddEvent = procedure(const bstrGroup: WideString; varID: OleVariant; varExtraInfo: OleVariant) of object;
    TOnActionDelEvent = procedure(const bstrGroup: WideString; varID: OleVariant; varExtraInfo: OleVariant) of object;
    TOnActionInvokedEvent = procedure(const bstrGroup: WideString; varID: OleVariant;
                             varExtraInfo: OleVariant) of object;
  private
    FOnActionPosChange: TOnActionPosChangeEvent;
    FOnActionExtraInfoChange: TOnActionExtraInfoChangeEvent;
    FOnActionAdd: TOnActionAddEvent;
    FOnActionDel: TOnActionDelEvent;
    FOnActionInvoked: TOnActionInvokedEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnActionPosChange: TOnActionPosChangeEvent read FOnActionPosChange write FOnActionPosChange;
    property OnActionExtraInfoChange: TOnActionExtraInfoChangeEvent read FOnActionExtraInfoChange write FOnActionExtraInfoChange;
    property OnActionAdd: TOnActionAddEvent read FOnActionAdd write FOnActionAdd;
    property OnActionDel: TOnActionDelEvent read FOnActionDel write FOnActionDel;
    property OnActionInvoked: TOnActionInvokedEvent read FOnActionInvoked write FOnActionInvoked;
  end;


  //_IActionMgrEvents


implementation


{ TRTXCSubItemEventsSink }

constructor TRTXCSubItemEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCSubItemEvents);
end;

procedure TRTXCSubItemEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnSubItemChange) then
           FOnSubItemChange(Params[0], Params[1], Params[2], IRTXCDataCollection(TVarData(VarAsType(Params[3], varDispatch)).VDispatch));
     2 : if Assigned(FOnClickSubItem) then
           FOnClickSubItem(Params[0], Params[1], Params[2], Params[3]);
  end;
end;

{ TRTXCExtraInfoShowEventsSink }

constructor TRTXCExtraInfoShowEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCExtraInfoShowEvents);
end;

procedure TRTXCExtraInfoShowEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnExtraInfoShowActived) then
           FOnExtraInfoShowActived(Params[0], Params[1], Params[2]);
     2 : if Assigned(FOnInvoked) then
           FOnInvoked(Params[0], Params[1], Params[2]);
     3 : if Assigned(FOnExtraIconInvoked) then
           FOnExtraIconInvoked(Params[0], Params[1], Params[2]);
  end;
end;

{ TRTXCUserTipsEventsSink }

constructor TRTXCUserTipsEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCUserTipsEvents);
end;

procedure TRTXCUserTipsEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnUserTipsActivedActived) then
           FOnUserTipsActivedActived(Params[0], Params[1]);
     2 : if Assigned(FOnMouseClick) then
           FOnMouseClick(Params[0], Params[1], Params[2]);
  end;
end;

{ TActionMgrEventsSink }

constructor TActionMgrEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IActionMgrEvents);
end;

procedure TActionMgrEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnActionPosChange) then
           FOnActionPosChange(Params[0], Params[1], Params[2], Params[3]);
     2 : if Assigned(FOnActionExtraInfoChange) then
           FOnActionExtraInfoChange(Params[0], Params[1], Params[2]);
     3 : if Assigned(FOnActionAdd) then
           FOnActionAdd(Params[0], Params[1], Params[2]);
     4 : if Assigned(FOnActionDel) then
           FOnActionDel(Params[0], Params[1], Params[2]);
     5 : if Assigned(FOnActionInvoked) then
           FOnActionInvoked(Params[0], Params[1], Params[2]);
  end;
end;

end.
