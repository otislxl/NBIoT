///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:13
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\main_rtc.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\main_rtc.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\main_rtc.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?epilogue_w4
        EXTERN ?push_w4
        EXTERN ?w4
        EXTERN CLK_GetFlagStatus
        EXTERN CLK_LSEConfig
        EXTERN CLK_PeripheralClockConfig
        EXTERN CLK_RTCClockConfig
        EXTERN RTC_DateStr
        EXTERN RTC_ITConfig
        EXTERN RTC_Init
        EXTERN RTC_SetDate
        EXTERN RTC_SetTime
        EXTERN RTC_SetWakeUpCounter
        EXTERN RTC_TimeStr
        EXTERN RTC_TimeStructInit
        EXTERN RTC_WaitForSynchro
        EXTERN RTC_WakeUpClockConfig
        EXTERN RTC_WakeUpCmd

        PUBLIC Calendar_Init
        PUBLIC RTC_Config_Init
        PUBLIC set_date
        PUBLIC set_rtc_wake_time
        PUBLIC set_time
        PUBLIC stop_rtc_wake


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
stop_rtc_wake:
        CLR       A
        LDW       X, #0x40
        CALLF     RTC_ITConfig
        CLR       A
        CALLF     RTC_WakeUpCmd
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
set_rtc_wake_time:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CALLF     stop_rtc_wake
        CLR       A
        CALLF     RTC_WakeUpClockConfig
        LD        A, #0x1
        LDW       X, #0x40
        CALLF     RTC_ITConfig
        RIM
        LDW       X, S:?w4
        CALLF     RTC_SetWakeUpCounter
        LD        A, #0x1
        CALLF     RTC_WakeUpCmd
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Calendar_Init:
        SUB       SP, #0x4
        CLR       A
        LD        (0x1,SP), A
        LD        A, #0x7f
        LD        (0x2,SP), A
        LDW       X, #0xff
        LDW       (0x3,SP), X
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     RTC_Init
        LDW       X, #RTC_TimeStr
        CALLF     RTC_TimeStructInit
        MOV       L:RTC_TimeStr, #0x10
        MOV       L:RTC_TimeStr + 1, #0x0
        MOV       L:RTC_TimeStr + 2, #0x0
        LDW       X, #RTC_TimeStr
        CLR       A
        CALLF     RTC_SetTime
        MOV       L:RTC_DateStr + 3, #0x13
        MOV       L:RTC_DateStr + 1, #0x1
        MOV       L:RTC_DateStr + 2, #0x1
        LDW       X, #RTC_DateStr
        CLR       A
        CALLF     RTC_SetDate
        ADD       SP, #0x4
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
RTC_Config_Init:
        LD        A, #0x4
        CALLF     CLK_LSEConfig
??RTC_Config_Init_0:
        LD        A, #0x33
        CALLF     CLK_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??RTC_Config_Init_0
        CLR       S:?b0
        LD        A, #0x10
        CALLF     CLK_RTCClockConfig
        MOV       S:?b0, #0x1
        LD        A, #0x12
        CALLF     CLK_PeripheralClockConfig
??RTC_Config_Init_1:
        CALLF     RTC_WaitForSynchro
        CP        A, #0x1
        JRNE      L:??RTC_Config_Init_1
        CALLF     Calendar_Init
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
set_time:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, #RTC_TimeStr
        CALLF     RTC_TimeStructInit
        LD        A, [S:?w4.w]
        LD        L:RTC_TimeStr, A
        LDW       X, S:?w4
        INCW      X
        LD        A, (X)
        LD        L:RTC_TimeStr + 1, A
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        A, (X)
        LD        L:RTC_TimeStr + 2, A
        LDW       X, #RTC_TimeStr
        CLR       A
        CALLF     RTC_SetTime
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
set_date:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LD        A, [S:?w4.w]
        LD        L:RTC_DateStr + 3, A
        LDW       X, S:?w4
        INCW      X
        LD        A, (X)
        LD        L:RTC_DateStr + 1, A
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        A, (X)
        LD        L:RTC_DateStr + 2, A
        LDW       X, #RTC_DateStr
        CLR       A
        CALLF     RTC_SetDate
        JPF       L:?epilogue_w4

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 261 bytes in section .far_func.text
// 
// 261 bytes of CODE memory
//
//Errors: none
//Warnings: none
