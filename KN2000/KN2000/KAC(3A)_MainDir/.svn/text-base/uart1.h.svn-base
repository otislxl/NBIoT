#ifndef __UART1_H
#define __UART1_H


/* 包含系统头文件 */
#include "stm8l15x.h"
#include "stm8l15x_syscfg.h"
#include "main.h"
#include "stdarg.h"
#include <stdio.h>
#include <stdlib.h>
#include "uart1.h"

#define UART1_CACHE_MAX	200
#define UART_REV_MAX   		1100
#define UART_SEND_MAX		450
#define UART_SAM_MAX   		280
#define UART_FINGER_MAX	32

/* 串口未收到数据超时计数*/
#define UART_ERROR_CNT_MAX	1000

extern uint8_t uart_rx[];
extern uint8_t uart_rx_read;	
extern uint8_t uart_rx_write;	

/* Private define ------------------------------------------------------------*/
#ifdef _RAISONANCE_
#define PUTCHAR_PROTOTYPE int putchar (char c)
#define GETCHAR_PROTOTYPE int getchar (void)
#elif defined (_COSMIC_)
#define PUTCHAR_PROTOTYPE char putchar (char c)
#define GETCHAR_PROTOTYPE char getchar (void)
#else /* _IAR_ */
#define PUTCHAR_PROTOTYPE int putchar (int c)
#define GETCHAR_PROTOTYPE int getchar (void)
#endif /* _RAISONANCE_ */

void Uart_Init(void);
void Uart_PowerOn_Config (void);
void Uart_PowerLow_Config (void);
void UART1_SendByte(uint8_t data);
void UART1_SendStr(uint8_t *str,uint16_t len);
void UART1_ISR(uint8_t a);

void UART2_SendStr(uint8_t *str,uint16_t len);

void Usart3_Init(void);
void UART3_SendStr(uint8_t *str,uint16_t len);
/* 串口3通讯数据接收函数*/
void UART3_ISR(uint8_t data);

#endif

