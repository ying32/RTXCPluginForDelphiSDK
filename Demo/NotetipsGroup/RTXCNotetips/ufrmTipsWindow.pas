unit ufrmTipsWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.MMSystem, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList, Vcl.Buttons;

type
  Tfrm_TipsWindow = class(TForm)
    img1: TImage;
    il1: TImageList;
    lbl_Title: TLabel;
    pb1: TPaintBox;
    lbl_Subject: TLabel;
    mmo_Body: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure pb1Paint(Sender: TObject);
    procedure pb1MouseEnter(Sender: TObject);
    procedure pb1MouseLeave(Sender: TObject);
    procedure pb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pb1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_TitleMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl_TitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pb1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FImageIndex:Integer;
    FIsDown: Boolean;
    FX, FY: Integer;
  public
    { Public declarations }
  end;



  procedure ShowTipsWindow(const ASender, ASubject, ABody: string);
implementation

{$R *.dfm}

uses
  System.Types;

type
  PWindowList = ^TWindowList;
  TWindowList = record
    Window: Pointer;
    Point: TPoint;
  end;

var
  uWindowList: TList;
  uRTXCDir: string;

const
  DefaultSize: TSize = (cx: 268; cy: 161);

procedure InitPositionTable;
var
  H, V, I, J{, L, T}: Integer;
  LWH, LWW: Integer;
  Item: PWindowList;
begin
  LWH := Screen.WorkAreaHeight - 3;
  LWW := Screen.WorkAreaWidth - 3;
  H := LWW div DefaultSize.cx;
  V := LWH div DefaultSize.cy;
  for I := 1 to H do
  begin
    for J := 1 to V do
    begin
      New(Item);
      Item^.Point.Y := LWH - ((DefaultSize.cy * J)) - 3 * J;
      Item^.Point.X := LWW - ((DefaultSize.cx * I)) - 3 * I;
      Item^.Window := nil;
      uWindowList.Add(Item);
    end;
  end;
end;

function GetRTXCDir: string;
begin
  Result := ExtractFileDir(GetModuleName(HInstance));
  Result := ExtractFileDir(Result);
  Result := ExtractFileDir(Result);
end;

procedure ShowTipsWindow(const ASender, ASubject, ABody: string);
var
  I: Integer;
  Item: PWindowList;
  Obj: Tfrm_TipsWindow;
begin
  for I := 0 to uWindowList.Count - 1 do
  begin
    Item := uWindowList[I];
    if not Assigned(Item^.Window) then
    begin
      PlaySound(PChar(uRTXCDir + '\sound\Global.wav'), 0, SND_FILENAME or SND_ASYNC);

      Obj := Tfrm_TipsWindow.Create(nil);
      if Assigned(Obj) then
      begin
        if ASubject = '' then
          Obj.lbl_Subject.Caption := ASender
        else
          Obj.lbl_Subject.Caption := ASender + ' - ' +  ASubject;
        Obj.mmo_Body.Text := ABody;
        Obj.SetBounds(Item^.Point.X, Item^.Point.Y, DefaultSize.cx, DefaultSize.cy);
        Obj.Show;
        Item.Window := Obj;
        Exit;
      end;
    end;
  end;
end;

procedure FreeWindows;
var
  I: Integer;
  Obj: PWindowList;
begin
  for I := 0 to uWindowList.Count - 1 do
  begin
    Obj := uWindowList[I];
    if Obj^.Window <> nil then
      FreeAndNil(Obj^.Window);
    Dispose(Obj);
  end;
  uWindowList.Clear;
end;

procedure FreeWindowObj(Obj: Tfrm_TipsWindow);
var
  I: Integer;
  Item: PWindowList;
begin
  for I := 0 to uWindowList.Count - 1 do
  begin
    Item := uWindowList[I];
    if (Obj = Item^.Window) and (Item^.Window <> nil) then
    begin
      FreeAndNil(Tfrm_TipsWindow(Item^.Window));
      Exit;
    end;
  end;
end;

procedure Tfrm_TipsWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeWindowObj(Self);
end;

procedure Tfrm_TipsWindow.FormCreate(Sender: TObject);
begin
  SetWindowLong(Self.Handle, GWL_EXSTYLE, WS_EX_TOOLWINDOW);
end;

procedure Tfrm_TipsWindow.lbl_TitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    FIsDown := True;
    FX := X;
    FY := Y;
  end;
end;

procedure Tfrm_TipsWindow.lbl_TitleMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if FIsDown then
  begin
    Left := Left + ((lbl_Title.Left + X) - (lbl_Title.Left + FX));
    Top := Top + ((lbl_Title.Top + Y) - (lbl_Title.Top + FY));
  end;
end;

procedure Tfrm_TipsWindow.lbl_TitleMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FIsDown := False;
end;

procedure Tfrm_TipsWindow.pb1Click(Sender: TObject);
begin
  { TODO -oying32 -ctips : 只能使用API发送一个关闭消息, 否则会报内存访问错误 }
  PostMessage(Self.Handle, WM_CLOSE, 0, 0);
end;

procedure Tfrm_TipsWindow.pb1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FImageIndex := 2;
  pb1.Repaint;
end;

procedure Tfrm_TipsWindow.pb1MouseEnter(Sender: TObject);
begin
  FImageIndex := 1;
  pb1.Repaint;
end;

procedure Tfrm_TipsWindow.pb1MouseLeave(Sender: TObject);
begin
  FImageIndex := 0;
  pb1.Repaint;
end;

procedure Tfrm_TipsWindow.pb1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FImageIndex := 1;
  pb1.Repaint;
end;

procedure Tfrm_TipsWindow.pb1Paint(Sender: TObject);
begin
  il1.Draw(pb1.Canvas, 0, 0, FImageIndex);
end;

initialization
  uWindowList := TList.Create;
  InitPositionTable;
  uRTXCDir := GetRTXCDir;

finalization
  FreeWindows;
  uWindowList.Free;



end.
