object Form2: TForm2
  Left = 480
  Top = 114
  BorderStyle = bsToolWindow
  Caption = 'Bog'#39'lanish'
  ClientHeight = 232
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 349
    Height = 232
    ActivePage = TabSheet1
    Align = alClient
    HotTrack = True
    MultiLine = True
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Server'
      object Edit2: TEdit
        Left = 112
        Top = 24
        Width = 121
        Height = 32
        BevelInner = bvSpace
        BevelKind = bkFlat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Admin'
      end
      object Button2: TButton
        Left = 112
        Top = 96
        Width = 121
        Height = 57
        Caption = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Foydalanuvchi'
      ImageIndex = 1
      object MaskEdit1: TMaskEdit
        Left = 72
        Top = 80
        Width = 201
        Height = 37
        EditMask = '000.000.000.000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        TabOrder = 0
        Text = '   .   .   .   '
      end
      object Edit1: TEdit
        Left = 112
        Top = 24
        Width = 121
        Height = 32
        BevelInner = bvSpace
        BevelKind = bkFlat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'User'
      end
      object Button1: TButton
        Left = 112
        Top = 136
        Width = 121
        Height = 57
        Caption = 'Connect'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
end
