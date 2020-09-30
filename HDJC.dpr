program HDJC;

uses
  Vcl.Forms,
  leisai in 'Source\leisai.pas',
  MainInterface in 'Source\MainInterface.pas' {ThicknessMeasurement},
  scanCONTRAL in 'Source\scanCONTRAL.pas',
  sfContnrs in 'Source\sfContnrs.pas',
  UGlobalpara in 'Source\UGlobalpara.pas',
  DataSelfDeletion in 'Source\DataSelfDeletion.pas',
  UMainThread in 'Source\UMainThread.pas',
  UDataProcess in 'Source\UDataProcess.pas',
  USoftwareFunction in 'Source\USoftwareFunction.pas',
  UMotorControlInterface in 'Source\UMotorControlInterface.pas' {MotorControlForm},
  UFanControlInterface in 'Source\UFanControlInterface.pas' {FanControlForm},
  UIndicatorLightInterface in 'Source\UIndicatorLightInterface.pas' {IndicatorLightForm},
  UThicknessMeasurement2D in 'Source\UThicknessMeasurement2D.pas',
  UCollectThread in 'Source\UCollectThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TThicknessMeasurement, ThicknessMeasurement);
  Application.CreateForm(TMotorControlForm, MotorControlForm);
  Application.CreateForm(TFanControlForm, FanControlForm);
  Application.CreateForm(TIndicatorLightForm, IndicatorLightForm);
  Application.Run;
end.
