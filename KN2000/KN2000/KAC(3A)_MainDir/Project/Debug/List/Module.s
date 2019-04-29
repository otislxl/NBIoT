///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:13
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Module.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Module.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\Module.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b14
        EXTERN ?b2
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_l2_w6
        EXTERN ?move1616_v_x_y_a
        EXTERN ?mul16_x_x_w0
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w6
        EXTERN ?smod16_y_x_y
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7
        EXTERN AciiToHex
        EXTERN AsctoBin
        EXTERN BcdToBin
        EXTERN BinToBcd
        EXTERN GetIntFromBuf
        EXTERN GetNetNeedLinkState
        EXTERN NetActiveHandle
        EXTERN ProtoDataAnalyze
        EXTERN ReBackNetBag
        EXTERN SetNB_IO_RESETGpio
        EXTERN UART1_SendStr
        EXTERN __iar_Strstr
        EXTERN delay_ms
        EXTERN g_had_link_manager
        EXTERN g_system_reset_time
        EXTERN get_rtc_time
        EXTERN hw_eeprom_read_bytes
        EXTERN load_continuous_flag
        EXTERN memcmp
        EXTERN memcpy
        EXTERN memset
        EXTERN net_link_cclk_flag
        EXTERN set_date
        EXTERN set_net_state
        EXTERN set_sleep_counter_max
        EXTERN set_time
        EXTERN sprintf
        EXTERN strlen
        EXTERN uart_rx
        EXTERN uart_rx_read
        EXTERN uart_rx_write

        PUBLIC AtComRecBuf
        PUBLIC AtCommRecLen
        PUBLIC AtDelayTime
        PUBLIC ComputeTime
        PUBLIC GetNBplantformIPandPORT
        PUBLIC GetNetLinkState
        PUBLIC HW_ModuleReset
        PUBLIC LinkNetTimeOutHandle
        PUBLIC ModuleIniDisp
        PUBLIC ModuleNetBreakHandle
        PUBLIC ModuleNetLinkHandle
        PUBLIC ModuleResetInit
        PUBLIC Moudleinfo
        PUBLIC NB_module_error_cnt
        PUBLIC NetBreakHandle
        PUBLIC NoDataTimeCount
        PUBLIC ProAtLen
        PUBLIC ProSendbuf
        PUBLIC ReSndCount
        PUBLIC RecAtComFormMoudle
        PUBLIC Rec_cclk
        PUBLIC SendDataErrorTime
        PUBLIC SendDataToNBmodule
        PUBLIC SendId
        PUBLIC SendProToNBmodule
        PUBLIC SetNoDataTimeCount
        PUBLIC SetReSendDataTime
        PUBLIC Uart1RevHandle
        PUBLIC WNip
        PUBLIC g_at_no_response
        PUBLIC getAddressFromAT
        PUBLIC module_at_invalid_handle
        PUBLIC module_at_invalid_time
        PUBLIC module_at_valid_handle
        PUBLIC ppp_had_linked_flag
        PUBLIC reset_module_handle
        PUBLIC rev_NB_data_flag
        PUBLIC socket_id
        PUBLIC strstr
        PUBLIC tcp_had_linked_flag
        PUBLIC tcp_sequence


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        SECTION_GROUP strstr
        CODE
// __intrinsic __nounwind __far_func char *strstr(char const *, char const *)
strstr:
        CALLF     L:?push_l2
        LDW       S:?w5, X
        LDW       S:?w4, Y
        LDW       Y, S:?w4
        LDW       X, S:?w5
        CALLF     __iar_Strstr
        JPF       L:?epilogue_l2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
Moudleinfo:
        DS8 124

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
AtComRecBuf:
        DS8 1100

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
AtCommRecLen:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
rev_NB_data_flag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
NB_module_error_cnt:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
module_at_invalid_time:
        DS8 1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
SendId:
        DC8 255

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
AtDelayTime:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
g_at_no_response:
        DS8 1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
WNip:
        DC16 ?_0

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
SendDataErrorTime:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ProSendbuf:
        DS8 450

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ProAtLen:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ReSndCount:
        DS8 1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
socket_id:
        DC8 255

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ppp_had_linked_flag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
tcp_had_linked_flag:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
tcp_sequence:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
NoDataTimeCount:
        DS8 1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
getAddressFromAT:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        SUB       SP, #0x80
        LDW       S:?w7, X
        LD        S:?b13, A
        CLR       S:?b9
        CLR       S:?b8
        CLR       S:?b11
        CLR       S:?b10
        LDW       Y, #?_1
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x80
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       X, SP
        ADDW      X, #0x1
        LDW       S:?w5, X
        LDW       X, #0x80
        LDW       S:?w0, X
        LDW       Y, S:?w7
        LDW       X, S:?w5
        CALLF     memcpy
        CLR       A
        LD        S:?b12, A
??getAddressFromAT_0:
        LD        A, S:?b12
        CP        A, S:?b13
        JRNC      L:??getAddressFromAT_1
        LDW       Y, #?_2
        LDW       X, S:?w5
        CALLF     strstr
        LDW       S:?w4, X
        LDW       X, S:?w4
        TNZW      X
        JRNE      L:??getAddressFromAT_2
        CLR       A
        JRA       L:??getAddressFromAT_3
??getAddressFromAT_2:
        CLR       A
        LD        [S:?w4.w], A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w5, X
        LD        A, S:?b12
        ADD       A, #0x1
        LD        S:?b12, A
        JRA       L:??getAddressFromAT_0
??getAddressFromAT_1:
        LD        A, S:?b11
        LDW       X, SP
        ADDW      X, #0x1
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        SUB       A, S:?b0
??getAddressFromAT_3:
        ADD       SP, #0x80
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
HW_ModuleReset:
        LD        A, #0x1
        CALLF     SetNB_IO_RESETGpio
        LDW       X, #0x1f4
        CALLF     delay_ms
        CLR       A
        CALLF     SetNB_IO_RESETGpio
        CALLF     ModuleResetInit
        MOV       L:Moudleinfo + 74, #0x0
        MOV       L:Moudleinfo + 70, #0x0
        MOV       L:Moudleinfo + 71, #0x0
        MOV       L:Moudleinfo + 72, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
reset_module_handle:
        CALLF     ModuleResetInit
        MOV       L:Moudleinfo + 74, #0x0
        MOV       L:Moudleinfo + 70, #0x0
        MOV       L:Moudleinfo + 71, #0x0
        MOV       L:Moudleinfo + 72, #0x0
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0xb
        LDW       Y, #0x8
        LDW       X, #?_3
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
module_at_valid_handle:
        MOV       L:module_at_invalid_time, #0x0
        CLRW      X
        CALLF     set_sleep_counter_max
        MOV       L:AtDelayTime, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
module_at_invalid_handle:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, L:module_at_invalid_time
        ADD       A, #0x1
        LD        L:module_at_invalid_time, A
        LD        A, S:?b8
        CP        A, L:module_at_invalid_time
        JRNC      L:??module_at_invalid_handle_0
        MOV       L:module_at_invalid_time, #0x0
        CALLF     reset_module_handle
??module_at_invalid_handle_0:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ComputeTime:
        LDW       S:?w0, X
        LDW       X, S:?w0
        ADDW      X, #0x4
        LDW       X, (X)
        INCW      X
        LDW       Y, X
        LDW       X, S:?w0
        ADDW      X, #0x4
        LDW       (X), Y
        LDW       X, S:?w0
        ADDW      X, #0x4
        LDW       X, (X)
        LD        A, XL
        AND       A, #0xf
        CP        A, #0xa
        JRC       L:??ComputeTime_0
        LDW       X, S:?w0
        ADDW      X, #0x4
        LDW       X, (X)
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        ADDW      X, #0x10
        LDW       Y, X
        LDW       X, S:?w0
        ADDW      X, #0x4
        LDW       (X), Y
??ComputeTime_0:
        LDW       X, S:?w0
        ADDW      X, #0x4
        LDW       X, (X)
        CPW       X, #0x24
        JRSGE     ??lb_31
        JP        L:??ComputeTime_1
??lb_31:
        LDW       X, S:?w0
        ADDW      X, #0x4
        LDW       Y, X
        CLRW      X
        LDW       (Y), X
        LDW       X, S:?w0
        ADDW      X, #0x6
        LDW       X, (X)
        INCW      X
        LDW       Y, X
        LDW       X, S:?w0
        ADDW      X, #0x6
        LDW       (X), Y
        LDW       X, S:?w0
        ADDW      X, #0x6
        LDW       X, (X)
        LD        A, XL
        AND       A, #0xf
        CP        A, #0xa
        JRC       L:??ComputeTime_2
        LDW       X, S:?w0
        ADDW      X, #0x6
        LDW       X, (X)
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        ADDW      X, #0x10
        LDW       Y, X
        LDW       X, S:?w0
        ADDW      X, #0x6
        LDW       (X), Y
??ComputeTime_2:
        LDW       X, S:?w0
        ADDW      X, #0x8
        LDW       X, (X)
        DECW      X
        JREQ      L:??ComputeTime_3
        DECW      X
        JREQ      L:??ComputeTime_4
        DECW      X
        JREQ      L:??ComputeTime_3
        SUBW      X, #0x2
        JREQ      L:??ComputeTime_3
        SUBW      X, #0x2
        JREQ      L:??ComputeTime_3
        DECW      X
        JREQ      L:??ComputeTime_3
        SUBW      X, #0x2
        JREQ      L:??ComputeTime_3
        SUBW      X, #0x2
        JREQ      L:??ComputeTime_3
        JRA       L:??ComputeTime_5
??ComputeTime_3:
        LD        A, #0x31
        LD        S:?b2, A
        JRA       L:??ComputeTime_6
??ComputeTime_4:
        LDW       X, S:?w0
        ADDW      X, #0xa
        LDW       X, (X)
        LDW       Y, #0x4
        CALLF     L:?smod16_y_x_y
        TNZW      Y
        JRNE      L:??ComputeTime_7
        LD        A, #0x29
        LD        S:?b2, A
        JRA       L:??ComputeTime_8
??ComputeTime_7:
        LD        A, #0x28
        LD        S:?b2, A
??ComputeTime_8:
        JRA       L:??ComputeTime_6
??ComputeTime_5:
        LD        A, #0x30
        LD        S:?b2, A
??ComputeTime_6:
        LDW       X, S:?w0
        ADDW      X, #0x6
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        CPW       X, (Y)
        JRSGE     L:??ComputeTime_1
        LDW       X, S:?w0
        ADDW      X, #0x6
        LDW       Y, X
        CLRW      X
        INCW      X
        LDW       (Y), X
        LDW       X, S:?w0
        ADDW      X, #0x8
        LDW       X, (X)
        INCW      X
        LDW       Y, X
        LDW       X, S:?w0
        ADDW      X, #0x8
        LDW       (X), Y
        LDW       X, S:?w0
        ADDW      X, #0x8
        LDW       X, (X)
        LD        A, XL
        AND       A, #0xf
        CP        A, #0xa
        JRC       L:??ComputeTime_1
        LDW       X, S:?w0
        ADDW      X, #0x8
        LDW       X, (X)
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        ADDW      X, #0x10
        LDW       Y, X
        LDW       X, S:?w0
        ADDW      X, #0x8
        LDW       (X), Y
        LDW       X, S:?w0
        ADDW      X, #0x8
        LDW       X, (X)
        CPW       X, #0xd
        JRSLT     L:??ComputeTime_1
        LDW       X, S:?w0
        ADDW      X, #0x8
        LDW       Y, X
        CLRW      X
        INCW      X
        LDW       (Y), X
        LDW       X, S:?w0
        ADDW      X, #0xa
        LDW       X, (X)
        INCW      X
        LDW       Y, X
        LDW       X, S:?w0
        ADDW      X, #0xa
        LDW       (X), Y
??ComputeTime_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Rec_cclk:
        CALLF     L:?push_l2
        PUSH      S:?b12
        SUB       SP, #0x1e
        LDW       S:?w4, X
        CLR       S:?b10
        LDW       X, S:?w4
        CALLF     strlen
        LD        A, XL
        LD        S:?b12, A
        CLR       A
        LD        S:?b11, A
??Rec_cclk_0:
        LD        A, S:?b11
        CP        A, #0x7
        JRNC      L:??Rec_cclk_1
??Rec_cclk_2:
        LD        A, S:?b10
        CP        A, S:?b12
        JRNC      L:??Rec_cclk_3
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        LD        A, (X)
        CP        A, #0x30
        JRSLT     L:??Rec_cclk_4
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        LD        A, (X)
        CP        A, #0x3a
        JRSGE     L:??Rec_cclk_4
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        CALLF     GetIntFromBuf
        LD        A, XL
        CLRW      X
        EXG       A, XL
        LD        A, S:?b11
        EXG       A, XL
        LDW       S:?w0, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w0
        LD        (X), A
        LD        A, S:?b10
        ADD       A, #0x2
        LD        S:?b10, A
        JRA       L:??Rec_cclk_3
??Rec_cclk_4:
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??Rec_cclk_2
??Rec_cclk_3:
        LD        A, S:?b11
        ADD       A, #0x1
        LD        S:?b11, A
        JRA       L:??Rec_cclk_0
??Rec_cclk_1:
        LD        A, (0x1,SP)
        CP        A, #0x12
        JRNC      L:??Rec_cclk_5
        CLR       A
        JP        L:??Rec_cclk_6
??Rec_cclk_5:
        LD        A, (0x1,SP)
        CALLF     BinToBcd
        CLRW      X
        LD        XL, A
        LDW       (0x13,SP), X
        LD        A, (0x2,SP)
        CALLF     BinToBcd
        CLRW      X
        LD        XL, A
        LDW       (0x11,SP), X
        LD        A, (0x3,SP)
        CALLF     BinToBcd
        CLRW      X
        LD        XL, A
        LDW       (0xf,SP), X
        LD        A, (0x4,SP)
        CALLF     BinToBcd
        CLRW      X
        LD        XL, A
        LDW       (0xd,SP), X
        LD        A, (0x5,SP)
        CALLF     BinToBcd
        CLRW      X
        LD        XL, A
        LDW       (0xb,SP), X
        LD        A, (0x6,SP)
        CALLF     BinToBcd
        CLRW      X
        LD        XL, A
        LDW       (0x9,SP), X
        CLR       A
        LD        S:?b10, A
??Rec_cclk_7:
        LD        A, S:?b10
        CP        A, #0x8
        JRNC      L:??Rec_cclk_8
        LDW       X, SP
        ADDW      X, #0x9
        CALLF     ComputeTime
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??Rec_cclk_7
??Rec_cclk_8:
        LD        A, (0x14,SP)
        CALLF     BcdToBin
        LD        (0x1,SP), A
        LD        A, (0x12,SP)
        CALLF     BcdToBin
        LD        (0x2,SP), A
        LD        A, (0x10,SP)
        CALLF     BcdToBin
        LD        (0x3,SP), A
        LD        A, (0xe,SP)
        CALLF     BcdToBin
        LD        (0x4,SP), A
        LD        A, (0xc,SP)
        CALLF     BcdToBin
        LD        (0x5,SP), A
        LD        A, (0xa,SP)
        CALLF     BcdToBin
        LD        (0x6,SP), A
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     set_date
        LDW       X, SP
        ADDW      X, #0x4
        CALLF     set_time
        CALLF     get_rtc_time
        MOV       L:net_link_cclk_flag, #0x1
        CALLF     module_at_valid_handle
        CLR       A
??Rec_cclk_6:
        ADD       SP, #0x1e
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Uart1RevHandle:
??Uart1RevHandle_0:
        LD        A, L:uart_rx_write
        CP        A, L:uart_rx_read
        JRNE      L:??Uart1RevHandle_1
        JRA       L:??Uart1RevHandle_2
??Uart1RevHandle_1:
        LD        A, L:rev_NB_data_flag
        CP        A, #0x1
        JRNE      L:??Uart1RevHandle_3
        JRA       L:??Uart1RevHandle_2
??Uart1RevHandle_3:
        LD        A, L:uart_rx_read
        CLRW      X
        LD        XL, A
        LD        A, (L:uart_rx,X)
        LD        S:?b0, A
        LD        A, L:uart_rx_read
        CLRW      X
        LD        XL, A
        INCW      X
        LDW       Y, #0xc8
        CALLF     L:?smod16_y_x_y
        LD        A, YL
        LD        L:uart_rx_read, A
        LDW       X, L:AtCommRecLen
        LD        A, S:?b0
        LD        (L:AtComRecBuf,X), A
        CLRW      X
        LDW       L:NB_module_error_cnt, X
        LDW       X, L:AtCommRecLen
        CPW       X, #0x44b
        JRNC      L:??Uart1RevHandle_4
        LDW       X, L:AtCommRecLen
        INCW      X
        LDW       L:AtCommRecLen, X
??Uart1RevHandle_4:
        LD        A, S:?b0
        CP        A, #0xa
        JRNE      L:??Uart1RevHandle_0
        LDW       X, L:AtCommRecLen
        CLR       A
        LD        (L:AtComRecBuf,X), A
        LDW       X, L:AtCommRecLen
        CPW       X, #0x3
        JRC       L:??Uart1RevHandle_5
        MOV       L:rev_NB_data_flag, #0x1
        JRA       L:??Uart1RevHandle_0
??Uart1RevHandle_5:
        CLRW      X
        LDW       L:AtCommRecLen, X
        JRA       L:??Uart1RevHandle_0
??Uart1RevHandle_2:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetNBplantformIPandPORT:
        SUB       SP, #0x16
        LDW       Y, #?_4
        LDW       X, SP
        ADDW      X, #0x7
        PUSHW     X
        LD        A, #0x10
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       Y, #?_5
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x6
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       X, #0xf
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, #Moudleinfo + 102
        CALLF     memset
        LDW       X, #0x5
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, #Moudleinfo + 118
        CALLF     memset
        MOV       S:?b0, #0xf
        LDW       X, SP
        ADDW      X, #0x7
        LD        A, #0x13
        CALLF     hw_eeprom_read_bytes
        MOV       S:?b0, #0x5
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x22
        CALLF     hw_eeprom_read_bytes
        LDW       X, #0xf
        LDW       S:?w0, X
        LDW       Y, SP
        ADDW      Y, #0x7
        LDW       X, #Moudleinfo + 102
        CALLF     memcmp
        TNZW      X
        JRNE      L:??GetNBplantformIPandPORT_0
        LDW       X, #0xd
        LDW       S:?w0, X
        LDW       Y, #?_6
        LDW       X, #Moudleinfo + 102
        CALLF     memcpy
        LDW       X, #0x5
        LDW       S:?w0, X
        LDW       Y, #?_7
        LDW       X, #Moudleinfo + 118
        CALLF     memcpy
        JRA       L:??GetNBplantformIPandPORT_1
??GetNBplantformIPandPORT_0:
        LDW       X, SP
        ADDW      X, #0x7
        CALLF     strlen
        LDW       S:?w0, X
        LDW       Y, SP
        ADDW      Y, #0x7
        LDW       X, #Moudleinfo + 102
        CALLF     memcpy
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        LDW       S:?w0, X
        LDW       Y, SP
        ADDW      Y, #0x1
        LDW       X, #Moudleinfo + 118
        CALLF     memcpy
??GetNBplantformIPandPORT_1:
        ADD       SP, #0x16
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SetNoDataTimeCount:
        LD        L:NoDataTimeCount, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SetReSendDataTime:
        LDW       L:Moudleinfo + 94, X
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
NetBreakHandle:
        MOV       L:ReSndCount, #0x0
        MOV       L:Moudleinfo + 75, #0x0
        MOV       L:Moudleinfo + 78, #0x0
        MOV       L:Moudleinfo + 97, #0x0
        MOV       L:Moudleinfo + 98, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
RecAtComFormMoudle:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        PUSH      S:?b14
        SUB       SP, #0x20
        CLR       S:?b13
        CLR       S:?b12
        LD        A, L:rev_NB_data_flag
        CP        A, #0x0
        JRNE      ??lb_5
        JP        L:??RecAtComFormMoudle_0
??lb_5:
        MOV       L:g_at_no_response, #0x0
        LDW       X, #0x5
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_8
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_1
        LD        A, L:SendId
        CP        A, #0xc
        JRNE      L:??RecAtComFormMoudle_2
        LD        A, L:ReSndCount
        CP        A, #0x0
        JREQ      L:??RecAtComFormMoudle_3
        MOV       L:Moudleinfo + 67, #0x0
        LDW       X, #0x258
        CALLF     SetReSendDataTime
        JRA       L:??RecAtComFormMoudle_3
??RecAtComFormMoudle_2:
        LD        A, L:SendId
        CP        A, #0x14
        JRNE      L:??RecAtComFormMoudle_4
        MOV       L:Moudleinfo + 67, #0x0
        MOV       L:Moudleinfo + 85, #0x1
        JRA       L:??RecAtComFormMoudle_3
??RecAtComFormMoudle_4:
        LD        A, L:SendId
        CP        A, #0x1f
        JRNE      L:??RecAtComFormMoudle_3
        MOV       L:Moudleinfo + 67, #0x0
        MOV       L:Moudleinfo + 99, #0x1
        CALLF     NetBreakHandle
        MOV       L:tcp_had_linked_flag, #0x0
??RecAtComFormMoudle_3:
        LD        A, L:SendDataErrorTime
        ADD       A, #0x1
        LD        L:SendDataErrorTime, A
        LD        A, L:SendDataErrorTime
        CP        A, #0xb
        JRC       L:??RecAtComFormMoudle_5
        MOV       L:SendDataErrorTime, #0x0
        CALLF     reset_module_handle
        JRA       L:??RecAtComFormMoudle_5
??RecAtComFormMoudle_1:
        MOV       L:SendDataErrorTime, #0x0
??RecAtComFormMoudle_5:
        LDW       X, #0x9
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_9
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_6
        MOV       L:Moudleinfo + 81, #0x1
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_6:
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_10
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_8
        LDW       X, #AtComRecBuf + 6
        CALLF     Rec_cclk
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_8:
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_11
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_9
        LDW       X, L:WNip
        CALLF     strlen
        LDW       S:?w0, X
        LDW       Y, L:WNip
        LDW       X, #AtComRecBuf + 6
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_10
        LDW       X, #0xc8
        CALLF     SetReSendDataTime
        MOV       L:Moudleinfo + 80, #0x1
        MOV       L:Moudleinfo + 81, #0x1
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_10:
        MOV       L:Moudleinfo + 70, #0x0
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_9:
        LDW       X, #0x8
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_12
        CALLF     memcmp
        TNZW      X
        JREQ      ??lb_6
        JP        L:??RecAtComFormMoudle_11
??lb_6:
        LDW       Y, #?_13
        LDW       X, #AtComRecBuf
        CALLF     strstr
        LDW       S:?w6, X
        LDW       X, S:?w6
        TNZW      X
        JRNE      ??lb_7
        JP        L:??RecAtComFormMoudle_7
??lb_7:
        LDW       X, S:?w6
        INCW      X
        LDW       S:?w6, X
        LDW       Y, #?_14
        LDW       X, SP
        ADDW      X, #0x3
        CALLF     sprintf
        LDW       X, SP
        ADDW      X, #0x3
        CALLF     strlen
        LDW       S:?w5, X
??RecAtComFormMoudle_12:
        LD        A, [S:?w6.w]
        CP        A, #0xd
        JREQ      L:??RecAtComFormMoudle_13
        LDW       X, SP
        ADDW      X, #0x3
        ADDW      X, S:?w5
        LD        A, [S:?w6.w]
        LD        (X), A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        LDW       X, S:?w6
        INCW      X
        LDW       S:?w6, X
        LDW       X, S:?w5
        CPW       X, #0x1f
        JRC       L:??RecAtComFormMoudle_12
??RecAtComFormMoudle_13:
        LDW       X, SP
        ADDW      X, #0x3
        ADDW      X, S:?w5
        LD        A, #0xd
        LD        (X), A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        LDW       X, SP
        ADDW      X, #0x3
        ADDW      X, S:?w5
        LD        A, #0xa
        LD        (X), A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        LDW       X, SP
        ADDW      X, #0x3
        ADDW      X, S:?w5
        CLR       A
        LD        (X), A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x1e
        MOV       L:Moudleinfo + 67, #0x1
        LDW       X, SP
        ADDW      X, #0x3
        CALLF     strlen
        LDW       Y, X
        LDW       X, SP
        ADDW      X, #0x3
        CALLF     UART1_SendStr
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_11:
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_15
        CALLF     memcmp
        TNZW      X
        JREQ      ??lb_8
        JP        L:??RecAtComFormMoudle_14
??lb_8:
        LDW       X, #AtComRecBuf + 6
        CALLF     GetIntFromBuf
        LDW       (0x1,SP), X
        CLRW      X
        LDW       S:?w4, X
??RecAtComFormMoudle_15:
        LD        A, #0x2c
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_16
        LD        A, #0xd
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_16
        LD        A, #0xa
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_16
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JRA       L:??RecAtComFormMoudle_15
??RecAtComFormMoudle_16:
        LD        A, #0x2c
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      ??lb_9
        JP        L:??RecAtComFormMoudle_7
??lb_9:
        CLRW      X
        LDW       S:?w5, X
??RecAtComFormMoudle_17:
        LDW       X, S:?w5
        CPW       X, (0x1,SP)
        JRNC      L:??RecAtComFormMoudle_18
        LDW       X, S:?w5
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #AtComRecBuf + 1
        CALLF     AciiToHex
        LDW       X, S:?w5
        LD        (L:AtComRecBuf,X), A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??RecAtComFormMoudle_17
??RecAtComFormMoudle_18:
        LDW       Y, (0x1,SP)
        LDW       X, #AtComRecBuf
        CALLF     ProtoDataAnalyze
        LDW       S:?w5, X
        LDW       X, (0x1,SP)
        SUBW      X, S:?w5
        CPW       X, #0x6
        JRNC      ??lb_10
        JP        L:??RecAtComFormMoudle_7
??lb_10:
        LDW       X, S:?w5
        TNZW      X
        JRNE      ??lb_11
        JP        L:??RecAtComFormMoudle_7
??lb_11:
        LDW       Y, (0x1,SP)
        SUBW      Y, S:?w5
        LDW       X, S:?w5
        ADDW      X, #AtComRecBuf
        CALLF     ProtoDataAnalyze
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_14:
        LDW       X, #0x5
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_16
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_19
        LD        A, L:SendId
        CP        A, #0x0
        JREQ      ??lb_12
        JP        L:??RecAtComFormMoudle_7
??lb_12:
        MOV       L:Moudleinfo + 100, #0x1
        LDW       X, #AtComRecBuf + 5
        CALLF     GetIntFromBuf
        LD        A, XL
        LD        L:Moudleinfo, A
        LD        A, L:Moudleinfo
        CP        A, #0x20
        JRNC      ??lb_13
        JP        L:??RecAtComFormMoudle_7
??lb_13:
        MOV       L:Moudleinfo, #0x0
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_19:
        LDW       X, #0x9
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_17
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_20
        LDW       Y, #?_13
        LDW       X, #AtComRecBuf
        CALLF     strstr
        LDW       S:?w6, X
        LDW       X, S:?w6
        TNZW      X
        JREQ      L:??RecAtComFormMoudle_21
        LDW       X, S:?w6
        ADDW      X, #0x2
        LDW       S:?w6, X
        CLRW      X
        LDW       S:?w4, X
??RecAtComFormMoudle_22:
        LD        A, [S:?w6.w]
        CP        A, #0xd
        JREQ      L:??RecAtComFormMoudle_21
        LDW       X, S:?w4
        ADDW      X, #Moudleinfo + 35
        LD        A, [S:?w6.w]
        LD        (X), A
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, S:?w6
        INCW      X
        LDW       S:?w6, X
        LDW       X, S:?w4
        CPW       X, #0x1f
        JRC       L:??RecAtComFormMoudle_22
??RecAtComFormMoudle_21:
        LDW       X, S:?w4
        ADDW      X, #Moudleinfo + 35
        CLR       A
        LD        (X), A
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_20:
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_18
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_23
        LDW       X, #0x8
        CPW       X, L:AtCommRecLen
        JRC       ??lb_14
        JP        L:??RecAtComFormMoudle_7
??lb_14:
        LDW       X, #0xf
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf + 6
        LDW       X, #Moudleinfo + 3
        CALLF     memcpy
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_23:
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_19
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_24
        LDW       X, #AtComRecBuf + 7
        CALLF     GetIntFromBuf
        LDW       S:?w4, X
        MOV       L:Moudleinfo + 83, #0x1
        LDW       X, S:?w4
        CPW       X, #0x8
        JRNE      L:??RecAtComFormMoudle_25
        LD        A, L:Moudleinfo + 101
        CP        A, #0x0
        JREQ      L:??RecAtComFormMoudle_26
??RecAtComFormMoudle_25:
        LDW       X, S:?w4
        CPW       X, #0x5
        JRNE      L:??RecAtComFormMoudle_27
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JRNE      L:??RecAtComFormMoudle_27
??RecAtComFormMoudle_26:
        MOV       L:Moudleinfo + 84, #0x1
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_27:
        MOV       L:Moudleinfo + 70, #0x0
        MOV       L:Moudleinfo + 84, #0x0
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_24:
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_20
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_28
        LDW       X, #AtComRecBuf + 6
        CALLF     GetIntFromBuf
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0x1
        JRNE      L:??RecAtComFormMoudle_29
        MOV       L:Moudleinfo + 72, #0x1
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_29:
        MOV       L:Moudleinfo + 71, #0x0
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_28:
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_21
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_30
        LD        A, #0x1
        LDW       X, #AtComRecBuf
        CALLF     getAddressFromAT
        CLRW      X
        LD        XL, A
        LDW       S:?w4, X
        LDW       X, S:?w4
        TNZW      X
        JRNE      ??lb_15
        JP        L:??RecAtComFormMoudle_7
??lb_15:
        LDW       X, S:?w4
        ADDW      X, #AtComRecBuf
        CALLF     GetIntFromBuf
        LDW       S:?w5, X
        LDW       X, S:?w5
        CPW       X, #0x1
        JREQ      ??lb_16
        JP        L:??RecAtComFormMoudle_7
??lb_16:
        MOV       L:Moudleinfo + 77, #0x1
        CALLF     module_at_valid_handle
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_30:
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_22
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_31
        LDW       X, #AtComRecBuf + 7
        CALLF     GetIntFromBuf
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0x1
        JREQ      ??lb_17
        JP        L:??RecAtComFormMoudle_7
??lb_17:
        MOV       L:Moudleinfo + 78, #0x1
        CALLF     module_at_valid_handle
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_31:
        LDW       X, #0xc
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_23
        CALLF     memcmp
        TNZW      X
        JRNE      ??lb_18
        JP        L:??RecAtComFormMoudle_7
??lb_18:
        LDW       X, #0xc
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_24
        CALLF     memcmp
        TNZW      X
        JRNE      ??lb_19
        JP        L:??RecAtComFormMoudle_7
??lb_19:
        LDW       X, #0x8
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_25
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_32
        LD        A, #0x1
        LDW       X, #AtComRecBuf
        CALLF     getAddressFromAT
        CLRW      X
        LD        XL, A
        LDW       S:?w4, X
        LDW       X, S:?w4
        TNZW      X
        JRNE      ??lb_20
        JP        L:??RecAtComFormMoudle_7
??lb_20:
        LDW       X, S:?w4
        ADDW      X, #AtComRecBuf
        CALLF     GetIntFromBuf
        LDW       S:?w5, X
        LD        A, L:load_continuous_flag
        CP        A, #0x0
        JREQ      ??lb_21
        JP        L:??RecAtComFormMoudle_7
??lb_21:
        LD        A, L:tcp_sequence
        CLRW      X
        LD        XL, A
        CPW       X, S:?w5
        JREQ      ??lb_22
        JP        L:??RecAtComFormMoudle_7
??lb_22:
        MOV       L:ReSndCount, #0x0
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_32:
        LDW       X, #0x8
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_26
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_33
        LDW       X, #AtComRecBuf + 9
        CALLF     GetIntFromBuf
        LDW       S:?w4, X
        LD        A, L:socket_id
        CLRW      X
        LD        XL, A
        CPW       X, S:?w4
        JREQ      ??lb_23
        JP        L:??RecAtComFormMoudle_7
??lb_23:
        MOV       L:tcp_had_linked_flag, #0x0
        CALLF     NetBreakHandle
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_33:
        LDW       X, #0x4
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_27
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_34
        LDW       X, #AtComRecBuf + 4
        CALLF     GetIntFromBuf
        LDW       L:Moudleinfo + 88, X
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_34:
        LDW       X, #0xd
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_28
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_35
        LDW       X, #AtComRecBuf + 13
        CALLF     GetIntFromBuf
        LDW       L:Moudleinfo + 90, X
        MOV       L:Moudleinfo + 79, #0x1
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_35:
        LDW       X, #0x4
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_29
        CALLF     memcmp
        TNZW      X
        JRNE      L:??RecAtComFormMoudle_36
        LDW       X, #AtComRecBuf + 4
        CALLF     GetIntFromBuf
        LDW       L:Moudleinfo + 92, X
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_36:
        LD        A, L:AtComRecBuf
        CP        A, #0x30
        JRSGE     ??lb_24
        JP        L:??RecAtComFormMoudle_37
??lb_24:
        LD        A, L:AtComRecBuf
        CP        A, #0x3a
        JRSLT     ??lb_25
        JP        L:??RecAtComFormMoudle_37
??lb_25:
        LD        A, L:SendId
        CP        A, #0x3
        JRNE      L:??RecAtComFormMoudle_38
        LDW       X, #0xf
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #Moudleinfo + 19
        CALLF     memcpy
        LD        A, L:Moudleinfo + 22
        CALLF     AsctoBin
        LD        S:?b14, A
        LD        A, L:Moudleinfo + 23
        CALLF     AsctoBin
        CLRW      X
        LD        XL, A
        LDW       S:?w1, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b14
        EXG       A, XL
        LDW       Y, X
        LDW       X, #0xa
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, S:?w1
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0xb
        JREQ      L:??RecAtComFormMoudle_39
        LDW       X, S:?w4
        CPW       X, #0x3
        JREQ      L:??RecAtComFormMoudle_39
        LDW       X, S:?w4
        CPW       X, #0x5
        JRNE      L:??RecAtComFormMoudle_40
??RecAtComFormMoudle_39:
        MOV       L:Moudleinfo + 101, #0x2
        MOV       L:Moudleinfo + 85, #0x0
        MOV       L:Moudleinfo + 80, #0x0
        MOV       L:Moudleinfo + 97, #0x1
        MOV       L:Moudleinfo + 98, #0x1
        JRA       L:??RecAtComFormMoudle_38
??RecAtComFormMoudle_40:
        MOV       L:Moudleinfo + 101, #0x0
        MOV       L:Moudleinfo + 85, #0x1
        MOV       L:Moudleinfo + 80, #0x1
        MOV       L:Moudleinfo + 97, #0x0
        MOV       L:Moudleinfo + 98, #0x0
??RecAtComFormMoudle_38:
        LD        A, L:SendId
        CP        A, #0x10
        JREQ      ??lb_26
        JP        L:??RecAtComFormMoudle_41
??lb_26:
        LDW       X, #AtComRecBuf
        CALLF     GetIntFromBuf
        LDW       (0x1,SP), X
        CLRW      X
        LDW       S:?w4, X
??RecAtComFormMoudle_42:
        LD        A, #0x2c
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_43
        LD        A, #0xd
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_43
        LD        A, #0xa
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_43
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JRA       L:??RecAtComFormMoudle_42
??RecAtComFormMoudle_43:
        LD        A, #0x2c
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JRNE      L:??RecAtComFormMoudle_41
        CLRW      X
        LDW       S:?w5, X
??RecAtComFormMoudle_44:
        LDW       X, S:?w5
        CPW       X, (0x1,SP)
        JRNC      L:??RecAtComFormMoudle_45
        LDW       X, S:?w5
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #AtComRecBuf + 1
        CALLF     AciiToHex
        LDW       X, S:?w5
        LD        (L:AtComRecBuf,X), A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??RecAtComFormMoudle_44
??RecAtComFormMoudle_45:
        LDW       Y, (0x1,SP)
        LDW       X, #AtComRecBuf
        CALLF     ProtoDataAnalyze
        LDW       S:?w5, X
        LDW       X, (0x1,SP)
        SUBW      X, S:?w5
        CPW       X, #0x6
        JRC       L:??RecAtComFormMoudle_46
        LDW       X, S:?w5
        TNZW      X
        JREQ      L:??RecAtComFormMoudle_46
        LDW       Y, (0x1,SP)
        SUBW      Y, S:?w5
        LDW       X, S:?w5
        ADDW      X, #AtComRecBuf
        CALLF     ProtoDataAnalyze
??RecAtComFormMoudle_46:
        MOV       L:Moudleinfo + 67, #0x0
??RecAtComFormMoudle_41:
        LD        A, L:SendId
        CP        A, #0x1b
        JRNE      L:??RecAtComFormMoudle_47
        LDW       X, L:AtCommRecLen
        CPW       X, #0x3
        JRNE      L:??RecAtComFormMoudle_47
        LD        A, L:AtComRecBuf
        ADD       A, #0xd0
        LD        L:socket_id, A
??RecAtComFormMoudle_47:
        LD        A, L:SendId
        CP        A, #0x1e
        JREQ      ??lb_27
        JP        L:??RecAtComFormMoudle_7
??lb_27:
        LD        A, #0x3
        LDW       X, #AtComRecBuf
        CALLF     getAddressFromAT
        CLRW      X
        LD        XL, A
        LDW       S:?w4, X
        LDW       X, S:?w4
        TNZW      X
        JRNE      ??lb_28
        JP        L:??RecAtComFormMoudle_7
??lb_28:
        LDW       X, S:?w4
        ADDW      X, #AtComRecBuf
        CALLF     GetIntFromBuf
        LDW       (0x1,SP), X
??RecAtComFormMoudle_48:
        LD        A, #0x2c
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_49
        LD        A, #0xd
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_49
        LD        A, #0xa
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      L:??RecAtComFormMoudle_49
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JRA       L:??RecAtComFormMoudle_48
??RecAtComFormMoudle_49:
        LD        A, #0x2c
        LDW       X, S:?w4
        CP        A, (L:AtComRecBuf,X)
        JREQ      ??lb_29
        JP        L:??RecAtComFormMoudle_7
??lb_29:
        CLRW      X
        LDW       S:?w5, X
??RecAtComFormMoudle_50:
        LDW       X, S:?w5
        CPW       X, (0x1,SP)
        JRNC      L:??RecAtComFormMoudle_51
        LDW       X, S:?w5
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #AtComRecBuf + 1
        CALLF     AciiToHex
        LDW       X, S:?w5
        LD        (L:AtComRecBuf,X), A
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??RecAtComFormMoudle_50
??RecAtComFormMoudle_51:
        LDW       Y, (0x1,SP)
        LDW       X, #AtComRecBuf
        CALLF     ProtoDataAnalyze
        LDW       S:?w5, X
        LDW       X, (0x1,SP)
        SUBW      X, S:?w5
        CPW       X, #0x6
        JRC       L:??RecAtComFormMoudle_52
        LDW       X, S:?w5
        TNZW      X
        JREQ      L:??RecAtComFormMoudle_52
        LDW       Y, (0x1,SP)
        SUBW      Y, S:?w5
        LDW       X, S:?w5
        ADDW      X, #AtComRecBuf
        CALLF     ProtoDataAnalyze
??RecAtComFormMoudle_52:
        MOV       L:Moudleinfo + 67, #0x0
        JP        L:??RecAtComFormMoudle_7
??RecAtComFormMoudle_37:
        LDW       X, #0x2
        LDW       S:?w0, X
        LDW       Y, #AtComRecBuf
        LDW       X, #?_30
        CALLF     memcmp
        TNZW      X
        JREQ      ??lb_30
        JP        L:??RecAtComFormMoudle_7
??lb_30:
        MOV       L:Moudleinfo + 68, #0x1
        LD        A, L:SendId
        CP        A, #0xc
        JRNE      L:??RecAtComFormMoudle_53
        MOV       L:Moudleinfo + 86, #0x0
??RecAtComFormMoudle_53:
        LD        A, L:SendId
        CP        A, #0x7
        JRNE      L:??RecAtComFormMoudle_54
        MOV       L:Moudleinfo + 80, #0x1
??RecAtComFormMoudle_54:
        LD        A, L:SendId
        CP        A, #0x8
        JRNE      L:??RecAtComFormMoudle_55
        MOV       L:Moudleinfo + 82, #0x1
??RecAtComFormMoudle_55:
        LD        A, L:SendId
        CP        A, #0x4
        JRNE      L:??RecAtComFormMoudle_56
        MOV       L:Moudleinfo + 70, #0x1
??RecAtComFormMoudle_56:
        LD        A, L:SendId
        CP        A, #0x16
        JRNE      L:??RecAtComFormMoudle_57
        MOV       L:Moudleinfo + 74, #0x1
??RecAtComFormMoudle_57:
        LD        A, L:SendId
        CP        A, #0xd
        JRNE      L:??RecAtComFormMoudle_58
        MOV       L:Moudleinfo + 71, #0x1
??RecAtComFormMoudle_58:
        LD        A, L:SendId
        CP        A, #0xf
        JRNE      L:??RecAtComFormMoudle_59
        MOV       L:Moudleinfo + 73, #0x1
??RecAtComFormMoudle_59:
        LD        A, L:SendId
        CP        A, #0x17
        JRNE      L:??RecAtComFormMoudle_60
        MOV       L:Moudleinfo + 75, #0x1
        MOV       L:ppp_had_linked_flag, #0x1
??RecAtComFormMoudle_60:
        LD        A, L:SendId
        CP        A, #0x18
        JRNE      L:??RecAtComFormMoudle_61
        MOV       L:Moudleinfo + 76, #0x1
        MOV       L:ppp_had_linked_flag, #0x0
??RecAtComFormMoudle_61:
        LD        A, L:SendId
        CP        A, #0x6
        JRNE      L:??RecAtComFormMoudle_62
        MOV       L:Moudleinfo + 84, #0x1
??RecAtComFormMoudle_62:
        LD        A, L:SendId
        CP        A, #0xb
        JRNE      L:??RecAtComFormMoudle_63
        MOV       L:Moudleinfo + 81, #0x1
??RecAtComFormMoudle_63:
        LD        A, L:SendId
        CP        A, #0x14
        JRNE      L:??RecAtComFormMoudle_64
        MOV       L:Moudleinfo + 85, #0x1
??RecAtComFormMoudle_64:
        LD        A, L:SendId
        CP        A, #0x13
        JRNE      L:??RecAtComFormMoudle_65
        MOV       L:Moudleinfo + 69, #0x1
??RecAtComFormMoudle_65:
        LD        A, L:SendId
        CP        A, #0x20
        JRNE      L:??RecAtComFormMoudle_66
        MOV       L:Moudleinfo + 96, #0x1
??RecAtComFormMoudle_66:
        LD        A, L:SendId
        CP        A, #0x1b
        JRNE      L:??RecAtComFormMoudle_67
        MOV       L:Moudleinfo + 97, #0x1
??RecAtComFormMoudle_67:
        LD        A, L:SendId
        CP        A, #0x1c
        JRNE      L:??RecAtComFormMoudle_68
        MOV       L:Moudleinfo + 98, #0x1
        MOV       L:tcp_had_linked_flag, #0x1
        CLRW      X
        CALLF     SetReSendDataTime
??RecAtComFormMoudle_68:
        LD        A, L:SendId
        CP        A, #0x1f
        JRNE      L:??RecAtComFormMoudle_69
        MOV       L:Moudleinfo + 99, #0x1
        CALLF     NetBreakHandle
        MOV       L:tcp_had_linked_flag, #0x0
??RecAtComFormMoudle_69:
        MOV       L:Moudleinfo + 67, #0x0
??RecAtComFormMoudle_7:
        CLRW      X
        LDW       L:AtCommRecLen, X
        MOV       L:rev_NB_data_flag, #0x0
        JRA       L:??RecAtComFormMoudle_70
??RecAtComFormMoudle_0:
        LDW       X, L:NB_module_error_cnt
        INCW      X
        LDW       L:NB_module_error_cnt, X
??RecAtComFormMoudle_70:
        LDW       X, L:NB_module_error_cnt
        CPW       X, #0x3e8
        JRC       L:??RecAtComFormMoudle_71
        CLRW      X
        LDW       L:NB_module_error_cnt, X
        LDW       X, L:AtCommRecLen
        TNZW      X
        JREQ      L:??RecAtComFormMoudle_71
        CLRW      X
        LDW       L:AtCommRecLen, X
??RecAtComFormMoudle_71:
        ADD       SP, #0x20
        POP       S:?b14
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ModuleResetInit:
        LDW       X, #0x10
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, #Moudleinfo + 3
        CALLF     memset
        LDW       X, #0x10
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, #Moudleinfo + 19
        CALLF     memset
        MOV       L:Moudleinfo + 101, #0x3
        MOV       L:Moudleinfo + 70, #0x1
        MOV       L:Moudleinfo + 74, #0x1
        MOV       L:Moudleinfo + 71, #0x0
        MOV       L:Moudleinfo + 72, #0x0
        MOV       L:Moudleinfo + 73, #0x0
        MOV       L:Moudleinfo + 69, #0x0
        MOV       L:Moudleinfo + 76, #0x1
        MOV       L:Moudleinfo + 75, #0x0
        MOV       L:Moudleinfo + 81, #0x0
        MOV       L:Moudleinfo + 67, #0x0
        CLRW      X
        LDW       L:Moudleinfo + 94, X
        MOV       L:Moudleinfo + 96, #0x0
        MOV       L:Moudleinfo + 77, #0x0
        MOV       L:Moudleinfo + 79, #0x0
        MOV       L:NoDataTimeCount, #0x0
        LD        A, #0x1
        CALLF     set_net_state
        MOV       L:net_link_cclk_flag, #0x0
        MOV       L:tcp_had_linked_flag, #0x0
        CLRW      X
        LDW       L:ProAtLen, X
        CLRW      X
        LDW       L:AtCommRecLen, X
        MOV       L:uart_rx_read, #0x0
        MOV       L:uart_rx_write, #0x0
        CALLF     GetNBplantformIPandPORT
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetNetLinkState:
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JREQ      L:??GetNetLinkState_0
        LD        A, L:tcp_had_linked_flag
        CP        A, #0x0
        JREQ      L:??GetNetLinkState_1
??GetNetLinkState_0:
        LD        A, #0x1
        JRA       L:??GetNetLinkState_2
??GetNetLinkState_1:
        CLR       A
??GetNetLinkState_2:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
LinkNetTimeOutHandle:
        LD        A, L:NoDataTimeCount
        CP        A, #0x0
        JREQ      L:??LinkNetTimeOutHandle_0
        LD        A, L:NoDataTimeCount
        ADD       A, #0xff
        LD        L:NoDataTimeCount, A
??LinkNetTimeOutHandle_0:
        LD        A, L:NoDataTimeCount
        CP        A, #0x0
        JREQ      L:??LinkNetTimeOutHandle_1
        LD        A, L:Moudleinfo + 67
        CP        A, #0x0
        JRNE      L:??LinkNetTimeOutHandle_2
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JRNE      L:??LinkNetTimeOutHandle_2
        LD        A, L:Moudleinfo + 86
        CP        A, #0x0
        JRNE      L:??LinkNetTimeOutHandle_2
        BTJF      L:NoDataTimeCount, #0x0, L:??LinkNetTimeOutHandle_2
        LD        A, L:NoDataTimeCount
        CP        A, #0x1
        JRNE      L:??LinkNetTimeOutHandle_3
        LDW       Y, #0x1e
        LDW       X, #?_31
        CALLF     UART1_SendStr
        MOV       L:NoDataTimeCount, #0x0
        JRA       L:??LinkNetTimeOutHandle_2
??LinkNetTimeOutHandle_3:
        MOV       L:SendId, #0x10
        MOV       L:Moudleinfo + 67, #0x1
        MOV       L:Moudleinfo + 68, #0x0
        LDW       Y, #0x9
        LDW       X, #?_32
        CALLF     UART1_SendStr
??LinkNetTimeOutHandle_2:
        LDW       X, #0x10
        CALLF     set_sleep_counter_max
        JRA       L:??LinkNetTimeOutHandle_4
??LinkNetTimeOutHandle_1:
        LD        A, L:tcp_had_linked_flag
        CP        A, #0x0
        JREQ      L:??LinkNetTimeOutHandle_4
        MOV       L:ReSndCount, #0x0
        LD        A, #0x3
        CALLF     set_net_state
??LinkNetTimeOutHandle_4:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ModuleIniDisp:
        SUB       SP, #0x40
        LD        A, L:AtDelayTime
        CP        A, #0x0
        JREQ      L:??ModuleIniDisp_0
        CLR       A
        JP        L:??ModuleIniDisp_1
??ModuleIniDisp_0:
        LD        A, L:Moudleinfo + 67
        CP        A, #0x0
        JREQ      ??lb_4
        JP        L:??ModuleIniDisp_2
??lb_4:
        LDW       X, #Moudleinfo + 35
        CALLF     strlen
        TNZW      X
        JRNE      L:??ModuleIniDisp_3
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x1
        LDW       Y, #0x5
        LDW       X, #?_33
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_3:
        LDW       X, #Moudleinfo + 3
        CALLF     strlen
        TNZW      X
        JRNE      L:??ModuleIniDisp_5
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x2
        LDW       Y, #0xb
        LDW       X, #?_34
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_5:
        LDW       X, #Moudleinfo + 19
        CALLF     strlen
        TNZW      X
        JRNE      L:??ModuleIniDisp_6
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x3
        LDW       Y, #0x9
        LDW       X, #?_35
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_6:
        LD        A, L:Moudleinfo + 83
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_7
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x5
        LDW       Y, #0xb
        LDW       X, #?_36
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_7:
        LD        A, L:Moudleinfo + 85
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_8
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x14
        LDW       Y, #0xa
        LDW       X, #?_37
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_8:
        LD        A, L:Moudleinfo + 70
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_9
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x4
        LDW       Y, #0xb
        LDW       X, #?_38
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        MOV       L:AtDelayTime, #0x64
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_9:
        LD        A, L:Moudleinfo + 74
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_10
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x16
        LDW       Y, #0xe
        LDW       X, #?_39
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_10:
        LD        A, L:Moudleinfo + 84
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_11
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x6
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JRNE      L:??ModuleIniDisp_12
        LDW       Y, #0xc
        LDW       X, #?_40
        CALLF     UART1_SendStr
        JRA       L:??ModuleIniDisp_13
??ModuleIniDisp_12:
        LDW       Y, #0xc
        LDW       X, #?_41
        CALLF     UART1_SendStr
??ModuleIniDisp_13:
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_11:
        LD        A, L:Moudleinfo + 80
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_14
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x7
        PUSH      L:WNip + 1
        PUSH      L:WNip
        LDW       Y, #?_42
        LDW       X, SP
        ADDW      X, #0x3
        CALLF     sprintf
        ADD       SP, #0x2
        MOV       L:Moudleinfo + 67, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        LDW       Y, X
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     UART1_SendStr
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_14:
        LD        A, L:Moudleinfo + 71
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_15
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0xd
        LDW       Y, #0xb
        LDW       X, #?_43
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_15:
        LD        A, L:Moudleinfo + 72
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_16
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0xe
        LDW       Y, #0xa
        LDW       X, #?_44
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_16:
        LD        A, L:Moudleinfo + 75
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_17
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x17
        LDW       Y, #0xc
        LDW       X, #?_45
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_17:
        LD        A, L:Moudleinfo + 73
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_18
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0xf
        LDW       Y, #0xf
        LDW       X, #?_46
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_18:
        LD        A, L:Moudleinfo + 69
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_19
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x13
        MOV       L:Moudleinfo + 67, #0x1
        LDW       Y, #0x18
        LDW       X, #?_47
        CALLF     UART1_SendStr
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_19:
        LD        A, L:Moudleinfo + 96
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_20
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x20
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JRNE      L:??ModuleIniDisp_21
        LDW       Y, #0xe
        LDW       X, #?_48
        CALLF     UART1_SendStr
        JRA       L:??ModuleIniDisp_22
??ModuleIniDisp_21:
        LDW       Y, #0xe
        LDW       X, #?_49
        CALLF     UART1_SendStr
??ModuleIniDisp_22:
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleIniDisp_4
??ModuleIniDisp_20:
        LD        A, L:Moudleinfo + 77
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_23
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x9
        LDW       Y, #0xb
        LDW       X, #?_50
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        MOV       L:AtDelayTime, #0x32
        LD        A, #0x3c
        CALLF     module_at_invalid_handle
        JRA       L:??ModuleIniDisp_4
??ModuleIniDisp_23:
        LD        A, L:Moudleinfo + 78
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_24
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x19
        LDW       Y, #0xb
        LDW       X, #?_51
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        MOV       L:AtDelayTime, #0x32
        LD        A, #0x32
        CALLF     module_at_invalid_handle
        JRA       L:??ModuleIniDisp_4
??ModuleIniDisp_24:
        LD        A, L:Moudleinfo + 79
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_25
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x1a
        LDW       Y, #0xd
        LDW       X, #?_52
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JRA       L:??ModuleIniDisp_4
??ModuleIniDisp_25:
        LD        A, L:net_link_cclk_flag
        CP        A, #0x0
        JRNE      L:??ModuleIniDisp_26
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x15
        MOV       L:Moudleinfo + 67, #0x1
        MOV       L:AtDelayTime, #0xc8
        LDW       Y, #0xa
        LDW       X, #?_53
        CALLF     UART1_SendStr
        LD        A, #0xa
        CALLF     module_at_invalid_handle
        JRA       L:??ModuleIniDisp_4
??ModuleIniDisp_26:
        LD        A, #0x1
        JRA       L:??ModuleIniDisp_1
??ModuleIniDisp_4:
        LD        A, L:Moudleinfo + 67
        CP        A, #0x1
        JRNE      L:??ModuleIniDisp_2
        LD        A, L:g_at_no_response
        CP        A, #0xc8
        JRNC      L:??ModuleIniDisp_2
        LD        A, L:g_at_no_response
        ADD       A, #0x1
        LD        L:g_at_no_response, A
??ModuleIniDisp_2:
        CLR       A
??ModuleIniDisp_1:
        ADD       SP, #0x40
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ModuleNetLinkHandle:
        SUB       SP, #0x3c
        LDW       Y, #?_54
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x3c
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LD        A, L:g_system_reset_time
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_0
        LD        A, L:net_link_cclk_flag
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_1
??ModuleNetLinkHandle_0:
        JP        L:??ModuleNetLinkHandle_2
??ModuleNetLinkHandle_1:
        CALLF     GetNetLinkState
        CP        A, #0x1
        JRNE      L:??ModuleNetLinkHandle_3
        LD        A, L:Moudleinfo + 67
        CP        A, #0x0
        JREQ      ??lb_0
        JP        L:??ModuleNetLinkHandle_4
??lb_0:
        LDW       X, L:Moudleinfo + 94
        TNZW      X
        JREQ      ??lb_1
        JP        L:??ModuleNetLinkHandle_4
??lb_1:
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JRNE      L:??ModuleNetLinkHandle_5
        LD        A, L:Moudleinfo + 100
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_5
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x0
        MOV       L:Moudleinfo + 67, #0x1
        LDW       Y, #0x8
        LDW       X, #?_55
        CALLF     UART1_SendStr
        JP        L:??ModuleNetLinkHandle_4
??ModuleNetLinkHandle_5:
        LD        A, L:ReSndCount
        CP        A, #0x0
        JREQ      L:??ModuleNetLinkHandle_6
        CALLF     SendDataToNBmodule
        JP        L:??ModuleNetLinkHandle_4
??ModuleNetLinkHandle_6:
        CALLF     NetActiveHandle
        JP        L:??ModuleNetLinkHandle_4
??ModuleNetLinkHandle_3:
        LD        A, L:Moudleinfo + 67
        CP        A, #0x0
        JREQ      ??lb_2
        JP        L:??ModuleNetLinkHandle_4
??lb_2:
        LD        A, L:tcp_had_linked_flag
        CP        A, #0x0
        JREQ      ??lb_3
        JP        L:??ModuleNetLinkHandle_4
??lb_3:
        LD        A, L:Moudleinfo + 75
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_7
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x17
        LDW       Y, #0xc
        LDW       X, #?_45
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        JP        L:??ModuleNetLinkHandle_4
??ModuleNetLinkHandle_7:
        LD        A, L:Moudleinfo + 78
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_8
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x19
        LDW       Y, #0xb
        LDW       X, #?_51
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
        MOV       L:AtDelayTime, #0x32
        LD        A, #0x32
        CALLF     module_at_invalid_handle
        JP        L:??ModuleNetLinkHandle_4
??ModuleNetLinkHandle_8:
        LD        A, L:Moudleinfo + 100
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_9
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x0
        MOV       L:Moudleinfo + 67, #0x1
        LDW       Y, #0x8
        LDW       X, #?_55
        CALLF     UART1_SendStr
        JP        L:??ModuleNetLinkHandle_4
??ModuleNetLinkHandle_9:
        LD        A, L:Moudleinfo + 97
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_10
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x1b
        LDW       Y, #?_56
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     sprintf
        MOV       L:Moudleinfo + 67, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        LDW       Y, X
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     UART1_SendStr
        JRA       L:??ModuleNetLinkHandle_4
??ModuleNetLinkHandle_10:
        LD        A, L:Moudleinfo + 98
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_4
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x1c
        LD        A, L:g_had_link_manager
        CP        A, #0x0
        JRNE      L:??ModuleNetLinkHandle_11
        PUSH      #BYTE1(?_58)
        PUSH      #BYTE2(?_58)
        PUSH      #BYTE1(?_6)
        PUSH      #BYTE2(?_6)
        LD        A, L:socket_id
        CLRW      X
        LD        XL, A
        PUSHW     X
        LDW       Y, #?_57
        LDW       X, SP
        ADDW      X, #0x7
        CALLF     sprintf
        ADD       SP, #0x6
        JRA       L:??ModuleNetLinkHandle_12
??ModuleNetLinkHandle_11:
        PUSH      #BYTE1(Moudleinfo + 118)
        PUSH      #BYTE2(Moudleinfo + 118)
        PUSH      #BYTE1(Moudleinfo + 102)
        PUSH      #BYTE2(Moudleinfo + 102)
        LD        A, L:socket_id
        CLRW      X
        LD        XL, A
        PUSHW     X
        LDW       Y, #?_57
        LDW       X, SP
        ADDW      X, #0x7
        CALLF     sprintf
        ADD       SP, #0x6
??ModuleNetLinkHandle_12:
        MOV       L:Moudleinfo + 67, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        LDW       Y, X
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     UART1_SendStr
??ModuleNetLinkHandle_4:
??ModuleNetLinkHandle_2:
        ADD       SP, #0x3c
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ModuleNetBreakHandle:
        SUB       SP, #0x3c
        LDW       Y, #?_59
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x3c
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JREQ      L:??ModuleNetBreakHandle_0
        LD        A, L:Moudleinfo + 99
        CP        A, #0x0
        JRNE      L:??ModuleNetBreakHandle_1
        LD        A, L:socket_id
        CP        A, #0x10
        JRNC      L:??ModuleNetBreakHandle_2
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x1f
        LD        A, L:socket_id
        CLRW      X
        LD        XL, A
        PUSHW     X
        LDW       Y, #?_60
        LDW       X, SP
        ADDW      X, #0x3
        CALLF     sprintf
        ADD       SP, #0x2
        MOV       L:Moudleinfo + 67, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        LDW       Y, X
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     UART1_SendStr
        JRA       L:??ModuleNetBreakHandle_0
??ModuleNetBreakHandle_2:
        MOV       L:Moudleinfo + 99, #0x1
        JRA       L:??ModuleNetBreakHandle_0
??ModuleNetBreakHandle_1:
        LD        A, L:Moudleinfo + 76
        CP        A, #0x0
        JRNE      L:??ModuleNetBreakHandle_0
        MOV       L:Moudleinfo + 68, #0x0
        MOV       L:SendId, #0x18
        LDW       Y, #0xc
        LDW       X, #?_61
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 67, #0x1
??ModuleNetBreakHandle_0:
        CALLF     GetNetNeedLinkState
        CP        A, #0x0
        JREQ      L:??ModuleNetBreakHandle_3
        LD        A, L:net_link_cclk_flag
        CP        A, #0x0
        JREQ      L:??ModuleNetBreakHandle_3
        LD        A, #0x2
        CALLF     set_net_state
??ModuleNetBreakHandle_3:
        ADD       SP, #0x3c
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SendDataToNBmodule:
        CALLF     GetNetLinkState
        CP        A, #0x0
        JRNE      L:??SendDataToNBmodule_0
        JRA       L:??SendDataToNBmodule_1
??SendDataToNBmodule_0:
        LD        A, L:ReSndCount
        CP        A, #0x0
        JREQ      L:??SendDataToNBmodule_2
        LD        A, L:ReSndCount
        ADD       A, #0xff
        LD        L:ReSndCount, A
        LD        A, L:ReSndCount
        CP        A, #0x0
        JREQ      L:??SendDataToNBmodule_3
        MOV       L:Moudleinfo + 67, #0x1
        MOV       L:SendId, #0xc
        MOV       L:Moudleinfo + 68, #0x0
        LDW       X, #0x258
        CALLF     SetReSendDataTime
        LDW       Y, L:ProAtLen
        LDW       X, #ProSendbuf
        CALLF     UART1_SendStr
        MOV       L:Moudleinfo + 86, #0x1
        CLRW      X
        CALLF     set_sleep_counter_max
        LD        A, L:load_continuous_flag
        CP        A, #0x0
        JRNE      L:??SendDataToNBmodule_2
        LD        A, L:ReBackNetBag
        CP        A, #0x0
        JREQ      L:??SendDataToNBmodule_4
        LD        A, #0x6
        CALLF     SetNoDataTimeCount
        JRA       L:??SendDataToNBmodule_2
??SendDataToNBmodule_4:
        LD        A, #0x28
        CALLF     SetNoDataTimeCount
        JRA       L:??SendDataToNBmodule_2
??SendDataToNBmodule_3:
        LD        A, #0x3
        CALLF     set_net_state
??SendDataToNBmodule_2:
??SendDataToNBmodule_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SendProToNBmodule:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        PUSH      S:?b14
        PUSHW     X
        LDW       S:?w6, Y
        LD        S:?b14, A
        CLRW      X
        CALLF     set_sleep_counter_max
        TNZ       S:?b14
        JRNE      L:??SendProToNBmodule_0
        LD        A, #0x5a
        CALLF     SetNoDataTimeCount
??SendProToNBmodule_0:
        MOV       L:ReSndCount, #0x7
        LD        A, L:ReBackNetBag
        CP        A, #0x0
        JREQ      L:??SendProToNBmodule_1
        MOV       L:ReSndCount, #0x2
??SendProToNBmodule_1:
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JRNE      L:??SendProToNBmodule_2
        CALLF     L:?push_w6
        LDW       Y, #?_62
        LDW       X, #ProSendbuf
        CALLF     sprintf
        ADD       SP, #0x2
        JRA       L:??SendProToNBmodule_3
??SendProToNBmodule_2:
        CALLF     L:?push_w6
        LD        A, L:socket_id
        CLRW      X
        LD        XL, A
        PUSHW     X
        LDW       Y, #?_63
        LDW       X, #ProSendbuf
        CALLF     sprintf
        ADD       SP, #0x4
??SendProToNBmodule_3:
        LDW       X, #ProSendbuf
        CALLF     strlen
        LDW       S:?w4, X
        CLRW      X
        LDW       S:?w5, X
??SendProToNBmodule_4:
        LDW       X, S:?w5
        CPW       X, S:?w6
        JRNC      L:??SendProToNBmodule_5
        LDW       X, S:?w5
        ADDW      X, (0x1,SP)
        LD        A, (X)
        CLRW      X
        LD        XL, A
        PUSHW     X
        LDW       Y, #?_64
        LDW       X, S:?w4
        ADDW      X, #ProSendbuf
        CALLF     sprintf
        ADD       SP, #0x2
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       S:?w4, X
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??SendProToNBmodule_4
??SendProToNBmodule_5:
        LD        A, L:tcp_sequence
        ADD       A, #0x1
        LD        L:tcp_sequence, A
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JREQ      L:??SendProToNBmodule_6
        LD        A, L:tcp_sequence
        CLRW      X
        LD        XL, A
        PUSHW     X
        LDW       Y, #?_65
        LDW       X, S:?w4
        ADDW      X, #ProSendbuf
        CALLF     sprintf
        ADD       SP, #0x2
        LDW       X, S:?w4
        ADDW      X, #0xa
        LDW       S:?w4, X
??SendProToNBmodule_6:
        LDW       Y, #?_66
        LDW       X, S:?w4
        ADDW      X, #ProSendbuf
        CALLF     sprintf
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       S:?w4, X
        LDW       X, #ProSendbuf
        CALLF     strlen
        LDW       L:ProAtLen, X
        CALLF     SendDataToNBmodule
        ADD       SP, #0x2
        POP       S:?b14
        JPF       L:?epilogue_l2_w6

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_0:
        DC8 "180.101.147.115,5683"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_1:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_2:
        DC8 ","

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_3:
        DC8 "AT+NRB\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_4:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_5:
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_6:
        DC8 "218.56.11.180"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_7:
        DC8 "14000"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_8:
        DC8 "ERROR"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_9:
        DC8 "REBOOTING"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_10:
        DC8 "+CCLK:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_11:
        DC8 "+NCDP:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_12:
        DC8 "+NSONMI:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_13:
        DC8 ":"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_14:
        DC8 "AT+NSORF="

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_15:
        DC8 "+NNMI:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_16:
        DC8 "+CSQ:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_17:
        DC8 "Revision:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_18:
        DC8 "+CGSN:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_19:
        DC8 "+NBAND:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_20:
        DC8 "+CFUN:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_21:
        DC8 "+CEREG:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_22:
        DC8 "+CGATT:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_23:
        DC8 "+QLWEVTIND:0"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_24:
        DC8 "+QLWEVTIND:3"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_25:
        DC8 "+NSOSTR:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_26:
        DC8 "+NSOCLI:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_27:
        DC8 "SNR:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_28:
        DC8 "Signal power:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_29:
        DC8 "PCI:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_30:
        DC8 "OK"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_31:
        DC8 "AT+QLWULDATAEX=2,AABB,0x0101\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_32:
        DC8 "AT+NMGR\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_33:
        DC8 "ATI\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_34:
        DC8 "AT+CGSN=1\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_35:
        DC8 "AT+CIMI\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_36:
        DC8 "AT+NBAND?\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_37:
        DC8 "AT+NCDP?\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_38:
        DC8 "AT+CFUN=0\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_39:
        DC8 "AT+NCSEARFCN\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_40:
        DC8 "AT+NBAND=5\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_41:
        DC8 "AT+NBAND=8\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_42:
        DC8 "AT+NCDP=%s\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_43:
        DC8 "AT+CFUN=1\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_44:
        DC8 "AT+CFUN?\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_45:
        DC8 "AT+CGATT=1\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_46:
        DC8 "AT+CEDRXS=0,5\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_47:
        DC8 "AT+CPSMS=1,,,,00000100\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_48:
        DC8 "AT+QREGSWT=1\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_49:
        DC8 "AT+QREGSWT=2\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_50:
        DC8 "AT+CEREG?\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_51:
        DC8 "AT+CGATT?\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_52:
        DC8 "AT+NUESTATS\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_53:
        DC8 "AT+CCLK?\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_54:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_55:
        DC8 "AT+CSQ\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_56:
        DC8 "AT+NSOCR=STREAM,6,0,1\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_57:
        DC8 "AT+NSOCO=%d,%s,%s\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_58:
        DC8 "12000"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_59:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_60:
        DC8 "AT+NSOCL=%d\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_61:
        DC8 "AT+CGATT=0\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_62:
        DC8 "AT+NMGS=%d,"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_63:
        DC8 "AT+NSOSD=%d,%d,"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_64:
        DC8 "%.2x"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_65:
        DC8 ",0x200,%03d"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_66:
        DC8 "\015\012"

        END
// 
// 5 315 bytes in section .far_func.text
// 1 690 bytes in section .near.bss
//     4 bytes in section .near.data
//   953 bytes in section .near.rodata
// 
// 5 293 bytes of CODE  memory (+ 22 bytes shared)
//   953 bytes of CONST memory
// 1 694 bytes of DATA  memory
//
//Errors: none
//Warnings: none
