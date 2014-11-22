unit ufrmMsgTips;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrm_MsgTips = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_MsgTips: Tfrm_MsgTips;

  procedure ShowTipsMessage(ACaption: string; AUser: string; AMsg: string);
implementation

{$R *.dfm}

procedure ShowTipsMessage(ACaption: string; AUser: string; AMsg: string);
begin
  if Assigned(frm_MsgTips) then
  begin
    frm_MsgTips.Caption := ACaption;
    frm_MsgTips.pnl1.Caption := AUser;
    frm_MsgTips.lbl1.Caption := AMsg;

    frm_MsgTips.SetBounds(Screen.WorkAreaWidth - frm_MsgTips.Width - 1, Screen.WorkAreaHeight - frm_MsgTips.Height - 1, frm_MsgTips.Width, frm_MsgTips.Height);
    frm_MsgTips.Show;
  end;
end;

end.
