//***************************************************************************
//
//       名称：RTXC.EventSink.pas
//       工具：RAD Studio XE6
//       日期：2014/11/8 15:11:42
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
unit RTXC.EventSink;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ActiveX,
  ComObj,
  Variants,
  RTXCAPILib_TLB,
  RTXCModulEinterfaceLib_TLB,
  RTX.Common;

type

  { TRTXCModuleSiteEventsSink }

  TRTXCModuleSiteEventsSink = class(TEventSink)
  public type
    TOnDataReceivedEvent = procedure(const Key: WideString) of object;
    TOnViewDataEvent = procedure(const Key: WideString) of object;
    TOnSendDataResultEvent = procedure(Result: RTXC_MODULE_SEND_DATA_RESULT; Extra: OleVariant) of object;
  private
    FOnDataReceived: TOnDataReceivedEvent;
    FOnViewData: TOnViewDataEvent;
    FOnSendDataResult: TOnSendDataResultEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnDataReceived: TOnDataReceivedEvent read FOnDataReceived write FOnDataReceived;
    property OnViewData: TOnViewDataEvent read FOnViewData write FOnViewData;
    property OnSendDataResult: TOnSendDataResultEvent read FOnSendDataResult write FOnSendDataResult;
  end;


  { TRTXCRootEventsSink }

  TRTXCRootEventsSink = class(TEventSink)
  public type
    TOnLoginResultEvent = procedure(Result: RTXC_LOGIN_RESULT) of object;
    TOnMyPresenceChangeEvent = procedure(Result: RTXC_RESULT; RTXPresence: RTX_PRESENCE) of object;
    TOnLogoutResultEvent = procedure(Result: RTXC_RESULT) of object;
    TOnAccountChangeEvent = procedure of object;
    TOnPackageComeEvent = procedure(Reserved: Integer) of object;
    TOnModifyPasswordEvent = procedure(Result: RTXC_MODIFY_PWD_RESULT) of object;
    TOnMsgCountChangeEvent = procedure(Count: Integer; Forbid: WordBool; const Identifier: WideString;
                              const Key: WideString; const Sender: WideString) of object;
    TOnExitAppEvent = procedure(const pData: IRTXCData; var pbCanExit: WordBool) of object;
  private
    FOnLoginResult: TOnLoginResultEvent;
    FOnMyPresenceChange: TOnMyPresenceChangeEvent;
    FOnLogoutResult: TOnLogoutResultEvent;
    FOnAccountChange: TOnAccountChangeEvent;
    FOnPackageCome: TOnPackageComeEvent;
    FOnModifyPassword: TOnModifyPasswordEvent;
    FOnMsgCountChange: TOnMsgCountChangeEvent;
    FOnExitApp: TOnExitAppEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnLoginResult: TOnLoginResultEvent read FOnLoginResult write FOnLoginResult;
    property OnMyPresenceChange: TOnMyPresenceChangeEvent read FOnMyPresenceChange write FOnMyPresenceChange;
    property OnLogoutResult: TOnLogoutResultEvent read FOnLogoutResult write FOnLogoutResult;
    property OnAccountChange: TOnAccountChangeEvent read FOnAccountChange write FOnAccountChange;
    property OnPackageCome: TOnPackageComeEvent read FOnPackageCome write FOnPackageCome;
    property OnModifyPassword: TOnModifyPasswordEvent read FOnModifyPassword write FOnModifyPassword;
    property OnMsgCountChange: TOnMsgCountChangeEvent read FOnMsgCountChange write FOnMsgCountChange;
    property OnExitApp: TOnExitAppEvent read FOnExitApp write FOnExitApp;
  end;


  { TRTXCPresenceEventsSink }

  TRTXCPresenceEventsSink = class(TEventSink)
  public type
    TOnPresenceChangeEvent = procedure(const Account: WideString; RTXPresence: RTX_PRESENCE) of object;
  private
    FOnPresenceChange: TOnPresenceChangeEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnPresenceChange: TOnPresenceChangeEvent read FOnPresenceChange write FOnPresenceChange;
  end;


  { TRTXCExStateEventsSink }

  TRTXCExStateEventsSink = class(TEventSink)
  public type
    TOnExStateChangeEvent = procedure(const bstrAccount: WideString; const bstrExStateName: WideString; lExState: Integer) of object;
  private
    FOnExStateChange: TOnExStateChangeEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnExStateChange: TOnExStateChangeEvent read FOnExStateChange write FOnExStateChange;
  end;



  { TRTXOrgEventsSink }

  TRTXOrgEventsSink = class(TEventSink)
  public type
    TLClickEvent = procedure(Val: OleVariant; nType: Integer) of object;
  private
    FLClickEvent: TLClickEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property LClickEvent: TLClickEvent read FLClickEvent write FLClickEvent;
  end;


  { TRTXCLicenseEventsSink }

  TRTXCLicenseEventsSink = class(TEventSink)
  public type
    TOnConfigChangedEvent = procedure(IsSucceed: WordBool; const Name: WideString; Val: OleVariant) of object;
  private
    FOnConfigChanged: TOnConfigChangedEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnConfigChanged: TOnConfigChangedEvent read FOnConfigChanged write FOnConfigChanged;
  end;


  { TRTXCMDSessionEventsSink }       // TEvent = procedure() of object;

  TRTXCMDSessionEventsSink = class(TEventSink)
  public type
    TOnAddParticipantCompleteEvent = procedure(const Participant: WideString; nResult: Integer) of object;
    TOnConnectCompleteEvent = procedure(const Participant: WideString; nResult: Integer) of object;
    TOnParticipantChangeEvent = procedure(const Participant: WideString) of object;
    TOnDisConnectEvent = procedure(const Participant: WideString) of object;
    TOnByeEvent = procedure(const Participant: WideString) of object;
    TOnRecvDataEvent = procedure(const Participant: WideString; Data: OleVariant) of object;
    TOnKickoutEvent = procedure(const Participant: WideString) of object;
  private
    FOnAddParticipantComplete: TOnAddParticipantCompleteEvent;
    FOnConnectComplete: TOnConnectCompleteEvent;
    FOnParticipantChange: TOnParticipantChangeEvent;
    FOnDisConnect: TOnDisConnectEvent;
    FOnBye: TOnByeEvent;
    FOnRecvData: TOnRecvDataEvent;
    FOnKickout: TOnKickoutEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnAddParticipantComplete: TOnAddParticipantCompleteEvent read FOnAddParticipantComplete write FOnAddParticipantComplete;
    property OnConnectComplete: TOnConnectCompleteEvent read FOnConnectComplete write FOnConnectComplete;
    property OnParticipantChange: TOnParticipantChangeEvent read FOnParticipantChange write FOnParticipantChange;
    property OnDisConnect: TOnDisConnectEvent read FOnDisConnect write FOnDisConnect;
    property OnBye: TOnByeEvent read FOnBye write FOnBye;
    property OnRecvData: TOnRecvDataEvent read FOnRecvData write FOnRecvData;
    property OnKickout: TOnKickoutEvent read FOnKickout write FOnKickout;
  end;


  { TRTXCMDSessionManagerEventsSink }

  TRTXCMDSessionManagerEventsSink = class(TEventSink)
  public type
    TOnInviteEvent = procedure(const Session: IRTXCMDSession; const VerifyString: WideString) of object;
    TOnCancelEvent = procedure(const Session: IRTXCMDSession) of object;
  private
    FOnInvite: TOnInviteEvent;
    FOnCancel: TOnCancelEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnInvite: TOnInviteEvent read FOnInvite write FOnInvite;
    property OnCancel: TOnCancelEvent read FOnCancel write FOnCancel;
  end;


  { TRTXCMFCSupportEventsSink }

  TRTXCMFCSupportEventsSink = class(TEventSink)
  public type
    // OnPreTranslateMessage(MSGPointer: Integer): WordBool 需再考虑更改的
    TOnPreTranslateMessageEvent = procedure(MSGPointer: Integer) of object;
    TOnIdleEvent = procedure(Count: Integer) of object;
  private
    FOnPreTranslateMessage: TOnPreTranslateMessageEvent;
    FOnIdle: TOnIdleEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnPreTranslateMessage: TOnPreTranslateMessageEvent read FOnPreTranslateMessage write FOnPreTranslateMessage;
    property OnIdle: TOnIdleEvent read FOnIdle write FOnIdle;
  end;



  { TRTXCExtBuddyManagerEventsSink }

  TRTXCExtBuddyManagerEventsSink = class(TEventSink)
  public type
    TOnExtBuddyChangeEvent = procedure(const RTXCExtBuddy: IRTXCExtBuddy) of object;
    TOnAddNewExtBuddyEvent = procedure(const Account: WideString) of object;
  private
    FOnExtBuddyChange: TOnExtBuddyChangeEvent;
    FOnAddNewExtBuddy: TOnAddNewExtBuddyEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnExtBuddyChange: TOnExtBuddyChangeEvent read FOnExtBuddyChange write FOnExtBuddyChange;
    property OnAddNewExtBuddy: TOnAddNewExtBuddyEvent read FOnAddNewExtBuddy write FOnAddNewExtBuddy;
  end;


  { TRTXCRTXBuddyManagerEventsSink }

  TRTXCRTXBuddyManagerEventsSink = class(TEventSink)
  public type
    TOnBuddyProfileChangeEvent = procedure(const RTXCRTXBuddy: IRTXCRTXBuddy) of object;
    TOnQueryExistenceEvent = procedure(const Account: WideString; Existence: WordBool) of object;
  private
    FOnBuddyProfileChange: TOnBuddyProfileChangeEvent;
    FOnQueryExistence: TOnQueryExistenceEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnBuddyProfileChange: TOnBuddyProfileChangeEvent read FOnBuddyProfileChange write FOnBuddyProfileChange;
    property OnQueryExistence: TOnQueryExistenceEvent read FOnQueryExistence write FOnQueryExistence;
  end;


  { TRTXCRTXBuddyEventsSink }

  TRTXCRTXBuddyEventsSink = class(TEventSink)
  public type
    TOnModifyProfileEvent = procedure(Success: WordBool) of object;
  private
    FOnModifyProfile: TOnModifyProfileEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnModifyProfile: TOnModifyProfileEvent read FOnModifyProfile write FOnModifyProfile;
  end;

  { TRTXCSessionManagerEventsSink }

  TRTXCSessionManagerEventsSink = class(TEventSink)
  public type
    TOnQuerySessionInfoCompleteEvent = procedure(const Session: IRTXCSession; Cookie: Integer) of object;
    TOnSessionAddEvent = procedure(const Session: IRTXCSession) of object;
    TOnRequestInitiatorEvent = procedure(const Session: IRTXCSession; const Participant: WideString) of object;
    TOnRegisterSessionEvent = procedure(const Session: IRTXCSession) of object;
  private
    FOnQuerySessionInfoComplete: TOnQuerySessionInfoCompleteEvent;
    FOnSessionAdd: TOnSessionAddEvent;
    FOnRequestInitiator: TOnRequestInitiatorEvent;
    FOnRegisterSession: TOnRegisterSessionEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnQuerySessionInfoComplete: TOnQuerySessionInfoCompleteEvent read FOnQuerySessionInfoComplete write FOnQuerySessionInfoComplete;
    property OnSessionAdd: TOnSessionAddEvent read FOnSessionAdd write FOnSessionAdd;
    property OnRequestInitiator: TOnRequestInitiatorEvent read FOnRequestInitiator write FOnRequestInitiator;
    property OnRegisterSession: TOnRegisterSessionEvent read FOnRegisterSession write FOnRegisterSession;
  end;


  { TRTXCSessionEventsSink }

  TRTXCSessionEventsSink = class(TEventSink)
  public type
    TOnParticipantChangeEvent = procedure(const Participant: WideString) of object;
    TOnTopicChangeEvent = procedure(const Topic: WideString) of object;
    TOnMessageCountChangeEvent = procedure(MsgCount: Integer) of object;
    TOnRequestInitiatorEvent = procedure(const Participant: WideString) of object;
    TOnRequestInitiatorCompleteEvent = procedure(nResult: Integer) of object;
    TOnInitiatorChangeEvent = procedure(const Initiator: WideString) of object;
    TOnStateChangeEvent = procedure(State: RTXC_SESSION_STATE) of object;
    TOnParticipantChangeStateEvent = procedure(const Participant: WideString; State: RTXC_SESSION_STATE) of object;
  private
    FOnParticipantChange: TOnParticipantChangeEvent;
    FOnTopicChange: TOnTopicChangeEvent;
    FOnMessageCountChange: TOnMessageCountChangeEvent;
    FOnRequestInitiator: TOnRequestInitiatorEvent;
    FOnRequestInitiatorComplete: TOnRequestInitiatorCompleteEvent;
    FOnInitiatorChange: TOnInitiatorChangeEvent;
    FOnStateChange: TOnStateChangeEvent;
    FOnParticipantChangeState: TOnParticipantChangeStateEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnParticipantChange: TOnParticipantChangeEvent read FOnParticipantChange write FOnParticipantChange;
    property OnTopicChange: TOnTopicChangeEvent read FOnTopicChange write FOnTopicChange;
    property OnMessageCountChange: TOnMessageCountChangeEvent read FOnMessageCountChange write FOnMessageCountChange;
    property OnRequestInitiator: TOnRequestInitiatorEvent read FOnRequestInitiator write FOnRequestInitiator;
    property OnRequestInitiatorComplete: TOnRequestInitiatorCompleteEvent read FOnRequestInitiatorComplete write FOnRequestInitiatorComplete;
    property OnInitiatorChange: TOnInitiatorChangeEvent read FOnInitiatorChange write FOnInitiatorChange;
    property OnStateChange: TOnStateChangeEvent read FOnStateChange write FOnStateChange;
    property OnParticipantChangeState: TOnParticipantChangeStateEvent read FOnParticipantChangeState write FOnParticipantChangeState;
  end;



  { TRTXCRTXGroupManagerEventsSink }

  TRTXCRTXGroupManagerEventsSink = class(TEventSink)
  public type
    TOnGroupChangeEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup) of object;
    TOnGroupAddEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup) of object;
    TOnGroupRemoveEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup) of object;
    TOnBuddyAddEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup; const RTXCRTXBuddy: IRTXCRTXBuddy) of object;
    TOnBuddyRemoveEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup; const RTXCRTXBuddy: IRTXCRTXBuddy) of object;
  private
    FOnGroupChange: TOnGroupChangeEvent;
    FOnGroupAdd: TOnGroupAddEvent;
    FOnGroupRemove: TOnGroupRemoveEvent;
    FOnBuddyAdd: TOnBuddyAddEvent;
    FOnBuddyRemove: TOnBuddyRemoveEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnGroupChange: TOnGroupChangeEvent read FOnGroupChange write FOnGroupChange;
    property OnGroupAdd: TOnGroupAddEvent read FOnGroupAdd write FOnGroupAdd;
    property OnGroupRemove: TOnGroupRemoveEvent read FOnGroupRemove write FOnGroupRemove;
    property OnBuddyAdd: TOnBuddyAddEvent read FOnBuddyAdd write FOnBuddyAdd;
    property OnBuddyRemove: TOnBuddyRemoveEvent read FOnBuddyRemove write FOnBuddyRemove;
  end;


  { TRTXCExtGroupManagerEventsSink }

  TRTXCExtGroupManagerEventsSink = class(TEventSink)
  public type
    TOnGroupChangeEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup) of object;
    TOnGroupAddEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup) of object;
    TOnGroupRemoveEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup) of object;
    TOnBuddyAddEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup; const RTXCRTXBuddy: IRTXCRTXBuddy) of object;
    TOnBuddyRemoveEvent = procedure(const RTXCRTXGroup: IRTXCRTXGroup; const RTXCRTXBuddy: IRTXCRTXBuddy) of object;
  private
    FOnGroupChange: TOnGroupChangeEvent;
    FOnGroupAdd: TOnGroupAddEvent;
    FOnGroupRemove: TOnGroupRemoveEvent;
    FOnBuddyAdd: TOnBuddyAddEvent;
    FOnBuddyRemove: TOnBuddyRemoveEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnGroupChange: TOnGroupChangeEvent read FOnGroupChange write FOnGroupChange;
    property OnGroupAdd: TOnGroupAddEvent read FOnGroupAdd write FOnGroupAdd;
    property OnGroupRemove: TOnGroupRemoveEvent read FOnGroupRemove write FOnGroupRemove;
    property OnBuddyAdd: TOnBuddyAddEvent read FOnBuddyAdd write FOnBuddyAdd;
    property OnBuddyRemove: TOnBuddyRemoveEvent read FOnBuddyRemove write FOnBuddyRemove;
  end;


implementation


{ TRTXCModuleSiteEventsSink }

constructor TRTXCModuleSiteEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCModuleSiteEvents);
end;

procedure TRTXCModuleSiteEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1: Exit;
    1 : if Assigned(FOnDataReceived) then
          FOnDataReceived(Params[0]);
    2 : if Assigned(FOnViewData) then
          FOnViewData(Params[0]);
    3 : if Assigned(FOnSendDataResult) then
          FOnSendDataResult(Params[0], Params[1]);
  end;
end;

{ TRTXCRootEventsSink }

constructor TRTXCRootEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCRootEvents);
end;

procedure TRTXCRootEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
var
  LCanExit: WordBool;
begin
  case DispID of
    -1: Exit;
    1 : if Assigned(FOnLoginResult) then
          FOnLoginResult(Params[0]);
    2 : if Assigned(FOnMyPresenceChange) then
          FOnMyPresenceChange(Params[0], Params[1]);
    3 : if Assigned(FOnLogoutResult) then
          FOnLogoutResult(Params[0]);
    4 : if Assigned(FOnAccountChange) then
          FOnAccountChange();
    5 : if Assigned(FOnPackageCome) then
          FOnPackageCome(Params[0]);
    6 : if Assigned(FOnModifyPassword) then
          FOnModifyPassword(Params[0]);
    7 : if Assigned(FOnMsgCountChange) then
          FOnMsgCountChange(Params[0], Params[1], Params[2], Params[4], Params[5]);
    8 : if Assigned(FOnExitApp) then
        begin
          LCanExit := Params[1];
          FOnExitApp(IRTXCData(TVarData(VarAsType(Params[0], varDispatch)).VDispatch), LCanExit);
          Params[1] := LCanExit;
        end;
  end;
end;

{ TRTXCPresenceEventsSink }

constructor TRTXCPresenceEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCPresenceEvents);
end;

procedure TRTXCPresenceEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnPresenceChange) then
           FOnPresenceChange(Params[0], Params[1]);
  end;
end;

{ TRTXCExStateEventsSink }

constructor TRTXCExStateEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCExStateEvents);
end;

procedure TRTXCExStateEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnExStateChange) then
           FOnExStateChange(Params[0], Params[1], Params[2]);
  end;
end;

{ TRTXOrgEventsSink }

constructor TRTXOrgEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _DRTXOrgEvents);
end;

procedure TRTXOrgEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FLClickEvent) then
           FLClickEvent(Params[0], Params[1]);
  end;
end;

{ TRTXCLicenseEventsSink }

constructor TRTXCLicenseEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCLicenseEvents);
end;

procedure TRTXCLicenseEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnConfigChanged) then
           FOnConfigChanged(Params[0], Params[1], Params[2]);
  end;
end;

{ TRTXCMDSessionEventsSink }

constructor TRTXCMDSessionEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCMDSessionEvents);
end;

procedure TRTXCMDSessionEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnAddParticipantComplete) then
           FOnAddParticipantComplete(Params[0], Params[1]);
     2 : if Assigned(FOnConnectComplete) then
           FOnConnectComplete(Params[0], Params[1]);
     3 : if Assigned(FOnParticipantChange) then
           FOnParticipantChange(Params[0]);
     4 : if Assigned(FOnDisConnect) then
           FOnDisConnect(Params[0]);
     5 : if Assigned(FOnBye) then
           FOnBye(Params[0]);
     6 : if Assigned(FOnRecvData) then
           FOnRecvData(Params[0], Params[1]);
     7 : if Assigned(FOnKickout) then
           FOnKickout(Params[0]);
  end;
end;

{ TRTXCMDSessionManagerEventsSink }

constructor TRTXCMDSessionManagerEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCMDSessionManagerEvents);
end;

procedure TRTXCMDSessionManagerEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnInvite) then
           FOnInvite(IRTXCMDSession(TVarData(VarAsType(Params[0], varDispatch)).VDispatch), Params[1]);
     2 : if Assigned(FOnCancel) then
           FOnCancel(IRTXCMDSession(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));
  end;
end;

{ TRTXCMFCSupportEventsSink }

constructor TRTXCMFCSupportEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCMFCSupportEvents);
end;

procedure TRTXCMFCSupportEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnPreTranslateMessage) then
           FOnPreTranslateMessage(Params[0]);
     2 : if Assigned(FOnIdle) then
           FOnIdle(Params[0]);
  end;
end;

{ TRTXCExtBuddyManagerEventsSink }

constructor TRTXCExtBuddyManagerEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCExtBuddyManagerEvents);
end;

procedure TRTXCExtBuddyManagerEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnExtBuddyChange) then
           FOnExtBuddyChange(IRTXCExtBuddy(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));
     2 : if Assigned(FOnAddNewExtBuddy) then
           FOnAddNewExtBuddy(Params[0]);
  end;
end;

{ TRTXCRTXBuddyManagerEventsSink }

constructor TRTXCRTXBuddyManagerEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCRTXBuddyManagerEvents);
end;

procedure TRTXCRTXBuddyManagerEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnBuddyProfileChange) then
           FOnBuddyProfileChange(IRTXCRTXBuddy(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));
     2 : if Assigned(FOnQueryExistence) then
           FOnQueryExistence(Params[0], Params[1]);
  end;
end;

{ TRTXCRTXBuddyEventsSink }

constructor TRTXCRTXBuddyEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCRTXBuddyEvents);
end;

procedure TRTXCRTXBuddyEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnModifyProfile) then
           FOnModifyProfile(Params[0]);
  end;
end;

{ TRTXCSessionManagerEventsSink }

constructor TRTXCSessionManagerEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCSessionManagerEvents);
end;

procedure TRTXCSessionManagerEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnQuerySessionInfoComplete) then
           FOnQuerySessionInfoComplete(IRTXCSession(TVarData(VarAsType(Params[0], varDispatch)).VDispatch), Params[1]);

     2 : if Assigned(FOnSessionAdd) then
           FOnSessionAdd(IRTXCSession(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));

     3 : if Assigned(FOnRequestInitiator) then
           FOnRequestInitiator(IRTXCSession(TVarData(VarAsType(Params[0], varDispatch)).VDispatch), Params[1]);

     4 : if Assigned(FOnRegisterSession) then
           FOnRegisterSession(IRTXCSession(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));
  end;
end;

{ TRTXCSessionEventsSink }

constructor TRTXCSessionEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCSessionEvents);
end;

procedure TRTXCSessionEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnParticipantChange) then
           FOnParticipantChange(Params[0]);

     2 : if Assigned(FOnTopicChange) then
           FOnTopicChange(Params[0]);

     3 : if Assigned(FOnMessageCountChange) then
           FOnMessageCountChange(Params[0]);

     4 : if Assigned(FOnRequestInitiator) then
           FOnRequestInitiator(Params[0]);

     5 : if Assigned(FOnRequestInitiatorComplete) then
           FOnRequestInitiatorComplete(Params[0]);

     6 : if Assigned(FOnInitiatorChange) then
           FOnInitiatorChange(Params[0]);

     7 : if Assigned(FOnStateChange) then
           FOnStateChange(Params[0]);

     8 : if Assigned(FOnParticipantChangeState) then
           FOnParticipantChangeState(Params[0], Params[1]);
  end;
end;

{ TRTXCRTXGroupManagerEventsSink }

constructor TRTXCRTXGroupManagerEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCRTXGroupManagerEvents);
end;

procedure TRTXCRTXGroupManagerEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnGroupChange) then
           FOnGroupChange(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));

     2 : if Assigned(FOnGroupAdd) then
           FOnGroupAdd(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));

     3 : if Assigned(FOnGroupRemove) then
           FOnGroupRemove(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));

     4 : if Assigned(FOnBuddyAdd) then
           FOnBuddyAdd(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch),
                       IRTXCRTXBuddy(TVarData(VarAsType(Params[1], varDispatch)).VDispatch));

     5 : if Assigned(FOnBuddyRemove) then
           FOnBuddyRemove(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch),
                          IRTXCRTXBuddy(TVarData(VarAsType(Params[1], varDispatch)).VDispatch));
  end;
end;

{ TRTXCExtGroupManagerEventsSink }

constructor TRTXCExtGroupManagerEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXCExtGroupManagerEvents);
end;

procedure TRTXCExtGroupManagerEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnGroupChange) then
           FOnGroupChange(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));

     2 : if Assigned(FOnGroupAdd) then
           FOnGroupAdd(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));

     3 : if Assigned(FOnGroupRemove) then
           FOnGroupRemove(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch));

     4 : if Assigned(FOnBuddyAdd) then
           FOnBuddyAdd(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch),
                       IRTXCRTXBuddy(TVarData(VarAsType(Params[1], varDispatch)).VDispatch));

     5 : if Assigned(FOnBuddyRemove) then
           FOnBuddyRemove(IRTXCRTXGroup(TVarData(VarAsType(Params[0], varDispatch)).VDispatch),
                          IRTXCRTXBuddy(TVarData(VarAsType(Params[1], varDispatch)).VDispatch));
  end;
end;

end.
