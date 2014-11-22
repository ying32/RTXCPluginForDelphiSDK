unit ProjectManagerTabForm;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActiveX, AxCtrls, ManagerOcxLib_TLB, StdVcl, Vcl.StdCtrls,
  RTXCModulEinterfaceLib_TLB, RTXCAPILib_TLB;

type
  TProjectManagerTab = class(TActiveForm, IProjectManagerTab, IRTXPluginTab, IRTXCPluginExtTabNotify)
    chk1: TCheckBox;
  private
    { Private declarations }
    FEvents: IProjectManagerTabEvents;

    FRTXRoot: IRTXCRoot;
    procedure ActivateEvent(Sender: TObject);
    procedure ClickEvent(Sender: TObject);
    procedure CreateEvent(Sender: TObject);
    procedure DblClickEvent(Sender: TObject);
    procedure DeactivateEvent(Sender: TObject);
    procedure DestroyEvent(Sender: TObject);
    procedure KeyPressEvent(Sender: TObject; var Key: Char);
    procedure MouseEnterEvent(Sender: TObject);
    procedure MouseLeaveEvent(Sender: TObject);
    procedure PaintEvent(Sender: TObject);
  protected
    { Protected declarations }
    procedure DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage); override;
    procedure EventSinkChanged(const EventSink: IUnknown); override;
    function Get_Active: WordBool; safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_AlignWithMargins: WordBool; safecall;
    function Get_AutoScroll: WordBool; safecall;
    function Get_AutoSize: WordBool; safecall;
    function Get_AxBorderStyle: TxActiveFormBorderStyle; safecall;
    function Get_BorderWidth: Integer; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Color: OLE_COLOR; safecall;
    function Get_DockSite: WordBool; safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    function Get_DropTarget: WordBool; safecall;
    function Get_Enabled: WordBool; safecall;
    function Get_ExplicitHeight: Integer; safecall;
    function Get_ExplicitLeft: Integer; safecall;
    function Get_ExplicitTop: Integer; safecall;
    function Get_ExplicitWidth: Integer; safecall;
    function Get_Font: IFontDisp; safecall;
    function Get_HelpFile: WideString; safecall;
    function Get_KeyPreview: WordBool; safecall;
    function Get_MouseInClient: WordBool; safecall;
    function Get_ParentCustomHint: WordBool; safecall;
    function Get_ParentDoubleBuffered: WordBool; safecall;
    function Get_PixelsPerInch: Integer; safecall;
    function Get_PopupMode: TxPopupMode; safecall;
    function Get_PrintScale: TxPrintScale; safecall;
    function Get_Scaled: WordBool; safecall;
    function Get_ScreenSnap: WordBool; safecall;
    function Get_SnapBuffer: Integer; safecall;
    function Get_UseDockManager: WordBool; safecall;
    function Get_Visible: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    procedure _Set_Font(var Value: IFontDisp); safecall;
    procedure Set_AlignWithMargins(Value: WordBool); safecall;
    procedure Set_AutoScroll(Value: WordBool); safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    procedure Set_AxBorderStyle(Value: TxActiveFormBorderStyle); safecall;
    procedure Set_BorderWidth(Value: Integer); safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    procedure Set_Color(Value: OLE_COLOR); safecall;
    procedure Set_DockSite(Value: WordBool); safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    procedure Set_DropTarget(Value: WordBool); safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    procedure Set_HelpFile(const Value: WideString); safecall;
    procedure Set_KeyPreview(Value: WordBool); safecall;
    procedure Set_ParentCustomHint(Value: WordBool); safecall;
    procedure Set_ParentDoubleBuffered(Value: WordBool); safecall;
    procedure Set_PixelsPerInch(Value: Integer); safecall;
    procedure Set_PopupMode(Value: TxPopupMode); safecall;
    procedure Set_PrintScale(Value: TxPrintScale); safecall;
    procedure Set_Scaled(Value: WordBool); safecall;
    procedure Set_ScreenSnap(Value: WordBool); safecall;
    procedure Set_SnapBuffer(Value: Integer); safecall;
    procedure Set_UseDockManager(Value: WordBool); safecall;
    procedure Set_Visible(Value: WordBool); safecall;

    function InitCtrl(const RtxRoot: IDispatch): HResult; stdcall;
    function EnterExtTab: HResult; stdcall;
    function LeaveExtTab: HResult; stdcall;
  public
    { Public declarations }
    procedure Initialize; override;
  end;

implementation

{$R *.DFM}


uses
  ComObj,
  ComServ;

const
  ENTER_TAB_EVENT  = 'EnterExtTabEvent';
  LEAVE_TAB_EVENT  = 'LeaveExtTabEvent';
  RTX_MODULE_IDENTIFIER_ACTIONDEMO = 'Tencent.RTX.ActionDemo';

{ TProjectManagerTab }

// 插件的三个函数
function TProjectManagerTab.InitCtrl(const RtxRoot: IDispatch): HResult;
begin
  FRTXRoot := RtxRoot as IRTXCRoot;
  Result := S_OK;
end;

function TProjectManagerTab.LeaveExtTab: HResult;
var
  LRtxData: IRTXCData;
  LEventCenter: IRTXCEventCenter;
begin
  LRtxData := FRTXRoot.CreateRTXCData;
  LRtxData.SetString('NotifyContent', '收到LeaveExtTab通知来自Delphi');
  LEventCenter := FRTXRoot.RTXCEventCenter;
  LEventCenter.FireModuleEvent(LEAVE_TAB_EVENT, FRTXRoot.Module[RTX_MODULE_IDENTIFIER_ACTIONDEMO], LRtxData);
  Result := S_OK;
end;

function TProjectManagerTab.EnterExtTab: HResult;
var
  LRtxData: IRTXCData;
  LEventCenter: IRTXCEventCenter;
begin
  LRtxData := FRTXRoot.CreateRTXCData;
  LRtxData.SetString('NotifyContent', '收到EnterExtTab通知来自Delphi');
  LEventCenter := FRTXRoot.RTXCEventCenter;
  LEventCenter.FireModuleEvent(LEAVE_TAB_EVENT, FRTXRoot.Module[RTX_MODULE_IDENTIFIER_ACTIONDEMO], LRtxData);
  Result := S_OK;
end;


procedure TProjectManagerTab.DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage);
begin
  { Define property pages here.  Property pages are defined by calling
    DefinePropertyPage with the class id of the page.  For example,
      DefinePropertyPage(Class_ProjectManagerTabPage); }
end;

procedure TProjectManagerTab.EventSinkChanged(const EventSink: IUnknown);
begin
  FEvents := EventSink as IProjectManagerTabEvents;
  inherited EventSinkChanged(EventSink);
end;

procedure TProjectManagerTab.Initialize;
begin
  inherited Initialize;
  OnActivate := ActivateEvent;
  OnClick := ClickEvent;
  OnCreate := CreateEvent;
  OnDblClick := DblClickEvent;
  OnDeactivate := DeactivateEvent;
  OnDestroy := DestroyEvent;
  OnKeyPress := KeyPressEvent;
  OnMouseEnter := MouseEnterEvent;
  OnMouseLeave := MouseLeaveEvent;
  OnPaint := PaintEvent;
end;

function TProjectManagerTab.Get_Active: WordBool;
begin
  Result := Active;
end;

function TProjectManagerTab.Get_AlignDisabled: WordBool;
begin
  Result := AlignDisabled;
end;

function TProjectManagerTab.Get_AlignWithMargins: WordBool;
begin
  Result := AlignWithMargins;
end;

function TProjectManagerTab.Get_AutoScroll: WordBool;
begin
  Result := AutoScroll;
end;

function TProjectManagerTab.Get_AutoSize: WordBool;
begin
  Result := AutoSize;
end;

function TProjectManagerTab.Get_AxBorderStyle: TxActiveFormBorderStyle;
begin
  Result := Ord(AxBorderStyle);
end;

function TProjectManagerTab.Get_BorderWidth: Integer;
begin
  Result := Integer(BorderWidth);
end;

function TProjectManagerTab.Get_Caption: WideString;
begin
  Result := WideString(Caption);
end;

function TProjectManagerTab.Get_Color: OLE_COLOR;
begin
  Result := OLE_COLOR(Color);
end;

function TProjectManagerTab.Get_DockSite: WordBool;
begin
  Result := DockSite;
end;

function TProjectManagerTab.Get_DoubleBuffered: WordBool;
begin
  Result := DoubleBuffered;
end;

function TProjectManagerTab.Get_DropTarget: WordBool;
begin
  Result := DropTarget;
end;

function TProjectManagerTab.Get_Enabled: WordBool;
begin
  Result := Enabled;
end;

function TProjectManagerTab.Get_ExplicitHeight: Integer;
begin
  Result := ExplicitHeight;
end;

function TProjectManagerTab.Get_ExplicitLeft: Integer;
begin
  Result := ExplicitLeft;
end;

function TProjectManagerTab.Get_ExplicitTop: Integer;
begin
  Result := ExplicitTop;
end;

function TProjectManagerTab.Get_ExplicitWidth: Integer;
begin
  Result := ExplicitWidth;
end;

function TProjectManagerTab.Get_Font: IFontDisp;
begin
  GetOleFont(Font, Result);
end;

function TProjectManagerTab.Get_HelpFile: WideString;
begin
  Result := WideString(HelpFile);
end;

function TProjectManagerTab.Get_KeyPreview: WordBool;
begin
  Result := KeyPreview;
end;

function TProjectManagerTab.Get_MouseInClient: WordBool;
begin
  Result := MouseInClient;
end;

function TProjectManagerTab.Get_ParentCustomHint: WordBool;
begin
  Result := ParentCustomHint;
end;

function TProjectManagerTab.Get_ParentDoubleBuffered: WordBool;
begin
  Result := ParentDoubleBuffered;
end;

function TProjectManagerTab.Get_PixelsPerInch: Integer;
begin
  Result := PixelsPerInch;
end;

function TProjectManagerTab.Get_PopupMode: TxPopupMode;
begin
  Result := Ord(PopupMode);
end;

function TProjectManagerTab.Get_PrintScale: TxPrintScale;
begin
  Result := Ord(PrintScale);
end;

function TProjectManagerTab.Get_Scaled: WordBool;
begin
  Result := Scaled;
end;

function TProjectManagerTab.Get_ScreenSnap: WordBool;
begin
  Result := ScreenSnap;
end;

function TProjectManagerTab.Get_SnapBuffer: Integer;
begin
  Result := SnapBuffer;
end;

function TProjectManagerTab.Get_UseDockManager: WordBool;
begin
  Result := UseDockManager;
end;

function TProjectManagerTab.Get_Visible: WordBool;
begin
  Result := Visible;
end;

function TProjectManagerTab.Get_VisibleDockClientCount: Integer;
begin
  Result := VisibleDockClientCount;
end;

procedure TProjectManagerTab._Set_Font(var Value: IFontDisp);
begin
  SetOleFont(Font, Value);
end;

procedure TProjectManagerTab.ActivateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnActivate;
end;

procedure TProjectManagerTab.ClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnClick;
end;

procedure TProjectManagerTab.CreateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnCreate;
end;

procedure TProjectManagerTab.DblClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDblClick;
end;

procedure TProjectManagerTab.DeactivateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDeactivate;
end;

procedure TProjectManagerTab.DestroyEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDestroy;
end;

procedure TProjectManagerTab.KeyPressEvent(Sender: TObject; var Key: Char);
var
  TempKey: Smallint;
begin
  TempKey := Smallint(Key);
  if FEvents <> nil then FEvents.OnKeyPress(TempKey);
  Key := Char(TempKey);
end;

procedure TProjectManagerTab.MouseEnterEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnMouseEnter;
end;

procedure TProjectManagerTab.MouseLeaveEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnMouseLeave;
end;

procedure TProjectManagerTab.PaintEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnPaint;
end;

procedure TProjectManagerTab.Set_AlignWithMargins(Value: WordBool);
begin
  AlignWithMargins := Value;
end;

procedure TProjectManagerTab.Set_AutoScroll(Value: WordBool);
begin
  AutoScroll := Value;
end;

procedure TProjectManagerTab.Set_AutoSize(Value: WordBool);
begin
  AutoSize := Value;
end;

procedure TProjectManagerTab.Set_AxBorderStyle(Value: TxActiveFormBorderStyle);
begin
  AxBorderStyle := TActiveFormBorderStyle(Value);
end;

procedure TProjectManagerTab.Set_BorderWidth(Value: Integer);
begin
  BorderWidth := TBorderWidth(Value);
end;

procedure TProjectManagerTab.Set_Caption(const Value: WideString);
begin
  Caption := TCaption(Value);
end;

procedure TProjectManagerTab.Set_Color(Value: OLE_COLOR);
begin
  Color := TColor(Value);
end;

procedure TProjectManagerTab.Set_DockSite(Value: WordBool);
begin
  DockSite := Value;
end;

procedure TProjectManagerTab.Set_DoubleBuffered(Value: WordBool);
begin
  DoubleBuffered := Value;
end;

procedure TProjectManagerTab.Set_DropTarget(Value: WordBool);
begin
  DropTarget := Value;
end;

procedure TProjectManagerTab.Set_Enabled(Value: WordBool);
begin
  Enabled := Value;
end;

procedure TProjectManagerTab.Set_Font(const Value: IFontDisp);
begin
  SetOleFont(Font, Value);
end;

procedure TProjectManagerTab.Set_HelpFile(const Value: WideString);
begin
  HelpFile := string(Value);
end;

procedure TProjectManagerTab.Set_KeyPreview(Value: WordBool);
begin
  KeyPreview := Value;
end;

procedure TProjectManagerTab.Set_ParentCustomHint(Value: WordBool);
begin
  ParentCustomHint := Value;
end;

procedure TProjectManagerTab.Set_ParentDoubleBuffered(Value: WordBool);
begin
  ParentDoubleBuffered := Value;
end;

procedure TProjectManagerTab.Set_PixelsPerInch(Value: Integer);
begin
  PixelsPerInch := Value;
end;

procedure TProjectManagerTab.Set_PopupMode(Value: TxPopupMode);
begin
  PopupMode := TPopupMode(Value);
end;

procedure TProjectManagerTab.Set_PrintScale(Value: TxPrintScale);
begin
  PrintScale := TPrintScale(Value);
end;

procedure TProjectManagerTab.Set_Scaled(Value: WordBool);
begin
  Scaled := Value;
end;

procedure TProjectManagerTab.Set_ScreenSnap(Value: WordBool);
begin
  ScreenSnap := Value;
end;

procedure TProjectManagerTab.Set_SnapBuffer(Value: Integer);
begin
  SnapBuffer := Value;
end;

procedure TProjectManagerTab.Set_UseDockManager(Value: WordBool);
begin
  UseDockManager := Value;
end;

procedure TProjectManagerTab.Set_Visible(Value: WordBool);
begin
  Visible := Value;
end;

initialization
  TActiveFormFactory.Create(
    ComServer,
    TActiveFormControl,
    TProjectManagerTab,
    Class_ProjectManagerTab,
    0,
    '',
    OLEMISC_SIMPLEFRAME or OLEMISC_ACTSLIKELABEL,
    tmApartment);
end.
