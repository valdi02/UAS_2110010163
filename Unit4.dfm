object Form4: TForm4
  Left = 281
  Top = 156
  Width = 928
  Height = 480
  Caption = 'Form4'
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
  object Panel1: TPanel
    Left = -48
    Top = 40
    Width = 809
    Height = 417
    TabOrder = 0
    object Label1: TLabel
      Left = 160
      Top = 32
      Width = 38
      Height = 13
      Caption = 'T_siswa'
    end
    object Label2: TLabel
      Left = 104
      Top = 96
      Width = 40
      Height = 13
      Caption = 'id_siswa'
    end
    object Label3: TLabel
      Left = 104
      Top = 120
      Width = 14
      Height = 13
      Caption = 'Nis'
    end
    object Label4: TLabel
      Left = 104
      Top = 144
      Width = 20
      Height = 13
      Caption = 'Nisn'
    end
    object Label5: TLabel
      Left = 104
      Top = 168
      Width = 58
      Height = 13
      Caption = 'nama_siswa'
    end
    object Label6: TLabel
      Left = 104
      Top = 192
      Width = 13
      Height = 13
      Caption = 'nik'
    end
    object Label7: TLabel
      Left = 328
      Top = 96
      Width = 60
      Height = 13
      Caption = 'tempat_lahir'
    end
    object Label8: TLabel
      Left = 328
      Top = 120
      Width = 62
      Height = 13
      Caption = 'tanggal_lahir'
    end
    object Label9: TLabel
      Left = 328
      Top = 144
      Width = 63
      Height = 13
      Caption = 'jenis_kelamin'
    end
    object Label10: TLabel
      Left = 528
      Top = 96
      Width = 36
      Height = 13
      Caption = 'jurusan'
    end
    object Label11: TLabel
      Left = 328
      Top = 176
      Width = 24
      Height = 13
      Caption = 'kelas'
    end
    object Label12: TLabel
      Left = 528
      Top = 120
      Width = 32
      Height = 13
      Caption = 'alamat'
    end
    object Label13: TLabel
      Left = 528
      Top = 144
      Width = 18
      Height = 13
      Caption = 'telp'
    end
    object Edit1: TEdit
      Left = 200
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 200
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 200
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 200
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 200
      Top = 192
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 392
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Edit8: TEdit
      Left = 392
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object Edit9: TEdit
      Left = 392
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object Edit10: TEdit
      Left = 568
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object Edit11: TEdit
      Left = 568
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object Edit12: TEdit
      Left = 568
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object DBGrid1: TDBGrid
      Left = 128
      Top = 272
      Width = 569
      Height = 120
      DataSource = DataSource1
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
    object Button1: TButton
      Left = 112
      Top = 232
      Width = 75
      Height = 25
      Caption = 'add'
      TabOrder = 12
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 200
      Top = 232
      Width = 75
      Height = 25
      Caption = 'simpan'
      TabOrder = 13
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 288
      Top = 232
      Width = 75
      Height = 25
      Caption = 'edit'
      TabOrder = 14
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 376
      Top = 232
      Width = 75
      Height = 25
      Caption = 'hapus'
      TabOrder = 15
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 472
      Top = 232
      Width = 75
      Height = 25
      Caption = 'cancel'
      TabOrder = 16
      OnClick = Button5Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 392
      Top = 120
      Width = 121
      Height = 21
      Date = 45110.842048738430000000
      Time = 45110.842048738430000000
      TabOrder = 17
    end
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
    Left = 360
    Top = 360
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from t_siswa')
    Params = <>
    Left = 320
    Top = 360
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 144
    Top = 368
  end
end
