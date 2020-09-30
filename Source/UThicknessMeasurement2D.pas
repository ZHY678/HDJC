unit UThicknessMeasurement2D;

interface

Uses
  scanCONTRAL, System.SysUtils, Winapi.Windows, math;

type
  TThicknessMeasurement2D = class
    private
      const ReConnectCounts = 10;
    public
      function Init(ShutterTime, IdleTime : Cardinal) : Boolean;
      procedure Free;
      procedure GetProfiles_Ethernet;
      procedure GetTemperature;
  end;

implementation

uses
  MainInterface, UGlobalpara;

function TThicknessMeasurement2D.Init(ShutterTime: Cardinal; IdleTime: Cardinal) : Boolean;
var
  TempCounts : Byte;
begin
  try
    Result := False;
    TempCounts := 0;
    SenSor2D1 := s_CreateLLTDevice(INTF_TYPE_ETHERNET);
    IRetValue := s_GetDeviceInterfacesFast(SenSor2D1, @VuiEthernetInterfaces[0], SizeOf(VuiEthernetInterfaces));
    if (IRetValue < 0) or (IRetValue > 5) then   //设传感器最大连接数为5
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '2D传感器初始化失败。';
      ThicknessMeasurement.OpenSensorLargeButton.Enabled := False;
      ThicknessMeasurement.CloseSensorLargeButton.Enabled := False;
      Exit;
    end
    else if IRetValue = 0 then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '未发现2D传感器，请检查。';
      Exit;
    end
    else ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '系统发现' + IntToStr(IRetValue) + '个2D传感器。';

    IRetValue := s_SetDeviceInterface(SenSor2D1, VuiEthernetInterfaces[0], 0);
    if IRetValue < GENERAL_FUNCTION_OK then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '初始设置2D传感器出现问题。';
      Exit;
    end;

    IRetValue := s_Connect(SenSor2D1);
    while (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts < ReConnectCounts) do
    begin
      IRetValue := s_Connect(SenSor2D1);
      TempCounts := TempCounts + 1;
    end;
    if (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts = ReConnectCounts) then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '连接2D传感器失败。';
      Exit;
    end;

    IRetValue := s_SetFeature(SenSor2D1, FEATURE_FUNCTION_SHUTTERTIME, ShutterTime);
    while (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts < ReConnectCounts) do
    begin
      IRetValue := s_SetFeature(SenSor2D1, FEATURE_FUNCTION_SHUTTERTIME, ShutterTime);
      TempCounts := TempCounts + 1;
    end;
    if (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts = ReConnectCounts) then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '设置2D传感器失败。';
      Exit;
    end;
    IRetValue := s_SetFeature(SenSor2D1, FEATURE_FUNCTION_IDLETIME, IdleTime);
    while (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts < ReConnectCounts) do
    begin
      IRetValue := s_SetFeature(SenSor2D1, FEATURE_FUNCTION_IDLETIME, IdleTime);
      TempCounts := TempCounts + 1;
    end;
    if (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts = ReConnectCounts) then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '设置2D传感器失败。';
      Exit;
    end;

    IRetValue := s_GetLLTType(SenSor2D1, @M_TscanCONTROLType1);   //查询传感器状态


    IRetValue := s_GetResolutions(SenSor2D1, @VdwResolutions1[0], SizeOf(VdwResolutions1));
    if IRetValue < GENERAL_FUNCTION_OK then Exit;

    SetLength(VucProfileBuffer1, VdwResolutions1[0] * 4 + 16);

//    IRetValue := s_SetResolution(SenSor2D1, M_UiResolution1);
//    if IRetValue < GENERAL_FUNCTION_OK then Exit;
//
//    IRetValue := s_SetProfileConfig(SenSor2D1, PROFILE);
//    if IRetValue < GENERAL_FUNCTION_OK then Exit;

    IRetValue := s_TransferProfiles(SenSor2D1, NORMAL_TRANSFER, True);
    if IRetValue < GENERAL_FUNCTION_OK then Exit;

    SenSor2D2 := s_CreateLLTDevice(INTF_TYPE_ETHERNET);
    IRetValue := s_SetDeviceInterface(SenSor2D2, VuiEthernetInterfaces[1], 0);
    if IRetValue < GENERAL_FUNCTION_OK then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '初始设置2D传感器出现问题。';
      Exit;
    end;

    IRetValue := s_Connect(SenSor2D2);
    while (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts < ReConnectCounts) do
    begin
      IRetValue := s_Connect(SenSor2D2);
      TempCounts := TempCounts + 1;
    end;
    if (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts = ReConnectCounts) then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '连接2D传感器失败。';
      Exit;
    end;

    IRetValue := s_SetFeature(SenSor2D2, FEATURE_FUNCTION_SHUTTERTIME, ShutterTime);
    while (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts < ReConnectCounts) do
    begin
      IRetValue := s_SetFeature(SenSor2D2, FEATURE_FUNCTION_SHUTTERTIME, ShutterTime);
      TempCounts := TempCounts + 1;
    end;
    if (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts = ReConnectCounts) then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '设置2D传感器失败。';
      Exit;
    end;
    IRetValue := s_SetFeature(SenSor2D2, FEATURE_FUNCTION_IDLETIME, IdleTime);
    while (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts < ReConnectCounts) do
    begin
      IRetValue := s_SetFeature(SenSor2D2, FEATURE_FUNCTION_IDLETIME, IdleTime);
      TempCounts := TempCounts + 1;
    end;
    if (IRetValue < GENERAL_FUNCTION_OK) and (TempCounts = ReConnectCounts) then
    begin
      ThicknessMeasurement.RibbonStatusBar.Panels[2].Text := '设置2D传感器失败。';
      Exit;
    end;

    IRetValue := s_GetLLTType(SenSor2D2, @M_TscanCONTROLType2);   //查询传感器状态

    IRetValue := s_GetResolutions(SenSor2D2, @VdwResolutions2[0], SizeOf(VdwResolutions2));
    if IRetValue < GENERAL_FUNCTION_OK then Exit;

//    IRetValue := s_SetResolution(SenSor2D2, M_UiResolution2);
//    if IRetValue < GENERAL_FUNCTION_OK then Exit;
//
//    IRetValue := s_SetProfileConfig(SenSor2D2, PROFILE);
//    if IRetValue < GENERAL_FUNCTION_OK then Exit;

    SetLength(VucProfileBuffer2, VdwResolutions2[0] * 4 + 16);

    IRetValue := s_TransferProfiles(SenSor2D2, NORMAL_TRANSFER, True);
    if IRetValue < GENERAL_FUNCTION_OK then Exit;

    Result := True;
    TimerCounts := 0;
    ThicknessMeasurement.Timer.Enabled := True;
  except
    On E : Exception Do
    Begin
//      FGlobalpara.ShowAndSaveErrorLog(ErrorLogPath, '2DInit', E.Message, False);
    End;
  end;
end;

procedure TThicknessMeasurement2D.Free;
begin
  try
    IRetValue := s_TransferProfiles(SenSor2D1, NORMAL_TRANSFER, False);
    if IRetValue < GENERAL_FUNCTION_OK then Exit;

    IRetValue := s_TransferProfiles(SenSor2D2, NORMAL_TRANSFER, False);
    if IRetValue < GENERAL_FUNCTION_OK then Exit;
    if SenSor2D1 > 0 then s_Disconnect(SenSor2D1);
    if SenSor2D2 > 0 then s_Disconnect(SenSor2D2);
  except
    On E : Exception Do
    Begin
//      FGlobalpara.ShowAndSaveErrorLog(ErrorLogPath, '2DFree', E.Message, False);
    End;
  end;
end;

procedure TThicknessMeasurement2D.GetProfiles_Ethernet;
var
  Data : ^TSensorPoints;
begin
  try
    IRetValue := s_GetActualProfile(SenSor2D1, @VucProfileBuffer1[0], VdwResolutions1[0] * 4 + 16, PURE_PROFILE, nil);
    if IRetValue < Length(VucProfileBuffer1) then Exit;

    IRetValue := s_ConvertProfile2Values(SenSor2D1, @VucProfileBuffer1[0], VdwResolutions1[0], PURE_PROFILE, M_TscanCONTROLType1, 0, True, nil, nil, nil, @UpperSensorPoints.VdValueX[0], @UpperSensorPoints.VdValueZ[0], nil, nil);
    if(((IRetValue And CONVERT_X) = 0) Or ((IRetValue And CONVERT_Z) = 0)) then Exit;

    IRetValue := s_GetActualProfile(SenSor2D2, @VucProfileBuffer2[0], VdwResolutions2[0] * 4 + 16, PURE_PROFILE, nil);
    if IRetValue < Length(VucProfileBuffer2) then Exit;

    IRetValue := s_ConvertProfile2Values(SenSor2D2, @VucProfileBuffer2[0], VdwResolutions2[0], PURE_PROFILE, M_TscanCONTROLType2, 0, True, nil, nil, nil, @LowerSensorPoints.VdValueX[0], @LowerSensorPoints.VdValueZ[0], nil, nil);
    if(((IRetValue And CONVERT_X) = 0) Or ((IRetValue And CONVERT_Z) = 0)) then Exit;
  except
    On E : Exception Do
    Begin
//      FGlobalpara.ShowAndSaveErrorLog(ErrorLogPath, '2DGetProfiles_Ethernet', E.Message, False);
    End;
  end;
end;

procedure TThicknessMeasurement2D.GetTemperature;
begin
  s_SetFeature(SenSor2D1, FEATURE_FUNCTION_TEMPERATURE, $86000000);
  s_GetFeature(SenSor2D1, FEATURE_FUNCTION_TEMPERATURE, @UpperLaserCore);
  if UpperLaserCore <> 0 then RecordUpperLaserCore := UpperLaserCore;
  if (UpperLaserCore = 0) and (RecordUpperLaserCore <> 0) then UpperLaserCore := RecordUpperLaserCore;

  s_SetFeature(SenSor2D2, FEATURE_FUNCTION_TEMPERATURE, $86000000);
  s_GetFeature(SenSor2D2, FEATURE_FUNCTION_TEMPERATURE, @LowerLaserCore);
  if LowerLaserCore <> 0 then RecordLowerLaserCore := LowerLaserCore;
  if (LowerLaserCore = 0) and (RecordLowerLaserCore <> 0) then LowerLaserCore := RecordLowerLaserCore;
end;
end.
