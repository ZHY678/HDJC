unit UMotorControlInterface;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, USoftwareFunction, Vcl.StdCtrls, UGlobalpara;

type
  TMotorControlForm = class(TForm)
    PluseNumberLabel: TLabel;
    PluseNumberEdit: TEdit;
    InPlaceButton: TButton;
    ResetButton: TButton;
    FowardButton: TButton;
    BackButton: TButton;
    LowLevelButton: TButton;
    HighLevelButton: TButton;
    procedure InPlaceButtonClick(Sender: TObject);
    procedure ResetButtonClick(Sender: TObject);
    procedure FowardButtonClick(Sender: TObject);
    procedure BackButtonClick(Sender: TObject);
    procedure LowLevelButtonClick(Sender: TObject);
    procedure HighLevelButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MotorControlForm: TMotorControlForm;

implementation

{$R *.dfm}

procedure TMotorControlForm.BackButtonClick(Sender: TObject);
begin
  try
    GMotorControl.DMC5480BackOff(StrToInt(PluseNumberEdit.Text));
  except
    On E : Exception Do
    Begin
      PluseNumberEdit.Clear;
    End;
  end;
end;

procedure TMotorControlForm.FormCreate(Sender: TObject);
begin
  GMotorControl := TMotorControl.Create;
end;

procedure TMotorControlForm.FowardButtonClick(Sender: TObject);
begin
  try
    GMotorControl.DMC5480Forward(StrToInt(PluseNumberEdit.Text));
  except
    On E : Exception Do
    Begin
      PluseNumberEdit.Clear;
    End;
  end;
end;

procedure TMotorControlForm.HighLevelButtonClick(Sender: TObject);
begin
  GMotorControl.DMC5480HighLevel;
end;

procedure TMotorControlForm.InPlaceButtonClick(Sender: TObject);
begin
  GMotorControl.DMC5480InPlace;
end;

procedure TMotorControlForm.LowLevelButtonClick(Sender: TObject);
begin
  GMotorControl.DMC5480LowLevel;
end;

procedure TMotorControlForm.ResetButtonClick(Sender: TObject);
begin
  GMotorControl.DMC5480Zeroing;
end;

end.
