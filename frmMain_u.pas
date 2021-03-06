unit frmMain_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TfrmMain = class(TForm)
    memPlainText: TMemo;
    memNatoText: TMemo;
    btnClear: TButton;
    procedure btnClearClick(Sender: TObject);
    procedure memPlainTextKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.btnClearClick(Sender: TObject);
begin
 memPlainText.Text := '';
 memNatoText.Text := '';
 memPlainText.SetFocus;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  memPlainText.SetFocus;
end;

procedure TfrmMain.memPlainTextKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
  I: integer;
  old, New, Temp: string;
begin
  memNatoText.Lines.Clear;
  old := memPlainText.Text;
  New := '';
  Temp := '';
  for I := 1 to Length(old) do
  begin
    Temp := Copy(old, I, 1);
    if Temp = 'A' then
      Temp := 'ALPHA';

     if Temp = 'B' then
      Temp := 'BRAVO';

    if Temp = 'C' then
      Temp := 'CHARLIE';

    if Temp = 'D' then
      Temp := 'DELTA';

    if Temp = 'E' then
      Temp := 'ECHO';

    if Temp = 'F' then
      Temp := 'FOXTROT';

    if Temp = 'G' then
      Temp := 'GOLF';

    if Temp = 'H' then
      Temp := 'HOTEL';

    if Temp = 'I' then
      Temp := 'INDIA';

    if Temp = 'J' then
      Temp := 'JULIET';

    if Temp = 'K' then
      Temp := 'KILO';

    if Temp = 'L' then
      Temp := 'LIMA';

    if Temp = 'M' then
      Temp := 'MIKE';

    if Temp = 'N' then
      Temp := 'NOVEMBER';

    if Temp = 'O' then
      Temp := 'OSCAR';

    if Temp = 'P' then
      Temp := 'PAPA';

    if Temp = 'Q' then
      Temp := 'QUEBEC';

    if Temp = 'R' then
      Temp := 'ROMEO';

    if Temp = 'S' then
      Temp := 'SIERRA';

    if Temp = 'T' then
      Temp := 'TANGO';

    if Temp = 'U' then
      Temp := 'UNIFORM';

    if Temp = 'V' then
      Temp := 'VICTOR';

    if Temp = 'W' then
      Temp := 'WHISKEY';

    if Temp = 'X' then
      Temp := 'X-RAY';

    if Temp = 'Y' then
      Temp := 'YANKEE';

    if Temp = 'Z' then
      Temp := 'ZULU';

  New := New + ' ' + Temp + ' ';
end; // For
memNatoText.Text := New;
end;

end.
