unit RTXCNotetipsActiveXContainer;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, Controls, Graphics, Menus, Forms, StdCtrls,
  ComServ, StdVCL, AXCtrls, RTXCNotetipsActiveXContainerLib_TLB,
  Vcl.OleCtnrs, RTXC.Event, RTXCAPILib_TLB, RTXCModulEinterfaceLib_TLB,
  SysUtils;

type
  TTRXCNotetipsActiveXContainer = class(TActiveXControl, ITRXCNotetipsActiveXContainer,
                                        IRTXPluginTab, IRTXCPluginExtTabNotify)
  private

  private
    { Private declarations }
    FDelphiControl: TOleContainer;
    procedure ActivateEvent(Sender: TObject);
    procedure DeactivateEvent(Sender: TObject);
    procedure KeyPressEvent(Sender: TObject; var Key: Char);
    procedure ResizeEvent(Sender: TObject);
  protected
    { Protected declarations }
    procedure InitializeControl; override;
    function InitCtrl(const RtxRoot: IDispatch): HResult; stdcall;
    function EnterExtTab: HResult; stdcall;
    function LeaveExtTab: HResult; stdcall;
  public
    destructor Destroy; override;
    function LoadRTXCNotetipsPlugin: Boolean;
  end;

implementation

uses ComObj, ufrmMainForm;

const
   RTX_MODULE_IDENTIFIER_NOTETIPS = 'RTXCNotetipsPlugin';

var
  uTimerEventId: Cardinal = 1001;
  uRTXRoot: IRTXCRoot = nil;
  uDelphiCotronlHandle: HWND;

function EventBind(const P: Pointer): PPointer;
begin
  Result := PPointer(Cardinal(PPointer(P)^) + {$IFDEF CPUX64}$18{$ELSE}$0C{$ENDIF})^;
end;

{ TTRXCNotetipsActiveXContainer }

function TTRXCNotetipsActiveXContainer.InitCtrl(
  const RtxRoot: IDispatch): HResult;
begin
  uRTXRoot := RtxRoot as IRTXCRoot;
  if Assigned(frm_Main) then
    frm_Main.Init(uRTXRoot);
  uDelphiCotronlHandle := FDelphiControl.Handle;
  SetTimer(uDelphiCotronlHandle, uTimerEventId, 1000,
    EventBind(@procedure
    begin
      if Self.LoadRTXCNotetipsPlugin then
        KillTimer(uDelphiCotronlHandle, uTimerEventId);
    end));
  Result := S_OK;
end;

function TTRXCNotetipsActiveXContainer.EnterExtTab: HResult;
begin
  if Assigned(frm_Main) then
    if not frm_Main.Visible then
      frm_Main.Show;
  Result := S_OK;
end;

function TTRXCNotetipsActiveXContainer.LeaveExtTab: HResult;
begin
  Result := S_OK;
end;

procedure TTRXCNotetipsActiveXContainer.InitializeControl;
begin
  FDelphiControl := Control as TOleContainer;
  FDelphiControl.OnActivate := ActivateEvent;
  FDelphiControl.OnDeactivate := DeactivateEvent;
  FDelphiControl.OnKeyPress := KeyPressEvent;
  FDelphiControl.OnResize := ResizeEvent;

  { TODO 1 -oying32 -cInit : 在这里放置VCL FORM初始化的代码 }
  frm_Main := Tfrm_Main.Create(nil);
  frm_Main.Hide;
  // 必须使用Windows.SetParent否则会出错的
  Windows.SetParent(frm_Main.Handle, FDelphiControl.Handle);
 // frm_Main.Show;
end;

destructor TTRXCNotetipsActiveXContainer.Destroy;
begin
  { TODO 2 -oying32 -cUnInit : 在这里放置VCL FORM返向初始化的代码 }
  if Assigned(frm_Main) then
     frm_Main.Free;
  inherited;
end;

procedure TTRXCNotetipsActiveXContainer.ActivateEvent(Sender: TObject);
begin
end;

procedure TTRXCNotetipsActiveXContainer.DeactivateEvent(Sender: TObject);
begin
end;

procedure TTRXCNotetipsActiveXContainer.KeyPressEvent(Sender: TObject; var Key: Char);
var
  TempKey: Smallint;
begin
  TempKey := Smallint(Key);
  Key := Char(TempKey);
end;

function TTRXCNotetipsActiveXContainer.LoadRTXCNotetipsPlugin: Boolean;
var
  LRTXCModule: IRTXCModule;
begin
  Result := False;
  try
    if uRTXRoot <> nil then
    begin
      LRTXCModule := uRTXRoot.Module[RTX_MODULE_IDENTIFIER_NOTETIPS];
      if Assigned(LRTXCModule) and Assigned(frm_Main) then
      begin
        frm_Main.InitModuleSite(LRTXCModule.ModuleSite as IRTXCModuleSite);
        Result := True;
      end;
    end;
  except
  end;
end;

procedure TTRXCNotetipsActiveXContainer.ResizeEvent(Sender: TObject);
begin
  { TODO 2 -oying32 -conSize : 在这里放置VCL FORM窗口大小发生改变的代码 }
  if Assigned(frm_Main) then
     frm_Main.SetBounds(0, 0, FDelphiControl.Width, FDelphiControl.Height);
end;


initialization
  TActiveXControlFactory.Create(
    ComServer,
    TTRXCNotetipsActiveXContainer,
    TOleContainer,
    CLASS_TRXCNotetipsActiveXContainer,
    0,
    '',
    0,
    tmApartment);
end.
