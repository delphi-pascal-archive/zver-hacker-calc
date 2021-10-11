unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, Buttons, StdCtrls, ExtCtrls, Menus, ShellAPI, mathn, math;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    PopupMenu1: TPopupMenu;
    about1: TMenuItem;
    about: TMenuItem;
    BalloonHint1: TBalloonHint;
    SpeedButton36: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton40: TSpeedButton;
    N1: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure aboutClick(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton40Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure about1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  const
  zerovalue=0;

implementation

uses about, Unit2;


{$R *.dfm}
function keyprresed(key:byte):boolean;
var
keys:tkeyboardstate;
begin
result:=false;
getkeyboardstate(keys);
if (keys[key]=128)or (keys[key]=129) then
result:=true;
end;
{Функции для работы инженерных вычеслений}
 function Fact(n:int64):int64;
begin
if n<=0 then Fact:=1 else Fact:=n*Fact(n-1);
end;

function log2(const x:extended):extended;
asm
fld1
fld x
fyl2x
fwait
end;
function log10(const x:extended):extended;
asm
fldlg2
fld x
fyl2x
fwait
end;
procedure sincos(const theta:extended;var sin,cos:extended);
asm
fld theta
fsincos
fstp tbyte ptr [edx]//cos
fstp tbyte ptr [eax]//sin
fwait
end;
function tan(const x:extended):extended;
asm
fld x
fptan
fstp st(0)
fwait
end;
function CoTan(const x:extended):extended;
asm
fld x
fdivrp
fyl2x
fwait
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
key:=chr(0);
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
key:=chr(0);
end;

procedure TForm1.about1Click(Sender: TObject);
begin
form3.Show;
end;

procedure TForm1.aboutClick(Sender: TObject);
var
 n: integer;
 dtc: TCanvas;
 s: string;
 LogFont: TLogFont;
 OldFont: TFont;
 TempFont: HFont;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Font.Size:=48;
 dtc.Font.Color:=clMaroon;
 dtc.Brush.Style:=bsClear;
 TempFont:=0;
 GetObject(dtc.Font.Handle, SizeOf(TLogFont), @LogFont);
 LogFont.lfEscapement:=60;
 LogFont.lfOutPrecision:=OUT_TT_PRECIS;
 TempFont:=CreateFontIndirect(LogFont);
 OldFont:=TFont.Create;
 try
  with dtc do
   begin
    OldFont.Assign(Font);
    Font.Handle:=TempFont;
    TextOut(500, 500, 'Автор:Dr.Win32');
    Font.Assign(OldFont);
   end
 finally
  OldFont.Free;
  if TempFont <>0
  then DeleteObject(TempFont);
 end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
form3.Close;
form2.Close;
end;

procedure TForm1.FormClick(Sender: TObject);
begin
popupmenu1.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
animatewindow(handle,500,aw_blend);
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 releasecapture;
sendmessage(handle,wm_syscommand,sc_move+2,0);
end;

procedure TForm1.Label1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 releasecapture;
sendmessage(handle,wm_syscommand,sc_move+2,0);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
form2.Position:=pomainformcenter;
form2.Show;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
popupmenu1.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
releasecapture;
sendmessage(handle,wm_syscommand,sc_move+2,0);
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
popupmenu1.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TForm1.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 releasecapture;
sendmessage(handle,wm_syscommand,sc_move+2,0);
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
popupmenu1.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TForm1.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 releasecapture;
sendmessage(handle,wm_syscommand,sc_move+2,0);
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'0';
if edit2.Focused then
edit2.Text:=edit2.Text+'0';
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
if (edit1.Text<>'') and (edit2.Text<>'') then
label1.Caption:=floattostr(strtofloat(edit1.Text)+strtofloat(edit2.Text))
        else
Showmessage('Необходимо ввести обе переменые!!!');
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
 if (edit1.Text<>'') and (edit2.Text<>'') then
label1.Caption:=floattostr(strtofloat(edit1.Text)-strtofloat(edit2.Text))
  else
Showmessage('Необходимо ввести обе переменые!!!');
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
 if (edit1.Text<>'') and (edit2.Text<>'') then
label1.Caption:=floattostr(strtofloat(edit1.Text)*strtofloat(edit2.Text))
      else
Showmessage('Необходимо ввести обе переменые!!!');
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
 if (edit1.Text<>'') and (edit2.Text<>'') then
 label1.Caption:=floattostr(strtofloat(edit1.Text)/strtofloat(edit2.Text))
    else
Showmessage('Необходимо ввести обе переменые!!!');
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
if (edit1.Text<>'') then
label1.Caption:=floattostr(log10(strtofloat(edit1.Text)))
else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
 if (edit1.Text<>'') then
label1.Caption:=floattostr(log2(strtofloat(edit1.Text)))
  else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
begin
  if (edit1.Text<>'') then
label1.Caption:=floattostr(ln(strtofloat(edit1.text)))
 else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton18Click(Sender: TObject);
begin
  if (edit1.Text<>'') then
label1.Caption:=floattostr(strtofloat(edit1.Text)*strtofloat(edit1.Text))
   else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton19Click(Sender: TObject);
begin
 if (edit1.Text<>'') then
label1.Caption:=floattostr(sin(strtofloat(edit1.Text)))
  else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'1';
if edit2.Focused then
edit2.Text:=edit2.Text+'1';

end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
  if (edit1.Text<>'') then
 label1.Caption:=floattostr(cos(strtofloat(edit1.Text)))
    else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton21Click(Sender: TObject);
begin
if (edit1.Text<>'') then
 label1.Caption:=floattostr(tan(strtofloat(edit1.Text)))
 else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton22Click(Sender: TObject);
begin
if (edit1.Text<>'') then

label1.Caption:=floattostr(cot(strtofloat(edit1.Text)))
    else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
begin
if (edit1.Text<>'') then

 label1.Caption:=IntToStr(fact(StrToInt(Edit1.Text)))
  else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton24Click(Sender: TObject);
begin
if (edit1.Text<>'') then

label1.Caption:=floattostr(sqr(strtofloat(edit1.Text)))
 else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton25Click(Sender: TObject);
begin
if (edit1.Text<>'') then

label1.Caption:=floattostr(1/(strtofloat(edit1.Text)))
  else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton26Click(Sender: TObject);
begin
if (edit1.Text<>'') then
label1.Caption:=floattostr(abs(strtofloat(edit1.Text)))
  else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton27Click(Sender: TObject);
begin
if (edit1.Text<>'') and (edit2.Text<>'') then

label1.Caption:=inttostr(strtoint(edit1.Text) div strtoint(edit2.Text))
   else
Showmessage('Необходимо ввести обе переменые!!!');
end;

procedure TForm1.SpeedButton28Click(Sender: TObject);
begin
if (edit1.Text<>'') and (edit2.Text<>'') then

label1.Caption:=inttostr(strtoint(edit1.Text) mod strtoint(edit2.Text))
   else
Showmessage('Необходимо ввести обе переменые!!!');
end;

procedure TForm1.SpeedButton29Click(Sender: TObject);
begin
if (edit1.Text<>'') and (edit2.Text<>'') then

 label1.Caption:=floattostr(strtofloat(edit1.Text)/100*strtofloat(edit2.Text))
   else
Showmessage('Необходимо ввести обе переменые!!!');
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'2';
if edit2.Focused then
edit2.Text:=edit2.Text+'2';
end;

procedure TForm1.SpeedButton30Click(Sender: TObject);
begin
if (edit1.Text<>'') then

label1.Caption:=floattostr(sqrt(strtofloat(edit1.Text)))
 else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton31Click(Sender: TObject);
begin
if (edit1.Text<>'') then

label1.Caption:=floattostr(strtofloat(edit1.Text)*strtofloat(edit1.Text)*strtofloat(edit1.Text)*strtofloat(edit1.Text)*strtofloat(edit1.Text)*strtofloat(edit1.Text)*strtofloat(edit1.Text)*strtofloat(edit1.Text)*strtofloat(edit1.Text)*strtofloat(edit1.Text))
else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton32Click(Sender: TObject);
begin
label1.Caption:=floattostr(pi);
end;

procedure TForm1.SpeedButton33Click(Sender: TObject);
begin
label1.Caption:=timetostr(now);
end;

procedure TForm1.SpeedButton34Click(Sender: TObject);
begin
label1.Caption:=datetostr(now);
end;

procedure TForm1.SpeedButton35Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+decimalseparator;
if edit2.Focused then
edit2.Text:=edit2.Text+decimalseparator;
end;

procedure TForm1.SpeedButton36Click(Sender: TObject);
begin
if (edit1.Text<>'') and (edit2.Text<>'') then

label1.Caption:=Floattostr(exp(strtofloat(edit2.Text)*ln(strtofloat(edit1.Text))))
else
Showmessage('Необходимо ввести обе переменые!!!');
end;

procedure TForm1.SpeedButton37Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:='';
if edit2.Focused then
edit2.Text:='';

end;

procedure TForm1.SpeedButton38Click(Sender: TObject);
begin
if (edit1.Text<>'') then

label1.Caption:=floattostr(arccot(strtofloat(edit1.Text)))
 else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton39Click(Sender: TObject);
begin
if (edit1.Text<>'') then

label1.Caption:=floattostr(exp(strtofloat(edit1.Text)))
 else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'3';
if edit2.Focused then
edit2.Text:=edit2.Text+'3';
end;

procedure TForm1.SpeedButton40Click(Sender: TObject);
begin
if (edit1.Text<>'') then

label1.Caption:=floattostr(arctan(strtofloat(edit1.Text)))
 else
Showmessage('Введите необходимую переменую в первое поле ввода!!!');
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'4';
if edit2.Focused then
edit2.Text:=edit2.Text+'4';
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'5';
if edit2.Focused then
edit2.Text:=edit2.Text+'5';
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'6';
if edit2.Focused then
edit2.Text:=edit2.Text+'6';
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'7';
if edit2.Focused then
edit2.Text:=edit2.Text+'7';
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'8';
if edit2.Focused then
edit2.Text:=edit2.Text+'8';
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
if edit1.Focused then
edit1.Text:=edit1.Text+'9';
if edit2.Focused then
edit2.Text:=edit2.Text+'9';
end;

end.
