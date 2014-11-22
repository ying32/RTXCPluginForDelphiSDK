object frm_ManagerView: Tfrm_ManagerView
  Left = 0
  Top = 0
  Caption = #31649#29702#22120#35270#22270
  ClientHeight = 590
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 408
    Top = 69
    Width = 24
    Height = 13
    Caption = #26631#39064
  end
  object lbl2: TLabel
    Left = 408
    Top = 99
    Width = 24
    Height = 13
    Caption = #28040#24687
  end
  object lbl3: TLabel
    Left = 408
    Top = 42
    Width = 48
    Height = 13
    Caption = #25509#25910#32773#65306
  end
  object btn1: TButton
    Left = 566
    Top = 123
    Width = 75
    Height = 25
    Caption = 'Send tips'
    TabOrder = 5
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 456
    Top = 66
    Width = 185
    Height = 21
    TabOrder = 3
    Text = 'test'
  end
  object tv1: TTreeView
    Left = 24
    Top = 8
    Width = 305
    Height = 561
    DoubleBuffered = True
    Indent = 19
    ParentDoubleBuffered = False
    ReadOnly = True
    TabOrder = 0
    OnAdvancedCustomDrawItem = tv1AdvancedCustomDrawItem
    OnClick = tv1Click
  end
  object btn2: TButton
    Left = 351
    Top = 8
    Width = 75
    Height = 25
    Caption = #33719#21462#32452#20449#24687
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 566
    Top = 154
    Width = 75
    Height = 25
    Caption = 'SendIM'
    TabOrder = 6
    OnClick = btn3Click
  end
  object edt2: TEdit
    Left = 456
    Top = 96
    Width = 185
    Height = 21
    TabOrder = 4
    Text = 'test message!!!'
  end
  object edt3: TEdit
    Left = 456
    Top = 39
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object mmo1: TMemo
    Left = 351
    Top = 240
    Width = 290
    Height = 329
    TabOrder = 7
  end
end
