object Form2: TForm2
  Left = -3
  Top = 176
  Width = 928
  Height = 480
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 56
    Top = 56
    object Kelas1: TMenuItem
      Caption = 'Kelas'
      OnClick = Kelas1Click
    end
    object siswa1: TMenuItem
      Caption = 'Siswa'
      OnClick = siswa1Click
    end
  end
end
