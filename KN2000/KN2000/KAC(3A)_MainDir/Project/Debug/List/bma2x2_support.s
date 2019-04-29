///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:09:20
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\bma2x2_support.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\bma2x2_support.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\bma2x2_support.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?add32_l0_l0_l1
        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b15
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?load24_0x_e0
        EXTERN ?mov_l0_l2
        EXTERN ?mov_l1_l0
        EXTERN ?mov_l1_l2
        EXTERN ?mov_l2_l0
        EXTERN ?mov_l3_l0
        EXTERN ?move1616_v_x_y_a
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?sext32_l0_a
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7
        EXTERN I2C_Send_STRING
        EXTERN I2C_WRITE_READ_STRING
        EXTERN bma2x2_get_bw
        EXTERN bma2x2_init
        EXTERN bma2x2_read_accel_x
        EXTERN bma2x2_read_accel_xyz
        EXTERN bma2x2_read_accel_xyzt
        EXTERN bma2x2_read_accel_y
        EXTERN bma2x2_read_accel_z
        EXTERN bma2x2_set_bw
        EXTERN bma2x2_set_power_mode
        EXTERN delay_ms

        PUBLIC BMA253_Init
        PUBLIC BMA2x2_I2C_bus_read
        PUBLIC BMA2x2_I2C_bus_write
        PUBLIC BMA2x2_SPI_bus_read
        PUBLIC BMA2x2_SPI_bus_write
        PUBLIC BMA2x2_delay_msek
        PUBLIC I2C_routine
        PUBLIC SPI_routine
        PUBLIC bma2x2
        PUBLIC bma2x2_data_readout_template


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
bma2x2:
        DS8 18

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
bma2x2_data_readout_template:
        CALLF     L:?push_l2
        PUSH      S:?b12
        SUB       SP, #0x14
        CLRW      X
        LDW       (0x2,SP), X
        CLR       S:?b12
        CLR       A
        LD        (0x1,SP), A
        CLRW      X
        DECW      X
        LDW       S:?w5, X
        LDW       S:?w4, X
        CALLF     I2C_routine
        LDW       X, #bma2x2
        CALLF     bma2x2_init
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l2_l0
        CLR       A
        CALLF     bma2x2_set_power_mode
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LD        A, #0x8
        LD        S:?b12, A
        LD        A, S:?b12
        CALLF     bma2x2_set_bw
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     bma2x2_get_bw
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LDW       X, SP
        ADDW      X, #0x6
        CALLF     bma2x2_read_accel_x
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LDW       X, SP
        ADDW      X, #0x4
        CALLF     bma2x2_read_accel_y
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LDW       X, SP
        ADDW      X, #0x2
        CALLF     bma2x2_read_accel_z
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LDW       X, SP
        ADDW      X, #0xf
        CALLF     bma2x2_read_accel_xyz
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LDW       X, SP
        ADDW      X, #0x8
        CALLF     bma2x2_read_accel_xyzt
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LD        A, #0x3
        CALLF     bma2x2_set_power_mode
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        CALLF     L:?mov_l0_l2
        ADD       SP, #0x14
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_routine:
        MOV       S:?b1, #BYTE3(BMA2x2_I2C_bus_write)
        MOV       S:?b2, #BYTE2(BMA2x2_I2C_bus_write)
        MOV       S:?b3, #BYTE1(BMA2x2_I2C_bus_write)
        LDW       X, #bma2x2 + 6
        CALLF     L:?load24_0x_e0
        MOV       S:?b1, #BYTE3(BMA2x2_I2C_bus_read)
        MOV       S:?b2, #BYTE2(BMA2x2_I2C_bus_read)
        MOV       S:?b3, #BYTE1(BMA2x2_I2C_bus_read)
        LDW       X, #bma2x2 + 9
        CALLF     L:?load24_0x_e0
        MOV       S:?b1, #BYTE3(BMA2x2_delay_msek)
        MOV       S:?b2, #BYTE2(BMA2x2_delay_msek)
        MOV       S:?b3, #BYTE1(BMA2x2_delay_msek)
        LDW       X, #bma2x2 + 15
        CALLF     L:?load24_0x_e0
        MOV       L:bma2x2 + 4, #0x18
        CLR       A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_routine:
        MOV       S:?b1, #BYTE3(BMA2x2_SPI_bus_write)
        MOV       S:?b2, #BYTE2(BMA2x2_SPI_bus_write)
        MOV       S:?b3, #BYTE1(BMA2x2_SPI_bus_write)
        LDW       X, #bma2x2 + 6
        CALLF     L:?load24_0x_e0
        MOV       S:?b1, #BYTE3(BMA2x2_SPI_bus_read)
        MOV       S:?b2, #BYTE2(BMA2x2_SPI_bus_read)
        MOV       S:?b3, #BYTE1(BMA2x2_SPI_bus_read)
        LDW       X, #bma2x2 + 9
        CALLF     L:?load24_0x_e0
        MOV       S:?b1, #BYTE3(BMA2x2_delay_msek)
        MOV       S:?b2, #BYTE2(BMA2x2_delay_msek)
        MOV       S:?b3, #BYTE1(BMA2x2_delay_msek)
        LDW       X, #bma2x2 + 15
        CALLF     L:?load24_0x_e0
        CLR       A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BMA2x2_I2C_bus_write:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        SUB       SP, #0x8
        LD        S:?b10, A
        MOV       S:?b9, S:?b0
        MOV       S:?b11, S:?b1
        CLRW      X
        LDW       S:?w7, X
        LDW       S:?w6, X
        CLR       S:?b8
        LD        A, S:?b9
        LD        (0x1,SP), A
        CLR       A
        LD        S:?b8, A
??BMA2x2_I2C_bus_write_0:
        LD        A, S:?b8
        CP        A, S:?b11
        JRNC      L:??BMA2x2_I2C_bus_write_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        ADDW      X, (0x9,SP)
        LD        A, (X)
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b8
        EXG       A, YL
        LDW       X, SP
        ADDW      X, #0x1
        LDW       S:?w0, Y
        ADDW      X, S:?w0
        INCW      X
        LD        (X), A
        LD        A, S:?b8
        ADD       A, #0x1
        LD        S:?b8, A
        JRA       L:??BMA2x2_I2C_bus_write_0
??BMA2x2_I2C_bus_write_1:
        LD        A, S:?b11
        ADD       A, #0x1
        LD        S:?b0, A
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, S:?b10
        CALLF     I2C_Send_STRING
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l3_l0
        LD        A, S:?b15
        ADD       SP, #0xa
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BMA2x2_I2C_bus_read:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        SUB       SP, #0x8
        LD        S:?b11, A
        MOV       S:?b9, S:?b0
        MOV       S:?b10, S:?b1
        CLRW      X
        LDW       S:?w7, X
        LDW       S:?w6, X
        LDW       Y, #?_0
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x8
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        CLR       S:?b8
        LD        A, S:?b9
        LD        (0x1,SP), A
        MOV       S:?b0, S:?b10
        LDW       X, SP
        ADDW      X, #0x1
        LD        A, S:?b11
        CALLF     I2C_WRITE_READ_STRING
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l3_l0
        CLR       A
        LD        S:?b8, A
??BMA2x2_I2C_bus_read_0:
        LD        A, S:?b8
        CP        A, S:?b10
        JRNC      L:??BMA2x2_I2C_bus_read_1
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b8
        EXG       A, YL
        LDW       X, SP
        ADDW      X, #0x1
        LDW       S:?w0, Y
        ADDW      X, S:?w0
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        ADDW      X, (0x9,SP)
        LD        (X), A
        LD        A, S:?b8
        ADD       A, #0x1
        LD        S:?b8, A
        JRA       L:??BMA2x2_I2C_bus_read_0
??BMA2x2_I2C_bus_read_1:
        LD        A, S:?b15
        ADD       SP, #0xa
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BMA2x2_SPI_bus_read:
        CALLF     L:?push_l2
        SUB       SP, #0x5
        LD        S:?b8, A
        MOV       S:?b4, S:?b0
        LDW       S:?w3, X
        MOV       S:?b5, S:?b1
        CLRW      X
        LDW       S:?w1, X
        LDW       S:?w0, X
        LDW       Y, #?_1
        LDW       X, SP
        ADDW      X, #0x1
        PUSHW     X
        LD        A, #0x5
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        LD        A, S:?b4
        OR        A, #0x80
        LD        (0x1,SP), A
        CLR       A
        LD        S:?b9, A
??BMA2x2_SPI_bus_read_0:
        LD        A, S:?b9
        CP        A, S:?b5
        JRNC      L:??BMA2x2_SPI_bus_read_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        LDW       S:?w5, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w5
        INCW      X
        LD        A, (X)
        CLRW      X
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        ADDW      X, S:?w3
        LD        (X), A
        LD        A, S:?b9
        ADD       A, #0x1
        LD        S:?b9, A
        JRA       L:??BMA2x2_SPI_bus_read_0
??BMA2x2_SPI_bus_read_1:
        LD        A, S:?b3
        ADD       SP, #0x5
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BMA2x2_SPI_bus_write:
        CALLF     L:?push_l2
        SUB       SP, #0xa
        LD        S:?b8, A
        MOV       S:?b5, S:?b0
        LDW       S:?w3, X
        MOV       S:?b4, S:?b1
        CLRW      X
        LDW       S:?w1, X
        LDW       S:?w0, X
        CLR       S:?b9
        CLR       A
        LD        S:?b9, A
??BMA2x2_SPI_bus_write_0:
        LD        A, S:?b9
        CP        A, S:?b4
        JRNC      L:??BMA2x2_SPI_bus_write_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        SLLW      X
        LDW       S:?w5, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w5
        LD        A, S:?b5
        AND       A, #0x7f
        LD        (X), A
        LD        A, S:?b5
        ADD       A, #0x1
        LD        S:?b5, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        SLLW      X
        LDW       S:?w5, X
        LDW       X, SP
        ADDW      X, #0x1
        ADDW      X, S:?w5
        INCW      X
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        ADDW      X, S:?w3
        LD        A, (X)
        LD        (Y), A
        LD        A, S:?b9
        ADD       A, #0x1
        LD        S:?b9, A
        JRA       L:??BMA2x2_SPI_bus_write_0
??BMA2x2_SPI_bus_write_1:
        LD        A, S:?b3
        ADD       SP, #0xa
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BMA2x2_delay_msek:
        CALLF     L:?push_l2
        CALLF     L:?mov_l2_l0
        CALLF     L:?mov_l0_l2
        CALLF     delay_ms
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BMA253_Init:
        CALLF     L:?push_l2
        CLRW      X
        DECW      X
        LDW       S:?w5, X
        LDW       S:?w4, X
        CALLF     I2C_routine
        LDW       X, #bma2x2
        CALLF     bma2x2_init
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l2_l0
        CLR       A
        CALLF     bma2x2_set_power_mode
        CALLF     L:?sext32_l0_a
        CALLF     L:?mov_l1_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        JPF       L:?epilogue_l2

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_0:
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
?_1:
        DC8 255, 0, 0, 0, 0

        END
// 
// 927 bytes in section .far_func.text
//  18 bytes in section .near.bss
//  13 bytes in section .near.rodata
// 
// 927 bytes of CODE  memory
//  13 bytes of CONST memory
//  18 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
