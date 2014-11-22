unit ufrmEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, uCommon;

type
  Tfrm_Editor = class(TForm)
    lbl1: TLabel;
    edt_Subject: TEdit;
    rg_SeltipType: TRadioGroup;
    lbl2: TLabel;
    dtp_Date: TDateTimePicker;
    lbl3: TLabel;
    mmo_Body: TMemo;
    lbl4: TLabel;
    lbl5: TLabel;
    lst_Receivers: TListBox;
    lst_groupdetail: TListBox;
    btn_RightAdd: TSpeedButton;
    btn_LeftDelete: TSpeedButton;
    dtp_Time: TDateTimePicker;
    cbb_Group: TComboBox;
    lbl6: TLabel;
    btn_Ok: TButton;
    btn_Cancel: TButton;
    lbl7: TLabel;
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb_GroupChange(Sender: TObject);
    procedure lst_ReceiversDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lst_ReceiversDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure btn_RightAddClick(Sender: TObject);
    procedure btn_LeftDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lst_groupdetailDblClick(Sender: TObject);
    procedure lst_ReceiversClick(Sender: TObject);
  private

  public
    procedure UpdateShowData(AItem: TTipsRec);
    procedure clear;
  end;

var
  frm_Editor: Tfrm_Editor;

implementation

{$R *.dfm}

uses

  ufrmMainForm;




procedure Tfrm_Editor.btn_CancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Editor.btn_LeftDeleteClick(Sender: TObject);
begin
  lst_Receivers.DeleteSelected;
end;

procedure Tfrm_Editor.btn_OkClick(Sender: TObject);
var
  s: string;
begin
  s := StringReplace(lst_Receivers.Items.Text, #13#10, ';', [rfReplaceAll]);
  if s <> '' then
    System.Delete(s, Length(s), 1);
  if Tag = 1 then
    frm_Main.AddTips(edt_Subject.Text,
                     mmo_Body.Text,
                     rg_SeltipType.ItemIndex,
                     dtp_Date.Date,
                     dtp_Time.Time,
                     s)
  else
    frm_Main.UpdateTips(edt_Subject.Text,
                     mmo_Body.Text,
                     rg_SeltipType.ItemIndex,
                     dtp_Date.Date,
                     dtp_Time.Time,
                     s);
  Close;
end;

procedure Tfrm_Editor.btn_RightAddClick(Sender: TObject);
var
  I: Integer;
begin
  if lst_groupdetail.SelCount > 0 then
  begin
    for I := 0 to lst_groupdetail.Count - 1 do
    begin
      if lst_groupdetail.Selected[I] then
        if lst_Receivers.Items.IndexOf(lst_groupdetail.Items[I]) = -1 then
          lst_Receivers.Items.Add(lst_groupdetail.Items[I]);
    end;
  end;
end;

procedure Tfrm_Editor.cbb_GroupChange(Sender: TObject);
begin
  if cbb_Group.ItemIndex <> -1 then
  begin
    lst_groupdetail.Clear;
    GetDeptUser(Integer(cbb_Group.Items.Objects[cbb_Group.ItemIndex]), lst_groupdetail.Items);
  end;
end;

procedure Tfrm_Editor.clear;
begin
  edt_Subject.Clear;
  mmo_Body.Clear;
  rg_SeltipType.ItemIndex := 0;
  lst_Receivers.Clear;
  dtp_Date.Date := Date;
  dtp_Time.Time := Time;
end;

procedure Tfrm_Editor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.clear;
end;

procedure Tfrm_Editor.FormCreate(Sender: TObject);
begin
  dtp_Date.Date := Date;
  dtp_Time.Time := Time;
end;

procedure Tfrm_Editor.FormShow(Sender: TObject);
begin
 cbb_Group.Clear;
 GetBuddyList(10000001, cbb_Group.Items);
end;

procedure Tfrm_Editor.lst_groupdetailDblClick(Sender: TObject);
begin
  btn_RightAdd.Click;
end;

procedure Tfrm_Editor.lst_ReceiversClick(Sender: TObject);
begin
  btn_LeftDelete.Click;
end;

procedure Tfrm_Editor.lst_ReceiversDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  I: Integer;
begin
  if Source = lst_groupdetail then
  begin
    if lst_groupdetail.SelCount > 0 then
    begin
      for I := 0 to lst_groupdetail.Count - 1 do
      begin
        if lst_groupdetail.Selected[I] then
          if lst_Receivers.Items.IndexOf(lst_groupdetail.Items[I]) = -1 then
            lst_Receivers.Items.Add(lst_groupdetail.Items[I]);
      end;
    end;
  end;
end;

procedure Tfrm_Editor.lst_ReceiversDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure Tfrm_Editor.UpdateShowData(AItem: TTipsRec);
begin
  edt_Subject.Text := AItem.Subject;
  rg_SeltipType.ItemIndex := Aitem.TipsType;
  dtp_Date.Date := AItem.mDate;
  dtp_Time.Time := AItem.mTime;
  mmo_Body.Text := AItem.Body;
  lst_Receivers.Items.Text := StringReplace(AItem.Receivers, ';', #13#10, [rfReplaceAll]);
end;

end.
