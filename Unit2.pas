unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Kelas1: TMenuItem;
    procedure Kelas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1, Unit3;

{$R *.dfm}


procedure TForm2.Kelas1Click(Sender: TObject);
begin
  Form3.Show;
end;

end.
