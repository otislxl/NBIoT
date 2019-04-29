///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:12
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\hwdflash.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\hwdflash.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\hwdflash.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?add32_l0_l0_l1
        EXTERN ?b0
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_l2_w6
        EXTERN ?inc32_l2_l2
        EXTERN ?inc32_l3_l3
        EXTERN ?load32_l0_dbsp
        EXTERN ?load32_l1_dbsp
        EXTERN ?load32_xsp_l0
        EXTERN ?mov_l0_l2
        EXTERN ?mov_l0_l3
        EXTERN ?mov_l1_l2
        EXTERN ?mov_l2_l0
        EXTERN ?mov_l2_l1
        EXTERN ?mov_l3_l0
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w6
        EXTERN ?ucmp32_c_l0_l1
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7
        EXTERN FLASH_EraseBlock
        EXTERN FLASH_GetFlagStatus
        EXTERN FLASH_Lock
        EXTERN FLASH_ProgramBlock
        EXTERN FLASH_ProgramByte
        EXTERN FLASH_ReadByte
        EXTERN FLASH_SetProgrammingTime
        EXTERN FLASH_Unlock

        PUBLIC hw_eeprom_flash_init
        PUBLIC hw_eeprom_read_bytes
        PUBLIC hw_eeprom_write_bytes
        PUBLIC hw_flash_erase_block
        PUBLIC hw_flash_write_block
        PUBLIC hw_flash_write_bytes


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
hw_eeprom_flash_init:
        CLR       A
        CALLF     FLASH_SetProgrammingTime
        LD        A, #0xfd
        CALLF     FLASH_Lock
??hw_eeprom_flash_init_0:
        LD        A, #0x2
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x1
        JREQ      L:??hw_eeprom_flash_init_0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
hw_eeprom_read_bytes:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSH      A
        PUSHW     X
        PUSH      S:?b0
        SUB       SP, #0x8
        CLRW      X
        LDW       S:?w7, X
        LDW       S:?w6, X
        LDW       X, #0x0
        LDW       (0x1,SP), X
        LDW       X, #0x0
        LDW       (0x3,SP), X
        LD        A, (0xc,SP)
        CLRW      X
        LD        XL, A
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x1000
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?add32_l0_l0_l1
        LDW       X, #0x5
        CALLF     L:?load32_xsp_l0
        LD        A, (0x9,SP)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?load32_l0_dbsp
        DATA
        DC8       0x5
        CODE
        CALLF     L:?add32_l0_l0_l1
        LDW       X, #0x1
        CALLF     L:?load32_xsp_l0
        CALLF     L:?load32_l0_dbsp
        DATA
        DC8       0x5
        CODE
        CALLF     L:?mov_l2_l0
??hw_eeprom_read_bytes_0:
        CALLF     L:?load32_l1_dbsp
        DATA
        DC8       0x1
        CODE
        CALLF     L:?mov_l0_l2
        CALLF     L:?ucmp32_c_l0_l1
        JRNC      L:??hw_eeprom_read_bytes_1
        CALLF     L:?mov_l0_l2
        CALLF     FLASH_ReadByte
        LDW       X, S:?w7
        ADDW      X, (0xa,SP)
        LD        (X), A
        CALLF     L:?inc32_l3_l3
        CALLF     L:?inc32_l2_l2
        JRA       L:??hw_eeprom_read_bytes_0
??hw_eeprom_read_bytes_1:
        ADD       SP, #0xc
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
hw_eeprom_write_bytes:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSH      A
        PUSHW     X
        PUSH      S:?b0
        CLRW      X
        LDW       S:?w5, X
        LDW       S:?w4, X
        LD        A, (0x4,SP)
        CLRW      X
        LD        XL, A
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x1000
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l3_l0
        LD        A, #0xf7
        CALLF     FLASH_Unlock
??hw_eeprom_write_bytes_0:
        LD        A, #0x8
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??hw_eeprom_write_bytes_0
        CLRW      X
        LDW       S:?w1, X
        LDW       S:?w0, X
        CALLF     L:?mov_l2_l0
??hw_eeprom_write_bytes_1:
        LD        A, (0x1,SP)
        CLRW      X
        LD        XL, A
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?ucmp32_c_l0_l1
        JRNC      L:??hw_eeprom_write_bytes_2
        LDW       X, S:?w5
        ADDW      X, (0x2,SP)
        LD        A, (X)
        PUSH      A
        CALLF     L:?mov_l0_l3
        CALLF     L:?mov_l1_l2
        CALLF     L:?add32_l0_l0_l1
        POP       A
        CALLF     FLASH_ProgramByte
??hw_eeprom_write_bytes_3:
        LD        A, #0x40
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??hw_eeprom_write_bytes_3
        CALLF     L:?inc32_l2_l2
        JRA       L:??hw_eeprom_write_bytes_1
??hw_eeprom_write_bytes_2:
        LD        A, #0xf7
        CALLF     FLASH_Lock
??hw_eeprom_write_bytes_4:
        LD        A, #0x8
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x1
        JREQ      L:??hw_eeprom_write_bytes_4
        ADD       SP, #0x4
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
hw_flash_write_bytes:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        CALLF     L:?mov_l3_l0
        CALLF     L:?mov_l2_l1
        LD        A, #0xfd
        CALLF     FLASH_Unlock
??hw_flash_write_bytes_0:
        LD        A, #0x2
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??hw_flash_write_bytes_0
        LD        A, #0xfd
        CALLF     FLASH_Lock
??hw_flash_write_bytes_1:
        LD        A, #0x2
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x1
        JREQ      L:??hw_flash_write_bytes_1
        CLR       A
        ADD       SP, #0x2
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
hw_flash_write_block:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        CALLF     L:?mov_l2_l0
        LDW       S:?w6, X
        LD        A, #0xfd
        CALLF     FLASH_Unlock
??hw_flash_write_block_0:
        LD        A, #0x2
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??hw_flash_write_block_0
        LDW       Y, S:?w6
        CLR       S:?b0
        LD        A, #0xf7
        LDW       X, S:?w5
        CALLF     FLASH_ProgramBlock
??hw_flash_write_block_1:
        LD        A, #0x40
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??hw_flash_write_block_1
        LD        A, #0xfd
        CALLF     FLASH_Lock
??hw_flash_write_block_2:
        LD        A, #0x2
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x1
        JREQ      L:??hw_flash_write_block_2
        CLR       A
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
hw_flash_erase_block:
        CALLF     L:?push_l2
        CALLF     L:?mov_l2_l0
        LD        A, #0xfd
        CALLF     FLASH_Unlock
??hw_flash_erase_block_0:
        LD        A, #0x2
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??hw_flash_erase_block_0
        LD        A, #0xfd
        LDW       X, S:?w5
        CALLF     FLASH_EraseBlock
        LD        A, #0xfd
        CALLF     FLASH_Lock
??hw_flash_erase_block_1:
        LD        A, #0x2
        CALLF     FLASH_GetFlagStatus
        CP        A, #0x1
        JREQ      L:??hw_flash_erase_block_1
        CLR       A
        JPF       L:?epilogue_l2

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 491 bytes in section .far_func.text
// 
// 491 bytes of CODE memory
//
//Errors: none
//Warnings: none
