unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    q: TRadioButton;
    w: TRadioButton;
    e: TRadioButton;
    y: TRadioButton;
    t: TRadioButton;
    r: TRadioButton;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure qClick(Sender: TObject);
    procedure wClick(Sender: TObject);
    procedure eClick(Sender: TObject);
    procedure rClick(Sender: TObject);
    procedure tClick(Sender: TObject);
    procedure yClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
procedure cal;
var
a,d:real;
S,V,m,R,H:real;
begin
if form2.q.Checked then begin
form2.Edit1.Visible:=true;
a:=strtofloat(form2.Edit1.Text);
S:=sqr(a)*sqrt(3);
V:=sqr(a)*a*sqrt(2)/12;
m:=a*sqrt(6)/12;
R:=a*sqrt(6)/4;
H:=a*sqrt(6)/3;
form2.Label1.Caption:='S='+floattostr(S);
form2.Label2.Caption:='V='+floattostr(V);
form2.Label3.Caption:='r='+floattostr(m);
form2.Label4.Caption:='R='+floattostr(R);
form2.Label5.Caption:='H='+floattostr(H);
end;
if form2.w.Checked then begin
form2.Edit1.Visible:=true;
a:=strtofloat(form2.Edit1.Text);
S:=6*sqr(a);
V:=sqr(a)*a;
m:=a/2;
R:=a*sqrt(3)/2;
H:=a;
form2.Label1.Caption:='S='+floattostr(S);
form2.Label2.Caption:='V='+floattostr(V);
form2.Label3.Caption:='r='+floattostr(m);
form2.Label4.Caption:='R='+floattostr(R);
form2.Label5.Caption:='H='+floattostr(H);
end;
if form2.e.Checked then begin
 form2.Edit1.Visible:=true;
a:=strtofloat(form2.Edit1.Text);
S:=2*sqr(a)*sqrt(3);
V:=sqr(a)*a*sqrt(2)/3;
R:=a*sqrt(2)/2;
m:=a*sqrt(6)/6;
form2.Label1.Caption:='S='+floattostr(S);
form2.Label2.Caption:='V='+floattostr(V);
form2.Label3.Caption:='r='+floattostr(m);
form2.Label4.Caption:='R='+floattostr(R);
form2.Label5.Caption:='';
end;
if form2.r.Checked then begin
 form2.Edit1.Visible:=true;
d:=strtofloat(form2.Edit1.Text);
S:=pi*sqr(d);
V:=pi*sqr(d)*d/6;
 form2.Label1.Caption:='S='+floattostr(S);
form2.Label2.Caption:='V='+floattostr(V);
 form2.Label3.Caption:='';
 form2.Label4.Caption:='';
 form2.Label5.Caption:='';
end;
 if form2.t.Checked then begin
  form2.Edit1.Visible:=true;
a:=strtofloat(form2.Edit1.Text);
S:=5*sqr(a)*sqrt(3);
V:=5*sqr(a)*a*(3+sqrt(5))/12;
R:=a*sqrt(2*(5+sqrt(5)))/4;
m:=a*sqrt(3)*(3+sqrt(5))/12;
   form2.Label1.Caption:='S='+floattostr(S);
form2.Label2.Caption:='V='+floattostr(V);
form2.Label3.Caption:='r='+floattostr(m);
form2.Label4.Caption:='R='+floattostr(R);
  form2.Label5.Caption:='';
 end;
 if form2.y.Checked then begin
  form2.Edit1.Visible:=true;
a:=strtofloat(form2.Edit1.Text);
S:=3*sqr(a)*sqrt(5*(5+2*sqrt(5)));
V:=sqr(a)*a*(15+7*sqrt(5))/4;
R:=a*sqrt(3)*(1+sqrt(5))/4;
m:=a*sqrt(10*(25+11*sqrt(5)))/20;
   form2.Label1.Caption:='S='+floattostr(S);
form2.Label2.Caption:='V='+floattostr(V);
form2.Label3.Caption:='r='+floattostr(m);
form2.Label4.Caption:='R='+floattostr(R);
  form2.Label5.Caption:='';
 end;
end;




procedure TForm2.Button1Click(Sender: TObject);
begin
cal;
end;

procedure TForm2.eClick(Sender: TObject);
begin
  form2.Edit1.Visible:=true;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
animatewindow(handle,400,aw_blend or aw_hide);
end;

procedure TForm2.FormShow(Sender: TObject);
begin
animatewindow(handle,400,aw_blend or aw_hide);
end;

procedure TForm2.qClick(Sender: TObject);
begin
form2.Edit1.Visible:=true;
end;

procedure TForm2.rClick(Sender: TObject);
begin
  form2.Edit1.Visible:=true;
end;

procedure TForm2.tClick(Sender: TObject);
begin
form2.Edit1.Visible:=true;
end;

procedure TForm2.wClick(Sender: TObject);
begin
form2.Edit1.Visible:=true;
end;

procedure TForm2.yClick(Sender: TObject);
begin
 form2.Edit1.Visible:=true;
end;

end.
