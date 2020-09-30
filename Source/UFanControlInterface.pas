unit UFanControlInterface;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, USoftwareFunction, UGlobalpara;

type
  TFanControlForm = class(TForm)
    UpperFanLabel: TLabel;
    LowerFanLabel: TLabel;
    UpperFanEdit: TEdit;
    LowerFanEdit: TEdit;
    StartButton: TButton;
    StopButton: TButton;
    TestButton: TButton;
    procedure StartButtonClick(Sender: TObject);
    procedure StopButtonClick(Sender: TObject);
    procedure TestButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FHardWareControl : THardWareControl;
    FGlobalpara : TGlobalpara;
  public
    { Public declarations }
  end;

var
  FanControlForm: TFanControlForm;

implementation

{$R *.dfm}

procedure TFanControlForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FanFormIsShow := False;
end;

procedure TFanControlForm.FormShow(Sender: TObject);
begin
  FanFormIsShow := True;
end;

procedure TFanControlForm.StartButtonClick(Sender: TObject);
begin
  FHardWareControl.OpenFan;
end;

procedure TFanControlForm.StopButtonClick(Sender: TObject);
begin
  FHardWareControl.CloseFan;
end;

procedure TFanControlForm.TestButtonClick(Sender: TObject);
begin
  try
    FHardWareControl.OpenFan(StrToInt(UpperFanEdit.Text), StrToInt(LowerFanEdit.Text));
  except
    On E : Exception Do
    Begin
      FGlobalpara.ShowAndSaveErrorLog(ErrorLogPath, 'FanControlForm.TestButtonClick', E.Message, True);
      UpperFanEdit.Clear;
      LowerFanEdit.Clear;
    End;
  end;
end;

end.
