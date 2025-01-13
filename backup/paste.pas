unit paste;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,Clipbrd;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
begin
  Clipboard.AsText := Edit1.Text; // Copy text to clipboard
  Edit1.Clear;                    // Remove text (cut operation)
  Edit1.Text :='Now click the paste button...';
  Button1.Enabled:=False;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form4.Edit2.Text := Clipboard.AsText; // Paste text from clipboard
end;

end.

