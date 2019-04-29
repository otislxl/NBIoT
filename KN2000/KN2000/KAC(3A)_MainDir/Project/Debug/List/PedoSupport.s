///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:09:23
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\PedoSupport.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\PedoSupport.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\PedoSupport.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b14
        EXTERN ?b15
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b6
        EXTERN ?b7
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_w4
        EXTERN ?fadd32_l0_l0_l1
        EXTERN ?fcastf32u16_l0_x
        EXTERN ?fmul32_l0_l0_0x
        EXTERN ?fsub32_l0_l0_0x
        EXTERN ?load32_0x_l0
        EXTERN ?mov_l1_l3
        EXTERN ?mov_l3_l0
        EXTERN ?mov_w5_w0
        EXTERN ?pop_l3
        EXTERN ?pop_w4
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6

        PUBLIC A_ActivityExternalBuffer_U8R
        PUBLIC A_ActivityInternalBuffer_U8R
        PUBLIC A_Peak2PeakCountExternalBuffer_U8R
        PUBLIC A_Peak2PeakCountInternalBuffer_U8R
        PUBLIC A_StepToStepCountExternalBuffer_U8R
        PUBLIC A_StepToStepCountInternalBuffer_U8R
        PUBLIC GetExternalBuffer
        PUBLIC GetExternalFIFOSize
        PUBLIC GetInternalBuffer
        PUBLIC GetInternalFIFOSize
        PUBLIC GetSmoothValue
        PUBLIC ProcessLPF
        PUBLIC ResetExternalFIFO
        PUBLIC ResetInternalFIFO
        PUBLIC SetExternalBuffer
        PUBLIC SetInternalBuffer
        PUBLIC ShiftFIFO_U8
        PUBLIC V_ExternalFIFOSize_U8R
        PUBLIC V_InternalFIFOSize_U8R


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_ActivityInternalBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_Peak2PeakCountInternalBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_StepToStepCountInternalBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_ActivityExternalBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_Peak2PeakCountExternalBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_StepToStepCountExternalBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_InternalFIFOSize_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_ExternalFIFOSize_U8R:
        DS8 1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ShiftFIFO_U8:
        LDW       S:?w2, X
        LD        S:?b6, A
        MOV       S:?b2, S:?b0
        CLR       S:?b3
        CLR       A
        LD        S:?b3, A
??ShiftFIFO_U8_0:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        LDW       S:?w0, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        SUBW      X, S:?w0
        LDW       S:?w0, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b3
        EXG       A, XL
        CPW       X, S:?w0
        JRSGE     L:??ShiftFIFO_U8_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b3
        EXG       A, XL
        LDW       S:?w0, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        SUBW      X, S:?w0
        DECW      X
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b2
        EXG       A, YL
        LDW       S:?w0, Y
        SUBW      X, S:?w0
        ADDW      X, S:?w2
        LD        A, (X)
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b3
        EXG       A, YL
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        LDW       S:?w0, Y
        SUBW      X, S:?w0
        ADDW      X, S:?w2
        DECW      X
        LD        (X), A
        LD        A, S:?b3
        ADD       A, #0x1
        LD        S:?b3, A
        JRA       L:??ShiftFIFO_U8_0
??ShiftFIFO_U8_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SetInternalBuffer:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        MOV       S:?b8, S:?b1
        MOV       S:?b0, #0x1
        LD        A, #0x14
        LDW       X, #A_StepToStepCountInternalBuffer_U8R
        CALLF     ShiftFIFO_U8
        MOV       S:?b0, #0x1
        LD        A, #0x14
        LDW       X, #A_Peak2PeakCountInternalBuffer_U8R
        CALLF     ShiftFIFO_U8
        MOV       S:?b0, #0x1
        LD        A, #0x14
        LDW       X, #A_ActivityInternalBuffer_U8R
        CALLF     ShiftFIFO_U8
        LD        A, S:?b10
        LD        L:A_StepToStepCountInternalBuffer_U8R, A
        LD        A, S:?b9
        LD        L:A_Peak2PeakCountInternalBuffer_U8R, A
        LD        A, S:?b8
        LD        L:A_ActivityInternalBuffer_U8R, A
        LD        A, L:V_InternalFIFOSize_U8R
        CP        A, #0x14
        JRNC      L:??SetInternalBuffer_0
        LD        A, L:V_InternalFIFOSize_U8R
        ADD       A, #0x1
        LD        L:V_InternalFIFOSize_U8R, A
??SetInternalBuffer_0:
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetInternalBuffer:
        LDW       S:?w2, X
        LDW       S:?w3, Y
        CLR       A
        LD        S:?b2, A
??GetInternalBuffer_0:
        LD        A, S:?b2
        CP        A, L:V_InternalFIFOSize_U8R
        JRNC      L:??GetInternalBuffer_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        LD        A, (L:A_StepToStepCountInternalBuffer_U8R,X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        ADDW      X, S:?w2
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        LD        A, (L:A_Peak2PeakCountInternalBuffer_U8R,X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        ADDW      X, S:?w3
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        LD        A, (L:A_ActivityInternalBuffer_U8R,X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        ADDW      X, S:?w0
        LD        (X), A
        LD        A, S:?b2
        ADD       A, #0x1
        LD        S:?b2, A
        JRA       L:??GetInternalBuffer_0
??GetInternalBuffer_1:
        CALLF     ResetInternalFIFO
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ResetInternalFIFO:
        MOV       L:V_InternalFIFOSize_U8R, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetInternalFIFOSize:
        LD        A, L:V_InternalFIFOSize_U8R
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SetExternalBuffer:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        LDW       S:?w4, X
        LDW       S:?w6, Y
        CALLF     L:?mov_w5_w0
        LD        S:?b15, A
        CLR       S:?b14
        MOV       S:?b0, S:?b15
        LD        A, #0x14
        LDW       X, #A_StepToStepCountExternalBuffer_U8R
        CALLF     ShiftFIFO_U8
        MOV       S:?b0, S:?b15
        LD        A, #0x14
        LDW       X, #A_Peak2PeakCountExternalBuffer_U8R
        CALLF     ShiftFIFO_U8
        MOV       S:?b0, S:?b15
        LD        A, #0x14
        LDW       X, #A_ActivityExternalBuffer_U8R
        CALLF     ShiftFIFO_U8
        CLR       A
        LD        S:?b14, A
??SetExternalBuffer_0:
        LD        A, S:?b14
        CP        A, S:?b15
        JRNC      L:??SetExternalBuffer_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b14
        EXG       A, XL
        ADDW      X, S:?w4
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b14
        EXG       A, XL
        LD        (L:A_StepToStepCountExternalBuffer_U8R,X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b14
        EXG       A, XL
        ADDW      X, S:?w6
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b14
        EXG       A, XL
        LD        (L:A_Peak2PeakCountExternalBuffer_U8R,X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b14
        EXG       A, XL
        ADDW      X, S:?w5
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b14
        EXG       A, XL
        LD        (L:A_ActivityExternalBuffer_U8R,X), A
        LD        A, L:V_ExternalFIFOSize_U8R
        CP        A, #0x14
        JRNC      L:??SetExternalBuffer_2
        LD        A, L:V_ExternalFIFOSize_U8R
        ADD       A, #0x1
        LD        L:V_ExternalFIFOSize_U8R, A
??SetExternalBuffer_2:
        LD        A, S:?b14
        ADD       A, #0x1
        LD        S:?b14, A
        JRA       L:??SetExternalBuffer_0
??SetExternalBuffer_1:
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetExternalBuffer:
        LDW       S:?w2, X
        LDW       S:?w3, Y
        CLR       A
        LD        S:?b2, A
??GetExternalBuffer_0:
        LD        A, S:?b2
        CP        A, L:V_ExternalFIFOSize_U8R
        JRNC      L:??GetExternalBuffer_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        LD        A, (L:A_StepToStepCountExternalBuffer_U8R,X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        ADDW      X, S:?w2
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        LD        A, (L:A_ActivityExternalBuffer_U8R,X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        ADDW      X, S:?w0
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        LD        A, (L:A_Peak2PeakCountExternalBuffer_U8R,X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b2
        EXG       A, XL
        ADDW      X, S:?w3
        LD        (X), A
        LD        A, S:?b2
        ADD       A, #0x1
        LD        S:?b2, A
        JRA       L:??GetExternalBuffer_0
??GetExternalBuffer_1:
        CALLF     ResetExternalFIFO
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ResetExternalFIFO:
        MOV       L:V_ExternalFIFOSize_U8R, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetExternalFIFOSize:
        LD        A, L:V_ExternalFIFOSize_U8R
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ProcessLPF:
        CALLF     L:?push_l3
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, S:?w4
        ADDW      X, #0x6
        LDW       Y, X
        CLRW      X
        LDW       S:?w1, X
        LDW       X, #0x3f80
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?fsub32_l0_l0_0x
        LDW       X, S:?w4
        CALLF     L:?fmul32_l0_l0_0x
        CALLF     L:?mov_l3_l0
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        CALLF     L:?fcastf32u16_l0_x
        LDW       X, S:?w4
        ADDW      X, #0x6
        CALLF     L:?fmul32_l0_l0_0x
        CALLF     L:?mov_l1_l3
        CALLF     L:?fadd32_l0_l0_l1
        LDW       X, S:?w4
        CALLF     L:?load32_0x_l0
        CALLF     L:?pop_w4
        CALLF     L:?pop_l3
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetSmoothValue:
        LDW       S:?w1, X
        CLR       S:?b0
        CLR       S:?b7
        CLR       S:?b6
        LDW       X, S:?w1
        ADDW      X, #0x5
        LD        A, (X)
        CLRW      X
        LD        XL, A
        SLLW      X
        ADDW      X, S:?w1
        ADDW      X, #0x6
        LDW       Y, X
        LDW       X, S:?w1
        ADDW      X, #0x2
        LDW       X, (X)
        LDW       (Y), X
        LDW       X, S:?w1
        ADDW      X, #0x4
        LD        A, (X)
        CLRW      X
        LD        XL, A
        DECW      X
        LDW       S:?w2, X
        LDW       X, S:?w1
        ADDW      X, #0x5
        LD        A, (X)
        CLRW      X
        LD        XL, A
        CPW       X, S:?w2
        JRSLT     L:??GetSmoothValue_0
        LDW       X, S:?w1
        ADDW      X, #0x5
        CLR       A
        LD        (X), A
        JRA       L:??GetSmoothValue_1
??GetSmoothValue_0:
        LDW       X, S:?w1
        ADDW      X, #0x5
        LD        A, (X)
        ADD       A, #0x1
        LDW       X, S:?w1
        ADDW      X, #0x5
        LD        (X), A
??GetSmoothValue_1:
        CLR       A
        LD        S:?b0, A
??GetSmoothValue_2:
        LDW       X, S:?w1
        ADDW      X, #0x4
        LD        A, S:?b0
        CP        A, (X)
        JRNC      L:??GetSmoothValue_3
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w1
        ADDW      X, #0x6
        LDW       X, (X)
        ADDW      X, S:?w3
        LDW       S:?w3, X
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        JRA       L:??GetSmoothValue_2
??GetSmoothValue_3:
        LDW       X, S:?w1
        ADDW      X, #0x4
        LD        A, (X)
        CLRW      Y
        LD        YL, A
        LDW       X, S:?w3
        DIVW      X, Y
        LDW       [S:?w1.w], X
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 747 bytes in section .far_func.text
// 122 bytes in section .near.bss
// 
// 747 bytes of CODE memory
// 122 bytes of DATA memory
//
//Errors: none
//Warnings: none
