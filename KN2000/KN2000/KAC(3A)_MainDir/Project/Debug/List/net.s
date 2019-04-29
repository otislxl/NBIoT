///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:14
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\net.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\net.c" -e --char_is_signed
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\net.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b8
        EXTERN ?sext16_x_a
        EXTERN ?w0
        EXTERN AtDelayTime
        EXTERN ModuleIniDisp
        EXTERN ModuleNetBreakHandle
        EXTERN ModuleNetLinkHandle
        EXTERN ModuleSts
        EXTERN Moudleinfo
        EXTERN NetBreakHandle
        EXTERN SetNoDataTimeCount
        EXTERN load_continuous_flag
        EXTERN set_sleep_counter_max
        EXTERN set_sleep_counter_min
        EXTERN tcp_had_linked_flag

        PUBLIC net_link_handle
        PUBLIC net_low_poewr_mode
        PUBLIC set_net_state


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
set_net_state:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CALLF     L:?sext16_x_a
        LD        A, L:ModuleSts
        CLRW      Y
        LD        YL, A
        LDW       S:?w0, Y
        CPW       X, S:?w0
        JRNE      L:??set_net_state_0
        JRA       L:??set_net_state_1
??set_net_state_0:
        LD        A, S:?b8
        LD        L:ModuleSts, A
        LD        A, L:ModuleSts
        TNZ       A
        JREQ      L:??set_net_state_2
        DEC       A
        JREQ      L:??set_net_state_3
        DEC       A
        JREQ      L:??set_net_state_4
        DEC       A
        JREQ      L:??set_net_state_5
        JRA       L:??set_net_state_6
??set_net_state_2:
        JRA       L:??set_net_state_7
??set_net_state_3:
        JRA       L:??set_net_state_7
??set_net_state_4:
        MOV       L:Moudleinfo + 100, #0x0
        CLRW      X
        CALLF     set_sleep_counter_max
        LD        A, L:Moudleinfo + 101
        CP        A, #0x2
        JREQ      L:??set_net_state_8
        CALLF     NetBreakHandle
??set_net_state_8:
        JRA       L:??set_net_state_7
??set_net_state_5:
        LD        A, L:tcp_had_linked_flag
        CP        A, #0x0
        JREQ      L:??set_net_state_9
        MOV       L:Moudleinfo + 99, #0x0
        MOV       L:Moudleinfo + 76, #0x0
??set_net_state_9:
        LDW       X, #0x12
        CALLF     set_sleep_counter_min
        JRA       L:??set_net_state_7
??set_net_state_6:
??set_net_state_7:
??set_net_state_1:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
net_link_handle:
        LD        A, L:AtDelayTime
        CP        A, #0x0
        JREQ      L:??net_link_handle_0
        JRA       L:??net_link_handle_1
??net_link_handle_0:
        LD        A, L:Moudleinfo + 67
        CP        A, #0x1
        JRNE      L:??net_link_handle_2
        JRA       L:??net_link_handle_1
??net_link_handle_2:
        LD        A, L:ModuleSts
        TNZ       A
        JREQ      L:??net_link_handle_3
        DEC       A
        JREQ      L:??net_link_handle_3
        DEC       A
        JREQ      L:??net_link_handle_4
        DEC       A
        JREQ      L:??net_link_handle_5
        JRA       L:??net_link_handle_6
??net_link_handle_3:
        CALLF     ModuleIniDisp
        CP        A, #0x1
        JRNE      L:??net_link_handle_7
        LD        A, #0x3
        CALLF     set_net_state
??net_link_handle_7:
        JRA       L:??net_link_handle_8
??net_link_handle_4:
        CALLF     ModuleNetLinkHandle
        JRA       L:??net_link_handle_8
??net_link_handle_5:
        CALLF     ModuleNetBreakHandle
        JRA       L:??net_link_handle_8
??net_link_handle_6:
??net_link_handle_8:
??net_link_handle_1:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
net_low_poewr_mode:
        LD        A, L:ModuleSts
        CP        A, #0x2
        JRC       L:??net_low_poewr_mode_0
        LD        A, #0x3
        CALLF     set_net_state
??net_low_poewr_mode_0:
        MOV       L:load_continuous_flag, #0x0
        CLR       A
        CALLF     SetNoDataTimeCount
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 190 bytes in section .far_func.text
// 
// 190 bytes of CODE memory
//
//Errors: none
//Warnings: none
