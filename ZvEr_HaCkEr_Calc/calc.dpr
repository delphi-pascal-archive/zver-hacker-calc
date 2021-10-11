program calc;
uses
  Forms,
  Main in 'Main.pas' {Form1},
  SysUtils,
  Windows,
  about in 'about.pas' {Form3},
  Unit2 in 'Unit2.pas' {Form2};

var
 CurDate: TDateTime;
 YY,MM,DD: Word;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
