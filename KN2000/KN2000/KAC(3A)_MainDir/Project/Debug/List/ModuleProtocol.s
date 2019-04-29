///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:13
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\ModuleProtocol.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\ModuleProtocol.c" -e
//        --char_is_signed -On --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_cross_call --debug --code_model
//        medium --data_model medium -o
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\Obj\"
//        --dlib_config "C:\Program Files\IAR Systems\Embedded Workbench
//        7.0\stm8\LIB\dlstm8mmf.h" -lcN
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\" -lb
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\" -I
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\" -I
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_libSystem\Libraries\STM8L15x_StdPeriph_Driver\inc\"
//        --vregs 16
//    List file    =  
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\ModuleProtocol.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?add32_l0_l0_l1
        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b14
        EXTERN ?b15
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_w4
        EXTERN ?load32_xsp_l0
        EXTERN ?mov_l0_l3
        EXTERN ?mov_l1_l3
        EXTERN ?mov_l3_l0
        EXTERN ?mov_w1_w5
        EXTERN ?mov_w4_w5
        EXTERN ?move1616_v_x_y_a
        EXTERN ?mul16_x_x_w0
        EXTERN ?pop_w7
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?push_w7
        EXTERN ?sext16_x_a
        EXTERN ?sll32_l0_l0_a
        EXTERN ?sra16_x_x_8
        EXTERN ?ucmp32_c_l0_l1
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7
        EXTERN AtDelayTime
        EXTERN BcdHexToString
        EXTERN BcdToBin
        EXTERN CLK_GetFlagStatus
        EXTERN CLK_LSEConfig
        EXTERN CLK_PeripheralClockConfig
        EXTERN DecOverTime
        EXTERN EventQueueLock
        EXTERN FLASH_EraseBlock
        EXTERN FLASH_ProgramBlock
        EXTERN FLASH_ReadByte
        EXTERN FLASH_SetProgrammingTime
        EXTERN FLASH_Unlock
        EXTERN FLASH_WaitForLastOperation
        EXTERN GetNBplantformIPandPORT
        EXTERN Get_ADC_Value
        EXTERN HW_ModuleReset
        EXTERN ITC_SetSoftwarePriority
        EXTERN Moudleinfo
        EXTERN RTC_DateStr
        EXTERN RTC_GetDate
        EXTERN RTC_GetTime
        EXTERN RTC_TimeStr
        EXTERN ReSndCount
        EXTERN SYSCFG_REMAPPinConfig
        EXTERN SendProToNBmodule
        EXTERN SetNoDataTimeCount
        EXTERN StrToBcd
        EXTERN TIM3_ClearFlag
        EXTERN TIM3_Cmd
        EXTERN TIM3_ETRClockMode2Config
        EXTERN TIM3_ITConfig
        EXTERN TIM3_TimeBaseInit
        EXTERN TIM3_UpdateRequestConfig
        EXTERN Uart1RevHandle
        EXTERN delay_ms
        EXTERN g_system_reset_time
        EXTERN get_rtc_time
        EXTERN hw_eeprom_read_bytes
        EXTERN hw_eeprom_write_bytes
        EXTERN load_continuous_flag
        EXTERN low_power_report_flag
        EXTERN memcmp
        EXTERN memcpy
        EXTERN memset
        EXTERN net_link_cclk_flag
        EXTERN power_level_state
        EXTERN set_date
        EXTERN set_sleep_counter_max
        EXTERN set_time
        EXTERN sprintf
        EXTERN strlen
        EXTERN wake_up_from_sleep

        PUBLIC GetNetNeedLinkState
        PUBLIC LinkSeverOverTime
        PUBLIC ModuleResetHandle
        PUBLIC ModuleResetTime
        PUBLIC NetActiveHandle
        PUBLIC NoLinkSeverCount
        PUBLIC NoNetDataTime
        PUBLIC Pedostepcnt
        PUBLIC ProtoDataAnalyze
        PUBLIC ProtoDataOrganized
        PUBLIC Protocol_Init
        PUBLIC ReBackNetBag
        PUBLIC RemoteSetPlantform
        PUBLIC Timer3ProgramHandle
        PUBLIC Timer3_Init
        PUBLIC allpag
        PUBLIC bat_percentage_range
        PUBLIC check_device_time
        PUBLIC cur_cmd
        PUBLIC g_had_link_manager
        PUBLIC g_update_present_packnum
        PUBLIC g_update_total_packnum
        PUBLIC get_version
        PUBLIC macaddresarray
        PUBLIC pagid
        PUBLIC sendstsflag
        PUBLIC version


        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
version:
        DC8 "KN2000V1.00"
        DC8 0, 0, 0, 0

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
sendstsflag:
        DC8 1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
LinkSeverOverTime:
        DC16 1440

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
g_update_total_packnum:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
g_update_present_packnum:
        DS8 2

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
ModuleResetTime:
        DC16 200

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
NoNetDataTime:
        DC16 2880

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
cur_cmd:
        DC8 255

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ReBackNetBag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
g_had_link_manager:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
pagid:
        DS8 2

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
allpag:
        DC16 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
NoLinkSeverCount:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
macaddresarray:
        DS8 255

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
Pedostepcnt:
        DS8 31

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
bat_percentage_range:
        DC16 1035, 1100, 1159, 1200, 1240, 1276, 1306, 1331, 1361, 1408

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Timer3_Init:
        MOV       S:?b0, #0x1
        LD        A, #0x1
        CALLF     CLK_PeripheralClockConfig
        LD        A, #0x1
        LDW       X, #0x210
        CALLF     SYSCFG_REMAPPinConfig
        LD        A, #0x4
        CALLF     CLK_LSEConfig
??Timer3_Init_0:
        LD        A, #0x33
        CALLF     CLK_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??Timer3_Init_0
        LDW       X, #0xa3
        CLR       S:?b0
        CLR       A
        CALLF     TIM3_TimeBaseInit
        CLR       S:?b1
        CLR       S:?b0
        LD        A, #0x20
        CALLF     TIM3_ETRClockMode2Config
        CLR       A
        CALLF     TIM3_UpdateRequestConfig
        CLRW      X
        INCW      X
        CALLF     TIM3_ClearFlag
        MOV       S:?b0, #0x1
        LD        A, #0x1
        CALLF     TIM3_ITConfig
        MOV       S:?b0, #0x1
        LD        A, #0x15
        CALLF     ITC_SetSoftwarePriority
        LD        A, #0x1
        CALLF     TIM3_Cmd
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
get_version:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, #0x10
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, S:?w4
        CALLF     memset
        LDW       X, #version
        CALLF     strlen
        LDW       S:?w0, X
        LDW       Y, #version
        LDW       X, S:?w4
        CALLF     memcpy
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Protocol_Init:
        MOV       L:g_had_link_manager, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Timer3ProgramHandle:
        CALLF     Uart1RevHandle
        LD        A, L:AtDelayTime
        CP        A, #0x0
        JREQ      L:??Timer3ProgramHandle_0
        LD        A, L:AtDelayTime
        ADD       A, #0xff
        LD        L:AtDelayTime, A
??Timer3ProgramHandle_0:
        LDW       X, L:Moudleinfo + 94
        TNZW      X
        JREQ      L:??Timer3ProgramHandle_1
        LDW       X, L:Moudleinfo + 94
        DECW      X
        LDW       L:Moudleinfo + 94, X
??Timer3ProgramHandle_1:
        LD        A, L:EventQueueLock
        CP        A, #0x0
        JRNE      L:??Timer3ProgramHandle_2
        CALLF     DecOverTime
??Timer3ProgramHandle_2:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
RemoteSetPlantform:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x16
        LDW       S:?w4, X
        LDW       Y, #?_0
        LDW       X, SP
        ADDW      X, #0x7
        PUSHW     X
        LD        A, #0x10
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       Y, #?_1
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x6
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        CLR       S:?b10
        LDW       X, #0x10
        LDW       S:?w0, X
        LDW       Y, S:?w4
        LDW       X, SP
        ADDW      X, #0x7
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0x10
        LDW       S:?w4, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, S:?w4
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0x6
        LDW       S:?w4, X
        MOV       S:?b0, #0xf
        LDW       X, SP
        ADDW      X, #0x7
        LD        A, #0x13
        CALLF     hw_eeprom_write_bytes
        MOV       S:?b0, #0x5
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x22
        CALLF     hw_eeprom_write_bytes
        LDW       X, SP
        ADDW      X, #0x7
        CALLF     strlen
        LDW       S:?w0, X
        LDW       Y, SP
        ADDW      Y, #0x7
        LDW       X, #Moudleinfo + 102
        CALLF     memcmp
        TNZW      X
        JREQ      L:??RemoteSetPlantform_0
        LD        A, #0x1
        LD        S:?b10, A
??RemoteSetPlantform_0:
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        LDW       S:?w0, X
        LDW       Y, SP
        ADDW      Y, #0x1
        LDW       X, #Moudleinfo + 118
        CALLF     memcmp
        TNZW      X
        JREQ      L:??RemoteSetPlantform_1
        LD        A, #0x1
        LD        S:?b10, A
??RemoteSetPlantform_1:
        TNZ       S:?b10
        JREQ      L:??RemoteSetPlantform_2
        CALLF     GetNBplantformIPandPORT
??RemoteSetPlantform_2:
        ADD       SP, #0x16
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
check_device_time:
        CALLF     L:?push_l2
        CALLF     L:?push_w7
        PUSH      S:?b12
        SUB       SP, #0xc
        LDW       S:?w5, X
        CALLF     L:?mov_w4_w5
        CLR       A
        LD        S:?b12, A
??check_device_time_0:
        LD        A, S:?b12
        CP        A, #0x6
        JRNC      L:??check_device_time_1
        LD        A, [S:?w4.w]
        CALLF     BcdToBin
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b12
        EXG       A, XL
        LDW       S:?w0, X
        LDW       X, SP
        ADDW      X, #0x5
        ADDW      X, S:?w0
        LD        (X), A
        LD        A, S:?b12
        ADD       A, #0x1
        LD        S:?b12, A
        JRA       L:??check_device_time_0
??check_device_time_1:
        LDW       X, #RTC_TimeStr
        CLR       A
        CALLF     RTC_GetTime
        LDW       X, #RTC_DateStr
        CLR       A
        CALLF     RTC_GetDate
        LD        A, (0x9,SP)
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x3c
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        LDW       Y, X
        LD        A, (0xa,SP)
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, Y
        ADDW      X, S:?w0
        LDW       (0x3,SP), X
        LD        A, L:RTC_TimeStr + 1
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x3c
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        LDW       Y, X
        LD        A, L:RTC_TimeStr + 2
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, Y
        ADDW      X, S:?w0
        LDW       (0x1,SP), X
        LDW       X, (0x3,SP)
        CPW       X, (0x1,SP)
        JRNC      L:??check_device_time_2
        LDW       X, (0x1,SP)
        SUBW      X, (0x3,SP)
        LDW       S:?w7, X
        JRA       L:??check_device_time_3
??check_device_time_2:
        LDW       X, (0x3,SP)
        SUBW      X, (0x1,SP)
        LDW       S:?w7, X
??check_device_time_3:
        LDW       X, S:?w7
        CPW       X, #0x6
        JRNC      L:??check_device_time_4
        LD        A, (0x5,SP)
        CP        A, L:RTC_DateStr + 3
        JRNE      L:??check_device_time_4
        LD        A, (0x6,SP)
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LD        A, L:RTC_DateStr + 1
        CALLF     L:?sext16_x_a
        LDW       S:?w0, X
        LDW       X, Y
        CPW       X, S:?w0
        JRNE      L:??check_device_time_4
        LD        A, (0x7,SP)
        CP        A, L:RTC_DateStr + 2
        JRNE      L:??check_device_time_4
        LD        A, (0x8,SP)
        CP        A, L:RTC_TimeStr
        JREQ      L:??check_device_time_5
??check_device_time_4:
        LDW       X, SP
        ADDW      X, #0x5
        CALLF     set_date
        LDW       X, SP
        ADDW      X, #0x8
        CALLF     set_time
        CALLF     get_rtc_time
        MOV       L:net_link_cclk_flag, #0x1
??check_device_time_5:
        ADD       SP, #0xc
        POP       S:?b12
        CALLF     L:?pop_w7
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ProtoDataAnalyze:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        PUSHW     Y
        SUB       SP, #0x32
        CLR       A
        LD        (0x3,SP), A
        LDW       X, (0x35,SP)
        LDW       S:?w4, X
        LD        A, #0x1
        LD        (0x6,SP), A
        LD        A, [S:?w4.w]
        CP        A, #0xaa
        JREQ      L:??ProtoDataAnalyze_0
        CLRW      X
        JP        L:??ProtoDataAnalyze_1
??ProtoDataAnalyze_0:
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        LD        (0x2,SP), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       (0x4,SP), X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        ADDW      X, (0x4,SP)
        LDW       (0x4,SP), X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, (0x4,SP)
        ADDW      X, #0x4
        LDW       S:?w0, X
        LDW       X, (0x33,SP)
        CPW       X, S:?w0
        JRNC      L:??ProtoDataAnalyze_2
        CLRW      X
        JP        L:??ProtoDataAnalyze_1
??ProtoDataAnalyze_2:
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       L:pagid, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        ADDW      X, L:pagid
        LDW       L:pagid, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       L:allpag, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        ADDW      X, L:allpag
        LDW       L:allpag, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, (0x35,SP)
        INCW      X
        LD        A, (X)
        CP        A, #0xff
        JREQ      L:??ProtoDataAnalyze_3
        LDW       X, L:allpag
        DECW      X
        CPW       X, L:pagid
        JRNE      L:??ProtoDataAnalyze_4
        MOV       L:load_continuous_flag, #0x0
        LD        A, #0x6
        CALLF     SetNoDataTimeCount
        JRA       L:??ProtoDataAnalyze_3
??ProtoDataAnalyze_4:
        CLRW      X
        CALLF     set_sleep_counter_max
        LD        A, #0x5a
        CALLF     SetNoDataTimeCount
        LD        A, (0x2,SP)
        CP        A, #0x15
        JRNE      L:??ProtoDataAnalyze_3
        MOV       L:load_continuous_flag, #0x1
??ProtoDataAnalyze_3:
        CLRW      X
        LDW       S:?w5, X
??ProtoDataAnalyze_5:
        LDW       X, (0x4,SP)
        ADDW      X, #0x4
        LDW       S:?w0, X
        LDW       X, S:?w5
        CPW       X, S:?w0
        JRNC      L:??ProtoDataAnalyze_6
        LDW       X, S:?w5
        ADDW      X, (0x35,SP)
        LD        A, (X)
        ADD       A, (0x3,SP)
        LD        (0x3,SP), A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??ProtoDataAnalyze_5
??ProtoDataAnalyze_6:
        LDW       X, (0x4,SP)
        ADDW      X, (0x35,SP)
        ADDW      X, #0x4
        LD        A, (X)
        CP        A, (0x3,SP)
        JREQ      L:??ProtoDataAnalyze_7
        CLRW      X
        JP        L:??ProtoDataAnalyze_1
??ProtoDataAnalyze_7:
        LDW       Y, SP
        ADDW      Y, #0x21
        LD        A, #0x8
        LDW       X, (0x35,SP)
        ADDW      X, #0x8
        CALLF     BcdHexToString
        CLR       A
        LD        (0x30,SP), A
        LDW       X, #0xf
        LDW       S:?w0, X
        LDW       Y, #Moudleinfo + 3
        LDW       X, SP
        ADDW      X, #0x21
        CALLF     memcmp
        TNZW      X
        JREQ      L:??ProtoDataAnalyze_8
        CLRW      X
        JP        L:??ProtoDataAnalyze_1
??ProtoDataAnalyze_8:
        LDW       X, S:?w4
        ADDW      X, #0x8
        LDW       S:?w4, X
        LD        A, L:cur_cmd
        CP        A, (0x2,SP)
        JREQ      L:??ProtoDataAnalyze_9
        LD        A, (0x2,SP)
        CP        A, #0xff
        JRNE      L:??ProtoDataAnalyze_10
??ProtoDataAnalyze_9:
        LD        A, L:load_continuous_flag
        CP        A, #0x0
        JRNE      L:??ProtoDataAnalyze_10
        MOV       L:ReSndCount, #0x0
??ProtoDataAnalyze_10:
        LDW       X, L:LinkSeverOverTime
        SLLW      X
        ADDW      X, #0x1e
        LDW       L:NoNetDataTime, X
        LDW       X, (0x35,SP)
        INCW      X
        LD        A, (X)
        CP        A, #0xff
        JRNE      L:??ProtoDataAnalyze_11
        LDW       X, (0x35,SP)
        ADDW      X, #0x10
        LD        A, (X)
        CP        A, #0x29
        JRNE      L:??ProtoDataAnalyze_12
        LDW       X, (0x35,SP)
        ADDW      X, #0x12
        CALLF     check_device_time
??ProtoDataAnalyze_12:
        LDW       X, (0x4,SP)
        ADDW      X, #0x5
        JP        L:??ProtoDataAnalyze_1
??ProtoDataAnalyze_11:
        LD        A, (0x2,SP)
        SUB       A, #0x15
        JREQ      L:??ProtoDataAnalyze_13
        SUB       A, #0x4
        JRNE      ??lb_3
        JP        L:??ProtoDataAnalyze_14
??lb_3:
        SUB       A, #0x10
        JREQ      L:??ProtoDataAnalyze_15
        DEC       A
        JRNE      ??lb_4
        JP        L:??ProtoDataAnalyze_16
??lb_4:
        JP        L:??ProtoDataAnalyze_17
??ProtoDataAnalyze_15:
        LDW       Y, S:?w4
        LDW       X, Y
        INCW      X
        LDW       S:?w4, X
        TNZ       (Y)
        JRNE      L:??ProtoDataAnalyze_18
        CLRW      X
        LDW       S:?w5, X
??ProtoDataAnalyze_19:
        LDW       X, S:?w5
        CPW       X, #0xf
        JRNC      L:??ProtoDataAnalyze_18
        LDW       X, #0x11
        LDW       S:?w0, X
        LDW       Y, S:?w4
        LDW       X, S:?w5
        ADDW      X, #macaddresarray
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0x11
        LDW       S:?w4, X
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??ProtoDataAnalyze_19
??ProtoDataAnalyze_18:
        JP        L:??ProtoDataAnalyze_20
??ProtoDataAnalyze_13:
        CLRW      X
        LDW       S:?w7, X
        LDW       S:?w6, X
        LD        A, L:g_system_reset_time
        CP        A, #0x0
        JREQ      ??lb_5
        JP        L:??ProtoDataAnalyze_21
??lb_5:
        CLR       A
        LD        (0x6,SP), A
        LDW       X, L:pagid
        TNZW      X
        JRNE      L:??ProtoDataAnalyze_22
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x12
        CALLF     hw_eeprom_write_bytes
        SIM
        MOV       S:?b0, #0xe
        LDW       X, S:?w4
        LD        A, #0x4
        CALLF     hw_eeprom_write_bytes
        LD        A, #0xfd
        CALLF     FLASH_Unlock
        LD        A, #0x1
        CALLF     FLASH_SetProgrammingTime
        CLRW      X
        LDW       S:?w5, X
??ProtoDataAnalyze_23:
        LDW       X, S:?w5
        CPW       X, #0x78
        JRNC      L:??ProtoDataAnalyze_24
        LD        A, #0xfd
        CALLF     FLASH_WaitForLastOperation
        LD        A, #0xfd
        LDW       X, S:?w5
        ADDW      X, #0x88
        CALLF     FLASH_EraseBlock
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??ProtoDataAnalyze_23
??ProtoDataAnalyze_24:
        LDW       X, L:allpag
        LDW       L:g_update_total_packnum, X
        CLRW      X
        INCW      X
        LDW       L:g_update_present_packnum, X
        RIM
        JP        L:??ProtoDataAnalyze_21
??ProtoDataAnalyze_22:
        LDW       X, L:pagid
        CPW       X, L:g_update_present_packnum
        JREQ      ??lb_6
        JP        L:??ProtoDataAnalyze_21
??lb_6:
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JRNE      L:??ProtoDataAnalyze_25
        LDW       X, #0x1e0
        LDW       (0xb,SP), X
        JRA       L:??ProtoDataAnalyze_26
??ProtoDataAnalyze_25:
        LDW       X, #0x200
        LDW       (0xb,SP), X
??ProtoDataAnalyze_26:
        LDW       X, L:g_update_present_packnum
        DECW      X
        LDW       S:?w0, X
        LDW       X, (0xb,SP)
        LDW       Y, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #0x88
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0xd
        CALLF     L:?load32_xsp_l0
        LDW       X, L:g_update_present_packnum
        INCW      X
        LDW       L:g_update_present_packnum, X
        SIM
        LD        A, #0xfd
        CALLF     FLASH_WaitForLastOperation
        LDW       Y, S:?w4
        MOV       S:?b0, #0x10
        LD        A, #0xfd
        LDW       X, (0xf,SP)
        CALLF     FLASH_ProgramBlock
        RIM
        LDW       X, L:g_update_total_packnum
        DECW      X
        CPW       X, L:pagid
        JREQ      ??lb_7
        JP        L:??ProtoDataAnalyze_21
??lb_7:
        MOV       S:?b0, #0x4
        LDW       X, SP
        ADDW      X, #0x11
        LD        A, #0xc
        CALLF     hw_eeprom_read_bytes
        LD        A, (0x13,SP)
        CLRW      X
        LD        XL, A
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     L:?mov_l3_l0
        CALLF     L:?mov_l0_l3
        LD        A, #0x8
        CALLF     L:?sll32_l0_l0_a
        CALLF     L:?mov_l3_l0
        LD        A, (0x14,SP)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l3
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l3_l0
        MOV       S:?b0, #0x2
        LDW       X, SP
        ADDW      X, #0x11
        LD        A, #0x10
        CALLF     hw_eeprom_read_bytes
        LD        A, (0x11,SP)
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       (0x7,SP), X
        LD        A, (0x12,SP)
        CLRW      X
        LD        XL, A
        ADDW      X, (0x7,SP)
        LDW       (0x7,SP), X
        CLRW      X
        LDW       (0x9,SP), X
        CLRW      X
        LDW       S:?w5, X
??ProtoDataAnalyze_27:
        CALLF     L:?mov_w1_w5
        CLRW      X
        LDW       S:?w0, X
        CALLF     L:?mov_l1_l3
        CALLF     L:?ucmp32_c_l0_l1
        JRNC      L:??ProtoDataAnalyze_28
        LDW       X, S:?w5
        ADDW      X, #0x88
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     FLASH_ReadByte
        LD        (0x1,SP), A
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        ADDW      X, (0x9,SP)
        LDW       (0x9,SP), X
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??ProtoDataAnalyze_27
??ProtoDataAnalyze_28:
        LDW       X, (0x9,SP)
        CPW       X, (0x7,SP)
        JRNE      L:??ProtoDataAnalyze_21
        LD        A, #0xa
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x12
        CALLF     hw_eeprom_write_bytes
        MOV       L:g_system_reset_time, #0x14
??ProtoDataAnalyze_21:
        JRA       L:??ProtoDataAnalyze_20
??ProtoDataAnalyze_14:
        LDW       X, S:?w4
        CALLF     RemoteSetPlantform
        MOV       L:g_had_link_manager, #0x1
        JRA       L:??ProtoDataAnalyze_20
??ProtoDataAnalyze_16:
        MOV       S:?b0, #0xff
        CLR       S:?b3
        CLR       S:?b2
        CLR       S:?b5
        CLR       S:?b4
        LD        A, [S:?w4.w]
        LD        S:?b0, A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       S:?w1, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w1
        LDW       S:?w1, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       S:?w2, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w2
        LDW       S:?w2, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JRA       L:??ProtoDataAnalyze_20
??ProtoDataAnalyze_17:
??ProtoDataAnalyze_20:
        TNZ       (0x6,SP)
        JRNE      L:??ProtoDataAnalyze_29
        CLR       S:?b0
        CLRW      X
        LD        A, (0x2,SP)
        CALLF     ProtoDataOrganized
        JRA       L:??ProtoDataAnalyze_30
??ProtoDataAnalyze_29:
        CLRW      X
        LDW       L:Moudleinfo + 94, X
??ProtoDataAnalyze_30:
        LDW       X, #0xc8
        LDW       L:ModuleResetTime, X
        LDW       X, (0x4,SP)
        ADDW      X, #0x5
??ProtoDataAnalyze_1:
        ADD       SP, #0x36
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetNetNeedLinkState:
        LDW       X, L:NoLinkSeverCount
        TNZW      X
        JREQ      L:??GetNetNeedLinkState_0
        LD        A, L:sendstsflag
        CP        A, #0x1
        JRNE      L:??GetNetNeedLinkState_1
??GetNetNeedLinkState_0:
        LD        A, #0x1
        JRA       L:??GetNetNeedLinkState_2
??GetNetNeedLinkState_1:
        CLR       A
??GetNetNeedLinkState_2:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
NetActiveHandle:
        LD        A, L:load_continuous_flag
        CP        A, #0x0
        JREQ      L:??NetActiveHandle_0
        JRA       L:??NetActiveHandle_1
??NetActiveHandle_0:
        LD        A, L:sendstsflag
        CP        A, #0x0
        JREQ      L:??NetActiveHandle_2
        LD        A, L:power_level_state
        CP        A, #0x3
        JRNC      L:??NetActiveHandle_3
        LD        A, L:low_power_report_flag
        CP        A, #0x0
        JRNE      L:??NetActiveHandle_3
        MOV       S:?b0, #0x1
        CLRW      X
        LD        A, #0x29
        CALLF     ProtoDataOrganized
        MOV       L:low_power_report_flag, #0x1
        JRA       L:??NetActiveHandle_4
??NetActiveHandle_3:
        CLR       S:?b0
        CLRW      X
        LD        A, #0x29
        CALLF     ProtoDataOrganized
??NetActiveHandle_4:
        MOV       L:sendstsflag, #0x0
        LDW       X, L:LinkSeverOverTime
        LDW       L:NoLinkSeverCount, X
        JRA       L:??NetActiveHandle_5
??NetActiveHandle_2:
        LD        A, L:g_had_link_manager
        CP        A, #0x0
        JRNE      L:??NetActiveHandle_5
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JRNE      L:??NetActiveHandle_6
        MOV       L:g_had_link_manager, #0x1
        JRA       L:??NetActiveHandle_5
??NetActiveHandle_6:
        CLR       S:?b0
        CLRW      X
        LD        A, #0x19
        CALLF     ProtoDataOrganized
??NetActiveHandle_5:
??NetActiveHandle_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ProtoDataOrganized:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        SUB       SP, #0xc8
        LD        S:?b14, A
        MOV       S:?b15, S:?b0
        CLR       S:?b9
        CLR       S:?b8
        CLR       S:?b12
        MOV       L:ReBackNetBag, #0x0
        LD        A, S:?b14
        LD        L:cur_cmd, A
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, #0xaa
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, S:?b14
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       S:?w4, X
        LDW       X, L:pagid
        CLR       A
        RRWA      X, A
        LD        A, XL
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LDW       Y, X
        LDW       X, L:pagid
        LD        A, XL
        LD        (Y), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, L:allpag
        CLR       A
        RRWA      X, A
        LD        A, XL
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LDW       Y, X
        LDW       X, L:allpag
        LD        A, XL
        LD        (Y), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        CLRW      X
        LDW       S:?w5, X
??ProtoDataOrganized_0:
        LDW       X, S:?w5
        CPW       X, #0x8
        JRNC      L:??ProtoDataOrganized_1
        LDW       X, S:?w5
        SLLW      X
        ADDW      X, #Moudleinfo + 3
        CALLF     StrToBcd
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??ProtoDataOrganized_0
??ProtoDataOrganized_1:
        LD        A, S:?b14
        SUB       A, #0x15
        JRNE      ??lb_0
        JP        L:??ProtoDataOrganized_2
??lb_0:
        SUB       A, #0x4
        JRNE      ??lb_1
        JP        L:??ProtoDataOrganized_3
??lb_1:
        SUB       A, #0x10
        JREQ      L:??ProtoDataOrganized_4
        DEC       A
        JRNE      ??lb_2
        JP        L:??ProtoDataOrganized_5
??lb_2:
        JP        L:??ProtoDataOrganized_6
??ProtoDataOrganized_4:
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CALLF     get_version
        LDW       X, S:?w4
        ADDW      X, #0x20
        LDW       S:?w4, X
        LD        A, L:RTC_TimeStr + 2
        CLRW      X
        LD        XL, A
        PUSHW     X
        LD        A, L:RTC_TimeStr + 1
        CLRW      X
        LD        XL, A
        PUSHW     X
        LD        A, L:RTC_TimeStr
        CLRW      X
        LD        XL, A
        PUSHW     X
        LD        A, L:RTC_DateStr + 2
        CLRW      X
        LD        XL, A
        PUSHW     X
        LD        A, L:RTC_DateStr + 1
        CALLF     L:?sext16_x_a
        PUSHW     X
        LD        A, L:RTC_DateStr + 3
        CLRW      X
        LD        XL, A
        PUSHW     X
        LDW       Y, #?_2
        LDW       X, SP
        ADDW      X, #0xd
        ADDW      X, S:?w4
        CALLF     sprintf
        ADD       SP, #0xc
        LDW       X, S:?w4
        ADDW      X, #0xe
        LDW       S:?w4, X
        LD        A, L:power_level_state
        CP        A, #0x3
        JRNC      L:??ProtoDataOrganized_7
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, #0x1
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JRA       L:??ProtoDataOrganized_8
??ProtoDataOrganized_7:
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CLR       A
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
??ProtoDataOrganized_8:
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, L:Moudleinfo
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, L:Moudleinfo + 90
        CALLF     L:?sra16_x_x_8
        LD        A, XL
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, L:Moudleinfo + 90
        LD        A, XL
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, L:Moudleinfo + 88
        CALLF     L:?sra16_x_x_8
        LD        A, XL
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, L:Moudleinfo + 88
        LD        A, XL
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        CLR       A
        LD        S:?b13, A
        CLRW      X
        LDW       S:?w5, X
??ProtoDataOrganized_9:
        LDW       X, S:?w5
        CPW       X, #0xa
        JRNC      L:??ProtoDataOrganized_10
        LDW       X, S:?w5
        SLLW      X
        LDW       X, (L:bat_percentage_range,X)
        CPW       X, L:Moudleinfo + 1
        JRNC      L:??ProtoDataOrganized_11
        LD        A, S:?b13
        ADD       A, #0xa
        LD        S:?b13, A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??ProtoDataOrganized_9
??ProtoDataOrganized_11:
??ProtoDataOrganized_10:
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, S:?b13
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, #0xd
        LDW       S:?w0, X
        LDW       Y, #Pedostepcnt
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0xd
        LDW       S:?w4, X
        LDW       X, #0xd
        LDW       S:?w0, X
        LDW       Y, #Pedostepcnt + 13
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0xd
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CLR       A
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CLR       A
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, #0x4
        LDW       S:?w0, X
        LDW       Y, #Pedostepcnt + 26
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CLR       A
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, L:Moudleinfo + 92
        CLR       A
        RRWA      X, A
        LD        A, XL
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, L:Moudleinfo + 92
        LD        A, XL
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JP        L:??ProtoDataOrganized_12
??ProtoDataOrganized_2:
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CLR       A
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JP        L:??ProtoDataOrganized_12
??ProtoDataOrganized_3:
        LDW       X, #0x10
        LDW       S:?w0, X
        LDW       Y, #Moudleinfo + 102
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0x10
        LDW       S:?w4, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, #Moudleinfo + 118
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0x6
        LDW       S:?w4, X
        LDW       X, #0x10
        LDW       S:?w0, X
        LDW       Y, #Moudleinfo + 102
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0x10
        LDW       S:?w4, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, #Moudleinfo + 118
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CALLF     memcpy
        LDW       X, S:?w4
        ADDW      X, #0x6
        LDW       S:?w4, X
        JRA       L:??ProtoDataOrganized_12
??ProtoDataOrganized_5:
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        CLR       A
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JRA       L:??ProtoDataOrganized_12
??ProtoDataOrganized_6:
??ProtoDataOrganized_12:
        LDW       X, S:?w4
        ADDW      X, #0xfffc
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        (0x3,SP), A
        LD        A, S:?b9
        ADD       A, #0xfc
        LD        (0x4,SP), A
        CLRW      X
        LDW       S:?w5, X
??ProtoDataOrganized_13:
        LDW       X, S:?w5
        CPW       X, S:?w4
        JRNC      L:??ProtoDataOrganized_14
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w5
        LD        A, (X)
        ADD       A, S:?b12
        LD        S:?b12, A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??ProtoDataOrganized_13
??ProtoDataOrganized_14:
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, S:?b12
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        CLR       A
        LDW       Y, S:?w4
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     SendProToNBmodule
        LDW       X, S:?w4
        ADD       SP, #0xca
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ModuleResetHandle:
        LDW       X, L:NoLinkSeverCount
        TNZW      X
        JREQ      L:??ModuleResetHandle_0
        LDW       X, L:NoLinkSeverCount
        DECW      X
        LDW       L:NoLinkSeverCount, X
        LDW       X, L:NoLinkSeverCount
        TNZW      X
        JRNE      L:??ModuleResetHandle_0
        CALLF     wake_up_from_sleep
        MOV       L:sendstsflag, #0x1
        LDW       X, #0x1f4
        CALLF     delay_ms
        CLR       A
        CALLF     Get_ADC_Value
??ModuleResetHandle_0:
        LDW       X, L:NoNetDataTime
        TNZW      X
        JREQ      L:??ModuleResetHandle_1
        LDW       X, L:NoNetDataTime
        DECW      X
        LDW       L:NoNetDataTime, X
        LDW       X, L:NoNetDataTime
        TNZW      X
        JRNE      L:??ModuleResetHandle_1
        CALLF     wake_up_from_sleep
        CALLF     HW_ModuleReset
??ModuleResetHandle_1:
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_0:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_1:
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_2:
        DC8 "20%02d%02d%02d%02d%02d%02d"

        END
// 
// 2 697 bytes in section .far_func.text
//   296 bytes in section .near.bss
//    10 bytes in section .near.data
//    85 bytes in section .near.rodata
// 
// 2 697 bytes of CODE  memory
//    85 bytes of CONST memory
//   306 bytes of DATA  memory
//
//Errors: none
//Warnings: 3
