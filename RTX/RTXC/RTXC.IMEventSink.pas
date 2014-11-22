//***************************************************************************
//
//       名称：RTXC.IMEventSink.pas
//       工具：RAD Studio XE6
//       日期：2014/11/8 15:11:36
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
unit RTXC.IMEventSink;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj,
  ActiveX,
  RTXCAPILib_TLB,
  ClientObjectsLib_TLB,
  RTXCModulEinterfaceLib_TLB,
  RTX.Common;


type

  { TRTXIMEventsSink }

  TRTXIMEventsSink = class(TEventSink)
  public type
    TOnPreStartAudioEvent = procedure(const bstrParticipants: WideString; var pbHandled: WordBool) of object;
    TOnPreStartVideoEvent = procedure(const bstrParticipants: WideString; var pbHandled: WordBool) of object;

    TOnQueryAudioStateEvent = procedure(UIType: RTXC_UI_TYPE; const Parameter: OleVariant; var bstrText: WideString; var State: RTXC_UI_ITEM_STATE; var pbHandled: WordBool) of object;
    TOnQueryVideoStateEvent = procedure(UIType: RTXC_UI_TYPE; const Parameter: OleVariant; var bstrText: WideString; var State: RTXC_UI_ITEM_STATE; var pbHandled: WordBool) of object;
    TOnClickExtensionBtnEvent = procedure(const bstrParticipants: WideString; const pExtraInfo: OleVariant) of object;
  private
    FOnPreStartAudio: TOnPreStartAudioEvent;
    FOnPreStartVideo: TOnPreStartVideoEvent;
    FOnQueryAudioState: TOnQueryAudioStateEvent;
    FOnQueryVideoState: TOnQueryVideoStateEvent;
    FOnClickExtensionBtn: TOnClickExtensionBtnEvent;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); override;
  public
    constructor Create(AController: IUnknown); overload;
  public
    property OnPreStartAudio: TOnPreStartAudioEvent read FOnPreStartAudio write FOnPreStartAudio;
    property OnPreStartVideo: TOnPreStartVideoEvent read FOnPreStartVideo write FOnPreStartVideo;
    property OnQueryAudioState: TOnQueryAudioStateEvent read FOnQueryAudioState write FOnQueryAudioState;
    property OnQueryVideoState: TOnQueryVideoStateEvent read FOnQueryVideoState write FOnQueryVideoState;
    property OnClickExtensionBtn: TOnClickExtensionBtnEvent read FOnClickExtensionBtn write FOnClickExtensionBtn;
  end;




implementation

{ TRTXIMEventsSink }

constructor TRTXIMEventsSink.Create(AController: IInterface);
begin
  inherited Create(AController, _IRTXIMEvents);
end;

procedure TRTXIMEventsSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
var
  pbHandled: WordBool;
  bStr: WideString;
  State: RTXC_UI_ITEM_STATE;
begin
  case DispID of
    -1 : Exit;
     1 : if Assigned(FOnPreStartAudio) then
         begin
           pbHandled := Params[1];
           FOnPreStartAudio(Params[0], pbHandled);
           Params[1] := pbHandled;
         end;

     2 : if Assigned(FOnPreStartVideo) then
         begin
           pbHandled := Params[1];
           FOnPreStartVideo(Params[0], pbHandled);
           Params[1] := pbHandled;
         end;

     3 : if Assigned(FOnQueryAudioState) then
         begin
           bStr := Params[2];
           State := Params[3];
           pbHandled := Params[4];
           FOnQueryAudioState(Params[0], Params[1], bStr, State, pbHandled);
           Params[2] := bStr;
           Params[3] := State;
           Params[4] := pbHandled;
         end;

     4 : if Assigned(FOnQueryVideoState) then
         begin
           bStr := Params[2];
           State := Params[3];
           pbHandled := Params[4];
           FOnQueryVideoState(Params[0], Params[1], bStr, State, pbHandled);
           Params[2] := bStr;
           Params[3] := State;
           Params[4] := pbHandled;
         end;

     5 : if Assigned(FOnClickExtensionBtn) then
           FOnClickExtensionBtn(Params[0], Params[1]);
  end;
end;



end.
