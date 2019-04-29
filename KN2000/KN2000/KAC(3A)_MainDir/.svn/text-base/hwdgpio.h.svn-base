#ifndef _HWDGPIO_H_
#define _HWDGPIO_H_
#include "stm8l15x.h"
#include "sysdefs.h"

//绿灯控制脚定义
#define LIGHT_GREEN_T  GPIOA
#define LIGHT_GREEN_P  GPIO_Pin_2

//渐变灯控制脚定义
#define LIGHT_CHANGE_T  GPIOA
#define LIGHT_CHANGE_P  GPIO_Pin_3

//电量检测脚定义
#define POWER_ADC_GPIO			GPIOA
#define POWER_ADC_PIN			GPIO_Pin_5

//充电检测脚定义
#define CHARGER_INT_T  GPIOA
#define CHARGER_INT_P  GPIO_Pin_6

//USB检测脚定义
#define USB_DET_T  GPIOA
#define USB_DET_P  GPIO_Pin_7

//NB模块电源脚定义
#define NB_POWKEY_T       GPIOD
#define NB_POWKEY_P        GPIO_Pin_5

//NB模块复位脚定义
#define NB_RESET_T       GPIOD
#define NB_RESET_P        GPIO_Pin_6

//NB模块唤醒脚定义
#define NB_WAKE_T       GPIOD
#define NB_WAKE_P       GPIO_Pin_7 

#define REDLED 0 
#define GREENLED  1

///////////////////////////////
 
void NB_IO_RESET(void);

//控制模块复位
void NB_IO_RESETGPIO_INI(void);
void SetNB_IO_RESETGpio(unsigned char flag);
void LightenLed(unsigned char color);
void ExtinguishLed(unsigned char color);

/* GPIO 初始化*/
void hw_board_gpio_init(void);

#endif 
