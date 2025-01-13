unit movewindow;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs,  LCLType;

type

  { TForm5 }

  TForm5 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.FormCreate(Sender: TObject);
begin
    KeyPreview := True; // Ensure the form captures key events
end;

procedure TForm5.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );

    const
      MoveStep = 10; // Number of pixels to move per key press
    begin
      case Key of
        VK_UP:    Top := Top - MoveStep;    // Move up
        VK_DOWN:  Top := Top + MoveStep;    // Move down
        VK_LEFT:  Left := Left - MoveStep;  // Move left
        VK_RIGHT: Left := Left + MoveStep;  // Move right
      end;


end;



end.

