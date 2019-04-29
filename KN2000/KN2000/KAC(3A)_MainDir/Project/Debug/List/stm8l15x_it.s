///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V2.10.4.157 for STM8                28/Apr/2019  15:24:14
// Copyright 2010-2015 IAR Systems AB.
//
//    Source file  =  E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\stm8l15x_it.c
//    Command line =  
//        "E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\stm8l15x_it.c" -e
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
//        E:\PETPOSITION\KN2000(01)\KAC(3A)_MainDir\Project\Debug\List\stm8l15x_it.s
//
///////////////////////////////////////////////////////////////////////////////

        EXTERN ?b8
        EXTERN ?pop_l0
        EXTERN ?pop_l1
        EXTERN ?push_l0
        EXTERN ?push_l1
        EXTERN EXTI_ClearITPendingBit
        EXTERN RTC_ClearITPendingBit
        EXTERN RTC_GetFlagStatus
        EXTERN TIM2_ClearITPendingBit
        EXTERN TIM2_GetITStatus
        EXTERN TIM3_ClearITPendingBit
        EXTERN TIM3_GetITStatus
        EXTERN Timer3ProgramHandle
        EXTERN TimingDelay_Decrement
        EXTERN UART1_ISR
        EXTERN UART2_ISR
        EXTERN UART3_ISR
        EXTERN USART_ClearITPendingBit
        EXTERN USART_ReceiveData8
        EXTERN set_rtc_interrupt_flag

        PUBLIC ADC1_COMP_IRQHandler
        PUBLIC DMA1_CHANNEL0_1_IRQHandler
        PUBLIC DMA1_CHANNEL2_3_IRQHandler
        PUBLIC EXTI0_IRQHandler
        PUBLIC EXTI1_IRQHandler
        PUBLIC EXTI2_IRQHandler
        PUBLIC EXTI3_IRQHandler
        PUBLIC EXTI4_IRQHandler
        PUBLIC EXTI5_IRQHandler
        PUBLIC EXTI6_IRQHandler
        PUBLIC EXTI7_IRQHandler
        PUBLIC EXTIB_G_IRQHandler
        PUBLIC EXTID_H_IRQHandler
        PUBLIC EXTIE_F_PVD_IRQHandler
        PUBLIC FLASH_IRQHandler
        PUBLIC I2C1_SPI2_IRQHandler
        PUBLIC LCD_AES_IRQHandler
        PUBLIC RTC_CSSLSE_IRQHandler
        PUBLIC SPI1_IRQHandler
        PUBLIC SWITCH_CSS_BREAK_DAC_IRQHandler
        PUBLIC TIM1_CC_IRQHandler
        PUBLIC TIM1_UPD_OVF_TRG_COM_IRQHandler
        PUBLIC TIM2_CC_USART2_RX_IRQHandler
        PUBLIC TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler
        PUBLIC TIM3_CC_USART3_RX_IRQHandler
        PUBLIC TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler
        PUBLIC TIM4_UPD_OVF_TRG_IRQHandler
        PUBLIC TRAP_IRQHandler
        PUBLIC USART1_RX_TIM5_CC_IRQHandler
        PUBLIC USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler
        PUBLIC _interrupt_1
        PUBLIC _interrupt_10
        PUBLIC _interrupt_11
        PUBLIC _interrupt_12
        PUBLIC _interrupt_13
        PUBLIC _interrupt_14
        PUBLIC _interrupt_15
        PUBLIC _interrupt_16
        PUBLIC _interrupt_17
        PUBLIC _interrupt_18
        PUBLIC _interrupt_19
        PUBLIC _interrupt_20
        PUBLIC _interrupt_21
        PUBLIC _interrupt_22
        PUBLIC _interrupt_23
        PUBLIC _interrupt_24
        PUBLIC _interrupt_25
        PUBLIC _interrupt_26
        PUBLIC _interrupt_27
        PUBLIC _interrupt_28
        PUBLIC _interrupt_29
        PUBLIC _interrupt_3
        PUBLIC _interrupt_30
        PUBLIC _interrupt_31
        PUBLIC _interrupt_4
        PUBLIC _interrupt_5
        PUBLIC _interrupt_6
        PUBLIC _interrupt_7
        PUBLIC _interrupt_8
        PUBLIC _interrupt_9


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TRAP_IRQHandler:
_interrupt_1:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_IRQHandler:
_interrupt_3:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
DMA1_CHANNEL0_1_IRQHandler:
_interrupt_4:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
DMA1_CHANNEL2_3_IRQHandler:
_interrupt_5:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
RTC_CSSLSE_IRQHandler:
_interrupt_6:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       X, #0x20
        CALLF     RTC_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??RTC_CSSLSE_IRQHandler_0
        LDW       X, #0xf01
        CALLF     RTC_ClearITPendingBit
??RTC_CSSLSE_IRQHandler_0:
        LD        A, #0x1
        CALLF     set_rtc_interrupt_flag
        LDW       X, #0x40
        CALLF     RTC_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTIE_F_PVD_IRQHandler:
_interrupt_7:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTIB_G_IRQHandler:
_interrupt_8:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTID_H_IRQHandler:
_interrupt_9:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI0_IRQHandler:
_interrupt_10:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        CLRW      X
        INCW      X
        CALLF     EXTI_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI1_IRQHandler:
_interrupt_11:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       X, #0x2
        CALLF     EXTI_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI2_IRQHandler:
_interrupt_12:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       X, #0x4
        CALLF     EXTI_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI3_IRQHandler:
_interrupt_13:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       X, #0x8
        CALLF     EXTI_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI4_IRQHandler:
_interrupt_14:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       X, #0x10
        CALLF     EXTI_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI5_IRQHandler:
_interrupt_15:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       X, #0x20
        CALLF     EXTI_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI6_IRQHandler:
_interrupt_16:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI7_IRQHandler:
_interrupt_17:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       X, #0x80
        CALLF     EXTI_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
LCD_AES_IRQHandler:
_interrupt_18:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SWITCH_CSS_BREAK_DAC_IRQHandler:
_interrupt_19:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_COMP_IRQHandler:
_interrupt_20:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler:
_interrupt_21:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        PUSH      S:?b8
        LD        A, #0x1
        CALLF     TIM2_GetITStatus
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_0
        CALLF     TimingDelay_Decrement
        LD        A, #0x1
        CALLF     TIM2_ClearITPendingBit
??TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_0:
        POP       S:?b8
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_CC_USART2_RX_IRQHandler:
_interrupt_22:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       Y, #0x255
        LDW       X, #0x53e0
        CALLF     USART_ClearITPendingBit
        LDW       X, #0x53e0
        CALLF     USART_ReceiveData8
        CALLF     UART2_ISR
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler:
_interrupt_23:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        PUSH      S:?b8
        LD        A, #0x1
        CALLF     TIM3_GetITStatus
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler_0
        CALLF     Timer3ProgramHandle
        LD        A, #0x1
        CALLF     TIM3_ClearITPendingBit
??TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler_0:
        POP       S:?b8
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM3_CC_USART3_RX_IRQHandler:
_interrupt_24:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       Y, #0x255
        LDW       X, #0x53f0
        CALLF     USART_ClearITPendingBit
        LDW       X, #0x53f0
        CALLF     USART_ReceiveData8
        CALLF     UART3_ISR
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_UPD_OVF_TRG_COM_IRQHandler:
_interrupt_25:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_CC_IRQHandler:
_interrupt_26:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_UPD_OVF_TRG_IRQHandler:
_interrupt_27:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI1_IRQHandler:
_interrupt_28:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler:
_interrupt_29:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       Y, #0x266
        LDW       X, #0x5230
        CALLF     USART_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
USART1_RX_TIM5_CC_IRQHandler:
_interrupt_30:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       Y, #0x255
        LDW       X, #0x5230
        CALLF     USART_ClearITPendingBit
        LDW       X, #0x5230
        CALLF     USART_ReceiveData8
        CALLF     UART1_ISR
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C1_SPI2_IRQHandler:
_interrupt_31:
        IRET

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 550 bytes in section .far_func.text
// 
// 550 bytes of CODE memory
//
//Errors: none
//Warnings: none
