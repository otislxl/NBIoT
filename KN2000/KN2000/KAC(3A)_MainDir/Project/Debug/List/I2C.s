///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  16:16:30
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\I2C.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\I2C.c" -e --char_is_signed
//        -On --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_cross_call --debug --code_model medium --data_model medium -o
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\Obj\"
//        --dlib_config "C:\Program Files\IAR Systems\Embedded Workbench
//        7.0\stm8\LIB\dlstm8mmf.h" -lcN
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\" -lb
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\" -I
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\" -I
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_libSystem\Libraries\STM8L15x_StdPeriph_Driver\inc\"
//        --vregs 16
//    List file    =  
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\I2C.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b14
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b6
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_w6
        EXTERN ?epilogue_w4
        EXTERN ?push_l2
        EXTERN ?push_w4
        EXTERN ?push_w6
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w4
        EXTERN ?w5
        EXTERN CLK_PeripheralClockConfig
        EXTERN GPIO_Init
        EXTERN I2C_AcknowledgeConfig
        EXTERN I2C_CheckEvent
        EXTERN I2C_DeInit
        EXTERN I2C_GenerateSTART
        EXTERN I2C_GenerateSTOP
        EXTERN I2C_GetFlagStatus
        EXTERN I2C_Init
        EXTERN I2C_ReceiveData
        EXTERN I2C_Send7bitAddress
        EXTERN I2C_SendData

        PUBLIC Gsensor_IIC_Init
        PUBLIC I2C_ReadByte
        PUBLIC I2C_Send_STRING
        PUBLIC I2C_WRITE_READ_STRING
        PUBLIC I2C_WriteByte


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_WriteByte:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
??I2C_WriteByte_0:
        LDW       Y, #0x302
        LDW       X, #0x5210
        CALLF     I2C_GetFlagStatus
        CP        A, #0x0
        JRNE      L:??I2C_WriteByte_0
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTART
??I2C_WriteByte_1:
        LDW       Y, #0x301
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WriteByte_1
        CLR       S:?b0
        LD        A, #0x30
        LDW       X, #0x5210
        CALLF     I2C_Send7bitAddress
??I2C_WriteByte_2:
        LDW       Y, #0x782
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WriteByte_2
        LD        A, S:?b8
        LDW       X, #0x5210
        CALLF     I2C_SendData
??I2C_WriteByte_3:
        LDW       Y, #0x784
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WriteByte_3
        LD        A, S:?b9
        LDW       X, #0x5210
        CALLF     I2C_SendData
??I2C_WriteByte_4:
        LDW       Y, #0x784
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WriteByte_4
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_AcknowledgeConfig
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTOP
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_ReadByte:
        CALLF     L:?push_w4
        LD        S:?b8, A
??I2C_ReadByte_0:
        LDW       Y, #0x302
        LDW       X, #0x5210
        CALLF     I2C_GetFlagStatus
        CP        A, #0x0
        JRNE      L:??I2C_ReadByte_0
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTART
??I2C_ReadByte_1:
        LDW       Y, #0x301
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_ReadByte_1
        CLR       S:?b0
        LD        A, #0x30
        LDW       X, #0x5210
        CALLF     I2C_Send7bitAddress
??I2C_ReadByte_2:
        LDW       Y, #0x782
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_ReadByte_2
        LD        A, S:?b8
        LDW       X, #0x5210
        CALLF     I2C_SendData
??I2C_ReadByte_3:
        LDW       Y, #0x784
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_ReadByte_3
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTART
??I2C_ReadByte_4:
        LDW       Y, #0x301
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_ReadByte_4
        MOV       S:?b0, #0x1
        LD        A, #0x31
        LDW       X, #0x5210
        CALLF     I2C_Send7bitAddress
??I2C_ReadByte_5:
        LDW       Y, #0x302
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_ReadByte_5
??I2C_ReadByte_6:
        LDW       Y, #0x340
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_ReadByte_6
        LDW       X, #0x5210
        CALLF     I2C_ReceiveData
        LD        S:?b9, A
        CLR       A
        LDW       X, #0x5210
        CALLF     I2C_AcknowledgeConfig
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTOP
        LD        A, S:?b9
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_Send_STRING:
        CALLF     L:?push_l2
        PUSH      S:?b12
        LD        S:?b11, A
        LDW       S:?w4, X
        MOV       S:?b12, S:?b0
        CLR       S:?b10
??I2C_Send_STRING_0:
        LDW       Y, #0x302
        LDW       X, #0x5210
        CALLF     I2C_GetFlagStatus
        CP        A, #0x0
        JRNE      L:??I2C_Send_STRING_0
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTART
??I2C_Send_STRING_1:
        LDW       Y, #0x301
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_Send_STRING_1
        CLR       S:?b0
        LD        A, S:?b11
        SLL       A
        LDW       X, #0x5210
        CALLF     I2C_Send7bitAddress
??I2C_Send_STRING_2:
        LDW       Y, #0x782
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_Send_STRING_2
        LD        A, [S:?w4.w]
        LDW       X, #0x5210
        CALLF     I2C_SendData
        LD        A, #0x1
        LD        S:?b10, A
??I2C_Send_STRING_3:
        LD        A, S:?b10
        CP        A, S:?b12
        JRNC      L:??I2C_Send_STRING_4
??I2C_Send_STRING_5:
        LDW       Y, #0x784
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_Send_STRING_5
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, S:?w4
        LD        A, (X)
        LDW       X, #0x5210
        CALLF     I2C_SendData
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
        JRA       L:??I2C_Send_STRING_3
??I2C_Send_STRING_4:
        LDW       Y, #0x784
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_Send_STRING_4
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_AcknowledgeConfig
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTOP
        CLR       A
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_WRITE_READ_STRING:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        PUSH      S:?b14
        LD        S:?b12, A
        LDW       S:?w4, X
        MOV       S:?b14, S:?b0
??I2C_WRITE_READ_STRING_0:
        LDW       Y, #0x302
        LDW       X, #0x5210
        CALLF     I2C_GetFlagStatus
        CP        A, #0x0
        JRNE      L:??I2C_WRITE_READ_STRING_0
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTART
??I2C_WRITE_READ_STRING_1:
        LDW       Y, #0x301
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WRITE_READ_STRING_1
        CLR       S:?b0
        LD        A, S:?b12
        SLL       A
        LDW       X, #0x5210
        CALLF     I2C_Send7bitAddress
??I2C_WRITE_READ_STRING_2:
        LDW       Y, #0x782
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WRITE_READ_STRING_2
        LD        A, [S:?w4.w]
        LDW       X, #0x5210
        CALLF     I2C_SendData
??I2C_WRITE_READ_STRING_3:
        LDW       Y, #0x784
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WRITE_READ_STRING_3
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTART
??I2C_WRITE_READ_STRING_4:
        LDW       Y, #0x301
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WRITE_READ_STRING_4
        MOV       S:?b0, #0x1
        LD        A, S:?b12
        SLL       A
        ADD       A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_Send7bitAddress
??I2C_WRITE_READ_STRING_5:
        LDW       Y, #0x302
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WRITE_READ_STRING_5
        CLR       A
        LD        S:?b13, A
??I2C_WRITE_READ_STRING_6:
        LD        A, S:?b13
        CP        A, S:?b14
        JRNC      L:??I2C_WRITE_READ_STRING_7
??I2C_WRITE_READ_STRING_8:
        LDW       Y, #0x340
        LDW       X, #0x5210
        CALLF     I2C_CheckEvent
        CP        A, #0x0
        JREQ      L:??I2C_WRITE_READ_STRING_8
        CLRW      X
        EXG       A, XL
        LD        A, S:?b13
        EXG       A, XL
        ADDW      X, S:?w4
        LDW       S:?w5, X
        LDW       X, #0x5210
        CALLF     I2C_ReceiveData
        LD        [S:?w5.w], A
        LD        A, S:?b13
        ADD       A, #0x1
        LD        S:?b13, A
        JRA       L:??I2C_WRITE_READ_STRING_6
??I2C_WRITE_READ_STRING_7:
        CLR       A
        LDW       X, #0x5210
        CALLF     I2C_AcknowledgeConfig
        LD        A, #0x1
        LDW       X, #0x5210
        CALLF     I2C_GenerateSTOP
        CLR       A
        POP       S:?b14
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
Gsensor_IIC_Init:
        MOV       S:?b0, #0x90
        LD        A, #0x3
        LDW       X, #0x500a
        CALLF     GPIO_Init
        MOV       S:?b0, #0x1
        LD        A, #0x3
        CALLF     CLK_PeripheralClockConfig
        LDW       X, #0x5210
        CALLF     I2C_DeInit
        CLR       S:?b6
        MOV       S:?b5, #0x4
        CLR       S:?b4
        CLR       A
        LDW       Y, #0x18
        LDW       X, #0x86a0
        LDW       S:?w1, X
        CLRW      X
        INCW      X
        LDW       S:?w0, X
        LDW       X, #0x5210
        CALLF     I2C_Init
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 823 bytes in section .far_func.text
// 
// 823 bytes of CODE memory
//
//Errors: none
//Warnings: none
