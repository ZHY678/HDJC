unit UDataProcess;

interface

Uses
  UGlobalpara, System.Math, system.SysUtils, system.Classes, Winapi.Windows, Vcl.Forms, USoftwareFunction, System.Variants;

type TDataProcess = class
  private
    function BinarySearchNear(Arr : array of Double; Bindex, Eindex : Integer; Key : Double; IsAscending : Boolean) : Integer;
    procedure SaveOriginalData(TempTemperature : array of Double; Temp2D1Data, Temp2D2Data : TSensorPoints);
    function TranslateXY(TempX, TempY, ArfAngle, BetaAngle : Double) : TXYAxis;
    procedure PlotPointsLine(TempTemperature : array of Double; Temp2D1Data, Temp2D2Data : TSensorPoints; TempUpperThickness, TempLowerThickness : Double; out TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ : array of Double);
    procedure DataUnpacking(TempPlayBackDataArray : TDataArray; TempTemperature : array of Double; Temp2D1Data, Temp2D2Data : TSensorPoints);   //暂时没用
    procedure ShowResultAndSaveData(TempTemperature, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ : array of Double);
    function LeastSquares(ArrayStart, ArrayStop: SmallInt; TempArrayX, TempArrayY: array of Double) : TKB;
    function CalPointToLine(TempArrayX, TempArrayY : array of Double; BeginIndex, EndIndex : Word; TempK, TempB : Double) : Double;
    function CalAverage(TempData : array of Double; TempLength : Word) : Double;
    procedure BeginSaveData(TempPath : string);
    procedure SavingData(TempIsThermalCompensation : Byte; TempInitThickness, TempThickness, TempAverageThickness, TempUpperLaserSurface, TempLowerLaserSurface, TempUpperCFrame, TempLowerCFrame, TempHighTemperature, TempLowTemprature, TempUpperLaserCore, TempLowerLaserCore : Double);
    procedure EndSaveData;
    procedure PlotOriginalPoints(Temp2D1Data, Temp2D2Data : TSensorPoints; out TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ : array of Double);
    procedure CalibKB(TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ : array of Double);
    function CalAve(TempData: array of Double; BeginIndex, EndIndex : SmallInt) : Double;
    function RotateXZ(TempX, TempZ, TempAngle : Double) : TXYAxis;
    procedure CalibAndCorrect(TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ : array of Double);
    procedure SaveResultData(tmpThickness : string);
  public
    procedure DataDeal(TempTemperature : array of Double; Temp2D1Data, Temp2D2Data : TSensorPoints);
    procedure LoadOriginalData(TempLoadOriginalPath : string);
    function DataPacking(TempTemperature : array of Double; Temp2D1Data, Temp2D2Data : TSensorPoints) : TDataArray;
end;

implementation

uses
  MainInterface;

procedure TDataProcess.DataDeal(TempTemperature: array of Double; Temp2D1Data: TSensorPoints; Temp2D2Data: TSensorPoints);
var
  TempSum : Double;
//  Index : Integer;
  I, J, TempCounts, BeginCounts, EndCounts : Word;
  TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ : array of Double;
  UpperThickness, LowerThickness, AverageResult, TempData : Double;
  UpperThicknessOut, LowerThicknessOut : Boolean;
begin
  TempSum := 0;
  TempCounts := 0;

//  Index := BinarySearchNear(Temp2D1Data.VdValueX, 0, High(Temp2D1Data.VdValueX), GConfigParameter.CenterPoint, True);
  for I := 0 to Length(Temp2D1Data.VdValueZ) - 1 do
  begin
    if Temp2D1Data.VdValueZ[I] <> 0 then
    begin
      TempSum := TempSum + Temp2D1Data.VdValueZ[I];
      TempCounts := TempCounts + 1;
    end
    else
    begin
//      if (Index + DetectWidth < I) or (Index - DetectWidth > I) then Temp2D1Data.VdValueZ[I] := Temp2D1Data.VdValueZ[I - 1];
    end;
  end;
  if TempSum <> 0 then UpperThickness := Roundto(TempSum / TempCounts, -3)
  else UpperThickness := 0;
  if (UpperThickness > 30) and (UpperThickness < 160) then UpperThicknessOut := False
  else UpperThicknessOut:= True;

  TempSum := 0;
  TempCounts := 0;

//  Index := BinarySearchNear(Temp2D2Data.VdValueX, 0, High(Temp2D2Data.VdValueX), GConfigParameter.CenterPoint, True);
  for I := 0 to Length(Temp2D2Data.VdValueZ) - 1 do
  begin
    if Temp2D2Data.VdValueZ[I] <> 0 then
    begin
      TempSum := TempSum + Temp2D2Data.VdValueZ[I];
      TempCounts := TempCounts + 1;
    end
    else
    begin
//      if (Index + DetectWidth < I) or (Index - DetectWidth > I) then Temp2D2Data.VdValueZ[I] := Temp2D2Data.VdValueZ[I - 1];
    end;
  end;
  if TempSum <> 0 then LowerThickness := Roundto(TempSum / TempCounts, -3)
  else LowerThickness := 0;
  if (LowerThickness > 30) and (LowerThickness < 160) then LowerThicknessOut := False
  else LowerThicknessOut:= True;

  if (not UpperThicknessOut) and (not LowerThicknessOut) then
  begin
    GMotorControl.DMC5480LowLevel;
    if IsSaving then
    begin
      if (SaveCounts = 0) And (not IsOriginalDataSave) then
      begin
        TempDataSavePath := FormatDateTime('yyyymmddhhnnss', Now);
        TempOrignalDataSavePath := SavedOriginalDataPath + TempDataSavePath;
        SaveCounts := SaveCounts + 1;
        IsOriginalDataSave := True;
      end;
      SaveOriginalData(TempTemperature, Temp2D1Data, Temp2D2Data);
    end
    else
    begin
      SaveCounts := 0;
      IsOriginalDataSave := False;
      if TempIsOriginalDataSave then
      begin
        EndSaveData;
        TempIsOriginalDataSave := False;
      end;
    end;
  end
  else
  begin
    GMotorControl.DMC5480HighLevel;
    if IsSaving then
    begin
      if SaveCounts <> 0 then
      begin
        SaveCounts := SaveCounts + 1;
        if SaveCounts = 255 then
        begin
          SaveCounts := 0;
          IsOriginalDataSave := False;
          if TempIsOriginalDataSave then
          begin
            EndSaveData;
            TempIsOriginalDataSave := False;
          end;
        end
        else SaveOriginalData(TempTemperature, Temp2D1Data, Temp2D2Data);
      end;
    end;
  end;

  SetLength(TempOrig1VdValueX, 1280);
  SetLength(TempOrig1VdValueZ, 1280);
  SetLength(TempOrig2VdValueX, 1280);
  SetLength(TempOrig2VdValueZ, 1280);
  SetLength(TempRot1VdValueX, 1280);
  SetLength(TempRot1VdValueZ, 1280);
  SetLength(TempRot2VdValueX, 1280);
  SetLength(TempRot2VdValueZ, 1280);

  PlotPointsLine(TempTemperature, Temp2D1Data, Temp2D2Data, UpperThickness, LowerThickness, TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ);

  if IsOpenSensor then
  begin
    if CalCounts = 5 then CalCounts := 0
    else CalCounts := CalCounts + 1;
  end;

  if IsDetecting then
  begin
    if (not UpperThicknessOut) and (not LowerThicknessOut) then ShowResultAndSaveData(TempTemperature, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ);

    if UpperThicknessOut and LowerThicknessOut then
    begin
//      BeginCounts := 75;
//      EndCounts := 125;
      BeginCounts := 75;
      EndCounts := 75;
      if AverageCounts >= (BeginCounts + EndCounts) then
      begin
        FastLineClear := True;
        AverageResult := 0;

        if Is3DShow then
        begin
          if (AverageCounts > 160) and (AverageCounts < 350) then
          begin
            array3D := AverageArray;
            if AverageCounts < 200 then
            begin
              SetLength(array3D, 160);
              Show4D := True;
              oReal := VarArrayCreate([1, 160], varDouble);
              oImage := VarArrayCreate([1, 160], VarDouble);
              for I := 1 to 160 do
              begin
                oReal[I] := array3D[I - 1];
              end;
            end
            else
            begin
              SetLength(array3D, 200);
              Show3D := True;
              oReal := VarArrayCreate([1, 200], varDouble);
              oImage := VarArrayCreate([1, 200], VarDouble);
              for I := 1 to 200 do
              begin
                oReal[I] := array3D[I - 1];
              end;
            end;
          end;
        end;

        for I := 0 to Length(AverageArray) - 2 do
        begin
          for J := 0 to Length(AverageArray) - 2 - I do
          begin
            if AverageArray[J + 1] < AverageArray[J] then
            begin
              TempData := AverageArray[J + 1];
              AverageArray[J + 1] := AverageArray[J];
              AverageArray[J] := TempData;
            end;
          end;
        end;

        AverageResult := AverageArray[BeginCounts + Round((Length(AverageArray) - BeginCounts - EndCounts) / 2) - 1];

        //临时添加
        if (AverageResult < 6) and (AverageResult >= 5)  then
        begin
          AverageResult := AverageResult - 0.04;
        end;

//        for I := BeginCounts to AverageCounts - EndCounts - 1 do AverageResult := AverageResult + AverageArray[I];
//
//        AverageResult := AverageResult / (AverageCounts - BeginCounts - EndCounts);
        AverageCounts := 0;
        ThicknessMeasurement.ResultThicknessPanel.Caption := FormatFloat('0.000', AverageResult) + 'mm';
        if ThicknessMeasurement.StopMeasureLargeButton.Enabled then SaveResultData(FormatFloat('0.000', AverageResult));
      end
      else AverageCounts := 0;
    end;
  end
  else
  begin
    PlotOriginalPoints(Temp2D1Data, Temp2D2Data, TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ);
    if IsCalibrating then
    begin
      CalibKB(TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ);
      CalibAndCorrect(TempOrig1VdValueX, TempOrig1VdValueZ, TempOrig2VdValueX, TempOrig2VdValueZ, TempRot1VdValueX, TempRot1VdValueZ, TempRot2VdValueX, TempRot2VdValueZ);
    end;
  end;
end;

//二分法查找最近Key的数组下标（目标数组；起始坐标；终止坐标；关键值Key；数据是否为升序）
function TDataProcess.BinarySearchNear(Arr : array of Double; Bindex, Eindex : Integer; Key : Double; IsAscending : Boolean) : Integer;
var
  lo, hi, mi : Integer;
begin
  lo := Bindex;
  hi := Eindex;
  if lo < hi then
  begin
    if IsAscending then
    begin
      if Key <= Arr[lo] then Result := lo
      else
      if Key >= Arr[hi] then Result := hi
      else
      begin
        while lo <= hi do
        begin
          mi := (lo + hi) div 2;
          if Arr[mi] < key then
            lo := mi + 1
          else hi := mi - 1;
        end;
        if Abs(Arr[lo] - Key) < Abs(Arr[hi] - Key) then Result := lo
        else Result := hi;
      end;
    end
    else
    begin
      if Key >= Arr[lo] then Result := lo
      else
      if Key <= Arr[hi] then Result := hi
      else
      begin
        while lo <= hi do
        begin
          mi := (lo + hi) div 2;
          if Arr[mi] > key then lo := mi + 1
          else hi := mi - 1;
        end;
        if Abs(Arr[lo] - Key) < Abs(Arr[hi] - Key) then Result := lo
        else Result := hi;
      end;
    end;
  end
  else Result := 0;
end;

//已知α角和β角，对传感器采集数据进行转换
function TDataProcess.TranslateXY(TempX, TempY, ArfAngle, BetaAngle : Double) : TXYAxis;
begin
  Result.XAxis := TempX * system.cos(ArfAngle / 180 * pi) + TempY * system.sin(ArfAngle / 180 * pi);
  Result.ZAxis := -TempX * system.sin(ArfAngle / 180 * pi) + TempY * system.cos(ArfAngle / 180 * pi);
  Result.ZAxis := Result.ZAxis * system.cos(BetaAngle / 180 * pi);
end;

procedure TDataProcess.SaveOriginalData(TempTemperature: array of Double; Temp2D1Data: TSensorPoints; Temp2D2Data: TSensorPoints);
var
  SaveOriginalFile : file;
  FileStream : TFileStream;
  WritePosition : Int64;
  LengthNumber : Integer;
  TempDataArray : array [0..5127] of Double;
  I : Word;
begin
  if not FileExists(TempOrignalDataSavePath) then
  begin
    AssignFile(SaveOriginalFile, TempOrignalDataSavePath);
    Rewrite(SaveOriginalFile, 1);
    CloseFile(SaveOriginalFile);
  end;
  FileStream := TFileStream.Create(TempOrignalDataSavePath, 2);
  WritePosition := FileStream.Size;
  FileStream.Seek(WritePosition, 0);
  for I := 0 to 7 do TempDataArray[I] := TempTemperature[I];
  for I := 0 to 1279 do TempDataArray[I + 8] := Temp2D1Data.VdValueX[I];
  for I := 0 to 1279 do TempDataArray[I + 1288] := Temp2D1Data.VdValueZ[I];
  for I := 0 to 1279 do TempDataArray[I + 2568] := Temp2D2Data.VdValueX[I];
  for I := 0 to 1279 do TempDataArray[I + 3848] := Temp2D2Data.VdValueZ[I];
  LengthNumber := FileStream.Write(TempDataArray, SizeOf(TempDataArray));
  FileStream.Destroy;
end;

procedure TDataProcess.LoadOriginalData(TempLoadOriginalPath : string);
var
  FileStream : TFileStream;
  LoadDataSize : Int64;
  InputDataSize : LongWord;
  TempPlayBackDataArray : TDataArray;
  TempPlayBackData : ^TDataArray;
begin
  FileStream := TFileStream.Create(TempLoadOriginalPath, 2);
  LoadDataSize := FileStream.Size;
  FileStream.Seek(0, soBeginning);
  InputDataSize := 0;
  PlayBackCache.clear;
  while InputDataSize < LoadDataSize do
  begin
    Application.ProcessMessages;
    ThicknessMeasurement.RibbonStatusBar.Panels[1].Text := '正在读取数据，请稍后。';
    FileStream.ReadBuffer(TempPlayBackDataArray, SizeOf(TDataArray));
    New(TempPlayBackData);
    CopyMemory(TempPlayBackData, @TempPlayBackDataArray, SizeOf(TDataArray));
    PlayBackCache.Push(TempPlayBackData);
    InputDataSize := InputDataSize + SizeOf(TDataArray);
  end;
  ThicknessMeasurement.RibbonStatusBar.Panels[1].Text := '数据读取完毕，可以开始回放。';
  FileStream.Free;
end;

procedure TDataProcess.PlotPointsLine(TempTemperature: array of Double; Temp2D1Data: TSensorPoints; Temp2D2Data: TSensorPoints; TempUpperThickness: Double; TempLowerThickness: Double; out TempOrig1VdValueX: array of Double; out TempOrig1VdValueZ: array of Double; out TempOrig2VdValueX: array of Double; out TempOrig2VdValueZ: array of Double; out TempRot1VdValueX: array of Double; out TempRot1VdValueZ: array of Double; out TempRot2VdValueX: array of Double; out TempRot2VdValueZ: array of Double);
var
  I : Word;
  TempXYAxis : TXYAxis;
begin
  Application.ProcessMessages;

  if GConfigParameter.IsDebug = 1 then
  begin
    if IsOpenSensor then
    begin
      if CalCounts = 5 then ThicknessMeasurement.DebugUpperDataPoints.Clear;
    end
    else ThicknessMeasurement.DebugUpperDataPoints.Clear;
  end;
  for I := 0 to Length(Temp2D1Data.VdValueX) - 1 do
  begin
    TempOrig1VdValueX[I] := Temp2D1Data.VdValueX[Length(Temp2D1Data.VdValueX) - 1 - I];
    TempOrig1VdValueZ[I] := Temp2D1Data.VdValueZ[Length(Temp2D1Data.VdValueZ) - 1 - I];
    TempXYAxis := TranslateXY(TempOrig1VdValueX[i], TempOrig1VdValueZ[i], GConfigParameter.UpperSensorAngle, 0);
    TempRot1VdValueX[I] := -TempXYAxis.XAxis + IniDifX;

    if TempOrig1VdValueZ[i] <> 0 then
    begin
      TempRot1VdValueZ[i] := GConfigParameter.SensorsDistance - TempXYAxis.ZAxis;
      if GConfigParameter.IsDebug = 1 then
      begin
       if IsOpenSensor then
       begin
         if CalCounts = 5 then ThicknessMeasurement.DebugUpperDataPoints.AddXY(TempRot1VdValueX[i], TempRot1VdValueZ[i]);
       end
       else ThicknessMeasurement.DebugUpperDataPoints.AddXY(TempRot1VdValueX[i], TempRot1VdValueZ[i]);
      end;
    end
    else TempRot1VdValueZ[i] := GConfigParameter.SensorsDistance - TempUpperThickness;
  end;

  if GConfigParameter.IsDebug = 1 then
  begin
    if IsOpenSensor then
    begin
      if CalCounts = 5 then ThicknessMeasurement.DebugLowerDataPoints.Clear;
    end
    else ThicknessMeasurement.DebugLowerDataPoints.Clear;
  end;
  for I := 0 to Length(Temp2D2Data.VdValueX) - 1 do
  begin
    TempOrig2VdValueX[I] := Temp2D2Data.VdValueX[Length(Temp2D2Data.VdValueX) - 1 - I];
    TempOrig2VdValueZ[I] := Temp2D2Data.VdValueZ[Length(Temp2D2Data.VdValueZ) - 1 - I];
    TempXYAxis := TranslateXY(TempOrig2VdValueX[i], TempOrig2VdValueZ[i], GConfigParameter.LowerSensorAngle, 0);
    TempRot2VdValueX[I] := TempXYAxis.XAxis;

    if TempOrig2VdValueZ[i] <> 0 then
    begin
      TempRot2VdValueZ[i] := TempXYAxis.ZAxis;
      if GConfigParameter.IsDebug = 1 then
      begin
        if IsOpenSensor then
        begin
          if CalCounts = 5 then ThicknessMeasurement.DebugLowerDataPoints.AddXY(TempRot2VdValueX[i], TempRot2VdValueZ[i]);
        end
        else ThicknessMeasurement.DebugLowerDataPoints.AddXY(TempRot2VdValueX[i], TempRot2VdValueZ[i]);
      end;
    end
    else TempRot2VdValueZ[i] := TempLowerThickness;
  end;
end;

procedure TDataProcess.DataUnpacking(TempPlayBackDataArray: TDataArray; TempTemperature: array of Double; Temp2D1Data: TSensorPoints; Temp2D2Data: TSensorPoints);
var
  I : Word;
begin
  for I := 0 to 7 do TempTemperature[I] := TempPlayBackDataArray.DataArray[I];
  for I := 0 to 1279 do Temp2D1Data.VdValueX[I] := TempPlayBackDataArray.DataArray[I + 8];
  for I := 0 to 1279 do Temp2D1Data.VdValueZ[I] := TempPlayBackDataArray.DataArray[I + 1288];
  for I := 0 to 1279 do Temp2D2Data.VdValueX[I] := TempPlayBackDataArray.DataArray[I + 2568];
  for I := 0 to 1279 do Temp2D2Data.VdValueZ[I] := TempPlayBackDataArray.DataArray[I + 3848];
end;

function TDataProcess.DataPacking(TempTemperature: array of Double; Temp2D1Data: TSensorPoints; Temp2D2Data: TSensorPoints) : TDataArray;
var
  I : Word;
begin
  for I := 0 to 7 do Result.DataArray[I] := TempTemperature[I];
  for I := 0 to 1279 do Result.DataArray[I + 8] := Temp2D1Data.VdValueX[I];
  for I := 0 to 1279 do Result.DataArray[I + 1288] := Temp2D1Data.VdValueZ[I];
  for I := 0 to 1279 do Result.DataArray[I + 2568] := Temp2D2Data.VdValueX[I];
  for I := 0 to 1279 do Result.DataArray[I + 3848] := Temp2D2Data.VdValueZ[I];
end;

procedure TDataProcess.ShowResultAndSaveData(TempTemperature: array of Double; TempRot1VdValueX: array of Double; TempRot1VdValueZ: array of Double; TempRot2VdValueX: array of Double; TempRot2VdValueZ: array of Double);
var
  TempXCenter : Integer;
  UpKB, LowKB : TKB;
  Thickness, TempUpperLaserSurface, TempLowerLaserSurface, TempUpperCFrame, TempLowerCFrame, TempHighTemperature, TempLowTemprature, TempRecordLowTemprature, TempUpperLaserCore, TempLowerLaserCore, CompensationCoefficient, AverageThickness, InitThickness : Double;
  I : Word;
begin
  TempUpperLaserSurface := TempTemperature[0];
  TempLowerLaserSurface := TempTemperature[1];
  TempUpperCFrame := TempTemperature[2];
  TempLowerCFrame := TempTemperature[3];
  TempHighTemperature := TempTemperature[4];
  TempLowTemprature := TempTemperature[5];
  TempRecordLowTemprature := TempLowTemprature;
  TempUpperLaserCore := TempTemperature[6];
  TempLowerLaserCore := TempTemperature[7];

  TempXCenter := BinarySearchNear(TempRot1VdValueX, 0, Length(TempRot1VdValueX) - 1, 0, True);
  UpKB := LeastSquares(TempXCenter - DetectWidth, TempXCenter + DetectWidth, TempRot1VdValueX, TempRot1VdValueZ);
  TempXCenter := BinarySearchNear(TempRot2VdValueX, 0, Length(TempRot2VdValueX) - 1, 0, True);
  LowKB := LeastSquares(TempXCenter - DetectWidth, TempXCenter + DetectWidth, TempRot2VdValueX, TempRot2VdValueZ);
  Thickness := CalPointToLine(TempRot1VdValueX, TempRot1VdValueZ, TempXCenter - DetectWidth, TempXCenter + DetectWidth,LowKB.K, LowKB.B);
  InitThickness := Thickness;
  Thickness := Thickness + 0.01;

  if AverageCounts < 999 then
  begin
    AverageCounts := AverageCounts + 1;
    SetLength(AverageArray, AverageCounts);
    SetLength(AverageTestArray, AverageCounts);
    AverageTestArray[AverageCounts - 1] := Thickness;

    if TempHighTemperature <= 1490 then
    begin
      //临时改动，后期研究后删除
      if TempHighTemperature > 599 then
      begin
        Thickness := Thickness - 0.045;
      end;
      if TempLowTemprature > 1490 then TempLowTemprature := 200
      else
      begin
        if TempLowTemprature < 200 then TempLowTemprature := 200;
      end;
      CompensationCoefficient := (TempLowTemprature / 10) * 0.006455 + 10.969417;
      AverageArray[AverageCounts - 1] := Thickness - CompensationCoefficient * (TempLowTemprature / 10 - 20) * Thickness * 0.000001;
    end
    else
    begin
      CompensationCoefficient := (TempHighTemperature / 10) * 0.006455 + 10.969417;
      AverageArray[AverageCounts - 1] := Thickness - CompensationCoefficient * (TempHighTemperature / 10 - 20) * Thickness * 0.000001;
    end;
  end
  else
  begin
    for I := 0 to 999 do
    begin
      if I <> 999 then
      begin
        AverageArray[I] := AverageArray[I + 1];
        AverageTestArray[I] := AverageTestArray[I + 1];
      end
      else
      begin
        AverageTestArray[I] := Thickness;
        if TempHighTemperature <= 1490 then
        begin
          if TempLowTemprature > 1490 then TempLowTemprature := 200
          else
          begin
            if TempLowTemprature < 200 then TempLowTemprature := 200;
          end;
          CompensationCoefficient:= (TempLowTemprature / 10) * 0.006455 + 10.969417;
          AverageArray[I] := Thickness - CompensationCoefficient * (TempLowTemprature / 10 - 20) * Thickness * 0.000001;
        end
        else
        begin
          CompensationCoefficient := (TempHighTemperature / 10) * 0.006455 + 10.969417;
          AverageArray[I] := Thickness - CompensationCoefficient * (TempHighTemperature / 10 - 20) * Thickness * 0.000001;
        end;
      end;
    end;
  end;

  if GConfigParameter.IsDebug = 1 then
  begin
    if IsOpenSensor then
    begin
      if CalCounts = 5 then
      begin
        ThicknessMeasurement.DebugOriginalPanel.Caption := FormatFloat('0.000', Thickness) + 'mm';
        ThicknessMeasurement.DebugOriginalSignal.Data.Rotate(-1);
        ThicknessMeasurement.DebugOriginalSignal.Values[ThicknessMeasurement.DebugOriginalSignal.Data.Length - 1] := Thickness;
        ThicknessMeasurement.DebugOriginalSignal.Update;
      end;
    end
    else
    begin
      ThicknessMeasurement.DebugOriginalPanel.Caption := FormatFloat('0.000', Thickness) + 'mm';
      ThicknessMeasurement.DebugOriginalSignal.Data.Rotate(-1);
      ThicknessMeasurement.DebugOriginalSignal.Values[ThicknessMeasurement.DebugOriginalSignal.Data.Length - 1] := Thickness;
      ThicknessMeasurement.DebugOriginalSignal.Update;
    end;
  end;

  //温度补偿
  if GConfigParameter.IsThermalCompensation = 1 then
  begin
    if TempHighTemperature <= 1490 then
    begin
      if TempLowTemprature > 1490 then TempLowTemprature := 200
      else
      begin
        if TempLowTemprature < 200 then TempLowTemprature := 200;
      end;
      CompensationCoefficient:= (TempLowTemprature / 10) * 0.006455 + 10.969417;
      Thickness := Thickness - CompensationCoefficient * (TempLowTemprature / 10 - 20) * Thickness * 0.000001;
    end
    else
    begin
      CompensationCoefficient := (TempHighTemperature / 10) * 0.006455 + 10.969417;
      Thickness := Thickness - CompensationCoefficient * (TempHighTemperature / 10 - 20) * Thickness * 0.000001;
    end;
  end;

  if CalAverageIndex < CalAverageLength then
  begin
    CalAverageArray[CalAverageIndex] := Thickness;
    CalAverageIndex := CalAverageIndex + 1;
  end
  else
  begin
    for I := 0 to Length(CalAverageArray) - 1 - 1 do CalAverageArray[I] := CalAverageArray[I + 1];
    CalAverageArray[CalAverageLength - 1] := Thickness;
    AverageThickness := CalAverage(CalAverageArray, CalAverageLength);
    AverageThickness := Thickness * WeightH + (1 - WeightH) * AverageThickness;

    if GConfigParameter.IsDebug = 1 then
    begin
      if IsOpenSensor then
      begin
        if CalCounts = 5 then
        begin
          ThicknessMeasurement.DebugResultPanel.Caption := FormatFloat('0.000', Thickness) + 'mm';
          ThicknessMeasurement.DebugResultSignal.Data.Rotate(-1);
          ThicknessMeasurement.DebugResultSignal.Values[ThicknessMeasurement.DebugResultSignal.Data.Length - 1] := AverageThickness;
          ThicknessMeasurement.DebugResultSignal.Update;
        end;
      end
      else
      begin
        ThicknessMeasurement.DebugResultPanel.Caption := FormatFloat('0.000', Thickness) + 'mm';
        ThicknessMeasurement.DebugResultSignal.Data.Rotate(-1);
        ThicknessMeasurement.DebugResultSignal.Values[ThicknessMeasurement.DebugResultSignal.Data.Length - 1] := AverageThickness;
        ThicknessMeasurement.DebugResultSignal.Update;
      end;
    end;

    if IsOpenSensor then
    begin
      if FastLineClear then
      begin
        ThicknessMeasurement.FastLine_Original.Clear;
        FastLineClear := False;
      end;
      if CalCounts = 5 then
      begin
        ThicknessMeasurement.OriginalThicknessPanel.Caption := FormatFloat('0.000', Thickness) + 'mm';
//        ThicknessMeasurement.OriginalThicknessSignal.Data.Rotate(-1);
//        ThicknessMeasurement.OriginalThicknessSignal.Values[ThicknessMeasurement.OriginalThicknessSignal.Data.Length - 1] := AverageThickness;
//        ThicknessMeasurement.OriginalThicknessSignal.Update;
        ThicknessMeasurement.FastLine_Original.AddY(AverageThickness);
      end;
    end
    else
    begin
      if FastLineClear then
      begin
        ThicknessMeasurement.FastLine_Original.Clear;
        FastLineClear := False;
      end;
      ThicknessMeasurement.OriginalThicknessPanel.Caption := FormatFloat('0.000', Thickness) + 'mm';
//      ThicknessMeasurement.OriginalThicknessSignal.Data.Rotate(-1);
//      ThicknessMeasurement.OriginalThicknessSignal.Values[ThicknessMeasurement.OriginalThicknessSignal.Data.Length - 1] := AverageThickness;
//      ThicknessMeasurement.OriginalThicknessSignal.Update;
      ThicknessMeasurement.FastLine_Original.AddY(AverageThickness);
    end;
  end;

  if (SaveCounts <> 0) then
  begin
    if not TempIsOriginalDataSave then
    begin
      TempIsOriginalDataSave := True;
      BeginSaveData(SavedOriginalDataPath + TempDataSavePath + '.txt');
      SavingData(GConfigParameter.IsThermalCompensation, InitThickness, Thickness, AverageThickness, TempUpperLaserSurface, TempLowerLaserSurface, TempUpperCFrame, TempLowerCFrame, TempHighTemperature, TempRecordLowTemprature, TempUpperLaserCore, TempLowerLaserCore);
    end
    else SavingData(GConfigParameter.IsThermalCompensation, InitThickness, Thickness, AverageThickness, TempUpperLaserSurface, TempLowerLaserSurface, TempUpperCFrame, TempLowerCFrame, TempHighTemperature, TempRecordLowTemprature, TempUpperLaserCore, TempLowerLaserCore);
  end;
end;

//最小二乘法函数
//传入参数： 起点：ArrayStart； 终点：ArrayStop; 横坐标数组：TempArrayX； 纵坐标数组： TempArrayY
//返回值： 拟合直线斜率：KB[0]; 拟合直线纵截距：KB[1];
function TDataProcess.LeastSquares(ArrayStart: SmallInt; ArrayStop: SmallInt; TempArrayX: array of Double; TempArrayY: array of Double) : TKB;
var
  Temp1, Temp2, Temp3, Temp4: Double;
  Length, I: Word;
begin
  try
    Length := ArrayStop - ArrayStart + 1;
    if (Length > 0) and (ArrayStop <= High(TempArrayX)) and (ArrayStart >= 0) then
    begin
      Temp1 := 0;
      Temp2 := 0;
      Temp3 := 0;
      Temp4 := 0;
      for I := 0 to (Length - 1) do
      begin
        Temp1 := Temp1 + TempArrayX[ArrayStart + I] * TempArrayX[ArrayStart + I];    //sum(x^2)
        Temp2 := Temp2 + TempArrayX[ArrayStart + I];               //sum(x)
        Temp3 := Temp3 + TempArrayX[ArrayStart + I] * TempArrayY[ArrayStart + I];    //sum(x*y)
        Temp4 := Temp4 + TempArrayY[ArrayStart + I];               //sum(y)
      end;
      Result.K := (Length * Temp3 - Temp2 * Temp4) / (Length * Temp1 - Temp2 * Temp2);   //斜率
      Result.B := (Temp1 * Temp4 - Temp3 * Temp2) / (Length * Temp1 - Temp2 * Temp2);   //截距
      if Result.K < 0 then Result.K := -system.ArcTan(-Result.K) * 180 / pi     //角度
      else Result.K := system.ArcTan(Result.K) * 180 / pi;     //角度
    end
    else
    begin
      Result.K := 0;
      Result.B := 0;
    end;
  except
    On E : Exception Do
    begin
      Result.K := 0;
      Result.B := 0;
    end;
  end;
end;

function TDataProcess.CalPointToLine(TempArrayX: array of Double; TempArrayY: array of Double; BeginIndex: Word; EndIndex: Word; TempK: Double; TempB: Double) : Double;
var
  Length, I : Word;
  TempArray : array of Double;
  K : Double;
begin
  if (EndIndex - BeginIndex > 0) and (EndIndex <= High(TempArrayX)) and (BeginIndex >= 0) then
  begin
    Length := EndIndex - BeginIndex + 1;
    SetLength(TempArray, Length);
    K := tan(TempK / 180 * pi);
    Result := 0;
    for I := 0 to Length - 1 do TempArray[I] := Abs((K * TempArrayX[BeginIndex + I] - TempArrayY[BeginIndex + I] + TempB) / Sqrt(Sqr(K) + 1));
    for I := 0 to Length - 1 do Result := Result + TempArray[I];
    Result:= Result / Length;
  end
  else Result := 0;
end;

function TDataProcess.CalAverage(TempData: array of Double; TempLength: Word) : Double;
var
  Sum: Double;
  I : Word;
begin
  Sum := 0;
  for I := 0 to TempLength - 1 do Sum := Sum + TempData[I];
  Result := Sum / TempLength;
end;

procedure TDataProcess.BeginSaveData(TempPath: string);
begin
  AssignFile(TempOriginal, TempPath);
  Rewrite(TempOriginal);
  writeln(TempOriginal, '温度补偿值' + chr(VK_TAB) + '原始厚度值' + chr(VK_TAB) + '厚度值' + chr(VK_TAB) + '厚度均值' + chr(VK_TAB) + '上激光表面温度' + chr(VK_TAB) + '下激光表面温度' + chr(VK_TAB) + 'C型架上部分温度' + chr(VK_TAB) + 'C型架下部分温度' + chr(VK_TAB) + '高温传感器温度' + chr(VK_TAB) + '低温传感器温度' + chr(VK_TAB) + '上激光核心温度' + chr(VK_TAB) + '下激光核心温度');
end;

procedure TDataProcess.SavingData(TempIsThermalCompensation: Byte; TempInitThickness: Double; TempThickness: Double; TempAverageThickness: Double; TempUpperLaserSurface: Double; TempLowerLaserSurface: Double; TempUpperCFrame: Double; TempLowerCFrame: Double; TempHighTemperature: Double; TempLowTemprature: Double; TempUpperLaserCore: Double; TempLowerLaserCore: Double);
begin
  writeln(TempOriginal, IntToStr(TempIsThermalCompensation) + chr(VK_TAB) + FormatFloat('0.000',TempInitThickness) + chr(VK_TAB) + FormatFloat('0.000', TempThickness) + chr(VK_TAB) + FormatFloat('0.000', TempAverageThickness) + chr(VK_TAB) + FloatToStr(TempUpperLaserSurface) + chr(VK_TAB) + FloatToStr(TempLowerLaserSurface) + chr(VK_TAB) + FloatToStr(TempUpperCFrame) + chr(VK_TAB) + FloatToStr(TempLowerCFrame) + chr(VK_TAB) + FloatToStr(TempHighTemperature) + chr(VK_TAB) + FloatToStr(TempLowTemprature) + chr(VK_TAB) + FloatToStr(TempUpperLaserCore) + chr(VK_TAB) + FloatToStr(TempLowerLaserCore));
end;

procedure TDataProcess.EndSaveData;
begin
  CloseFile(TempOriginal);
end;

procedure TDataProcess.PlotOriginalPoints(Temp2D1Data: TSensorPoints; Temp2D2Data: TSensorPoints; out TempOrig1VdValueX: array of Double; out TempOrig1VdValueZ: array of Double; out TempOrig2VdValueX: array of Double; out TempOrig2VdValueZ: array of Double);
var
  I : Word;
begin
  if IsOpenSensor then if CalCounts = 5 then ThicknessMeasurement.UpperOriginalDataPotints.Clear;
  for I := 0 to Length(Temp2D1Data.VdValueX) - 1 do
  begin
    TempOrig1VdValueX[I] := Temp2D1Data.VdValueX[Length(Temp2D1Data.VdValueX) - 1 - I];
    TempOrig1VdValueZ[I] := Temp2D1Data.VdValueZ[Length(Temp2D1Data.VdValueZ) - 1 - I];

    if Temp2D1Data.VdValueZ[I] <> 0 then if IsOpenSensor then if CalCounts = 5 then ThicknessMeasurement.UpperOriginalDataPotints.AddXY(Temp2D1Data.VdValueX[I], Temp2D1Data.VdValueZ[I]);
  end;

  if IsOpenSensor then if CalCounts = 5 then ThicknessMeasurement.LowerOriginalDataPotints.Clear;
  for I := 0 to Length(Temp2D2Data.VdValueX) - 1 do
  begin
    TempOrig2VdValueX[I] := Temp2D2Data.VdValueX[Length(Temp2D2Data.VdValueX) - 1 - I];
    TempOrig2VdValueZ[I] := Temp2D2Data.VdValueZ[Length(Temp2D2Data.VdValueZ) - 1 - I];

    if Temp2D2Data.VdValueZ[I] <> 0 then if IsOpenSensor then if CalCounts = 5 then ThicknessMeasurement.LowerOriginalDataPotints.AddXY(Temp2D2Data.VdValueX[I], Temp2D2Data.VdValueZ[I]);
  end;
end;

procedure TDataProcess.CalibKB(TempOrig1VdValueX: array of Double; TempOrig1VdValueZ: array of Double; TempOrig2VdValueX: array of Double; TempOrig2VdValueZ: array of Double; TempRot1VdValueX: array of Double; TempRot1VdValueZ: array of Double; TempRot2VdValueX: array of Double; TempRot2VdValueZ: array of Double);
var
  CalibCenterX : Integer;
  BeginIndeX, EndIndex, I : SmallInt;
  TempXYAxis : TXYAxis;
begin
  Application.ProcessMessages;

  if IsOpenSensor then if CalCounts = 5 then ThicknessMeasurement.CalibrationAreaDataPotints.Clear;

  if ThicknessMeasurement.UpperSensorRadioButton.Checked then
  begin
    CalibCenterX := BinarySearchNear(TempOrig1VdValueX, 0, High(TempOrig1VdValueX), GConfigParameter.CenterPoint, True);
    if CalibCenterX - CalibWidth <= 0 then BeginIndeX := 0
    else BeginIndeX := CalibCenterX - CalibWidth;

    if CalibCenterX + CalibWidth >= High(TempOrig1VdValueX) then EndIndex := High(TempOrig1VdValueX)
    else EndIndex := CalibCenterX + CalibWidth;

    ThicknessMeasurement.CalibrationAreaDataPotints.AddXY(TempOrig1VdValueX[BeginIndeX], TempOrig1VdValueZ[BeginIndeX]);
    ThicknessMeasurement.CalibrationAreaDataPotints.AddXY(TempOrig1VdValueX[EndIndex], TempOrig1VdValueZ[EndIndex]);

    CalibUpperK[CalibUpperCounts] := LeastSquares(BeginIndeX, EndIndex, TempOrig1VdValueX, TempOrig1VdValueZ).K;
    CalibUpperCounts := CalibUpperCounts + 1;
    if CalibUpperCounts = Length(CalibUpperK) then
    begin
      CalibConfigParameter.UpperSensorAngle := CalAve(CalibUpperK, 0, Length(CalibUpperK) - 1);
      ThicknessMeasurement.RUpperAngleEdit.Text := FloatToStr(RoundTo(CalibConfigParameter.UpperSensorAngle, -6));
      CalibUpperCounts := 0;
    end;

    if IsOpenSensor then if CalCounts = 5 then ThicknessMeasurement.UpperCorrectDataPotints.Clear;
    for I := 0 to (Length(TempOrig1VdValueX) - 1) do
    begin
      TempXYAxis := RotateXZ(TempOrig1VdValueX[I], TempOrig1VdValueZ[I], CalibConfigParameter.UpperSensorAngle);
      TempRot1VdValueX[I] := TempXYAxis.XAxis;
      TempRot1VdValueZ[I] := TempXYAxis.ZAxis;
      if IsOpenSensor then if CalCounts = 5 then if TempOrig1VdValueX[I] <> 0 then ThicknessMeasurement.UpperCorrectDataPotints.AddXY(TempRot1VdValueX[I], TempRot1VdValueZ[I]);
    end;
    if CalibConfigParameter.UpperSensorAngle <> -1 then
    begin
      CalibConfigParameter.UpperLineMeanValue := CalAve(TempRot1VdValueZ, BeginIndeX, EndIndex);
      ThicknessMeasurement.RUpperValueEdit.Text := FormatFloat('0.000', CalibConfigParameter.UpperLineMeanValue);
    end;
  end;

  if ThicknessMeasurement.LowerSensorRadioButton.Checked then
  begin
    CalibCenterX := BinarySearchNear(TempOrig2VdValueX, 0, High(TempOrig2VdValueX), GConfigParameter.CenterPoint, True);
    if CalibCenterX - CalibWidth <= 0 then BeginIndeX := 0
    else BeginIndeX := CalibCenterX - CalibWidth;

    if CalibCenterX + CalibWidth >= High(TempOrig2VdValueX) then EndIndex := High(TempOrig2VdValueX)
    else EndIndex := CalibCenterX + CalibWidth;

    ThicknessMeasurement.CalibrationAreaDataPotints.AddXY(TempOrig2VdValueX[BeginIndeX], TempOrig2VdValueZ[BeginIndeX]);
    ThicknessMeasurement.CalibrationAreaDataPotints.AddXY(TempOrig2VdValueX[EndIndex], TempOrig2VdValueZ[EndIndex]);

    CalibLowerK[CalibUpperCounts] := LeastSquares(BeginIndeX, EndIndex, TempOrig2VdValueX, TempOrig2VdValueZ).K;
    CalibUpperCounts := CalibUpperCounts + 1;
    if CalibUpperCounts = Length(CalibLowerK) then
    begin
      CalibConfigParameter.LowerSensorAngle := CalAve(CalibLowerK, 0, Length(CalibLowerK) - 1);
      ThicknessMeasurement.RLowerAngleEdit.Text := FloatToStr(RoundTo(CalibConfigParameter.LowerSensorAngle, -6));
      CalibUpperCounts := 0;
    end;

    if IsOpenSensor then if CalCounts = 5 then ThicknessMeasurement.LowerCorrectDataPotints.Clear;
    for I := 0 to (Length(TempOrig2VdValueX) - 1) do
    begin
      TempXYAxis := RotateXZ(TempOrig2VdValueX[I], TempOrig2VdValueZ[I], CalibConfigParameter.LowerSensorAngle);
      TempRot2VdValueX[I] := TempXYAxis.XAxis;
      TempRot2VdValueZ[I] := TempXYAxis.ZAxis;
      if IsOpenSensor then if CalCounts = 5 then if TempOrig2VdValueX[I] <> 0 then ThicknessMeasurement.LowerCorrectDataPotints.AddXY(TempRot2VdValueX[I], TempRot2VdValueZ[I]);
    end;
    if CalibConfigParameter.LowerSensorAngle <> -1 then
    begin
      CalibConfigParameter.LowerLineMeanValue := CalAve(TempRot2VdValueZ, BeginIndeX, EndIndex);
      ThicknessMeasurement.RLowerValueEdit.Text := FormatFloat('0.000', CalibConfigParameter.LowerLineMeanValue);
    end;
  end;

  if (CalibConfigParameter.UpperLineMeanValue <> -1) and (CalibConfigParameter.LowerLineMeanValue <> -1) then
  begin
    CalibConfigParameter.SensorsDistance := CalibConfigParameter.UpperLineMeanValue + CalibConfigParameter.LowerLineMeanValue + GConfigParameter.StandardThickness;
    ThicknessMeasurement.RSensorDistanceEdit.Text := FormatFloat('0.000', CalibConfigParameter.SensorsDistance);
  end;
end;

//计算平均值
//传入参数为:TempData
//返回值为:平均值
function TDataProcess.CalAve(TempData: array of Double; BeginIndex: SmallInt; EndIndex: SmallInt): Double;
var
  Sum: Double;
  I : SmallInt;
begin
  Sum := 0;
  for I := BeginIndex to EndIndex do Sum := Sum + TempData[I];
  Result := Sum / (EndIndex - BeginIndex + 1);
end;

//坐标变换函数
//传入参数为:数据x, 数据z，旋转角度
//返回参数为:坐标值（vx,vz）
function TDataProcess.RotateXZ(TempX: Double; TempZ: Double; TempAngle: Double): TXYAxis;
begin
  Result.XAxis := TempX * system.cos(TempAngle / 180 * pi) + TempZ * system.sin(TempAngle / 180 * pi);
  Result.ZAxis := -TempX * system.sin(TempAngle / 180 * pi) + TempZ * system.cos(TempAngle / 180 * pi);
end;

procedure TDataProcess.CalibAndCorrect(TempOrig1VdValueX: array of Double; TempOrig1VdValueZ: array of Double; TempOrig2VdValueX: array of Double; TempOrig2VdValueZ: array of Double; TempRot1VdValueX: array of Double; TempRot1VdValueZ: array of Double; TempRot2VdValueX: array of Double; TempRot2VdValueZ: array of Double);
var
  I : Word;
  TempXYAxis : TXYAxis;
  TempCenterX : Integer;
  TempKB : TKB;
begin
  if (CalibConfigParameter.UpperLineMeanValue <> -1) and (CalibConfigParameter.LowerLineMeanValue <> -1) then
  begin
    if IsOpenSensor then if CalCounts = 5 then
    begin
      ThicknessMeasurement.UpperDataPotints.Clear;
      ThicknessMeasurement.LowerDataPotints.Clear;
    end;

    for I := 0 to Length(TempOrig1VdValueX) - 1 do
    begin
      TempXYAxis := TranslateXY(TempOrig1VdValueX[I], TempOrig1VdValueZ[I], CalibConfigParameter.UpperSensorAngle, 0);
      TempRot1VdValueX[I] := -TempXYAxis.XAxis;
      TempRot1VdValueZ[I] := CalibConfigParameter.SensorsDistance - TempXYAxis.ZAxis;
      TempRot1VdValueX[I] := TempRot1VdValueX[I] + IniDifX;
      if IsOpenSensor then if (CalCounts = 5) and (TempOrig1VdValueZ[I] <> 0) then ThicknessMeasurement.UpperDataPotints.AddXY(TempRot1VdValueX[I], TempRot1VdValueZ[I]);
    end;

    for I := 0 to Length(TempOrig2VdValueX) - 1 do
    begin
      TempXYAxis := TranslateXY(TempOrig2VdValueX[I], TempOrig2VdValueZ[I], CalibConfigParameter.LowerSensorAngle, 0);
      TempRot2VdValueX[I] := TempXYAxis.XAxis;
      TempRot2VdValueZ[I] := TempXYAxis.ZAxis;
      if IsOpenSensor then if (CalCounts = 5) and (TempOrig2VdValueZ[I] <> 0) then ThicknessMeasurement.LowerDataPotints.AddXY(TempRot2VdValueX[I], TempRot2VdValueZ[I]);
    end;

    TempCenterX := BinarySearchNear(TempRot2VdValueX, 0, Length(TempRot2VdValueX)-1, 0, True);
    TempKB := LeastSquares(TempCenterX - DetectWidth, TempCenterX + DetectWidth, TempRot2VdValueX, TempRot2VdValueZ);
    ThicknessMeasurement.CalibResultEdit.Text := FormatFloat('0.000', CalPointToLine(TempRot1VdValueX, TempRot1VdValueZ,TempCenterX - DetectWidth, TempCenterX + DetectWidth, TempKB.K, TempKB.B));
  end;
end;

procedure TDataProcess.SaveResultData(tmpThickness: string);
var
  ResultFile : TextFile;
  tmpPath, tmpString : string;
begin
  tmpPath := SavedResultDataPath + FormatDateTime('yyyymmdd', Now) + '.txt';
  AssignFile(ResultFile, tmpPath);
  if FileExists(tmpPath) then append(ResultFile)
  else
  begin
    ForceDirectories(ExtractFilePath(tmpPath));
    Rewrite(ResultFile);
    tmpString := '操作员' + chr(VK_TAB) + '测量时间' + chr(VK_TAB) + '钢板编号' + chr(VK_TAB) + '钢板厚度';
    writeln(ResultFile, tmpString);
  end;
  tmpString := Controller + Chr(VK_TAB) + FormatDateTime('hh:nn:ss', Now) + Chr(VK_TAB) + ID + Chr(VK_TAB) + tmpThickness + 'mm';
  writeln(ResultFile, tmpString);
  CloseFile(ResultFile);
end;
end.
