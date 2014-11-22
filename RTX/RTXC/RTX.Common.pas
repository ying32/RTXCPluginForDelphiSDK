//***************************************************************************
//
//       名称：RTX.Common.pas
//       工具：RAD Studio XE6
//       日期：2014/11/8 15:12:01
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
unit RTX.Common;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ActiveX, ComObj;

const
  VARIANT_FALSE = WordBool(0);
  VARIANT_TRUE  = WordBool(-1);

type
  TEventSink = class(TInterfacedObject, IUnknown, IDispatch)
  private
    [weak]FController: IUnknown;
    FIId: TIID;
    FConnectionToken: Integer;
  protected
    function QueryInterface(const IID: TGUID; out Obj):HResult;stdcall;
    function GetTypeInfoCount(out Count: Integer): HResult; stdcall;
    function GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult; stdcall;
    function GetIDsOfNames(const IID: TGUID; Names: Pointer;
      NameCount, LocaleID: Integer; DispIDs: Pointer): HResult; stdcall;
    function Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer;
      Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult; stdcall;
  protected
    procedure InvokeEvent(DispID: TDispID; var Params: TOleVariantArray); virtual;
  public
    constructor Create(AController: IUnknown; AIId: TIID);
    destructor Destroy; override;
  end;

  function TypeLibOfUUID(UUID: TGUID; LibMajor: Word = 1; LibMinor: Word = 0; LocalLang: Cardinal = 0): ITypeLib; inline;
implementation

function TypeLibOfUUID(UUID: TGUID; LibMajor: Word = 1; LibMinor: Word = 0; LocalLang: Cardinal = 0): ITypeLib;
begin
  OleCheck(LoadRegTypeLib(UUID, LibMajor, LibMinor, LocalLang, Result));
end;

{ TEventSink }

constructor TEventSink.Create(AController: IUnknown; AIId: TIID);
begin
  inherited Create;
  FController := AController;
  FIId := AIId;
  InterfaceConnect(FController, FIId, Self, FConnectionToken);
end;

destructor TEventSink.Destroy;
begin
  InterfaceDisconnect(FController, FIId, FConnectionToken);
  inherited;
end;

function TEventSink.GetIDsOfNames(const IID: TGUID;
  Names: Pointer; NameCount, LocaleID: Integer; DispIDs: Pointer): HResult;
begin
  Result := S_OK;
end;

function TEventSink.GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult;
begin
  Result := S_OK;
end;

function TEventSink.GetTypeInfoCount(out Count: Integer): HResult;
begin
  Result := S_OK;
end;

function TEventSink.Invoke(DispID: Integer;
  const IID: TGUID; LocaleID: Integer; Flags: Word; var Params; VarResult,
  ExcepInfo, ArgErr: Pointer): HResult;
var
  vPDispParams: PDispParams;
begin
  vPDispParams := PDispParams(@Params);
  Result := EventDispatchInvoke(DispID, vPDispParams^,
                                procedure(DispId: Integer; var Params: TOleVariantArray)
                                begin
                                  Self.InvokeEvent(DispID, Params);
                                end);
end;

procedure TEventSink.InvokeEvent(DispID: TDispID;
  var Params: TOleVariantArray);
begin
  // no code
end;

function TEventSink.QueryInterface(const IID: TGUID;
  out Obj): HResult;
begin
  if GetInterFace(IID,Obj) then
    Result := S_OK
  else if IsEqualIID(IID, FIId) then
    Result := QueryInterface(IDispatch,Obj)
  else
    Result := E_NOINTERFACE;
end;

end.
