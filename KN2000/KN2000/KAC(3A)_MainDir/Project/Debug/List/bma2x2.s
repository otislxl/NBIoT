///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:09:19
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\bma2x2.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\bma2x2.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\bma2x2.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?e0
        EXTERN ?e1
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_w4
        EXTERN ?load24_e0_0x
        EXTERN ?load24_e1_0x
        EXTERN ?mov_l1_l2
        EXTERN ?mov_l2_l0
        EXTERN ?mov_w0_w1
        EXTERN ?mov_w0_w7
        EXTERN ?mov_w1_w0
        EXTERN ?mov_w1_w4
        EXTERN ?mov_w2_w0
        EXTERN ?mov_w4_w0
        EXTERN ?mov_w7_w1
        EXTERN ?move1616_v_x_y_a
        EXTERN ?mul16_x_x_w0
        EXTERN ?pop_w6
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?push_w6
        EXTERN ?sext16_x_a
        EXTERN ?sll8_a_a_6
        EXTERN ?sra16_x_x_6
        EXTERN ?srl8_a_a_6
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7

        PUBLIC V_BMA2x2RESOLUTION_U8
        PUBLIC bma2x2_burst_read
        PUBLIC bma2x2_extract_accel
        PUBLIC bma2x2_get_bw
        PUBLIC bma2x2_get_cal_rdy
        PUBLIC bma2x2_get_durn
        PUBLIC bma2x2_get_fifo_data_output_reg
        PUBLIC bma2x2_get_fifo_data_select
        PUBLIC bma2x2_get_fifo_frame_count
        PUBLIC bma2x2_get_fifo_mode
        PUBLIC bma2x2_get_fifo_overrun
        PUBLIC bma2x2_get_fifo_stat
        PUBLIC bma2x2_get_fifo_wml_trig
        PUBLIC bma2x2_get_flat_hold_time
        PUBLIC bma2x2_get_flat_hyst
        PUBLIC bma2x2_get_high_bw
        PUBLIC bma2x2_get_i2c_wdt
        PUBLIC bma2x2_get_intr1_fifo_full
        PUBLIC bma2x2_get_intr1_fifo_wm
        PUBLIC bma2x2_get_intr2_fifo_full
        PUBLIC bma2x2_get_intr2_fifo_wm
        PUBLIC bma2x2_get_intr_double_tap
        PUBLIC bma2x2_get_intr_enable
        PUBLIC bma2x2_get_intr_fifo_full
        PUBLIC bma2x2_get_intr_fifo_wm
        PUBLIC bma2x2_get_intr_flat
        PUBLIC bma2x2_get_intr_high_g
        PUBLIC bma2x2_get_intr_level
        PUBLIC bma2x2_get_intr_low_g
        PUBLIC bma2x2_get_intr_orient
        PUBLIC bma2x2_get_intr_orient_stat
        PUBLIC bma2x2_get_intr_output_type
        PUBLIC bma2x2_get_intr_single_tap
        PUBLIC bma2x2_get_intr_slope
        PUBLIC bma2x2_get_intr_slow_no_motion
        PUBLIC bma2x2_get_intr_stat
        PUBLIC bma2x2_get_intr_tap_stat
        PUBLIC bma2x2_get_latch_intr
        PUBLIC bma2x2_get_low_g_mode
        PUBLIC bma2x2_get_low_high_g_hyst
        PUBLIC bma2x2_get_new_data
        PUBLIC bma2x2_get_nvmprog_mode
        PUBLIC bma2x2_get_nvmprog_ready
        PUBLIC bma2x2_get_nvmprog_remain
        PUBLIC bma2x2_get_offset
        PUBLIC bma2x2_get_offset_target
        PUBLIC bma2x2_get_orient_block
        PUBLIC bma2x2_get_orient_enable
        PUBLIC bma2x2_get_orient_hyst
        PUBLIC bma2x2_get_orient_mode
        PUBLIC bma2x2_get_power_mode
        PUBLIC bma2x2_get_range
        PUBLIC bma2x2_get_selftest_axis
        PUBLIC bma2x2_get_selftest_sign
        PUBLIC bma2x2_get_shadow_dis
        PUBLIC bma2x2_get_sleep_durn
        PUBLIC bma2x2_get_sleep_timer_mode
        PUBLIC bma2x2_get_slow_comp
        PUBLIC bma2x2_get_slow_no_motion
        PUBLIC bma2x2_get_source
        PUBLIC bma2x2_get_spi3
        PUBLIC bma2x2_get_tap_durn
        PUBLIC bma2x2_get_tap_quiet
        PUBLIC bma2x2_get_tap_sample
        PUBLIC bma2x2_get_tap_shock
        PUBLIC bma2x2_get_tap_thres
        PUBLIC bma2x2_get_theta
        PUBLIC bma2x2_get_thres
        PUBLIC bma2x2_init
        PUBLIC bma2x2_read_accel_eight_resolution_x
        PUBLIC bma2x2_read_accel_eight_resolution_xyz
        PUBLIC bma2x2_read_accel_eight_resolution_xyzt
        PUBLIC bma2x2_read_accel_eight_resolution_y
        PUBLIC bma2x2_read_accel_eight_resolution_z
        PUBLIC bma2x2_read_accel_x
        PUBLIC bma2x2_read_accel_xyz
        PUBLIC bma2x2_read_accel_xyzt
        PUBLIC bma2x2_read_accel_y
        PUBLIC bma2x2_read_accel_z
        PUBLIC bma2x2_read_fifo_data
        PUBLIC bma2x2_read_reg
        PUBLIC bma2x2_read_temp
        PUBLIC bma2x2_rst_intr
        PUBLIC bma2x2_set_bw
        PUBLIC bma2x2_set_cal_trigger
        PUBLIC bma2x2_set_durn
        PUBLIC bma2x2_set_fifo_data_select
        PUBLIC bma2x2_set_fifo_mode
        PUBLIC bma2x2_set_fifo_wml_trig
        PUBLIC bma2x2_set_flat_hold_time
        PUBLIC bma2x2_set_flat_hyst
        PUBLIC bma2x2_set_high_bw
        PUBLIC bma2x2_set_i2c_wdt
        PUBLIC bma2x2_set_intr1_fifo_full
        PUBLIC bma2x2_set_intr1_fifo_wm
        PUBLIC bma2x2_set_intr2_fifo_full
        PUBLIC bma2x2_set_intr2_fifo_wm
        PUBLIC bma2x2_set_intr_double_tap
        PUBLIC bma2x2_set_intr_enable
        PUBLIC bma2x2_set_intr_fifo_full
        PUBLIC bma2x2_set_intr_fifo_wm
        PUBLIC bma2x2_set_intr_flat
        PUBLIC bma2x2_set_intr_high_g
        PUBLIC bma2x2_set_intr_level
        PUBLIC bma2x2_set_intr_low_g
        PUBLIC bma2x2_set_intr_orient
        PUBLIC bma2x2_set_intr_output_type
        PUBLIC bma2x2_set_intr_single_tap
        PUBLIC bma2x2_set_intr_slope
        PUBLIC bma2x2_set_intr_slow_no_motion
        PUBLIC bma2x2_set_latch_intr
        PUBLIC bma2x2_set_low_g_mode
        PUBLIC bma2x2_set_low_high_g_hyst
        PUBLIC bma2x2_set_mode_value
        PUBLIC bma2x2_set_new_data
        PUBLIC bma2x2_set_nvmprog_mode
        PUBLIC bma2x2_set_nvprog_trig
        PUBLIC bma2x2_set_offset
        PUBLIC bma2x2_set_offset_rst
        PUBLIC bma2x2_set_offset_target
        PUBLIC bma2x2_set_orient_block
        PUBLIC bma2x2_set_orient_enable
        PUBLIC bma2x2_set_orient_hyst
        PUBLIC bma2x2_set_orient_mode
        PUBLIC bma2x2_set_power_mode
        PUBLIC bma2x2_set_range
        PUBLIC bma2x2_set_selftest_axis
        PUBLIC bma2x2_set_selftest_sign
        PUBLIC bma2x2_set_shadow_dis
        PUBLIC bma2x2_set_sleep_durn
        PUBLIC bma2x2_set_sleep_timer_mode
        PUBLIC bma2x2_set_slow_comp
        PUBLIC bma2x2_set_slow_no_motion
        PUBLIC bma2x2_set_source
        PUBLIC bma2x2_set_spi3
        PUBLIC bma2x2_set_tap_durn
        PUBLIC bma2x2_set_tap_quiet
        PUBLIC bma2x2_set_tap_sample
        PUBLIC bma2x2_set_tap_shock
        PUBLIC bma2x2_set_tap_thres
        PUBLIC bma2x2_set_theta
        PUBLIC bma2x2_set_thres
        PUBLIC bma2x2_soft_rst
        PUBLIC bma2x2_update_image
        PUBLIC bma2x2_write_reg


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
p_bma2x2:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
V_BMA2x2RESOLUTION_U8:
        DS8 1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_burst_read:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        LD        S:?b13, A
        LDW       S:?w7, X
        CALLF     L:?mov_l2_l0
        MOV       S:?b12, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_burst_read_0
        LD        A, #0x81
        JRA       L:??bma2x2_burst_read_1
??bma2x2_burst_read_0:
        CALLF     L:?mov_l1_l2
        LDW       X, S:?w7
        MOV       S:?b0, S:?b13
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0xc
        CALLF     L:?load24_e0_0x
        POPW      X
        CALLF     [S:?e0.e]
        LD        S:?b12, A
        LD        A, S:?b12
??bma2x2_burst_read_1:
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_init:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x2
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x2,SP), A
        CLR       A
        LD        (0x1,SP), A
        LDW       X, S:?w4
        LDW       L:p_bma2x2, X
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_init_0
        LD        A, #0x81
        LD        S:?b10, A
        JRA       L:??bma2x2_init_1
??bma2x2_init_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x2
        CLR       S:?b0
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LDW       X, L:p_bma2x2
        INCW      X
        LD        A, (0x2,SP)
        LD        (X), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x3e
        CALLF     bma2x2_read_reg
        ADD       A, S:?b10
        LD        S:?b10, A
        LDW       X, L:p_bma2x2
        ADDW      X, #0x5
        LD        A, (0x1,SP)
        LD        (X), A
??bma2x2_init_1:
        LD        A, S:?b10
        ADD       SP, #0x2
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_write_reg:
        CALLF     L:?push_w4
        CALLF     L:?push_w6
        PUSH      S:?b10
        LD        S:?b10, A
        LDW       S:?w6, X
        MOV       S:?b9, S:?b0
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_write_reg_0
        LD        A, #0x81
        JRA       L:??bma2x2_write_reg_1
??bma2x2_write_reg_0:
        MOV       S:?b1, S:?b9
        LDW       X, S:?w6
        MOV       S:?b0, S:?b10
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x6
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        TNZ       [L:p_bma2x2.w]
        JREQ      L:??bma2x2_write_reg_2
        CLRW      X
        LDW       S:?w0, X
        INCW      X
        LDW       S:?w1, X
        LDW       X, L:p_bma2x2
        ADDW      X, #0xf
        CALLF     L:?load24_e1_0x
        CALLF     [S:?e1.e]
??bma2x2_write_reg_2:
        LD        A, S:?b8
??bma2x2_write_reg_1:
        POP       S:?b10
        CALLF     L:?pop_w6
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_reg:
        CALLF     L:?push_l2
        PUSH      S:?b12
        LD        S:?b11, A
        LDW       S:?w4, X
        MOV       S:?b12, S:?b0
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_reg_0
        LD        A, #0x81
        JRA       L:??bma2x2_read_reg_1
??bma2x2_read_reg_0:
        MOV       S:?b1, S:?b12
        LDW       X, S:?w4
        MOV       S:?b0, S:?b11
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, S:?b10
??bma2x2_read_reg_1:
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_x:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x2
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       Y, #?_0
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x2
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_x_0
        LD        A, #0x81
        JP        L:??bma2x2_read_accel_x_1
??bma2x2_read_accel_x_0:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        TNZ       A
        JREQ      L:??bma2x2_read_accel_x_2
        DEC       A
        JREQ      L:??bma2x2_read_accel_x_3
        DEC       A
        JRNE      ??lb_50
        JP        L:??bma2x2_read_accel_x_4
??lb_50:
        JP        L:??bma2x2_read_accel_x_5
??bma2x2_read_accel_x_2:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        JP        L:??bma2x2_read_accel_x_6
??bma2x2_read_accel_x_3:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        CALLF     L:?sra16_x_x_6
        LDW       [S:?w4.w], X
        JRA       L:??bma2x2_read_accel_x_6
??bma2x2_read_accel_x_4:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        JRA       L:??bma2x2_read_accel_x_6
??bma2x2_read_accel_x_5:
??bma2x2_read_accel_x_6:
        LD        A, S:?b10
??bma2x2_read_accel_x_1:
        ADD       SP, #0x2
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_eight_resolution_x:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_eight_resolution_x_0
        LD        A, #0x81
        JRA       L:??bma2x2_read_accel_eight_resolution_x_1
??bma2x2_read_accel_eight_resolution_x_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_read_accel_eight_resolution_x_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_y:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x2
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       Y, #?_1
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x2
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_y_0
        LD        A, #0x81
        JP        L:??bma2x2_read_accel_y_1
??bma2x2_read_accel_y_0:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        TNZ       A
        JREQ      L:??bma2x2_read_accel_y_2
        DEC       A
        JREQ      L:??bma2x2_read_accel_y_3
        DEC       A
        JRNE      ??lb_49
        JP        L:??bma2x2_read_accel_y_4
??lb_49:
        JP        L:??bma2x2_read_accel_y_5
??bma2x2_read_accel_y_2:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x4
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        JP        L:??bma2x2_read_accel_y_6
??bma2x2_read_accel_y_3:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x4
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        CALLF     L:?sra16_x_x_6
        LDW       [S:?w4.w], X
        JRA       L:??bma2x2_read_accel_y_6
??bma2x2_read_accel_y_4:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x4
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        JRA       L:??bma2x2_read_accel_y_6
??bma2x2_read_accel_y_5:
??bma2x2_read_accel_y_6:
        LD        A, S:?b10
??bma2x2_read_accel_y_1:
        ADD       SP, #0x2
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_eight_resolution_y:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_eight_resolution_y_0
        LD        A, #0x81
        JRA       L:??bma2x2_read_accel_eight_resolution_y_1
??bma2x2_read_accel_eight_resolution_y_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x5
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_read_accel_eight_resolution_y_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_z:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x2
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       Y, #?_2
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x2
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_z_0
        LD        A, #0x81
        JP        L:??bma2x2_read_accel_z_1
??bma2x2_read_accel_z_0:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        TNZ       A
        JREQ      L:??bma2x2_read_accel_z_2
        DEC       A
        JREQ      L:??bma2x2_read_accel_z_3
        DEC       A
        JRNE      ??lb_48
        JP        L:??bma2x2_read_accel_z_4
??lb_48:
        JP        L:??bma2x2_read_accel_z_5
??bma2x2_read_accel_z_2:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x6
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        JP        L:??bma2x2_read_accel_z_6
??bma2x2_read_accel_z_3:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x6
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        CALLF     L:?sra16_x_x_6
        LDW       [S:?w4.w], X
        JRA       L:??bma2x2_read_accel_z_6
??bma2x2_read_accel_z_4:
        MOV       S:?b1, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x6
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        JRA       L:??bma2x2_read_accel_z_6
??bma2x2_read_accel_z_5:
??bma2x2_read_accel_z_6:
        LD        A, S:?b10
??bma2x2_read_accel_z_1:
        ADD       SP, #0x2
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_eight_resolution_z:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_eight_resolution_z_0
        LD        A, #0x81
        JRA       L:??bma2x2_read_accel_eight_resolution_z_1
??bma2x2_read_accel_eight_resolution_z_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x7
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_read_accel_eight_resolution_z_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_xyz:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x6
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       Y, #?_3
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x6
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_xyz_0
        LD        A, #0x81
        JP        L:??bma2x2_read_accel_xyz_1
??bma2x2_read_accel_xyz_0:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        TNZ       A
        JREQ      L:??bma2x2_read_accel_xyz_2
        DEC       A
        JRNE      ??lb_46
        JP        L:??bma2x2_read_accel_xyz_3
??lb_46:
        DEC       A
        JRNE      ??lb_47
        JP        L:??bma2x2_read_accel_xyz_4
??lb_47:
        JP        L:??bma2x2_read_accel_xyz_5
??bma2x2_read_accel_xyz_2:
        MOV       S:?b1, #0x6
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        LD        A, (0x3,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x4,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x5,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x6,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        JP        L:??bma2x2_read_accel_xyz_6
??bma2x2_read_accel_xyz_3:
        MOV       S:?b1, #0x6
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        CALLF     L:?sra16_x_x_6
        LDW       [S:?w4.w], X
        LD        A, (0x3,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x4,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x5,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x6,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        JP        L:??bma2x2_read_accel_xyz_6
??bma2x2_read_accel_xyz_4:
        MOV       S:?b1, #0x6
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        LD        A, (0x3,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x4,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x5,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x6,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        JRA       L:??bma2x2_read_accel_xyz_6
??bma2x2_read_accel_xyz_5:
??bma2x2_read_accel_xyz_6:
        LD        A, S:?b10
??bma2x2_read_accel_xyz_1:
        ADD       SP, #0x6
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_eight_resolution_xyz:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_eight_resolution_xyz_0
        LD        A, #0x81
        JP        L:??bma2x2_read_accel_eight_resolution_xyz_1
??bma2x2_read_accel_eight_resolution_xyz_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x5
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LDW       X, S:?w4
        INCW      X
        LD        A, (0x1,SP)
        LD        (X), A
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x7
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        A, (0x1,SP)
        LD        (X), A
        LD        A, S:?b10
??bma2x2_read_accel_eight_resolution_xyz_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_tap_stat:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_tap_stat_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_tap_stat_1
??bma2x2_get_intr_tap_stat_0:
        MOV       S:?b1, #0x1
        LDW       X, S:?w4
        MOV       S:?b0, #0xb
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, S:?b10
??bma2x2_get_intr_tap_stat_1:
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_orient_stat:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_orient_stat_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_orient_stat_1
??bma2x2_get_intr_orient_stat_0:
        MOV       S:?b1, #0x1
        LDW       X, S:?w4
        MOV       S:?b0, #0xc
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, S:?b10
??bma2x2_get_intr_orient_stat_1:
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_fifo_stat:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_fifo_stat_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_fifo_stat_1
??bma2x2_get_fifo_stat_0:
        MOV       S:?b1, #0x1
        LDW       X, S:?w4
        MOV       S:?b0, #0xe
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, S:?b10
??bma2x2_get_fifo_stat_1:
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_fifo_frame_count:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_fifo_frame_count_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_fifo_frame_count_1
??bma2x2_get_fifo_frame_count_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0xe
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x7f
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_fifo_frame_count_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_fifo_overrun:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_fifo_overrun_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_fifo_overrun_1
??bma2x2_get_fifo_overrun_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0xe
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SLL       A
        CLR       A
        RLC       A
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_fifo_overrun_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_stat:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_stat_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_stat_1
??bma2x2_get_intr_stat_0:
        MOV       S:?b1, #0x4
        LDW       X, S:?w4
        MOV       S:?b0, #0x9
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, S:?b10
??bma2x2_get_intr_stat_1:
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_range:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_range_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_range_1
??bma2x2_get_range_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0xf
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0xf
        LD        (0x1,SP), A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_range_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_range:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        MOV       S:?b9, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_range_0
        LD        A, #0x81
        JP        L:??bma2x2_set_range_1
??bma2x2_set_range_0:
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??bma2x2_set_range_2
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??bma2x2_set_range_2
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??bma2x2_set_range_2
        LD        A, S:?b8
        CP        A, #0xc
        JRNE      L:??bma2x2_set_range_3
??bma2x2_set_range_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0xf
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??bma2x2_set_range_4
        CP        A, #0x5
        JREQ      L:??bma2x2_set_range_5
        CP        A, #0x8
        JREQ      L:??bma2x2_set_range_6
        CP        A, #0xc
        JREQ      L:??bma2x2_set_range_7
        JRA       L:??bma2x2_set_range_8
??bma2x2_set_range_4:
        LD        A, (0x1,SP)
        AND       A, #0xf0
        OR        A, #0x3
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_range_9
??bma2x2_set_range_5:
        LD        A, (0x1,SP)
        AND       A, #0xf0
        OR        A, #0x5
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_range_9
??bma2x2_set_range_6:
        LD        A, (0x1,SP)
        AND       A, #0xf0
        OR        A, #0x8
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_range_9
??bma2x2_set_range_7:
        LD        A, (0x1,SP)
        AND       A, #0xf0
        OR        A, #0xc
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_range_9
??bma2x2_set_range_8:
??bma2x2_set_range_9:
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0xf
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_range_10
??bma2x2_set_range_3:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_range_10:
        LD        A, S:?b9
??bma2x2_set_range_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_bw:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_bw_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_bw_1
??bma2x2_get_bw_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x10
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1f
        LD        (0x1,SP), A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_bw_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_bw:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b8, #0xff
        CLR       A
        LD        (0x1,SP), A
        CLR       S:?b9
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_bw_0
        LD        A, #0x81
        LD        S:?b8, A
        JP        L:??bma2x2_set_bw_1
??bma2x2_set_bw_0:
        LDW       X, L:p_bma2x2
        INCW      X
        LD        A, (X)
        CP        A, #0xfb
        JREQ      ??lb_41
        JP        L:??bma2x2_set_bw_2
??lb_41:
        LD        A, S:?b10
        CP        A, #0x8
        JRNC      ??lb_42
        JP        L:??bma2x2_set_bw_3
??lb_42:
        LD        A, S:?b10
        CP        A, #0xf
        JRC       ??lb_43
        JP        L:??bma2x2_set_bw_3
??lb_43:
        LD        A, S:?b10
        SUB       A, #0x8
        JREQ      L:??bma2x2_set_bw_4
        DEC       A
        JREQ      L:??bma2x2_set_bw_5
        DEC       A
        JREQ      L:??bma2x2_set_bw_6
        DEC       A
        JREQ      L:??bma2x2_set_bw_7
        DEC       A
        JREQ      L:??bma2x2_set_bw_8
        DEC       A
        JREQ      L:??bma2x2_set_bw_9
        DEC       A
        JREQ      L:??bma2x2_set_bw_10
        JRA       L:??bma2x2_set_bw_11
??bma2x2_set_bw_4:
        LD        A, #0x8
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_12
??bma2x2_set_bw_5:
        LD        A, #0x9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_12
??bma2x2_set_bw_6:
        LD        A, #0xa
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_12
??bma2x2_set_bw_7:
        LD        A, #0xb
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_12
??bma2x2_set_bw_8:
        LD        A, #0xc
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_12
??bma2x2_set_bw_9:
        LD        A, #0xd
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_12
??bma2x2_set_bw_10:
        LD        A, #0xe
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_12
??bma2x2_set_bw_11:
??bma2x2_set_bw_12:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x10
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1f
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xe0
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x10
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_bw_1
??bma2x2_set_bw_3:
        LD        A, #0xfe
        LD        S:?b8, A
        JP        L:??bma2x2_set_bw_1
??bma2x2_set_bw_2:
        LD        A, S:?b10
        CP        A, #0x8
        JRNC      ??lb_44
        JP        L:??bma2x2_set_bw_13
??lb_44:
        LD        A, S:?b10
        CP        A, #0x10
        JRC       ??lb_45
        JP        L:??bma2x2_set_bw_13
??lb_45:
        LD        A, S:?b10
        SUB       A, #0x8
        JREQ      L:??bma2x2_set_bw_14
        DEC       A
        JREQ      L:??bma2x2_set_bw_15
        DEC       A
        JREQ      L:??bma2x2_set_bw_16
        DEC       A
        JREQ      L:??bma2x2_set_bw_17
        DEC       A
        JREQ      L:??bma2x2_set_bw_18
        DEC       A
        JREQ      L:??bma2x2_set_bw_19
        DEC       A
        JREQ      L:??bma2x2_set_bw_20
        DEC       A
        JREQ      L:??bma2x2_set_bw_21
        JRA       L:??bma2x2_set_bw_22
??bma2x2_set_bw_14:
        LD        A, #0x8
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_23
??bma2x2_set_bw_15:
        LD        A, #0x9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_23
??bma2x2_set_bw_16:
        LD        A, #0xa
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_23
??bma2x2_set_bw_17:
        LD        A, #0xb
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_23
??bma2x2_set_bw_18:
        LD        A, #0xc
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_23
??bma2x2_set_bw_19:
        LD        A, #0xd
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_23
??bma2x2_set_bw_20:
        LD        A, #0xe
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_23
??bma2x2_set_bw_21:
        LD        A, #0xf
        LD        S:?b9, A
        JRA       L:??bma2x2_set_bw_23
??bma2x2_set_bw_22:
??bma2x2_set_bw_23:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x10
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1f
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xe0
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x10
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_bw_1
??bma2x2_set_bw_13:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_bw_1:
        LD        A, S:?b8
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_power_mode:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x2
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        CLR       A
        LD        (0x2,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_power_mode_0
        LD        A, #0x81
        LD        S:?b10, A
        JP        L:??bma2x2_get_power_mode_1
??bma2x2_get_power_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x11
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x2
        MOV       S:?b0, #0x12
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        ADD       A, S:?b10
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        LD        (0x1,SP), A
        LD        A, (0x2,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        (0x2,SP), A
        TNZ       (0x1,SP)
        JRNE      L:??bma2x2_get_power_mode_2
        TNZ       (0x2,SP)
        JRNE      L:??bma2x2_get_power_mode_2
        CLR       A
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_power_mode_1
??bma2x2_get_power_mode_2:
        LD        A, (0x1,SP)
        CP        A, #0x2
        JRNE      L:??bma2x2_get_power_mode_3
        TNZ       (0x2,SP)
        JRNE      L:??bma2x2_get_power_mode_3
        LD        A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_power_mode_1
??bma2x2_get_power_mode_3:
        LD        A, (0x1,SP)
        CP        A, #0x4
        JREQ      L:??bma2x2_get_power_mode_4
        LD        A, (0x1,SP)
        CP        A, #0x6
        JRNE      L:??bma2x2_get_power_mode_5
??bma2x2_get_power_mode_4:
        TNZ       (0x2,SP)
        JRNE      L:??bma2x2_get_power_mode_5
        LD        A, #0x2
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_power_mode_1
??bma2x2_get_power_mode_5:
        LD        A, (0x1,SP)
        AND       A, #0x1
        CP        A, #0x0
        JREQ      L:??bma2x2_get_power_mode_6
        LD        A, #0x3
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_power_mode_1
??bma2x2_get_power_mode_6:
        LD        A, (0x1,SP)
        CP        A, #0x2
        JRNE      L:??bma2x2_get_power_mode_7
        LD        A, (0x2,SP)
        CP        A, #0x1
        JRNE      L:??bma2x2_get_power_mode_7
        LD        A, #0x4
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_power_mode_1
??bma2x2_get_power_mode_7:
        LD        A, (0x1,SP)
        CP        A, #0x4
        JRNE      L:??bma2x2_get_power_mode_8
        LD        A, (0x2,SP)
        CP        A, #0x1
        JRNE      L:??bma2x2_get_power_mode_8
        LD        A, #0x5
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_power_mode_1
??bma2x2_get_power_mode_8:
        LD        A, #0x3
        LD        [S:?w4.w], A
??bma2x2_get_power_mode_1:
        LD        A, [S:?w4.w]
        LD        [L:p_bma2x2.w], A
        LD        A, S:?b10
        ADD       SP, #0x2
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_power_mode:
        CALLF     L:?push_l2
        SUB       SP, #0x3
        LD        S:?b9, A
        MOV       S:?b8, #0xff
        CLR       S:?b11
        CLR       S:?b10
        CLR       A
        LD        (0x1,SP), A
        CLR       A
        LD        (0x3,SP), A
        CLR       A
        LD        (0x2,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_power_mode_0
        LD        A, #0x81
        LD        S:?b8, A
        JP        L:??bma2x2_set_power_mode_1
??bma2x2_set_power_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x11
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x3
        MOV       S:?b0, #0x12
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        ADD       A, S:?b8
        LD        S:?b8, A
        LDW       X, L:p_bma2x2
        ADDW      X, #0x5
        LD        A, (X)
        LD        (0x2,SP), A
        LD        A, (0x2,SP)
        OR        A, #0xc
        LD        (0x2,SP), A
        LD        A, S:?b9
        CALLF     bma2x2_set_mode_value
        ADD       A, S:?b8
        LD        S:?b8, A
        LDW       X, L:p_bma2x2
        INCW      X
        INCW      X
        LD        A, (X)
        LD        S:?b11, A
        LDW       X, L:p_bma2x2
        ADDW      X, #0x3
        LD        A, (X)
        LD        S:?b10, A
        LD        A, S:?b10
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x4,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x3,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x3
        LD        A, #0x12
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        CLRW      X
        LDW       S:?w0, X
        INCW      X
        LDW       S:?w1, X
        LDW       X, L:p_bma2x2
        ADDW      X, #0xf
        CALLF     L:?load24_e1_0x
        CALLF     [S:?e1.e]
        LD        A, [L:p_bma2x2.w]
        CP        A, #0x1
        JREQ      L:??bma2x2_set_power_mode_2
        LD        A, [L:p_bma2x2.w]
        CP        A, #0x4
        JRNE      L:??bma2x2_set_power_mode_3
??bma2x2_set_power_mode_2:
        TNZ       S:?b9
        JRNE      L:??bma2x2_set_power_mode_3
        LD        A, (0x1,SP)
        AND       A, #0x1f
        OR        A, #0x80
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x11
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x2
        LD        A, #0x3e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
??bma2x2_set_power_mode_3:
        LD        A, S:?b11
        SWAP      A
        AND       A, #0xf0
        SLL       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x1f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x11
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        CLRW      X
        LDW       S:?w0, X
        INCW      X
        LDW       S:?w1, X
        LDW       X, L:p_bma2x2
        ADDW      X, #0xf
        CALLF     L:?load24_e1_0x
        CALLF     [S:?e1.e]
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x2
        LD        A, #0x3e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        LD        A, S:?b9
        LD        [L:p_bma2x2.w], A
??bma2x2_set_power_mode_1:
        LD        A, S:?b8
        ADD       SP, #0x3
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_mode_value:
        LD        S:?b1, A
        CLR       S:?b0
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_mode_value_0
        LD        A, #0x81
        LD        S:?b0, A
        JP        L:??bma2x2_set_mode_value_1
??bma2x2_set_mode_value_0:
        LD        A, S:?b1
        CP        A, #0x6
        JRNC      L:??bma2x2_set_mode_value_2
        LD        A, S:?b1
        TNZ       A
        JREQ      L:??bma2x2_set_mode_value_3
        DEC       A
        JREQ      L:??bma2x2_set_mode_value_4
        DEC       A
        JREQ      L:??bma2x2_set_mode_value_5
        DEC       A
        JREQ      L:??bma2x2_set_mode_value_6
        DEC       A
        JREQ      L:??bma2x2_set_mode_value_7
        DEC       A
        JREQ      L:??bma2x2_set_mode_value_8
        JRA       L:??bma2x2_set_mode_value_1
??bma2x2_set_mode_value_3:
        LDW       X, L:p_bma2x2
        INCW      X
        INCW      X
        CLR       A
        LD        (X), A
        LDW       X, L:p_bma2x2
        ADDW      X, #0x3
        CLR       A
        LD        (X), A
        JRA       L:??bma2x2_set_mode_value_1
??bma2x2_set_mode_value_4:
        LDW       X, L:p_bma2x2
        INCW      X
        INCW      X
        LD        A, #0x2
        LD        (X), A
        LDW       X, L:p_bma2x2
        ADDW      X, #0x3
        CLR       A
        LD        (X), A
        JRA       L:??bma2x2_set_mode_value_1
??bma2x2_set_mode_value_7:
        LDW       X, L:p_bma2x2
        INCW      X
        INCW      X
        LD        A, #0x2
        LD        (X), A
        LDW       X, L:p_bma2x2
        ADDW      X, #0x3
        LD        A, #0x1
        LD        (X), A
        JRA       L:??bma2x2_set_mode_value_1
??bma2x2_set_mode_value_5:
        LDW       X, L:p_bma2x2
        INCW      X
        INCW      X
        LD        A, #0x4
        LD        (X), A
        LDW       X, L:p_bma2x2
        ADDW      X, #0x3
        CLR       A
        LD        (X), A
        JRA       L:??bma2x2_set_mode_value_1
??bma2x2_set_mode_value_8:
        LDW       X, L:p_bma2x2
        INCW      X
        INCW      X
        LD        A, #0x4
        LD        (X), A
        LDW       X, L:p_bma2x2
        ADDW      X, #0x3
        LD        A, #0x1
        LD        (X), A
        JRA       L:??bma2x2_set_mode_value_1
??bma2x2_set_mode_value_6:
        LDW       X, L:p_bma2x2
        INCW      X
        INCW      X
        LD        A, #0x1
        LD        (X), A
        JRA       L:??bma2x2_set_mode_value_1
??bma2x2_set_mode_value_2:
        LD        A, #0xfe
        LD        S:?b0, A
??bma2x2_set_mode_value_1:
        LD        A, S:?b0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_sleep_durn:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_sleep_durn_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_sleep_durn_1
??bma2x2_get_sleep_durn_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x11
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0xf
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_sleep_durn_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_sleep_durn:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        CLR       S:?b9
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_sleep_durn_0
        LD        A, #0x81
        JP        L:??bma2x2_set_sleep_durn_1
??bma2x2_set_sleep_durn_0:
        LD        A, S:?b8
        CP        A, #0x5
        JRNC      ??lb_39
        JP        L:??bma2x2_set_sleep_durn_2
??lb_39:
        LD        A, S:?b8
        CP        A, #0x10
        JRC       ??lb_40
        JP        L:??bma2x2_set_sleep_durn_2
??lb_40:
        LD        A, S:?b8
        SUB       A, #0x5
        JREQ      L:??bma2x2_set_sleep_durn_3
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_4
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_5
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_6
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_7
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_8
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_9
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_10
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_11
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_12
        DEC       A
        JREQ      L:??bma2x2_set_sleep_durn_13
        JRA       L:??bma2x2_set_sleep_durn_14
??bma2x2_set_sleep_durn_3:
        LD        A, #0x5
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_4:
        LD        A, #0x6
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_5:
        LD        A, #0x7
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_6:
        LD        A, #0x8
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_7:
        LD        A, #0x9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_8:
        LD        A, #0xa
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_9:
        LD        A, #0xb
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_10:
        LD        A, #0xc
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_11:
        LD        A, #0xd
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_12:
        LD        A, #0xe
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_13:
        LD        A, #0xf
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_durn_15
??bma2x2_set_sleep_durn_14:
??bma2x2_set_sleep_durn_15:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x11
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x1e
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xe1
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x11
        CALLF     bma2x2_write_reg
        ADD       A, S:?b10
        LD        S:?b10, A
        JRA       L:??bma2x2_set_sleep_durn_16
??bma2x2_set_sleep_durn_2:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_set_sleep_durn_16:
        LD        A, S:?b10
??bma2x2_set_sleep_durn_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_sleep_timer_mode:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_sleep_timer_mode_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_sleep_timer_mode_1
??bma2x2_get_sleep_timer_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x12
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_sleep_timer_mode_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_sleep_timer_mode:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_sleep_timer_mode_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_sleep_timer_mode_1
??bma2x2_set_sleep_timer_mode_0:
        LD        A, S:?b8
        CP        A, #0x2
        JRNC      L:??bma2x2_set_sleep_timer_mode_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x12
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x20
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xdf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x12
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_sleep_timer_mode_3
??bma2x2_set_sleep_timer_mode_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_sleep_timer_mode_3:
        LD        A, S:?b9
??bma2x2_set_sleep_timer_mode_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_high_bw:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_high_bw_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_high_bw_1
??bma2x2_get_high_bw_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x13
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SLL       A
        CLR       A
        RLC       A
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_high_bw_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_high_bw:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        MOV       S:?b9, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_high_bw_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_high_bw_1
??bma2x2_set_high_bw_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x13
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SRL       A
        CLR       A
        RRC       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x7f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x13
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_high_bw_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_shadow_dis:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_shadow_dis_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_shadow_dis_1
??bma2x2_get_shadow_dis_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x13
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_shadow_dis_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_shadow_dis:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        MOV       S:?b9, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_shadow_dis_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_shadow_dis_1
??bma2x2_set_shadow_dis_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x13
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x13
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_shadow_dis_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_soft_rst:
        PUSH      S:?b8
        SUB       SP, #0x1
        MOV       S:?b8, #0xff
        LD        A, #0xb6
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_soft_rst_0
        LD        A, #0x81
        JRA       L:??bma2x2_soft_rst_1
??bma2x2_soft_rst_0:
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x14
        CALLF     bma2x2_write_reg
        LD        S:?b8, A
        LD        A, S:?b8
??bma2x2_soft_rst_1:
        ADD       SP, #0x1
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_update_image:
        PUSH      S:?b8
        SUB       SP, #0x1
        MOV       S:?b8, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_update_image_0
        LD        A, #0x81
        JRA       L:??bma2x2_update_image_1
??bma2x2_update_image_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x33
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, (0x1,SP)
        OR        A, #0x8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x33
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
??bma2x2_update_image_1:
        ADD       SP, #0x1
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_enable:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_enable_0
        LD        A, #0x81
        JP        L:??bma2x2_get_intr_enable_1
??bma2x2_get_intr_enable_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_enable_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_enable_3
        DEC       A
        JRNE      ??lb_29
        JP        L:??bma2x2_get_intr_enable_4
??lb_29:
        DEC       A
        JRNE      ??lb_30
        JP        L:??bma2x2_get_intr_enable_5
??lb_30:
        DEC       A
        JRNE      ??lb_31
        JP        L:??bma2x2_get_intr_enable_6
??lb_31:
        DEC       A
        JRNE      ??lb_32
        JP        L:??bma2x2_get_intr_enable_7
??lb_32:
        DEC       A
        JRNE      ??lb_33
        JP        L:??bma2x2_get_intr_enable_8
??lb_33:
        DEC       A
        JRNE      ??lb_34
        JP        L:??bma2x2_get_intr_enable_9
??lb_34:
        DEC       A
        JRNE      ??lb_35
        JP        L:??bma2x2_get_intr_enable_10
??lb_35:
        DEC       A
        JRNE      ??lb_36
        JP        L:??bma2x2_get_intr_enable_11
??lb_36:
        DEC       A
        JRNE      ??lb_37
        JP        L:??bma2x2_get_intr_enable_12
??lb_37:
        DEC       A
        JRNE      ??lb_38
        JP        L:??bma2x2_get_intr_enable_13
??lb_38:
        JP        L:??bma2x2_get_intr_enable_14
??bma2x2_get_intr_enable_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_6:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_7:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x16
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_8:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x16
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_9:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x16
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_10:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x16
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_11:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x16
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_12:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x16
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_13:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x16
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SLL       A
        CLR       A
        RLC       A
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_enable_15
??bma2x2_get_intr_enable_14:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_enable_15:
        LD        A, S:?b10
??bma2x2_get_intr_enable_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_enable:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x2
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        MOV       S:?b8, #0xff
        CLR       A
        LD        (0x1,SP), A
        CLR       A
        LD        (0x2,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_enable_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_enable_1
??bma2x2_set_intr_enable_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x16
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x2
        MOV       S:?b0, #0x17
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        ADD       A, S:?b8
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        LD        S:?b9, A
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_enable_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_enable_3
        DEC       A
        JREQ      L:??bma2x2_set_intr_enable_4
        DEC       A
        JREQ      L:??bma2x2_set_intr_enable_5
        DEC       A
        JREQ      L:??bma2x2_set_intr_enable_6
        DEC       A
        JRNE      ??lb_22
        JP        L:??bma2x2_set_intr_enable_7
??lb_22:
        DEC       A
        JRNE      ??lb_23
        JP        L:??bma2x2_set_intr_enable_8
??lb_23:
        DEC       A
        JRNE      ??lb_24
        JP        L:??bma2x2_set_intr_enable_9
??lb_24:
        DEC       A
        JRNE      ??lb_25
        JP        L:??bma2x2_set_intr_enable_10
??lb_25:
        DEC       A
        JRNE      ??lb_26
        JP        L:??bma2x2_set_intr_enable_11
??lb_26:
        DEC       A
        JRNE      ??lb_27
        JP        L:??bma2x2_set_intr_enable_12
??lb_27:
        DEC       A
        JRNE      ??lb_28
        JP        L:??bma2x2_set_intr_enable_13
??lb_28:
        JP        L:??bma2x2_set_intr_enable_14
??bma2x2_set_intr_enable_2:
        LD        A, S:?b9
        SLL       A
        SLL       A
        SLL       A
        AND       A, #0x8
        PUSH      A
        LD        A, (0x3,SP)
        AND       A, #0xf7
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x2,SP), A
        JP        L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_3:
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x3,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x2,SP), A
        JP        L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_4:
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x3,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x2,SP), A
        JP        L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_5:
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x3,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x2,SP), A
        JP        L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_6:
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        AND       A, #0x10
        PUSH      A
        LD        A, (0x3,SP)
        AND       A, #0xef
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x2,SP), A
        JP        L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_7:
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_8:
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_9:
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_10:
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x20
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xdf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_11:
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        AND       A, #0x10
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xef
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_12:
        LD        A, S:?b9
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_13:
        LD        A, S:?b9
        SRL       A
        CLR       A
        RRC       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x7f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        JRA       L:??bma2x2_set_intr_enable_15
??bma2x2_set_intr_enable_14:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_enable_15:
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x16
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x2
        LD        A, #0x17
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
??bma2x2_set_intr_enable_1:
        ADD       SP, #0x2
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_fifo_full:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_fifo_full_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_fifo_full_1
??bma2x2_get_intr_fifo_full_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_intr_fifo_full_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_fifo_full:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_fifo_full_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_intr_fifo_full_1
??bma2x2_set_intr_fifo_full_0:
        LD        A, S:?b8
        CP        A, #0x2
        JRNC      L:??bma2x2_set_intr_fifo_full_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x20
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xdf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x17
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_intr_fifo_full_3
??bma2x2_set_intr_fifo_full_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_intr_fifo_full_3:
        LD        A, S:?b9
??bma2x2_set_intr_fifo_full_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_fifo_wm:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_fifo_wm_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_fifo_wm_1
??bma2x2_get_intr_fifo_wm_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_intr_fifo_wm_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_fifo_wm:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_fifo_wm_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_intr_fifo_wm_1
??bma2x2_set_intr_fifo_wm_0:
        LD        A, S:?b8
        CP        A, #0x2
        JRNC      L:??bma2x2_set_intr_fifo_wm_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x17
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x17
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_intr_fifo_wm_3
??bma2x2_set_intr_fifo_wm_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_intr_fifo_wm_3:
        LD        A, S:?b9
??bma2x2_set_intr_fifo_wm_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_slow_no_motion:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_slow_no_motion_0
        LD        A, #0x81
        JP        L:??bma2x2_get_slow_no_motion_1
??bma2x2_get_slow_no_motion_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_slow_no_motion_2
        DEC       A
        JREQ      L:??bma2x2_get_slow_no_motion_3
        DEC       A
        JREQ      L:??bma2x2_get_slow_no_motion_4
        DEC       A
        JRNE      ??lb_21
        JP        L:??bma2x2_get_slow_no_motion_5
??lb_21:
        JP        L:??bma2x2_get_slow_no_motion_6
??bma2x2_get_slow_no_motion_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x18
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_slow_no_motion_7
??bma2x2_get_slow_no_motion_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x18
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_slow_no_motion_7
??bma2x2_get_slow_no_motion_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x18
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_slow_no_motion_7
??bma2x2_get_slow_no_motion_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x18
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_slow_no_motion_7
??bma2x2_get_slow_no_motion_6:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_slow_no_motion_7:
        LD        A, S:?b10
??bma2x2_get_slow_no_motion_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_slow_no_motion:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_slow_no_motion_0
        LD        A, #0x81
        JP        L:??bma2x2_set_slow_no_motion_1
??bma2x2_set_slow_no_motion_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_slow_no_motion_2
        DEC       A
        JREQ      L:??bma2x2_set_slow_no_motion_3
        DEC       A
        JRNE      ??lb_19
        JP        L:??bma2x2_set_slow_no_motion_4
??lb_19:
        DEC       A
        JRNE      ??lb_20
        JP        L:??bma2x2_set_slow_no_motion_5
??lb_20:
        JP        L:??bma2x2_set_slow_no_motion_6
??bma2x2_set_slow_no_motion_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x18
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x18
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_slow_no_motion_7
??bma2x2_set_slow_no_motion_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x18
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x18
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_slow_no_motion_7
??bma2x2_set_slow_no_motion_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x18
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x18
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_slow_no_motion_7
??bma2x2_set_slow_no_motion_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x18
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        SLL       A
        AND       A, #0x8
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf7
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x18
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_slow_no_motion_7
??bma2x2_set_slow_no_motion_6:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_slow_no_motion_7:
        LD        A, S:?b8
??bma2x2_set_slow_no_motion_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_low_g:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_low_g_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_low_g_1
??bma2x2_get_intr_low_g_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_low_g_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_low_g_3
        JRA       L:??bma2x2_get_intr_low_g_4
??bma2x2_get_intr_low_g_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_low_g_5
??bma2x2_get_intr_low_g_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_low_g_5
??bma2x2_get_intr_low_g_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_low_g_5:
        LD        A, S:?b10
??bma2x2_get_intr_low_g_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_low_g:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_low_g_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_low_g_1
??bma2x2_set_intr_low_g_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_low_g_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_low_g_3
        JP        L:??bma2x2_set_intr_low_g_4
??bma2x2_set_intr_low_g_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x19
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_low_g_5
??bma2x2_set_intr_low_g_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_low_g_5
??bma2x2_set_intr_low_g_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_low_g_5:
        LD        A, S:?b8
??bma2x2_set_intr_low_g_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_high_g:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_high_g_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_high_g_1
??bma2x2_get_intr_high_g_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_high_g_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_high_g_3
        JRA       L:??bma2x2_get_intr_high_g_4
??bma2x2_get_intr_high_g_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_high_g_5
??bma2x2_get_intr_high_g_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_high_g_5
??bma2x2_get_intr_high_g_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_high_g_5:
        LD        A, S:?b10
??bma2x2_get_intr_high_g_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_high_g:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_high_g_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_high_g_1
??bma2x2_set_intr_high_g_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_high_g_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_high_g_3
        JP        L:??bma2x2_set_intr_high_g_4
??bma2x2_set_intr_high_g_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x19
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_high_g_5
??bma2x2_set_intr_high_g_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_high_g_5
??bma2x2_set_intr_high_g_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_high_g_5:
        LD        A, S:?b8
??bma2x2_set_intr_high_g_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_slope:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_slope_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_slope_1
??bma2x2_get_intr_slope_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_slope_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_slope_3
        JRA       L:??bma2x2_get_intr_slope_4
??bma2x2_get_intr_slope_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_slope_5
??bma2x2_get_intr_slope_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_slope_5
??bma2x2_get_intr_slope_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_slope_5:
        LD        A, S:?b10
??bma2x2_get_intr_slope_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_slope:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_slope_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_slope_1
??bma2x2_set_intr_slope_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_slope_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_slope_3
        JP        L:??bma2x2_set_intr_slope_4
??bma2x2_set_intr_slope_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x19
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_slope_5
??bma2x2_set_intr_slope_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_slope_5
??bma2x2_set_intr_slope_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_slope_5:
        LD        A, S:?b8
??bma2x2_set_intr_slope_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_slow_no_motion:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_slow_no_motion_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_slow_no_motion_1
??bma2x2_get_intr_slow_no_motion_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_slow_no_motion_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_slow_no_motion_3
        JRA       L:??bma2x2_get_intr_slow_no_motion_4
??bma2x2_get_intr_slow_no_motion_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_slow_no_motion_5
??bma2x2_get_intr_slow_no_motion_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_slow_no_motion_5
??bma2x2_get_intr_slow_no_motion_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_slow_no_motion_5:
        LD        A, S:?b10
??bma2x2_get_intr_slow_no_motion_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_slow_no_motion:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_slow_no_motion_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_slow_no_motion_1
??bma2x2_set_intr_slow_no_motion_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_slow_no_motion_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_slow_no_motion_3
        JP        L:??bma2x2_set_intr_slow_no_motion_4
??bma2x2_set_intr_slow_no_motion_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        SLL       A
        AND       A, #0x8
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf7
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x19
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_slow_no_motion_5
??bma2x2_set_intr_slow_no_motion_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        SLL       A
        AND       A, #0x8
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf7
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_slow_no_motion_5
??bma2x2_set_intr_slow_no_motion_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_slow_no_motion_5:
        LD        A, S:?b8
??bma2x2_set_intr_slow_no_motion_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_double_tap:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_double_tap_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_double_tap_1
??bma2x2_get_intr_double_tap_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_double_tap_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_double_tap_3
        JRA       L:??bma2x2_get_intr_double_tap_4
??bma2x2_get_intr_double_tap_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_double_tap_5
??bma2x2_get_intr_double_tap_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_double_tap_5
??bma2x2_get_intr_double_tap_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_double_tap_5:
        LD        A, S:?b10
??bma2x2_get_intr_double_tap_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_double_tap:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_double_tap_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_double_tap_1
??bma2x2_set_intr_double_tap_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_double_tap_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_double_tap_3
        JP        L:??bma2x2_set_intr_double_tap_4
??bma2x2_set_intr_double_tap_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        AND       A, #0x10
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xef
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x19
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_double_tap_5
??bma2x2_set_intr_double_tap_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        AND       A, #0x10
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xef
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_double_tap_5
??bma2x2_set_intr_double_tap_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_double_tap_5:
        LD        A, S:?b8
??bma2x2_set_intr_double_tap_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_single_tap:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_single_tap_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_single_tap_1
??bma2x2_get_intr_single_tap_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_single_tap_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_single_tap_3
        JRA       L:??bma2x2_get_intr_single_tap_4
??bma2x2_get_intr_single_tap_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_single_tap_5
??bma2x2_get_intr_single_tap_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_single_tap_5
??bma2x2_get_intr_single_tap_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_single_tap_5:
        LD        A, S:?b10
??bma2x2_get_intr_single_tap_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_single_tap:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_single_tap_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_single_tap_1
??bma2x2_set_intr_single_tap_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_single_tap_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_single_tap_3
        JP        L:??bma2x2_set_intr_single_tap_4
??bma2x2_set_intr_single_tap_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x20
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xdf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x19
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_single_tap_5
??bma2x2_set_intr_single_tap_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x20
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xdf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_single_tap_5
??bma2x2_set_intr_single_tap_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_single_tap_5:
        LD        A, S:?b8
??bma2x2_set_intr_single_tap_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_orient:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_orient_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_orient_1
??bma2x2_get_intr_orient_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_orient_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_orient_3
        JRA       L:??bma2x2_get_intr_orient_4
??bma2x2_get_intr_orient_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_orient_5
??bma2x2_get_intr_orient_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_orient_5
??bma2x2_get_intr_orient_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_orient_5:
        LD        A, S:?b10
??bma2x2_get_intr_orient_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_orient:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_orient_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_orient_1
??bma2x2_set_intr_orient_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_orient_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_orient_3
        JP        L:??bma2x2_set_intr_orient_4
??bma2x2_set_intr_orient_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x19
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_orient_5
??bma2x2_set_intr_orient_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_orient_5
??bma2x2_set_intr_orient_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_orient_5:
        LD        A, S:?b8
??bma2x2_set_intr_orient_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_flat:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_flat_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr_flat_1
??bma2x2_get_intr_flat_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_flat_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_flat_3
        JRA       L:??bma2x2_get_intr_flat_4
??bma2x2_get_intr_flat_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SLL       A
        CLR       A
        RLC       A
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_flat_5
??bma2x2_get_intr_flat_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SLL       A
        CLR       A
        RLC       A
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_flat_5
??bma2x2_get_intr_flat_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_flat_5:
        LD        A, S:?b10
??bma2x2_get_intr_flat_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_flat:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_flat_0
        LD        A, #0x81
        JP        L:??bma2x2_set_intr_flat_1
??bma2x2_set_intr_flat_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_flat_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_flat_3
        JP        L:??bma2x2_set_intr_flat_4
??bma2x2_set_intr_flat_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x19
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SRL       A
        CLR       A
        RRC       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x7f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x19
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_flat_5
??bma2x2_set_intr_flat_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SRL       A
        CLR       A
        RRC       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x7f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_flat_5
??bma2x2_set_intr_flat_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_flat_5:
        LD        A, S:?b8
??bma2x2_set_intr_flat_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_new_data:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_new_data_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_new_data_1
??bma2x2_get_new_data_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_new_data_2
        DEC       A
        JREQ      L:??bma2x2_get_new_data_3
        JRA       L:??bma2x2_get_new_data_4
??bma2x2_get_new_data_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_new_data_5
??bma2x2_get_new_data_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SLL       A
        CLR       A
        RLC       A
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_new_data_5
??bma2x2_get_new_data_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_new_data_5:
        LD        A, S:?b10
??bma2x2_get_new_data_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_new_data:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_new_data_0
        LD        A, #0x81
        JP        L:??bma2x2_set_new_data_1
??bma2x2_set_new_data_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_new_data_2
        DEC       A
        JREQ      L:??bma2x2_set_new_data_3
        JP        L:??bma2x2_set_new_data_4
??bma2x2_set_new_data_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_new_data_5
??bma2x2_set_new_data_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SRL       A
        CLR       A
        RRC       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x7f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_new_data_5
??bma2x2_set_new_data_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_new_data_5:
        LD        A, S:?b8
??bma2x2_set_new_data_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr1_fifo_wm:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr1_fifo_wm_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr1_fifo_wm_1
??bma2x2_get_intr1_fifo_wm_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_intr1_fifo_wm_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr1_fifo_wm:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr1_fifo_wm_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_intr1_fifo_wm_1
??bma2x2_set_intr1_fifo_wm_0:
        LD        A, S:?b8
        CP        A, #0x2
        JRNC      L:??bma2x2_set_intr1_fifo_wm_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_intr1_fifo_wm_3
??bma2x2_set_intr1_fifo_wm_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_intr1_fifo_wm_3:
        LD        A, S:?b9
??bma2x2_set_intr1_fifo_wm_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr2_fifo_wm:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr2_fifo_wm_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr2_fifo_wm_1
??bma2x2_get_intr2_fifo_wm_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_intr2_fifo_wm_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr2_fifo_wm:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr2_fifo_wm_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_intr2_fifo_wm_1
??bma2x2_set_intr2_fifo_wm_0:
        LD        A, S:?b8
        CP        A, #0x2
        JRNC      L:??bma2x2_set_intr2_fifo_wm_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_intr2_fifo_wm_3
??bma2x2_set_intr2_fifo_wm_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_intr2_fifo_wm_3:
        LD        A, S:?b9
??bma2x2_set_intr2_fifo_wm_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr1_fifo_full:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr1_fifo_full_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr1_fifo_full_1
??bma2x2_get_intr1_fifo_full_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_intr1_fifo_full_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr1_fifo_full:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr1_fifo_full_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_intr1_fifo_full_1
??bma2x2_set_intr1_fifo_full_0:
        LD        A, S:?b8
        CP        A, #0x2
        JRNC      L:??bma2x2_set_intr1_fifo_full_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_intr1_fifo_full_3
??bma2x2_set_intr1_fifo_full_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_intr1_fifo_full_3:
        LD        A, S:?b9
??bma2x2_set_intr1_fifo_full_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr2_fifo_full:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr2_fifo_full_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_intr2_fifo_full_1
??bma2x2_get_intr2_fifo_full_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_intr2_fifo_full_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr2_fifo_full:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr2_fifo_full_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_intr2_fifo_full_1
??bma2x2_set_intr2_fifo_full_0:
        LD        A, S:?b8
        CP        A, #0x2
        JRNC      L:??bma2x2_set_intr2_fifo_full_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x20
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xdf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_intr2_fifo_full_3
??bma2x2_set_intr2_fifo_full_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_intr2_fifo_full_3:
        LD        A, S:?b9
??bma2x2_set_intr2_fifo_full_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_source:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_source_0
        LD        A, #0x81
        JP        L:??bma2x2_get_source_1
??bma2x2_get_source_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_source_2
        DEC       A
        JREQ      L:??bma2x2_get_source_3
        DEC       A
        JREQ      L:??bma2x2_get_source_4
        DEC       A
        JRNE      ??lb_16
        JP        L:??bma2x2_get_source_5
??lb_16:
        DEC       A
        JRNE      ??lb_17
        JP        L:??bma2x2_get_source_6
??lb_17:
        DEC       A
        JRNE      ??lb_18
        JP        L:??bma2x2_get_source_7
??lb_18:
        JP        L:??bma2x2_get_source_8
??bma2x2_get_source_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_source_9
??bma2x2_get_source_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_source_9
??bma2x2_get_source_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_source_9
??bma2x2_get_source_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_source_9
??bma2x2_get_source_6:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_source_9
??bma2x2_get_source_7:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_source_9
??bma2x2_get_source_8:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_source_9:
        LD        A, S:?b10
??bma2x2_get_source_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_source:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_source_0
        LD        A, #0x81
        LD        S:?b8, A
        JP        L:??bma2x2_set_source_1
??bma2x2_set_source_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_source_2
        DEC       A
        JREQ      L:??bma2x2_set_source_3
        DEC       A
        JRNE      ??lb_12
        JP        L:??bma2x2_set_source_4
??lb_12:
        DEC       A
        JRNE      ??lb_13
        JP        L:??bma2x2_set_source_5
??lb_13:
        DEC       A
        JRNE      ??lb_14
        JP        L:??bma2x2_set_source_6
??lb_14:
        DEC       A
        JRNE      ??lb_15
        JP        L:??bma2x2_set_source_7
??lb_15:
        JP        L:??bma2x2_set_source_8
??bma2x2_set_source_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_source_1
??bma2x2_set_source_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_source_1
??bma2x2_set_source_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_source_1
??bma2x2_set_source_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        SLL       A
        AND       A, #0x8
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf7
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_source_1
??bma2x2_set_source_6:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        AND       A, #0x10
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xef
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_source_1
??bma2x2_set_source_7:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x1e
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x20
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xdf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x1e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_source_1
??bma2x2_set_source_8:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_source_1:
        LD        A, S:?b8
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_output_type:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_output_type_0
        LD        A, #0x81
        LD        S:?b10, A
        JRA       L:??bma2x2_get_intr_output_type_1
??bma2x2_get_intr_output_type_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_output_type_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_output_type_3
        JRA       L:??bma2x2_get_intr_output_type_4
??bma2x2_get_intr_output_type_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x20
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_output_type_1
??bma2x2_get_intr_output_type_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x20
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_output_type_1
??bma2x2_get_intr_output_type_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_output_type_1:
        LD        A, S:?b10
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_output_type:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_output_type_0
        LD        A, #0x81
        LD        S:?b8, A
        JP        L:??bma2x2_set_intr_output_type_1
??bma2x2_set_intr_output_type_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_output_type_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_output_type_3
        JP        L:??bma2x2_set_intr_output_type_4
??bma2x2_set_intr_output_type_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x20
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x20
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_output_type_1
??bma2x2_set_intr_output_type_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x20
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        SLL       A
        AND       A, #0x8
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf7
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x20
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_output_type_1
??bma2x2_set_intr_output_type_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_output_type_1:
        LD        A, S:?b8
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_intr_level:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_intr_level_0
        LD        A, #0x81
        LD        S:?b10, A
        JRA       L:??bma2x2_get_intr_level_1
??bma2x2_get_intr_level_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_intr_level_2
        DEC       A
        JREQ      L:??bma2x2_get_intr_level_3
        JRA       L:??bma2x2_get_intr_level_4
??bma2x2_get_intr_level_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x20
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_level_1
??bma2x2_get_intr_level_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x20
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_intr_level_1
??bma2x2_get_intr_level_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_intr_level_1:
        LD        A, S:?b10
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_intr_level:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_intr_level_0
        LD        A, #0x81
        LD        S:?b8, A
        JP        L:??bma2x2_set_intr_level_1
??bma2x2_set_intr_level_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_intr_level_2
        DEC       A
        JREQ      L:??bma2x2_set_intr_level_3
        JP        L:??bma2x2_set_intr_level_4
??bma2x2_set_intr_level_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x20
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x20
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_level_1
??bma2x2_set_intr_level_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x20
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x20
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_intr_level_1
??bma2x2_set_intr_level_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_intr_level_1:
        LD        A, S:?b8
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_rst_intr:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_rst_intr_0
        LD        A, #0x81
        JRA       L:??bma2x2_rst_intr_1
??bma2x2_rst_intr_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x21
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SRL       A
        CLR       A
        RRC       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x7f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x21
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_rst_intr_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_latch_intr:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_latch_intr_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_latch_intr_1
??bma2x2_get_latch_intr_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x21
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0xf
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_latch_intr_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_latch_intr:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        CLR       S:?b9
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_latch_intr_0
        LD        A, #0x81
        JP        L:??bma2x2_set_latch_intr_1
??bma2x2_set_latch_intr_0:
        LD        A, S:?b8
        CP        A, #0x10
        JRC       ??lb_11
        JP        L:??bma2x2_set_latch_intr_2
??lb_11:
        LD        A, S:?b8
        TNZ       A
        JREQ      L:??bma2x2_set_latch_intr_3
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_4
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_5
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_6
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_7
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_8
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_9
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_10
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_11
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_12
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_13
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_14
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_15
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_16
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_17
        DEC       A
        JREQ      L:??bma2x2_set_latch_intr_18
        JRA       L:??bma2x2_set_latch_intr_19
??bma2x2_set_latch_intr_3:
        CLR       A
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_4:
        LD        A, #0x1
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_5:
        LD        A, #0x2
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_6:
        LD        A, #0x3
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_7:
        LD        A, #0x4
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_8:
        LD        A, #0x5
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_9:
        LD        A, #0x6
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_10:
        LD        A, #0x7
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_11:
        LD        A, #0x8
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_12:
        LD        A, #0x9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_13:
        LD        A, #0xa
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_14:
        LD        A, #0xb
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_15:
        LD        A, #0xc
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_16:
        LD        A, #0xd
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_17:
        LD        A, #0xe
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_18:
        LD        A, #0xf
        LD        S:?b9, A
        JRA       L:??bma2x2_set_latch_intr_20
??bma2x2_set_latch_intr_19:
??bma2x2_set_latch_intr_20:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x21
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, S:?b9
        AND       A, #0xf
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf0
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x21
        CALLF     bma2x2_write_reg
        ADD       A, S:?b10
        LD        S:?b10, A
        JRA       L:??bma2x2_set_latch_intr_21
??bma2x2_set_latch_intr_2:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_set_latch_intr_21:
        LD        A, S:?b10
??bma2x2_set_latch_intr_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_durn:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_durn_0
        LD        A, #0x81
        JP        L:??bma2x2_get_durn_1
??bma2x2_get_durn_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_durn_2
        DEC       A
        JREQ      L:??bma2x2_get_durn_3
        DEC       A
        JREQ      L:??bma2x2_get_durn_4
        DEC       A
        JRNE      ??lb_10
        JP        L:??bma2x2_get_durn_5
??lb_10:
        JP        L:??bma2x2_get_durn_6
??bma2x2_get_durn_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x22
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_durn_7
??bma2x2_get_durn_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x25
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_durn_7
??bma2x2_get_durn_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x27
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x3
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_durn_7
??bma2x2_get_durn_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x27
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_durn_7
??bma2x2_get_durn_6:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_durn_7:
        LD        A, S:?b10
??bma2x2_get_durn_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_durn:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b8, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_durn_0
        LD        A, #0x81
        JP        L:??bma2x2_set_durn_1
??bma2x2_set_durn_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_durn_2
        DEC       A
        JREQ      L:??bma2x2_set_durn_3
        DEC       A
        JREQ      L:??bma2x2_set_durn_4
        DEC       A
        JREQ      L:??bma2x2_set_durn_5
        JP        L:??bma2x2_set_durn_6
??bma2x2_set_durn_2:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x22
        CALLF     bma2x2_write_reg
        LD        S:?b9, A
        JP        L:??bma2x2_set_durn_7
??bma2x2_set_durn_3:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x25
        CALLF     bma2x2_write_reg
        LD        S:?b9, A
        JP        L:??bma2x2_set_durn_7
??bma2x2_set_durn_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x27
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x3
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x27
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_durn_7
??bma2x2_set_durn_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x27
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SLL       A
        SLL       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x3
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x27
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_durn_7
??bma2x2_set_durn_6:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_durn_7:
        LD        A, S:?b9
??bma2x2_set_durn_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_thres:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_thres_0
        LD        A, #0x81
        JP        L:??bma2x2_get_thres_1
??bma2x2_get_thres_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_thres_2
        DEC       A
        JREQ      L:??bma2x2_get_thres_3
        DEC       A
        JREQ      L:??bma2x2_get_thres_4
        DEC       A
        JRNE      ??lb_9
        JP        L:??bma2x2_get_thres_5
??lb_9:
        JP        L:??bma2x2_get_thres_6
??bma2x2_get_thres_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x23
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_thres_7
??bma2x2_get_thres_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x26
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_thres_7
??bma2x2_get_thres_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x28
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_thres_7
??bma2x2_get_thres_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x29
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_thres_7
??bma2x2_get_thres_6:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_thres_7:
        LD        A, S:?b10
??bma2x2_get_thres_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_thres:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b9, A
        MOV       S:?b8, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_thres_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_thres_1
??bma2x2_set_thres_0:
        LD        A, S:?b9
        TNZ       A
        JREQ      L:??bma2x2_set_thres_2
        DEC       A
        JREQ      L:??bma2x2_set_thres_3
        DEC       A
        JREQ      L:??bma2x2_set_thres_4
        DEC       A
        JREQ      L:??bma2x2_set_thres_5
        JRA       L:??bma2x2_set_thres_6
??bma2x2_set_thres_2:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x23
        CALLF     bma2x2_write_reg
        LD        S:?b10, A
        JRA       L:??bma2x2_set_thres_7
??bma2x2_set_thres_3:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x26
        CALLF     bma2x2_write_reg
        LD        S:?b10, A
        JRA       L:??bma2x2_set_thres_7
??bma2x2_set_thres_4:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x28
        CALLF     bma2x2_write_reg
        LD        S:?b10, A
        JRA       L:??bma2x2_set_thres_7
??bma2x2_set_thres_5:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x29
        CALLF     bma2x2_write_reg
        LD        S:?b10, A
        JRA       L:??bma2x2_set_thres_7
??bma2x2_set_thres_6:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_set_thres_7:
        LD        A, S:?b10
??bma2x2_set_thres_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_low_high_g_hyst:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_low_high_g_hyst_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_low_high_g_hyst_1
??bma2x2_get_low_high_g_hyst_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_low_high_g_hyst_2
        DEC       A
        JREQ      L:??bma2x2_get_low_high_g_hyst_3
        JRA       L:??bma2x2_get_low_high_g_hyst_4
??bma2x2_get_low_high_g_hyst_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x24
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x3
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_low_high_g_hyst_5
??bma2x2_get_low_high_g_hyst_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x24
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_low_high_g_hyst_5
??bma2x2_get_low_high_g_hyst_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_low_high_g_hyst_5:
        LD        A, S:?b10
??bma2x2_get_low_high_g_hyst_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_low_high_g_hyst:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_low_high_g_hyst_0
        LD        A, #0x81
        JP        L:??bma2x2_set_low_high_g_hyst_1
??bma2x2_set_low_high_g_hyst_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_low_high_g_hyst_2
        DEC       A
        JREQ      L:??bma2x2_set_low_high_g_hyst_3
        JP        L:??bma2x2_set_low_high_g_hyst_4
??bma2x2_set_low_high_g_hyst_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x24
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x3
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x24
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_low_high_g_hyst_5
??bma2x2_set_low_high_g_hyst_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x24
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        CALLF     L:?sll8_a_a_6
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x3f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x24
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_low_high_g_hyst_5
??bma2x2_set_low_high_g_hyst_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_low_high_g_hyst_5:
        LD        A, S:?b8
??bma2x2_set_low_high_g_hyst_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_low_g_mode:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_low_g_mode_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_low_g_mode_1
??bma2x2_get_low_g_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x24
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_low_g_mode_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_low_g_mode:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_low_g_mode_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_low_g_mode_1
??bma2x2_set_low_g_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x24
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x24
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_low_g_mode_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_tap_durn:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_tap_durn_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_tap_durn_1
??bma2x2_get_tap_durn_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x7
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_tap_durn_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_tap_durn:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_tap_durn_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_tap_durn_1
??bma2x2_set_tap_durn_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x7
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf8
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_tap_durn_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_tap_shock:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_tap_shock_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_tap_shock_1
??bma2x2_get_tap_shock_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_tap_shock_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_tap_shock:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_tap_shock_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_tap_shock_1
??bma2x2_set_tap_shock_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_tap_shock_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_tap_quiet:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_tap_quiet_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_tap_quiet_1
??bma2x2_get_tap_quiet_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SLL       A
        CLR       A
        RLC       A
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_tap_quiet_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_tap_quiet:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_tap_quiet_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_tap_quiet_1
??bma2x2_set_tap_quiet_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2a
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SRL       A
        CLR       A
        RRC       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x7f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2a
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_tap_quiet_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_tap_thres:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_tap_thres_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_tap_thres_1
??bma2x2_get_tap_thres_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1f
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_tap_thres_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_tap_thres:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_tap_thres_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_tap_thres_1
??bma2x2_set_tap_thres_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x1f
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xe0
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_tap_thres_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_tap_sample:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_tap_sample_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_tap_sample_1
??bma2x2_get_tap_sample_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2b
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_tap_sample_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_tap_sample:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_tap_sample_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_tap_sample_1
??bma2x2_set_tap_sample_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2b
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        CALLF     L:?sll8_a_a_6
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x3f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2b
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_tap_sample_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_orient_mode:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_orient_mode_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_orient_mode_1
??bma2x2_get_orient_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2c
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x3
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_orient_mode_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_orient_mode:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_orient_mode_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_orient_mode_1
??bma2x2_set_orient_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2c
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x3
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2c
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_orient_mode_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_orient_block:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_orient_block_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_orient_block_1
??bma2x2_get_orient_block_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2c
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x3
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_orient_block_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_orient_block:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_orient_block_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_orient_block_1
??bma2x2_set_orient_block_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2c
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SLL       A
        SLL       A
        AND       A, #0xc
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf3
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2c
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_orient_block_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_orient_hyst:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_orient_hyst_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_orient_hyst_1
??bma2x2_get_orient_hyst_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2c
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        AND       A, #0x7
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_orient_hyst_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_orient_hyst:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_orient_hyst_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_orient_hyst_1
??bma2x2_set_orient_hyst_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2c
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf0
        AND       A, #0x70
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x8f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2c
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_orient_hyst_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_theta:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_theta_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_theta_1
??bma2x2_get_theta_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_theta_2
        DEC       A
        JREQ      L:??bma2x2_get_theta_3
        JRA       L:??bma2x2_get_theta_4
??bma2x2_get_theta_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2d
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x3f
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_theta_5
??bma2x2_get_theta_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_theta_5
??bma2x2_get_theta_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_theta_5:
        LD        A, S:?b10
??bma2x2_get_theta_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_theta:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b9, A
        MOV       S:?b8, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_theta_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_theta_1
??bma2x2_set_theta_0:
        LD        A, S:?b9
        TNZ       A
        JREQ      L:??bma2x2_set_theta_2
        DEC       A
        JREQ      L:??bma2x2_set_theta_3
        JRA       L:??bma2x2_set_theta_4
??bma2x2_set_theta_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2d
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, S:?b8
        AND       A, #0x3f
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xc0
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2d
        CALLF     bma2x2_write_reg
        ADD       A, S:?b10
        LD        S:?b10, A
        JRA       L:??bma2x2_set_theta_5
??bma2x2_set_theta_3:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2e
        CALLF     bma2x2_write_reg
        LD        S:?b10, A
        JRA       L:??bma2x2_set_theta_5
??bma2x2_set_theta_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_set_theta_5:
        LD        A, S:?b10
??bma2x2_set_theta_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_orient_enable:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_orient_enable_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_orient_enable_1
??bma2x2_get_orient_enable_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2d
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_orient_enable_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_orient_enable:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_orient_enable_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_orient_enable_1
??bma2x2_set_orient_enable_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2d
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        CALLF     L:?sll8_a_a_6
        AND       A, #0x40
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xbf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2d
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_orient_enable_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_flat_hyst:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_flat_hyst_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_flat_hyst_1
??bma2x2_get_flat_hyst_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2f
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x7
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_flat_hyst_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_flat_hyst:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_flat_hyst_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_flat_hyst_1
??bma2x2_set_flat_hyst_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2f
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x7
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf8
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2f
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_flat_hyst_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_flat_hold_time:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_flat_hold_time_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_flat_hold_time_1
??bma2x2_get_flat_hold_time_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2f
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        AND       A, #0x3
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_flat_hold_time_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_flat_hold_time:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_flat_hold_time_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_flat_hold_time_1
??bma2x2_set_flat_hold_time_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2f
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf0
        AND       A, #0x30
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xcf
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x2f
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_flat_hold_time_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_fifo_wml_trig:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_fifo_wml_trig_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_fifo_wml_trig_1
??bma2x2_get_fifo_wml_trig_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x30
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x3f
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_fifo_wml_trig_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_fifo_wml_trig:
        CALLF     L:?push_w4
        SUB       SP, #0x2
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        CLR       A
        LD        (0x2,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_fifo_wml_trig_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_fifo_wml_trig_1
??bma2x2_set_fifo_wml_trig_0:
        LD        A, S:?b8
        CP        A, #0x20
        JRNC      L:??bma2x2_set_fifo_wml_trig_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x30
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x3f
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xc0
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        LDW       X, SP
        ADDW      X, #0x2
        CALLF     bma2x2_get_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, #0x5
        CALLF     bma2x2_set_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x30
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, (0x2,SP)
        CALLF     bma2x2_set_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_fifo_wml_trig_3
??bma2x2_set_fifo_wml_trig_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_fifo_wml_trig_3:
        LD        A, S:?b9
??bma2x2_set_fifo_wml_trig_1:
        ADD       SP, #0x2
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_selftest_axis:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_selftest_axis_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_selftest_axis_1
??bma2x2_get_selftest_axis_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x32
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x3
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_selftest_axis_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_selftest_axis:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_selftest_axis_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_selftest_axis_1
??bma2x2_set_selftest_axis_0:
        LD        A, S:?b8
        CP        A, #0x4
        JRNC      L:??bma2x2_set_selftest_axis_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x32
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x3
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x32
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_selftest_axis_3
??bma2x2_set_selftest_axis_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_selftest_axis_3:
        LD        A, S:?b9
??bma2x2_set_selftest_axis_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_selftest_sign:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_selftest_sign_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_selftest_sign_1
??bma2x2_get_selftest_sign_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x32
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_selftest_sign_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_selftest_sign:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_selftest_sign_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_selftest_sign_1
??bma2x2_set_selftest_sign_0:
        LD        A, S:?b8
        CP        A, #0x2
        JRNC      L:??bma2x2_set_selftest_sign_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x32
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x32
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_selftest_sign_3
??bma2x2_set_selftest_sign_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_selftest_sign_3:
        LD        A, S:?b9
??bma2x2_set_selftest_sign_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_nvmprog_mode:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_nvmprog_mode_0
        LD        A, #0x81
        LD        S:?b10, A
        JRA       L:??bma2x2_get_nvmprog_mode_1
??bma2x2_get_nvmprog_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x33
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
??bma2x2_get_nvmprog_mode_1:
        LD        A, S:?b10
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_nvmprog_mode:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_nvmprog_mode_0
        LD        A, #0x81
        LD        S:?b9, A
        JRA       L:??bma2x2_set_nvmprog_mode_1
??bma2x2_set_nvmprog_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x33
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x33
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
??bma2x2_set_nvmprog_mode_1:
        LD        A, S:?b9
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_nvprog_trig:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_nvprog_trig_0
        LD        A, #0x81
        LD        S:?b9, A
        JRA       L:??bma2x2_set_nvprog_trig_1
??bma2x2_set_nvprog_trig_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x33
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x33
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
??bma2x2_set_nvprog_trig_1:
        LD        A, S:?b9
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_nvmprog_ready:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_nvmprog_ready_0
        LD        A, #0x81
        LD        S:?b10, A
        JRA       L:??bma2x2_get_nvmprog_ready_1
??bma2x2_get_nvmprog_ready_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x33
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
??bma2x2_get_nvmprog_ready_1:
        LD        A, S:?b10
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_nvmprog_remain:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_nvmprog_remain_0
        LD        A, #0x81
        LD        S:?b10, A
        JRA       L:??bma2x2_get_nvmprog_remain_1
??bma2x2_get_nvmprog_remain_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x33
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        LD        [S:?w4.w], A
??bma2x2_get_nvmprog_remain_1:
        LD        A, S:?b10
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_spi3:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_spi3_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_spi3_1
??bma2x2_get_spi3_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x34
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_spi3_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_spi3:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_spi3_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_spi3_1
??bma2x2_set_spi3_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x34
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x34
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_spi3_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_i2c_wdt:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_i2c_wdt_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_i2c_wdt_1
??bma2x2_get_i2c_wdt_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_i2c_wdt_2
        DEC       A
        JREQ      L:??bma2x2_get_i2c_wdt_3
        JRA       L:??bma2x2_get_i2c_wdt_4
??bma2x2_get_i2c_wdt_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x34
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_i2c_wdt_5
??bma2x2_get_i2c_wdt_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x34
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_i2c_wdt_5
??bma2x2_get_i2c_wdt_4:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_i2c_wdt_5:
        LD        A, S:?b10
??bma2x2_get_i2c_wdt_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_i2c_wdt:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_i2c_wdt_0
        LD        A, #0x81
        JP        L:??bma2x2_set_i2c_wdt_1
??bma2x2_set_i2c_wdt_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_i2c_wdt_2
        DEC       A
        JREQ      L:??bma2x2_set_i2c_wdt_3
        JP        L:??bma2x2_set_i2c_wdt_4
??bma2x2_set_i2c_wdt_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x34
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x34
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_i2c_wdt_5
??bma2x2_set_i2c_wdt_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x34
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x34
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_i2c_wdt_5
??bma2x2_set_i2c_wdt_4:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_i2c_wdt_5:
        LD        A, S:?b8
??bma2x2_set_i2c_wdt_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_slow_comp:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_slow_comp_0
        LD        A, #0x81
        JP        L:??bma2x2_get_slow_comp_1
??bma2x2_get_slow_comp_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_slow_comp_2
        DEC       A
        JREQ      L:??bma2x2_get_slow_comp_3
        DEC       A
        JREQ      L:??bma2x2_get_slow_comp_4
        JP        L:??bma2x2_get_slow_comp_5
??bma2x2_get_slow_comp_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_slow_comp_6
??bma2x2_get_slow_comp_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_slow_comp_6
??bma2x2_get_slow_comp_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        AND       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_slow_comp_6
??bma2x2_get_slow_comp_5:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_slow_comp_6:
        LD        A, S:?b10
??bma2x2_get_slow_comp_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_slow_comp:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_slow_comp_0
        LD        A, #0x81
        JP        L:??bma2x2_set_slow_comp_1
??bma2x2_set_slow_comp_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_slow_comp_2
        DEC       A
        JREQ      L:??bma2x2_set_slow_comp_3
        DEC       A
        JRNE      ??lb_8
        JP        L:??bma2x2_set_slow_comp_4
??lb_8:
        JP        L:??bma2x2_set_slow_comp_5
??bma2x2_set_slow_comp_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x36
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_slow_comp_6
??bma2x2_set_slow_comp_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x2
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfd
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x36
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_slow_comp_6
??bma2x2_set_slow_comp_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        AND       A, #0x4
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfb
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x36
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_slow_comp_6
??bma2x2_set_slow_comp_5:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_slow_comp_6:
        LD        A, S:?b8
??bma2x2_set_slow_comp_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_cal_rdy:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_cal_rdy_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_cal_rdy_1
??bma2x2_get_cal_rdy_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        AND       A, #0x1
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_cal_rdy_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_cal_trigger:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_cal_trigger_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_cal_trigger_1
??bma2x2_set_cal_trigger_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x60
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x9f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x36
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_cal_trigger_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_offset_rst:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_offset_rst_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_offset_rst_1
??bma2x2_set_offset_rst_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x36
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        SRL       A
        CLR       A
        RRC       A
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x7f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x36
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, S:?b9
??bma2x2_set_offset_rst_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_offset_target:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_offset_target_0
        LD        A, #0x81
        JP        L:??bma2x2_get_offset_target_1
??bma2x2_get_offset_target_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_offset_target_2
        DEC       A
        JREQ      L:??bma2x2_get_offset_target_3
        DEC       A
        JREQ      L:??bma2x2_get_offset_target_4
        DEC       A
        JRNE      ??lb_7
        JP        L:??bma2x2_get_offset_target_5
??lb_7:
        JP        L:??bma2x2_get_offset_target_6
??bma2x2_get_offset_target_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x37
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??bma2x2_get_offset_target_7
??bma2x2_get_offset_target_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x37
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        AND       A, #0x3
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_offset_target_7
??bma2x2_get_offset_target_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x37
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SRL       A
        SRL       A
        SRL       A
        AND       A, #0x3
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_offset_target_7
??bma2x2_get_offset_target_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x37
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        SWAP      A
        AND       A, #0xf
        SRL       A
        AND       A, #0x3
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_offset_target_7
??bma2x2_get_offset_target_6:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_offset_target_7:
        LD        A, S:?b10
??bma2x2_get_offset_target_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_offset_target:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b8, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_offset_target_0
        LD        A, #0x81
        JP        L:??bma2x2_set_offset_target_1
??bma2x2_set_offset_target_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_offset_target_2
        DEC       A
        JREQ      L:??bma2x2_set_offset_target_3
        DEC       A
        JRNE      ??lb_5
        JP        L:??bma2x2_set_offset_target_4
??lb_5:
        DEC       A
        JRNE      ??lb_6
        JP        L:??bma2x2_set_offset_target_5
??lb_6:
        JP        L:??bma2x2_set_offset_target_6
??bma2x2_set_offset_target_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x37
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        AND       A, #0x1
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfe
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x37
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_offset_target_7
??bma2x2_set_offset_target_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x37
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        AND       A, #0x6
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xf9
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x37
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JP        L:??bma2x2_set_offset_target_7
??bma2x2_set_offset_target_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x37
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        SLL       A
        AND       A, #0x18
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xe7
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x37
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_offset_target_7
??bma2x2_set_offset_target_5:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x37
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b8, A
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        SLL       A
        AND       A, #0x60
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x9f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x37
        CALLF     bma2x2_write_reg
        ADD       A, S:?b8
        LD        S:?b8, A
        JRA       L:??bma2x2_set_offset_target_7
??bma2x2_set_offset_target_6:
        LD        A, #0xfe
        LD        S:?b8, A
??bma2x2_set_offset_target_7:
        LD        A, S:?b8
??bma2x2_set_offset_target_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_offset:
        CALLF     L:?push_l2
        SUB       SP, #0x1
        LD        S:?b11, A
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_offset_0
        LD        A, #0x81
        JP        L:??bma2x2_get_offset_1
??bma2x2_get_offset_0:
        LD        A, S:?b11
        TNZ       A
        JREQ      L:??bma2x2_get_offset_2
        DEC       A
        JREQ      L:??bma2x2_get_offset_3
        DEC       A
        JREQ      L:??bma2x2_get_offset_4
        JP        L:??bma2x2_get_offset_5
??bma2x2_get_offset_2:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x38
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_offset_6
??bma2x2_get_offset_3:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x39
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_offset_6
??bma2x2_get_offset_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3a
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        JRA       L:??bma2x2_get_offset_6
??bma2x2_get_offset_5:
        LD        A, #0xfe
        LD        S:?b10, A
??bma2x2_get_offset_6:
        LD        A, S:?b10
??bma2x2_get_offset_1:
        ADD       SP, #0x1
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_offset:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LD        S:?b10, A
        MOV       S:?b8, S:?b0
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_offset_0
        LD        A, #0x81
        JRA       L:??bma2x2_set_offset_1
??bma2x2_set_offset_0:
        LD        A, S:?b10
        TNZ       A
        JREQ      L:??bma2x2_set_offset_2
        DEC       A
        JREQ      L:??bma2x2_set_offset_3
        DEC       A
        JREQ      L:??bma2x2_set_offset_4
        JRA       L:??bma2x2_set_offset_5
??bma2x2_set_offset_2:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x38
        CALLF     bma2x2_write_reg
        LD        S:?b9, A
        JRA       L:??bma2x2_set_offset_6
??bma2x2_set_offset_3:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x39
        CALLF     bma2x2_write_reg
        LD        S:?b9, A
        JRA       L:??bma2x2_set_offset_6
??bma2x2_set_offset_4:
        LD        A, S:?b8
        LD        (0x1,SP), A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x3a
        CALLF     bma2x2_write_reg
        LD        S:?b9, A
        JRA       L:??bma2x2_set_offset_6
??bma2x2_set_offset_5:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_offset_6:
        LD        A, S:?b9
??bma2x2_set_offset_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_fifo_mode:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_fifo_mode_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_fifo_mode_1
??bma2x2_get_fifo_mode_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        CALLF     L:?srl8_a_a_6
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_fifo_mode_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_fifo_mode:
        CALLF     L:?push_w4
        SUB       SP, #0x2
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        CLR       A
        LD        (0x2,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_fifo_mode_0
        LD        A, #0x81
        LD        S:?b9, A
        JP        L:??bma2x2_set_fifo_mode_1
??bma2x2_set_fifo_mode_0:
        LD        A, S:?b8
        CP        A, #0x4
        JRC       ??lb_4
        JP        L:??bma2x2_set_fifo_mode_2
??lb_4:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3e
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        CALLF     L:?sll8_a_a_6
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0x3f
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        LD        A, (0x1,SP)
        OR        A, #0xc
        LD        (0x1,SP), A
        LDW       X, SP
        ADDW      X, #0x2
        CALLF     bma2x2_get_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, #0x5
        CALLF     bma2x2_set_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x3e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        TNZ       S:?b9
        JRNE      L:??bma2x2_set_fifo_mode_3
        LDW       X, L:p_bma2x2
        ADDW      X, #0x5
        LD        A, (0x1,SP)
        LD        (X), A
??bma2x2_set_fifo_mode_3:
        LD        A, (0x2,SP)
        CALLF     bma2x2_set_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_fifo_mode_1
??bma2x2_set_fifo_mode_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_fifo_mode_1:
        LD        A, S:?b9
        ADD       SP, #0x2
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_fifo_data_select:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_fifo_data_select_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_fifo_data_select_1
??bma2x2_get_fifo_data_select_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3e
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        AND       A, #0x3
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_fifo_data_select_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_set_fifo_data_select:
        CALLF     L:?push_w4
        SUB       SP, #0x2
        LD        S:?b8, A
        CLR       A
        LD        (0x1,SP), A
        CLR       A
        LD        (0x2,SP), A
        MOV       S:?b9, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_set_fifo_data_select_0
        LD        A, #0x81
        LD        S:?b9, A
        JP        L:??bma2x2_set_fifo_data_select_1
??bma2x2_set_fifo_data_select_0:
        LD        A, S:?b8
        CP        A, #0x4
        JRNC      L:??bma2x2_set_fifo_data_select_2
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3e
        LDW       Y, L:p_bma2x2
        ADDW      Y, #0x4
        LD        A, (Y)
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b9, A
        LD        A, S:?b8
        AND       A, #0x3
        PUSH      A
        LD        A, (0x2,SP)
        AND       A, #0xfc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        (0x1,SP), A
        LD        A, (0x1,SP)
        OR        A, #0xc
        LD        (0x1,SP), A
        LDW       X, SP
        ADDW      X, #0x2
        CALLF     bma2x2_get_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        LD        A, #0x5
        CALLF     bma2x2_set_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        MOV       S:?b0, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, #0x3e
        CALLF     bma2x2_write_reg
        ADD       A, S:?b9
        LD        S:?b9, A
        TNZ       S:?b9
        JRNE      L:??bma2x2_set_fifo_data_select_3
        LDW       X, L:p_bma2x2
        ADDW      X, #0x5
        LD        A, (0x1,SP)
        LD        (X), A
??bma2x2_set_fifo_data_select_3:
        LD        A, (0x2,SP)
        CALLF     bma2x2_set_power_mode
        ADD       A, S:?b9
        LD        S:?b9, A
        JRA       L:??bma2x2_set_fifo_data_select_1
??bma2x2_set_fifo_data_select_2:
        LD        A, #0xfe
        LD        S:?b9, A
??bma2x2_set_fifo_data_select_1:
        LD        A, S:?b9
        ADD       SP, #0x2
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_fifo_data:
        CALLF     L:?push_l2
        SUB       SP, #0x2
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        CLR       S:?b10
        CLR       A
        LD        (0x2,SP), A
        MOV       S:?b11, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JREQ      L:??bma2x2_read_fifo_data_0
        LDW       X, [S:?w4.w]
        TNZW      X
        JRNE      L:??bma2x2_read_fifo_data_1
??bma2x2_read_fifo_data_0:
        LD        A, #0x81
        LD        S:?b11, A
        JRA       L:??bma2x2_read_fifo_data_2
??bma2x2_read_fifo_data_1:
        LDW       X, S:?w4
        ADDW      X, #0x2
        CLR       A
        LD        (X), A
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     bma2x2_get_fifo_frame_count
        LD        S:?b11, A
        LDW       X, SP
        ADDW      X, #0x2
        CALLF     bma2x2_get_fifo_data_select
        ADD       A, S:?b11
        LD        S:?b11, A
        TNZ       (0x2,SP)
        JRNE      L:??bma2x2_read_fifo_data_3
        LD        A, (0x1,SP)
        MOV       S:?b0, #0x6
        LD        XL, A
        LD        A, S:?b0
        MUL       X, A
        LD        A, XL
        LD        S:?b10, A
        JRA       L:??bma2x2_read_fifo_data_4
??bma2x2_read_fifo_data_3:
        LD        A, (0x1,SP)
        MOV       S:?b0, #0x2
        LD        XL, A
        LD        A, S:?b0
        MUL       X, A
        LD        A, XL
        LD        S:?b10, A
??bma2x2_read_fifo_data_4:
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        A, S:?b10
        CP        A, (X)
        JRNC      L:??bma2x2_read_fifo_data_5
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        A, S:?b10
        LD        (X), A
??bma2x2_read_fifo_data_5:
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        A, (X)
        LD        S:?b1, A
        LDW       X, [S:?w4.w]
        MOV       S:?b0, #0x3f
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        ADD       A, S:?b11
        LD        S:?b11, A
??bma2x2_read_fifo_data_2:
        LD        A, S:?b11
        ADD       SP, #0x2
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_extract_accel:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        SUB       SP, #0x3
        LDW       S:?w7, X
        LDW       S:?w6, Y
        CALLF     L:?mov_w4_w0
        CLR       A
        LD        (0x1,SP), A
        CLR       A
        LD        (0x3,SP), A
        CLR       A
        LD        (0x2,SP), A
        CLR       S:?b10
        CLR       S:?b11
        LDW       X, L:p_bma2x2
        TNZW      X
        JREQ      L:??bma2x2_extract_accel_0
        LDW       X, [S:?w4.w]
        TNZW      X
        JRNE      L:??bma2x2_extract_accel_1
??bma2x2_extract_accel_0:
        LD        A, #0x81
        LD        S:?b11, A
        JRA       L:??bma2x2_extract_accel_2
??bma2x2_extract_accel_1:
        LDW       X, L:p_bma2x2
        ADDW      X, #0x5
        LD        A, (X)
        AND       A, #0x3
        LD        S:?b10, A
        CALLF     L:?mov_w1_w4
        MOV       S:?b0, S:?b10
        LD        A, [S:?w6.w]
        LDW       Y, SP
        ADDW      Y, #0x2
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     get_accel_len_to_parse
??bma2x2_extract_accel_3:
        LD        A, (0x1,SP)
        CP        A, (0x2,SP)
        JRNC      L:??bma2x2_extract_accel_4
        CALLF     L:?mov_w1_w4
        LD        A, S:?b10
        LDW       X, SP
        ADDW      X, #0x3
        LDW       S:?w0, X
        LDW       X, SP
        ADDW      X, #0x1
        LDW       Y, X
        LDW       X, S:?w7
        CALLF     unpack_accel_frame
        JRA       L:??bma2x2_extract_accel_3
??bma2x2_extract_accel_4:
        LD        A, (0x3,SP)
        LD        [S:?w6.w], A
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        A, (0x1,SP)
        LD        (X), A
??bma2x2_extract_accel_2:
        LD        A, S:?b11
        ADD       SP, #0x3
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
get_accel_len_to_parse:
        LDW       S:?w2, X
        LD        S:?b1, A
        LDW       X, S:?w1
        ADDW      X, #0x2
        LD        A, (X)
        LD        [S:?w2.w], A
        TNZ       S:?b0
        JRNE      L:??get_accel_len_to_parse_0
        LD        A, #0x6
        LD        XL, A
        LD        A, S:?b1
        MUL       X, A
        LD        A, XL
        LD        (Y), A
        JRA       L:??get_accel_len_to_parse_1
??get_accel_len_to_parse_0:
        LD        A, #0x2
        LD        XL, A
        LD        A, S:?b1
        MUL       X, A
        LD        A, XL
        LD        (Y), A
??get_accel_len_to_parse_1:
        LDW       X, S:?w1
        ADDW      X, #0x3
        LD        A, (X)
        CP        A, (Y)
        JRNC      L:??get_accel_len_to_parse_2
        LDW       X, S:?w1
        ADDW      X, #0x3
        LD        A, (X)
        LD        (Y), A
??get_accel_len_to_parse_2:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
unpack_accel_frame:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        PUSH      A
        SUB       SP, #0x2
        LDW       S:?w5, Y
        CALLF     L:?mov_w4_w0
        CALLF     L:?mov_w7_w1
        CLRW      X
        LDW       (0x1,SP), X
        CLR       S:?b13
        CLR       S:?b12
        LD        A, (0x3,SP)
        TNZ       A
        JREQ      L:??unpack_accel_frame_0
        DEC       A
        JREQ      L:??unpack_accel_frame_1
        DEC       A
        JRNE      ??lb_2
        JP        L:??unpack_accel_frame_2
??lb_2:
        DEC       A
        JRNE      ??lb_3
        JP        L:??unpack_accel_frame_3
??lb_3:
        JP        L:??unpack_accel_frame_4
??unpack_accel_frame_0:
        CALLF     L:?mov_w0_w7
        LDW       Y, S:?w5
        CALLF     L:?mov_w1_w0
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       S:?w2, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, S:?w2
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        CALLF     L:?mov_w0_w1
        CALLF     unpack_accel_xyz
        LD        A, [S:?w4.w]
        ADD       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??unpack_accel_frame_5
??unpack_accel_frame_1:
        LD        A, [S:?w5.w]
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, [S:?w7.w]
        ADDW      X, S:?w0
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       (0x1,SP), X
        LD        A, [S:?w5.w]
        ADD       A, #0x1
        LD        [S:?w5.w], A
        LD        A, [S:?w5.w]
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, [S:?w7.w]
        ADDW      X, S:?w0
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w6, X
        LD        A, [S:?w5.w]
        ADD       A, #0x1
        LD        [S:?w5.w], A
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w6
        CLR       A
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, (0x1,SP)
        LDW       S:?w1, X
        LDW       X, S:?w0
        RRWA      X, A
        OR        A, S:?b3
        RRWA      X, A
        OR        A, S:?b2
        RRWA      X, A
        LDW       (Y), X
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x0
        JRNE      L:??unpack_accel_frame_6
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
        JRA       L:??unpack_accel_frame_7
??unpack_accel_frame_6:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x2
        JRNE      L:??unpack_accel_frame_8
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
        JRA       L:??unpack_accel_frame_7
??unpack_accel_frame_8:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x1
        JRNE      L:??unpack_accel_frame_7
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
??unpack_accel_frame_7:
        LD        A, [S:?w4.w]
        ADD       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??unpack_accel_frame_5
??unpack_accel_frame_2:
        LD        A, [S:?w5.w]
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, [S:?w7.w]
        ADDW      X, S:?w0
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       (0x1,SP), X
        LD        A, [S:?w5.w]
        ADD       A, #0x1
        LD        [S:?w5.w], A
        LD        A, [S:?w5.w]
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, [S:?w7.w]
        ADDW      X, S:?w0
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w6, X
        LD        A, [S:?w5.w]
        ADD       A, #0x1
        LD        [S:?w5.w], A
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w6
        CLR       A
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, (0x1,SP)
        LDW       S:?w1, X
        LDW       X, S:?w0
        RRWA      X, A
        OR        A, S:?b3
        RRWA      X, A
        OR        A, S:?b2
        RRWA      X, A
        LDW       (Y), X
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x0
        JRNE      L:??unpack_accel_frame_9
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
        JRA       L:??unpack_accel_frame_10
??unpack_accel_frame_9:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x2
        JRNE      L:??unpack_accel_frame_11
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
        JRA       L:??unpack_accel_frame_10
??unpack_accel_frame_11:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x1
        JRNE      L:??unpack_accel_frame_10
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
??unpack_accel_frame_10:
        LD        A, [S:?w4.w]
        ADD       A, #0x1
        LD        [S:?w4.w], A
        JP        L:??unpack_accel_frame_5
??unpack_accel_frame_3:
        LD        A, [S:?w5.w]
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, [S:?w7.w]
        ADDW      X, S:?w0
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       (0x1,SP), X
        LD        A, [S:?w5.w]
        ADD       A, #0x1
        LD        [S:?w5.w], A
        LD        A, [S:?w5.w]
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, [S:?w7.w]
        ADDW      X, S:?w0
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w6, X
        LD        A, [S:?w5.w]
        ADD       A, #0x1
        LD        [S:?w5.w], A
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w6
        CLR       A
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, (0x1,SP)
        LDW       S:?w1, X
        LDW       X, S:?w0
        RRWA      X, A
        OR        A, S:?b3
        RRWA      X, A
        OR        A, S:?b2
        RRWA      X, A
        LDW       (Y), X
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x0
        JRNE      L:??unpack_accel_frame_12
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
        JRA       L:??unpack_accel_frame_13
??unpack_accel_frame_12:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x2
        JRNE      L:??unpack_accel_frame_14
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
        JRA       L:??unpack_accel_frame_13
??unpack_accel_frame_14:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x1
        JRNE      L:??unpack_accel_frame_13
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w1, X
        LD        A, [S:?w4.w]
        CLRW      X
        LD        XL, A
        LDW       Y, X
        LDW       X, #0x6
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        ADDW      X, (0x4,SP)
        LDW       Y, X
        LDW       X, S:?w1
        LDW       (Y), X
??unpack_accel_frame_13:
        LD        A, [S:?w4.w]
        ADD       A, #0x1
        LD        [S:?w4.w], A
        JRA       L:??unpack_accel_frame_5
??unpack_accel_frame_4:
??unpack_accel_frame_5:
        ADD       SP, #0x5
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
unpack_accel_xyz:
        CALLF     L:?push_l2
        LDW       S:?w1, X
        CALLF     L:?mov_w2_w0
        CLR       S:?b11
        CLR       S:?b10
        CLR       S:?b1
        CLR       S:?b0
        LD        A, (Y)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        LDW       X, [S:?w2.w]
        ADDW      X, S:?w3
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w5, X
        LD        A, (Y)
        ADD       A, #0x1
        LD        (Y), A
        LD        A, (Y)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        LDW       X, [S:?w2.w]
        ADDW      X, S:?w3
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LD        A, (Y)
        ADD       A, #0x1
        LD        (Y), A
        LDW       X, S:?w0
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b11
        RRWA      X, A
        OR        A, S:?b10
        RRWA      X, A
        LDW       [S:?w1.w], X
        LD        A, (Y)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        LDW       X, [S:?w2.w]
        ADDW      X, S:?w3
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w5, X
        LD        A, (Y)
        ADD       A, #0x1
        LD        (Y), A
        LD        A, (Y)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        LDW       X, [S:?w2.w]
        ADDW      X, S:?w3
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LD        A, (Y)
        ADD       A, #0x1
        LD        (Y), A
        LDW       X, S:?w0
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b11
        RRWA      X, A
        OR        A, S:?b10
        RRWA      X, A
        LDW       S:?w3, X
        LDW       X, S:?w1
        ADDW      X, #0x2
        LDW       S:?w4, X
        LDW       X, S:?w3
        LDW       [S:?w4.w], X
        LD        A, (Y)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        LDW       X, [S:?w2.w]
        ADDW      X, S:?w3
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w5, X
        LD        A, (Y)
        ADD       A, #0x1
        LD        (Y), A
        LD        A, (Y)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        LDW       X, [S:?w2.w]
        ADDW      X, S:?w3
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LD        A, (Y)
        ADD       A, #0x1
        LD        (Y), A
        LDW       X, S:?w0
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b11
        RRWA      X, A
        OR        A, S:?b10
        RRWA      X, A
        LDW       S:?w3, X
        LDW       X, S:?w1
        ADDW      X, #0x4
        LDW       S:?w4, X
        LDW       X, S:?w3
        LDW       [S:?w4.w], X
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x0
        JRNE      L:??unpack_accel_xyz_0
        LDW       X, [S:?w1.w]
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       [S:?w1.w], X
        LDW       X, S:?w1
        ADDW      X, #0x2
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w4, X
        LDW       X, S:?w1
        ADDW      X, #0x2
        LDW       S:?w3, X
        LDW       X, S:?w4
        LDW       [S:?w3.w], X
        LDW       X, S:?w1
        ADDW      X, #0x4
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w4, X
        LDW       X, S:?w1
        ADDW      X, #0x4
        LDW       S:?w3, X
        LDW       X, S:?w4
        LDW       [S:?w3.w], X
        JRA       L:??unpack_accel_xyz_1
??unpack_accel_xyz_0:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x2
        JRNE      L:??unpack_accel_xyz_2
        LDW       X, [S:?w1.w]
        SRAW      X
        SRAW      X
        LDW       [S:?w1.w], X
        LDW       X, S:?w1
        ADDW      X, #0x2
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w4, X
        LDW       X, S:?w1
        ADDW      X, #0x2
        LDW       S:?w3, X
        LDW       X, S:?w4
        LDW       [S:?w3.w], X
        LDW       X, S:?w1
        ADDW      X, #0x4
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w4, X
        LDW       X, S:?w1
        ADDW      X, #0x4
        LDW       S:?w3, X
        LDW       X, S:?w4
        LDW       [S:?w3.w], X
        JRA       L:??unpack_accel_xyz_1
??unpack_accel_xyz_2:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        CP        A, #0x1
        JRNE      L:??unpack_accel_xyz_1
        LDW       X, [S:?w1.w]
        CALLF     L:?sra16_x_x_6
        LDW       [S:?w1.w], X
        LDW       X, S:?w1
        ADDW      X, #0x2
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w4, X
        LDW       X, S:?w1
        ADDW      X, #0x2
        LDW       S:?w3, X
        LDW       X, S:?w4
        LDW       [S:?w3.w], X
        LDW       X, S:?w1
        ADDW      X, #0x4
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w4, X
        LDW       X, S:?w1
        ADDW      X, #0x4
        LDW       S:?w3, X
        LDW       X, S:?w4
        LDW       [S:?w3.w], X
??unpack_accel_xyz_1:
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_temp:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_temp_0
        LD        A, #0x81
        JRA       L:??bma2x2_read_temp_1
??bma2x2_read_temp_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x8
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_read_temp_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_xyzt:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x7
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        LDW       Y, #?_4
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x7
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_xyzt_0
        LD        A, #0x81
        JP        L:??bma2x2_read_accel_xyzt_1
??bma2x2_read_accel_xyzt_0:
        LD        A, L:V_BMA2x2RESOLUTION_U8
        TNZ       A
        JREQ      L:??bma2x2_read_accel_xyzt_2
        DEC       A
        JRNE      ??lb_0
        JP        L:??bma2x2_read_accel_xyzt_3
??lb_0:
        DEC       A
        JRNE      ??lb_1
        JP        L:??bma2x2_read_accel_xyzt_4
??lb_1:
        JP        L:??bma2x2_read_accel_xyzt_5
??bma2x2_read_accel_xyzt_2:
        MOV       S:?b1, #0x7
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        LD        A, (0x3,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x4,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x5,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x6,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        SRAW      X
        SRAW      X
        SRAW      X
        SRAW      X
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x7,SP)
        LDW       X, S:?w4
        ADDW      X, #0x6
        LD        (X), A
        JP        L:??bma2x2_read_accel_xyzt_6
??bma2x2_read_accel_xyzt_3:
        MOV       S:?b1, #0x7
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        CALLF     L:?sra16_x_x_6
        LDW       [S:?w4.w], X
        LD        A, (0x3,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x4,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x5,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xc0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x6,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        CALLF     L:?sra16_x_x_6
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x7,SP)
        LDW       X, S:?w4
        ADDW      X, #0x6
        LD        (X), A
        JP        L:??bma2x2_read_accel_xyzt_6
??bma2x2_read_accel_xyzt_4:
        MOV       S:?b1, #0x7
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x2
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x2,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       [S:?w4.w], X
        LDW       X, [S:?w4.w]
        SRAW      X
        SRAW      X
        LDW       [S:?w4.w], X
        LD        A, (0x3,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x4,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x2
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x5,SP)
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xfc
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, (0x6,SP)
        CALLF     L:?sext16_x_a
        CLR       A
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       (X), Y
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       X, (X)
        SRAW      X
        SRAW      X
        LDW       S:?w0, X
        LDW       X, S:?w4
        ADDW      X, #0x4
        LDW       Y, X
        LDW       X, S:?w0
        LDW       (Y), X
        LD        A, (0x7,SP)
        LDW       X, S:?w4
        ADDW      X, #0x6
        LD        (X), A
        JRA       L:??bma2x2_read_accel_xyzt_6
??bma2x2_read_accel_xyzt_5:
??bma2x2_read_accel_xyzt_6:
        LD        A, S:?b10
??bma2x2_read_accel_xyzt_1:
        ADD       SP, #0x7
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_read_accel_eight_resolution_xyzt:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        MOV       S:?b10, #0xff
        CLR       A
        LD        (0x1,SP), A
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_read_accel_eight_resolution_xyzt_0
        LD        A, #0x81
        JP        L:??bma2x2_read_accel_eight_resolution_xyzt_1
??bma2x2_read_accel_eight_resolution_xyzt_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x5
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LDW       X, S:?w4
        INCW      X
        LD        A, (0x1,SP)
        LD        (X), A
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x7
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        A, (0x1,SP)
        LD        (X), A
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x8
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        A, (0x1,SP)
        LD        (X), A
        LD        A, S:?b10
??bma2x2_read_accel_eight_resolution_xyzt_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_get_fifo_data_output_reg:
        CALLF     L:?push_w4
        PUSH      S:?b10
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       A
        LD        (0x1,SP), A
        MOV       S:?b10, #0xff
        LDW       X, L:p_bma2x2
        TNZW      X
        JRNE      L:??bma2x2_get_fifo_data_output_reg_0
        LD        A, #0x81
        JRA       L:??bma2x2_get_fifo_data_output_reg_1
??bma2x2_get_fifo_data_output_reg_0:
        MOV       S:?b1, #0x1
        LDW       X, SP
        ADDW      X, #0x1
        MOV       S:?b0, #0x3f
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x4
        LD        A, (X)
        POPW      X
        PUSHW     X
        LDW       X, L:p_bma2x2
        ADDW      X, #0x9
        CALLF     L:?load24_e1_0x
        POPW      X
        CALLF     [S:?e1.e]
        LD        S:?b10, A
        LD        A, (0x1,SP)
        LD        [S:?w4.w], A
        LD        A, S:?b10
??bma2x2_get_fifo_data_output_reg_1:
        ADD       SP, #0x1
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_0:
        DC8 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_1:
        DC8 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_2:
        DC8 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_3:
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_4:
        DC8 0, 0, 0, 0, 0, 0, 0

        END
// 
// 24 776 bytes in section .far_func.text
//      3 bytes in section .near.bss
//     19 bytes in section .near.rodata
// 
// 24 776 bytes of CODE  memory
//     19 bytes of CONST memory
//      3 bytes of DATA  memory
//
//Errors: none
//Warnings: none
