object Form3: TForm3
  Left = 262
  Top = 185
  Width = 928
  Height = 480
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 16
    Width = 30
    Height = 13
    Caption = 'KELAS'
  end
  object Label2: TLabel
    Left = 96
    Top = 80
    Width = 40
    Height = 13
    Caption = 'Id_kelas'
  end
  object Label3: TLabel
    Left = 96
    Top = 120
    Width = 55
    Height = 13
    Caption = 'Nama Kelas'
  end
  object Label5: TLabel
    Left = 96
    Top = 152
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Edit1: TEdit
    Left = 192
    Top = 80
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 112
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 192
    Top = 144
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 128
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 288
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 456
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 6
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 248
    Width = 320
    Height = 120
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button5: TButton
    Left = 376
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 8
    OnClick = Button5Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'admin'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\projek_uas\libmy' +
      'sql.dll'
    Left = 376
    Top = 256
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 376
    Top = 296
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 144
    Top = 336
  end
end
