///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:13
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Module_wifi.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Module_wifi.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\Module_wifi.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b8
        EXTERN ?move1616_v_x_y_a
        EXTERN ?smod16_y_x_y
        EXTERN ?w0
        EXTERN AtDelayTime
        EXTERN GPIO_Init
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN GetIntFromBuf
        EXTERN UART2_SendStr
        EXTERN delay_ms
        EXTERN memcmp
        EXTERN memcpy
        EXTERN memset
        EXTERN strlen

        PUBLIC Set_WIFI_IO_RESETGpio
        PUBLIC UART2_ISR
        PUBLIC WIFI_ModuleReset
        PUBLIC WIFI_Module_Init
        PUBLIC WIFIinfo
        PUBLIC WifiAtComFormMoudle
        PUBLIC WifiComRecBuf
        PUBLIC WifiComRecLen
        PUBLIC WifiDataErrorTime
        PUBLIC WifiDelayTime
        PUBLIC WifiModuleIniDisp
        PUBLIC WifiModuleResetInit
        PUBLIC WifiSendId
        PUBLIC wifi_rx
        PUBLIC wifi_rx_read
        PUBLIC wifi_rx_write


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
wifi_rx:
        DS8 50

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
wifi_rx_read:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
wifi_rx_write:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
WIFIinfo:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
WifiComRecBuf:
        DS8 100

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
WifiComRecLen:
        DS8 2

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
WifiSendId:
        DC8 255

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
WifiDelayTime:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
WifiDataErrorTime:
        DS8 1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
WIFI_Module_Init:
        MOV       S:?b0, #0xc0
        LD        A, #0x1
        LDW       X, #0x5014
        CALLF     GPIO_Init
        MOV       S:?b0, #0xc0
        LD        A, #0x2
        LDW       X, #0x5014
        CALLF     GPIO_Init
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Set_WIFI_IO_RESETGpio:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??Set_WIFI_IO_RESETGpio_0
        LD        A, #0x2
        LDW       X, #0x5014
        CALLF     GPIO_SetBits
        JRA       L:??Set_WIFI_IO_RESETGpio_1
??Set_WIFI_IO_RESETGpio_0:
        LD        A, #0x2
        LDW       X, #0x5014
        CALLF     GPIO_ResetBits
??Set_WIFI_IO_RESETGpio_1:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
WifiModuleResetInit:
        LDW       X, #0x10
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, #WIFIinfo + 2
        CALLF     memset
        MOV       L:WIFIinfo + 19, #0x0
        MOV       L:WIFIinfo + 18, #0x0
        MOV       L:WIFIinfo, #0x0
        CLRW      X
        LDW       L:WifiComRecLen, X
        MOV       L:wifi_rx_read, #0x0
        MOV       L:wifi_rx_write, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
WIFI_ModuleReset:
        CLR       A
        CALLF     Set_WIFI_IO_RESETGpio
        LDW       X, #0x1f4
        CALLF     delay_ms
        LD        A, #0x1
        CALLF     Set_WIFI_IO_RESETGpio
        CALLF     WifiModuleResetInit
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART2_ISR:
        LD        S:?b0, A
        LD        A, L:wifi_rx_write
        CLRW      X
        LD        XL, A
        LD        A, S:?b0
        LD        (L:wifi_rx,X), A
        LD        A, L:wifi_rx_write
        CLRW      X
        LD        XL, A
        INCW      X
        LDW       Y, #0x32
        CALLF     L:?smod16_y_x_y
        LD        A, YL
        LD        S:?b1, A
        LD        A, L:wifi_rx_read
        CP        A, S:?b1
        JRNE      L:??UART2_ISR_0
        JRA       L:??UART2_ISR_1
??UART2_ISR_0:
        LD        A, S:?b1
        LD        L:wifi_rx_write, A
??UART2_ISR_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
WifiAtComFormMoudle:
        PUSH      S:?b8
        SUB       SP, #0x23
        LDW       Y, #?_0
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x23
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LD        A, L:wifi_rx_write
        CP        A, L:wifi_rx_read
        JREQ      L:??WifiAtComFormMoudle_0
        LD        A, L:wifi_rx_read
        CLRW      X
        LD        XL, A
        LD        A, (L:wifi_rx,X)
        LDW       X, L:WifiComRecLen
        LD        (L:WifiComRecBuf,X), A
        LD        A, L:wifi_rx_read
        CLRW      X
        LD        XL, A
        INCW      X
        LDW       Y, #0x32
        CALLF     L:?smod16_y_x_y
        LD        A, YL
        LD        L:wifi_rx_read, A
        LDW       X, L:WifiComRecLen
        CPW       X, #0x63
        JRNC      L:??WifiAtComFormMoudle_1
        LDW       X, L:WifiComRecLen
        INCW      X
        LDW       L:WifiComRecLen, X
        JRA       L:??WifiAtComFormMoudle_2
??WifiAtComFormMoudle_1:
        CLRW      X
        LDW       L:WifiComRecLen, X
??WifiAtComFormMoudle_2:
        LDW       X, L:WifiComRecLen
        ADDW      X, #WifiComRecBuf - 1
        LD        A, (X)
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0xa
        JRNE      L:??WifiAtComFormMoudle_3
        JRA       L:??WifiAtComFormMoudle_4
??WifiAtComFormMoudle_0:
        CLR       A
        JP        L:??WifiAtComFormMoudle_5
??WifiAtComFormMoudle_3:
        LD        A, S:?b8
        CP        A, #0xd
        JREQ      ??lb_0
        JP        L:??WifiAtComFormMoudle_6
??lb_0:
??WifiAtComFormMoudle_4:
        LDW       X, L:WifiComRecLen
        CLR       A
        LD        (L:WifiComRecBuf,X), A
        LDW       X, L:WifiComRecLen
        CPW       X, #0x3
        JRNC      ??lb_1
        JP        L:??WifiAtComFormMoudle_7
??lb_1:
        LDW       X, #0x5
        LDW       S:?w0, X
        LDW       Y, #WifiComRecBuf
        LDW       X, #?_1
        CALLF     memcmp
        TNZW      X
        JRNE      L:??WifiAtComFormMoudle_8
        LD        A, L:WifiDataErrorTime
        ADD       A, #0x1
        LD        L:WifiDataErrorTime, A
        LD        A, L:WifiDataErrorTime
        CP        A, #0xb
        JRC       L:??WifiAtComFormMoudle_9
        CALLF     WIFI_ModuleReset
        MOV       L:WifiDataErrorTime, #0x0
        JRA       L:??WifiAtComFormMoudle_9
??WifiAtComFormMoudle_8:
        MOV       L:WifiDataErrorTime, #0x0
        LD        A, L:WifiSendId
        CP        A, #0x1
        JREQ      L:??WifiAtComFormMoudle_9
        LD        A, L:WifiSendId
        CP        A, #0x0
        JREQ      L:??WifiAtComFormMoudle_9
        LD        A, L:AtDelayTime
        CP        A, #0x4
        JRC       L:??WifiAtComFormMoudle_9
        MOV       L:AtDelayTime, #0x3
??WifiAtComFormMoudle_9:
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        LDW       S:?w0, X
        LDW       Y, #WifiComRecBuf
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     memcmp
        TNZW      X
        JRNE      L:??WifiAtComFormMoudle_10
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        TNZW      X
        JREQ      L:??WifiAtComFormMoudle_10
        LD        A, L:WifiSendId
        CP        A, #0x1
        JRNE      L:??WifiAtComFormMoudle_7
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strlen
        ADDW      X, #WifiComRecBuf
        CALLF     GetIntFromBuf
        LD        A, XL
        LD        L:WIFIinfo + 1, A
        LD        A, L:WIFIinfo + 1
        CP        A, #0x65
        JRC       L:??WifiAtComFormMoudle_11
        MOV       L:WIFIinfo + 1, #0x64
??WifiAtComFormMoudle_11:
        LD        A, L:AtDelayTime
        CP        A, #0x4
        JRC       L:??WifiAtComFormMoudle_7
        MOV       L:AtDelayTime, #0x3
        JRA       L:??WifiAtComFormMoudle_7
??WifiAtComFormMoudle_10:
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       Y, #WifiComRecBuf
        LDW       X, #?_2
        CALLF     memcmp
        TNZW      X
        JRNE      L:??WifiAtComFormMoudle_12
        LDW       X, #0xc
        LDW       S:?w0, X
        LDW       Y, #WifiComRecBuf + 6
        LDW       X, #WIFIinfo + 2
        CALLF     memcpy
        JRA       L:??WifiAtComFormMoudle_7
??WifiAtComFormMoudle_12:
        LDW       X, #0x2
        LDW       S:?w0, X
        LDW       Y, #WifiComRecBuf
        LDW       X, #?_3
        CALLF     memcmp
        TNZW      X
        JRNE      L:??WifiAtComFormMoudle_7
        LD        A, L:WifiSendId
        CP        A, #0x0
        JRNE      L:??WifiAtComFormMoudle_7
        MOV       L:WIFIinfo + 19, #0x1
        MOV       L:AtDelayTime, #0xa
??WifiAtComFormMoudle_7:
        CLRW      X
        LDW       L:WifiComRecLen, X
??WifiAtComFormMoudle_6:
        LD        A, #0x1
??WifiAtComFormMoudle_5:
        ADD       SP, #0x23
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
WifiModuleIniDisp:
        LD        A, L:WIFIinfo + 18
        CP        A, #0x0
        JRNE      L:??WifiModuleIniDisp_0
        LD        A, L:WIFIinfo + 19
        CP        A, #0x0
        JRNE      L:??WifiModuleIniDisp_1
        MOV       L:WifiSendId, #0x0
        LDW       Y, #0x6
        LDW       X, #?_4
        CALLF     UART2_SendStr
        MOV       L:WIFIinfo + 18, #0x1
        JRA       L:??WifiModuleIniDisp_2
??WifiModuleIniDisp_1:
        LDW       X, #WIFIinfo + 2
        CALLF     strlen
        TNZW      X
        JRNE      L:??WifiModuleIniDisp_2
        MOV       L:WifiSendId, #0x2
        LDW       Y, #0xa
        LDW       X, #?_5
        CALLF     UART2_SendStr
        MOV       L:WIFIinfo + 18, #0x1
??WifiModuleIniDisp_2:
        LD        A, L:WIFIinfo + 18
        CP        A, #0x1
        JRNE      L:??WifiModuleIniDisp_3
        LDW       X, L:WifiDelayTime
        CPW       X, #0x64
        JRNC      L:??WifiModuleIniDisp_0
        LDW       X, #0x64
        LDW       L:WifiDelayTime, X
        JRA       L:??WifiModuleIniDisp_0
??WifiModuleIniDisp_3:
        LD        A, #0x1
        JRA       L:??WifiModuleIniDisp_4
??WifiModuleIniDisp_0:
        CLR       A
??WifiModuleIniDisp_4:
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_0:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_1:
        DC8 "ERROR"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_2:
        DC8 "+WMAC:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_3:
        DC8 "OK"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_4:
        DC8 "ATE0\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_5:
        DC8 "AT+WMAC?\015\012"

        END
// 
// 635 bytes in section .far_func.text
// 177 bytes in section .near.bss
//   1 byte  in section .near.data
//  69 bytes in section .near.rodata
// 
// 635 bytes of CODE  memory
//  69 bytes of CONST memory
// 178 bytes of DATA  memory
//
//Errors: none
//Warnings: none
