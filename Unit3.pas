unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    Button5: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id:string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm3.posisiawal;
begin
  bersih;
  Button1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button4.Enabled := False;
  Button5.Enabled := False;
  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := False;
end;

procedure TForm3.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  bersih;
  Button1.Enabled := False;
  Button2.Enabled := True;
  Button3.Enabled := False;
  Button4.Enabled := False;
  Button5.Enabled := False;
  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('ID_Kelas TIDAK BOLEH KOSONG!');
  end
  else if Edit2.Text = '' then
  begin
    ShowMessage('Nama Kelas TIDAK BOLEH KOSONG!');
  end
  else if Edit3.Text = '' then
  begin
    ShowMessage('Jurusan TIDAK BOLEH KOSONG!');
  end
  else
  begin
    // Simpan
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO kelas VALUES ("' + Edit1.Text + '", "' + Edit2.Text + '", "' + Edit3.Text + '")');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM kelas');
    ZQuery1.Open;

    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiawal;
  end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if Edit3.Text = ZQuery1.Fields[2].AsString then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!'); // Update
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE kelas SET id_kelas = "' + Edit1.Text + '", Namakelas = "' + Edit2.Text + '", Jurusan = "' + Edit3.Text + '" WHERE id_kelas = "' + Edit1.Text+ '"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM kelas');
    ZQuery1.Open;
    posisiawal;
  end;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin


  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('DELETE FROM kelas WHERE id_kelas = "' + Edit1.Text + '"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM kelas');
    ZQuery1.Open;

    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
  end
  else
  begin
    ShowMessage('DATA BATAL DIHAPUS');
  end;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
  // DBGrid
  Edit1.Text := ZQuery1.Fields[0].AsString;
  Edit2.Text := ZQuery1.Fields[1].AsString;
  Edit3.Text := ZQuery1.Fields[2].AsString;

  Edit1.Enabled := false;
  Edit2.Enabled := True;
  Edit3.Enabled := True;

  Button1.Enabled := False;
  Button2.Enabled := False;
  Button3.Enabled := True;
  Button4.Enabled := True;
  Button5.Enabled := True;

end;

procedure TForm3.Button4Click(Sender: TObject);
begin
   posisiawal;
end;

end.

