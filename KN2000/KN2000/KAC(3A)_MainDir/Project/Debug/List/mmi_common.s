///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:13
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\mmi_common.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\mmi_common.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\mmi_common.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b4
        EXTERN ?b6
        EXTERN ?epilogue_l2
        EXTERN ?mov_w1_w0
        EXTERN ?mov_w3_w0
        EXTERN ?mul16_x_x_w0
        EXTERN ?push_l2
        EXTERN ?sdiv16_x_x_y
        EXTERN ?sext16_x_a
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5

        PUBLIC AciiToHex
        PUBLIC AsctoBin
        PUBLIC BcdHexToString
        PUBLIC BcdToBin
        PUBLIC BcdToDec
        PUBLIC BinToAsc
        PUBLIC BinToBcd
        PUBLIC GetIntFromBuf
        PUBLIC StrToBcd
        PUBLIC TransfromStrToBcd


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BinToBcd:
        LD        S:?b0, A
        LD        A, S:?b0
        CP        A, #0x64
        JRC       L:??BinToBcd_0
        LD        A, #0x64
        CLRW      X
        RRWA      X, A
        LD        A, S:?b0
        RLWA      X, A
        DIV       X, A
        LD        S:?b0, A
??BinToBcd_0:
        LD        A, #0xa
        CLRW      X
        RRWA      X, A
        LD        A, S:?b0
        RLWA      X, A
        DIV       X, A
        LD        A, XL
        SWAP      A
        AND       A, #0xf0
        LD        S:?b1, A
        LD        A, #0xa
        CLRW      X
        RRWA      X, A
        LD        A, S:?b0
        RLWA      X, A
        DIV       X, A
        ADD       A, S:?b1
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BcdToBin:
        LD        S:?b1, A
        LD        A, S:?b1
        SWAP      A
        AND       A, #0xf
        MOV       S:?b0, #0xa
        LD        XL, A
        LD        A, S:?b0
        MUL       X, A
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        LD        A, S:?b1
        AND       A, #0xf
        ADD       A, S:?b0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BinToAsc:
        AND       A, #0xf
        CP        A, #0xa
        JRSGE     L:??BinToAsc_0
        ADD       A, #0x30
        JRA       L:??BinToAsc_1
??BinToAsc_0:
        ADD       A, #0xfffffffffffffff6
        ADD       A, #0x41
??BinToAsc_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AsctoBin:
        LD        S:?b0, A
        LD        A, S:?b0
        CP        A, #0x30
        JRC       L:??AsctoBin_0
        LD        A, S:?b0
        CP        A, #0x3a
        JRNC      L:??AsctoBin_0
        LD        A, S:?b0
        ADD       A, #0xd0
        JRA       L:??AsctoBin_1
??AsctoBin_0:
        LD        A, S:?b0
        CP        A, #0x61
        JRC       L:??AsctoBin_2
        LD        A, S:?b0
        CP        A, #0x67
        JRNC      L:??AsctoBin_2
        LD        A, S:?b0
        ADD       A, #0xa9
        JRA       L:??AsctoBin_1
??AsctoBin_2:
        LD        A, S:?b0
        CP        A, #0x41
        JRC       L:??AsctoBin_3
        LD        A, S:?b0
        CP        A, #0x47
        JRNC      L:??AsctoBin_3
        LD        A, S:?b0
        ADD       A, #0xc9
        JRA       L:??AsctoBin_1
??AsctoBin_3:
        CLR       A
??AsctoBin_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AciiToHex:
        LD        A, (X)
        CP        A, #0x41
        JRSLT     L:??AciiToHex_0
        LD        A, (X)
        ADD       A, #0xc9
        LD        S:?b0, A
        JRA       L:??AciiToHex_1
??AciiToHex_0:
        LD        A, (X)
        ADD       A, #0xd0
        LD        S:?b0, A
??AciiToHex_1:
        LDW       Y, X
        INCW      Y
        LD        A, (Y)
        CP        A, #0x41
        JRSLT     L:??AciiToHex_2
        LDW       Y, X
        INCW      Y
        LD        A, (Y)
        ADD       A, #0xc9
        LD        S:?b2, A
        JRA       L:??AciiToHex_3
??AciiToHex_2:
        LDW       Y, X
        INCW      Y
        LD        A, (Y)
        ADD       A, #0xd0
        LD        S:?b2, A
??AciiToHex_3:
        LD        A, S:?b0
        SWAP      A
        AND       A, #0xf0
        ADD       A, S:?b2
        LD        S:?b1, A
        LD        A, S:?b1
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
StrToBcd:
        LD        A, (X)
        SWAP      A
        AND       A, #0xf0
        LD        S:?b0, A
        LDW       Y, X
        INCW      Y
        TNZ       (Y)
        JRNE      L:??StrToBcd_0
        LD        A, S:?b0
        ADD       A, #0xf
        LD        S:?b0, A
        JRA       L:??StrToBcd_1
??StrToBcd_0:
        LDW       Y, X
        INCW      Y
        LD        A, (Y)
        ADD       A, #0xd0
        ADD       A, S:?b0
        LD        S:?b0, A
??StrToBcd_1:
        LD        A, S:?b0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BcdHexToString:
        LDW       S:?w2, X
        LD        S:?b3, A
        LDW       S:?w3, Y
        CLR       S:?b0
        CLR       A
        LD        S:?b1, A
??BcdHexToString_0:
        LD        A, S:?b1
        CP        A, S:?b3
        JRNC      L:??BcdHexToString_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        ADDW      X, S:?w2
        LD        A, (X)
        SWAP      A
        AND       A, #0xf
        LD        S:?b2, A
        LD        A, S:?b2
        CP        A, #0xf
        JREQ      L:??BcdHexToString_2
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w3
        LD        A, S:?b2
        ADD       A, #0x30
        LD        (X), A
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        ADDW      X, S:?w2
        LD        A, (X)
        AND       A, #0xf
        LD        S:?b2, A
        LD        A, S:?b2
        CP        A, #0xf
        JRNE      L:??BcdHexToString_3
        JRA       L:??BcdHexToString_4
??BcdHexToString_2:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w3
        CLR       A
        LD        (X), A
        JRA       L:??BcdHexToString_1
??BcdHexToString_3:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w3
        INCW      X
        LD        A, S:?b2
        ADD       A, #0x30
        LD        (X), A
        LD        A, S:?b0
        ADD       A, #0x1
        LD        S:?b0, A
        LD        A, S:?b1
        ADD       A, #0x1
        LD        S:?b1, A
        JRA       L:??BcdHexToString_0
??BcdHexToString_4:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        SLLW      X
        ADDW      X, S:?w3
        INCW      X
        CLR       A
        LD        (X), A
??BcdHexToString_1:
        LD        A, S:?b0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TransfromStrToBcd:
        CALLF     L:?push_l2
        LDW       S:?w4, X
        LDW       S:?w2, Y
        CALLF     L:?mov_w1_w0
        LD        S:?b6, A
        CLR       S:?b1
        CLR       S:?b0
        CLRW      X
        EXG       A, XL
        LD        A, S:?b6
        EXG       A, XL
        INCW      X
        LDW       Y, #0x2
        CALLF     L:?sdiv16_x_x_y
        LD        A, XL
        LD        [S:?w2.w], A
        CLRW      X
        LDW       S:?w0, X
??TransfromStrToBcd_0:
        LD        A, [S:?w2.w]
        CLRW      X
        LD        XL, A
        LDW       S:?w5, X
        LDW       X, S:?w0
        CPW       X, S:?w5
        JRC       ??lb_0
        JP        L:??TransfromStrToBcd_1
??lb_0:
        LD        A, [S:?w1.w]
        SUB       A, #0x23
        JREQ      L:??TransfromStrToBcd_2
        SUB       A, #0x7
        JREQ      L:??TransfromStrToBcd_3
        DEC       A
        JREQ      L:??TransfromStrToBcd_4
        SUB       A, #0x25
        JREQ      L:??TransfromStrToBcd_5
        SUB       A, #0x7
        JREQ      L:??TransfromStrToBcd_6
        SUB       A, #0x19
        JREQ      L:??TransfromStrToBcd_5
        SUB       A, #0x7
        JREQ      L:??TransfromStrToBcd_6
        JRA       L:??TransfromStrToBcd_7
??TransfromStrToBcd_3:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, #0xa
        LD        (X), A
        JRA       L:??TransfromStrToBcd_8
??TransfromStrToBcd_2:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, #0xb
        LD        (X), A
        JRA       L:??TransfromStrToBcd_8
??TransfromStrToBcd_5:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, #0xc
        LD        (X), A
        JRA       L:??TransfromStrToBcd_8
??TransfromStrToBcd_6:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, #0xd
        LD        (X), A
        JRA       L:??TransfromStrToBcd_8
??TransfromStrToBcd_4:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, #0xe
        LD        (X), A
        JRA       L:??TransfromStrToBcd_8
??TransfromStrToBcd_7:
        LD        A, [S:?w1.w]
        CP        A, #0x30
        JRC       L:??TransfromStrToBcd_9
        LD        A, [S:?w1.w]
        CP        A, #0x3a
        JRNC      L:??TransfromStrToBcd_9
        LD        A, [S:?w1.w]
        ADD       A, #0xd0
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        (X), A
        JRA       L:??TransfromStrToBcd_8
??TransfromStrToBcd_9:
        CLR       A
        JP        L:??TransfromStrToBcd_10
??TransfromStrToBcd_8:
        LDW       X, S:?w1
        INCW      X
        LDW       S:?w1, X
        LD        A, [S:?w1.w]
        TNZ       A
        JRNE      ??lb_1
        JP        L:??TransfromStrToBcd_11
??lb_1:
        SUB       A, #0xf
        JRNE      ??lb_2
        JP        L:??TransfromStrToBcd_11
??lb_2:
        SUB       A, #0x14
        JREQ      L:??TransfromStrToBcd_12
        SUB       A, #0x7
        JREQ      L:??TransfromStrToBcd_13
        DEC       A
        JREQ      L:??TransfromStrToBcd_14
        SUB       A, #0x25
        JREQ      L:??TransfromStrToBcd_15
        SUB       A, #0x7
        JREQ      L:??TransfromStrToBcd_16
        SUB       A, #0x19
        JREQ      L:??TransfromStrToBcd_15
        SUB       A, #0x7
        JREQ      L:??TransfromStrToBcd_16
        JRA       L:??TransfromStrToBcd_17
??TransfromStrToBcd_13:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, (X)
        SWAP      A
        AND       A, #0xf0
        ADD       A, #0xa
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        (X), A
        JP        L:??TransfromStrToBcd_18
??TransfromStrToBcd_12:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, (X)
        SWAP      A
        AND       A, #0xf0
        ADD       A, #0xb
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        (X), A
        JRA       L:??TransfromStrToBcd_18
??TransfromStrToBcd_15:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, (X)
        SWAP      A
        AND       A, #0xf0
        ADD       A, #0xc
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        (X), A
        JRA       L:??TransfromStrToBcd_18
??TransfromStrToBcd_16:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, (X)
        SWAP      A
        AND       A, #0xf0
        ADD       A, #0xd
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        (X), A
        JRA       L:??TransfromStrToBcd_18
??TransfromStrToBcd_14:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, (X)
        SWAP      A
        AND       A, #0xf0
        ADD       A, #0xe
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        (X), A
        JRA       L:??TransfromStrToBcd_18
??TransfromStrToBcd_11:
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, (X)
        SWAP      A
        AND       A, #0xf0
        ADD       A, #0xf
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        (X), A
        JRA       L:??TransfromStrToBcd_18
??TransfromStrToBcd_17:
        LD        A, [S:?w1.w]
        CP        A, #0x30
        JRC       L:??TransfromStrToBcd_19
        LD        A, [S:?w1.w]
        CP        A, #0x3a
        JRNC      L:??TransfromStrToBcd_19
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        A, (X)
        SWAP      A
        AND       A, #0xf0
        ADD       A, [S:?w1.w]
        ADD       A, #0xd0
        LDW       X, S:?w0
        ADDW      X, S:?w4
        LD        (X), A
        JRA       L:??TransfromStrToBcd_18
??TransfromStrToBcd_19:
        CLR       A
        JRA       L:??TransfromStrToBcd_10
??TransfromStrToBcd_18:
        LDW       X, S:?w1
        INCW      X
        LDW       S:?w1, X
        LDW       X, S:?w0
        INCW      X
        LDW       S:?w0, X
        JP        L:??TransfromStrToBcd_0
??TransfromStrToBcd_1:
        LD        A, #0x1
??TransfromStrToBcd_10:
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BcdToDec:
        LDW       S:?w0, X
        LD        S:?b4, A
        CLR       A
        LD        S:?b3, A
??BcdToDec_0:
        LD        A, S:?b3
        CP        A, S:?b4
        JRNC      L:??BcdToDec_1
        LD        A, [S:?w0.w]
        SWAP      A
        AND       A, #0xf
        MOV       S:?b2, #0xa
        LD        XL, A
        LD        A, S:?b2
        MUL       X, A
        EXG       A, XL
        LD        S:?b2, A
        EXG       A, XL
        LD        A, [S:?w0.w]
        AND       A, #0xf
        ADD       A, S:?b2
        LD        (Y), A
        INCW      Y
        LDW       X, S:?w0
        INCW      X
        LDW       S:?w0, X
        LD        A, S:?b3
        ADD       A, #0x1
        LD        S:?b3, A
        JRA       L:??BcdToDec_0
??BcdToDec_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetIntFromBuf:
        CALLF     L:?push_l2
        LDW       S:?w4, X
        CLRW      X
        INCW      X
        LDW       S:?w2, X
        CLRW      Y
        CLR       S:?b1
        CLR       S:?b0
        CLR       S:?b3
        CLR       S:?b2
        LDW       X, Y
        ADDW      X, S:?w4
        LD        A, (X)
        CP        A, #0x2d
        JRNE      L:??GetIntFromBuf_0
        CLRW      X
        DECW      X
        LDW       S:?w2, X
        LDW       X, Y
        INCW      X
        LDW       Y, X
??GetIntFromBuf_0:
        CPW       Y, #0xa
        JRSGE     L:??GetIntFromBuf_1
        LDW       X, Y
        ADDW      X, S:?w4
        LD        A, (X)
        CP        A, #0x30
        JRSLT     L:??GetIntFromBuf_2
        LDW       X, Y
        ADDW      X, S:?w4
        LD        A, (X)
        CP        A, #0x3a
        JRSGE     L:??GetIntFromBuf_2
        LDW       X, Y
        ADDW      X, S:?w4
        LD        A, (X)
        CALLF     L:?sext16_x_a
        LDW       S:?w5, X
        CALLF     L:?mov_w3_w0
        LDW       X, #0xa
        LDW       S:?w0, X
        LDW       X, S:?w3
        CALLF     L:?mul16_x_x_w0
        ADDW      X, S:?w5
        ADDW      X, #0xffffffffffffffd0
        LDW       S:?w0, X
        CLRW      X
        INCW      X
        LDW       S:?w1, X
        LDW       X, Y
        INCW      X
        LDW       Y, X
        JRA       L:??GetIntFromBuf_0
??GetIntFromBuf_2:
??GetIntFromBuf_1:
        LDW       X, S:?w1
        TNZW      X
        JRNE      L:??GetIntFromBuf_3
        CLRW      X
        DECW      X
        JRA       L:??GetIntFromBuf_4
??GetIntFromBuf_3:
        LDW       X, S:?w2
        CALLF     L:?mul16_x_x_w0
??GetIntFromBuf_4:
        JPF       L:?epilogue_l2

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 979 bytes in section .far_func.text
// 
// 979 bytes of CODE memory
//
//Errors: none
//Warnings: none
