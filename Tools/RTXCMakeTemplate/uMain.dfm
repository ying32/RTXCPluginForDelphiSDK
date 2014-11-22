object frmRTXCMakeTemplate: TfrmRTXCMakeTemplate
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RTX'#23458#25143#31471#20108#27425#24320#21457#27169#26495#29983#25104#24037#20855
  ClientHeight = 110
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 16
    Top = 8
    Width = 298
    Height = 89
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 16
      Width = 40
      Height = 13
      Caption = #24037#31243#21517':'
    end
    object edt_ProjectName: TEdit
      Left = 16
      Top = 45
      Width = 185
      Height = 21
      TabOrder = 2
    end
    object btn_Make: TButton
      Left = 210
      Top = 42
      Width = 75
      Height = 25
      Caption = #29983#25104
      TabOrder = 1
      OnClick = btn_MakeClick
    end
    object chk_MakeActiveX: TCheckBox
      Left = 119
      Top = 14
      Width = 130
      Height = 17
      Caption = #21516#26102#29983#25104'ActiveX'#27169#29256
      TabOrder = 0
    end
  end
end
