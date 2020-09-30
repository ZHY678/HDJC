unit leisai;

interface
  const
     leisaiDLL='DMC5480.dll';
     //MAX_PROFILE_COUNT = 3200;
  type
  ERR_CODE_DMC=(ERR_NOERR=0,ERR_UNKNOWN,ERR_PARAERR ,ERR_TIMEOUT ,ERR_CONTROLLERBUSY ,ERR_CONNECT_TOOMANY,
                 ERR_CONTILINE ,ERR_CANNOT_CONNECTETH =8,ERR_HANDLEERR ,ERR_SENDERR ,ERR_FIRMWAREERR =12,
                 ERR_FIRMWAR_MISMATCH =14,ERR_FIRMWARE_INVALID_PARA=20,ERR_FIRMWARE_PARA_ERR=20,
                 ERR_FIRMWARE_STATE_ERR=22,ERR_FIRMWARE_LIB_STATE_ERR=22,
                 ERR_FIRMWARE_CARD_NOT_SUPPORT=24,ERR_FIRMWARE_LIB_NOTSUPPORT=24 );


//---------------------   板卡初始和配置函数  ----------------------
//********************************************************************************
//** 函数名称: d5480_board_init
//** 功能描述: 控制板初始化，设置初始化和速度等设置
//** 输　  入: 无
//** 返 回 值: 0：无卡； 1-8：成功(实际卡数)
//*********************************************************************************/
//DMC5480_API int __stdcall d5480_board_init(void);
  function  d5480_board_init():Word;stdcall;external leisaiDLL;

//********************************************************************************
//** 函数名称: d5480_board_close
//** 功能描述: 关闭所有卡
//** 输　  入: 无
//** 返 回 值: 无
//*********************************************************************************/
//DMC5480_API void __stdcall d5480_board_close(void);
  procedure d5480_board_close(); stdcall;external leisaiDLL;

//********************************************************************************
//** 函数名称: 控制卡复位
//** 功能描述: 复位所有卡，只能在初始化完成之后调用．
//* 输　  入: 卡号
//** 返 回 值: 错误码
//*********************************************************************************/
//DMC5480_API DWORD __stdcall d5480_board_reset(WORD card);
  function  d5480_board_reset(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_card_version(WORD card);
  function  d5480_get_card_version(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_card_soft_version(WORD card, WORD* firm_id, DWORD* sub_firm_id);
  function  d5480_get_card_soft_version(card:Word;firm_id:PWord;sub_firm_id:PCardinal):Cardinal;stdcall;external leisaiDLL;
                                                                 //注意sub_firm_id类型是否有问题
  //DMC5480_API DWORD __stdcall d5480_get_client_ID(WORD card);
  function  d5480_get_client_ID(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_lib_version(void);
  function  d5480_get_lib_version:Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_card_ID(WORD card);
  function  d5480_get_card_ID(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_total_axes(WORD card);
  function  d5480_get_total_axes(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_test_software(WORD card, WORD testid, WORD para1, WORD para2, WORD para3);
  function  d5480_test_software(card:Word;testid:Word;para2:Word;para3:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_test_hardware(WORD card);
  function  d5480_test_hardware(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_download_firmware(WORD card, const char* pfilename);
  function  d5480_download_firmware(card:Word;pfilename:PChar):Cardinal;stdcall;external leisaiDLL;

//脉冲输入输出配置
//DMC5480_API DWORD __stdcall d5480_set_pulse_outmode(WORD axis,WORD outmode);
  function  d5480_set_pulse_outmode(axis:Word;outmode:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_counter_config(WORD axis,WORD mode);
  function  d5480_counter_config(axis:Word;mode:Word):Cardinal;stdcall;external leisaiDLL;

//添加配置读
//DMC5480_API DWORD __stdcall d5480_get_pulse_outmode(WORD axis,WORD *outmode);
  function  d5480_get_pulse_outmode(axis:Word;outmode:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_counter_config(WORD axis,WORD* mode);
  function  d5480_get_counter_config(axis:Word;outmode:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_SD_PIN(WORD axis,WORD *enable, WORD *sd_logic,WORD *sd_mode);
  function  d5480_get_config_SD_PIN(axis:Word;enable:PWord;sd_logic:PWord;sd_mode:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_INP_PIN(WORD axis,WORD* enable,WORD* inp_logic);
  function  d5480_get_config_INP_PIN(axis:Word;enable:PWord;inp_logic:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_ERC_PIN(WORD axis,WORD* enable,WORD* erc_logic,
//				WORD* erc_width,WORD* erc_off_time);
  function  d5480_get_config_ERC_PIN(axis:Word;enable:PWord;erc_logic:PWord;
          erc_width:PWord;erc_off_time:PWord):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD __stdcall d5480_get_config_ALM_PIN(WORD axis, WORD* enable, WORD* alm_logic,WORD* alm_action);
  function  d5480_get_config_ALM_PIN(axis:Word;enable:PWord;alm_logic:PWord;
          alm_action:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_EL_PIN(WORD axis, WORD* el_logic, WORD* el_mode);
  function  d5480_get_config_EL_PIN(axis:Word;el_logic:PWord;el_mode:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_HOME_PIN_logic(WORD axis,WORD* org_logic,WORD* filter);
  function  d5480_get_config_HOME_PIN_logic(axis:Word;org_logic:PWord;filter:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_home_mode(WORD axis,WORD* home_dir, double* vel,WORD* home_mode,WORD* EZ_count);
  function  d5480_get_config_home_mode(axis:Word;home_dir:PWord;vel:PDouble;home_mode:PWord;EZ_count:PWord):Cardinal;stdcall;external leisaiDLL;
                                                                //vel定义
//DMC5480_API DWORD __stdcall d5480_get_handwheel_inmode(WORD axis, WORD * inmode, double* multi);
  function  d5480_get_handwheel_inmode(axis:Word;inmode:PWord;multi:PDouble):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_LTC_PIN(WORD axis,WORD* ltc_logic, WORD* ltc_mode);
  function  d5480_get_config_LTC_PIN(axis:Word;ltc_logic:PWord;ltc_mode:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_latch_mode(WORD cardno, WORD* all_enable);
//FENG//  function  d5480_get_config_latch_mode(cardno:Word;all_enable:PWord):Cardinal;stdcall;external leisaiDLL;

//专用信号设置函数
//DMC5480_API DWORD __stdcall d5480_config_SD_PIN(WORD axis,WORD enable, WORD sd_logic,WORD sd_mode);
  function  d5480_config_SD_PIN(axis:Word;enable:Word;sd_logic:Word;sd_mode:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_config_INP_PIN(WORD axis,WORD enable,WORD inp_logic);
  function  d5480_config_INP_PIN(axis:Word;enable:Word;inp_logic:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_config_ERC_PIN(WORD axis,WORD enable,WORD erc_logic,
//				WORD erc_width,WORD erc_off_time);
  function  d5480_config_ERC_PIN(axis:Word;enable:Word;erc_logic:Word;erc_width:Word;erc_off_time:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD __stdcall d5480_config_EMG_PIN(WORD cardno, WORD option, WORD emg_logic);
  function  d5480_config_EMG_PIN(cardno:Word;option:Word;emg_logic:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_EMG_PIN(WORD cardno, WORD* enbale, WORD* emg_logic);
  function  d5480_get_config_EMG_PIN(cardno:Word;enbale:PWord;emg_logic:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_config_ALM_PIN(WORD axis, WORD enable, WORD alm_logic,WORD alm_action);
  function  d5480_config_ALM_PIN(axis:Word;enable:Word;alm_logic:Word;alm_action:Word):Cardinal;stdcall;external leisaiDLL;

//new
//DMC5480_API DWORD __stdcall d5480_config_EL_PIN(WORD axis, WORD el_logic, WORD el_mode);
  function  d5480_config_EL_PIN(axis:Word;el_logic:Word;el_mode:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_config_HOME_PIN_logic(WORD axis,WORD org_logic,WORD filter);
  function  d5480_config_HOME_PIN_logic(axis:Word;org_logic:Word;filter:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_write_SEVON_PIN(WORD axis, WORD on_off);
  function  d5480_write_SEVON_PIN(axis:Word;on_off:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API int __stdcall d5480_read_SEVON_PIN(WORD axis);
  function  d5480_read_SEVON_PIN(axis:Word):Integer;stdcall;external leisaiDLL;

//DMC5480_API DWORD __stdcall d5480_write_ERC_PIN(WORD axis, WORD sel);
  function  d5480_write_ERC_PIN(axis:Word;sel:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API int __stdcall d5480_read_RDY_PIN(WORD axis);
  function  d5480_read_RDY_PIN(axis:Word):Integer;stdcall;external leisaiDLL;

//DMC5480_API DWORD __stdcall d5480_set_backlash(WORD axis, long backlash);
  function  d5480_set_backlash(axis:Word;backlash:Integer):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_backlash(WORD axis, long* backlash);
  function  d5480_get_backlash(axis:Word;backlash:PInteger):Cardinal;stdcall;external leisaiDLL;

//通用输入/输出控制函数
//DMC5480_API int __stdcall d5480_read_inbit(WORD cardno, WORD bitno);
  function  d5480_read_inbit(cardno:Word;bitno:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_write_outbit(WORD cardno, WORD bitno,WORD on_off);
  function  d5480_write_outbit(cardno:Word;bitno:Word;on_off:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API int __stdcall  d5480_read_outbit(WORD cardno, WORD bitno) ;
  function  d5480_read_outbit(cardno:Word;bitno:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API long __stdcall d5480_read_inport(WORD cardno);
  function  d5480_read_inport(cardno:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API long __stdcall d5480_read_outport(WORD cardno) ;
  function  d5480_read_outport(cardno:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_write_outport(WORD cardno, DWORD port_value);
  function  d5480_write_outport(cardno:Word;port_value:Cardinal):Cardinal;stdcall;external leisaiDLL;

//制动函数
//DMC5480_API DWORD __stdcall d5480_decel_stop(WORD axis,double dec);
  function  d5480_decel_stop(axis:Word;dec:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_imd_stop(WORD axis);
  function  d5480_imd_stop(axis:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_emg_stop(void) ;
  function  d5480_emg_stop():Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_simultaneous_stop(WORD axis) ;
  function  d5480_simultaneous_stop(axis:Word):Cardinal;stdcall;external leisaiDLL;

//位置设置和读取函数
//DMC5480_API long __stdcall d5480_get_position(WORD axis);
  function  d5480_get_position(axis:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_set_position(WORD axis,long current_position);
  function  d5480_set_position(axis:Word;current_position:Integer):Cardinal;stdcall;external leisaiDLL;

//状态检测函数
//DMC5480_API int __stdcall  d5480_check_done(WORD axis) ;
  function  d5480_check_done(axis:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_axis_io_status(WORD axis);
  function  d5480_axis_io_status(axis:Word):Cardinal;stdcall;external leisaiDLL;

//速度设置
//DMC5480_API double __stdcall d5480_read_current_speed(WORD axis);
  function  d5480_read_current_speed(axis:Word):Double;stdcall;external leisaiDLL;
//DMC5480_API double __stdcall d5480_read_vector_speed(WORD card);
  function  d5480_read_vector_speed(card:Word):Double;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_change_speed(WORD axis,double Curr_Vel);
  function  d5480_change_speed(axis:Word;Curr_Vel:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_set_vector_profile(WORD cardno,double s_para, double Max_Vel, double acc,double dec );
  function  d5480_set_vector_profile(cardno:Word;s_para:Double;Max_Vel:Double;acc:Double;dec:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_vector_profile(WORD cardno,double* s_para, double* Max_Vel, double* acc,double* dec );
  function  d5480_get_vector_profile(cardno:Word;s_para:PDouble;Max_Vel:PDouble;acc:PDouble;dec:PDouble):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_set_profile(WORD axis,double option,double Max_Vel,double acc,double dec);
  function  d5480_set_profile(axis:Word;option:Double;Max_Vel:Double;acc:Double;dec:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_set_s_profile(WORD axis,double s_para);
  function  d5480_set_s_profile(axis:Word;s_para:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_profile(WORD axis,double* option,double* Max_Vel,double* acc,double* dec);
  function  d5480_get_profile(axis:Word;option:PDouble;Max_Vel:PDouble;acc:PDouble;dec:PDouble):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_s_profile(WORD axis,double* s_para);
  function  d5480_get_s_profile(axis:Word;s_para:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_reset_target_position(WORD axis,long dist);
  function  d5480_reset_target_position(axis:Word;dist:Integer):Cardinal;stdcall;external leisaiDLL;

//单轴定长运动
//DMC5480_API DWORD __stdcall d5480_pmove(WORD axis,long Dist,WORD posi_mode);
  function  d5480_pmove(axis:Word;Dist:Integer;posi_mode:Word):Cardinal;stdcall;external leisaiDLL;
//单轴连续运动
//DMC5480_API DWORD __stdcall d5480_vmove(WORD axis,WORD dir, double vel);
  function  d5480_vmove(axis:Word;dir:Word;vel:Double):Cardinal;stdcall;external leisaiDLL;

  //线性插补
//DMC5480_API DWORD __stdcall d5480_line2(WORD axis1,long Dist1,WORD axis2,long Dist2,WORD posi_mode);
  function  d5480_line2(axis1:Word;Dist1:Integer;axis2:Word;Dist2:Integer;posi_mode:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_line3(WORD *axis,long Dist1,long Dist2,long Dist3,WORD posi_mode);
  function  d5480_line3(axis:PWord;Dist1:Integer;Dist2:Integer;Dist3:Integer;posi_mode:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_line4(WORD cardno,long Dist1,long Dist2,long Dist3,long Dist4,WORD posi_mode);
  function  d5480_line4(cardno:Word;Dist1:Integer;Dist2:Integer;Dist3:Integer;Dist4:Integer;posi_mode:Word):Cardinal;stdcall;external leisaiDLL;

//手轮运动
//DMC5480_API DWORD __stdcall d5480_set_handwheel_inmode(WORD axis,WORD inmode, double multi);
  function  d5480_set_handwheel_inmode(axis:Word;inmode:Word;multi:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_handwheel_move(WORD axis);
  function  d5480_handwheel_move(axis:Word):Cardinal;stdcall;external leisaiDLL;

//找原点
//DMC5480_API DWORD __stdcall d5480_config_home_mode(WORD axis,WORD home_dir, double vel, WORD mode, WORD EZ_count);
  function  d5480_config_home_mode(axis:Word;home_dir:Word;vel:Double;mode:Word;EZ_count:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_home_move(WORD axis);
  function  d5480_home_move(axis:Word):Cardinal;stdcall;external leisaiDLL;

//圆弧插补
//DMC5480_API DWORD __stdcall d5480_arc_move(WORD *axis,long *target_pos,long *cen_pos, WORD arc_dir);
  function  d5480_arc_move(axis:PWord;target_pos:PInteger;cen_pos:PInteger;arc_dir:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_rel_arc_move(WORD *axis,long *rel_pos,long *rel_cen, WORD arc_dir);
  function  d5480_rel_arc_move(axis:Pword;rel_pos:PInteger;rel_cen:PInteger;arc_dir:Word):Cardinal;stdcall;external leisaiDLL;
//  function  d5480_rel_arc_move(axis:array of Word;rel_pos:array of Integer;rel_cen:array of Integer;arc_dir:Word):Cardinal;stdcall;external leisaiDLL;

  //设置和读取位置比较信号
//DMC5480_API DWORD __stdcall d5480_compare_config(WORD card, WORD enable, WORD axis,  WORD cmp_source);
  function  d5480_compare_config(card:Word;enable:Word;axis:Word;cmp_source:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_compare_get_config(WORD card, WORD* enable, WORD* axis,  WORD* cmp_source);
  function  d5480_compare_get_config(card:Word;enable:PWord;axis:PWord;cmp_source:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_compare_clear_points(WORD card);
  function  d5480_compare_clear_points(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_compare_add_point(WORD card, long pos, WORD dir,  WORD action, long actpara);
  function  d5480_compare_add_point(card:Word;pos:Integer;dir:Word;action:Word;actpara:Integer):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API long __stdcall d5480_compare_get_current_point(WORD card);
  function  d5480_compare_get_current_point(card:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API long __stdcall d5480_compare_get_points_runned(WORD card);
  function  d5480_compare_get_points_runned(card:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API long __stdcall d5480_compare_get_points_remained(WORD card);
  function  d5480_compare_get_points_remained(card:Word):Integer;stdcall;external leisaiDLL;

//---------------------   编码器计数功能  ----------------------//
//DMC5480_API long __stdcall d5480_get_encoder(WORD axis);
  function  d5480_get_encoder(axis:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_set_encoder(WORD axis,long encoder_value);
  function  d5480_set_encoder(axis:Word;encoder_value:Integer):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_config_EZ_PIN(WORD axis,WORD ez_logic, WORD ez_mode);
  function  d5480_config_EZ_PIN(axis:Word;ez_logic:Word;ez_mode:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_EZ_PIN(WORD axis,WORD* ez_logic, WORD* ez_mode);
  function  d5480_get_config_EZ_PIN(axis:Word;ez_logic:PWord;ez_mode:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_config_LTC_PIN(WORD axis,WORD ltc_logic, WORD ltc_mode);
  function  d5480_config_LTC_PIN(axis:Word;ltc_logic:Word;ltc_mode:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_config_latch_mode(WORD cardno, WORD all_enable);
  function  d5480_config_latch_mode(cardno:Word;all_enable:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API long __stdcall d5480_get_latch_value(WORD axis);
  function  d5480_get_latch_value(axis:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API long __stdcall d5480_get_latch_flag(WORD cardno);
  function  d5480_get_latch_flag(cardno:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_reset_latch_flag(WORD cardno);
  function  d5480_reset_latch_flag(cardno:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API long __stdcall d5480_get_counter_flag(WORD cardno);
  function  d5480_get_counter_flag(cardno:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_reset_counter_flag(WORD cardno);
  function  d5480_reset_counter_flag(cardno:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD __stdcall d5480_reset_clear_flag(WORD cardno);
  function  d5480_reset_clear_flag(cardno:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD __stdcall d5480_triger_chunnel(WORD cardno, WORD num);
  function  d5480_triger_chunnel(cardno:Word;num:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_set_speaker_logic(WORD cardno, WORD logic);
  function  d5480_set_speaker_logic(cardno:Word;logic:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD __stdcall d5480_get_speaker_logic(WORD cardno, WORD* logic);
  function  d5480_get_speaker_logic(cardno:Word;logic:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_latch_mode(WORD cardno, WORD* all_enable);
  function  d5480_get_config_latch_mode(cardno:Word;all_enable:PWord):Cardinal;stdcall;external leisaiDLL;

//软件限位功能
//DMC5480_API DWORD __stdcall d5480_config_softlimit(WORD axis,WORD ON_OFF, WORD source_sel,WORD SL_action, long N_limit,long P_limit);
  function  d5480_config_softlimit(axis:Word;ON_OFF:Word;source_sel:Word;SL_action:Word;N_limit:Integer;P_limit:Integer):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_config_softlimit(WORD axis,WORD* ON_OFF, WORD* source_sel,WORD* SL_action,long* N_limit,long* P_limit);
  function  d5480_get_config_softlimit(axis:Word;ON_OFF:PWord;source_sel:PWord;SL_action:PWord;N_limit:PInteger;P_limit:PInteger):Cardinal;stdcall;external leisaiDLL;

//连续插补函数
//DMC5480_API DWORD  __stdcall d5480_conti_lines(WORD axisNum, WORD *piaxisList,
//    long *pPosList, WORD posi_mode);
  function  d5480_conti_lines(axisNum:Word;piaxisList:PWord;pPosList:PInteger;posi_mode:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD  __stdcall d5480_conti_arc(WORD *axis, long *rel_pos, long *rel_cen, WORD arc_dir,  WORD posi_mode);
  function  d5480_conti_arc(axis:PWord;rel_pos:PInteger;rel_cen:PInteger;arc_dir:Word;posi_mode:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD  __stdcall d5480_conti_restrain_speed(WORD card, double v);
  function  d5480_conti_restrain_speed(card:Word;v:Double):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API  DWORD  __stdcall d5480_conti_change_speed_ratio(WORD card, double percent);
  function  d5480_conti_change_speed_ratio(card:Word;percent:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API  double    __stdcall d5480_conti_get_current_speed_ratio(WORD card);
  function  d5480_conti_get_current_speed_ratio(card:Word):Double;stdcall;external leisaiDLL;

//DMC5480_API  DWORD  __stdcall d5480_conti_set_mode(WORD card, WORD conti_mode, double conti_vl, double conti_para, double filter);
  function  d5480_conti_set_mode(card:Word;conti_mode:Word;conti_vl:Double;conti_para:Double;filter:Double):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API  DWORD  __stdcall d5480_conti_get_mode(WORD card, WORD* conti_mode, double* conti_vl, double* conti_para, double* filter);
  function  d5480_conti_get_mode(card:Word;conti_mode:PWord;conti_vl:PDouble;conti_para:PDouble;filter:PDouble):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD  __stdcall d5480_conti_open_list(WORD axisNum, WORD *piaxisList);
  function  d5480_conti_open_list(axisNum:Word;piaxisList:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD  __stdcall d5480_conti_close_list(WORD card);
  function  d5480_conti_close_list(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD  __stdcall d5480_conti_check_remain_space(WORD card);
  function  d5480_conti_check_remain_space(card:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API DWORD  __stdcall d5480_conti_decel_stop_list(WORD card);
  function  d5480_conti_decel_stop_list(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD  __stdcall d5480_conti_sudden_stop_list(WORD card);
  function  d5480_conti_sudden_stop_list(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD  __stdcall d5480_conti_pause_list(WORD card);
  function  d5480_conti_pause_list(card:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD  __stdcall d5480_conti_start_list(WORD card);
  function  d5480_conti_start_list(card:Word):Cardinal;stdcall;external leisaiDLL;

//DMC5480_API long __stdcall d5480_conti_read_current_mark(WORD card);
  function  d5480_conti_read_current_mark(card:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API DWORD  __stdcall d5480_conti_extern_lines(WORD axisNum, WORD *piaxisListw,
//                                              long *pPosList, WORD posi_mode, long imark);
  function  d5480_conti_extern_lines(axisNum:Word;piaxisListw:PWord;pPosList:PInteger;posi_mode:Word;imark:Integer):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD  __stdcall d5480_conti_extern_arc(WORD *axis, long *rel_pos, long *rel_cen, WORD arc_dir,WORD posi_mode, long imark);
  function  d5480_conti_extern_arc(axis:PWord;rel_pos:PInteger;rel_cen:PInteger;arc_dir:Word;posi_mode:Word;imark:Integer):Cardinal;stdcall;external leisaiDLL;



//  function  ():Cardinal;stdcall;external leisaiDLL;
//:Word;    :PWord;  :Double; :PInteger; :Integer;  :PDouble;


//相对螺旋插补运动函数
//DMC5480_API  DWORD  __stdcall d5480_rel_helix_move(WORD card, WORD* axisList, long *rel_pos,long *rel_cen, long height, WORD arc_dir);
  function  d5480_rel_helix_move(card:Word;axisList:PWord;rel_pos:PInteger;rel_cen:PInteger;height:Integer;arc_dir:Word):Cardinal;stdcall;external leisaiDLL;

//绝对螺旋插补运动函数
//DMC5480_API  DWORD  __stdcall d5480_helix_move(WORD card, WORD* axisList, long *target_pos,long *cen_pos,long height, WORD arc_dir);
  function  d5480_helix_move(card:Word;axisList:PWord;target_pos:PInteger;cen_pos:PInteger;height:Integer;arc_dir:Word):Cardinal;stdcall;external leisaiDLL;

//相对螺旋插补运动函数, 只在连续插补中调用
//DMC5480_API  DWORD  __stdcall d5480_conti_rel_helix_move_extern(WORD card, WORD* axisList,long *rel_pos,long *rel_cen, long height,WORD arc_dir, long imark);
  function  d5480_conti_rel_helix_move_extern(card:Word;axisList:PWord;rel_pos:PInteger;rel_cen:PInteger;height:Integer;arc_dir:Word;imark:Integer):Cardinal;stdcall;external leisaiDLL;

//绝对螺旋插补运动函数, 只在连续插补中调用
//DMC5480_API  DWORD  __stdcall d5480_conti_helix_move_extern(WORD card,WORD* axisList,long *target_pos,long *cen_pos,long height,WORD arc_dir, long imark);
  function  d5480_conti_helix_move_extern(card:Word;axisList:PWord;target_pos:PInteger;cen_pos:PInteger;height:Integer;arc_dir:Word;imark:Integer):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_set_gear_mode(WORD axis,WORD masterAxis, double ratio, WORD source);
  function  d5480_set_gear_mode(axis:Word;masterAxis:Word;ratio:Double;source:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_get_gear_mode(WORD axis,WORD* masterAxis, double* ratio, WORD* source);
  function  d5480_get_gear_mode(axis:Word;masterAxis:PWord;ratio:PDouble;source:PWord):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API DWORD __stdcall d5480_gear_move(WORD axis );
  function  d5480_gear_move(axis:Word):Cardinal;stdcall;external leisaiDLL;
//DMC5480_API int32 __stdcall  d5480_conti_clear_all_outbit(WORD card);
  function  d5480_conti_clear_all_outbit(card:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API int32 __stdcall  d5480_conti_add_outbit(WORD card, WORD ioNum, WORD IoState);
  function  d5480_conti_add_outbit(card:Word;ioNum:Word;IoState:Word):Integer;stdcall;external leisaiDLL;
//DMC5480_API int32 __stdcall  d5480_conti_get_outbit_space(WORD card);
  function  d5480_conti_get_outbit_space(card:Word):Integer;stdcall;external leisaiDLL;

//DMC5480_API double __stdcall d5480_conti_get_total_length(WORD card);
  function  d5480_conti_get_total_length(card:Word):Double;stdcall;external leisaiDLL;
//读取剩余总OUT数
//DMC5480_API double __stdcall  d5480_conti_get_remain_length(WORD card);
  function  d5480_conti_get_remain_length(card:Word):Double;stdcall;external leisaiDLL;




implementation

end.
