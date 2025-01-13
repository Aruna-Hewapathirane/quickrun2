unit SetupForm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
  private
    FSelectedColor:TColor;

  public

  end;

var
  Form7: TForm7;

implementation

{$R *.lfm}

{ TForm7 }


procedure TForm7.Button1Click(Sender: TObject);
begin
  begin
    // Open the color dialog
    if ColorDialog1.Execute then
    begin
      FSelectedColor := ColorDialog1.Color; // Store the selected color
      if CheckBox3.Checked then
        Form7.Color := FSelectedColor; // Apply the color if the checkbox is checked
    end;
  end;

end;

procedure TForm7.CheckBox3Change(Sender: TObject);
begin
  // Apply or reset the form's color based on the checkbox state
  if CheckBox3.Checked then
    Button1.Enabled:=True
  else
    Button1.Enabled := False; // Disable Color Change Button

  Form7.Invalidate;
end;

end.
