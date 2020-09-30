unit UCollectThread;

interface

uses
  System.Classes, UThicknessMeasurement2D, UGlobalpara, USoftwareFunction, Vcl.Forms, Winapi.Windows, System.SysUtils, UDataProcess;

type
  TCollectThread = class(TThread)
  private
    { Private declarations }
    FThicknessMeasurement2D : TThicknessMeasurement2D;
    FHardWareControl : THardWareControl;
    FGlobalpara : TGlobalpara;
    FDataProcess : TDataProcess;
  protected
    procedure Execute; override;
  public
    constructor Create; overload;
  end;

implementation

{ UCollectThread }

procedure TCollectThread.Execute;
var
  TemperatureRecord : TTemperature;
  TemperatureData0 : ^TTemperature;

  TempUpperSensorPoints, TempLowerSensorPoints : TSensorPoints;
  TemperatureRecordData : array [0..7] of Double;

  Data : ^TSensorPoints;

  TempTemperatureData : ^TTemperature;
  TempUpperSensorData, TempLowerSensorData : ^TSensorPoints;

  TempDataArray : TDataArray;
  TempData : ^TDataArray;
  TempPlayBackData : ^TDataArray;
begin
  { Place thread code here }
  while not Terminated do
  begin
    if IsOpenSensor then
    begin
      FThicknessMeasurement2D.GetProfiles_Ethernet;

      //不能在线程中使用串口读取函数
//      FThicknessMeasurement2D.GetTemperature;
//      FHardWareControl.GetTemperature;
      TemperatureRecordData[0] := UpperLaserSurface / 10;
      TemperatureRecordData[1] := LowerLaserSurface / 10;
      TemperatureRecordData[2] := UpperCFrame / 10;
      TemperatureRecordData[3] := LowerCFrame / 10;
      TemperatureRecordData[4] := HighTemperature / 10;
      TemperatureRecordData[5] := LowTemprature / 10;
      TemperatureRecordData[6] := (UpperLaserCore - 2731) / 10;
      TemperatureRecordData[7] := (LowerLaserCore - 2731) / 10;

      TempUpperSensorPoints.VdValueX := UpperSensorPoints.VdValueX;
      TempUpperSensorPoints.VdValueZ := UpperSensorPoints.VdValueZ;
      TempLowerSensorPoints.VdValueX := LowerSensorPoints.VdValueX;
      TempLowerSensorPoints.VdValueZ := LowerSensorPoints.VdValueZ;

      TempDataArray := FDataProcess.DataPacking(TemperatureRecordData, TempUpperSensorPoints, TempLowerSensorPoints);

      New(TempData);
      CopyMemory(TempData, @TempDataArray, SizeOf(TDataArray));
      RealTimeCache.Push(TempData);
      SendMessage(ThicknessMeasurementFormHandle, WM_PaintPointer, 0, 0);

//      EnterCriticalSection(RTLCriticalSection);
//
//      New(TemperatureData0);
//      CopyMemory(TemperatureData0, @TemperatureRecord, SizeOf(TTemperature));
//      SensorTemperatureCache.Push(TemperatureData0);
//
//      New(Data);
//      CopyMemory(Data, @UpperSensorPoints, SizeOf(TSensorPoints));
//      UpperSensorCache.Push(Data);
//
//      New(Data);
//      CopyMemory(Data, @LowerSensorPoints, SizeOf(TSensorPoints));
//      LowerSensorCache.Push(Data);
//
//      LeaveCriticalSection(RTLCriticalSection);
//      if (SensorTemperatureCache.count > 0) and (UpperSensorCache.count > 0) and (LowerSensorCache.count > 0) then
//      begin
//        EnterCriticalSection(RTLCriticalSection);
//
//        TempTemperatureData := SensorTemperatureCache.Pop;
//        CopyMemory(@TemperatureData0, TempTemperatureData, SizeOf(TTemperature));
//        Dispose(TempTemperatureData);
//
//        TempUpperSensorData := UpperSensorCache.Pop;
//        CopyMemory(@UpperSensorCache, TempUpperSensorData, SizeOf(TSensorPoints));
//        Dispose(TempUpperSensorData);
//
//        TempLowerSensorData := LowerSensorCache.Pop;
//        CopyMemory(@LowerSensorCache, TempLowerSensorData, SizeOf(TSensorPoints));
//        Dispose(TempLowerSensorData);
//
//        LeaveCriticalSection(RTLCriticalSection);
//      end;

//      writeln(TempFile, FormatDateTime('yyyy年mm月dd日 hh:nn:ss', Now));
      Sleep(5);
    end
    else
    begin
      if PlayBackCache.Count > 0 then
      begin
        TempPlayBackData := PlayBackCache.Pop;
        CopyMemory(@PlayBackData, TempPlayBackData, SizeOf(TDataArray));
        Dispose(TempPlayBackData);
        SendMessage(ThicknessMeasurementFormHandle, WM_PlayBackPaintPointer, 0, 0);
        Sleep(2);
      end;
    end;
  end;
end;

constructor TCollectThread.Create;
begin
  inherited;
  Priority := tpHighest;
end;

end.
