unit UMainThread;

interface

uses
  System.Classes, UGlobalpara, Winapi.Windows;

type
  TMainThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

{ TMainThread }

uses
  MainInterface;

procedure TMainThread.Execute;
//var
//  TempTemperatureData : ^TTemperature;
//  TempUpperSensorData, TempLowerSensorData : ^TSensorPoints;
begin
  { Place thread code here }
  while not Terminated do
  begin
//    if (SensorTemperatureCache.count > 0) and (UpperSensorCache.count > 0) and (LowerSensorCache.count > 0) then
//    begin
//      TempTemperatureData := SensorTemperatureCache.Pop;
//      CopyMemory(@TemperatureData, TempTemperatureData, SizeOf(TTemperature));
//      Dispose(TempTemperatureData);
//
//      TempUpperSensorData := UpperSensorCache.Pop;
//      CopyMemory(@UpperSensorCache, TempUpperSensorData, SizeOf(TSensorPoints));
//      Dispose(TempUpperSensorData);
//
//      TempLowerSensorData := LowerSensorCache.Pop;
//      CopyMemory(@LowerSensorCache, TempLowerSensorData, SizeOf(TSensorPoints));
//      Dispose(TempLowerSensorData);
//    end;
  end;
end;

end.
