unit about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,shellapi;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  

implementation

{$R *.dfm}
 procedure cal;
 var
a,b,c:real;
D,x,x1,x2:real;
begin
a:=strtofloat(form3.Edit1.Text) ;
b:=strtofloat(form3.Edit2.Text);
c:=strtofloat(form3.Edit3.Text);
d:=sqr(b)-4*a*c;
if d>0 then  begin
x1:=-b+sqrt(d)/2*a;
x2:=-b-sqrt(d)/2*a;
form3.edit1.text:='x1='+floattostr(x1);
form3.edit2.text:='x2='+floattostr(x2);
end;
if d=0 then  begin
x:=-b/2*a;
form3.edit1.text:='x='+floattostr(x);
end;
  if d<0 then begin
  form3.edit1.text:='Корней нет!!!';
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if (edit1.Text<>'') and (edit2.Text<>'') and (edit3.Text<>'') then
cal
else
showmessage('Необходимо ввести все исходные данные!!!');
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
animatewindow(handle,400,aw_blend or aw_hide);
end;

procedure TForm3.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
releasecapture;
sendmessage(handle,wm_syscommand,sc_move+2,0);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
animatewindow(handle,400,aw_blend or aw_hide);
end;

end.
