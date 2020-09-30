unit USoftwareFunction;

interface

Uses
  leisai, Vcl.Forms, System.SysUtils, Winapi.Windows;

type TMotorControl = class
  private
    FIsZeroing, FIsAdvancing, FIsTestAdvancing, FIsTestRetreating : Boolean;
    const
      Min_Vel = 0.0;
      Max_Vel = 20000.0;
      Acc = 300000.0;
      Decc = 600000.0;
    procedure InitDMC5480;
  public
    constructor Create; overload;
    procedure FreeDMC5480;
    procedure DMC5480Zeroing;
    procedure DMC5480InPlace;
    procedure DMC5480Forward(TempPluseNumber : Integer);
    procedure DMC5480BackOff(TempPluseNumber : Integer);
    function PositionFeedback : string;
    procedure DMC5480LowLevel;   //这俩函数调试的时候需要注意
    procedure DMC5480HighLevel;
    property IsZeroing : Boolean read FIsZeroing;
    property IsAdvancing : Boolean read FIsAdvancing;
    property IsTestAdvancing : Boolean read FIsTestAdvancing;
    property IsTestRetreating : Boolean read FIsTestRetreating;
end;

type TSerialPortCommunication = class
  public
    function OpenSerialPort(ComNumber: Byte; BaudRateNumber: LongWord; DataBit: Byte) : Boolean;
    procedure CloseSerialPort;
    procedure ReceiveBuff;
    procedure SendBuff(TempArray : array of byte);
end;

var
  FSerialPortCommunication : TSerialPortCommunication;
  UpperLaserSurface, LowerLaserSurface, UpperCFrame, LowerCFrame, HighTemperature, LowTemprature : Word;

type TIndicatorlight = class
  public
    procedure RedLightWarning;
    procedure LightClose;
    procedure RedLampLight(TempMs : Word);
    procedure YellowLampLight(TempMs : Word);
    procedure GreenLampLight(TempMs : Word);
end;

type THardWareControl = class
  public
    procedure GetTemperature;
    procedure OpenFan; overload;
    procedure CloseFan;
    procedure OpenFan(TempUpperFan, TempLowerFan : Byte); overload;
end;

implementation

uses
  MainInterface, UGlobalpara;

constructor TMotorControl.Create;
begin
  inherited Create;
  FIsZeroing := False;
  FIsAdvancing := False;
  FIsTestAdvancing := False;
  FIsTestRetreating := False;
  InitDMC5480;
end;

procedure TMotorControl.InitDMC5480;
var
  CardCount : Word;
begin
  CardCount := d5480_board_init;
  if (CardCount <= 0) Or (CardCount > 8) then
  begin
    ThicknessMeasurement.RibbonStatusBar.Panels[3].Text := '电机初始化失败，请检查。';
    ThicknessMeasurement.InPlaceLargeButton.Enabled := False;
    ThicknessMeasurement.ResetLargeButton.Enabled := False;
  end
  else
  begin
    d5480_set_pulse_outmode(0,1);
//    d5480_set_pulse_outmode(1,1);
    d5480_write_outbit(0, 2, 0);
    d5480_counter_config(0, 1);
    d5480_set_encoder(0, 0);
    ThicknessMeasurement.RibbonStatusBar.Panels[3].Text := '电机初始化成功。';
  end;
end;

procedure TMotorControl.FreeDMC5480;
begin
  d5480_board_close;
end;

procedure TMotorControl.DMC5480Zeroing;
begin
  ThicknessMeasurement.InPlaceLargeButton.Enabled := False;
  ThicknessMeasurement.ResetLargeButton.Enabled := False;
  d5480_config_HOME_PIN_logic(0,0,0);
  d5480_config_home_mode(0, 1, 20000, 1, 0);
  d5480_home_move(0);
  while d5480_check_done(0) = 0 do
  begin
    FIsZeroing := True;
    Application.ProcessMessages;
  end;
  FIsZeroing := False;
  ThicknessMeasurement.RibbonStatusBar.Panels[3].Text := '电机已回原点。';
//  d5480_set_position(0,0);
  ThicknessMeasurement.InPlaceLargeButton.Enabled := True;
  ThicknessMeasurement.ResetLargeButton.Enabled := True;
end;

procedure TMotorControl.DMC5480InPlace;
begin
  ThicknessMeasurement.InPlaceLargeButton.Enabled := False;
  ThicknessMeasurement.ResetLargeButton.Enabled := False;
  d5480_set_profile(0, Min_Vel, Max_Vel, Acc, Decc);
  d5480_pmove(0, -440000, 0);   //-440000是现场设备从零点进入测量位置的脉冲数
  while d5480_check_done(0) = 0 do
  begin
    FIsAdvancing := True;
    Application.ProcessMessages;
  end;
  FIsAdvancing := False;
  ThicknessMeasurement.RibbonStatusBar.Panels[3].Text := '电机已到检测位。';
  ThicknessMeasurement.InPlaceLargeButton.Enabled := True;
  ThicknessMeasurement.ResetLargeButton.Enabled := True;
end;

procedure TMotorControl.DMC5480Forward(TempPluseNumber: Integer);
begin
  d5480_set_profile(0, Min_Vel, Max_Vel, Acc, Decc);
  if (TempPluseNumber < 0) then TempPluseNumber := TempPluseNumber * (-1);
  d5480_pmove(0, -TempPluseNumber, 0);
  while d5480_check_done(0) = 0 do
  begin
    FIsTestAdvancing := True;
    Application.ProcessMessages;
  end;
  FIsTestAdvancing := False;
  ThicknessMeasurement.RibbonStatusBar.Panels[3].Text := '电机前进完毕。';
end;

procedure TMotorControl.DMC5480BackOff(TempPluseNumber: Integer);
begin
  d5480_set_profile(0, Min_Vel, Max_Vel, Acc, Decc);
  if (TempPluseNumber < 0) then TempPluseNumber := TempPluseNumber * (-1);
  d5480_pmove(0, TempPluseNumber, 0);
  while d5480_check_done(0) = 0 do
  begin
    FIsTestRetreating := True;
    Application.ProcessMessages;
  end;
  FIsTestRetreating := False;
  ThicknessMeasurement.RibbonStatusBar.Panels[3].Text := '电机后退完毕。';
end;

function TMotorControl.PositionFeedback : string;
begin
  Result := IntToStr(d5480_get_position(0));
end;

procedure TMotorControl.DMC5480LowLevel;
begin
  d5480_write_outbit(0,1,0);
end;

procedure TMotorControl.DMC5480HighLevel;
begin
  d5480_write_outbit(0,1,1);
end;

function TSerialPortCommunication.OpenSerialPort(ComNumber: Byte; BaudRateNumber: Cardinal; DataBit: Byte) : Boolean;
var
  Com : string;
  CommConfig : TCommConfig;
begin
  Com := 'Com' + IntToStr(ComNumber);
  SerialPort := CreateFile(PChar(Com), GENERIC_READ or GENERIC_WRITE, 0, nil, OPEN_EXISTING, 0, 0);
  if (SerialPort = INVALID_HANDLE_VALUE) then
  begin
    Result := False;
    Exit;
  end;
  GetCommState(SerialPort, CommConfig.dcb);
  CommConfig.dcb.BaudRate := BaudRateNumber;
  CommConfig.dcb.ByteSize := DataBit;
  CommConfig.dcb.Parity := NOPARITY;   //没有校验位
  CommConfig.dcb.StopBits := ONESTOPBIT;   //为1的停止位
  if SetCommState(SerialPort, CommConfig.dcb) then Result := True
  else
  begin
    CloseHandle(SerialPort);
    Result := False;
  end;
end;

procedure TSerialPortCommunication.CloseSerialPort;
begin
  if SerialPort <> 0 then CloseHandle(SerialPort);
end;

procedure TSerialPortCommunication.ReceiveBuff;
var
  ComStat : TComStat;
  BytesRead, Error : LongWord;
  Buff : array[0..18] of Byte;   //温度反馈信息数据包是19位并且最长
  TempByteArray : array[0..1] of Byte;
  I : Byte;
  IsCorrect : Boolean;
  TempFeedbackByteArray : array of Byte;
begin
  ClearCommError(SerialPort, Error, @ComStat);
  if ComStat.cbInQue > SizeOf(Buff) then
  begin
    PurgeComm(SerialPort, PURGE_RXCLEAR);
    Exit;
  end;
  ReadFile(SerialPort, Buff, ComStat.cbInQue, BytesRead, nil);

  //数据处理
  if (Buff[0] = 170) And (Buff[1] = 85) And (Buff[4] = 1) then
  begin
    case Buff[5] of
      2:
      begin
        TempByteArray[0] := Buff[6];
        TempByteArray[1] := Buff[7];
        UpperLaserSurface := Word(TempByteArray);

        TempByteArray[0] := Buff[8];
        TempByteArray[1] := Buff[9];
        LowerLaserSurface := Word(TempByteArray);

        TempByteArray[0] := Buff[10];
        TempByteArray[1] := Buff[11];
        UpperCFrame := Word(TempByteArray);

        TempByteArray[0] := Buff[12];
        TempByteArray[1] := Buff[13];
        LowerCFrame := Word(TempByteArray);

        TempByteArray[0] := Buff[14];
        TempByteArray[1] := Buff[15];
        HighTemperature := Word(TempByteArray);

        TempByteArray[0] := Buff[16];
        TempByteArray[1] := Buff[17];
        LowTemprature := Word(TempByteArray);
      end;
      3:
      begin
        TempFeedbackByteArray := [170, 85, 8, 0, 1, 3, 0, 11];
        IsCorrect := True;
        for I := 0 to 7 do
        begin
          if Buff[I] <> TempFeedbackByteArray[I] then
          begin
            IsCorrect := False;
            Break;
          end;
        end;
        if AutoShow then
        begin
          if IsCorrect then MessageBox(ThicknessMeasurement.Handle, '灯状态设置正确。', '信息提示', MB_OK)
          else MessageBox(ThicknessMeasurement.Handle, '灯状态设置有误，请检查。', '信息提示', MB_OK);
        end;
        AutoShow := True;
      end;
      4:
      begin
        TempFeedbackByteArray := [170, 85, 8, 0, 1, 4, 0, 12];
        IsCorrect := True;
        for I := 0 to 7 do
        begin
          if Buff[I] <> TempFeedbackByteArray[I] then
          begin
            IsCorrect := False;
            Break;
          end;
        end;
        if AutoShow then
        begin
          if IsCorrect then MessageBox(ThicknessMeasurement.Handle, '风扇状态设置正确。', '信息提示', MB_OK)
          else MessageBox(ThicknessMeasurement.Handle, '风扇状态设置有误，请检查。', '信息提示', MB_OK);
        end;
        AutoShow := True;
      end;
    end;
  end;


end;

procedure TSerialPortCommunication.SendBuff(TempArray: array of Byte);
var
  BytesWrite : LongWord;
begin
  if SerialPort = 0 then Exit;
  WriteFile(SerialPort, TempArray, Length(TempArray), BytesWrite, nil);
  FSerialPortCommunication.ReceiveBuff;
end;

procedure THardWareControl.GetTemperature;
var
  TemperatureFeedback : array of Byte;   //温度反馈询问命令
begin
  TemperatureFeedback := [170, 85, 8, 0, 1, 2, 0, 10];
  FSerialPortCommunication.SendBuff(TemperatureFeedback);
  FSerialPortCommunication.ReceiveBuff;
end;

procedure THardWareControl.OpenFan;   //上下风扇最大速度
var
  TempByteArray : array of Byte;
begin
  TempByteArray := [170, 85, 9, 0, 1, 4, 100, 100, 213];
  FSerialPortCommunication.SendBuff(TempByteArray);
  if FanFormIsShow then FSerialPortCommunication.ReceiveBuff;
end;

procedure THardWareControl.CloseFan;
var
  TempByteArray : array of Byte;
begin
  TempByteArray := [170, 85, 9, 0, 1, 4, 0, 0, 13];
  FSerialPortCommunication.SendBuff(TempByteArray);
  if FanFormIsShow then FSerialPortCommunication.ReceiveBuff;
end;

procedure THardWareControl.OpenFan(TempUpperFan: Byte; TempLowerFan: Byte);
var
  TempWord : Word;
  TempByte : array[0..1] of Byte;
  TempByteArray : array of Byte;
begin
  if TempUpperFan > 100 then TempUpperFan := 100;
  if TempLowerFan > 100 then TempUpperFan := 100;
  TempWord := 170 + 85 + 9 + 1 + 4 + TempUpperFan + TempLowerFan;
  Move(TempWord, TempByte[0], 2);
  TempByteArray := [170, 85, 9, 0, 1, 4, TempLowerFan, TempUpperFan, TempByte[0]];
  FSerialPortCommunication.SendBuff(TempByteArray);
  FSerialPortCommunication.ReceiveBuff;
end;

procedure TIndicatorlight.RedLightWarning;   //温度过高要亮红灯，还未加入主界面中，记得AutoShow
var
  TempByteArray : array of Byte;
begin
  TempByteArray := [170, 85, 10, 0, 1, 3, 82, 250, 0, 89];
  FSerialPortCommunication.SendBuff(TempByteArray);
  if LightFormIsShow then FSerialPortCommunication.ReceiveBuff;
end;

procedure TIndicatorlight.LightClose;
var
  TempByteArray : array of Byte;
begin
  TempByteArray := [170, 85, 10, 0, 1, 3, 70, 0, 0, 83];
  FSerialPortCommunication.SendBuff(TempByteArray);
  if LightFormIsShow then FSerialPortCommunication.ReceiveBuff;
end;

procedure TIndicatorlight.RedLampLight(TempMs: Word);
var
  TempLongWord : LongWord;
  TempByte : array[0..3] of Byte;
  TempByteArray : array of Byte;
begin
  Move(TempMs, TempByte[0], 2);
  TempByteArray := [170, 85, 10, 0, 1, 3, 82, TempByte[0], TempByte[1], 0];
  TempLongWord := 170 + 85 + 10 + 1 + 3 + 82 + TempByte[0] + TempByte[1];
  Move(TempLongWord, TempByte[0], 4);
  TempByteArray[9] := TempByte[0];
  FSerialPortCommunication.SendBuff(TempByteArray);
  FSerialPortCommunication.ReceiveBuff;
end;

procedure TIndicatorlight.YellowLampLight(TempMs: Word);
var
  TempLongWord : LongWord;
  TempByte : array[0..3] of Byte;
  TempByteArray : array of Byte;
begin
  Move(TempMs, TempByte[0], 2);
  TempByteArray := [170, 85, 10, 0, 1, 3, 89, TempByte[0], TempByte[1], 0];
  TempLongWord := 170 + 85 + 10 + 1 + 3 + 89 + TempByte[0] + TempByte[1];
  Move(TempLongWord, TempByte[0], 4);
  TempByteArray[9] := TempByte[0];
  FSerialPortCommunication.SendBuff(TempByteArray);
  FSerialPortCommunication.ReceiveBuff;
end;

procedure TIndicatorlight.GreenLampLight(TempMs: Word);
var
  TempLongWord : LongWord;
  TempByte : array[0..3] of Byte;
  TempByteArray : array of Byte;
begin
  Move(TempMs, TempByte[0], 2);
  TempByteArray := [170, 85, 10, 0, 1, 3, 71, TempByte[0], TempByte[1], 0];
  TempLongWord := 170 + 85 + 10 + 1 + 3 + 71 + TempByte[0] + TempByte[1];
  Move(TempLongWord, TempByte[0], 4);
  TempByteArray[9] := TempByte[0];
  FSerialPortCommunication.SendBuff(TempByteArray);
  FSerialPortCommunication.ReceiveBuff;
end;

end.
