///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:12
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\EventQueue.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\EventQueue.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\EventQueue.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_w4
        EXTERN ?mov_w0_w1
        EXTERN ?mov_w1_w0
        EXTERN ?mul16_x_x_w0
        EXTERN ?push_l2
        EXTERN ?push_w4
        EXTERN ?smod16_y_x_y
        EXTERN ?w0
        EXTERN ?w2
        EXTERN ?w4
        EXTERN memcpy

        PUBLIC EventQueueLock
        PUBLIC EventReadPtr
        PUBLIC EventWritePtr
        PUBLIC Eventinfo
        PUBLIC FillEventQueue
        PUBLIC GetOneEvent
        PUBLIC LoseventCount


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
Eventinfo:
        DS8 64

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
EventReadPtr:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
EventWritePtr:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
EventQueueLock:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
LoseventCount:
        DS8 2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FillEventQueue:
        CALLF     L:?push_l2
        PUSH      S:?b12
        LD        S:?b10, A
        LDW       S:?w4, X
        MOV       S:?b11, S:?b0
        MOV       L:EventQueueLock, #0x1
        LD        A, L:EventWritePtr
        CLRW      X
        LD        XL, A
        INCW      X
        LDW       Y, #0x8
        CALLF     L:?smod16_y_x_y
        LD        A, YL
        LD        S:?b12, A
        LD        A, L:EventReadPtr
        CP        A, S:?b12
        JREQ      L:??FillEventQueue_0
        LD        A, L:EventWritePtr
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x8
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        LD        A, S:?b10
        LD        (L:Eventinfo,X), A
        LDW       X, S:?w4
        TNZW      X
        JREQ      L:??FillEventQueue_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b11
        EXG       A, XL
        LDW       S:?w0, X
        LDW       Y, S:?w4
        CALLF     L:?mov_w1_w0
        LD        A, L:EventWritePtr
        CLRW      X
        LD        XL, A
        LDW       S:?w2, X
        LDW       X, #0x8
        LDW       S:?w0, X
        LDW       X, S:?w2
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #Eventinfo + 1
        CALLF     L:?mov_w0_w1
        CALLF     memcpy
??FillEventQueue_1:
        LD        A, S:?b12
        LD        L:EventWritePtr, A
        JRA       L:??FillEventQueue_2
??FillEventQueue_0:
        LDW       X, L:LoseventCount
        INCW      X
        LDW       L:LoseventCount, X
??FillEventQueue_2:
        MOV       L:EventQueueLock, #0x0
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetOneEvent:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LD        A, L:EventWritePtr
        CP        A, L:EventReadPtr
        JREQ      L:??GetOneEvent_0
        LDW       X, #0x8
        LDW       S:?w0, X
        CALLF     L:?mov_w1_w0
        LD        A, L:EventReadPtr
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x8
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, #Eventinfo
        CALLF     L:?mov_w0_w1
        LDW       Y, X
        LDW       X, S:?w4
        CALLF     memcpy
        LD        A, L:EventReadPtr
        CLRW      X
        LD        XL, A
        INCW      X
        LDW       Y, #0x8
        CALLF     L:?smod16_y_x_y
        LD        A, YL
        LD        L:EventReadPtr, A
        LD        A, #0x1
        JRA       L:??GetOneEvent_1
??GetOneEvent_0:
        CLR       A
??GetOneEvent_1:
        JPF       L:?epilogue_w4

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 221 bytes in section .far_func.text
//  69 bytes in section .near.bss
// 
// 221 bytes of CODE memory
//  69 bytes of DATA memory
//
//Errors: none
//Warnings: none
