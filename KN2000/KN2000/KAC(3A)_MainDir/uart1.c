#include "uart1.h"

uint8_t uart_rx[UART1_CACHE_MAX];
uint8_t uart_rx_read;	
uint8_t uart_rx_write;	

/*******************************************************************************
 * ����: Usart1_Init
 * ����: UART1��ʼ��
 * �β�: ��
 * ����: ��
 * ˵��: �� 
 ******************************************************************************/
void Uart1_Init (void)
{
	/* EVAL COM (USARTx) configuration -----------------------------------------*/
	/* USART configured as follow:
	    - BaudRate = 115200 baud  
	    - Word Length = 8 Bits
	    - One Stop Bit
	    - No parity
	    - Receive and transmit enabled
	    - USART Clock disabled
	*/
	uart_rx_read=0;
	uart_rx_write=0;
  /* Enable USART clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);

  //SYSCFG_REMAPDeInit();        
  //SYSCFG_REMAPPinConfig(REMAP_Pin_USART1TxRxPortA,ENABLE);     //
  /* Configure USART Tx as alternate function push-pull  (software pull up)*/
  GPIO_ExternalPullUpConfig(GPIOC, GPIO_Pin_3, ENABLE);

  /* Configure USART Rx as alternate function push-pull  (software pull up)*/
  GPIO_ExternalPullUpConfig(GPIOC, GPIO_Pin_2, ENABLE);

  USART_DeInit(USART1);		//��λUART1 
  /* USART configuration */
  USART_Init(USART1, 9600,
             USART_WordLength_8b,
             USART_StopBits_1,
             USART_Parity_No,
             (USART_Mode_TypeDef)(USART_Mode_Tx | USART_Mode_Rx));

  /* Enable general interrupts */
  enableInterrupts();

  /* Enable the USART Receive interrupt: this interrupt is generated when the USART
    receive data register is not empty */
  USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
  /* Enable the USART Transmit complete interrupt: this interrupt is generated when the USART
    transmit Shift Register is empty */
//  USART_ITConfig(USART1, USART_IT_TC, ENABLE);
 ITC_SetSoftwarePriority(USART1_RX_TIM5_CC_IRQn,ITC_PriorityLevel_3);

  /* Enable USART */
  USART_Cmd(USART1, ENABLE);
}

/*******************************************************************************
 * ����: UART1_SendByte
 * ����: UART1����һ���ֽ�
 * �β�: data -> Ҫ���͵��ֽ�
 * ����: ��
 * ˵��: �� 
 ******************************************************************************/
void UART1_SendByte(uint8_t data)
{
 	uint16_t i=0;
	/* �ȴ�������� */
	while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET)
	{
		i++;
		if(i > 1000)
			break;
	}
 	USART_SendData8(USART1, data);
}

/*******************************************************************************
 * ����: UART1_SendStr
 * ����: UART1����len���ַ�
 * �β�: data -> ָ��Ҫ���͵��ַ���
 *       len -> Ҫ���͵��ֽ���
 * ����: ��
 * ˵��: �� 
 ******************************************************************************/
void UART1_SendStr(uint8_t *str,uint16_t len)
{
	uint16_t i;
	for(i=0;i<len;i++)
		UART1_SendByte(str[i]);
}

 /**************************************************
���ܣ�UART1�����жϷ������
 * �β�: ����
 * ����: ���յ����ַ�
 * ˵��: �� 
**************************************************/
void UART1_ISR(uint8_t a)
{
	uint8_t tempw;
	uart_rx[uart_rx_write] = a;
	tempw=(uart_rx_write + 1) % UART1_CACHE_MAX;

	if (tempw==uart_rx_read)
	{
       //���ջ�������
		return ;
	}
	else
	{
		uart_rx_write=tempw;
	}
}

/*******************************************************************************
 * ����: Usart2_Init
 * ����: UART2��ʼ��
 * �β�: ��
 * ����: ��
 * ˵��: �� 
 ******************************************************************************/
void Usart2_Init(void)
{

  /* Enable USART clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_USART2, ENABLE);

  /* Configure USART Tx as alternate function push-pull  (software pull up)*/
  GPIO_ExternalPullUpConfig(GPIOE, GPIO_Pin_4, ENABLE);

  /* Configure USART Rx as alternate function push-pull  (software pull up)*/
  GPIO_ExternalPullUpConfig(GPIOE, GPIO_Pin_3, ENABLE);

  USART_DeInit(USART2);		//��λUART2 
  /* USART configuration */
  USART_Init(USART2, 115200,
             USART_WordLength_8b,
             USART_StopBits_1,
             USART_Parity_No,
             (USART_Mode_TypeDef)(USART_Mode_Tx | USART_Mode_Rx));

  /* Enable general interrupts */
  enableInterrupts();

  /* Enable the USART Receive interrupt: this interrupt is generated when the USART
    receive data register is not empty */
  USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);

  /* Enable USART */
  USART_Cmd(USART2, ENABLE);
}

/*******************************************************************************
 * ����: UART2_SendStr
 * ����: UART2����len���ַ�
 * �β�: data -> ָ��Ҫ���͵��ַ���
 *       len -> Ҫ���͵��ֽ���
 * ����: ��
 * ˵��: �� 
 ******************************************************************************/
void UART2_SendStr(uint8_t *str,uint16_t len)
{
	uint16_t i,j;
	for(i=0;i<len;i++)
	{
		j = 0;
		while (USART_GetFlagStatus(USART2, USART_FLAG_TC) == RESET)
		{
			j++;
			if(j > 1000)
				break;
		}
	  	USART_SendData8(USART2, str[i]);
	}
}

/*******************************************************************************
 * ����: Usart3_Init
 * ����: UART3��ʼ��
 * �β�: ��
 * ����: ��
 * ˵��: �� 
 ******************************************************************************/
void Usart3_Init(void)
{

  /* Enable USART clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_USART3, ENABLE);

  //SYSCFG_REMAPDeInit();
  SYSCFG_REMAPPinConfig(REMAP_Pin_USART3TxRxPortF,ENABLE);

  /* Configure USART Tx as alternate function push-pull  (software pull up)*/
  GPIO_ExternalPullUpConfig(GPIOF, GPIO_Pin_0, ENABLE);

  /* Configure USART Rx as alternate function push-pull  (software pull up)*/
  GPIO_ExternalPullUpConfig(GPIOF, GPIO_Pin_1, ENABLE);

  USART_DeInit(USART3);		//��λUART3 
  /* USART configuration */
  USART_Init(USART3, 115200,
             USART_WordLength_8b,
             USART_StopBits_1,
             USART_Parity_No,
             (USART_Mode_TypeDef)(USART_Mode_Tx | USART_Mode_Rx));

  /* Enable general interrupts */
  enableInterrupts();

  /* Enable the USART Receive interrupt: this interrupt is generated when the USART
    receive data register is not empty */
  USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
  /* Enable USART */
  USART_Cmd(USART3, ENABLE);
}
/*******************************************************************************
 * ����: UART3_SendStr
 * ����: UART3����len���ַ�
 * �β�: data -> ָ��Ҫ���͵��ַ���
 *       len -> Ҫ���͵��ֽ���
 * ����: ��
 * ˵��: �� 
 ******************************************************************************/
void UART3_SendStr(uint8_t *str,uint16_t len)
{
	uint16_t i,j;
	for(i=0;i<len;i++)
	{
		j = 0;
		while (USART_GetFlagStatus(USART3, USART_FLAG_TC) == RESET)
		{
			j++;
			if(j > 1000)
				break;
		}
	  	USART_SendData8(USART3, str[i]);
	}
}
/* ����3ͨѶ���ݽ��պ���*/
void UART3_ISR(uint8_t data)
{
	
}

//���ڳ�ʼ��
void Uart_Init (void)
{
	Uart1_Init();
#ifdef SUPPORT_WIFI
	Usart2_Init();
#endif
	Usart3_Init();
}

//�������ڽ��빤��ģʽ
void Uart_PowerOn_Config (void)
{
	USART_Cmd(USART1, ENABLE);
#ifdef SUPPORT_WIFI
	USART_Cmd(USART2, ENABLE);
#endif
	USART_Cmd(USART3, ENABLE);
}

//���ڵ͹���
void Uart_PowerLow_Config (void)
{
	USART_Cmd(USART1, DISABLE);
	GPIO_Init(GPIOC,GPIO_Pin_3,GPIO_Mode_In_FL_No_IT);
//	GPIO_Init(GPIOA,GPIO_Pin_2,GPIO_Mode_Out_PP_High_Slow);

#ifdef SUPPORT_WIFI
	USART_Cmd(USART2, DISABLE);
//	GPIO_Init(GPIOE,GPIO_Pin_3 | GPIO_Pin_4,GPIO_Mode_Out_PP_Low_Slow);
	GPIO_Init(GPIOE,GPIO_Pin_3 | GPIO_Pin_4,GPIO_Mode_In_FL_No_IT);
#endif
	
	USART_Cmd(USART3, DISABLE);
}
