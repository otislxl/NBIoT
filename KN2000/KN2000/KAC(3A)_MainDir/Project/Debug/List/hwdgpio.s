///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:12
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\hwdgpio.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\hwdgpio.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\hwdgpio.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b8
        EXTERN GPIO_Init
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN WIFI_Module_Init

        PUBLIC ExtinguishLed
        PUBLIC LightenLed
        PUBLIC NB_IO_RESETGPIO_INI
        PUBLIC SetNB_IO_RESETGpio
        PUBLIC hw_board_gpio_init


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
NB_IO_RESETGPIO_INI:
        MOV       S:?b0, #0xc0
        LD        A, #0x20
        LDW       X, #0x500f
        CALLF     GPIO_Init
        MOV       S:?b0, #0xc0
        LD        A, #0x40
        LDW       X, #0x500f
        CALLF     GPIO_Init
        MOV       S:?b0, #0xd0
        LD        A, #0x80
        LDW       X, #0x500f
        CALLF     GPIO_Init
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SetNB_IO_RESETGpio:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??SetNB_IO_RESETGpio_0
        LD        A, #0x40
        LDW       X, #0x500f
        CALLF     GPIO_SetBits
        JRA       L:??SetNB_IO_RESETGpio_1
??SetNB_IO_RESETGpio_0:
        LD        A, #0x40
        LDW       X, #0x500f
        CALLF     GPIO_ResetBits
??SetNB_IO_RESETGpio_1:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
LightenLed:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JRNE      L:??LightenLed_0
        LD        A, #0x40
        LDW       X, #0x5000
        CALLF     GPIO_SetBits
        JRA       L:??LightenLed_1
??LightenLed_0:
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??LightenLed_1
        LD        A, #0x4
        LDW       X, #0x5000
        CALLF     GPIO_SetBits
??LightenLed_1:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ExtinguishLed:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JRNE      L:??ExtinguishLed_0
        LD        A, #0x8
        LDW       X, #0x5000
        CALLF     GPIO_ResetBits
        JRA       L:??ExtinguishLed_1
??ExtinguishLed_0:
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??ExtinguishLed_1
        LD        A, #0x4
        LDW       X, #0x5000
        CALLF     GPIO_ResetBits
??ExtinguishLed_1:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
hw_board_gpio_init:
        CALLF     NB_IO_RESETGPIO_INI
        CALLF     WIFI_Module_Init
        CLR       S:?b0
        LD        A, #0x80
        LDW       X, #0x5000
        CALLF     GPIO_Init
        CLR       S:?b0
        LD        A, #0x40
        LDW       X, #0x5000
        CALLF     GPIO_Init
        MOV       S:?b0, #0xc0
        LD        A, #0x4
        LDW       X, #0x5000
        CALLF     GPIO_Init
        MOV       S:?b0, #0xc0
        LD        A, #0x8
        LDW       X, #0x5000
        CALLF     GPIO_Init
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 210 bytes in section .far_func.text
// 
// 210 bytes of CODE memory
//
//Errors: none
//Warnings: 1
