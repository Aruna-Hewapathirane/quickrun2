// This program is free software, created in response to a request for
// assistance by The_blode on IRC channel #pascal in Libera.chat.
// It is provided without any warranty; use it at your own risk. Redistribution
// and modification are permitted under the terms of
// [license type, e.g., MIT, GPL, etc.].

// Aruna Hewapathirane
// North York, Toronto
// Monday, 13th January 2025

unit quickrun;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,clipbrd,

  //Units written by <author-name>
  jot, cal, paste, movewindow, help, SetupForm ;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    mnuExit: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    mnuPaste: TMenuItem;
    mnuCut: TMenuItem;
    mnuCalendar: TMenuItem;
    mnuJot: TMenuItem;
    mnuHelp: TMenuItem;
    MnuApplicationSetup: TMenuItem;
    mnuHide: TMenuItem;
    mnuMoveWin: TMenuItem;
    PopupMenu1: TPopupMenu;
    procedure mnuCalendarClick(Sender: TObject);
    procedure mnuExitClick(Sender: TObject);
    procedure mnuHelpClick(Sender: TObject);
    procedure mnuHideClick(Sender: TObject);
    procedure mnuJotClick(Sender: TObject);
    procedure mnuMoveWinClick(Sender: TObject);
    procedure mnuPasteClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.mnuCalendarClick(Sender: TObject);
begin
  Form3.Show;
//  Form3.Free;
end;

procedure TForm1.mnuExitClick(Sender: TObject);
begin
    Form2.Free;
    Form3.Free;
    Form4.Free;
    Self.Close; // Closes the current form
end;

procedure TForm1.mnuHelpClick(Sender: TObject);
begin
  Form6.Show;
end;

procedure TForm1.mnuHideClick(Sender: TObject);
begin
  Self.WindowState := wsMinimized; // Minimize the current form
end;

procedure TForm1.mnuJotClick(Sender: TObject);
begin
 Form2.ShowModal;  // This will show the form modally
// Form2.free;
end;

procedure TForm1.mnuMoveWinClick(Sender: TObject);
begin
Form5.Show;

end;

procedure TForm1.mnuPasteClick(Sender: TObject);
begin
Form4.showmodal;
Form4.Edit1.Text := Clipboard.AsText; // Paste text from clipboard
end;

end.

