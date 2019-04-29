///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:14
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\OverTimeQueue.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\OverTimeQueue.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\OverTimeQueue.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b2
        EXTERN ?b6
        EXTERN ?b7
        EXTERN ?b8
        EXTERN ?mul16_x_x_w0
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN EventQueueLock
        EXTERN FillEventQueue

        PUBLIC DecOverTime
        PUBLIC FillOverTimeQueue
        PUBLIC IniOverTime
        PUBLIC OverTimeOut


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
OverTimeOut:
        DS8 56

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
IniOverTime:
        CLR       A
        LD        S:?b2, A
??IniOverTime_0:
        LD        A, S:?b2
        CP        A, #0x8
        JRNC      L:??IniOverTime_1
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b2
        EXG       A, YL
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #OverTimeOut + 1
        CLRW      Y
        LDW       (X), Y
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b2
        EXG       A, YL
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        LD        A, #0x2
        LD        (L:OverTimeOut,X), A
        LD        A, S:?b2
        ADD       A, #0x1
        LD        S:?b2, A
        JRA       L:??IniOverTime_0
??IniOverTime_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FillOverTimeQueue:
        LD        S:?b7, A
        LDW       S:?w1, X
        CLR       A
        LD        S:?b6, A
??FillOverTimeQueue_0:
        LD        A, S:?b6
        CP        A, #0x8
        JRNC      L:??FillOverTimeQueue_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        LDW       S:?w2, X
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, S:?w2
        CALLF     L:?mul16_x_x_w0
        LD        A, S:?b7
        CP        A, (L:OverTimeOut,X)
        JRNE      L:??FillOverTimeQueue_2
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        LDW       S:?w2, X
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, S:?w2
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #OverTimeOut + 1
        LDW       S:?w0, X
        LDW       X, S:?w1
        LDW       [S:?w0.w], X
        MOV       L:EventQueueLock, #0x1
        MOV       L:EventQueueLock, #0x0
        LD        A, #0x1
        JRA       L:??FillOverTimeQueue_3
??FillOverTimeQueue_2:
        LD        A, S:?b6
        ADD       A, #0x1
        LD        S:?b6, A
        JRA       L:??FillOverTimeQueue_0
??FillOverTimeQueue_1:
        CLR       A
        LD        S:?b6, A
??FillOverTimeQueue_4:
        LD        A, S:?b6
        CP        A, #0x8
        JRNC      L:??FillOverTimeQueue_5
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        LDW       S:?w2, X
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, S:?w2
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #OverTimeOut + 1
        LDW       X, (X)
        TNZW      X
        JRNE      L:??FillOverTimeQueue_6
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        LDW       S:?w2, X
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, S:?w2
        CALLF     L:?mul16_x_x_w0
        LD        A, S:?b7
        LD        (L:OverTimeOut,X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        LDW       S:?w2, X
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, S:?w2
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #OverTimeOut + 1
        LDW       S:?w0, X
        LDW       X, S:?w1
        LDW       [S:?w0.w], X
        MOV       L:EventQueueLock, #0x1
        MOV       L:EventQueueLock, #0x0
        LD        A, #0x1
        JRA       L:??FillOverTimeQueue_3
??FillOverTimeQueue_6:
        LD        A, S:?b6
        ADD       A, #0x1
        LD        S:?b6, A
        JRA       L:??FillOverTimeQueue_4
??FillOverTimeQueue_5:
        MOV       L:EventQueueLock, #0x1
        MOV       L:EventQueueLock, #0x0
        CLR       A
??FillOverTimeQueue_3:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
DecOverTime:
        PUSH      S:?b8
        CLR       A
        LD        S:?b8, A
??DecOverTime_0:
        LD        A, S:?b8
        CP        A, #0x8
        JRC       ??lb_0
        JP        L:??DecOverTime_1
??lb_0:
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b8
        EXG       A, YL
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #OverTimeOut + 1
        LDW       X, (X)
        TNZW      X
        JREQ      L:??DecOverTime_2
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b8
        EXG       A, YL
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #OverTimeOut + 1
        LDW       X, (X)
        DECW      X
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        LDW       S:?w1, X
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, S:?w1
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #OverTimeOut + 1
        LDW       (X), Y
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b8
        EXG       A, YL
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #OverTimeOut + 1
        LDW       X, (X)
        TNZW      X
        JRNE      L:??DecOverTime_2
        CLR       S:?b0
        CLRW      X
        PUSHW     X
        MOV       S:?b2, S:?b0
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        LDW       Y, X
        LDW       X, #0x7
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        LD        A, (L:OverTimeOut,X)
        MOV       S:?b0, S:?b2
        POPW      X
        CALLF     FillEventQueue
??DecOverTime_2:
        LD        A, S:?b8
        ADD       A, #0x1
        LD        S:?b8, A
        JP        L:??DecOverTime_0
??DecOverTime_1:
        POP       S:?b8
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 416 bytes in section .far_func.text
//  56 bytes in section .near.bss
// 
// 416 bytes of CODE memory
//  56 bytes of DATA memory
//
//Errors: none
//Warnings: none
