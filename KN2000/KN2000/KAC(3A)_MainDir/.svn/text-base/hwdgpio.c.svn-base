#include "hwdgpio.h"
#include "stm8l15x.h"
#include "stm8l15x_gpio.h"
#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include "i2c.h"
//控制模块复位
void NB_IO_RESETGPIO_INI(void)
{
  	GPIO_Init(NB_POWKEY_T, NB_POWKEY_P, GPIO_Mode_Out_PP_Low_Slow);
  	GPIO_Init(NB_RESET_T, NB_RESET_P, GPIO_Mode_Out_PP_Low_Slow);
  	GPIO_Init(NB_WAKE_T, NB_WAKE_P, GPIO_Mode_Out_PP_High_Slow);
}

void SetNB_IO_RESETGpio(unsigned char flag)
{

	if(flag==1)
		GPIO_SetBits(NB_RESET_T,NB_RESET_P);
	else 
          GPIO_ResetBits(NB_RESET_T,NB_RESET_P);
}
void LightenLed(unsigned char color)
{
	if(color==REDLED)
		GPIO_SetBits(LIGHT_CHANGE_T,CHARGER_INT_P);
	else if(color==GREENLED)
		GPIO_SetBits(LIGHT_GREEN_T,LIGHT_GREEN_P);
}
void ExtinguishLed(unsigned char color)
{
	if(color==REDLED)
		GPIO_ResetBits(LIGHT_CHANGE_T,LIGHT_CHANGE_P);
	else if(color==GREENLED)
		GPIO_ResetBits(LIGHT_GREEN_T,LIGHT_GREEN_P);
}
/* GPIO 初始化*/
void hw_board_gpio_init(void)
{
	//初始化NB的gpio
	NB_IO_RESETGPIO_INI();
	//初始化WIFI的gpio
	WIFI_Module_Init();

	GPIO_Init(USB_DET_T, USB_DET_P, GPIO_Mode_In_FL_No_IT);

  	GPIO_Init(CHARGER_INT_T, CHARGER_INT_P, GPIO_Mode_In_FL_No_IT);

  	GPIO_Init(LIGHT_GREEN_T, LIGHT_GREEN_P, GPIO_Mode_Out_PP_Low_Slow);

  	GPIO_Init(LIGHT_CHANGE_T, LIGHT_CHANGE_P, GPIO_Mode_Out_PP_Low_Slow);
}

