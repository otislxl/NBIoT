///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                29/Apr/2019  10:10:36
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\uart1.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\uart1.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\uart1.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b6
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_l2_w6
        EXTERN ?epilogue_w4
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?push_w6
        EXTERN ?smod16_y_x_y
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7
        EXTERN CLK_PeripheralClockConfig
        EXTERN GPIO_ExternalPullUpConfig
        EXTERN GPIO_Init
        EXTERN ITC_SetSoftwarePriority
        EXTERN SYSCFG_REMAPPinConfig
        EXTERN USART_Cmd
        EXTERN USART_DeInit
        EXTERN USART_GetFlagStatus
        EXTERN USART_ITConfig
        EXTERN USART_Init
        EXTERN USART_SendData8

        PUBLIC UART1_ISR
        PUBLIC UART1_SendByte
        PUBLIC UART1_SendStr
        PUBLIC UART2_SendStr
        PUBLIC UART3_ISR
        PUBLIC UART3_SendStr
        PUBLIC Uart1_Init
        PUBLIC Uart_Init
        PUBLIC Uart_PowerLow_Config
        PUBLIC Uart_PowerOn_Config
        PUBLIC Usart2_Init
        PUBLIC Usart3_Init
        PUBLIC uart_rx
        PUBLIC uart_rx_read
        PUBLIC uart_rx_write


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
uart_rx:
        DS8 200

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
uart_rx_read:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
uart_rx_write:
        DS8 1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Uart1_Init:
        MOV       L:uart_rx_read, #0x0
        MOV       L:uart_rx_write, #0x0
        MOV       S:?b0, #0x1
        LD        A, #0x5
        CALLF     CLK_PeripheralClockConfig
        MOV       S:?b0, #0x1
        LD        A, #0x8
        LDW       X, #0x500a
        CALLF     GPIO_ExternalPullUpConfig
        MOV       S:?b0, #0x1
        LD        A, #0x4
        LDW       X, #0x500a
        CALLF     GPIO_ExternalPullUpConfig
        LDW       X, #0x5230
        CALLF     USART_DeInit
        MOV       S:?b6, #0xc
        CLR       S:?b5
        CLR       S:?b4
        CLR       A
        LDW       X, #0x2580
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x5230
        CALLF     USART_Init
        RIM
        LD        A, #0x1
        LDW       Y, #0x255
        LDW       X, #0x5230
        CALLF     USART_ITConfig
        MOV       S:?b0, #0x3
        LD        A, #0x1c
        CALLF     ITC_SetSoftwarePriority
        LD        A, #0x1
        LDW       X, #0x5230
        CALLF     USART_Cmd
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SendByte:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LD        S:?b10, A
        CLR       S:?b9
        CLR       S:?b8
??UART1_SendByte_0:
        LDW       Y, #0x40
        LDW       X, #0x5230
        CALLF     USART_GetFlagStatus
        CP        A, #0x0
        JRNE      L:??UART1_SendByte_1
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0x3e9
        JRC       L:??UART1_SendByte_0
??UART1_SendByte_1:
        LD        A, S:?b10
        LDW       X, #0x5230
        CALLF     USART_SendData8
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SendStr:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        LDW       S:?w6, X
        LDW       S:?w5, Y
        CLRW      X
        LDW       S:?w4, X
??UART1_SendStr_0:
        LDW       X, S:?w4
        CPW       X, S:?w5
        JRNC      L:??UART1_SendStr_1
        LDW       X, S:?w4
        ADDW      X, S:?w6
        LD        A, (X)
        CALLF     UART1_SendByte
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        JRA       L:??UART1_SendStr_0
??UART1_SendStr_1:
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_ISR:
        LD        S:?b0, A
        LD        A, L:uart_rx_write
        CLRW      X
        LD        XL, A
        LD        A, S:?b0
        LD        (L:uart_rx,X), A
        LD        A, L:uart_rx_write
        CLRW      X
        LD        XL, A
        INCW      X
        LDW       Y, #0xc8
        CALLF     L:?smod16_y_x_y
        LD        A, YL
        LD        S:?b1, A
        LD        A, L:uart_rx_read
        CP        A, S:?b1
        JRNE      L:??UART1_ISR_0
        JRA       L:??UART1_ISR_1
??UART1_ISR_0:
        LD        A, S:?b1
        LD        L:uart_rx_write, A
??UART1_ISR_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Usart2_Init:
        MOV       S:?b0, #0x1
        LD        A, #0x23
        CALLF     CLK_PeripheralClockConfig
        MOV       S:?b0, #0x1
        LD        A, #0x10
        LDW       X, #0x5014
        CALLF     GPIO_ExternalPullUpConfig
        MOV       S:?b0, #0x1
        LD        A, #0x8
        LDW       X, #0x5014
        CALLF     GPIO_ExternalPullUpConfig
        LDW       X, #0x53e0
        CALLF     USART_DeInit
        MOV       S:?b6, #0xc
        CLR       S:?b5
        CLR       S:?b4
        CLR       A
        LDW       X, #0xc200
        LDW       S:?w1, X
        CLRW      X
        INCW      X
        LDW       S:?w0, X
        LDW       X, #0x53e0
        CALLF     USART_Init
        RIM
        LD        A, #0x1
        LDW       Y, #0x255
        LDW       X, #0x53e0
        CALLF     USART_ITConfig
        LD        A, #0x1
        LDW       X, #0x53e0
        CALLF     USART_Cmd
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART2_SendStr:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        LDW       S:?w7, X
        LDW       S:?w6, Y
        CLRW      X
        LDW       S:?w5, X
??UART2_SendStr_0:
        LDW       X, S:?w5
        CPW       X, S:?w6
        JRNC      L:??UART2_SendStr_1
        CLRW      X
        LDW       S:?w4, X
??UART2_SendStr_2:
        LDW       Y, #0x40
        LDW       X, #0x53e0
        CALLF     USART_GetFlagStatus
        CP        A, #0x0
        JRNE      L:??UART2_SendStr_3
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0x3e9
        JRC       L:??UART2_SendStr_2
??UART2_SendStr_3:
        LDW       X, S:?w5
        ADDW      X, S:?w7
        LD        A, (X)
        LDW       X, #0x53e0
        CALLF     USART_SendData8
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??UART2_SendStr_0
??UART2_SendStr_1:
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Usart3_Init:
        MOV       S:?b0, #0x1
        LD        A, #0x24
        CALLF     CLK_PeripheralClockConfig
        LD        A, #0x1
        LDW       X, #0x302
        CALLF     SYSCFG_REMAPPinConfig
        MOV       S:?b0, #0x1
        LD        A, #0x1
        LDW       X, #0x5019
        CALLF     GPIO_ExternalPullUpConfig
        MOV       S:?b0, #0x1
        LD        A, #0x2
        LDW       X, #0x5019
        CALLF     GPIO_ExternalPullUpConfig
        LDW       X, #0x53f0
        CALLF     USART_DeInit
        MOV       S:?b6, #0xc
        CLR       S:?b5
        CLR       S:?b4
        CLR       A
        LDW       X, #0xc200
        LDW       S:?w1, X
        CLRW      X
        INCW      X
        LDW       S:?w0, X
        LDW       X, #0x53f0
        CALLF     USART_Init
        RIM
        LD        A, #0x1
        LDW       Y, #0x255
        LDW       X, #0x53f0
        CALLF     USART_ITConfig
        LD        A, #0x1
        LDW       X, #0x53f0
        CALLF     USART_Cmd
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART3_SendStr:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        LDW       S:?w7, X
        LDW       S:?w6, Y
        CLRW      X
        LDW       S:?w5, X
??UART3_SendStr_0:
        LDW       X, S:?w5
        CPW       X, S:?w6
        JRNC      L:??UART3_SendStr_1
        CLRW      X
        LDW       S:?w4, X
??UART3_SendStr_2:
        LDW       Y, #0x40
        LDW       X, #0x53f0
        CALLF     USART_GetFlagStatus
        CP        A, #0x0
        JRNE      L:??UART3_SendStr_3
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0x3e9
        JRC       L:??UART3_SendStr_2
??UART3_SendStr_3:
        LDW       X, S:?w5
        ADDW      X, S:?w7
        LD        A, (X)
        LDW       X, #0x53f0
        CALLF     USART_SendData8
        LDW       X, S:?w5
        INCW      X
        LDW       S:?w5, X
        JRA       L:??UART3_SendStr_0
??UART3_SendStr_1:
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART3_ISR:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Uart_Init:
        CALLF     Uart1_Init
        CALLF     Usart2_Init
        CALLF     Usart3_Init
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Uart_PowerOn_Config:
        LD        A, #0x1
        LDW       X, #0x5230
        CALLF     USART_Cmd
        LD        A, #0x1
        LDW       X, #0x53e0
        CALLF     USART_Cmd
        LD        A, #0x1
        LDW       X, #0x53f0
        CALLF     USART_Cmd
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Uart_PowerLow_Config:
        CLR       A
        LDW       X, #0x5230
        CALLF     USART_Cmd
        CLR       S:?b0
        LD        A, #0x8
        LDW       X, #0x500a
        CALLF     GPIO_Init
        CLR       A
        LDW       X, #0x53e0
        CALLF     USART_Cmd
        CLR       S:?b0
        LD        A, #0x18
        LDW       X, #0x5014
        CALLF     GPIO_Init
        CLR       A
        LDW       X, #0x53f0
        CALLF     USART_Cmd
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 690 bytes in section .far_func.text
// 202 bytes in section .near.bss
// 
// 690 bytes of CODE memory
// 202 bytes of DATA memory
//
//Errors: none
//Warnings: none
