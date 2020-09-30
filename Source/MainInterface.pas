unit MainInterface;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, Vcl.ImgList, dxBar, cxClasses, dxRibbon, dxStatusBar,
  dxRibbonStatusBar, UGlobalpara, DataSelfDeletion, UMainThread, sfContnrs,
  USoftwareFunction, Vcl.ExtCtrls, UMotorControlInterface, UFanControlInterface,
  UIndicatorLightInterface, System.IniFiles, VclTee.TeeGDIPlus, MtxBaseComp,
  SignalTools, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  SignalToolsTee, RzTabs, VCLTee.TeeTools, Vcl.StdCtrls, UThicknessMeasurement2D,
  UCollectThread, UDataProcess, Winapi.OpenGL, System.Win.ComObj, cxImageList;

type
  TThicknessMeasurement = class(TForm)
    cxImageList: TcxImageList;
    OpenDialog: TOpenDialog;
    dxBarManager: TdxBarManager;
    SystemControlTab: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    RibbonStatusBar: TdxRibbonStatusBar;
    EquipmentControlBar: TdxBar;
    CollectControlBar: TdxBar;
    SaveSettingBar: TdxBar;
    SystemSettingBar: TdxBar;
    InPlaceLargeButton: TdxBarLargeButton;
    ResetLargeButton: TdxBarLargeButton;
    StartMeasureLargeButton: TdxBarLargeButton;
    StopMeasureLargeButton: TdxBarLargeButton;
    StartSaveLargeButton: TdxBarLargeButton;
    StopSaveLargeButton: TdxBarLargeButton;
    RecoveryLargeButton: TdxBarLargeButton;
    CloseLargeButton: TdxBarLargeButton;
    SofewareInfoLargeButton: TdxBarLargeButton;
    DebugTab: TdxRibbonTab;
    DataplaySettingBar: TdxBar;
    MotorControlBar: TdxBar;
    IndicatorLightControlBar: TdxBar;
    HardwareControlBar: TdxBar;
    DebugBar: TdxBar;
    SelectDataLargeButton: TdxBarLargeButton;
    PlaybackLargeButton: TdxBarLargeButton;
    StopPlaybackLargeButton: TdxBarLargeButton;
    MotorControlLargeButton: TdxBarLargeButton;
    IndicatorLightControlLargeButton: TdxBarLargeButton;
    HardwareControlLargeButton: TdxBarLargeButton;
    DebugLargeButton: TdxBarLargeButton;
    ModeSelectBar: TdxBar;
    DetectModeLargeButton: TdxBarLargeButton;
    CalibrationModeLargeButton: TdxBarLargeButton;
    SensorControlBar: TdxBar;
    OpenSensorLargeButton: TdxBarLargeButton;
    CloseSensorLargeButton: TdxBarLargeButton;
    Timer: TTimer;
    DisplayCurvePanel: TPanel;
    OriginalThicknessSignal: TSignal;
    ResultThicknessSignal: TSignal;
    DataDisplayPanel: TPanel;
    RzPageControl: TRzPageControl;
    DetectionTabSheet: TRzTabSheet;
    CalibrationTabSheet: TRzTabSheet;
    DebugTabSheet: TRzTabSheet;
    CurveDisplaySignalChart: TSignalChart;
    OriginalFastLine: TFastLineSeries;
    GridBandTool: TGridBandTool;
    ResultFastLine: TFastLineSeries;
    DebugModeLargeButton: TdxBarLargeButton;
    OriginalThicknessLabel: TLabel;
    OriginalThicknessPanel: TPanel;
    ResultThicknessLabel: TLabel;
    ResultThicknessPanel: TPanel;
    Draw3DPanel: TPanel;
    EquipmentConditionPanel: TPanel;
    HighTemperatureLabel: TLabel;
    HighTemperaturePanel: TPanel;
    LowTempratureLabel: TLabel;
    LowTempraturePanel: TPanel;
    UpperLaserCoreLabel: TLabel;
    UpperLaserSurfaceLabel: TLabel;
    UpperCFrameLabel: TLabel;
    UpperLaserCorePanel: TPanel;
    UpperLaserSurfacePanel: TPanel;
    UpperCFramePanel: TPanel;
    LowerLaserCoreLabel: TLabel;
    LowerLaserSurfaceLabel: TLabel;
    LowerCFrameLabel: TLabel;
    LowerLaserCorePanel: TPanel;
    LowerLaserSurfacePanel: TPanel;
    LowerCFramePanel: TPanel;
    CalibrationSettingPanel: TPanel;
    CalibrationChartPanel: TPanel;
    CalibrationSettingGroupBox: TGroupBox;
    OriginalSettingGroupBox: TGroupBox;
    ResultSettingGroupBox: TGroupBox;
    UpperSensorRadioButton: TRadioButton;
    LowerSensorRadioButton: TRadioButton;
    StandardLabel: TLabel;
    StandardEdit: TEdit;
    CenterPointEdit: TEdit;
    OUpperAngleEdit: TEdit;
    OLowerAngleEdit: TEdit;
    OUpperValueEdit: TEdit;
    OLowerValueEdit: TEdit;
    OSensorDistanceEdit: TEdit;
    RUpperAngleEdit: TEdit;
    RLowerAngleEdit: TEdit;
    RUpperValueEdit: TEdit;
    RLowerValueEdit: TEdit;
    RSensorDistanceEdit: TEdit;
    CenterPointLabel: TLabel;
    OUpperAngleLabel: TLabel;
    OLowerAngleLabel: TLabel;
    OUpperValueLabel: TLabel;
    OLowerValueLabel: TLabel;
    OSensorDistanceLabel: TLabel;
    RUpperAngleLabel: TLabel;
    RLowerAngleLabel: TLabel;
    RUpperValueLabel: TLabel;
    RLowerValueLabel: TLabel;
    RSensorDistanceLabel: TLabel;
    StartCalibrateButton: TButton;
    StopCalibrateButton: TButton;
    SaveButton: TButton;
    OUpperTempLabel: TLabel;
    OLowerTempLabel: TLabel;
    OUpperTempEdit: TEdit;
    OLowerTempEdit: TEdit;
    RUpperTempLabel: TLabel;
    RLowerTempLabel: TLabel;
    RUpperTempEdit: TEdit;
    RLowerTempEdit: TEdit;
    CalibrationChart: TChart;
    UpperOriginalDataPotints: TPointSeries;
    LowerOriginalDataPotints: TPointSeries;
    UpperCorrectDataPotints: TPointSeries;
    LowerCorrectDataPotints: TPointSeries;
    UpperDataPotints: TPointSeries;
    LowerDataPotints: TPointSeries;
    CalibrationAreaDataPotints: TPointSeries;
    DebugDisplayPanel: TPanel;
    DebugDataPanel: TPanel;
    DebugOrignalLabel: TLabel;
    DebugResultLabel: TLabel;
    DebugOriginalPanel: TPanel;
    DebugResultPanel: TPanel;
    DebugConditionPanel: TPanel;
    DebugHighTemperatureLabel: TLabel;
    DebugLowTemperatureLabel: TLabel;
    DebugUpperLaserCoreLabel: TLabel;
    DebugUpperLaserSurfaceLabel: TLabel;
    DebugUpperCFrameLabel: TLabel;
    DebugLowerLaserCoreLabel: TLabel;
    DebugLowerLaserSurfaceLabel: TLabel;
    DebugLowerCFrameLabel: TLabel;
    DebugHighTemperaturePanel: TPanel;
    DebugLowTemperaturePanel: TPanel;
    DebugUpperLaserCorePanel: TPanel;
    DebugUpperLaserSurfacePanel: TPanel;
    DebugUpperCFramePanel: TPanel;
    DebugLowerLaserCorePanel: TPanel;
    DebugLowerLaserSurfacePanel: TPanel;
    DebugLowerCFramePanel: TPanel;
    DebugCurvePanel: TPanel;
    DebugDisplaySignalChart: TSignalChart;
    DebugOriginalFastSeries: TFastLineSeries;
    GridBandTool1: TGridBandTool;
    DebugResultFastSeries: TFastLineSeries;
    DebugOriginalSignal: TSignal;
    DebugResultSignal: TSignal;
    DebugChart: TChart;
    DebugUpperDataPoints: TPointSeries;
    DebugLowerDataPoints: TPointSeries;
    CalibResultLabel: TLabel;
    CalibResultEdit: TEdit;
    Label_Controller: TLabel;
    Edit_Controller: TEdit;
    Label_ID: TLabel;
    Edit_ID: TEdit;
    dxBar_3D: TdxBar;
    dxBarLargeButton_Show3D: TdxBarLargeButton;
    dxBarLargeButton_Hide3D: TdxBarLargeButton;
    Chart_ShowData: TChart;
    GridBandTool2: TGridBandTool;
    FastLine_Original: TFastLineSeries;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxRibbonMinimizedChanged(Sender: TdxCustomRibbon);
    procedure SofewareInfoLargeButtonClick(Sender: TObject);
    procedure CloseLargeButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DebugLargeButtonClick(Sender: TObject);
    procedure RecoveryLargeButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure OpenSensorLargeButtonClick(Sender: TObject);
    procedure CloseSensorLargeButtonClick(Sender: TObject);
    procedure ResetLargeButtonClick(Sender: TObject);
    procedure InPlaceLargeButtonClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure DetectModeLargeButtonClick(Sender: TObject);
    procedure CalibrationModeLargeButtonClick(Sender: TObject);
    procedure MotorControlLargeButtonClick(Sender: TObject);
    procedure StartSaveLargeButtonClick(Sender: TObject);
    procedure StopSaveLargeButtonClick(Sender: TObject);
    procedure HardwareControlLargeButtonClick(Sender: TObject);
    procedure IndicatorLightControlLargeButtonClick(Sender: TObject);
    procedure DebugModeLargeButtonClick(Sender: TObject);
    procedure StartCalibrateButtonClick(Sender: TObject);
    procedure StopCalibrateButtonClick(Sender: TObject);
    procedure SelectDataLargeButtonClick(Sender: TObject);
    procedure PlaybackLargeButtonClick(Sender: TObject);
    procedure StopPlaybackLargeButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure StartMeasureLargeButtonClick(Sender: TObject);
    procedure StopMeasureLargeButtonClick(Sender: TObject);
    procedure dxBarLargeButton_Show3DClick(Sender: TObject);
    procedure dxBarLargeButton_Hide3DClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FGlobalpara : TGlobalpara;
    FDataSelfDeletion : TDataSelfDeletion;
//    FMainThread : TMainThread;
    FCollectThread : TCollectThread;
    FHardWareControl : THardWareControl;
    FIndicatorLight : TIndicatorlight;
    FDataProcess : TDataProcess;
    procedure InitFolder;
    procedure InitConfigurationFile;
    procedure InitSubGroup;
    procedure WndProc(var message: TMessage); override;
    procedure InitCalibPara;
    procedure SaveCalibPara;
    procedure Display4D(var msg : Tmessage); message WM_DISPLAY4D;
    procedure Display3D(var msg : Tmessage); message WM_DISPLAY3D;
    procedure OpenMatlab(var msg : Tmessage); message WM_OPENMATLAB;
  public
    { Public declarations }
  end;

var
  ThicknessMeasurement: TThicknessMeasurement;

implementation

{$R *.dfm}

procedure TThicknessMeasurement.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MessageBox(Handle, '您确定要退出系统吗？', '信息提示', MB_OKCANCEL + MB_ICONQUESTION) = ID_OK then CanClose := True
  Else CanClose := False;
end;

procedure TThicknessMeasurement.FormCreate(Sender: TObject);
begin
  ThicknessMeasurementFormHandle := ThicknessMeasurement.Handle;

  ErrorLogPath := ExtractFilePath(Application.ExeName)  + Ansistring('ErrorLog\ErrorLog.txt');
  ConfigurationFilePath := ExtractFilePath(Application.ExeName) + AnsiString('ConfigurationFile\ConfigurationFile.txt');
  BackupFilePath := ExtractFilePath(Application.ExeName) + AnsiString('ConfigurationFile\配置备份\ConfigurationFile.txt');
  SavedOriginalDataPath := ExtractFilePath(Application.ExeName) + AnsiString('SavedData\OriginalData\');
  SavedResultDataPath := ExtractFilePath(Application.ExeName) + AnsiString('SavedData\ResultData\');

//  FDataSelfDeletion.DataSelfDelete(SavedDataPath, 10.0);    //数据自删减

  InitFolder;
  InitConfigurationFile;

  IsDetecting := True;
  FanFormIsShow := False;
  LightFormIsShow := False;
  Is3DShow := False;
  Show3D := False;
  Show4D := False;
  IsMatlabOpen := False;

  FSerialPortCommunication.OpenSerialPort(5, 115200, 8);

  AutoShow := False;
  FHardWareControl.OpenFan;

//  GMotorControl := TMotorControl.Create;
//  SensorTemperatureCache := TsfQueue.Create;
//  UpperSensorCache := TsfQueue.Create;
//  LowerSensorCache := TsfQueue.Create;
  RealTimeCache := TsfQueue.Create;
  PlayBackCache := TsfQueue.Create;

  TimerCounts := 0;
  SaveCounts := 0;
  AverageCounts := 0;
  CalCounts := 0;
  CalibUpperCounts := 0;
  CalibLowerCounts := 0;
  RecordUpperLaserCore := 0;
  RecordLowerLaserCore := 0;
  WarningCounts := 0;

  IsSaving := False;
  IsMeasuring := False;
  IsOpenSensor := False;
  IsOriginalDataSave := False;
  IsPlayBackReady := False;
  TempIsOriginalDataSave := False;
  IsCalibrating := False;

//  FMainThread := TMainThread.Create;
//  FMainThread.Suspend;

  InitSubGroup;

  FThicknessMeasurement2D.Init(100, 900);
  FCollectThread := TCollectThread.Create;
  FCollectThread.Suspend;

  CalAverageIndex := 0;
  SetLength(CalAverageArray, CalAverageLength);

//  InitializeCriticalSection(RTLCriticalSection);
end;

procedure TThicknessMeasurement.FormDestroy(Sender: TObject);
begin
//  FMainThread.Suspend;
//  SensorTemperatureCache.Free;
//  UpperSensorCache.Free;
//  LowerSensorCache.Free;
  if IsMatlabOpen then mHandle_Matlab.Quit;
  RealTimeCache.Free;
  PlayBackCache.Free;
  FCollectThread.Suspend;
  GMotorControl.FreeDMC5480;
  Timer.Enabled := False;
  FHardWareControl.CloseFan;
  FSerialPortCommunication.CloseSerialPort;   //串口功能
  FThicknessMeasurement2D.Free;

//  GMotorControl.DMC5480Zeroing;

//  DeleteCriticalSection(RTLCriticalSection);
end;

procedure TThicknessMeasurement.FormShow(Sender: TObject);
begin
  if GConfigParameter.IsShow3D = 1 then PostMessage(ThicknessMeasurement.Handle, WM_OPENMATLAB, 0, 0);
end;

procedure TThicknessMeasurement.HardwareControlLargeButtonClick(
  Sender: TObject);
begin
  FanControlForm.Show;
end;

procedure TThicknessMeasurement.SaveButtonClick(Sender: TObject);
begin
  if (CalibConfigParameter.UpperLineMeanValue <> -1) and (CalibConfigParameter.LowerLineMeanValue <> -1) then SaveCalibPara;
end;

procedure TThicknessMeasurement.SelectDataLargeButtonClick(Sender: TObject);
begin
  PlaybackLargeButton.Enabled := False;
  StopPlaybackLargeButton.Enabled := False;
  if IsOpenSensor then
  begin
//    FMainThread.Suspend;
    FCollectThread.Suspend;
//    SensorTemperatureCache.clear;
//    UpperSensorCache.clear;
//    LowerSensorCache.clear;
    IsOpenSensor := False;
    RibbonStatusBar.Panels[0].Text := '传感器已关闭，采集停止。';
    RecoveryLargeButton.Enabled := True;
  end;
  if OpenDialog.Execute then
  begin
    StartMeasureLargeButton.Enabled := False;
    StopMeasureLargeButton.Enabled := False;
    PlaybackLargeButton.Enabled := True;
    StopPlaybackLargeButton.Enabled := True;
    FDataProcess.LoadOriginalData(OpenDialog.FileName);
  end;
end;

procedure TThicknessMeasurement.SofewareInfoLargeButtonClick(Sender: TObject);
var
  VerInfoSize, ErrorExtraction, VerValueSize : DWORD;
  Result : string;
  VerInfo : Pointer;
  VerValue : PVSFixedFileInfo;
  Result1, Result2, Result3, Result4 : Word;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), ErrorExtraction);
  if VerInfoSize = 0 then
  Begin
    ErrorExtraction := GetLastError;
    Result := '0.0.0.0';
  End;
  GetMem(VerInfo, VerInfoSize);
  GetFileVerSionInfo(PChar(Paramstr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  Begin
    Result1 := DwFileVersionms shr 16;
    Result2 := DwFileVersionms And $ffff;
    Result3 := DwFileVersionls shr 16;
    Result4 := DwFileVersionls And $ffff;
  End;
  Result := '软件版本号：' + IntToStr(Result1) + '.' + IntToStr(Result2) + '.' + IntToStr(Result3) + '.' + IntToStr(Result4);
  FreeMem(VerInfo, VerInfoSize);
  MessageBox(Handle, PWideChar(Result), '信息提示', MB_OK);
end;

procedure TThicknessMeasurement.StartCalibrateButtonClick(Sender: TObject);
begin
  if UpperSensorRadioButton.Checked or LowerSensorRadioButton.Checked then
  begin
    SaveButton.Enabled := False;
    IsCalibrating := True;
  end
  else MessageBox(Handle, '请选择上或者下传感器', '信息提示', MB_OK);
end;

procedure TThicknessMeasurement.StartMeasureLargeButtonClick(Sender: TObject);
begin
  Controller := Edit_Controller.Text;
  ID := Edit_ID.Text;
  StopMeasureLargeButton.Enabled := True;
  StartMeasureLargeButton.Enabled := False;
  Edit_Controller.ReadOnly := True;
  Edit_ID.ReadOnly := True;
end;

procedure TThicknessMeasurement.StartSaveLargeButtonClick(Sender: TObject);
begin
  IsSaving := True;
  RibbonStatusBar.Panels[1].Text := '存储数据开始。'
end;

procedure TThicknessMeasurement.StopCalibrateButtonClick(Sender: TObject);
begin
  IsCalibrating := False;
  SaveButton.Enabled := True;
end;

procedure TThicknessMeasurement.StopMeasureLargeButtonClick(Sender: TObject);
begin
  StartMeasureLargeButton.Enabled := True;
  StopMeasureLargeButton.Enabled := False;
  Edit_Controller.ReadOnly := False;
  Edit_ID.ReadOnly := False;
end;

procedure TThicknessMeasurement.StopPlaybackLargeButtonClick(Sender: TObject);
begin
  if RibbonStatusBar.Panels[2].Text <> '2D传感器初始化失败。' then
  begin
    OpenSensorLargeButton.Enabled := True;
    CloseSensorLargeButton.Enabled := True;
  end;
  FCollectThread.Suspend;
  RibbonStatusBar.Panels[1].Text := '暂停回放数据。';
end;

procedure TThicknessMeasurement.StopSaveLargeButtonClick(Sender: TObject);
begin
  IsSaving := False;
  RibbonStatusBar.Panels[1].Text := '存储数据停止。';
end;

procedure TThicknessMeasurement.TimerTimer(Sender: TObject);
begin
  RibbonStatusBar.Panels[5].Text := FormatDateTime('yyyy年mm月dd日 hh:nn:ss', Now);

  if IsDetecting then RibbonStatusBar.Panels[4].Text := '检测模式'
  else RibbonStatusBar.Panels[4].Text := '标定模式';

  if GMotorControl.IsZeroing then RibbonStatusBar.Panels[3].Text := '电机正在回原点。。。' + '目前脉冲位置为：' + GMotorControl.PositionFeedback;
  if GMotorControl.IsAdvancing then RibbonStatusBar.Panels[3].Text := '电机正在到检测位。。。' + '目前脉冲位置为：' + GMotorControl.PositionFeedback;
  if GMotorControl.IsTestAdvancing then RibbonStatusBar.Panels[3].Text := '电机正在前进。。。' + '目前脉冲位置为：' + GMotorControl.PositionFeedback;
  if GMotorControl.IsTestRetreating then RibbonStatusBar.Panels[3].Text := '电机正在后退。。。' + '目前脉冲位置为：' + GMotorControl.PositionFeedback;

  if IsOpenSensor then if IsSaving then RibbonStatusBar.Panels[1].Text := '正在存储数据。。。';

  FThicknessMeasurement2D.GetTemperature;

  FHardWareControl.GetTemperature;
  //温度显示
  TimerCounts := TimerCounts + 1;
  if TimerCounts = 10 then
  begin
    UpperLaserSurfacePanel.Caption := FormatFloat('0.0', UpperLaserSurface / 10) + '℃';
    LowerLaserSurfacePanel.Caption := FormatFloat('0.0', LowerLaserSurface / 10) + '℃';
    UpperCFramePanel.Caption := FormatFloat('0.0', UpperCFrame / 10) + '℃';
    LowerCFramePanel.Caption := FormatFloat('0.0', UpperCFrame / 10 - 1.7) + '℃';
    HighTemperaturePanel.Caption := FormatFloat('0.0', HighTemperature / 10) + '℃';
    LowTempraturePanel.Caption := FormatFloat('0.0', LowTemprature / 10) + '℃';
    if UpperLaserCore > 2731 then UpperLaserCorePanel.Caption := FormatFloat('0.0', (UpperLaserCore - 2731) / 10) + '℃';
    if LowerLaserCore > 2731 then LowerLaserCorePanel.Caption := FormatFloat('0.0', (LowerLaserCore - 2731) / 10) + '℃';

    if GConfigParameter.IsDebug = 1 then
    begin
      DebugUpperLaserSurfacePanel.Caption := FormatFloat('0.0', UpperLaserSurface / 10) + '℃';
      DebugLowerLaserSurfacePanel.Caption := FormatFloat('0.0', LowerLaserSurface / 10) + '℃';
      DebugUpperCFramePanel.Caption := FormatFloat('0.0', UpperCFrame / 10) + '℃';
      DebugLowerCFramePanel.Caption := FormatFloat('0.0', LowerCFrame / 10) + '℃';
      DebugHighTemperaturePanel.Caption := FormatFloat('0.0', HighTemperature / 10) + '℃';
      DebugLowTemperaturePanel.Caption := FormatFloat('0.0', LowTemprature / 10) + '℃';
      if UpperLaserCore > 2731 then DebugUpperLaserCorePanel.Caption := FormatFloat('0.0', (UpperLaserCore - 2731) / 10) + '℃';
      if LowerLaserCore > 2731 then DebugLowerLaserCorePanel.Caption := FormatFloat('0.0', (LowerLaserCore - 2731) / 10) + '℃';
    end;

    if not IsDetecting then
    begin
      RUpperTempEdit.Text := FormatFloat('0.0', (UpperLaserCore - 2731) / 10);
      RLowerTempEdit.Text := FormatFloat('0.0', (LowerLaserCore - 2731) / 10);
    end;

    TimerCounts := 0;
    WarningCounts := WarningCounts + 1;
  end;

  if WarningCounts = 10 then
  begin
    if ((UpperLaserCore - 2731) / 10 > 50) or ((LowerLaserCore - 2731) / 10 > 50) then
    begin
      FCollectThread.Suspend;
      OpenSensorLargeButton.Enabled := False;
      CloseSensorLargeButton.Enabled := False;
      StartMeasureLargeButton.Enabled := False;
      StopMeasureLargeButton.Enabled := False;
      RibbonStatusBar.Panels[2].Text := '传感器核心温度过高，请及时处理。';
    end;
    WarningCounts := 0;
  end;
end;

procedure TThicknessMeasurement.CalibrationModeLargeButtonClick(
  Sender: TObject);
begin
  IsDetecting := False;
  RzPageControl.ActivePage := CalibrationTabSheet;
end;

procedure TThicknessMeasurement.CloseLargeButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TThicknessMeasurement.CloseSensorLargeButtonClick(Sender: TObject);
begin
//  FMainThread.Suspend;
  FCollectThread.Suspend;
//  SensorTemperatureCache.clear;
//  UpperSensorCache.clear;
//  LowerSensorCache.clear;
  IsOpenSensor := False;
  CalCounts := 0;
  RibbonStatusBar.Panels[0].Text := '传感器已关闭，采集停止。';
  RecoveryLargeButton.Enabled := True;
  StartMeasureLargeButton.Enabled := False;
  StopMeasureLargeButton.Enabled := False;
  SelectDataLargeButton.Enabled := True;
  PlaybackLargeButton.Enabled := True;
  StopPlaybackLargeButton.Enabled := True;
end;

procedure TThicknessMeasurement.DebugLargeButtonClick(Sender: TObject);   //功能测试事件
var
  oReal : OleVariant;
  oImage : OleVariant;
  Result : string;
  i : Byte;
begin
  oReal := VarArrayCreate([1, 207], varDouble);
  oImage := VarArrayCreate([1, 207], VarDouble);
  for i := 1 to 207 do
  begin
    oReal[i] := i;
  end;
  mHandle_Matlab.PutFullmatrix('DataMatrix', 'base', VarArrayRef(oReal), VarArrayRef(oImage));
  mHandle_Matlab.Execute('S3D=shiyanpin1830(DataMatrix)');
//  Result := mHandle_Matlab.Execute('S3D');
//  ShowMessage(Result);
end;

procedure TThicknessMeasurement.DebugModeLargeButtonClick(Sender: TObject);
begin
  IsDetecting := True;
  RzPageControl.ActivePage := DebugTabSheet;
end;

procedure TThicknessMeasurement.DetectModeLargeButtonClick(Sender: TObject);
begin
  IsDetecting := True;
  RzPageControl.ActivePage := DetectionTabSheet;
end;

procedure TThicknessMeasurement.dxBarLargeButton_Hide3DClick(Sender: TObject);
begin
  Is3DShow := False;
  dxBarLargeButton_Show3D.Enabled := True;
  dxBarLargeButton_Hide3D.Enabled := False;
end;

procedure TThicknessMeasurement.dxBarLargeButton_Show3DClick(Sender: TObject);
begin
  Is3DShow := True;
  dxBarLargeButton_Show3D.Enabled := False;
  dxBarLargeButton_Hide3D.Enabled := True;
end;

procedure TThicknessMeasurement.dxRibbonMinimizedChanged(Sender: TdxCustomRibbon);
begin
//  dxRibbon.ShowTabGroups := True;
end;

procedure TThicknessMeasurement.InitFolder;
begin
  if not DirectoryExists(ExtractFilePath(ErrorLogPath)) then ForceDirectories(ExtractFilePath(ErrorLogPath));
  if not DirectoryExists(ExtractFilePath(BackupFilePath)) then ForceDirectories(ExtractFilePath(BackupFilePath));
  if not DirectoryExists(ExtractFilePath(SavedOriginalDataPath)) then ForceDirectories(ExtractFilePath(SavedOriginalDataPath));
  if not DirectoryExists(ExtractFilePath(SavedResultDataPath)) then ForceDirectories(ExtractFilePath(SavedResultDataPath));
end;

procedure TThicknessMeasurement.InPlaceLargeButtonClick(Sender: TObject);
begin
  GMotorControl.DMC5480InPlace;
end;

procedure TThicknessMeasurement.MotorControlLargeButtonClick(Sender: TObject);
begin
  MotorControlForm.Show;
end;

procedure TThicknessMeasurement.OpenSensorLargeButtonClick(Sender: TObject);
begin
  RecoveryLargeButton.Enabled := False;
  SelectDataLargeButton.Enabled := False;
  PlaybackLargeButton.Enabled := False;
  StopPlaybackLargeButton.Enabled := False;
  CalCounts := 0;
  IsOpenSensor := True;
  FCollectThread.Resume;
//  FMainThread.Resume;
  RibbonStatusBar.Panels[0].Text := '传感器已开启，正在采集。';
  StartMeasureLargeButton.Enabled := True;
end;

procedure TThicknessMeasurement.PlaybackLargeButtonClick(Sender: TObject);
begin
  OpenSensorLargeButton.Enabled := False;
  CloseSensorLargeButton.Enabled := False;
  FCollectThread.Resume;
  RibbonStatusBar.Panels[1].Text := '回放数据中。。。';
end;

procedure TThicknessMeasurement.IndicatorLightControlLargeButtonClick(
  Sender: TObject);
begin
  IndicatorLightForm.Show;
end;

procedure TThicknessMeasurement.InitConfigurationFile;
var
  ConfigurationTextFile : TextFile;
  IniFile : TIniFile;
begin
  try
    AssignFile(ConfigurationTextFile, ConfigurationFilePath);
    if not FileExists(ConfigurationFilePath) then
    Begin
      Rewrite(ConfigurationTextFile);
      Writeln(ConfigurationTextFile, '[SenSorSetting]');
      Writeln(ConfigurationTextFile, '');

      Writeln(ConfigurationTextFile, '[ParameticCorrection]');
      Writeln(ConfigurationTextFile, 'IsThermalCompensation = 0');
      Writeln(ConfigurationTextFile, 'UpperSensorAngle = 0');
      Writeln(ConfigurationTextFile, 'LowerSensorAngle = 0');
      Writeln(ConfigurationTextFile, 'SensorsDistance = 0');
      Writeln(ConfigurationTextFile, '');

      Writeln(ConfigurationTextFile, '[CalibrationParameter]');
      Writeln(ConfigurationTextFile, 'UpperLineMeanValue = 0');
      Writeln(ConfigurationTextFile, 'LowerLineMeanValue = 0');
      Writeln(ConfigurationTextFile, 'UpperSensorTemperature = 0');
      Writeln(ConfigurationTextFile, 'LowerSensorTemperature = 0');
      Writeln(ConfigurationTextFile, '');

      Writeln(ConfigurationTextFile, '[Debug]');
      Writeln(ConfigurationTextFile, 'IsDebug = 0');
      Writeln(ConfigurationTextFile, 'IsShow3D = 0');

      CloseFile(ConfigurationTextFile);
    End;

    IniFile := TIniFile.Create(ConfigurationFilePath);

    GConfigParameter.IsThermalCompensation := IniFile.ReadInteger('ParameticCorrection', 'IsThermalCompensation', 0);
    GConfigParameter.UpperSensorAngle := IniFile.ReadFloat('ParameticCorrection', 'UpperSensorAngle', 0);
    GConfigParameter.LowerSensorAngle := IniFile.ReadFloat('ParameticCorrection', 'LowerSensorAngle', 0);
    GConfigParameter.SensorsDistance := IniFile.ReadFloat('ParameticCorrection', 'SensorsDistance', 0);

    GConfigParameter.UpperLineMeanValue := IniFile.ReadFloat('CalibrationParameter', 'UpperLineMeanValue', 0);
    GConfigParameter.LowerLineMeanValue := IniFile.ReadFloat('CalibrationParameter', 'LowerLineMeanValue', 0);
    GConfigParameter.UpperSensorTemperature := IniFile.ReadFloat('CalibrationParameter', 'UpperSensorTemperature', 0);
    GConfigParameter.LowerSensorTemperature := IniFile.ReadFloat('CalibrationParameter', 'LowerSensorTemperature', 0);

    GConfigParameter.IsDebug := IniFile.ReadInteger('Debug', 'IsDebug', 0);
    GConfigParameter.IsShow3D := IniFile.ReadInteger('Debug', 'IsShow3D', 0);

    IniFile.Free;

    GConfigParameter.StandardThickness := StrToFloat(StandardEdit.Text);
    GConfigParameter.CenterPoint := StrToFloat(CenterPointEdit.Text);

    if (GConfigParameter.IsThermalCompensation > 1) Or (GConfigParameter.IsDebug > 1) then
    begin
      RibbonStatusBar.Panels[2].Text := '软件初始化失败，请检查配置文件。';
      OpenSensorLargeButton.Enabled := False;
      CloseSensorLargeButton.Enabled := False;
    end;

    if GConfigParameter.IsDebug > 0 then DebugTab.Visible := True
    else DebugTab.Visible := False;

    InitCalibPara;

  except
    On E : Exception Do
    begin
      FGlobalpara.ShowAndSaveErrorLog(ErrorLogPath, 'InitConfigurationFile', E.Message, False);
      RibbonStatusBar.Panels[2].Text := '软件初始化失败，请检查配置文件。';
      OpenSensorLargeButton.Enabled := False;
      CloseSensorLargeButton.Enabled := False;
    end;
  end;
end;

procedure TThicknessMeasurement.RecoveryLargeButtonClick(Sender: TObject);
var
  BackupTextFile : TextFile;
begin
  AssignFile(BackupTextFile, BackupFilePath);
  if FileExists(BackupFilePath) then
  begin
    if MessageBox(Handle, '您确定要恢复之前的设置吗？', '恢复设置', MB_OKCANCEL + MB_ICONQUESTION) = ID_OK then
    begin
      CopyFile(PChar(BackupFilePath), PChar(ConfigurationFilePath), False);
      InitConfigurationFile;
      InitSubGroup;
      MessageBox(Handle, '设置已恢复。', '恢复设置', MB_OK + MB_ICONQUESTION);
    end;
  end
  else MessageBox(Handle, '未发现之前的设置。', '恢复设置', MB_OK + MB_ICONQUESTION);
end;

procedure TThicknessMeasurement.ResetLargeButtonClick(Sender: TObject);
begin
  GMotorControl.DMC5480Zeroing;
end;

procedure TThicknessMeasurement.InitSubGroup;
begin
  StartMeasureLargeButton.Enabled := False;
  StopMeasureLargeButton.Enabled := False;
  dxBarLargeButton_Show3D.Enabled := False;
  dxBarLargeButton_Hide3D.Enabled := False;
  RzPageControl.ActivePage := DetectionTabSheet;

  OUpperAngleEdit.Text := FloatToStr(GConfigParameter.UpperSensorAngle);
  OLowerAngleEdit.Text := FloatToStr(GConfigParameter.LowerSensorAngle);
  OUpperValueEdit.Text := FloatToStr(GConfigParameter.UpperLineMeanValue);
  OLowerValueEdit.Text := FloatToStr(GConfigParameter.LowerLineMeanValue);
  OSensorDistanceEdit.Text := FloatToStr(GConfigParameter.SensorsDistance);
  OUpperTempEdit.Text := FloatToStr(GConfigParameter.UpperSensorTemperature);
  OLowerTempEdit.Text := FloatToStr(GConfigParameter.LowerSensorTemperature)
end;

procedure TThicknessMeasurement.WndProc(var message: TMessage);
var
  I : Word;
  TempData : ^TDataArray;
  WndTemperature : array of Double;
  Wnd2D1Data, Wnd2D2Data : TSensorPoints;
begin
  inherited;
  case message.Msg of
    WM_PaintPointer:
    begin
      while RealTimeCache.count > 0 do
      begin
        TempData := RealTimeCache.Pop;
        CopyMemory(@RealTimeData, TempData, SizeOf(TDataArray));
        Dispose(TempData);
        Application.ProcessMessages;
        SetLength(WndTemperature, 8);
        for I := 0 to 7 do
        begin
          WndTemperature[I] := RealTimeData.DataArray[I];
        end;
        for I := 0 to 1279 do
        begin
          Wnd2D1Data.VdValueX[I] := RealTimeData.DataArray[I + 8];
        end;
        for I := 0 to 1279 do
        begin
          Wnd2D1Data.VdValueZ[I] := RealTimeData.DataArray[I + 1288];
        end;
        for I := 0 to 1279 do
        begin
          Wnd2D2Data.VdValueX[I] := RealTimeData.DataArray[I + 2568];
        end;
        for I := 0 to 1279 do
        begin
          Wnd2D2Data.VdValueZ[I] := RealTimeData.DataArray[I + 3848];
        end;
        FDataProcess.DataDeal(WndTemperature, Wnd2D1Data, Wnd2D2Data);
        if Show3D then
        begin
          Show3D := False;
          PostMessage(ThicknessMeasurement.Handle, WM_DISPLAY3D, 0, 0);
        end;
        if Show4D then
        begin
          Show4D := False;
          PostMessage(ThicknessMeasurement.Handle, WM_DISPLAY4D, 0, 0);
        end;
      end;
    end;
    WM_PlayBackPaintPointer:
    begin
      Application.ProcessMessages;
      SetLength(WndTemperature, 8);
      for I := 0 to 7 do
      begin
        WndTemperature[I] := PlayBackData.DataArray[I];
      end;
      for I := 0 to 1279 do
      begin
        Wnd2D1Data.VdValueX[I] := PlayBackData.DataArray[I + 8];
      end;
      for I := 0 to 1279 do
      begin
        Wnd2D1Data.VdValueZ[I] := PlayBackData.DataArray[I + 1288];
      end;
      for I := 0 to 1279 do
      begin
        Wnd2D2Data.VdValueX[I] := PlayBackData.DataArray[I + 2568];
      end;
      for I := 0 to 1279 do
      begin
        Wnd2D2Data.VdValueZ[I] := PlayBackData.DataArray[I + 3848];
      end;
      FDataProcess.DataDeal(WndTemperature, Wnd2D1Data, Wnd2D2Data);
      if Show3D then
      begin
        Show3D := False;
        PostMessage(ThicknessMeasurement.Handle, WM_DISPLAY3D, 0, 0);
      end;
      if Show4D then
      begin
        Show4D := False;
        PostMessage(ThicknessMeasurement.Handle, WM_DISPLAY4D, 0, 0);
      end;
    end;
  end;
end;

procedure TThicknessMeasurement.InitCalibPara;
begin
  CalibConfigParameter.IsThermalCompensation := GConfigParameter.IsThermalCompensation;
  CalibConfigParameter.IsDebug := GConfigParameter.IsDebug;
  CalibConfigParameter.UpperSensorAngle := -1;
  CalibConfigParameter.LowerSensorAngle := -1;
  CalibConfigParameter.SensorsDistance := -1;
  CalibConfigParameter.UpperLineMeanValue := -1;
  CalibConfigParameter.LowerLineMeanValue := -1;
  CalibConfigParameter.UpperSensorTemperature := -1;
  CalibConfigParameter.LowerSensorTemperature := -1;
end;

procedure TThicknessMeasurement.SaveCalibPara;
var
  IniFile : TIniFile;
begin
  IniFile := TIniFile.Create(ConfigurationFilePath);
  Inifile.WriteString('ParameticCorrection', 'UpperSensorAngle',  FormatFloat('0.000000', CalibConfigParameter.UpperSensorAngle));
  Inifile.WriteString('ParameticCorrection', 'LowerSensorAngle', FormatFloat('0.000000', CalibConfigParameter.LowerSensorAngle));
  Inifile.WriteString('ParameticCorrection', 'SensorsDistance',  FormatFloat('0.000000', CalibConfigParameter.SensorsDistance));
  Inifile.WriteString('CalibrationParameter', 'UpperLineMeanValue', FormatFloat('0.000000', CalibConfigParameter.UpperLineMeanValue));
  Inifile.WriteString('CalibrationParameter', 'LowerLineMeanValue', FormatFloat('0.000000', CalibConfigParameter.LowerLineMeanValue));
  Inifile.WriteString('CalibrationParameter', 'UpperSensorTemperature', RUpperTempEdit.Text);
  Inifile.WriteString('CalibrationParameter', 'LowerSensorTemperature', RLowerTempEdit.Text);
  IniFile.Free;
end;

procedure TThicknessMeasurement.Display4D(var msg: TMessage);
begin
  try
    mHandle_Matlab.PutFullmatrix('DataArray', 'base', VarArrayRef(oReal), VarArrayRef(oImage));
    mHandle_Matlab.Execute('Show4D=Display4D(DataArray)');
  except
    On E : Exception do
    begin
      mHandle_Matlab.PutFullmatrix('DataArray', 'base', VarArrayRef(oReal), VarArrayRef(oImage));
      mHandle_Matlab.Execute('Show4D=Display4D(DataArray)');
    end;
  end;
end;

procedure TThicknessMeasurement.Display3D(var msg: TMessage);
begin
  try
    mHandle_Matlab.PutFullmatrix('DataArray', 'base', VarArrayRef(oReal), VarArrayRef(oImage));
    mHandle_Matlab.Execute('Show3D=Display3D(DataArray)');
  except
    On E : Exception do
    begin
      mHandle_Matlab.PutFullmatrix('DataArray', 'base', VarArrayRef(oReal), VarArrayRef(oImage));
      mHandle_Matlab.Execute('Show3D=Display3D(DataArray)');
    end;
  end;
end;

procedure TThicknessMeasurement.OpenMatlab(var msg: TMessage);
begin
  mHandle_Matlab := CreateOleObject('Matlab.Application');
  mHandle_Matlab.MinimizeCommandWindow;
  IsMatlabOpen := True;
  dxBarLargeButton_Show3D.Enabled := True;
end;

end.
