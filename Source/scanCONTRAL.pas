unit scanCONTRAL;

interface

const
  scandll = 'LLT.dll';

//------------------------------------------------------------
const

 ERROR_OK =                                                 0 ;
 ERROR_SERIAL_COMM =                                        1 ;
 ERROR_SERIAL_LLT =                                         7  ;
 ERROR_CONNECTIONLOST =                                     10 ;
 ERROR_STOPSAVING  =                                        100 ;

//specify the type for the RS422-multiplexer
 RS422_INTERFACE_FUNCTION_AUTO =                            0   ;
 RS422_INTERFACE_FUNCTION_SERIALPORT_115200=                1   ;
 RS422_INTERFACE_FUNCTION_TRIGGER =                         2   ;
 RS422_INTERFACE_FUNCTION_CMM_TRIGGER=                      3   ;
 RS422_INTERFACE_FUNCTION_ENCODER=                          4   ;
 RS422_INTERFACE_FUNCTION_DIGITAL_OUTPUT=                   6   ;
 RS422_INTERFACE_FUNCTION_TRIGGER_LASER_PULSE=              7   ;
 RS422_INTERFACE_FUNCTION_SERIALPORT_57600=                 8   ;
 RS422_INTERFACE_FUNCTION_SERIALPORT_38400=                 9   ;
 RS422_INTERFACE_FUNCTION_SERIALPORT_19200=                 10  ;
 RS422_INTERFACE_FUNCTION_SERIALPORT_9600=                  11  ;

//Return-Values for the is-functions
 IS_FUNC_NO =                                               0    ;
 IS_FUNC_YES =                                              1    ;

//General return-values for all functions
 GENERAL_FUNCTION_DEVICE_NAME_NOT_SUPPORTED=                4     ;
 GENERAL_FUNCTION_PACKET_SIZE_CHANGED=                      3     ;
 GENERAL_FUNCTION_CONTAINER_MODE_HEIGHT_CHANGED=            2     ;
 GENERAL_FUNCTION_OK =                                      1     ;
 GENERAL_FUNCTION_NOT_AVAILABLE =                           0     ;

 ERROR_GENERAL_WHILE_LOAD_PROFILE=                         -1000  ;
 ERROR_GENERAL_NOT_CONNECTED =                             -1001  ;
 ERROR_GENERAL_DEVICE_BUSY=                                -1002   ;
 ERROR_GENERAL_WHILE_LOAD_PROFILE_OR_GET_PROFILES=         -1003   ;
 ERROR_GENERAL_WHILE_GET_PROFILES=                         -1004   ;
 ERROR_GENERAL_GET_SET_ADDRESS =                           -1005   ;
 ERROR_GENERAL_POINTER_MISSING=                            -1006   ;
 ERROR_GENERAL_WHILE_SAVE_PROFILES =                       -1007   ;
 ERROR_GENERAL_SECOND_CONNECTION_TO_LLT=                   -1008   ;

//Return-Values for GetDeviceName
 ERROR_GETDEVICENAME_SIZE_TOO_LOW=                         -1       ;
 ERROR_GETDEVICENAME_NO_BUFFER =                           -2       ;

//Return-Values for Load/SaveProfiles
 ERROR_LOADSAVE_WRITING_LAST_BUFFER=                  -50       ;
 ERROR_LOADSAVE_WHILE_SAVE_PROFILE =                  -51       ;
 ERROR_LOADSAVE_NO_PROFILELENGTH_POINTER =            -52       ;
 ERROR_LOADSAVE_NO_LOAD_PROFILE =                     -53       ;
 ERROR_LOADSAVE_STOP_ALREADY_LOAD =                   -54       ;
 ERROR_LOADSAVE_CANT_OPEN_FILE =                      -55       ;
 ERROR_LOADSAVE_INVALID_FILE_HEADER=                  -56       ;
 ERROR_LOADSAVE_FILE_POSITION_TOO_HIGH=               -57       ;
 ERROR_LOADSAVE_AVI_NOT_SUPPORTED=                    -58       ;
 ERROR_LOADSAVE_NO_REARRANGEMENT_POINTER =            -59       ;
 ERROR_LOADSAVE_WRONG_PROFILE_CONFIG =                -60       ;
 ERROR_LOADSAVE_NOT_TRANSFERING=                      -61       ;

//Return-Values for profile transfer functions
 ERROR_PROFTRANS_SHOTS_NOT_ACTIVE=                    -100       ;
 ERROR_PROFTRANS_SHOTS_COUNT_TOO_HIGH =               -101       ;
 ERROR_PROFTRANS_WRONG_PROFILE_CONFIG =               -102       ;
 ERROR_PROFTRANS_FILE_EOF =                           -103       ;
 ERROR_PROFTRANS_NO_NEW_PROFILE =                     -104       ;
 ERROR_PROFTRANS_BUFFER_SIZE_TOO_LOW =                -105        ;
 ERROR_PROFTRANS_NO_PROFILE_TRANSFER =                -106        ;
 ERROR_PROFTRANS_PACKET_SIZE_TOO_HIGH=                -107        ;
 ERROR_PROFTRANS_CREATE_BUFFERS =                     -108        ;
 ERROR_PROFTRANS_WRONG_PACKET_SIZE_FOR_CONTAINER =    -109        ;
 ERROR_PROFTRANS_REFLECTION_NUMBER_TOO_HIGH  =        -110        ;
 ERROR_PROFTRANS_MULTIPLE_SHOTS_ACTIV =               -111        ;
 ERROR_PROFTRANS_BUFFER_HANDOUT =                     -112        ;
 ERROR_PROFTRANS_WRONG_BUFFER_POINTER =               -113        ;
 ERROR_PROFTRANS_WRONG_TRANSFER_CONFIG=               -114        ;

//Return-Values for Set/GetFunctions
 ERROR_SETGETFUNCTIONS_WRONG_BUFFER_COUNT =           -150         ;
 ERROR_SETGETFUNCTIONS_PACKET_SIZE =                  -151         ;
 ERROR_SETGETFUNCTIONS_WRONG_PROFILE_CONFIG =         -152          ;
 ERROR_SETGETFUNCTIONS_NOT_SUPPORTED_RESOLUTION =     -153          ;
 ERROR_SETGETFUNCTIONS_REFLECTION_NUMBER_TOO_HIGH =   -154          ;
 ERROR_SETGETFUNCTIONS_WRONG_FEATURE_ADRESS =         -155          ;
 ERROR_SETGETFUNCTIONS_SIZE_TOO_LOW  =                -156          ;
 ERROR_SETGETFUNCTIONS_WRONG_PROFILE_SIZE=            -157          ;
 ERROR_SETGETFUNCTIONS_MOD_4 =                        -158          ;
 ERROR_SETGETFUNCTIONS_REARRANGEMENT_PROFILE =        -159          ;
 ERROR_SETGETFUNCTIONS_USER_MODE_TOO_HIGH =           -160          ;
 ERROR_SETGETFUNCTIONS_USER_MODE_FACTORY_DEFAULT=     -161          ;
 ERROR_SETGETFUNCTIONS_HEARTBEAT_TOO_HIGH  =          -162          ;


//Return-Values PostProcessingParameter
 ERROR_POSTPROCESSING_NO_PROF_BUFFER=                 -200           ;
 ERROR_POSTPROCESSING_MOD_4      =                    -201           ;
 ERROR_POSTPROCESSING_NO_RESULT   =                   -202           ;
 ERROR_POSTPROCESSING_LOW_BUFFERSIZE =                -203           ;
 ERROR_POSTPROCESSING_WRONG_RESULT_SIZE   =           -204           ;

//Return-Values for GetDeviceInterfaces
 ERROR_GETDEVINTERFACES_WIN_NOT_SUPPORTED  =          -250            ;
 ERROR_GETDEVINTERFACES_REQUEST_COUNT  =              -251            ;
 ERROR_GETDEVINTERFACES_CONNECTED  =                  -252             ;
 ERROR_GETDEVINTERFACES_INTERNAL   =                  -253             ;

//Return-Values for Connect
 ERROR_CONNECT_LLT_COUNT =                            -300             ;
 ERROR_CONNECT_SELECTED_LLT =                         -301             ;
 ERROR_CONNECT_ALREADY_CONNECTED  =                   -302             ;
 ERROR_CONNECT_LLT_NUMBER_ALREADY_USED =              -303             ;
 ERROR_CONNECT_SERIAL_CONNECTION   =                  -304             ;
 ERROR_CONNECT_INVALID_IP =                           -305             ;

//Return-Values for SetPartialProfile
 ERROR_PARTPROFILE_NO_PART_PROF  =                    -350              ;
 ERROR_PARTPROFILE_TOO_MUCH_BYTES =                   -351              ;
 ERROR_PARTPROFILE_TOO_MUCH_POINTS =                  -352              ;
 ERROR_PARTPROFILE_NO_POINT_COUNT =                   -353              ;
 ERROR_PARTPROFILE_NOT_MOD_UNITSIZE_POINT =           -354               ;
 ERROR_PARTPROFILE_NOT_MOD_UNITSIZE_DATA =            -355               ;

//Return-Values for Start/StopTransmissionAndCmmTrigger
 ERROR_CMMTRIGGER_NO_DIVISOR  =                       -400                ;
 ERROR_CMMTRIGGER_TIMEOUT_AFTER_TRANSFERPROFILES =    -401                ;
 ERROR_CMMTRIGGER_TIMEOUT_AFTER_SETCMMTRIGGER  =      -402                ;

//Return-Values for TranslateErrorValue
 ERROR_TRANSERRORVALUE_WRONG_ERROR_VALUE  =           -450     ;
 ERROR_TRANSERRORVALUE_BUFFER_SIZE_TOO_LOW =          -451     ;

//Read/write config functions
 ERROR_READWRITECONFIG_CANT_CREATE_FILE =             -500      ;
 ERROR_READWRITECONFIG_CANT_OPEN_FILE =               -501      ;
 ERROR_READWRITECONFIG_QUEUE_TO_SMALL =               -502      ;

//Function defines for the Get/SetFeature function
 FEATURE_FUNCTION_SERIAL  =                           $f0000410  ;
 FEATURE_FUNCTION_LASERPOWER =                        $f0f00824  ;
 INQUIRY_FUNCTION_LASERPOWER  =                       $f0f00524  ;
 FEATURE_FUNCTION_MEASURINGFIELD  =                   $f0f00880  ;
 INQUIRY_FUNCTION_MEASURINGFIELD  =                   $f0f00580  ;
 FEATURE_FUNCTION_TRIGGER   =                         $f0f00830  ;  //特征函数触发
 INQUIRY_FUNCTION_TRIGGER   =                         $f0f00530  ;   //询问函数触发
 FEATURE_FUNCTION_SHUTTERTIME =                       $f0f0081c  ;
 INQUIRY_FUNCTION_SHUTTERTIME =                       $f0f0051c  ;
 FEATURE_FUNCTION_IDLETIME   =                        $f0f00800  ;
 INQUIRY_FUNCTION_IDLETIME   =                        $f0f00500  ;
 FEATURE_FUNCTION_PROCESSING_PROFILEDATA =            $f0f00804  ;
 INQUIRY_FUNCTION_PROCESSING_PROFILEDATA =            $f0f00504  ;
 FEATURE_FUNCTION_THRESHOLD  =                        $f0f00810  ;
 INQUIRY_FUNCTION_THRESHOLD   =                       $f0f00510  ;
 FEATURE_FUNCTION_MAINTENANCEFUNCTIONS  =             $f0f0088c  ;
 INQUIRY_FUNCTION_MAINTENANCEFUNCTIONS  =             $f0f0058c  ;
 FEATURE_FUNCTION_ANALOGFREQUENCY    =                $f0f00828  ;
 INQUIRY_FUNCTION_ANALOGFREQUENCY   =                 $f0f00528  ;
 FEATURE_FUNCTION_ANALOGOUTPUTMODES =                 $f0f00820  ;
 INQUIRY_FUNCTION_ANALOGOUTPUTMODES =                 $f0f00520  ;
 FEATURE_FUNCTION_CMMTRIGGER       =                  $f0f00888  ;
 INQUIRY_FUNCTION_CMMTRIGGER       =                  $f0f00588  ;
 FEATURE_FUNCTION_REARRANGEMENT_PROFILE =             $f0f0080c  ;
 INQUIRY_FUNCTION_REARRANGEMENT_PROFILE =             $f0f0050c  ;
 FEATURE_FUNCTION_PROFILE_FILTER        =             $f0f00818  ;
 INQUIRY_FUNCTION_PROFILE_FILTER        =             $f0f00518  ;
 FEATURE_FUNCTION_RS422_INTERFACE_FUNCTION =          $f0f008c0  ;
 INQUIRY_FUNCTION_RS422_INTERFACE_FUNCTION  =         $f0f005c0  ;

 FEATURE_FUNCTION_SATURATION =                        $f0f00814  ;
 INQUIRY_FUNCTION_SATURATION  =                       $f0f00514  ;
 FEATURE_FUNCTION_TEMPERATURE =                       $f0f0082c  ;
 INQUIRY_FUNCTION_TEMPERATURE =                       $f0f0052c  ;
 FEATURE_FUNCTION_CAPTURE_QUALITY =                   $f0f008c4  ;
 INQUIRY_FUNCTION_CAPTURE_QUALITY =                   $f0f005c4  ;
 FEATURE_FUNCTION_SHARPNESS  =                        $f0f00808  ;
 INQUIRY_FUNCTION_SHARPNESS  =                        $f0f00508  ;

 FEATURE_FUNCTION_PACKET_DELAY =                      $00000d08    ;
 FEATURE_FUNCTION_CONNECTION_SPEED  =                 $00000670    ;

//Defines for the return values of the ConvertProfile2Values and ConvertPartProfile2Values functions
 CONVERT_WIDTH =                                      $00000100   ;
 CONVERT_MAXIMUM =                                    $00000200   ;
 CONVERT_THRESHOLD=                                   $00000400   ;
 CONVERT_X  =                                         $00000800   ;
 CONVERT_Z   =                                        $00001000   ;
 CONVERT_M0  =                                        $00002000   ;
 CONVERT_M1  =                                        $00004000   ;

//typedef void (_stdcall *TNewProfile)(const unsigned char *pData, unsigned int nSize);
//typedef void (_stdcall *TNewProfile_s)(const unsigned char *pData, unsigned int nSize, void *pUserData);
//typedef void (_cdecl *TNewProfile_c)(const unsigned char *pData, unsigned int nSize, void *pUserData);

//specify the type of the scanner
//if you programming language don't support enums, you can use a signed int
//type
// TScannerType =
//(
  StandardType = -1;                    //can't decode scanCONTROL name use standard measurmentrange
  LLT25  = 0;                          //scanCONTROL28xx with 25mm measurmentrange
  LLT100 = 1;                           //scanCONTROL28xx with 100mm measurmentrange
  
  scanCONTROL28xx_25  = 0;              //scanCONTROL28xx with 25mm measurmentrange
  scanCONTROL28xx_100 = 1;              //scanCONTROL28xx with 100mm measurmentrange
  scanCONTROL28xx_10  = 2;              //scanCONTROL28xx with 10mm measurmentrange
  scanCONTROL28xx_xxx = 999;            //scanCONTROL28xx with no measurmentrange -> use standard measurmentrange

  scanCONTROL27xx_25  = 1000;           //scanCONTROL27xx with 25mm measurmentrange
  scanCONTROL27xx_100 = 1001;           //scanCONTROL27xx with 100mm measurmentrange
  scanCONTROL27xx_50  = 1002;           //scanCONTROL27xx with 50mm measurmentrange
  scanCONTROL2751_25  = 1020;           //scanCONTROL27xx with 25mm measurmentrange
  scanCONTROL2751_100 = 1021;           //scanCONTROL27xx with 100mm measurmentrange
  scanCONTROL2702_50  = 1032;           //scanCONTROL2702 with 50mm measurement range
  scanCONTROL27xx_xxx = 1999;           //scanCONTROL27xx with no measurmentrange -> use standard measurmentrange

  scanCONTROL26xx_25  = 2000;           //scanCONTROL26xx with 25mm measurmentrange
  scanCONTROL26xx_100 = 2001;           //scanCONTROL26xx with 100mm measurmentrange
  scanCONTROL26xx_50  = 2002;           //scanCONTROL26xx with 50mm measurmentrange
  scanCONTROL2651_25  = 2020;           //scanCONTROL26xx with 25mm measurmentrange
  scanCONTROL2651_100 = 2021;           //scanCONTROL26xx with 100mm measurmentrange
  scanCONTROL2602_50  = 2032;           //scanCONTROL2602 with 50mm measurement range
  scanCONTROL26xx_xxx = 2999;           //scanCONTROL26xx with no measurmentrange -> use standard measurmentrange

  scanCONTROL29xx_25  = 3000;           //scanCONTROL29xx with 25mm measurmentrange
  scanCONTROL29xx_100 = 3001;           //scanCONTROL29xx with 100mm measurmentrange
  scanCONTROL29xx_50  = 3002;           //scanCONTROL29xx with 50mm measurmentrange
  scanCONTROL2951_25  = 3020;           //scanCONTROL29xx with 25mm measurmentrange
  scanCONTROL2951_100 = 3021;           //scanCONTROL29xx with 100mm measurmentrange
  scanCONTROL2902_50  = 3032;           //scanCONTROL2902 with 50mm measurement range
  scanCONTROL2953_30  = 3033;           //scanCONTROL2953 with 30mm measurement range
  scanCONTROL29xx_xxx = 3999;           //scanCONTROL29xx with no measurmentrange -> use standard measurmentrange
  scanCONTROL2xxx     = 4000;          //scanCONTROL2xxx with 100mm measurmentrange
//);
//pScannerType = ^TScannerType;

//specify the profile configuration
//if you programming language don't support enums, you can use a signed int

  NONE            = 0;
  PROFILE         = 1;
  CONTAINER       = 1;
  VIDEO_IMAGE     = 1;
  PURE_PROFILE    = 2;
  QUARTER_PROFILE = 3;
  CSV_PROFILE     = 4;
  PARTIAL_PROFILE = 5;


//specify the callback type
//if you programming language don't support enums, you can use a signed int
type
  TCallbackType  =
(
  STD_CALL ,//= 0,
  C_DECL  // = 1
);

//specify the file type for saving
//if you programming language don't support enums, you can use a signed int
type
  TFileType=
(
  AVI ,//= 0,
  LLT ,//= 1,
  CSV ,//= 2,
  BMP ,//= 3,
  CSV_NEG //= 4
);

//Structure for the partial profile parameters

type
 TTransferProfileType =
(
  NORMAL_TRANSFER ,//= 0,
  SHOT_TRANSFER ,//  = 1,
  NORMAL_CONTAINER_MODE ,//= 2,
  SHOT_CONTAINER_MODE ,//= 3,
  NONE_TRANSFER //= 4
);

type
  TTransferVideoType =
(
  VIDEO_MODE_0 ,//= 0,
  VIDEO_MODE_1 ,//= 1,
  NONE_VIDEOMODE // = 2
);

type
  TInterfaceType=
(
  INTF_TYPE_UNKNOWN,//  = 0,
  INTF_TYPE_SERIAL,//   = 1,
  INTF_TYPE_FIREWIRE,// = 2,
  INTF_TYPE_ETHERNET// = 3
);

type
   TPartialProfile= record
     nStartPoint:Cardinal;
     nStartPointData:Cardinal;
     nPointCount:Cardinal;
     nPointDataWidth:Cardinal;
   end;
   pPartialProfile=^TPartialProfile;

 type
   pdouble=^Double;
   PChar=^Char;

//-------------------------------------------------------------
// interface function
 function s_CreateLLTDevice(iInterFaceType: TInterfaceType):Integer;stdcall;external scandll;
 function s_CreateLLTFirewire():Integer;stdcall; external scandll;
 function s_CreateLLTSerial(): Integer;stdcall; external scandll;
 function s_GetInterfaceType(pLLT: Integer):Integer;stdcall; external scandll;
 function s_DelDevice(pLLT: Integer):Integer;stdcall;external scandll;
 //Connect function
 function s_Connect(pLLT: Integer):Integer;stdcall;external scandll;
 function s_Disconnect(pLLT: Integer):Integer;stdcall;external scandll;
 //write config function
 function s_ExportLLTConfig(pLLT: Integer; pfilename: PChar):Integer;stdcall;external scandll;
 // device interface function
 function s_GetDeviceInterfaces(pLLT: Integer;pInterface: pcardinal;nSIZE: Cardinal):Integer;stdcall;external scandll;
 function s_GetDeviceInterfacesFast(pLLT: Integer;pInterface: pCardinal;nSIZE: Cardinal):Integer;stdcall;external scandll;
 function s_SetDeviceInterface(pLLT: Integer;nInterface: Cardinal; nAdditional: Integer):Integer;stdcall;external scandll;
 function s_GetDiscoveryBroadcastTarget(pLLT: Integer):Cardinal;stdcall;external scandll;
 function s_SetDiscoveryBroadcastTarget(pLLT: Integer;nNetworkAddress:cardinal;nSubnetMask:cardinal):Integer;stdcall;external scandll;
 //scanCONTROL indentification functions
 function s_GetDeviceName(pLLT: Integer;pDevName:PChar;nDevNameSize:Cardinal;pVenName:PChar;nVenNamesize:Cardinal):Integer;stdcall;external scandll;
 function s_GetLLTVersions(pLLT: integer;pDSP: pCardinal;pFPGA1:pcardinal;pFPGA2:Pcardinal):Integer;stdcall;external scandll;
 function s_GetLLTType(pLLT: Integer; ScannerType: pcardinal):Integer;stdcall;external scandll;
 //Get functions
 function s_GetMinMaxPacketSize(pLLT:Integer; pMinPacketSize: pcardinal;pMaxPacketSize:pcardinal):Integer;stdcall;external scandll;
 function s_GetResolutions(pLLT:Integer; pValue:pcardinal; nSize:Cardinal):Integer;stdcall;external scandll;
 function s_GetFeature(pLLT:Integer; myfun: Cardinal; pValue:pcardinal):Integer;stdcall;external scandll;
 function s_GetBufferCount(pLLT:Integer; pValue:pcardinal):Integer;stdcall;external scandll;
 function s_GetMainReflection(pLLT:Integer;pValue:pcardinal):Integer;stdcall;external scandll;
 function s_GetMaxFileSize(pLLT:Integer; pValue:pcardinal):Integer;stdcall;external scandll;
 function s_GetPacketSize(pLLT:Integer;pValue:pcardinal):Integer;stdcall;external scandll;
 function s_GetFirewireConnectionSpeed(pLLT:Integer;pValue:pcardinal):Integer;stdcall;external scandll;
 function s_GetProfileConfig(pLLT:Integer;pValue:pinteger):Integer;stdcall;external scandll;
 function s_GetResolution(pLLT:Integer;pValue:pcardinal):Integer;stdcall;external scandll;
 function s_GetProfileContainerSize(pLLT: Integer;pWidth:pcardinal; pHeight:pcardinal):Integer;stdcall;external scandll;
 function s_GetMaxProfileContainerSize(pLLT: Integer; pMaxWidth:pcardinal; pMaxHeight:pinteger):Integer;stdcall;external scandll;
 function s_GetEthernetHeartbeatTimeout(pLLT: Integer; pValue: pcardinal):Integer;stdcall;external scandll;
 //Set functions
 function s_SetFeature(pLLT:Integer;myfun:Cardinal;Value:Cardinal):Integer;stdcall;external scandll;
 function s_SetBufferCount(pLLT:Integer;Value:Cardinal):Integer;stdcall;external scandll;
 function s_SetMainReflection(pLLT:Integer;Value:Cardinal):Integer;stdcall;external scandll;
 function s_SetMaxFileSize(pLLT:Integer;Value:Cardinal):Integer;stdcall;external scandll;
 function s_SetPacketSize(pLLT:Integer;Value:Cardinal):Integer;stdcall;external scandll;
 function s_SetFirewireConnectionSpeed(pLLT:Integer;Value:Cardinal):Integer;stdcall;external scandll;
 function s_SetProfileConfig(pLLT:Integer;Value:Integer):Integer;stdcall;external scandll;
 function s_SetResolution(pLLT:Integer;Value:Cardinal):Integer;stdcall;external scandll;
 function s_SetProfileContainerSize(pLLT:Integer;nWidth:Cardinal;nHeight:Cardinal):Integer;stdcall;external scandll;
 function s_SetEthernetHeartbeatTimeout(pLLT:Integer;Value:Cardinal):Integer;stdcall;external scandll;
 //Register functions
 function s_RegisterCallback(pLLT:Integer;CallbackType:Integer; pLLTProfileCallback_3:Pointer;pUserData:Pointer):Integer;stdcall;external scandll;
 function s_RegisterErrorMsg(pLLT:Integer; Msg:Cardinal;hWnd:Cardinal;WParam:cardinal):Integer;stdcall;external scandll;
 //Profile transfer functions
 function s_TransferProfiles(pLLT:Integer;TransferProfileType:TTransferProfileType;nEnable:Boolean):Integer;stdcall;external scandll;
 function s_TransferVideoStream(pLLT:Integer;TransferVideoType:Integer;nEnable:Integer;pWidth:pcardinal;pHeight:pcardinal):Integer;stdcall;external scandll;

 function s_GetProfile(pLLT:Integer):Integer;stdcall;external scandll;
 function s_MultiShot(pLLT:Integer;Count:Cardinal):Integer;stdcall;external scandll;
 function s_GetActualProfile(pLLT:Integer;pBuffer:Pbyte;nBuffersize:Cardinal;ProfileConfig:Integer;pLostProfiles:pcardinal):Integer;stdcall;external scandll;
 function s_ConvertProfile2Values(pLLT:Integer; pProfile:pbyte;nResolution:Cardinal;ProfileConfig:Integer; ScannerType:Integer; nReflection:Cardinal; nConvertToMM:Boolean; pWidth:pword;pMaximum:pword; pThreshold:pword; pX,pZ:pdouble; pM0,pM1:pinteger):Integer;stdcall;external scandll;
 function s_ConvertPartProfile2Values(pLLT:Integer; pProfile:pbyte; TPartialProfile:pPartialProfile; ScannerType:Integer;nReflection:Cardinal; nConvertToMM:Boolean;pWidth,pMaximum, pThreshold:pword;pX, pZ:pdouble; pM0, pM1:pcardinal):Integer;stdcall;external scandll;

 function s_SetHoldBuffersForPolling(pLLT:Integer;uiHoldBuffersForPolling:Cardinal):Integer;stdcall;external scandll;
 function s_GetHoldBuffersForPolling(pLLT:Integer;puiHoldBuffersForPolling:pinteger):Integer;stdcall;external scandll;
 //Is functions
 function s_IsInterfaceType(pLLT:Integer;iInterfaceType:Integer):Integer;stdcall;external scandll;
 function s_IsFirewire(pLLT:Integer):Integer;stdcall;external scandll;
 function s_IsSerial(pLLT:Integer):Integer;stdcall;external scandll;
 function s_IsTransferingProfiles(pLLT:Integer):Integer;stdcall;external scandll;

//PartialProfile functions
 function s_GetPartialProfileUnitSize(pLLT:Integer; pUnitSizePoint:pcardinal;pUnitSizePointData:pcardinal):Integer;stdcall;external scandll;
 function s_GetPartialProfile(pLLT:Integer;TPartialProfile:pPartialProfile):Integer;stdcall;external scandll;
 function s_SetPartialProfile(pLLT:Integer;TPartialProfile:pPartialProfile):Integer;stdcall;external scandll;

//Timestamp convert functions
 function s_Timestamp2CmmTriggerAndInCounter(pTimestamp:PChar;pInCounter:PCardinal;pCmmTrigger:pinteger;pCmmActive:pinteger; pCmmCount:PCardinal):Integer;stdcall;external scandll;
 function s_Timestamp2TimeAndCount(pTimestamp:PChar;pTimeShutterOpen:pdouble;pTimeShutterClose:pdouble;pProfileCount:pinteger):Integer;stdcall;external scandll;

//PostProcessing functions
 function s_ReadPostProcessingParameter(pLLT:Integer; pParameter:pcardinal;nSize:Cardinal):Integer;stdcall;external scandll;
 function s_WritePostProcessingParameter(pLLT:Integer; pParameter:PCardinal; nSize:Cardinal):Integer;stdcall;external scandll;
 function s_ConvertProfile2ModuleResult(pLLT:Integer;pProfileBuffer:PChar; nProfileBufferSize:Cardinal; pModuleResultBuffer:PChar; nResultBufferSize:Integer; TPartialProfile:pPartialProfile):Integer;stdcall;external scandll;

//Load/Save functions
 function s_SaveProfiles(pLLT:Integer;pFilename:PChar; FileType:TFileType):Integer;stdcall;external scandll;
 function s_LoadProfiles(pLLT:Integer;pFilename:PChar; TPartialProfile:pPartialProfile; pProfileConfig:pinteger;pScannerType:pinteger;pRearrengementProfile:PCardinal):Integer;stdcall;external scandll;
 function s_LoadProfilesGetPos(pLLT:Integer;pActualPosition: pcardinal;pMaxPosition:pcardinal):Integer;stdcall;external scandll;
 function s_LoadProfilesSetPos(pLLT:Integer;nNewPosition:Cardinal):Integer;stdcall;external scandll;

//Special CMM trigger functions
 function s_StartTransmissionAndCmmTrigger(pLLT:Integer;nCmmTrigger:Cardinal;TransferProfileType:TTransferProfileType;nProfilesForerun:Cardinal;pFilename:PChar;FileType:TFileType; nTimeout:Cardinal):Integer;stdcall;external scandll;
 function s_StopTransmissionAndCmmTrigger(pLLT:Integer;nCmmTriggerPolarity:Integer;nTimeout:Cardinal):Integer;stdcall;external scandll;

//Converts a error-value in a string
 function s_TranslateErrorValue(pLLT:Integer;ErrorValue:Integer;pString:PChar;nStringSize:Cardinal):Integer;stdcall;external scandll;

//User Mode
 function s_GetActualUserMode(pLLT:Integer;ActualUserMode:pinteger;pUserModeCount:pinteger):Integer;stdcall;external scandll;
 function s_ReadWriteUserModes(pLLT:Integer;nWrite:Integer;nUserMode:Cardinal):Integer;stdcall;external scandll;


implementation

end.
