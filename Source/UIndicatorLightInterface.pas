unit UIndicatorLightInterface;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UGlobalpara, USoftwareFunction,
  Vcl.StdCtrls;

type
  TIndicatorLightForm = class(TForm)
    MsLabel: TLabel;
    MsEdit: TEdit;
    RedFlashButton: TButton;
    CloseButton: TButton;
    RedButton: TButton;
    GreenButton: TButton;
    YellowButton: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RedFlashButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure RedButtonClick(Sender: TObject);
    procedure GreenButtonClick(Sender: TObject);
    procedure YellowButtonClick(Sender: TObject);
  private
    { Private declarations }
    FIndicatorlight : TIndicatorlight;
    FGlobalpara : TGlobalpara;
  public
    { Public declarations }
  end;

var
  IndicatorLightForm: TIndicatorLightForm;

implementation

{$R *.dfm}

procedure TIndicatorLightForm.CloseButtonClick(Sender: TObject);
begin
  FIndicatorlight.LightClose;
end;

procedure TIndicatorLightForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LightFormIsShow := False;
end;

procedure TIndicatorLightForm.FormShow(Sender: TObject);
begin
  LightFormIsShow := True;
end;

procedure TIndicatorLightForm.GreenButtonClick(Sender: TObject);
begin
  try
    FIndicatorlight.GreenLampLight(StrToInt(MsEdit.Text));
  except
    On E : Exception Do
    Begin
      FGlobalpara.ShowAndSaveErrorLog(ErrorLogPath, 'IndicatorLightForm.GreenButtonClick', E.Message, True);
      MsEdit.Clear;
    End;
  end;
end;

procedure TIndicatorLightForm.RedButtonClick(Sender: TObject);
begin
  try
    FIndicatorlight.RedLampLight(StrToInt(MsEdit.Text));
  except
    On E : Exception Do
    Begin
      FGlobalpara.ShowAndSaveErrorLog(ErrorLogPath, 'IndicatorLightForm.RedButtonClick', E.Message, True);
      MsEdit.Clear;
    End;
  end;
end;

procedure TIndicatorLightForm.RedFlashButtonClick(Sender: TObject);
begin
  FIndicatorlight.RedLightWarning;
end;

procedure TIndicatorLightForm.YellowButtonClick(Sender: TObject);
begin
  try
    FIndicatorlight.YellowLampLight(StrToInt(MsEdit.Text));
  except
    On E : Exception Do
    Begin
      FGlobalpara.ShowAndSaveErrorLog(ErrorLogPath, 'IndicatorLightForm.YellowButtonClick', E.Message, True);
      MsEdit.Clear;
    End;
  end;
end;

end.
