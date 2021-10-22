unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Menus, Grids;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    NewGame1: TMenuItem;
    Setorqali1: TMenuItem;
    Yagonakompyuterda1: TMenuItem;
    N1: TMenuItem;
    ugatish1: TMenuItem;
    Chiqish1: TMenuItem;
    Yordam1: TMenuItem;
    Aftor1: TMenuItem;
    sg: TStringGrid;
    procedure Setorqali1Click(Sender: TObject);
    procedure Aftor1Click(Sender: TObject);
    procedure Chiqish1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ugatish1Click(Sender: TObject);
    procedure Yagonakompyuterda1Click(Sender: TObject);
    procedure sgSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure toza;
    procedure tekshirish(n,m:byte);
    procedure ochirish(x1,y1,x2,y2,x3,y3:byte);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p:boolean;k:byte; f:text;
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Setorqali1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.Aftor1Click(Sender: TObject);
begin
Aboutbox.show;
end;

procedure TForm1.Chiqish1Click(Sender: TObject);
begin
form1.close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin k:=1;
sg.Cells[0,0]:='1';sg.Cells[1,0]:='2';sg.cells[2,0]:='3';
sg.Cells[0,1]:='4';sg.Cells[1,1]:='5';sg.Cells[2,1]:='6';
sg.Cells[0,2]:='7';sg.Cells[1,2]:='8';sg.Cells[2,2]:='9'; end;

procedure TForm1.ugatish1Click(Sender: TObject);
begin
Form1.FormCreate(sender);
end;

procedure TForm1.toza;
var i,j:0..2;
begin
for i:=0 to 2 do
for j:=0 to 2 do
sg.Cells[i,j]:=' ';

end;

procedure TForm1.Yagonakompyuterda1Click(Sender: TObject);
begin
form1.toza;
end;

procedure TForm1.sgSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
if (p)and(sg.Cells[acol,arow]=' ') then begin p:=not p;
      sg.Cells[ACol,ARow]:='x';tekshirish(acol,arow);
if k=9 then begin showmessage('Durang');form1.toza;k:=1;end else inc(k);
 end;
if (not p)and(sg.Cells[acol,arow]=' ') then begin p:=not p;
      sg.Cells[ACol,ARow]:='o';tekshirish(acol,arow);
if k=9 then begin showmessage('Durang');
form1.FormCreate(sender);form1.toza;k:=1;end else inc(k);
end;
end;

procedure TForm1.tekshirish(n,m:byte);
begin
case n of
0: ochirish(0,0,0,1,0,2);
1: ochirish(1,0,1,1,1,2);
2: ochirish(2,0,2,1,2,2);end;
case m of
0: ochirish(0,0,1,0,2,0);
1: ochirish(0,1,1,1,2,1);
2: ochirish(0,2,1,2,2,2);end;
if ((n=1)and(m=1)) then begin ochirish(0,0,1,1,2,2);ochirish(0,2,1,1,2,0);end;
if ((n=0)and(m=0))or((n=2)and(m=2)) then ochirish(0,0,1,1,2,2);
if ((n=0)and(m=2))or((n=2)and(m=0)) then ochirish(0,2,1,1,2,0);

end;

procedure TForm1.ochirish(x1,y1,x2,y2,x3,y3:byte);
begin
if (sg.Cells[x1,y1]=sg.Cells[x2,y2])and
(sg.Cells[x2,y2]=sg.Cells[x3,y3])then begin
sg.Cells[x1,y1]:=upcase(sg.Cells[x1,y1][1]);
sg.Cells[x2,y2]:=upcase(sg.Cells[x2,y2][1]);
sg.Cells[x3,y3]:=upcase(sg.Cells[x3,y3][1]);
showmessage(sg.Cells[x1,y1]+' lar g''olib bo''lishdi');
form1.ugatish1.Click;
end;
end;
procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('O''yindan chiqasizmi?',mtconfirmation,[mbyes,mbno],0)=mryes then
begin
 if unit2.server then unit2.Form2.clearfile(sender);
canclose:=true;end else canclose:=false;

end;

end.
