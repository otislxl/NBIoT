///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  16:17:41
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\main.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\main.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b12
        EXTERN ?b8
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?load32_l1_dbsp
        EXTERN ?load32_xsp_l0
        EXTERN ?mov_l0_l2
        EXTERN ?mov_l0_l3
        EXTERN ?mov_l2_l0
        EXTERN ?mov_l3_l0
        EXTERN ?mul32_l0_l0_l1
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?sext32_l0_x
        EXTERN ?udiv32_l0_l0_l1
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ADC_ChannelCmd
        EXTERN ADC_Cmd
        EXTERN ADC_DeInit
        EXTERN ADC_GetConversionValue
        EXTERN ADC_GetFlagStatus
        EXTERN ADC_Init
        EXTERN ADC_SamplingTimeConfig
        EXTERN ADC_SchmittTriggerConfig
        EXTERN ADC_SoftwareStartConv
        EXTERN ADC_VrefintCmd
        EXTERN BMA253_Init
        EXTERN CLK_GetFlagStatus
        EXTERN CLK_GetSYSCLKSource
        EXTERN CLK_HSICmd
        EXTERN CLK_HaltConfig
        EXTERN CLK_LSEConfig
        EXTERN CLK_PeripheralClockConfig
        EXTERN CLK_SYSCLKDivConfig
        EXTERN CLK_SYSCLKSourceConfig
        EXTERN CLK_SYSCLKSourceSwitchCmd
        EXTERN EventReadPtr
        EXTERN EventWritePtr
        EXTERN ExtinguishLed
        EXTERN GPIO_Init
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN GetOneEvent
        EXTERN Gsensor_IIC_Init
        EXTERN IWDG_Enable
        EXTERN IWDG_ReloadCounter
        EXTERN IWDG_SetPrescaler
        EXTERN IWDG_SetReload
        EXTERN IWDG_WriteAccessCmd
        EXTERN LightenLed
        EXTERN LinkNetTimeOutHandle
        EXTERN ModuleResetHandle
        EXTERN ModuleResetInit
        EXTERN ModuleResetTime
        EXTERN Moudleinfo
        EXTERN PEDO_GetStepCount
        EXTERN PEDO_ProcessAccelarationData
        EXTERN PWR_UltraLowPowerCmd
        EXTERN Protocol_Init
        EXTERN RTC_Config_Init
        EXTERN RTC_GetDate
        EXTERN RTC_GetTime
        EXTERN RTC_ITConfig
        EXTERN RTC_TamperCmd
        EXTERN RTC_TamperFilterConfig
        EXTERN RTC_TamperLevelConfig
        EXTERN RTC_TamperPinsPrechargeDuration
        EXTERN RTC_TamperSamplingFreqConfig
        EXTERN SYSCFG_REMAPPinConfig
        EXTERN TIM2_ClearFlag
        EXTERN TIM2_Cmd
        EXTERN TIM2_ETRClockMode2Config
        EXTERN TIM2_ITConfig
        EXTERN TIM2_TimeBaseInit
        EXTERN TIM2_UpdateRequestConfig
        EXTERN TIM3_Cmd
        EXTERN TIM4_ClearFlag
        EXTERN TIM4_Cmd
        EXTERN TIM4_GetFlagStatus
        EXTERN TIM4_TimeBaseInit
        EXTERN Timer3_Init
        EXTERN UART1_SendByte
        EXTERN UART2_SendStr
        EXTERN Uart_Init
        EXTERN Uart_PowerOn_Config
        EXTERN bma2x2_read_accel_xyz
        EXTERN bma2x2_set_bw
        EXTERN bma2x2_set_power_mode
        EXTERN g_at_no_response
        EXTERN hw_board_gpio_init
        EXTERN hw_eeprom_flash_init
        EXTERN hw_eeprom_read_bytes
        EXTERN hw_eeprom_write_bytes
        EXTERN memset
        EXTERN set_net_state
        EXTERN set_rtc_wake_time
        EXTERN tcp_had_linked_flag

        PUBLIC ADC_Config
        PUBLIC ADC_VALUE_CALCULATE
        PUBLIC ADCdata
        PUBLIC EVENT_Message_Handle
        PUBLIC GPIO_LowPower_Config
        PUBLIC Get_ADC_Value
        PUBLIC GsensorGetStepCount
        PUBLIC IWDG_Config
        PUBLIC IniBuf
        PUBLIC IniFlagFlag
        PUBLIC LSE_StabTime
        PUBLIC ModuleSts
        PUBLIC READ_RST_CR
        PUBLIC RTC_AlarmStr
        PUBLIC RTC_DateStr
        PUBLIC RTC_TampFilter
        PUBLIC RTC_TimeStr
        PUBLIC RTC_handle
        PUBLIC SendAtTimeCount
        PUBLIC Sleep_flag
        PUBLIC SystemClock_Init
        PUBLIC TampFilterIndex
        PUBLIC Tamper_Init
        PUBLIC Tim2Delay_Init
        PUBLIC TimingDelay_Decrement
        PUBLIC adc_cnt
        PUBLIC delay_ms
        PUBLIC g_system_reset_time
        PUBLIC get_rtc_time
        PUBLIC go_to_sleep
        PUBLIC go_to_work
        PUBLIC had_get_adc_flag
        PUBLIC last_date
        PUBLIC load_continuous_flag
        PUBLIC low_power_mode
        PUBLIC low_power_report_flag
        PUBLIC lowpowerwait_flag
        PUBLIC main
        PUBLIC ms500Count
        PUBLIC net_link_cclk_flag
        PUBLIC power_level_state
        PUBLIC rtc_interrupt_flag
        PUBLIC set_rtc_interrupt_flag
        PUBLIC set_sleep_counter_max
        PUBLIC set_sleep_counter_min
        PUBLIC sleep_counter
        PUBLIC wake_up_from_sleep


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
SendAtTimeCount:
        DS8 2

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
Sleep_flag:
        DC8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
rtc_interrupt_flag:
        DS8 1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
lowpowerwait_flag:
        DC8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
sleep_counter:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
had_get_adc_flag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
net_link_cclk_flag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
load_continuous_flag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
g_system_reset_time:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ms500Count:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
RTC_TimeStr:
        DS8 4

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
RTC_DateStr:
        DS8 4

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
last_date:
        DS8 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
RTC_TampFilter:
        DC8 0, 8, 16, 24

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
TampFilterIndex:
        DC8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ADCdata:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ADC_VALUE_CALCULATE:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
adc_cnt:
        DS8 1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
power_level_state:
        DC8 3

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
low_power_report_flag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
IniFlagFlag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ModuleSts:
        DS8 1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Tim2Delay_Init:
        MOV       S:?b0, #0x1
        CLR       A
        CALLF     CLK_PeripheralClockConfig
        LD        A, #0x1
        LDW       X, #0x208
        CALLF     SYSCFG_REMAPPinConfig
        LD        A, #0x4
        CALLF     CLK_LSEConfig
??Tim2Delay_Init_0:
        LD        A, #0x33
        CALLF     CLK_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??Tim2Delay_Init_0
        LDW       X, #0x51
        CLR       S:?b0
        CLR       A
        CALLF     TIM2_TimeBaseInit
        CLR       S:?b1
        CLR       S:?b0
        LD        A, #0x20
        CALLF     TIM2_ETRClockMode2Config
        CLR       A
        CALLF     TIM2_UpdateRequestConfig
        CLRW      X
        INCW      X
        CALLF     TIM2_ClearFlag
        MOV       S:?b0, #0x1
        LD        A, #0x1
        CALLF     TIM2_ITConfig
        LD        A, #0x1
        CALLF     TIM2_Cmd
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC_Config:
        LDW       X, #0x5340
        CALLF     ADC_DeInit
        CLR       S:?b0
        LD        A, #0x20
        LDW       X, #0x5000
        CALLF     GPIO_Init
        MOV       S:?b0, #0x1
        LD        A, #0x10
        CALLF     CLK_PeripheralClockConfig
        MOV       S:?b1, #0x80
        CLR       S:?b0
        LD        A, #0x4
        LDW       X, #0x5340
        CALLF     ADC_Init
        MOV       S:?b0, #0x3
        CLR       A
        LDW       X, #0x5340
        CALLF     ADC_SamplingTimeConfig
        LD        A, #0x1
        LDW       X, #0x5340
        CALLF     ADC_Cmd
        CLR       A
        LDW       Y, #0x302
        LDW       X, #0x5340
        CALLF     ADC_SchmittTriggerConfig
        LD        A, #0x1
        LDW       Y, #0x302
        LDW       X, #0x5340
        CALLF     ADC_ChannelCmd
        LDW       X, #0x5340
        CALLF     ADC_SoftwareStartConv
        CLR       A
        LDW       X, #0x5340
        CALLF     ADC_Cmd
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Get_ADC_Value:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSH      A
        SUB       SP, #0x4
        LDW       X, #0x5340
        CALLF     ADC_DeInit
        LD        A, #0x1
        LDW       X, #0x5340
        CALLF     ADC_Cmd
        LD        A, #0x1
        CALLF     ADC_VrefintCmd
        LD        A, #0x1
        LDW       Y, #0x302
        LDW       X, #0x5340
        CALLF     ADC_ChannelCmd
        LDW       X, #0x5340
        CALLF     ADC_SoftwareStartConv
??Get_ADC_Value_0:
        LD        A, #0x1
        LDW       X, #0x5340
        CALLF     ADC_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??Get_ADC_Value_0
        LDW       X, #0x5340
        CALLF     ADC_GetConversionValue
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     L:?mov_l3_l0
        CLR       A
        LDW       Y, #0x302
        LDW       X, #0x5340
        CALLF     ADC_ChannelCmd
        LD        A, #0x1
        LDW       Y, #0x10
        LDW       X, #0x5340
        CALLF     ADC_ChannelCmd
        LDW       X, #0x5340
        CALLF     ADC_SoftwareStartConv
??Get_ADC_Value_1:
        LD        A, #0x1
        LDW       X, #0x5340
        CALLF     ADC_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??Get_ADC_Value_1
        LDW       X, #0x5340
        CALLF     ADC_GetConversionValue
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x1
        CALLF     L:?load32_xsp_l0
        CLR       A
        LDW       Y, #0x10
        LDW       X, #0x5340
        CALLF     ADC_ChannelCmd
        CLR       A
        CALLF     ADC_VrefintCmd
        CLR       A
        LDW       X, #0x5340
        CALLF     ADC_Cmd
        LDW       X, #0x4c8
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l3
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?load32_l1_dbsp
        DATA
        DC8       0x1
        CODE
        CALLF     L:?udiv32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        TNZ       (0x5,SP)
        JREQ      ??lb_0
        JP        L:??Get_ADC_Value_2
??lb_0:
        LDW       X, S:?w5
        ADDW      X, L:ADC_VALUE_CALCULATE
        LDW       L:ADC_VALUE_CALCULATE, X
        LD        A, L:adc_cnt
        ADD       A, #0x1
        LD        L:adc_cnt, A
        LD        A, L:adc_cnt
        CP        A, #0x4
        JRNE      L:??Get_ADC_Value_3
        LDW       X, L:ADC_VALUE_CALCULATE
        SRLW      X
        SRLW      X
        LDW       L:ADCdata, X
        CLRW      X
        LDW       L:ADC_VALUE_CALCULATE, X
        MOV       L:adc_cnt, #0x0
        LDW       X, L:ADCdata
        CPW       X, #0x391
        JRNC      L:??Get_ADC_Value_4
        MOV       L:power_level_state, #0x0
        JRA       L:??Get_ADC_Value_5
??Get_ADC_Value_4:
        LDW       X, L:ADCdata
        CPW       X, #0x4bf
        JRNC      L:??Get_ADC_Value_5
        MOV       L:power_level_state, #0x2
??Get_ADC_Value_5:
        LDW       X, L:ADCdata
        LDW       L:Moudleinfo + 1, X
??Get_ADC_Value_3:
        LD        A, L:had_get_adc_flag
        CP        A, #0x0
        JRNE      L:??Get_ADC_Value_6
        MOV       L:had_get_adc_flag, #0x1
        LDW       X, S:?w5
        LDW       L:Moudleinfo + 1, X
        LDW       X, S:?w4
        CPW       X, #0x0
        JRNE      L:??Get_ADC_Value_7
        LDW       X, S:?w5
        CPW       X, #0x4bf
??Get_ADC_Value_7:
        JRNC      L:??Get_ADC_Value_6
        MOV       L:power_level_state, #0x2
??Get_ADC_Value_6:
        LDW       X, S:?w4
        CPW       X, #0x0
        JRNE      L:??Get_ADC_Value_8
        LDW       X, S:?w5
        CPW       X, #0x51b
??Get_ADC_Value_8:
        JRC       L:??Get_ADC_Value_9
        LD        A, L:power_level_state
        CP        A, #0x3
        JRNC      L:??Get_ADC_Value_10
        LDW       X, S:?w5
        LDW       L:Moudleinfo + 1, X
??Get_ADC_Value_10:
        MOV       L:power_level_state, #0x3
        MOV       L:low_power_report_flag, #0x0
        JRA       L:??Get_ADC_Value_2
??Get_ADC_Value_9:
        LDW       X, S:?w4
        CPW       X, #0x0
        JRNE      L:??Get_ADC_Value_11
        LDW       X, S:?w5
        CPW       X, #0x489
??Get_ADC_Value_11:
        JRC       L:??Get_ADC_Value_2
        LD        A, L:power_level_state
        CP        A, #0x0
        JRNE      L:??Get_ADC_Value_2
        MOV       L:power_level_state, #0x2
??Get_ADC_Value_2:
        LDW       X, S:?w5
        ADD       SP, #0x5
        JPF       L:?epilogue_l2_l3

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
RTC_AlarmStr:
        DS8 7

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Tamper_Init:
        LD        A, L:TampFilterIndex
        CLRW      X
        LD        XL, A
        LD        A, (L:RTC_TampFilter,X)
        CALLF     RTC_TamperFilterConfig
        CLR       A
        CALLF     RTC_TamperSamplingFreqConfig
        LD        A, #0x80
        CALLF     RTC_TamperPinsPrechargeDuration
        CLR       S:?b0
        LD        A, #0x2
        CALLF     RTC_TamperLevelConfig
        MOV       S:?b0, #0x1
        LD        A, #0x2
        CALLF     RTC_TamperCmd
        LD        A, #0x1
        LDW       X, #0xf01
        CALLF     RTC_ITConfig
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
LSE_StabTime:
        MOV       S:?b0, #0x1
        LD        A, #0x2
        CALLF     CLK_PeripheralClockConfig
        MOV       S:?b0, #0x7b
        LD        A, #0xe
        CALLF     TIM4_TimeBaseInit
        LD        A, #0x1
        CALLF     TIM4_Cmd
??LSE_StabTime_0:
        LD        A, #0x1
        CALLF     TIM4_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??LSE_StabTime_0
        LD        A, #0x1
        CALLF     TIM4_ClearFlag
        CLR       A
        CALLF     TIM4_Cmd
        CLR       S:?b0
        LD        A, #0x2
        CALLF     CLK_PeripheralClockConfig
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SystemClock_Init:
        LD        A, #0x1
        CALLF     CLK_HSICmd
??SystemClock_Init_0:
        BTJF      L:0x50c2, #0x1, L:??SystemClock_Init_0
        LD        A, #0x1
        CALLF     CLK_SYSCLKSourceConfig
        CLR       A
        CALLF     CLK_SYSCLKDivConfig
        CALLF     CLK_GetSYSCLKSource
        CP        A, #0x1
        JREQ      L:??SystemClock_Init_1
        LD        A, #0x1
        CALLF     CLK_SYSCLKSourceSwitchCmd
??SystemClock_Init_2:
        BTJT      L:0x50c9, #0x0, L:??SystemClock_Init_2
??SystemClock_Init_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_LowPower_Config:
        MOV       S:?b0, #0xd0
        LD        A, #0x84
        LDW       X, #0x500f
        CALLF     GPIO_Init
        MOV       S:?b0, #0xd0
        LD        A, #0x3
        LDW       X, #0x5019
        CALLF     GPIO_Init
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GsensorGetStepCount:
        CALLF     L:?push_l2
        PUSH      S:?b12
        SUB       SP, #0x6
        CLRW      X
        LDW       S:?w5, X
        LDW       S:?w4, X
        CLR       S:?b12
        CLR       A
        CALLF     bma2x2_set_power_mode
        LD        A, #0x8
        LD        S:?b12, A
        LD        A, S:?b12
        CALLF     bma2x2_set_bw
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     bma2x2_read_accel_xyz
        LDW       X, (0x5,SP)
        LDW       S:?w0, X
        LDW       Y, (0x3,SP)
        LDW       X, (0x1,SP)
        CALLF     PEDO_ProcessAccelarationData
        CALLF     PEDO_GetStepCount
        CALLF     L:?sext32_l0_x
        CALLF     L:?mov_l2_l0
        LD        A, #0x3
        CALLF     bma2x2_set_power_mode
        CALLF     L:?mov_l0_l2
        ADD       SP, #0x6
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
IWDG_Config:
        CALLF     IWDG_Enable
        LD        A, #0x55
        CALLF     IWDG_WriteAccessCmd
        LD        A, #0x6
        CALLF     IWDG_SetPrescaler
        LD        A, #0xfe
        CALLF     IWDG_SetReload
        CALLF     IWDG_ReloadCounter
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
delay_ms:
        LDW       S:?w1, X
        CLR       S:?b1
        CLR       S:?b0
??delay_ms_0:
        LDW       X, S:?w1
        LDW       Y, X
        DECW      Y
        LDW       S:?w1, Y
        TNZW      X
        JREQ      L:??delay_ms_1
        LDW       X, #0x640
        LDW       S:?w0, X
??delay_ms_2:
        LDW       X, S:?w0
        LDW       Y, X
        DECW      Y
        LDW       S:?w0, Y
        TNZW      X
        JRNE      L:??delay_ms_2
        JRA       L:??delay_ms_0
??delay_ms_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
go_to_sleep:
        PUSH      S:?b8
        MOV       L:Sleep_flag, #0x1
        LD        A, #0x4
        CALLF     CLK_LSEConfig
??go_to_sleep_0:
        BTJF      L:0x50c6, #0x3, L:??go_to_sleep_0
        CLR       A
        CALLF     CLK_SYSCLKDivConfig
        LD        A, #0x2
        CALLF     CLK_SYSCLKSourceConfig
        LD        A, #0x1
        CALLF     CLK_SYSCLKSourceSwitchCmd
        BSET      L:0x50c9, #0x0
??go_to_sleep_1:
        BTJT      L:0x50c9, #0x0, L:??go_to_sleep_1
        LD        A, L:0x50c9
        LD        S:?b8, A
        MOV       L:0x50c9, #0x0
        CLR       A
        CALLF     CLK_HSICmd
        MOV       S:?b0, #0x1
        LD        A, #0x20
        CALLF     CLK_HaltConfig
        LD        A, #0x1
        CALLF     PWR_UltraLowPowerCmd
        SIM
        HALT
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
low_power_mode:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
get_rtc_time:
        LDW       X, #RTC_TimeStr
        CLR       A
        CALLF     RTC_GetTime
        LDW       X, #RTC_DateStr
        CLR       A
        CALLF     RTC_GetDate
        LD        A, L:last_date
        CP        A, L:RTC_DateStr + 2
        JREQ      L:??get_rtc_time_0
        LD        A, L:RTC_DateStr + 2
        LD        L:last_date, A
??get_rtc_time_0:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
go_to_work:
        CALLF     SystemClock_Init
        CLR       S:?b0
        LD        A, #0x20
        LDW       X, #0x5000
        CALLF     GPIO_Init
        LD        A, L:power_level_state
        CP        A, #0x0
        JRNE      L:??go_to_work_0
        LDW       X, #0x1f4
        CALLF     delay_ms
        CLR       A
        CALLF     Get_ADC_Value
        LD        A, L:power_level_state
        CP        A, #0x0
        JRNE      L:??go_to_work_0
        MOV       S:?b0, #0xc0
        LD        A, #0x20
        LDW       X, #0x5000
        CALLF     GPIO_Init
        JRA       L:??go_to_work_1
??go_to_work_0:
        MOV       L:lowpowerwait_flag, #0x1
        LDW       X, #0xc8
        LDW       L:ModuleResetTime, X
        LD        A, #0x1
        CALLF     TIM3_Cmd
        CALLF     Uart_PowerOn_Config
        CLRW      X
        CALLF     set_sleep_counter_max
        CLR       A
        CALLF     UART1_SendByte
        CALLF     get_rtc_time
??go_to_work_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
set_sleep_counter_min:
        LD        A, L:sleep_counter
        CLRW      Y
        LD        YL, A
        LDW       S:?w0, X
        CPW       Y, S:?w0
        JRNC      L:??set_sleep_counter_min_0
        LD        A, XL
        LD        L:sleep_counter, A
??set_sleep_counter_min_0:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
set_sleep_counter_max:
        LD        A, L:sleep_counter
        CLRW      Y
        LD        YL, A
        LDW       S:?w0, Y
        CPW       X, S:?w0
        JRNC      L:??set_sleep_counter_max_0
        LD        A, XL
        LD        L:sleep_counter, A
??set_sleep_counter_max_0:
        LD        A, L:ModuleSts
        CP        A, #0x2
        JREQ      L:??set_sleep_counter_max_1
        LD        A, L:sleep_counter
        CP        A, #0x0
        JRNE      L:??set_sleep_counter_max_1
        MOV       L:sleep_counter, #0x8
??set_sleep_counter_max_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
set_rtc_interrupt_flag:
        MOV       L:rtc_interrupt_flag, #0x1
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
wake_up_from_sleep:
        LD        A, L:lowpowerwait_flag
        CP        A, #0x0
        JRNE      L:??wake_up_from_sleep_0
        CALLF     go_to_work
??wake_up_from_sleep_0:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
RTC_handle:
        PUSH      S:?b8
        MOV       S:?b8, #0x1
        LD        A, L:rtc_interrupt_flag
        CP        A, #0x0
        JRNE      L:??RTC_handle_0
        CLR       A
        JP        L:??RTC_handle_1
??RTC_handle_0:
        MOV       L:rtc_interrupt_flag, #0x0
        LDW       X, L:ms500Count
        INCW      X
        LDW       L:ms500Count, X
        LD        A, L:sleep_counter
        CP        A, #0x3c
        JRNC      L:??RTC_handle_2
        LD        A, L:sleep_counter
        ADD       A, #0x1
        LD        L:sleep_counter, A
        LD        A, L:sleep_counter
        CP        A, #0x14
        JRNE      L:??RTC_handle_3
        LD        A, L:EventWritePtr
        CP        A, L:EventReadPtr
        JRNE      L:??RTC_handle_4
        LD        A, L:net_link_cclk_flag
        CP        A, #0x0
        JRNE      L:??RTC_handle_5
        LD        A, L:g_at_no_response
        CP        A, #0xb
        JRC       L:??RTC_handle_4
??RTC_handle_5:
        LD        A, L:tcp_had_linked_flag
        CP        A, #0x0
        JRNE      L:??RTC_handle_4
        MOV       L:lowpowerwait_flag, #0x0
        CALLF     low_power_mode
        JRA       L:??RTC_handle_3
??RTC_handle_4:
        LD        A, L:sleep_counter
        ADD       A, #0xff
        LD        L:sleep_counter, A
??RTC_handle_3:
        LD        A, L:lowpowerwait_flag
        CP        A, #0x1
        JRNE      L:??RTC_handle_6
        LDW       X, L:ModuleResetTime
        TNZW      X
        JREQ      L:??RTC_handle_7
        LD        A, L:power_level_state
        CP        A, #0x0
        JRNE      L:??RTC_handle_6
??RTC_handle_7:
        MOV       L:lowpowerwait_flag, #0x0
        CALLF     low_power_mode
??RTC_handle_6:
        LD        A, L:g_system_reset_time
        CP        A, #0x0
        JREQ      L:??RTC_handle_2
        LD        A, L:g_system_reset_time
        ADD       A, #0xff
        LD        L:g_system_reset_time, A
        LD        A, L:g_system_reset_time
        CP        A, #0x0
        JRNE      L:??RTC_handle_2
        CALLF     wake_up_from_sleep
        SIM
        JPF $8000
??RTC_handle_2:
        LD        A, L:power_level_state
        CP        A, #0x0
        JRNE      L:??RTC_handle_8
        CLR       A
        JP        L:??RTC_handle_1
??RTC_handle_8:
        LDW       X, L:ms500Count
        LDW       Y, #0x78
        DIVW      X, Y
        TNZW      Y
        JRNE      L:??RTC_handle_9
        CALLF     ModuleResetHandle
??RTC_handle_9:
        LD        A, L:lowpowerwait_flag
        CP        A, #0x1
        JRNE      L:??RTC_handle_10
        LD        A, L:Moudleinfo + 67
        CP        A, #0x1
        JRNE      L:??RTC_handle_11
        LDW       X, L:SendAtTimeCount
        INCW      X
        LDW       L:SendAtTimeCount, X
        LDW       X, L:SendAtTimeCount
        CPW       X, #0x5
        JRC       L:??RTC_handle_12
        CLRW      X
        LDW       L:SendAtTimeCount, X
        MOV       L:Moudleinfo + 67, #0x0
        JRA       L:??RTC_handle_12
??RTC_handle_11:
        CLRW      X
        LDW       L:SendAtTimeCount, X
??RTC_handle_12:
        CALLF     LinkNetTimeOutHandle
        LDW       X, L:ms500Count
        LD        A, XL
        AND       A, #0x1
        CP        A, #0x0
        JREQ      L:??RTC_handle_10
        LD        A, L:RTC_TimeStr + 2
        ADD       A, #0x1
        LD        L:RTC_TimeStr + 2, A
        LD        A, L:RTC_TimeStr + 2
        CP        A, #0x3c
        JRC       L:??RTC_handle_13
        CALLF     get_rtc_time
        CLR       A
        CALLF     Get_ADC_Value
??RTC_handle_13:
        LDW       X, L:ModuleResetTime
        TNZW      X
        JREQ      L:??RTC_handle_10
        LDW       X, L:ModuleResetTime
        DECW      X
        LDW       L:ModuleResetTime, X
        LDW       X, L:ModuleResetTime
        CPW       X, #0x2
        JRNC      L:??RTC_handle_10
        LD        A, #0x1
        CALLF     set_net_state
        MOV       L:tcp_had_linked_flag, #0x0
??RTC_handle_10:
        TNZ       S:?b8
        JRNE      L:??RTC_handle_14
        LD        A, #0x1
        JRA       L:??RTC_handle_1
??RTC_handle_14:
        CLR       A
??RTC_handle_1:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TimingDelay_Decrement:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
IniBuf:
        LDW       X, #0x7c
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, #Moudleinfo
        CALLF     memset
        MOV       L:EventWritePtr, #0x0
        LD        A, L:EventWritePtr
        LD        L:EventReadPtr, A
        MOV       L:had_get_adc_flag, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
READ_RST_CR:
        SUB       SP, #0x2
        CLR       A
        LD        (0x1,SP), A
        LD        A, L:0x50b1
        LD        (0x1,SP), A
        LD        A, (0x1,SP)
        AND       A, #0x3e
        CP        A, #0x0
        JREQ      L:??READ_RST_CR_0
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x2
        LD        A, #0x27
        CALLF     hw_eeprom_read_bytes
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x2
        LD        A, #0x28
        CALLF     hw_eeprom_write_bytes
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x27
        CALLF     hw_eeprom_write_bytes
??READ_RST_CR_0:
        LD        A, L:0x50b1
        OR        A, #0x3f
        LD        L:0x50b1, A
        LD        A, (0x1,SP)
        ADD       SP, #0x2
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EVENT_Message_Handle:
        SUB       SP, #0x8
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     GetOneEvent
        CP        A, #0x0
        JREQ      L:??EVENT_Message_Handle_0
        LD        A, (0x1,SP)
        TNZ       A
        JREQ      L:??EVENT_Message_Handle_1
        DEC       A
        JREQ      L:??EVENT_Message_Handle_1
        JRA       L:??EVENT_Message_Handle_2
??EVENT_Message_Handle_1:
        LDW       X, #0x12
        CALLF     set_sleep_counter_min
        JRA       L:??EVENT_Message_Handle_0
??EVENT_Message_Handle_2:
??EVENT_Message_Handle_0:
        ADD       SP, #0x8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
main:
        PUSH      S:?b8
        CALLF     SystemClock_Init
        CALLF     hw_board_gpio_init
        CALLF     GPIO_LowPower_Config
        CALLF     Gsensor_IIC_Init
        CALLF     hw_eeprom_flash_init
        CALLF     Uart_Init
        CALLF     ADC_Config
        CALLF     Timer3_Init
        CALLF     RTC_Config_Init
        LDW       X, #0x7ff
        CALLF     set_rtc_wake_time
        LD        A, #0x20
        LDW       X, #0x500f
        CALLF     GPIO_SetBits
        LDW       X, #0x320
        CALLF     delay_ms
        LD        A, #0x20
        LDW       X, #0x500f
        CALLF     GPIO_ResetBits
        LD        A, #0x1
        LDW       X, #0x5014
        CALLF     GPIO_SetBits
        LD        A, #0x2
        LDW       X, #0x5014
        CALLF     GPIO_SetBits
        CALLF     IniBuf
        CALLF     ModuleResetInit
        MOV       L:ModuleSts, #0x1
        CALLF     Protocol_Init
        CALLF     BMA253_Init
        CALLF     go_to_work
        SIM
        RIM
        CALLF     READ_RST_CR
        LD        S:?b8, A
        CLR       A
        CALLF     Get_ADC_Value
        LDW       X, L:Moudleinfo + 1
        CPW       X, #0x391
        JRNC      L:??main_0
        LD        A, S:?b8
        AND       A, #0x20
        CP        A, #0x0
        JREQ      L:??main_0
        MOV       L:power_level_state, #0x0
        MOV       L:lowpowerwait_flag, #0x0
        CALLF     low_power_mode
??main_0:
        LDW       X, #0x3e8
        CALLF     delay_ms
        LD        A, #0x1
        CALLF     LightenLed
        CLR       A
        CALLF     ExtinguishLed
        LDW       Y, #0x4
        LDW       X, #?_0
        CALLF     UART2_SendStr
        LDW       X, #0x3e8
        CALLF     delay_ms
        CLR       A
        CALLF     LightenLed
        LD        A, #0x1
        CALLF     ExtinguishLed
        JRA       L:??main_0

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_0:
        DC8 "AT\015\012"

        END
// 
// 1 819 bytes in section .far_func.text
//    34 bytes in section .near.bss
//     4 bytes in section .near.data
//     9 bytes in section .near.rodata
// 
// 1 819 bytes of CODE  memory
//     9 bytes of CONST memory
//    38 bytes of DATA  memory
//
//Errors: none
//Warnings: 9
