unit ufrmMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls, RTXCAPILib_TLB, SuperObject, uCommon,
  System.Generics.Collections;

type
  Tfrm_Main = class(TForm)
    pnl1: TPanel;
    btnNew: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDelete: TSpeedButton;
    pnl2: TPanel;
    lv_List: TListView;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    mmo_body: TMemo;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl_subject: TLabel;
    lbl_tipsdatetime: TLabel;
    lbl3: TLabel;
    edt_Receivers: TEdit;
    tmr_checktips: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure lv_ListClick(Sender: TObject);
    procedure tmr_checktipsTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
    procedure lv_ListDblClick(Sender: TObject);
    procedure lv_ListAdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
  private

    FFileName: string;
    FCurIndex: Integer;
    procedure SendTipsMessage(const Receiver, ATitle, AMsg: string);
    procedure AddToListView(AItem: TTipsRec);
    procedure CheckTips;
  public
    procedure Init(ARoot: IRTXCRoot);
    procedure InitModuleSite(AModuleSite: IRTXCModuleSite);

    procedure AddTips(ASubject, ABody: string; ATypes: Integer; ADate: TDate; ATime: TTime; Receivers: string);
    procedure UpdateTips(ASubject, ABody: string; ATypes: Integer; ADate: TDate; ATime: TTime; Receivers: string);
  end;

var
  frm_Main: Tfrm_Main;


  procedure GetBuddyList(DeptId: Integer; AItem: TStrings);
  procedure GetDeptUser(DeptId: Integer; AItem: TStrings);
implementation

{$R *.dfm}

uses
  ComObj,
  DateUtils,
  RTXC.Consts,
  ufrmEditor;

var
  FRTXRoot: IRTXCRoot;
  FRTXModuleSite: IRTXCModuleSite;
  FList: TList<TTipsRec>;

//procedure SendTipsMessage(const Receiver, ATitle, AMsg: string); forward;


function WeekToStr(AWeek: Word): string;
begin
  case AWeek of
    1 : Result := '星期日';
    2 : Result := '星期一';
    3 : Result := '星期二';
    4 : Result := '星期三';
    5 : Result := '星期四';
    6 : Result := '星期五';
    7 : Result := '星期六';
  end;
end;

procedure GetBuddyList(DeptId: Integer; AItem: TStrings);
var
  MyBuddy: IRTXCRTXGroupManager;
  MyRtxBuddy: IRTXCRTXGroup;
  I: Integer;
begin
  try
    MyBuddy := FRTXRoot.RTXGroupManager;
    MyRtxBuddy := MyBuddy.Group[DeptId];
    for I := 1 to MyRtxBuddy.Groups.Count do
    begin
      Application.ProcessMessages;
      AItem.AddObject(MyRtxBuddy.Groups.Item[I].Name, TObject(MyRtxBuddy.Groups.Item[I].Id));
      GetBuddyList(MyRtxBuddy.Groups.Item[I].Id, AItem);
    end;
  except
  end;
end;


procedure GetDeptUser(DeptId: Integer; AItem: TStrings);
var
  MyBuddy: IRTXCRTXGroupManager;
  MyRtxBuddy: IRTXCRTXGroup;
  I: Integer;
begin
  try
    MyBuddy := FRTXRoot.RTXGroupManager;
    MyRtxBuddy := MyBuddy.Group[DeptId];
    for I := 1 to MyRtxBuddy.Buddies.Count do
    begin
      Application.ProcessMessages;
      AItem.Add(MyRtxBuddy.Buddies.Item[I].Account);
    end;
  except
  end;
end;

function ChkReceiverIsNull(const s: string): string; inline;
begin
  if Assigned(FRTXRoot) then
  begin
    if Length(s) = 0 then
      Result := FRTXRoot.Account
    else Result := s;
  end else Result := '';
end;

function CmpTime(ATime1, ATime2: TTime): Boolean; inline;
var
  H, M, S, MS, H2, M2, S2: Word;
begin
  DecodeTime(ATime1, H, M, S, MS);
  DecodeTime(ATime2, H2, M2, S2, MS);
  Result := (H = H2) and (M = M2) and (S = S2);
end;

function CmpDate(ATime1, ATime2: TDate): Boolean; inline;
var
  Y, M, D, Y2, M2, D2: Word;
begin
  DecodeDate(ATime1, Y, M, D);
  DecodeDate(ATime2, Y2, M2, D2);
  Result := (Y = Y2) and (M = M2) and (D = D2);
end;

procedure Tfrm_Main.CheckTips;
var
  Item: TTipsRec;
begin
  try
    if Assigned(FList) and Assigned(FRTXModuleSite) then
    begin
      for Item in FList do
      begin
        case Item.TipsType of
          0 :    // 单次
            begin
              if CmpTime(Item.mTime, Time) and CmpDate(Item.mDate, Date) then
                SendTipsMessage(ChkReceiverIsNull(Item.Receivers), Item.Subject, Item.Body);
            end;
          1 :    // 每天
            begin
              if CmpTime(Item.mTime, Time) then
                SendTipsMessage(ChkReceiverIsNull(Item.Receivers), Item.Subject, Item.Body);
            end;
          2 :    // 每周
            begin
              if  CmpTime(Item.mTime, Time) and (DayOfWeek(Item.mDate) = DayOfWeek(Date)) then
                SendTipsMessage(ChkReceiverIsNull(Item.Receivers), Item.Subject, Item.Body);
            end;
        end;
      end;
    end;
  except
  end;
end;

{ Tfrm_Main }

procedure Tfrm_Main.AddTips(ASubject, ABody: string; ATypes: Integer;
  ADate: TDate; ATime: TTime; Receivers: string);
var
  Item: TTipsRec;
begin
  Item.Subject := ASubject;
  Item.TipsType := ATypes;
  Item.mDate := ADate;
  Item.mTime := ATime;
  Item.Body := ABody;
  Item.Receivers := Receivers;
  FList.Add(Item);
  AddToListView(Item);
  lv_List.Refresh;
end;

procedure Tfrm_Main.UpdateTips(ASubject, ABody: string; ATypes: Integer;
  ADate: TDate; ATime: TTime; Receivers: string);
var
  Item: TTipsRec;
begin
  if FCurIndex <> -1 then
  begin
    Item.Subject := ASubject;
    Item.TipsType := ATypes;
    Item.mDate := ADate;
    Item.mTime := ATime;
    Item.Body := ABody;
    Item.Receivers := Receivers;
    FList[FCurIndex] := Item;
    lv_List.Items.Item[FCurIndex].Caption := Item.Subject;
    lv_List.Items.Item[FCurIndex].SubItems[0] := DateToStr(Item.mDate) + ' ' + TimeToStr(Item.mTime);

    case Item.TipsType of
      0 : lv_List.Items.Item[FCurIndex].SubItems[0] := DateToStr(Item.mDate) + ' ' + TimeToStr(Item.mTime);
      1 : lv_List.Items.Item[FCurIndex].SubItems[0] := TimeToStr(Item.mTime);
      2 : lv_List.Items.Item[FCurIndex].SubItems[0] := WeekToStr(DayOfWeek(Item.mDate)) + ' ' + TimeToStr(Item.mTime);
    end;

    lv_List.Refresh;
  end;
end;

procedure Tfrm_Main.AddToListView(AItem: TTipsRec);
var
  ListItem: TListItem;
begin
  ListItem := lv_List.Items.Add;
  ListItem.Caption := AItem.Subject;
  case AItem.TipsType of
    0 : ListItem.SubItems.Add(DateToStr(AItem.mDate) + ' ' + TimeToStr(AItem.mTime));
    1 : ListItem.SubItems.Add(TimeToStr(AItem.mTime));
    2 : ListItem.SubItems.Add(WeekToStr(DayOfWeek(AItem.mDate)) + ' ' + TimeToStr(AItem.mTime));
  end;
end;

procedure Tfrm_Main.btnDeleteClick(Sender: TObject);
begin
  if FCurIndex <> -1 then
  begin
    FList.Delete(FCurIndex);
    lv_List.Items.Delete(FCurIndex);
  end;
end;

procedure Tfrm_Main.btnEditClick(Sender: TObject);
begin
  if FCurIndex <> -1 then
  begin
    frm_Editor.Tag := 2;
    frm_Editor.Caption := '编辑';
    frm_Editor.Show;
    frm_Editor.UpdateShowData(FList[FCurIndex]);
  end;
end;

procedure Tfrm_Main.btnNewClick(Sender: TObject);
begin
//  if frm_Editor.Visible then Exit;
  frm_Editor.Tag := 1;
  frm_Editor.Caption := '新建';
  frm_Editor.Show;
  frm_Editor.clear;
end;

procedure Tfrm_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmr_checktips.Enabled := False;
end;

procedure Tfrm_Main.FormCreate(Sender: TObject);
var
  Item: TTipsRec;
begin
  frm_Editor := Tfrm_Editor.Create(nil);
  lbl_subject.Caption := '';
  lbl_tipsdatetime.Caption := '';
  edt_Receivers.Clear;

  FCurIndex := -1;

  FList := TList<TTipsRec>.Create;

  FFileName := ExtractFilePath(GetModuleName(HInstance)) + 'Config.json';
  if FileExists(FFileName) then
  begin
    TTipsRec.JSONFileToList(FFileName, FList);
    for Item in FList do
      AddToListView(Item);
  end;

  tmr_checktips.Enabled := True;
end;

procedure Tfrm_Main.FormDestroy(Sender: TObject);
begin
  TTipsRec.ListToJSONFile(FFileName, FList);
  FList.Free;
  frm_Editor.Free;
end;

procedure Tfrm_Main.Init(ARoot: IRTXCRoot);
begin
  FRTXRoot := ARoot;
end;

procedure Tfrm_Main.InitModuleSite(AModuleSite: IRTXCModuleSite);
begin
  FRTXModuleSite := AModuleSite;
end;


function CmpTime2(A, B: TTime): Boolean; inline;
begin
  Result := DateTimeToTimeStamp(A).Time <= DateTimeToTimeStamp(B).Time;
end;

function CmpDate2(A, B: TDate): Boolean; inline;
begin
  Result := DateTimeToTimeStamp(A).Date <= DateTimeToTimeStamp(B).Date;
end;

procedure Tfrm_Main.lv_ListAdvancedCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
var
  LItem: TTipsRec;
  LColor: TColor;
begin
  if FList.Count > 0 then
    if Item.Index < FList.Count then
    begin
      LItem := FList[Item.Index];
      LColor := clGreen;
      case LItem.TipsType of
        0 :    // 单次
          begin
            if CmpDate2(LItem.mDate, Date) and CmpTime2(LItem.mTime, Time) then
              LColor := cl3DLight;
          end;
        1 :    // 每天
          begin
            if CmpTime2(LItem.mTime, Time) then
              LColor := cl3DLight;
          end;
        2 :    // 每周
          begin
            if  CmpTime2(LItem.mTime, Time) and (DayOfWeek(LItem.mDate) = DayOfWeek(Date)) then
              LColor := cl3DLight;
          end;
      end;
      Sender.Canvas.Font.Color := LColor;
      if LColor = cl3DLight then
        Sender.Canvas.Font.Style := [TFontStyle.fsStrikeOut]
      else Sender.Canvas.Font.Style := [];
    end;
end;

procedure Tfrm_Main.lv_ListClick(Sender: TObject);
var
  Item: TListItem;
  TipsItem: TTipsRec;
begin
  FCurIndex := lv_List.ItemIndex;;
  Item := lv_List.Selected;
  if Assigned(Item) then
  begin
    TipsItem := FList[Item.Index];
    lbl_subject.Caption := TipsItem.Subject;
    lbl_tipsdatetime.Caption := DateToStr(TipsItem.mDate) + ' ' + TimeToStr(TipsItem.mTime);
    edt_Receivers.Text := TipsItem.Receivers;
    mmo_body.Text := TipsItem.Body;
  end;
end;

procedure Tfrm_Main.lv_ListDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure Tfrm_Main.tmr_checktipsTimer(Sender: TObject);
begin
  CheckTips;
end;

procedure Tfrm_Main.SendTipsMessage(const Receiver, ATitle, AMsg: string);
var
  LData: IRTXCData;
begin
  try
    if Length(Receiver) = 0 then Exit;
    LData := FRTXRoot.CreateRTXCData;
    LData.SetString(RDK_KEY, GUIDToString(TGuid.NewGuid));
    LData.SetString(RDK_TITLE, ATitle);
    LData.SetString(RDK_MSG_CONTENT, AMsg);
    FRTXModuleSite.SendData(Receiver, LData, RTXC_SEND_DATA_FLAG_FILTERING_IS_FORBIDDEN);
    lv_List.Refresh;
  except
    OutputDebugString('send error');
  end;
end;



end.
