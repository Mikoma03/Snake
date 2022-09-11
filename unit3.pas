unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Menus, LCLType;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Snake: TShape;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  private
    x:integer;
  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  timer1.Enabled:=true;
end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if key = VK_W then
  begin
  snake.Top:=snake.Top -8;
  end;
  if key = VK_D then
  begin
  snake.Left:=snake.Left +8;
  end;
  if key = VK_S then
  begin
  snake.Top:=snake.Top +8;
  end;
  if key = VK_A then
  begin
 snake.Left:=snake.Left -8;
  end;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin

end;

end.

