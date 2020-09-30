unit DataSelfDeletion;

interface

Uses
  winapi.Windows, UGlobalpara, System.SysUtils, System.Classes, System.StrUtils;

  Type TDataSelfDeletion = Class
    Private
      Function GetResidualDiskSize(TempSaveDataPath : String) : Int64;
      Function IsResidualDiskSizeEnough(TempSaveDataPath : String; TempCompareDataSize : Single) : Boolean;
      Function FindFileList(TempPath, FileExt : String) : TStringList;
      Function GetFileCreateTime(FilePathName : String; TimeFlag : Byte) : TDateTime;
      Function PathToTime(TempTStringList : TStringList) : TStringList;
      Function FileTimeSort(TempTimeTStringList, TempFileTStringList : TStringList) : TStringList;
      Function DeleteRedundantFile(TempSaveDataPath : String; TempCompareDataSize : Single; TempTStringList : TStringList) : TStringList;
    Public
      Procedure DataSelfDelete(TempSaveDataPath : String; TempCompareDataSize : Single);
  End;

  Const
    FILE_CREATE_TIME = 0;   //创建时间
    FILE_MODIFY_TIME = 1;   //修改时间
    FILE_ACCESS_TIME = 3;   //访问时间

implementation

Function TDataSelfDeletion.GetResidualDiskSize(TempSaveDataPath: string) : Int64;
Var
  UnKnowDiskSize, TotalDiskSize, ResidualDiskSize : TLargeInteger;
begin
  Try
    TempSaveDataPath := ExtractFileDrive(TempSaveDataPath);
    GetDiskFreeSpaceEx(PChar(TempSaveDataPath), UnKnowDiskSize, TotalDiskSize, @ResidualDiskSize);
    Result := ResidualDiskSize;
  Except

    Exit;
  End;
end;

Function TDataSelfDeletion.IsResidualDiskSizeEnough(TempSaveDataPath: string; TempCompareDataSize: Single) : Boolean;
begin
  Try
    if TempCompareDataSize > MinResidualDiskSize then
    Begin
      if GetResidualDiskSize(TempSaveDataPath) > TempCompareDataSize * 1024 * 1024 * 1024 then
      Begin
        Result := True;
      End
      else
      Begin
        Result := False;
      End;
    End
    else
    Begin
      TempCompareDataSize := MinResidualDiskSize;
      if GetResidualDiskSize(TempSaveDataPath) > TempCompareDataSize * 1024 * 1024 * 1024 then
      Begin
        Result := True;
      End
      else
      Begin
        Result := False;
      End;
    End;
  Except

    Exit;
  End;
end;

Function TDataSelfDeletion.FindFileList(TempPath: string; FileExt: string) : TStringList;
Var
  Searchrec : TSearchrec;
begin
  Result := TStringList.Create;
  if RightStr(Trim(TempPath), 1) <> '\' then
  Begin
    TempPath := Trim(TempPath) + '\';
  End
  else
  Begin
    TempPath := Trim(TempPath);
  End;
  if not DirectoryExists(TempPath) then
  Begin
    Result.Clear;
    Exit;
  End;
  if FindFirst(TempPath + '*', FaAnyfile, Searchrec) = 0 then
  Begin
    Repeat
      if (Searchrec.Name = '.') Or (Searchrec.Name = '..') then
      Begin
        Continue;
      End;
      if DirectoryExists(TempPath + Searchrec.Name) then
      Begin
        Result.AddStrings(FindFileList(TempPath + Searchrec.Name, FileExt));
      End
      else
      Begin
        if (UpperCase(ExtractFileExt(TempPath + Searchrec.Name)) = UpperCase(FileExt)) or (FileExt = '.*') then
        Begin
          Result.Add(TempPath + Searchrec.Name);
        End;
      End;
    Until FindNext(Searchrec) <> 0;
    System.SysUtils.FindClose(Searchrec);
  End;
end;

Function TDataSelfDeletion.GetFileCreateTime(FilePathName: string; TimeFlag: Byte) : TDateTime;
Var
  Handle : Thandle;
  Win32FindData : TWin32FindData;
  FileTime : TFileTime;
  dwDateTime : DWord;
begin
  Handle := FindFirstFile(PChar(FilePathName), Win32FindData);
  if Handle <> INVALID_HANDLE_VALUE then
  Begin
    case TimeFlag of
      FILE_CREATE_TIME : FileTimeToLocalFileTime(Win32FindData.ftCreationTime, FileTime);
      FILE_MODIFY_TIME : FileTimeToLocalFileTime(Win32FindData.ftLastWriteTime, FileTime);
      FILE_ACCESS_TIME : FileTimeToLocalFileTime(Win32FindData.ftLastAccessTime, FileTime);
    else
      FileTimeToLocalFileTime(Win32FindData.ftCreationTime, FileTime);
    end;
    FileTimeToDosDateTime(FileTime, LongRec(dwDateTime).Hi, LongRec(dwDateTime).Lo);
    Result := FileDateToDateTime(dwDateTime);
    Winapi.Windows.FindClose(Handle);
  End
  else
  Begin
    Result := 0;
    Exit;
  End;
end;

Function TDataSelfDeletion.PathToTime(TempTStringList: TStringList) : TStringList;
Var
  I : LongWord;
begin
  Result := TStringList.Create;
  TempTStringList.Capacity := TempTStringList.Count;
  Result.Capacity := TempTStringList.Count;
  if TempTStringList.Count > 0 then
  Begin
    for I := 0 to TempTStringList.Count - 1 do
    Begin
      Result.Add(DateTimeToStr(GetFileCreateTime(TempTStringList[I], FILE_CREATE_TIME)));
    End;
  End;
end;

Function TDataSelfDeletion.FileTimeSort(TempTimeTStringList: TStringList; TempFileTStringList: TStringList) : TStringList;
var
  I, J : LongWord;
  TimeTempString, FileTempString : String;
  TempTDateTime : TDateTime;
  TempDouble : Double;
begin
//  Result := TStringList.Create;
  if TempTimeTStringList.Count > 0 then
  begin
    TempFileTStringList.Capacity := TempFileTStringList.Count;
    for I := 1 to TempTimeTStringList.Count - 1 do
    Begin
      for J := 0 to TempTimeTStringList.Count - 1 - I do
      Begin
        if StrToDateTime(TempTimeTStringList[J]) < StrToDateTime(TempTimeTStringList[J + 1]) then
        Begin
          TimeTempString := TempTimeTStringList[J];
          TempTimeTStringList[J] := TempTimeTStringList[J + 1];
          TempTimeTStringList[J + 1] := TimeTempString;
          FileTempString := TempFileTStringList[J];
          TempFileTStringList[J] := TempFileTStringList[J + 1];
          TempFileTSTringList[J + 1] := FileTempString;
        End;
      End;
    End;
    TempTDateTime := Now;
    for I := TempTimeTStringList.Count - 1 DownTo 0 do
    Begin
      TempDouble := TempTDateTime - StrToDateTime(TempTimeTStringList[I]);
      if Now - StrToDateTime(TempTimeTStringList[I]) > 185 then   //185是六个月的天数
      Begin
        DeleteFile(TempFileTStringList[I]);
        TempTimeTStringList.Delete(I);
        TempFileTStringList.Delete(I);
      End;
    End;
  end;
  TempFileTStringList.Capacity := TempFileTStringList.Count;
  Result := TempFileTStringList;
end;

Function TDataSelfDeletion.DeleteRedundantFile(TempSaveDataPath: String; TempCompareDataSize : Single; TempTStringList: TStringList) : TStringList;
var
  I : LongWord;
begin
//  Result := TStringList.Create;
  if TempTStringList.Capacity > 0 then
  begin
    for I := TempTStringList.Capacity - 1 DownTo 0 do
    Begin
      if Not(IsResidualDiskSizeEnough(TempSaveDataPath, TempCompareDataSize)) then
      Begin
        DeleteFile(TempTStringList[I]);
        TempTStringList.Delete(I);
      End;
    End;
  end;
  Result := TempTStringList;
  Result.Capacity := Result.Count;
end;

Procedure TDataSelfDeletion.DataSelfDelete(TempSaveDataPath: string; TempCompareDataSize: Single);
begin
  DeleteRedundantFile(TempSaveDataPath, TempCompareDataSize, FileTimeSort(PathToTime(FindFileList(TempSaveDataPath, '.*')), FindFileList(TempSaveDataPath, '.*')));
end;

end.
