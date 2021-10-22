object Form1: TForm1
  Left = 757
  Top = 199
  BorderStyle = bsToolWindow
  Caption = '"X" x "O"'
  ClientHeight = 456
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sg: TStringGrid
    Left = 0
    Top = 0
    Width = 458
    Height = 456
    Align = alClient
    ColCount = 3
    DefaultColWidth = 150
    DefaultRowHeight = 150
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clFuchsia
    Font.Height = -133
    Font.Name = 'Courier New'
    Font.Style = [fsBold, fsItalic]
    Options = [goVertLine, goHorzLine]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
    OnSelectCell = sgSelectCell
  end
  object MainMenu1: TMainMenu
    Left = 592
    Top = 65528
    object File1: TMenuItem
      Caption = 'File'
      object NewGame1: TMenuItem
        Caption = 'New Game'
        object Setorqali1: TMenuItem
          Caption = 'Set orqali'
          ShortCut = 16462
          OnClick = Setorqali1Click
        end
        object Yagonakompyuterda1: TMenuItem
          Caption = 'Yagona kompyuterda'
          ShortCut = 16461
          OnClick = Yagonakompyuterda1Click
        end
      end
      object ugatish1: TMenuItem
        Caption = 'Tugatish'
        ShortCut = 27
        OnClick = ugatish1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Chiqish1: TMenuItem
        Caption = 'Chiqish'
        ShortCut = 32883
        OnClick = Chiqish1Click
      end
    end
    object Yordam1: TMenuItem
      Caption = 'Yordam'
      object Aftor1: TMenuItem
        Caption = 'Aftor'
        ShortCut = 112
        OnClick = Aftor1Click
      end
    end
  end
end
