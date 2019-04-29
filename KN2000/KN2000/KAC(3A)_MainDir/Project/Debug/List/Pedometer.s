///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:09:22
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Pedometer.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Pedometer.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\Pedometer.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?add32_l0_l0_l1
        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b11
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
        EXTERN ?fcastf32s16_l0_x
        EXTERN ?fcastf32u16_l0_x
        EXTERN ?fcastf32u32_l0_l0
        EXTERN ?fcasts16f32_x_l0
        EXTERN ?fcmplt32_c_l0_l1
        EXTERN ?fdiv32_l0_l0_dc32
        EXTERN ?fdiv32_l0_l0_l1
        EXTERN ?fmul32_l0_l0_dc32
        EXTERN ?load32_l0_dbsp
        EXTERN ?load32_l1_dbsp
        EXTERN ?load32_xsp_l0
        EXTERN ?mov_l0_l3
        EXTERN ?mov_l1_l0
        EXTERN ?mov_l3_l0
        EXTERN ?mov_w5_w1
        EXTERN ?move1616_v_x_y_a
        EXTERN ?mul16_x_x_w0
        EXTERN ?mul32_l0_l0_l1
        EXTERN ?pop_l1
        EXTERN ?pop_l3
        EXTERN ?pop_w4
        EXTERN ?push_l0
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w0
        EXTERN ?push_w4
        EXTERN ?sdiv16_x_x_y
        EXTERN ?sext16_x_a
        EXTERN ?sext32_l0_x
        EXTERN ?sra16_x_x_a
        EXTERN ?sra32_l0_l0_a
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7
        EXTERN GetInternalBuffer
        EXTERN GetInternalFIFOSize
        EXTERN ResetExternalFIFO
        EXTERN ResetInternalFIFO
        EXTERN SetExternalBuffer
        EXTERN SetInternalBuffer

        PUBLIC A_TempActivityBuffer_U8R
        PUBLIC A_TempP2PCountBuffer_U8R
        PUBLIC A_TempS2SCountBuffer_U8R
        PUBLIC ExtraVar
        PUBLIC PEDO_DisableRobustness
        PUBLIC PEDO_EnableRobustness
        PUBLIC PEDO_GetActivity
        PUBLIC PEDO_GetBandwidthSwitchInfo
        PUBLIC PEDO_GetStepCount
        PUBLIC PEDO_InitAlgo
        PUBLIC PEDO_MedianFilter
        PUBLIC PEDO_ProcessAccelarationData
        PUBLIC PEDO_ResetAlgo
        PUBLIC PEDO_ResetStepCount
        PUBLIC PEDO_SetInterStepCount
        PUBLIC PEDO_StartDetection
        PUBLIC PEDO_StopDetection
        PUBLIC S_ObjCadence
        PUBLIC S_ObjSpeed
        PUBLIC S_Param_Caxis
        PUBLIC S_Param_Xaxis
        PUBLIC S_Param_Yaxis
        PUBLIC S_Param_Zaxis
        PUBLIC V_ActivityDetected_U8R
        PUBLIC V_ActivityInstateneous_U8R
        PUBLIC V_Activity_U8R
        PUBLIC V_CHIPIDCHECK_U8R
        PUBLIC V_CompositeAxis_CadenceX100_U16R
        PUBLIC V_CompositeAxis_StrideRatio_U16R
        PUBLIC V_CurrentDist_F32R
        PUBLIC V_DivideFactor_U8R
        PUBLIC V_InterStepCount_U8R
        PUBLIC V_LazyWalkLowerLimit_U8R
        PUBLIC V_MovAvgStableCadenceX100_U16R
        PUBLIC V_PreActivity_U8R
        PUBLIC V_SampleCountForCycle_U8R
        PUBLIC V_SingleAxisStableCadence_U16R
        PUBLIC V_StatusFlags_U8R
        PUBLIC V_TempFIFOSize_U8R


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_InterStepCount_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_SampleCountForCycle_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_Activity_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_DivideFactor_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_StatusFlags_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_StepCount_U16R:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_Raw_AccelC_S16R:
        DS8 48

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_Raw_AccelX_S16R:
        DS8 48

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_Raw_AccelY_S16R:
        DS8 48

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_Raw_AccelZ_S16R:
        DS8 48

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_LazyWalkLowerLimit_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_PreActivity_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_ActivityDetected_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_CHIPIDCHECK_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_InterStepCountLimit_U8R:
        DS8 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
gc_CompositeFilterCoeff:
        DC16 58, 134, 173, 45, -324, -802, -999, -422, 1192, 3614, 6078, 7637
        DC16 7637, 6078, 3614, 1192, -422, -999, -802, -324, 45, 173, 134, 58

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
gc_HighSpeedFilterCoeff:
        DC16 290, 288, -353, -597, -26, 1110, 857, -1154, -2584, 10, 6498
        DC16 12235, 12235, 6498, 10, -2584, -1154, 857, 1110, -26, -597, -353
        DC16 288, 290

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_TempActivityBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_TempP2PCountBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
A_TempS2SCountBuffer_U8R:
        DS8 20

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_ActivityInstateneous_U8R:
        DS8 1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
V_AxisSelectFlag_U8R:
        DC8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
S_Param_Xaxis:
        DS8 57

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
S_Param_Yaxis:
        DS8 57

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
S_Param_Zaxis:
        DS8 57

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
S_Param_Caxis:
        DS8 57

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
S_ObjCadence:
        DS8 10

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
S_ObjSpeed:
        DS8 10

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_TempFIFOSize_U8R:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_MovAvgStableCadenceX100_U16R:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_SingleAxisStableCadence_U16R:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_CompositeAxis_StrideRatio_U16R:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_CompositeAxis_CadenceX100_U16R:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_CurrentDist_F32R:
        DS8 4

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
ExtraVar:
        DS8 67

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_GetStepCount:
        LDW       X, L:V_StepCount_U16R
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_StopDetection:
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0x80
        LD        L:V_StatusFlags_U8R, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_StartDetection:
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0x80
        LD        L:V_StatusFlags_U8R, A
        BSET      L:V_StatusFlags_U8R, #0x2
        BSET      L:V_StatusFlags_U8R, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_ResetStepCount:
        CLRW      X
        LDW       L:V_StepCount_U16R, X
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0x80
        LD        L:V_StatusFlags_U8R, A
        LD        A, L:V_StatusFlags_U8R
        OR        A, #0x5
        LD        L:V_StatusFlags_U8R, A
        MOV       L:V_Activity_U8R, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_GetActivity:
        LD        A, L:V_ActivityDetected_U8R
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_InitAlgo:
        LD        S:?b0, A
        MOV       L:V_Activity_U8R, #0x0
        LDW       X, #0x0
        LDW       L:S_ObjCadence, X
        LDW       X, #0x0
        LDW       L:S_ObjCadence + 2, X
        LDW       X, #0x0
        LDW       L:S_ObjSpeed, X
        LDW       X, #0x0
        LDW       L:S_ObjSpeed + 2, X
        LDW       X, #0x3e00
        LDW       L:S_ObjCadence + 6, X
        LDW       X, #0x0
        LDW       L:S_ObjCadence + 8, X
        LDW       X, #0x3e00
        LDW       L:S_ObjSpeed + 6, X
        LDW       X, #0x0
        LDW       L:S_ObjSpeed + 8, X
        CLRW      X
        LDW       L:V_StepCount_U16R, X
        MOV       L:V_StatusFlags_U8R, #0x0
        LD        A, L:V_StatusFlags_U8R
        OR        A, #0x5
        LD        L:V_StatusFlags_U8R, A
        LD        A, S:?b0
        LD        L:V_DivideFactor_U8R, A
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x32
        CALLF     L:?sra16_x_x_a
        LD        A, XL
        LD        L:V_LazyWalkLowerLimit_U8R, A
        CALLF     PEDO_EnableRobustness
        LD        A, #0x5
        CALLF     PEDO_SetInterStepCount
        MOV       L:V_CHIPIDCHECK_U8R, #0x1
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_EnableRobustness:
        BRES      L:V_StatusFlags_U8R, #0x7
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x32
        CALLF     L:?sra16_x_x_a
        LD        A, XL
        LD        L:V_LazyWalkLowerLimit_U8R, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_SetInterStepCount:
        LD        L:V_InterStepCountLimit_U8R, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_DisableRobustness:
        BSET      L:V_StatusFlags_U8R, #0x7
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x20
        CALLF     L:?sra16_x_x_a
        LD        A, XL
        LD        L:V_LazyWalkLowerLimit_U8R, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_ResetAlgo:
        MOV       L:V_PreActivity_U8R, #0x0
        LDW       X, #0x0
        LDW       L:S_ObjCadence, X
        LDW       X, #0x0
        LDW       L:S_ObjCadence + 2, X
        LDW       X, #0x0
        LDW       L:S_ObjSpeed, X
        LDW       X, #0x0
        LDW       L:S_ObjSpeed + 2, X
        LDW       X, #0x3e00
        LDW       L:S_ObjCadence + 6, X
        LDW       X, #0x0
        LDW       L:S_ObjCadence + 8, X
        LDW       X, #0x3e00
        LDW       L:S_ObjSpeed + 6, X
        LDW       X, #0x0
        LDW       L:S_ObjSpeed + 8, X
        CALLF     PEDO_ResetStepCount
        LDW       X, #S_Param_Xaxis
        CALLF     PEDO_Reset_SingleAxisAccelFeatures
        LDW       X, #S_Param_Yaxis
        CALLF     PEDO_Reset_SingleAxisAccelFeatures
        LDW       X, #S_Param_Zaxis
        CALLF     PEDO_Reset_SingleAxisAccelFeatures
        LDW       X, #S_Param_Caxis
        CALLF     PEDO_Reset_SingleAxisAccelFeatures
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_GetBandwidthSwitchInfo:
        LD        A, L:V_AxisSelectFlag_U8R
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_ProcessAccelarationData:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        PUSHW     Y
        CALLF     L:?push_w0
        SUB       SP, #0x20
        CLR       S:?b8
        CLRW      X
        LDW       (0x7,SP), X
        CLRW      X
        LDW       (0x1,SP), X
        LDW       X, #0x0
        LDW       (0x1d,SP), X
        LDW       X, #0x0
        LDW       (0x1f,SP), X
        LDW       X, #0x0
        LDW       (0x19,SP), X
        LDW       X, #0x0
        LDW       (0x1b,SP), X
        LDW       X, #0x0
        LDW       (0x15,SP), X
        LDW       X, #0x0
        LDW       (0x17,SP), X
        CLRW      X
        LDW       S:?w7, X
        LDW       S:?w6, X
        CLR       S:?b11
        CLR       S:?b10
        CLR       A
        LD        (0x5,SP), A
        CLR       A
        LD        (0x4,SP), A
        CLR       A
        LD        (0x6,SP), A
        CLR       S:?b9
        LD        A, #0x3
        LD        (0x3,SP), A
        LDW       X, #0x0
        LDW       (0x11,SP), X
        LDW       X, #0x0
        LDW       (0x13,SP), X
        BTJT      L:V_StatusFlags_U8R, #0x2, ??lb_22
        JPF       L:??PEDO_ProcessAccelarationData_0
??lb_22:
        BRES      L:V_StatusFlags_U8R, #0x2
        MOV       L:??v_PreviousActivity_u8r, #0x0
        MOV       L:V_InterStepCount_U8R, #0x0
        MOV       L:??v_CorrectionCount_u8r, #0x0
        MOV       L:??v_ErrorCount_u8r, #0x0
        MOV       L:??v_ModeTimeoutCount_u8r, #0x0
        MOV       L:V_SampleCountForCycle_U8R, #0x0
        MOV       L:??v_CountStepToStep_u8r, #0x0
        MOV       L:??v_CountStepToStepPrev1_u8r, #0x0
        MOV       L:??v_CountStepToStepPrev2_u8r, #0x0
        MOV       L:V_InterStepCountLimit_U8R, #0x3
        LDW       X, #0x7fff
        LDW       L:??v_NegTrendAccelVal_s16r, X
        CLRW      X
        LDW       L:??v_PrevPosNegTrendAccelValDiff_s16r, X
        CLRW      X
        LDW       S:?w1, X
        LDW       S:?w0, X
        CALLF     L:?mov_l3_l0
        CALLF     ResetInternalFIFO
        CALLF     ResetExternalFIFO
        CLR       A
        LD        S:?b8, A
??PEDO_ProcessAccelarationData_1:
        LD        A, S:?b8
        CP        A, #0x18
        JRSGE     L:??PEDO_ProcessAccelarationData_2
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        CLRW      Y
        LDW       (L:A_Raw_AccelX_S16R,X), Y
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        CLRW      Y
        LDW       (L:A_Raw_AccelY_S16R,X), Y
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        CLRW      Y
        LDW       (L:A_Raw_AccelZ_S16R,X), Y
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        CLRW      Y
        LDW       (L:A_Raw_AccelC_S16R,X), Y
        LD        A, S:?b8
        ADD       A, #0x1
        LD        S:?b8, A
        JRA       L:??PEDO_ProcessAccelarationData_1
??PEDO_ProcessAccelarationData_2:
        LD        A, #0x7
        LD        S:?b8, A
??PEDO_ProcessAccelarationData_3:
        LD        A, S:?b8
        CP        A, #0x0
        JRSLT     L:??PEDO_ProcessAccelarationData_4
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        CLRW      Y
        LDW       (L:??a_AvgActivityDetectionRatioBuf_u16r,X), Y
        LD        A, S:?b8
        ADD       A, #0xffffffffffffffff
        LD        S:?b8, A
        JRA       L:??PEDO_ProcessAccelarationData_3
??PEDO_ProcessAccelarationData_4:
        MOV       L:V_ActivityDetected_U8R, #0x0
        MOV       L:??v_TrendDominantAxis_u8r, #0x3
        MOV       L:V_AxisSelectFlag_U8R, #0x1
??PEDO_ProcessAccelarationData_0:
        LD        A, L:??v_PreStatusFlags_u8r
        AND       A, #0xffffffffffffff80
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LD        A, L:V_StatusFlags_U8R
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0xffffffffffffffff
        RLWA      X, A
        AND       A, #0x80
        RLWA      X, A
        LDW       S:?w0, X
        CPW       Y, S:?w0
        JREQ      L:??PEDO_ProcessAccelarationData_5
        MOV       L:??v_CorrectionCount_u8r, #0x0
        MOV       L:V_InterStepCount_U8R, #0x0
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0xe7
        LD        L:V_StatusFlags_U8R, A
        MOV       L:??v_ModeTimeoutCount_u8r, #0x0
        BSET      L:V_StatusFlags_U8R, #0x0
        BRES      L:V_StatusFlags_U8R, #0x1
        CALLF     ResetInternalFIFO
??PEDO_ProcessAccelarationData_5:
        LD        A, L:V_SampleCountForCycle_U8R
        ADD       A, #0x1
        LD        L:V_SampleCountForCycle_U8R, A
        LD        A, L:??v_CountStepToStep_u8r
        ADD       A, #0x1
        LD        L:??v_CountStepToStep_u8r, A
        LD        A, L:??v_ModeTimeoutCount_u8r
        ADD       A, #0x1
        LD        L:??v_ModeTimeoutCount_u8r, A
        LDW       X, (0x25,SP)
        CALLF     PEDO_GetAbsoluteShort
        LDW       S:?w1, X
        LDW       X, (0x23,SP)
        CALLF     PEDO_GetAbsoluteShort
        LDW       S:?w0, X
        LDW       X, (0x21,SP)
        CALLF     PEDO_GetAbsoluteShort
        LDW       S:?w2, X
        LDW       X, S:?w0
        ADDW      X, S:?w1
        ADDW      X, S:?w2
        LDW       (0x7,SP), X
        CLR       A
        LD        S:?b8, A
??PEDO_ProcessAccelarationData_6:
        LD        A, S:?b8
        CP        A, #0x17
        JRSLT     ??lb_23
        JP        L:??PEDO_ProcessAccelarationData_7
??lb_23:
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelX_S16R + 44
        LDW       X, (X)
        LDW       Y, X
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       S:?w0, X
        LDW       X, S:?w0
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelX_S16R + 46
        LDW       (X), Y
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelY_S16R + 44
        LDW       X, (X)
        LDW       Y, X
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       S:?w0, X
        LDW       X, S:?w0
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelY_S16R + 46
        LDW       (X), Y
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelZ_S16R + 44
        LDW       X, (X)
        LDW       Y, X
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       S:?w0, X
        LDW       X, S:?w0
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelZ_S16R + 46
        LDW       (X), Y
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelC_S16R + 44
        LDW       X, (X)
        LDW       Y, X
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       S:?w0, X
        LDW       X, S:?w0
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelC_S16R + 46
        LDW       (X), Y
        LD        A, S:?b8
        ADD       A, #0x1
        LD        S:?b8, A
        JP        L:??PEDO_ProcessAccelarationData_6
??PEDO_ProcessAccelarationData_7:
        LDW       X, (0x25,SP)
        LDW       L:A_Raw_AccelX_S16R, X
        LDW       X, (0x23,SP)
        LDW       L:A_Raw_AccelY_S16R, X
        LDW       X, (0x21,SP)
        LDW       L:A_Raw_AccelZ_S16R, X
        LDW       X, (0x7,SP)
        LDW       L:A_Raw_AccelC_S16R, X
        LDW       X, #0x0
        LDW       (0x1d,SP), X
        LDW       X, #0x0
        LDW       (0x1f,SP), X
        LDW       X, #0x0
        LDW       (0x19,SP), X
        LDW       X, #0x0
        LDW       (0x1b,SP), X
        LDW       X, #0x0
        LDW       (0x15,SP), X
        LDW       X, #0x0
        LDW       (0x17,SP), X
        CLRW      X
        LDW       S:?w1, X
        LDW       S:?w0, X
        CALLF     L:?mov_l3_l0
        CLR       A
        LD        S:?b8, A
??PEDO_ProcessAccelarationData_8:
        LD        A, S:?b8
        CP        A, #0x18
        JRSLT     ??lb_24
        JP        L:??PEDO_ProcessAccelarationData_9
??lb_24:
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        LDW       X, (L:gc_HighSpeedFilterCoeff,X)
        CALLF     L:?sext32_l0_x
        CALLF     L:?mov_l1_l0
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelX_S16R + 46
        LDW       X, (X)
        CALLF     L:?sext32_l0_x
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?load32_l1_dbsp
        DATA
        DC8       0x1d
        CODE
        CALLF     L:?add32_l0_l0_l1
        LDW       X, #0x1d
        CALLF     L:?load32_xsp_l0
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        LDW       X, (L:gc_HighSpeedFilterCoeff,X)
        CALLF     L:?sext32_l0_x
        CALLF     L:?mov_l1_l0
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelY_S16R + 46
        LDW       X, (X)
        CALLF     L:?sext32_l0_x
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?load32_l1_dbsp
        DATA
        DC8       0x19
        CODE
        CALLF     L:?add32_l0_l0_l1
        LDW       X, #0x19
        CALLF     L:?load32_xsp_l0
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        LDW       X, (L:gc_HighSpeedFilterCoeff,X)
        CALLF     L:?sext32_l0_x
        CALLF     L:?mov_l1_l0
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelZ_S16R + 46
        LDW       X, (X)
        CALLF     L:?sext32_l0_x
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?load32_l1_dbsp
        DATA
        DC8       0x15
        CODE
        CALLF     L:?add32_l0_l0_l1
        LDW       X, #0x15
        CALLF     L:?load32_xsp_l0
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        LDW       X, (L:gc_CompositeFilterCoeff,X)
        CALLF     L:?sext32_l0_x
        CALLF     L:?mov_l1_l0
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, #A_Raw_AccelC_S16R + 46
        LDW       X, (X)
        CALLF     L:?sext32_l0_x
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l3
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l3_l0
        LD        A, S:?b8
        ADD       A, #0x1
        LD        S:?b8, A
        JP        L:??PEDO_ProcessAccelarationData_8
??PEDO_ProcessAccelarationData_9:
        CALLF     L:?load32_l0_dbsp
        DATA
        DC8       0x1d
        CODE
        LD        A, #0xf
        CALLF     L:?sra32_l0_l0_a
        LDW       X, S:?w1
        LDW       (0x9,SP), X
        CALLF     L:?load32_l0_dbsp
        DATA
        DC8       0x19
        CODE
        LD        A, #0xf
        CALLF     L:?sra32_l0_l0_a
        LDW       X, S:?w1
        LDW       (0xb,SP), X
        CALLF     L:?load32_l0_dbsp
        DATA
        DC8       0x15
        CODE
        LD        A, #0xf
        CALLF     L:?sra32_l0_l0_a
        LDW       X, S:?w1
        LDW       (0xd,SP), X
        CALLF     L:?mov_l0_l3
        LD        A, #0xf
        CALLF     L:?sra32_l0_l0_a
        LDW       X, S:?w1
        LDW       (0xf,SP), X
        LDW       Y, #S_Param_Xaxis
        LDW       X, (0x9,SP)
        CALLF     PEDO_Get_SingleAxisAccelFeatures
        LDW       Y, #S_Param_Yaxis
        LDW       X, (0xb,SP)
        CALLF     PEDO_Get_SingleAxisAccelFeatures
        LDW       Y, #S_Param_Zaxis
        LDW       X, (0xd,SP)
        CALLF     PEDO_Get_SingleAxisAccelFeatures
        LDW       Y, #S_Param_Caxis
        LDW       X, (0xf,SP)
        CALLF     PEDO_Get_SingleAxisAccelFeatures
        CALLF     PEDO_GetActivity
        LD        S:?b9, A
        LD        A, L:S_Param_Xaxis + 53
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_10
        MOV       L:??v_XaxisStrideDetectedFlag_u8r, #0x1
??PEDO_ProcessAccelarationData_10:
        LD        A, L:S_Param_Yaxis + 53
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_11
        MOV       L:??v_YaxisStrideDetectedFlag_u8r, #0x1
??PEDO_ProcessAccelarationData_11:
        LD        A, L:S_Param_Zaxis + 53
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_12
        MOV       L:??v_ZaxisStrideDetectedFlag_u8r, #0x1
??PEDO_ProcessAccelarationData_12:
        LD        A, L:S_Param_Caxis + 53
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_13
        MOV       L:??v_CaxisStrideDetectedFlag_u8r, #0x1
??PEDO_ProcessAccelarationData_13:
        LD        A, L:??v_XaxisStrideDetectedFlag_u8r
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_14
        LD        A, L:??v_YaxisStrideDetectedFlag_u8r
        CP        A, #0x1
        JREQ      L:??PEDO_ProcessAccelarationData_15
??PEDO_ProcessAccelarationData_14:
        LD        A, L:??v_YaxisStrideDetectedFlag_u8r
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_16
        LD        A, L:??v_ZaxisStrideDetectedFlag_u8r
        CP        A, #0x1
        JREQ      L:??PEDO_ProcessAccelarationData_15
??PEDO_ProcessAccelarationData_16:
        LD        A, L:??v_ZaxisStrideDetectedFlag_u8r
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_17
        LD        A, L:??v_XaxisStrideDetectedFlag_u8r
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_17
??PEDO_ProcessAccelarationData_15:
        LDW       X, SP
        ADDW      X, #0x6
        LDW       S:?w3, X
        LDW       X, SP
        ADDW      X, #0x4
        LDW       S:?w2, X
        LDW       X, SP
        ADDW      X, #0x5
        LDW       S:?w1, X
        LD        A, S:?b9
        LDW       X, #S_Param_Zaxis
        LDW       S:?w0, X
        LDW       X, #S_Param_Yaxis
        LDW       Y, X
        LDW       X, #S_Param_Xaxis
        CALLF     PEDO_FindDominantAxisOrder
        MOV       L:??v_XaxisStrideDetectedFlag_u8r, #0x0
        MOV       L:??v_YaxisStrideDetectedFlag_u8r, #0x0
        MOV       L:??v_ZaxisStrideDetectedFlag_u8r, #0x0
        MOV       L:??v_CaxisStrideDetectedFlag_u8r, #0x0
??PEDO_ProcessAccelarationData_17:
        PUSH      #BYTE1(V_SingleAxisStableCadence_U16R)
        PUSH      #BYTE2(V_SingleAxisStableCadence_U16R)
        LDW       X, SP
        ADDW      X, #0x5
        LDW       S:?w3, X
        MOV       S:?b5, S:?b9
        LD        A, (0x6,SP)
        LD        S:?b4, A
        LD        A, (0x7,SP)
        LDW       X, #S_Param_Caxis
        LDW       S:?w1, X
        LDW       X, #S_Param_Zaxis
        LDW       S:?w0, X
        LDW       X, #S_Param_Yaxis
        LDW       Y, X
        LDW       X, #S_Param_Xaxis
        CALLF     PEDO_Find_StableSingleAxis_StableCadenceX100
        ADD       SP, #0x2
        LD        A, L:S_Param_Caxis + 32
        CLRW      X
        LD        XL, A
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l1_l0
        LDW       X, L:S_Param_Caxis + 22
        SLLW      X
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fdiv32_l0_l0_l1
        CALLF     L:?fcasts16f32_x_l0
        LDW       L:V_CompositeAxis_StrideRatio_U16R, X
        LDW       X, L:S_Param_Caxis + 55
        LDW       L:V_CompositeAxis_CadenceX100_U16R, X
        LD        A, S:?b9
        CP        A, #0x3
        JRNE      L:??PEDO_ProcessAccelarationData_18
        MOV       L:V_AxisSelectFlag_U8R, #0x2
        JRA       L:??PEDO_ProcessAccelarationData_19
??PEDO_ProcessAccelarationData_18:
        MOV       L:V_AxisSelectFlag_U8R, #0x1
??PEDO_ProcessAccelarationData_19:
        LD        A, L:V_AxisSelectFlag_U8R
        CP        A, #0x2
        JRNE      L:??PEDO_ProcessAccelarationData_20
        LD        A, (0x3,SP)
        LD        L:??v_TrendDominantAxis_u8r, A
        JRA       L:??PEDO_ProcessAccelarationData_21
??PEDO_ProcessAccelarationData_20:
        MOV       L:??v_TrendDominantAxis_u8r, #0x3
??PEDO_ProcessAccelarationData_21:
        LD        A, L:??v_TrendDominantAxis_u8r
        CLRW      X
        LD        XL, A
        SLLW      X
        LDW       S:?w0, X
        LDW       X, SP
        ADDW      X, #0x9
        ADDW      X, S:?w0
        LDW       X, (X)
        LDW       (0x1,SP), X
        LDW       Y, SP
        ADDW      Y, #0x1
        LDW       X, (0x1,SP)
        CALLF     PEDO_TrendFinder
        LDW       X, (0x7,SP)
        LDW       L:ExtraVar + 28, X
        LDW       X, (0x9,SP)
        LDW       L:ExtraVar + 30, X
        LDW       X, (0xb,SP)
        LDW       L:ExtraVar + 32, X
        LDW       X, (0xd,SP)
        LDW       L:ExtraVar + 34, X
        LDW       X, (0xf,SP)
        LDW       L:ExtraVar + 36, X
        LD        A, L:S_Param_Xaxis + 32
        CLRW      X
        LD        XL, A
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l1_l0
        LDW       X, L:S_Param_Xaxis + 22
        SLLW      X
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fdiv32_l0_l0_l1
        CALLF     L:?fcasts16f32_x_l0
        LDW       L:ExtraVar + 40, X
        LD        A, L:S_Param_Yaxis + 32
        CLRW      X
        LD        XL, A
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l1_l0
        LDW       X, L:S_Param_Yaxis + 22
        SLLW      X
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fdiv32_l0_l0_l1
        CALLF     L:?fcasts16f32_x_l0
        LDW       L:ExtraVar + 42, X
        LD        A, L:S_Param_Zaxis + 32
        CLRW      X
        LD        XL, A
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l1_l0
        LDW       X, L:S_Param_Zaxis + 22
        SLLW      X
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fdiv32_l0_l0_l1
        CALLF     L:?fcasts16f32_x_l0
        LDW       L:ExtraVar + 44, X
        LD        A, L:S_Param_Caxis + 32
        CLRW      X
        LD        XL, A
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l1_l0
        LDW       X, L:S_Param_Caxis + 22
        SLLW      X
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fdiv32_l0_l0_l1
        CALLF     L:?fcasts16f32_x_l0
        LDW       L:ExtraVar + 46, X
        LD        A, (0x5,SP)
        LD        L:ExtraVar + 48, A
        LD        A, (0x4,SP)
        LD        L:ExtraVar + 49, A
        LD        A, (0x6,SP)
        LD        L:ExtraVar + 50, A
        LD        A, L:S_Param_Xaxis + 54
        LD        L:ExtraVar + 51, A
        LD        A, L:S_Param_Yaxis + 54
        LD        L:ExtraVar + 52, A
        LD        A, L:S_Param_Zaxis + 54
        LD        L:ExtraVar + 53, A
        LD        A, L:S_Param_Caxis + 54
        LD        L:ExtraVar + 54, A
        LD        A, (0x3,SP)
        LD        L:ExtraVar + 55, A
        LDW       X, L:S_Param_Xaxis + 55
        LDW       L:ExtraVar + 56, X
        LDW       X, L:S_Param_Yaxis + 55
        LDW       L:ExtraVar + 58, X
        LDW       X, L:S_Param_Zaxis + 55
        LDW       L:ExtraVar + 60, X
        LDW       X, L:S_Param_Caxis + 55
        LDW       L:ExtraVar + 62, X
        LDW       X, L:V_SingleAxisStableCadence_U16R
        LDW       L:ExtraVar + 64, X
        LD        A, L:??v_TrendDominantAxis_u8r
        LD        L:ExtraVar + 38, A
        LD        A, L:V_AxisSelectFlag_U8R
        LD        L:ExtraVar + 39, A
        BTJF      L:V_StatusFlags_U8R, #0x6, L:??PEDO_ProcessAccelarationData_22
        LDW       X, (0x1,SP)
        LDW       L:??v_NegTrendAccelVal_s16r, X
        JP        L:??PEDO_ProcessAccelarationData_23
??PEDO_ProcessAccelarationData_22:
        BTJT      L:V_StatusFlags_U8R, #0x5, ??lb_25
        JPF       L:??PEDO_ProcessAccelarationData_24
??lb_25:
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0xe7
        LD        L:V_StatusFlags_U8R, A
        LDW       X, L:??v_NegTrendAccelVal_s16r
        SUBW      X, (0x1,SP)
        LDW       (0x1,SP), X
        MOV       L:V_Activity_U8R, #0x0
        LD        A, L:V_LazyWalkLowerLimit_U8R
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, (0x1,SP)
        CPW       X, S:?w0
        JRSLT     L:??PEDO_ProcessAccelarationData_25
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0xa0
        CALLF     L:?sra16_x_x_a
        CPW       X, (0x1,SP)
        JRSLT     L:??PEDO_ProcessAccelarationData_25
        LD        A, L:V_SampleCountForCycle_U8R
        CP        A, #0xa
        JRC       L:??PEDO_ProcessAccelarationData_25
        LD        A, L:V_SampleCountForCycle_U8R
        CP        A, #0x21
        JRNC      L:??PEDO_ProcessAccelarationData_25
        LD        A, L:??v_CountStepToStep_u8r
        CP        A, #0x13
        JRC       L:??PEDO_ProcessAccelarationData_26
        LD        A, L:??v_CountStepToStep_u8r
        CP        A, #0x1e
        JRNC      L:??PEDO_ProcessAccelarationData_26
        BSET      L:V_StatusFlags_U8R, #0x3
        JRA       L:??PEDO_ProcessAccelarationData_27
??PEDO_ProcessAccelarationData_26:
        BSET      L:V_StatusFlags_U8R, #0x4
??PEDO_ProcessAccelarationData_27:
        BSET      L:V_Activity_U8R, #0x1
??PEDO_ProcessAccelarationData_25:
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x64
        CALLF     L:?sra16_x_x_a
        LDW       S:?w0, X
        LDW       X, (0x1,SP)
        CPW       X, S:?w0
        JRSLT     L:??PEDO_ProcessAccelarationData_28
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x190
        CALLF     L:?sra16_x_x_a
        CPW       X, (0x1,SP)
        JRSLT     L:??PEDO_ProcessAccelarationData_28
        LD        A, L:V_SampleCountForCycle_U8R
        CP        A, #0x5
        JRC       L:??PEDO_ProcessAccelarationData_28
        LD        A, L:V_SampleCountForCycle_U8R
        CP        A, #0x16
        JRNC      L:??PEDO_ProcessAccelarationData_28
        LD        A, L:??v_CountStepToStepPrev1_u8r
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LD        A, L:??v_CountStepToStep_u8r
        CLRW      X
        LD        XL, A
        SUBW      X, S:?w0
        CALLF     PEDO_GetAbsoluteShort
        CPW       X, #0x4
        JRSLT     L:??PEDO_ProcessAccelarationData_29
        LD        A, L:??v_CountStepToStepPrev2_u8r
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LD        A, L:??v_CountStepToStep_u8r
        CLRW      X
        LD        XL, A
        SUBW      X, S:?w0
        CALLF     PEDO_GetAbsoluteShort
        CPW       X, #0x4
        JRSGE     L:??PEDO_ProcessAccelarationData_30
??PEDO_ProcessAccelarationData_29:
        LD        A, L:??v_CountStepToStep_u8r
        CP        A, #0x8
        JRC       L:??PEDO_ProcessAccelarationData_30
        LD        A, L:??v_CountStepToStep_u8r
        CP        A, #0x11
        JRNC      L:??PEDO_ProcessAccelarationData_30
        BSET      L:V_StatusFlags_U8R, #0x3
        JRA       L:??PEDO_ProcessAccelarationData_31
??PEDO_ProcessAccelarationData_30:
        BSET      L:V_StatusFlags_U8R, #0x4
??PEDO_ProcessAccelarationData_31:
        BSET      L:V_Activity_U8R, #0x0
??PEDO_ProcessAccelarationData_28:
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x64
        CALLF     L:?sra16_x_x_a
        LDW       S:?w0, X
        LDW       X, (0x1,SP)
        CPW       X, S:?w0
        JRSLT     L:??PEDO_ProcessAccelarationData_32
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x4268
        CALLF     L:?sra16_x_x_a
        CPW       X, (0x1,SP)
        JRSLT     L:??PEDO_ProcessAccelarationData_32
        LD        A, L:V_SampleCountForCycle_U8R
        CP        A, #0x4
        JRC       L:??PEDO_ProcessAccelarationData_32
        LD        A, L:V_SampleCountForCycle_U8R
        CP        A, #0x10
        JRNC      L:??PEDO_ProcessAccelarationData_32
        LD        A, L:??v_CountStepToStepPrev1_u8r
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LD        A, L:??v_CountStepToStep_u8r
        CLRW      X
        LD        XL, A
        SUBW      X, S:?w0
        CALLF     PEDO_GetAbsoluteShort
        CPW       X, #0x4
        JRSLT     L:??PEDO_ProcessAccelarationData_33
        LD        A, L:??v_CountStepToStepPrev2_u8r
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LD        A, L:??v_CountStepToStep_u8r
        CLRW      X
        LD        XL, A
        SUBW      X, S:?w0
        CALLF     PEDO_GetAbsoluteShort
        CPW       X, #0x4
        JRSGE     L:??PEDO_ProcessAccelarationData_34
??PEDO_ProcessAccelarationData_33:
        LD        A, L:??v_CountStepToStep_u8r
        CP        A, #0x8
        JRC       L:??PEDO_ProcessAccelarationData_34
        LD        A, L:??v_CountStepToStep_u8r
        CP        A, #0x11
        JRNC      L:??PEDO_ProcessAccelarationData_34
        BSET      L:V_StatusFlags_U8R, #0x3
        JRA       L:??PEDO_ProcessAccelarationData_35
??PEDO_ProcessAccelarationData_34:
        BSET      L:V_StatusFlags_U8R, #0x4
??PEDO_ProcessAccelarationData_35:
        BSET      L:V_Activity_U8R, #0x2
??PEDO_ProcessAccelarationData_32:
        LD        A, L:??v_ModeTimeoutCount_u8r
        CP        A, #0x47
        JRC       L:??PEDO_ProcessAccelarationData_36
        BTJF      L:V_StatusFlags_U8R, #0x0, L:??PEDO_ProcessAccelarationData_36
        MOV       L:??v_ModeTimeoutCount_u8r, #0x0
        BTJT      L:V_StatusFlags_U8R, #0x7, L:??PEDO_ProcessAccelarationData_36
        MOV       L:??v_CorrectionCount_u8r, #0x0
        MOV       L:V_InterStepCount_U8R, #0x0
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0xe7
        LD        L:V_StatusFlags_U8R, A
        MOV       L:??v_ErrorCount_u8r, #0x0
        CALLF     ResetInternalFIFO
??PEDO_ProcessAccelarationData_36:
        LD        A, L:??v_ModeTimeoutCount_u8r
        CP        A, #0x65
        JRC       L:??PEDO_ProcessAccelarationData_37
        BTJF      L:V_StatusFlags_U8R, #0x1, L:??PEDO_ProcessAccelarationData_37
        MOV       L:??v_ModeTimeoutCount_u8r, #0x0
        BTJT      L:V_StatusFlags_U8R, #0x7, L:??PEDO_ProcessAccelarationData_37
        MOV       L:??v_CorrectionCount_u8r, #0x0
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0xe7
        LD        L:V_StatusFlags_U8R, A
        MOV       L:??v_ErrorCount_u8r, #0x0
        BSET      L:V_StatusFlags_U8R, #0x0
        BRES      L:V_StatusFlags_U8R, #0x1
        CALLF     ResetInternalFIFO
??PEDO_ProcessAccelarationData_37:
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0x18
        CP        A, #0x0
        JRNE      ??lb_26
        JP        L:??PEDO_ProcessAccelarationData_38
??lb_26:
        LD        A, L:V_Activity_U8R
        AND       A, L:??v_PreviousActivity_u8r
        CP        A, #0x0
        JRNE      L:??PEDO_ProcessAccelarationData_39
        LD        A, L:??v_PreviousActivity_u8r
        CP        A, #0x0
        JREQ      L:??PEDO_ProcessAccelarationData_39
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0x81
        CP        A, #0x1
        JRNE      L:??PEDO_ProcessAccelarationData_39
        LDW       X, L:??v_PrevPosNegTrendAccelValDiff_s16r
        CPW       X, (0x1,SP)
        JRSGE     L:??PEDO_ProcessAccelarationData_40
        LDW       X, (0x1,SP)
        LDW       S:?w0, X
        JRA       L:??PEDO_ProcessAccelarationData_41
??PEDO_ProcessAccelarationData_40:
        LDW       X, L:??v_PrevPosNegTrendAccelValDiff_s16r
        LDW       S:?w0, X
??PEDO_ProcessAccelarationData_41:
        LDW       X, (0x1,SP)
        SUBW      X, L:??v_PrevPosNegTrendAccelValDiff_s16r
        CALLF     PEDO_GetAbsoluteShort
        SLLW      X
        LDW       S:?w1, X
        LDW       X, S:?w0
        CPW       X, S:?w1
        JRSGE     L:??PEDO_ProcessAccelarationData_39
        MOV       L:V_InterStepCount_U8R, #0x0
        MOV       L:??v_CorrectionCount_u8r, #0x0
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0xe7
        LD        L:V_StatusFlags_U8R, A
        CALLF     ResetInternalFIFO
??PEDO_ProcessAccelarationData_39:
        LD        A, L:V_Activity_U8R
        LD        L:??v_PreviousActivity_u8r, A
        LDW       X, (0x1,SP)
        LDW       L:??v_PrevPosNegTrendAccelValDiff_s16r, X
        MOV       L:??v_ErrorCount_u8r, #0x0
        MOV       L:??v_ModeTimeoutCount_u8r, #0x0
        LD        A, L:V_SampleCountForCycle_U8R
        CLRW      Y
        LD        YL, A
        LDW       X, (0x1,SP)
        CALLF     L:?sdiv16_x_x_y
        LDW       S:?w5, X
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x24
        CALLF     L:?sra16_x_x_a
        CPW       X, S:?w5
        JRNC      L:??PEDO_ProcessAccelarationData_42
        MOV       L:V_ActivityInstateneous_U8R, #0x3
        JRA       L:??PEDO_ProcessAccelarationData_43
??PEDO_ProcessAccelarationData_42:
        LDW       X, S:?w5
        CPW       X, #0x5
        JRC       L:??PEDO_ProcessAccelarationData_44
        MOV       L:V_ActivityInstateneous_U8R, #0x1
        JRA       L:??PEDO_ProcessAccelarationData_43
??PEDO_ProcessAccelarationData_44:
        MOV       L:V_ActivityInstateneous_U8R, #0x0
??PEDO_ProcessAccelarationData_43:
        LDW       X, (0x1,SP)
        LDW       L:ExtraVar, X
        LD        A, L:V_SampleCountForCycle_U8R
        LD        L:ExtraVar + 2, A
        LD        A, L:ExtraVar + 2
        CLRW      X
        LD        XL, A
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l1_l0
        LDW       X, (0x1,SP)
        CALLF     L:?fcastf32s16_l0_x
        CALLF     L:?fdiv32_l0_l0_l1
        CALLF     L:?fcasts16f32_x_l0
        LDW       L:ExtraVar + 3, X
        LD        A, L:V_ActivityInstateneous_U8R
        LD        L:ExtraVar + 5, A
        BTJT      L:V_StatusFlags_U8R, #0x3, ??lb_27
        JPF       L:??PEDO_ProcessAccelarationData_45
??lb_27:
        LD        A, #0x7
        LD        S:?b8, A
??PEDO_ProcessAccelarationData_46:
        LD        A, S:?b8
        CP        A, #0x1
        JRSLT     L:??PEDO_ProcessAccelarationData_47
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        ADDW      X, #??a_AvgActivityDetectionRatioBuf_u16r - 2
        LDW       X, (X)
        LDW       Y, X
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        LDW       (L:??a_AvgActivityDetectionRatioBuf_u16r,X), Y
        LD        A, S:?b8
        ADD       A, #0xffffffffffffffff
        LD        S:?b8, A
        JRA       L:??PEDO_ProcessAccelarationData_46
??PEDO_ProcessAccelarationData_47:
        LD        A, L:V_SampleCountForCycle_U8R
        CLRW      X
        LD        XL, A
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l1_l0
        LDW       X, (0x1,SP)
        CALLF     L:?fcastf32s16_l0_x
        CALLF     L:?fdiv32_l0_l0_l1
        CALLF     L:?fcasts16f32_x_l0
        LDW       L:??a_AvgActivityDetectionRatioBuf_u16r, X
        LDW       X, #0x0
        LDW       (0x11,SP), X
        LDW       X, #0x0
        LDW       (0x13,SP), X
        LD        A, #0x7
        LD        S:?b8, A
??PEDO_ProcessAccelarationData_48:
        LD        A, S:?b8
        CP        A, #0x0
        JRSLT     L:??PEDO_ProcessAccelarationData_49
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        LDW       X, (L:??a_AvgActivityDetectionRatioBuf_u16r,X)
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?load32_l0_dbsp
        DATA
        DC8       0x11
        CODE
        CALLF     L:?add32_l0_l0_l1
        LDW       X, #0x11
        CALLF     L:?load32_xsp_l0
        LD        A, S:?b8
        ADD       A, #0xffffffffffffffff
        LD        S:?b8, A
        JRA       L:??PEDO_ProcessAccelarationData_48
??PEDO_ProcessAccelarationData_49:
        CALLF     L:?load32_l0_dbsp
        DATA
        DC8       0x11
        CODE
        CALLF     L:?fcastf32u32_l0_l0
        CALLF     L:?fdiv32_l0_l0_dc32
        DATA
        DC32      0x41000000
        CODE
        CALLF     L:?fcasts16f32_x_l0
        LDW       S:?w5, X
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x24
        CALLF     L:?sra16_x_x_a
        CPW       X, S:?w5
        JRNC      L:??PEDO_ProcessAccelarationData_50
        MOV       L:V_ActivityDetected_U8R, #0x3
        JRA       L:??PEDO_ProcessAccelarationData_51
??PEDO_ProcessAccelarationData_50:
        LDW       X, S:?w5
        CPW       X, #0x5
        JRC       L:??PEDO_ProcessAccelarationData_52
        MOV       L:V_ActivityDetected_U8R, #0x1
        JRA       L:??PEDO_ProcessAccelarationData_51
??PEDO_ProcessAccelarationData_52:
        MOV       L:V_ActivityDetected_U8R, #0x0
??PEDO_ProcessAccelarationData_51:
        BTJF      L:V_StatusFlags_U8R, #0x1, L:??PEDO_ProcessAccelarationData_53
        LD        A, L:??v_CorrectionCount_u8r
        CP        A, #0x4
        JRC       L:??PEDO_ProcessAccelarationData_54
        LD        A, L:??v_CorrectionCount_u8r
        CLRW      X
        LD        XL, A
        INCW      X
        ADDW      X, L:V_StepCount_U16R
        LDW       L:V_StepCount_U16R, X
        MOV       L:??v_CorrectionCount_u8r, #0x0
        LD        A, #0x1
        LDW       X, #V_ActivityInstateneous_U8R
        LDW       S:?w0, X
        LDW       Y, #V_SampleCountForCycle_U8R
        LDW       X, #??v_CountStepToStep_u8r
        CALLF     SetExternalBuffer
        CALLF     GetInternalFIFOSize
        LD        L:V_TempFIFOSize_U8R, A
        LDW       X, #A_TempActivityBuffer_U8R
        LDW       S:?w0, X
        LDW       Y, #A_TempP2PCountBuffer_U8R
        LDW       X, #A_TempS2SCountBuffer_U8R
        CALLF     GetInternalBuffer
        LD        A, L:V_TempFIFOSize_U8R
        LDW       X, #A_TempActivityBuffer_U8R
        LDW       S:?w0, X
        LDW       Y, #A_TempP2PCountBuffer_U8R
        LDW       X, #A_TempS2SCountBuffer_U8R
        CALLF     SetExternalBuffer
        JP        L:??PEDO_ProcessAccelarationData_55
??PEDO_ProcessAccelarationData_54:
        LDW       X, L:V_StepCount_U16R
        INCW      X
        LDW       L:V_StepCount_U16R, X
        LD        A, #0x1
        LDW       X, #V_ActivityInstateneous_U8R
        LDW       S:?w0, X
        LDW       Y, #V_SampleCountForCycle_U8R
        LDW       X, #??v_CountStepToStep_u8r
        CALLF     SetExternalBuffer
        JP        L:??PEDO_ProcessAccelarationData_55
??PEDO_ProcessAccelarationData_53:
        BTJT      L:V_StatusFlags_U8R, #0x0, ??lb_28
        JPF       L:??PEDO_ProcessAccelarationData_55
??lb_28:
        LD        A, L:??v_CorrectionCount_u8r
        CP        A, #0x4
        JRC       L:??PEDO_ProcessAccelarationData_56
        LD        A, L:??v_CorrectionCount_u8r
        ADD       A, #0x1
        ADD       A, L:V_InterStepCount_U8R
        LD        L:V_InterStepCount_U8R, A
        MOV       L:??v_CorrectionCount_u8r, #0x0
        LD        A, L:V_ActivityInstateneous_U8R
        LD        S:?b1, A
        LD        A, L:V_SampleCountForCycle_U8R
        LD        S:?b0, A
        LD        A, L:??v_CountStepToStep_u8r
        CALLF     SetInternalBuffer
        JRA       L:??PEDO_ProcessAccelarationData_57
??PEDO_ProcessAccelarationData_56:
        LD        A, L:V_InterStepCount_U8R
        ADD       A, #0x1
        LD        L:V_InterStepCount_U8R, A
        LD        A, L:V_ActivityInstateneous_U8R
        LD        S:?b1, A
        LD        A, L:V_SampleCountForCycle_U8R
        LD        S:?b0, A
        LD        A, L:??v_CountStepToStep_u8r
        CALLF     SetInternalBuffer
??PEDO_ProcessAccelarationData_57:
        LD        A, L:V_InterStepCountLimit_U8R
        CP        A, L:V_InterStepCount_U8R
        JRC       ??lb_29
        JP        L:??PEDO_ProcessAccelarationData_55
??lb_29:
        BTJF      L:V_StatusFlags_U8R, #0x7, ??lb_30
        JPF       L:??PEDO_ProcessAccelarationData_55
??lb_30:
        BSET      L:V_StatusFlags_U8R, #0x1
        BRES      L:V_StatusFlags_U8R, #0x0
        LD        A, L:??v_CorrectionCount_u8r
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LD        A, L:V_InterStepCount_U8R
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w0
        ADDW      X, L:V_StepCount_U16R
        LDW       L:V_StepCount_U16R, X
        MOV       L:V_InterStepCount_U8R, #0x0
        MOV       L:??v_CorrectionCount_u8r, #0x0
        CALLF     GetInternalFIFOSize
        LD        L:V_TempFIFOSize_U8R, A
        LDW       X, #A_TempActivityBuffer_U8R
        LDW       S:?w0, X
        LDW       Y, #A_TempP2PCountBuffer_U8R
        LDW       X, #A_TempS2SCountBuffer_U8R
        CALLF     GetInternalBuffer
        LD        A, L:V_TempFIFOSize_U8R
        LDW       X, #A_TempActivityBuffer_U8R
        LDW       S:?w0, X
        LDW       Y, #A_TempP2PCountBuffer_U8R
        LDW       X, #A_TempS2SCountBuffer_U8R
        CALLF     SetExternalBuffer
        JRA       L:??PEDO_ProcessAccelarationData_55
??PEDO_ProcessAccelarationData_45:
        BTJF      L:V_StatusFlags_U8R, #0x4, L:??PEDO_ProcessAccelarationData_55
        LD        A, L:??v_CorrectionCount_u8r
        ADD       A, #0x1
        LD        L:??v_CorrectionCount_u8r, A
        LD        A, L:V_ActivityInstateneous_U8R
        LD        S:?b1, A
        LD        A, L:V_SampleCountForCycle_U8R
        LD        S:?b0, A
        LD        A, L:??v_CountStepToStep_u8r
        CALLF     SetInternalBuffer
        JRA       L:??PEDO_ProcessAccelarationData_55
??PEDO_ProcessAccelarationData_38:
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x14
        CALLF     L:?sra16_x_x_a
        CPW       X, (0x1,SP)
        JRSGE     L:??PEDO_ProcessAccelarationData_58
        LD        A, L:??v_ErrorCount_u8r
        ADD       A, #0x1
        LD        L:??v_ErrorCount_u8r, A
??PEDO_ProcessAccelarationData_58:
        LD        A, L:??v_ErrorCount_u8r
        CP        A, #0x4
        JRC       L:??PEDO_ProcessAccelarationData_55
        BSET      L:V_StatusFlags_U8R, #0x0
        BRES      L:V_StatusFlags_U8R, #0x1
        MOV       L:??v_ErrorCount_u8r, #0x0
        MOV       L:??v_CorrectionCount_u8r, #0x0
        MOV       L:V_InterStepCount_U8R, #0x0
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0xe7
        LD        L:V_StatusFlags_U8R, A
        MOV       L:??v_ModeTimeoutCount_u8r, #0x0
        CALLF     ResetInternalFIFO
??PEDO_ProcessAccelarationData_55:
        LD        A, L:V_DivideFactor_U8R
        LDW       X, #0x14
        CALLF     L:?sra16_x_x_a
        CPW       X, (0x1,SP)
        JRSGE     L:??PEDO_ProcessAccelarationData_59
        LD        A, L:??v_CountStepToStepPrev1_u8r
        LD        L:??v_CountStepToStepPrev2_u8r, A
        LD        A, L:??v_CountStepToStep_u8r
        LD        L:??v_CountStepToStepPrev1_u8r, A
        MOV       L:??v_CountStepToStep_u8r, #0x0
??PEDO_ProcessAccelarationData_59:
        MOV       L:V_SampleCountForCycle_U8R, #0x0
        JRA       L:??PEDO_ProcessAccelarationData_23
??PEDO_ProcessAccelarationData_24:
        LD        A, L:??v_ModeTimeoutCount_u8r
        CP        A, #0x47
        JRC       L:??PEDO_ProcessAccelarationData_60
        BTJT      L:V_StatusFlags_U8R, #0x0, L:??PEDO_ProcessAccelarationData_61
??PEDO_ProcessAccelarationData_60:
        LD        A, L:??v_ModeTimeoutCount_u8r
        CP        A, #0x65
        JRC       L:??PEDO_ProcessAccelarationData_23
        BTJF      L:V_StatusFlags_U8R, #0x1, L:??PEDO_ProcessAccelarationData_23
??PEDO_ProcessAccelarationData_61:
        CLRW      X
        LDW       S:?w5, X
        MOV       L:V_ActivityDetected_U8R, #0x0
        LD        A, #0x7
        LD        S:?b8, A
??PEDO_ProcessAccelarationData_62:
        LD        A, S:?b8
        CP        A, #0x0
        JRSLT     L:??PEDO_ProcessAccelarationData_23
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        SLLW      X
        CLRW      Y
        LDW       (L:??a_AvgActivityDetectionRatioBuf_u16r,X), Y
        LD        A, S:?b8
        ADD       A, #0xffffffffffffffff
        LD        S:?b8, A
        JRA       L:??PEDO_ProcessAccelarationData_62
??PEDO_ProcessAccelarationData_23:
        LD        A, L:V_StatusFlags_U8R
        LD        L:??v_PreStatusFlags_u8r, A
        LDW       X, (0x1,SP)
        ADD       SP, #0x26
        JPF       L:?epilogue_l2_l3

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_CorrectionCount_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_ErrorCount_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_CountStepToStep_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_CountStepToStepPrev1_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_CountStepToStepPrev2_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_ModeTimeoutCount_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_PreStatusFlags_u8r:
        DS8 1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
??v_NegTrendAccelVal_s16r:
        DC16 32767

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_PrevPosNegTrendAccelValDiff_s16r:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??a_AvgActivityDetectionRatioBuf_u16r:
        DS8 16

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
??v_TrendDominantAxis_u8r:
        DC8 3

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_XaxisStrideDetectedFlag_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_YaxisStrideDetectedFlag_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_ZaxisStrideDetectedFlag_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_CaxisStrideDetectedFlag_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_PreviousActivity_u8r:
        DS8 1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_MedianFilter:
        CALLF     L:?push_l3
        CALLF     L:?push_w4
        PUSH      S:?b10
        PUSHW     X
        SUB       SP, #0x2a
        LD        S:?b8, A
        CLR       S:?b10
        CLR       S:?b9
        LDW       Y, #?_0
        LDW       X, SP
        ADDW      X, #0x3
        PUSHW     X
        LD        A, #0x28
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        CLRW      X
        LDW       (0x1,SP), X
        CLRW      X
        LDW       S:?w7, X
        LDW       S:?w6, X
        TNZ       S:?b8
        JRNE      ??lb_18
        JP        L:??PEDO_MedianFilter_0
??lb_18:
        LD        A, S:?b8
        CP        A, #0x15
        JRC       ??lb_19
        JP        L:??PEDO_MedianFilter_0
??lb_19:
        CLR       A
        LD        S:?b10, A
??PEDO_MedianFilter_1:
        LD        A, S:?b10
        CP        A, S:?b8
        JRNC      L:??PEDO_MedianFilter_2
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        SLLW      X
        ADDW      X, (0x2b,SP)
        LDW       X, (X)
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b10
        EXG       A, YL
        SLLW      Y
        LDW       S:?w0, Y
        LDW       Y, SP
        ADDW      Y, #0x3
        ADDW      Y, S:?w0
        LDW       (Y), X
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_MedianFilter_1
??PEDO_MedianFilter_2:
        CLR       A
        LD        S:?b10, A
??PEDO_MedianFilter_3:
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b8
        EXG       A, YL
        DECW      Y
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       S:?w0, Y
        CPW       X, S:?w0
        JRSLT     ??lb_20
        JP        L:??PEDO_MedianFilter_4
??lb_20:
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b9, A
??PEDO_MedianFilter_5:
        LD        A, S:?b9
        CP        A, S:?b8
        JRC       ??lb_21
        JP        L:??PEDO_MedianFilter_6
??lb_21:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        SLLW      X
        LDW       Y, SP
        ADDW      Y, #0x3
        LDW       S:?w0, X
        ADDW      Y, S:?w0
        CLRW      X
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        SLLW      X
        LDW       S:?w0, X
        LDW       X, SP
        ADDW      X, #0x3
        ADDW      X, S:?w0
        LDW       X, (X)
        CPW       X, (Y)
        JRNC      L:??PEDO_MedianFilter_7
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b10
        EXG       A, YL
        SLLW      Y
        LDW       X, SP
        ADDW      X, #0x3
        LDW       S:?w0, Y
        ADDW      X, S:?w0
        LDW       X, (X)
        LDW       (0x1,SP), X
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b9
        EXG       A, YL
        SLLW      Y
        LDW       X, SP
        ADDW      X, #0x3
        LDW       S:?w0, Y
        ADDW      X, S:?w0
        LDW       X, (X)
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b10
        EXG       A, YL
        SLLW      Y
        LDW       S:?w0, Y
        LDW       Y, SP
        ADDW      Y, #0x3
        ADDW      Y, S:?w0
        LDW       (Y), X
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b9
        EXG       A, YL
        SLLW      Y
        LDW       X, SP
        ADDW      X, #0x3
        LDW       S:?w0, Y
        ADDW      X, S:?w0
        LDW       Y, (0x1,SP)
        LDW       (X), Y
??PEDO_MedianFilter_7:
        LD        A, S:?b9
        ADD       A, #0x1
        LD        S:?b9, A
        JP        L:??PEDO_MedianFilter_5
??PEDO_MedianFilter_6:
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JP        L:??PEDO_MedianFilter_3
??PEDO_MedianFilter_4:
        LD        A, #0x2
        CLRW      X
        RRWA      X, A
        LD        A, S:?b8
        RLWA      X, A
        DIV       X, A
        CP        A, #0x0
        JRNE      L:??PEDO_MedianFilter_8
        LD        A, #0x2
        CLRW      X
        RRWA      X, A
        LD        A, S:?b8
        RLWA      X, A
        DIV       X, A
        LD        A, XL
        CLRW      Y
        LD        YL, A
        SLLW      Y
        LDW       X, SP
        ADDW      X, #0x3
        LDW       S:?w0, Y
        ADDW      X, S:?w0
        DECW      X
        DECW      X
        LDW       X, (X)
        LDW       Y, X
        LD        A, #0x2
        CLRW      X
        RRWA      X, A
        LD        A, S:?b8
        RLWA      X, A
        DIV       X, A
        LD        A, XL
        CLRW      X
        LD        XL, A
        SLLW      X
        LDW       S:?w0, X
        LDW       X, SP
        ADDW      X, #0x3
        ADDW      X, S:?w0
        LDW       X, (X)
        LDW       S:?w0, X
        LDW       X, Y
        ADDW      X, S:?w0
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fdiv32_l0_l0_dc32
        DATA
        DC32      0x40000000
        CODE
        CALLF     L:?mov_l3_l0
        JRA       L:??PEDO_MedianFilter_0
??PEDO_MedianFilter_8:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        DECW      X
        LDW       Y, #0x2
        CALLF     L:?sdiv16_x_x_y
        SLLW      X
        LDW       Y, SP
        ADDW      Y, #0x3
        LDW       S:?w0, X
        LDW       X, Y
        ADDW      X, S:?w0
        LDW       X, (X)
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l3_l0
??PEDO_MedianFilter_0:
        CALLF     L:?mov_l0_l3
        CALLF     L:?fcasts16f32_x_l0
        ADD       SP, #0x2c
        POP       S:?b10
        CALLF     L:?pop_w4
        CALLF     L:?pop_l3
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_GetAbsoluteShort:
        CPW       X, #0x0
        JRSGE     L:??PEDO_GetAbsoluteShort_0
        LDW       Y, X
        NEGW      Y
        LDW       X, Y
        JRA       L:??PEDO_GetAbsoluteShort_1
??PEDO_GetAbsoluteShort_0:
??PEDO_GetAbsoluteShort_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_TrendFinder:
        LDW       S:?w0, X
        LD        A, L:V_StatusFlags_U8R
        AND       A, #0x9f
        LD        L:V_StatusFlags_U8R, A
        LD        A, L:??v_CurrTrend_s8r
        CP        A, #0x1
        JRNE      L:??PEDO_TrendFinder_0
        LDW       X, S:?w0
        CPW       X, L:??v_Prev1AccelVal_s16r
        JRSGE     L:??PEDO_TrendFinder_1
        LDW       X, S:?w0
        CPW       X, L:??v_Prev2AccelVal_s16r
        JRSGE     L:??PEDO_TrendFinder_1
        MOV       L:??v_CurrTrend_s8r, #0xffffffffffffffff
        BSET      L:V_StatusFlags_U8R, #0x6
        LDW       X, L:??v_Prev2AccelVal_s16r
        CPW       X, L:??v_Prev1AccelVal_s16r
        JRSGE     L:??PEDO_TrendFinder_2
        LDW       X, L:??v_Prev1AccelVal_s16r
        JRA       L:??PEDO_TrendFinder_3
??PEDO_TrendFinder_2:
        LDW       X, L:??v_Prev2AccelVal_s16r
??PEDO_TrendFinder_3:
        LDW       (Y), X
        JRA       L:??PEDO_TrendFinder_1
??PEDO_TrendFinder_0:
        LDW       X, L:??v_Prev1AccelVal_s16r
        CPW       X, S:?w0
        JRSGE     L:??PEDO_TrendFinder_1
        LDW       X, L:??v_Prev2AccelVal_s16r
        CPW       X, S:?w0
        JRSGE     L:??PEDO_TrendFinder_1
        MOV       L:??v_CurrTrend_s8r, #0x1
        BSET      L:V_StatusFlags_U8R, #0x5
        LDW       X, L:??v_Prev1AccelVal_s16r
        CPW       X, L:??v_Prev2AccelVal_s16r
        JRSGE     L:??PEDO_TrendFinder_4
        LDW       X, L:??v_Prev1AccelVal_s16r
        JRA       L:??PEDO_TrendFinder_5
??PEDO_TrendFinder_4:
        LDW       X, L:??v_Prev2AccelVal_s16r
??PEDO_TrendFinder_5:
        LDW       (Y), X
??PEDO_TrendFinder_1:
        LDW       X, L:??v_Prev1AccelVal_s16r
        LDW       L:??v_Prev2AccelVal_s16r, X
        LDW       X, S:?w0
        LDW       L:??v_Prev1AccelVal_s16r, X
        RETF

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
??v_Prev1AccelVal_s16r:
        DC16 -1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
??v_Prev2AccelVal_s16r:
        DC16 -1

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
??v_CurrTrend_s8r:
        DC8 -1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_Get_SingleAxisAccelFeatures:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        SUB       SP, #0xb
        LDW       S:?w4, Y
        CLR       S:?b10
        CLR       S:?b14
        CLR       S:?b11
        CLR       S:?b12
        CLR       A
        LD        (0x1,SP), A
        CLR       S:?b15
        CLR       S:?b13
        CLRW      X
        LDW       (0x4,SP), X
        CLRW      X
        LDW       (0x8,SP), X
        CLRW      X
        LDW       (0x6,SP), X
        CLRW      X
        LDW       (0x2,SP), X
        CLRW      X
        LDW       (0xa,SP), X
        LDW       X, S:?w4
        ADDW      X, #0x34
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Get_SingleAxisAccelFeatures_0
        LDW       X, S:?w4
        ADDW      X, #0x32
        LD        A, (X)
        ADD       A, #0x1
        LDW       X, S:?w4
        ADDW      X, #0x32
        LD        (X), A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_1
??PEDO_Get_SingleAxisAccelFeatures_0:
        LDW       X, S:?w4
        ADDW      X, #0x32
        LD        A, (X)
        CP        A, #0x3c
        JRC       L:??PEDO_Get_SingleAxisAccelFeatures_1
        LDW       X, S:?w4
        ADDW      X, #0x34
        CLR       A
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x32
        LD        A, #0x3c
        LD        (X), A
??PEDO_Get_SingleAxisAccelFeatures_1:
        LDW       X, S:?w4
        ADDW      X, #0x2f
        LD        A, (X)
        CP        A, #0x3
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_2
        LDW       X, S:?w4
        ADDW      X, #0x2f
        LD        A, (X)
        CLRW      X
        LD        XL, A
        SLLW      X
        ADDW      X, S:?w4
        LDW       Y, X
        LDW       X, (0xc,SP)
        LDW       (Y), X
        LDW       X, S:?w4
        ADDW      X, #0x2f
        LD        A, (X)
        ADD       A, #0x1
        LDW       X, S:?w4
        ADDW      X, #0x2f
        LD        (X), A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_3
??PEDO_Get_SingleAxisAccelFeatures_2:
        CLR       A
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_4:
        LD        A, S:?b10
        CP        A, #0x2
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_5
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, S:?w4
        INCW      X
        INCW      X
        LDW       X, (X)
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       S:?w0, X
        LDW       X, S:?w0
        NEGW      X
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0x4
        LDW       S:?w0, X
        LDW       [S:?w0.w], Y
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_4
??PEDO_Get_SingleAxisAccelFeatures_5:
        LDW       X, (0xc,SP)
        LDW       [S:?w4.w], X
??PEDO_Get_SingleAxisAccelFeatures_3:
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       Y, X
        LDW       X, [S:?w4.w]
        CPW       X, (Y)
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_6
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       Y, X
        LDW       X, [S:?w4.w]
        CPW       X, (Y)
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_6
        LDW       X, S:?w4
        ADDW      X, #0x33
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Get_SingleAxisAccelFeatures_6
        LDW       X, S:?w4
        ADDW      X, #0x33
        LD        A, #0xff
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        CPW       X, (Y)
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_7
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        LDW       (0x4,SP), X
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_8
??PEDO_Get_SingleAxisAccelFeatures_7:
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        LDW       (0x4,SP), X
??PEDO_Get_SingleAxisAccelFeatures_8:
        LD        A, #0x1
        LD        S:?b14, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_9
??PEDO_Get_SingleAxisAccelFeatures_6:
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        CPW       X, [S:?w4.w]
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_9
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        CPW       X, [S:?w4.w]
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_9
        LDW       X, S:?w4
        ADDW      X, #0x33
        LD        A, (X)
        CP        A, #0xffffffffffffffff
        JRNE      L:??PEDO_Get_SingleAxisAccelFeatures_9
        LDW       X, S:?w4
        ADDW      X, #0x33
        LD        A, #0x1
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        CPW       X, (Y)
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_10
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        LDW       (0x4,SP), X
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_11
??PEDO_Get_SingleAxisAccelFeatures_10:
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        LDW       (0x4,SP), X
??PEDO_Get_SingleAxisAccelFeatures_11:
        LD        A, #0x1
        LD        S:?b14, A
??PEDO_Get_SingleAxisAccelFeatures_9:
        LD        A, S:?b14
        CP        A, #0x1
        JREQ      ??lb_8
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_12
??lb_8:
        LDW       X, S:?w4
        ADDW      X, #0x30
        LD        A, (X)
        CP        A, #0x4
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_13
        LDW       X, S:?w4
        ADDW      X, #0x30
        LD        A, (X)
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w4
        ADDW      X, #0x6
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x33
        LD        A, (X)
        LD        (Y), A
        LDW       X, S:?w4
        ADDW      X, #0x30
        LD        A, (X)
        CLRW      X
        LD        XL, A
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0xa
        LDW       Y, X
        LDW       X, (0x4,SP)
        LDW       (Y), X
        LDW       X, S:?w4
        ADDW      X, #0x30
        LD        A, (X)
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w4
        ADDW      X, #0x12
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x32
        LD        A, (X)
        LD        (Y), A
        LDW       X, S:?w4
        ADDW      X, #0x30
        LD        A, (X)
        ADD       A, #0x1
        LDW       X, S:?w4
        ADDW      X, #0x30
        LD        (X), A
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_14
??PEDO_Get_SingleAxisAccelFeatures_13:
        CLR       A
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_15:
        LD        A, S:?b10
        CP        A, #0x3
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_16
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x8
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x9
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0xe
        LDW       X, (X)
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       S:?w0, X
        LDW       X, S:?w0
        NEGW      X
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0x10
        LDW       S:?w0, X
        LDW       [S:?w0.w], Y
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x14
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x15
        LD        (X), A
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_15
??PEDO_Get_SingleAxisAccelFeatures_16:
        LDW       X, S:?w4
        ADDW      X, #0x33
        LD        A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x6
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0xa
        LDW       Y, X
        LDW       X, (0x4,SP)
        LDW       (Y), X
        LDW       X, S:?w4
        ADDW      X, #0x32
        LD        A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x12
        LD        (X), A
??PEDO_Get_SingleAxisAccelFeatures_14:
        CLR       A
        LD        S:?b14, A
        LDW       X, S:?w4
        ADDW      X, #0x32
        CLR       A
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x34
        LD        A, #0x1
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x6
        LD        A, (X)
        CP        A, #0xffffffffffffffff
        JREQ      ??lb_9
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_17
??lb_9:
        LDW       X, S:?w4
        ADDW      X, #0x7
        LD        A, (X)
        CP        A, #0x1
        JREQ      ??lb_10
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_17
??lb_10:
        LDW       X, S:?w4
        ADDW      X, #0x8
        LD        A, (X)
        CP        A, #0xffffffffffffffff
        JREQ      ??lb_11
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_17
??lb_11:
        LDW       X, S:?w4
        ADDW      X, #0x9
        LD        A, (X)
        CP        A, #0x1
        JREQ      ??lb_12
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_17
??lb_12:
        CLR       A
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_18:
        LD        A, S:?b10
        CP        A, #0x4
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_19
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        ADDW      X, #0x12
        LD        A, (X)
        ADD       A, S:?b11
        LD        S:?b11, A
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_18
??PEDO_Get_SingleAxisAccelFeatures_19:
        TNZ       S:?b11
        JRNE      ??lb_13
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_17
??lb_13:
        LD        A, S:?b11
        CP        A, #0x3c
        JRC       ??lb_14
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_17
??lb_14:
        LDW       X, S:?w4
        ADDW      X, #0x35
        LD        A, #0x1
        LD        (X), A
        LD        A, #0x1
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_20:
        LD        A, S:?b10
        CP        A, #0x4
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_21
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        ADDW      X, #0x6
        CLR       A
        LD        (X), A
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_20
??PEDO_Get_SingleAxisAccelFeatures_21:
        LDW       X, S:?w4
        ADDW      X, #0xa
        LDW       X, (X)
        LDW       (0x8,SP), X
        LDW       X, S:?w4
        ADDW      X, #0xa
        LDW       X, (X)
        LDW       (0x6,SP), X
        LD        A, #0x1
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_22:
        LD        A, S:?b10
        CP        A, #0x4
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_23
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0xa
        LDW       X, (X)
        CPW       X, (0x8,SP)
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_24
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0xa
        LDW       X, (X)
        LDW       (0x8,SP), X
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_25
??PEDO_Get_SingleAxisAccelFeatures_24:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0xa
        LDW       Y, X
        LDW       X, (0x6,SP)
        CPW       X, (Y)
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_25
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0xa
        LDW       X, (X)
        LDW       (0x6,SP), X
??PEDO_Get_SingleAxisAccelFeatures_25:
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_22
??PEDO_Get_SingleAxisAccelFeatures_23:
        LDW       X, (0x6,SP)
        SUBW      X, (0x8,SP)
        LDW       (0x2,SP), X
        LDW       X, S:?w4
        ADDW      X, #0xc
        LDW       X, (X)
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0xa
        LDW       X, (X)
        SUBW      X, S:?w0
        CALLF     L:?fcastf32s16_l0_x
        CALLF     L:?push_l0
        LDW       X, (0x6,SP)
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fmul32_l0_l0_dc32
        DATA
        DC32      0x3e19999a
        CODE
        CALLF     L:?pop_l1
        CALLF     L:?fcmplt32_c_l0_l1
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_26
        LDW       X, S:?w4
        ADDW      X, #0xc
        LDW       X, (X)
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0xe
        LDW       X, (X)
        SUBW      X, S:?w0
        CALLF     L:?fcastf32s16_l0_x
        CALLF     L:?push_l0
        LDW       X, (0x6,SP)
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fmul32_l0_l0_dc32
        DATA
        DC32      0x3e19999a
        CODE
        CALLF     L:?pop_l1
        CALLF     L:?fcmplt32_c_l0_l1
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_26
        LDW       X, S:?w4
        ADDW      X, #0x10
        LDW       X, (X)
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0xe
        LDW       X, (X)
        SUBW      X, S:?w0
        CALLF     L:?fcastf32s16_l0_x
        CALLF     L:?push_l0
        LDW       X, (0x6,SP)
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?fmul32_l0_l0_dc32
        DATA
        DC32      0x3e19999a
        CODE
        CALLF     L:?pop_l1
        CALLF     L:?fcmplt32_c_l0_l1
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_26
        LD        A, #0x1
        LD        S:?b12, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_27
??PEDO_Get_SingleAxisAccelFeatures_26:
        CLR       A
        LD        S:?b12, A
??PEDO_Get_SingleAxisAccelFeatures_27:
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CP        A, #0x5
        JRC       ??lb_15
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_28
??lb_15:
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CLRW      X
        LD        XL, A
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0x16
        LDW       Y, X
        LDW       X, (0x2,SP)
        LDW       (Y), X
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w4
        ADDW      X, #0x20
        LD        A, S:?b11
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w4
        ADDW      X, #0x2a
        LD        A, S:?b12
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        ADD       A, #0x1
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CP        A, #0x2
        JRNC      ??lb_16
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_29
??lb_16:
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w4
        ADDW      X, #0x1e
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w4
        ADDW      X, #0x1f
        LD        A, (X)
        SUB       A, (Y)
        LD        S:?b0, A
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CLRW      X
        LD        XL, A
        ADDW      X, S:?w4
        ADDW      X, #0x23
        LD        A, S:?b0
        LD        (X), A
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_29
??PEDO_Get_SingleAxisAccelFeatures_28:
        CLR       A
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_30:
        LD        A, S:?b10
        CP        A, #0x4
        JRC       ??lb_17
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_31
??lb_17:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0x1c
        LDW       X, (X)
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       S:?w0, X
        LDW       X, S:?w0
        NEGW      X
        SLLW      X
        ADDW      X, S:?w4
        ADDW      X, #0x1e
        LDW       S:?w0, X
        LDW       [S:?w0.w], Y
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x23
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x24
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x28
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x29
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x2d
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        ADDW      X, S:?w4
        ADDW      X, #0x2e
        LD        (X), A
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JP        L:??PEDO_Get_SingleAxisAccelFeatures_30
??PEDO_Get_SingleAxisAccelFeatures_31:
        LDW       X, S:?w4
        ADDW      X, #0x16
        LDW       Y, X
        LDW       X, (0x2,SP)
        LDW       (Y), X
        LDW       X, S:?w4
        ADDW      X, #0x20
        LD        A, S:?b11
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x21
        LD        A, S:?b11
        SUB       A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x25
        LD        (X), A
        LDW       X, S:?w4
        ADDW      X, #0x2a
        LD        A, S:?b12
        LD        (X), A
??PEDO_Get_SingleAxisAccelFeatures_29:
        CLR       A
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_32:
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, S:?b10
        CP        A, (X)
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_33
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        ADDW      X, #0x20
        LD        A, (X)
        CLRW      X
        LD        XL, A
        ADDW      X, (0xa,SP)
        LDW       (0xa,SP), X
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_32
??PEDO_Get_SingleAxisAccelFeatures_33:
        LDW       X, (0xa,SP)
        CALLF     L:?fcastf32u16_l0_x
        CALLF     L:?mov_l1_l0
        LDW       X, S:?w4
        ADDW      X, #0x31
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x1388
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        CALLF     L:?fcastf32s16_l0_x
        CALLF     L:?fdiv32_l0_l0_l1
        CALLF     L:?fcasts16f32_x_l0
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x37
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        CLR       A
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_34:
        LD        A, S:?b10
        CP        A, #0x5
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_35
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        ADDW      X, #0x2a
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Get_SingleAxisAccelFeatures_36
        LD        A, S:?b13
        ADD       A, #0x1
        LD        S:?b13, A
??PEDO_Get_SingleAxisAccelFeatures_36:
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_34
??PEDO_Get_SingleAxisAccelFeatures_35:
        LD        A, S:?b13
        CP        A, #0x4
        JRC       L:??PEDO_Get_SingleAxisAccelFeatures_37
        LD        A, #0x1
        LD        (0x1,SP), A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_38
??PEDO_Get_SingleAxisAccelFeatures_37:
        CLR       A
        LD        (0x1,SP), A
??PEDO_Get_SingleAxisAccelFeatures_38:
        CLR       A
        LD        S:?b13, A
        CLR       A
        LD        S:?b10, A
??PEDO_Get_SingleAxisAccelFeatures_39:
        LD        A, S:?b10
        CP        A, #0x5
        JRNC      L:??PEDO_Get_SingleAxisAccelFeatures_40
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        ADDW      X, #0x25
        LD        A, (X)
        CP        A, #0x5
        JRSGE     L:??PEDO_Get_SingleAxisAccelFeatures_41
        LD        A, S:?b13
        ADD       A, #0x1
        LD        S:?b13, A
??PEDO_Get_SingleAxisAccelFeatures_41:
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_39
??PEDO_Get_SingleAxisAccelFeatures_40:
        LD        A, S:?b13
        CP        A, #0x3
        JRC       L:??PEDO_Get_SingleAxisAccelFeatures_42
        LD        A, #0x1
        LD        S:?b15, A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_43
??PEDO_Get_SingleAxisAccelFeatures_42:
        CLR       A
        LD        S:?b15, A
??PEDO_Get_SingleAxisAccelFeatures_43:
        LD        A, (0x1,SP)
        CP        A, #0x1
        JRNE      L:??PEDO_Get_SingleAxisAccelFeatures_44
        LD        A, S:?b15
        CP        A, #0x1
        JRNE      L:??PEDO_Get_SingleAxisAccelFeatures_44
        LDW       X, S:?w4
        ADDW      X, #0x36
        LD        A, #0x1
        LD        (X), A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_17
??PEDO_Get_SingleAxisAccelFeatures_44:
        LDW       X, S:?w4
        ADDW      X, #0x36
        CLR       A
        LD        (X), A
        JRA       L:??PEDO_Get_SingleAxisAccelFeatures_17
??PEDO_Get_SingleAxisAccelFeatures_12:
        LDW       X, S:?w4
        ADDW      X, #0x35
        CLR       A
        LD        (X), A
??PEDO_Get_SingleAxisAccelFeatures_17:
        ADD       SP, #0xd
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_Reset_SingleAxisAccelFeatures:
        LDW       S:?w1, X
        CLR       S:?b0
        CLR       A
        LD        S:?b0, A
??PEDO_Reset_SingleAxisAccelFeatures_0:
        LD        A, S:?b0
        CP        A, #0x3
        JRNC      L:??PEDO_Reset_SingleAxisAccelFeatures_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w1
        LDW       Y, X
        CLRW      X
        LDW       (Y), X
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        JRA       L:??PEDO_Reset_SingleAxisAccelFeatures_0
??PEDO_Reset_SingleAxisAccelFeatures_1:
        CLR       A
        LD        S:?b0, A
??PEDO_Reset_SingleAxisAccelFeatures_2:
        LD        A, S:?b0
        CP        A, #0x4
        JRNC      L:??PEDO_Reset_SingleAxisAccelFeatures_3
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        ADDW      X, S:?w1
        ADDW      X, #0x6
        CLR       A
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w1
        ADDW      X, #0xa
        CLRW      Y
        LDW       (X), Y
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        ADDW      X, S:?w1
        ADDW      X, #0x12
        CLR       A
        LD        (X), A
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        JRA       L:??PEDO_Reset_SingleAxisAccelFeatures_2
??PEDO_Reset_SingleAxisAccelFeatures_3:
        CLR       A
        LD        S:?b0, A
??PEDO_Reset_SingleAxisAccelFeatures_4:
        LD        A, S:?b0
        CP        A, #0x5
        JRNC      L:??PEDO_Reset_SingleAxisAccelFeatures_5
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w1
        ADDW      X, #0x16
        CLRW      Y
        LDW       (X), Y
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        ADDW      X, S:?w1
        ADDW      X, #0x20
        CLR       A
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        ADDW      X, S:?w1
        ADDW      X, #0x25
        CLR       A
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        ADDW      X, S:?w1
        ADDW      X, #0x2a
        CLR       A
        LD        (X), A
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        JRA       L:??PEDO_Reset_SingleAxisAccelFeatures_4
??PEDO_Reset_SingleAxisAccelFeatures_5:
        LDW       X, S:?w1
        ADDW      X, #0x2f
        CLR       A
        LD        (X), A
        LDW       X, S:?w1
        ADDW      X, #0x30
        CLR       A
        LD        (X), A
        LDW       X, S:?w1
        ADDW      X, #0x31
        CLR       A
        LD        (X), A
        LDW       X, S:?w1
        ADDW      X, #0x32
        CLR       A
        LD        (X), A
        LDW       X, S:?w1
        ADDW      X, #0x33
        LD        A, #0xff
        LD        (X), A
        LDW       X, S:?w1
        ADDW      X, #0x35
        CLR       A
        LD        (X), A
        LDW       X, S:?w1
        ADDW      X, #0x34
        CLR       A
        LD        (X), A
        LDW       X, S:?w1
        ADDW      X, #0x36
        CLR       A
        LD        (X), A
        LDW       X, S:?w1
        ADDW      X, #0x37
        CLRW      Y
        LDW       (X), Y
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_FindDominantAxisOrder:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        PUSHW     Y
        CALLF     L:?push_w0
        PUSH      A
        SUB       SP, #0xb
        CALLF     L:?mov_w5_w1
        LDW       Y, S:?w2
        CLR       S:?b0
        CLR       S:?b1
        LD        A, #0x3
        LD        (0x5,SP), A
        CLR       S:?b2
        CLR       S:?b3
        CLR       S:?b4
        CLR       S:?b5
        CLR       A
        LD        (0x4,SP), A
        CLR       S:?b13
        CLR       S:?b12
        TNZ       (0xc,SP)
        JRNE      L:??PEDO_FindDominantAxisOrder_0
        MOV       L:??v_DomAxisBufPacketCount_u8r, #0x0
??PEDO_FindDominantAxisOrder_0:
        CLR       A
        LD        (0x1,SP), A
        LD        A, #0x1
        LD        (0x2,SP), A
        LD        A, #0x2
        LD        (0x3,SP), A
        LDW       X, (0x11,SP)
        ADDW      X, #0x16
        LDW       X, (X)
        LDW       (0x6,SP), X
        LDW       X, (0xf,SP)
        ADDW      X, #0x16
        LDW       X, (X)
        LDW       (0x8,SP), X
        LDW       X, (0xd,SP)
        ADDW      X, #0x16
        LDW       X, (X)
        LDW       (0xa,SP), X
        CLR       A
        LD        S:?b0, A
??PEDO_FindDominantAxisOrder_1:
        LD        A, (0x5,SP)
        CLRW      X
        LD        XL, A
        DECW      X
        LDW       S:?w4, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        CPW       X, S:?w4
        JRSLT     ??lb_2
        JP        L:??PEDO_FindDominantAxisOrder_2
??lb_2:
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b1, A
??PEDO_FindDominantAxisOrder_3:
        LD        A, S:?b1
        CP        A, (0x5,SP)
        JRC       ??lb_3
        JP        L:??PEDO_FindDominantAxisOrder_4
??lb_3:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x6
        ADDW      X, S:?w4
        PUSHW     X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x8
        ADDW      X, S:?w4
        LDW       X, (X)
        CALLF     L:?pop_w4
        CPW       X, [S:?w4.w]
        JRC       ??lb_4
        JP        L:??PEDO_FindDominantAxisOrder_5
??lb_4:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, (X)
        LD        S:?b2, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, S:?b2
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x6
        ADDW      X, S:?w4
        LDW       X, (X)
        LDW       S:?w6, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x6
        ADDW      X, S:?w4
        LDW       X, (X)
        PUSHW     X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x8
        ADDW      X, S:?w4
        LDW       S:?w4, X
        POPW      X
        LDW       [S:?w4.w], X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x6
        ADDW      X, S:?w4
        LDW       S:?w4, X
        LDW       X, S:?w6
        LDW       [S:?w4.w], X
        JP        L:??PEDO_FindDominantAxisOrder_6
??PEDO_FindDominantAxisOrder_5:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x6
        ADDW      X, S:?w4
        PUSHW     X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x8
        ADDW      X, S:?w4
        LDW       X, (X)
        CALLF     L:?pop_w4
        CPW       X, [S:?w4.w]
        JREQ      ??lb_5
        JP        L:??PEDO_FindDominantAxisOrder_6
??lb_5:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        PUSHW     X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x3
        ADDW      X, S:?w4
        LD        A, (X)
        POPW      X
        CP        A, (X)
        JRC       ??lb_6
        JP        L:??PEDO_FindDominantAxisOrder_6
??lb_6:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, (X)
        LD        S:?b2, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w4
        LD        A, S:?b2
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x6
        ADDW      X, S:?w4
        LDW       X, (X)
        LDW       S:?w6, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x6
        ADDW      X, S:?w4
        LDW       X, (X)
        PUSHW     X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x8
        ADDW      X, S:?w4
        LDW       S:?w4, X
        POPW      X
        LDW       [S:?w4.w], X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        LDW       S:?w4, X
        LDW       X, SP
        ADDW      X, #0x6
        ADDW      X, S:?w4
        LDW       S:?w4, X
        LDW       X, S:?w6
        LDW       [S:?w4.w], X
??PEDO_FindDominantAxisOrder_6:
        LD        A, S:?b1
        ADD       A, #0x1
        LD        S:?b1, A
        JP        L:??PEDO_FindDominantAxisOrder_3
??PEDO_FindDominantAxisOrder_4:
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        JP        L:??PEDO_FindDominantAxisOrder_1
??PEDO_FindDominantAxisOrder_2:
        LD        A, L:??v_DomAxisBufPacketCount_u8r
        CP        A, #0x5
        JRNC      L:??PEDO_FindDominantAxisOrder_7
        LD        A, L:??v_DomAxisBufPacketCount_u8r
        CLRW      X
        LD        XL, A
        LD        A, (0x1,SP)
        LD        (L:??v_IstDomAxisBuf_u8r,X), A
        LD        A, L:??v_DomAxisBufPacketCount_u8r
        CLRW      X
        LD        XL, A
        LD        A, (0x2,SP)
        LD        (L:??v_IIndDomAxisBuf_u8r,X), A
        LD        A, L:??v_DomAxisBufPacketCount_u8r
        ADD       A, #0x1
        LD        L:??v_DomAxisBufPacketCount_u8r, A
        LD        A, #0x3
        LD        [S:?w5.w], A
        LD        A, #0x3
        LD        (Y), A
        LD        A, #0x3
        LD        [S:?w3.w], A
        JP        L:??PEDO_FindDominantAxisOrder_8
??PEDO_FindDominantAxisOrder_7:
        CLR       A
        LD        S:?b0, A
??PEDO_FindDominantAxisOrder_9:
        LD        A, S:?b0
        CP        A, #0x4
        JRNC      L:??PEDO_FindDominantAxisOrder_10
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, S:?w4
        NEGW      X
        ADDW      X, #??v_IstDomAxisBuf_u8r + 3
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, S:?w4
        NEGW      X
        ADDW      X, #??v_IstDomAxisBuf_u8r + 4
        LD        (X), A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, S:?w4
        NEGW      X
        ADDW      X, #??v_IIndDomAxisBuf_u8r + 3
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w4, X
        LDW       X, S:?w4
        NEGW      X
        ADDW      X, #??v_IIndDomAxisBuf_u8r + 4
        LD        (X), A
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        JRA       L:??PEDO_FindDominantAxisOrder_9
??PEDO_FindDominantAxisOrder_10:
        LD        A, (0x1,SP)
        LD        L:??v_IstDomAxisBuf_u8r, A
        LD        A, (0x2,SP)
        LD        L:??v_IIndDomAxisBuf_u8r, A
        CLR       A
        LD        S:?b0, A
??PEDO_FindDominantAxisOrder_11:
        LD        A, S:?b0
        CP        A, #0x5
        JRNC      L:??PEDO_FindDominantAxisOrder_12
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        TNZ       (L:??v_IstDomAxisBuf_u8r,X)
        JRNE      L:??PEDO_FindDominantAxisOrder_13
        LD        A, S:?b3
        ADD       A, #0x1
        LD        S:?b3, A
        JRA       L:??PEDO_FindDominantAxisOrder_14
??PEDO_FindDominantAxisOrder_13:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LD        A, #0x1
        CP        A, (L:??v_IstDomAxisBuf_u8r,X)
        JRNE      L:??PEDO_FindDominantAxisOrder_15
        LD        A, S:?b4
        ADD       A, #0x1
        LD        S:?b4, A
        JRA       L:??PEDO_FindDominantAxisOrder_14
??PEDO_FindDominantAxisOrder_15:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LD        A, #0x2
        CP        A, (L:??v_IstDomAxisBuf_u8r,X)
        JRNE      L:??PEDO_FindDominantAxisOrder_14
        LD        A, S:?b5
        ADD       A, #0x1
        LD        S:?b5, A
??PEDO_FindDominantAxisOrder_14:
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        JRA       L:??PEDO_FindDominantAxisOrder_11
??PEDO_FindDominantAxisOrder_12:
        LD        A, S:?b3
        CP        A, #0x4
        JRC       L:??PEDO_FindDominantAxisOrder_16
        CLR       A
        LD        [S:?w5.w], A
        LD        A, #0x1
        LD        (0x4,SP), A
        JRA       L:??PEDO_FindDominantAxisOrder_17
??PEDO_FindDominantAxisOrder_16:
        LD        A, S:?b4
        CP        A, #0x4
        JRC       L:??PEDO_FindDominantAxisOrder_18
        LD        A, #0x1
        LD        [S:?w5.w], A
        LD        A, #0x1
        LD        (0x4,SP), A
        JRA       L:??PEDO_FindDominantAxisOrder_17
??PEDO_FindDominantAxisOrder_18:
        LD        A, S:?b5
        CP        A, #0x4
        JRC       L:??PEDO_FindDominantAxisOrder_17
        LD        A, #0x2
        LD        [S:?w5.w], A
        LD        A, #0x1
        LD        (0x4,SP), A
??PEDO_FindDominantAxisOrder_17:
        LD        A, (0x4,SP)
        CP        A, #0x1
        JREQ      ??lb_7
        JP        L:??PEDO_FindDominantAxisOrder_8
??lb_7:
        CLR       A
        LD        S:?b0, A
??PEDO_FindDominantAxisOrder_19:
        LD        A, S:?b0
        CP        A, #0x5
        JRNC      L:??PEDO_FindDominantAxisOrder_20
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        TNZ       (L:??v_IIndDomAxisBuf_u8r,X)
        JRNE      L:??PEDO_FindDominantAxisOrder_21
        LD        A, S:?b3
        ADD       A, #0x1
        LD        S:?b3, A
        JRA       L:??PEDO_FindDominantAxisOrder_22
??PEDO_FindDominantAxisOrder_21:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LD        A, #0x1
        CP        A, (L:??v_IIndDomAxisBuf_u8r,X)
        JRNE      L:??PEDO_FindDominantAxisOrder_23
        LD        A, S:?b4
        ADD       A, #0x1
        LD        S:?b4, A
        JRA       L:??PEDO_FindDominantAxisOrder_22
??PEDO_FindDominantAxisOrder_23:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LD        A, #0x2
        CP        A, (L:??v_IIndDomAxisBuf_u8r,X)
        JRNE      L:??PEDO_FindDominantAxisOrder_22
        LD        A, S:?b5
        ADD       A, #0x1
        LD        S:?b5, A
??PEDO_FindDominantAxisOrder_22:
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        JRA       L:??PEDO_FindDominantAxisOrder_19
??PEDO_FindDominantAxisOrder_20:
        TNZ       [S:?w5.w]
        JRNE      L:??PEDO_FindDominantAxisOrder_24
        LD        A, S:?b4
        CP        A, S:?b5
        JRC       L:??PEDO_FindDominantAxisOrder_25
        LD        A, #0x1
        LD        (Y), A
        LD        A, #0x2
        LD        [S:?w3.w], A
        JRA       L:??PEDO_FindDominantAxisOrder_8
??PEDO_FindDominantAxisOrder_25:
        LD        A, #0x2
        LD        (Y), A
        LD        A, #0x1
        LD        [S:?w3.w], A
        JRA       L:??PEDO_FindDominantAxisOrder_8
??PEDO_FindDominantAxisOrder_24:
        LD        A, [S:?w5.w]
        CP        A, #0x1
        JRNE      L:??PEDO_FindDominantAxisOrder_26
        LD        A, S:?b3
        CP        A, S:?b5
        JRC       L:??PEDO_FindDominantAxisOrder_27
        CLR       A
        LD        (Y), A
        LD        A, #0x2
        LD        [S:?w3.w], A
        JRA       L:??PEDO_FindDominantAxisOrder_8
??PEDO_FindDominantAxisOrder_27:
        LD        A, #0x2
        LD        (Y), A
        CLR       A
        LD        [S:?w3.w], A
        JRA       L:??PEDO_FindDominantAxisOrder_8
??PEDO_FindDominantAxisOrder_26:
        LD        A, [S:?w5.w]
        CP        A, #0x2
        JRNE      L:??PEDO_FindDominantAxisOrder_8
        LD        A, S:?b3
        CP        A, S:?b4
        JRC       L:??PEDO_FindDominantAxisOrder_28
        CLR       A
        LD        (Y), A
        LD        A, #0x1
        LD        [S:?w3.w], A
        JRA       L:??PEDO_FindDominantAxisOrder_8
??PEDO_FindDominantAxisOrder_28:
        LD        A, #0x1
        LD        (Y), A
        CLR       A
        LD        [S:?w3.w], A
??PEDO_FindDominantAxisOrder_8:
        ADD       SP, #0x12
        JPF       L:?epilogue_l2_l3

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_DomAxisBufPacketCount_u8r:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_IstDomAxisBuf_u8r:
        DS8 5

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_IIndDomAxisBuf_u8r:
        DS8 5

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
PEDO_Find_StableSingleAxis_StableCadenceX100:
        CALLF     L:?push_l2
        PUSH      S:?b12
        LDW       S:?w4, X
        LD        S:?b11, A
        MOV       S:?b10, S:?b4
        MOV       S:?b12, S:?b5
        LDW       X, (0x9,SP)
        LDW       S:?w2, X
        TNZ       S:?b12
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_0
        MOV       L:??v_LocalStableAxis_u8r, #0x3
        CLRW      X
        LDW       L:??v_LocalStableCadenceX100_u16r, X
??PEDO_Find_StableSingleAxis_StableCadenceX100_0:
        LD        A, L:??v_LocalStableAxis_u8r
        CP        A, #0x3
        JREQ      ??lb_0
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_1
??lb_0:
        LDW       X, S:?w1
        ADDW      X, #0x36
        TNZ       (X)
        JREQ      ??lb_1
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_1
??lb_1:
        TNZ       S:?b11
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_2
        LDW       X, S:?w4
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_2
        MOV       L:??v_LocalStableAxis_u8r, #0x0
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_2:
        LD        A, S:?b11
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_4
        LDW       X, Y
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_4
        MOV       L:??v_LocalStableAxis_u8r, #0x1
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_4:
        LD        A, S:?b11
        CP        A, #0x2
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_5
        LDW       X, S:?w0
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_5
        MOV       L:??v_LocalStableAxis_u8r, #0x2
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_5:
        TNZ       S:?b10
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_6
        LDW       X, S:?w4
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_6
        MOV       L:??v_LocalStableAxis_u8r, #0x0
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_6:
        LD        A, S:?b10
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_7
        LDW       X, Y
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_7
        MOV       L:??v_LocalStableAxis_u8r, #0x1
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_7:
        LD        A, S:?b10
        CP        A, #0x2
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_8
        LDW       X, S:?w0
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_8
        MOV       L:??v_LocalStableAxis_u8r, #0x2
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_8:
        MOV       L:??v_LocalStableAxis_u8r, #0x3
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_1:
        LD        A, L:??v_LocalStableAxis_u8r
        CP        A, #0x0
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_9
        LDW       X, S:?w4
        ADDW      X, #0x36
        TNZ       (X)
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_9
        LDW       X, S:?w1
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_10
        MOV       L:??v_LocalStableAxis_u8r, #0x3
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_10:
        LD        A, S:?b11
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_11
        LDW       X, Y
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_11
        MOV       L:??v_LocalStableAxis_u8r, #0x1
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_11:
        LD        A, S:?b11
        CP        A, #0x2
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_12
        LDW       X, S:?w0
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_12
        MOV       L:??v_LocalStableAxis_u8r, #0x2
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_12:
        LD        A, S:?b10
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_13
        LDW       X, Y
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_13
        MOV       L:??v_LocalStableAxis_u8r, #0x1
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_13:
        LD        A, S:?b10
        CP        A, #0x2
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_14
        LDW       X, S:?w0
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_14
        MOV       L:??v_LocalStableAxis_u8r, #0x2
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_14:
        MOV       L:??v_LocalStableAxis_u8r, #0x3
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_9:
        LD        A, L:??v_LocalStableAxis_u8r
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_15
        LDW       X, Y
        ADDW      X, #0x36
        TNZ       (X)
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_15
        LDW       X, S:?w1
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_16
        MOV       L:??v_LocalStableAxis_u8r, #0x3
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_16:
        TNZ       S:?b11
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_17
        LDW       X, S:?w4
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_17
        MOV       L:??v_LocalStableAxis_u8r, #0x0
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_17:
        LD        A, S:?b11
        CP        A, #0x2
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_18
        LDW       X, S:?w0
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_18
        MOV       L:??v_LocalStableAxis_u8r, #0x2
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_18:
        TNZ       S:?b10
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_19
        LDW       X, S:?w4
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_19
        MOV       L:??v_LocalStableAxis_u8r, #0x0
        JP        L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_19:
        LD        A, S:?b10
        CP        A, #0x2
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_20
        LDW       X, S:?w0
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_20
        MOV       L:??v_LocalStableAxis_u8r, #0x2
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_20:
        MOV       L:??v_LocalStableAxis_u8r, #0x3
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_15:
        LD        A, L:??v_LocalStableAxis_u8r
        CP        A, #0x2
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
        LDW       X, S:?w0
        ADDW      X, #0x36
        TNZ       (X)
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
        LDW       X, S:?w1
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_21
        MOV       L:??v_LocalStableAxis_u8r, #0x3
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_21:
        TNZ       S:?b11
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_22
        LDW       X, S:?w4
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_22
        MOV       L:??v_LocalStableAxis_u8r, #0x0
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_22:
        LD        A, S:?b11
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_23
        LDW       X, Y
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_23
        MOV       L:??v_LocalStableAxis_u8r, #0x1
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_23:
        TNZ       S:?b10
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_24
        LDW       X, S:?w4
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_24
        MOV       L:??v_LocalStableAxis_u8r, #0x0
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_24:
        LD        A, S:?b10
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_25
        LDW       X, Y
        ADDW      X, #0x36
        LD        A, (X)
        CP        A, #0x1
        JRNE      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_25
        MOV       L:??v_LocalStableAxis_u8r, #0x1
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_3
??PEDO_Find_StableSingleAxis_StableCadenceX100_25:
        MOV       L:??v_LocalStableAxis_u8r, #0x3
??PEDO_Find_StableSingleAxis_StableCadenceX100_3:
        LD        A, L:??v_LocalStableAxis_u8r
        LD        [S:?w3.w], A
        LD        A, L:??v_LocalStableAxis_u8r
        TNZ       A
        JREQ      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_26
        DEC       A
        JREQ      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_27
        DEC       A
        JREQ      L:??PEDO_Find_StableSingleAxis_StableCadenceX100_28
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_29
??PEDO_Find_StableSingleAxis_StableCadenceX100_26:
        LDW       X, S:?w4
        ADDW      X, #0x37
        LDW       X, (X)
        LDW       [S:?w2.w], X
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_30
??PEDO_Find_StableSingleAxis_StableCadenceX100_27:
        LDW       X, Y
        ADDW      X, #0x37
        LDW       X, (X)
        LDW       [S:?w2.w], X
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_30
??PEDO_Find_StableSingleAxis_StableCadenceX100_28:
        LDW       X, S:?w0
        ADDW      X, #0x37
        LDW       X, (X)
        LDW       [S:?w2.w], X
        JRA       L:??PEDO_Find_StableSingleAxis_StableCadenceX100_30
??PEDO_Find_StableSingleAxis_StableCadenceX100_29:
        LDW       X, S:?w1
        ADDW      X, #0x37
        LDW       X, (X)
        LDW       [S:?w2.w], X
??PEDO_Find_StableSingleAxis_StableCadenceX100_30:
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
??v_LocalStableAxis_u8r:
        DC8 3

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
??v_LocalStableCadenceX100_u16r:
        DS8 2

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_0:
        DC16 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 
// 7 309 bytes in section .far_func.text
//   636 bytes in section .near.bss
//    10 bytes in section .near.data
//   136 bytes in section .near.rodata
// 
// 7 309 bytes of CODE  memory
//   136 bytes of CONST memory
//   646 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
