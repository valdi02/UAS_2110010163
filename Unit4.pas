unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id: string;
  tanggalLahir: string;

implementation

{$R *.dfm}

procedure TForm4.posisiawal;
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
  Edit4.Enabled := False;
  Edit5.Enabled := False;
  Edit6.Enabled := False;
  DateTimePicker1.Enabled := False;
  Edit8.Enabled := False;
  Edit9.Enabled := False;
  Edit10.Enabled := False;
  Edit11.Enabled := False;
  Edit12.Enabled := False;
end;

procedure TForm4.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  DateTimePicker1.Date := Now;
  Edit8.Clear;
  Edit9.Clear;
  Edit10.Clear;
  Edit11.Clear;
  Edit12.Clear;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm4.Button1Click(Sender: TObject);
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
  Edit4.Enabled := True;
  Edit5.Enabled := True;
  Edit6.Enabled := True;
  DateTimePicker1.Enabled := True;
  Edit8.Enabled := True;
  Edit9.Enabled := True;
  Edit10.Enabled := True;
  Edit11.Enabled := True;
  Edit12.Enabled := True;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('id_siswa TIDAK BOLEH KOSONG!');
  end
  else if Edit2.Text = '' then
  begin
    ShowMessage('Nis TIDAK BOLEH KOSONG!');
  end
  else if Edit3.Text = '' then
  begin
    ShowMessage('Nisn TIDAK BOLEH KOSONG!');
  end
  else if Edit4.Text = '' then
  begin
    ShowMessage('nama_siswa TIDAK BOLEH KOSONG!');
  end
  else if Edit5.Text = '' then
  begin
    ShowMessage('nik TIDAK BOLEH KOSONG!');
  end
  else if Edit6.Text = '' then
  begin
    ShowMessage('tempat_lahir TIDAK BOLEH KOSONG!');
  end
  else if DateTimePicker1.Date = 0 then
  begin
    ShowMessage('tanggal_lahir TIDAK BOLEH KOSONG!');
  end
  else if Edit8.Text = '' then
  begin
    ShowMessage('jenis_kelamin TIDAK BOLEH KOSONG!');
  end
  else if Edit9.Text = '' then
  begin
    ShowMessage('Kelas TIDAK BOLEH KOSONG!');
  end
  else if Edit10.Text = '' then
  begin
    ShowMessage('jurusan TIDAK BOLEH KOSONG!');
  end
  else if Edit11.Text = '' then
  begin
    ShowMessage('alamat TIDAK BOLEH KOSONG!');
  end
  else if Edit12.Text = '' then
  begin
    ShowMessage('telp TIDAK BOLEH KOSONG!');
  end
  else
  begin
    // Simpan
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO t_siswa (id_siswa, nis, nisn, nama_siswa, nik, tempat_lahir, tanggal_lahir, jenis_kelamin, Kelas, jurusan, alamat, telp)');
    ZQuery1.SQL.Add('VALUES ("' + Edit1.Text + '", "' + Edit2.Text + '", "' + Edit3.Text + '", "' + Edit4.Text + '", "' + Edit5.Text + '", "' + Edit6.Text + '", "' + FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date) + '", "' + Edit8.Text + '", "' + Edit9.Text + '", "' + Edit10.Text + '", "' + Edit11.Text + '", "' + Edit12.Text + '")');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM t_siswa');
    ZQuery1.Open;

    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiawal;
  end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
   if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') or (Edit5.Text = '') or (Edit6.Text = '') or (DateTimePicker1.Date = 0) or (Edit8.Text = '') or (Edit9.Text = '') or (Edit10.Text = '') or (Edit11.Text = '') or (Edit12.Text = '') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (Edit1.Text = ZQuery1.FieldByName('id_siswa').AsString) and
          (Edit2.Text = ZQuery1.FieldByName('nis').AsString) and
          (Edit3.Text = ZQuery1.FieldByName('nisn').AsString) and
          (Edit4.Text = ZQuery1.FieldByName('nama_siswa').AsString) and
          (Edit5.Text = ZQuery1.FieldByName('nik').AsString) and
          (Edit6.Text = ZQuery1.FieldByName('tempat_lahir').AsString) and
          (DateTimePicker1.Date = ZQuery1.FieldByName('tanggal_lahir').AsDateTime) and
          (Edit8.Text = ZQuery1.FieldByName('jenis_kelamin').AsString) and
          (Edit9.Text = ZQuery1.FieldByName('Kelas').AsString) and
          (Edit10.Text = ZQuery1.FieldByName('jurusan').AsString) and
          (Edit11.Text = ZQuery1.FieldByName('alamat').AsString) and
          (Edit12.Text = ZQuery1.FieldByName('telp').AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end
  else
  begin
    // Update data
    ZQuery1.Edit;
    ZQuery1.FieldByName('id_siswa').AsString := Edit1.Text;
    ZQuery1.FieldByName('nis').AsString := Edit2.Text;
    ZQuery1.FieldByName('nisn').AsString := Edit3.Text;
    ZQuery1.FieldByName('nama_siswa').AsString := Edit4.Text;
    ZQuery1.FieldByName('nik').AsString := Edit5.Text;
    ZQuery1.FieldByName('tempat_lahir').AsString := Edit6.Text;
    ZQuery1.FieldByName('tanggal_lahir').AsDateTime := DateTimePicker1.Date;
    ZQuery1.FieldByName('jenis_kelamin').AsString := Edit8.Text;
    ZQuery1.FieldByName('Kelas').AsString := Edit9.Text;
    ZQuery1.FieldByName('jurusan').AsString := Edit10.Text;
    ZQuery1.FieldByName('alamat').AsString := Edit11.Text;
    ZQuery1.FieldByName('telp').AsString := Edit12.Text;
    ZQuery1.Post;

    ShowMessage('DATA BERHASIL DIUPDATE!');
    posisiawal;
  end;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Silakan pilih data yang akan dihapus pada DBGrid!');
  end
  else
  begin
    // Konfirmasi penghapusan data
    if MessageDlg('Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      // Hapus data
      ZQuery1.Close;
      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('DELETE FROM t_siswa WHERE id_siswa = "' + Edit1.Text + '"');
      ZQuery1.ExecSQL;

      // Refresh tampilan data
      ZQuery1.SQL.Clear;
      ZQuery1.SQL.Add('SELECT * FROM t_siswa');
      ZQuery1.Open;

      ShowMessage('Data berhasil dihapus!');
      posisiawal;
    end;
  end;
end;



procedure TForm4.Button5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
var
  dateString: string;
begin
  id := ZQuery1.FieldByName('id_siswa').AsString;
  tanggalLahir := ZQuery1.FieldByName('tanggal_lahir').AsString;

  Edit1.Text := ZQuery1.FieldByName('id_siswa').AsString;
  Edit2.Text := ZQuery1.FieldByName('nis').AsString;
  Edit3.Text := ZQuery1.FieldByName('nisn').AsString;
  Edit4.Text := ZQuery1.FieldByName('nama_siswa').AsString;
  Edit5.Text := ZQuery1.FieldByName('nik').AsString;
  Edit6.Text := ZQuery1.FieldByName('tempat_lahir').AsString;
  
  // Mengonversi tanggal dari database ke string dengan format 'dd-mm-yyyy'
  dateString := FormatDateTime('dd-mm-yyyy', ZQuery1.FieldByName('tanggal_lahir').AsDateTime);
  
  // Mengonversi tanggal dari string dengan format 'dd-mm-yyyy' ke TDateTime
  DateTimePicker1.Date := StrToDate(dateString);

  Edit8.Text := ZQuery1.FieldByName('jenis_kelamin').AsString;
  Edit9.Text := ZQuery1.FieldByName('Kelas').AsString;
  Edit10.Text := ZQuery1.FieldByName('jurusan').AsString;
  Edit11.Text := ZQuery1.FieldByName('alamat').AsString;
  Edit12.Text := ZQuery1.FieldByName('telp').AsString;

  Button1.Enabled := False;
  Button2.Enabled := False;
  Button3.Enabled := True;
  Button4.Enabled := True;
  Button5.Enabled := True;
  Edit1.Enabled := False;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;
  Edit6.Enabled := True;
  DateTimePicker1.Enabled := True;
  Edit8.Enabled := True;
  Edit9.Enabled := True;
  Edit10.Enabled := True;
  Edit11.Enabled := True;
  Edit12.Enabled := True;

end;

end.

