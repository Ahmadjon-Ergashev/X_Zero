unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DdeMan, StdCtrls, Mask, ComCtrls;

type
  TForm2 = class(TForm)
    MaskEdit1: TMaskEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure clearfile(sender:Tobject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
 f:text;hostname,localname:string; server:boolean;
implementation
uses unit1,unit3;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var ip:string; i,j:byte;
begin server:=false;
ip:=maskedit1.Text;
localname:=edit1.Text;
for i:=1 to length(ip) do
for j:=1 to length(ip) do
if (ip[j]='.')and(ip[j+1]='0') then delete(ip,j+1,1);
assignfile(f,'\\'+ip+'\C$\Server.txt');reset(f);
read(f,hostname); closefile(f); rewrite(f);
showmessage(hostname+' Bilan muvaffaqqiyatli bog''lanildi');
write(f,localname); closefile(f);form2.Close;
end;

procedure TForm2.clearfile;
begin
rewrite(f);
closefile(f);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin server:=true;
assignfile(f,'C:\server.txt');rewrite(f);
write(f,edit2.text);closefile(f);
showmessage(edit2.text+' serveri muvaffaqqiyatli yaratildi');
form2.close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
showwindow(Application.Handle, sw_hide);
end;

end.
