unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
with zquery1 do begin
SQL.Clear;
SQL.Add('select * from t_user where user_name='+QuotedStr(edit1.Text));
open;
end;
//end with
//jika tidak ditemukan data yang dicari
//maka tampilkan pesan
if ZQuery1.RecordCount=0
then
Application.MessageBox('Maaf user name tidak ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if ZQuery1.FieldByName('password').AsString<>Edit2.Text
then
Application.MessageBox('mastikan password yang anda masukkan benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
Form2.Show;
end;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Close;
end;

end.
