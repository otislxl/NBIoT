#ifndef __MAIN_H
#define __MAIN_H

/* Includes ------------------------------------------------------------------*/
#include "stm8l15x.h"
#include "uart1.h"
#include "sysdefs.h"
#include "hwdflash.h"
#include "hwdgpio.h"
#include "Module.h"
#include "ModuleProtocol.h"
#include "defineconst.h"
#include "net.h"

#define CARD_ID_WIDTH   		4
#define KEEP_WORK_MAX_TIME   	20//12

#define period_1000ms     2047  
#define period_500ms       1023  
#define period_10ms      	19 //9

#define voltage_down_level       913  
#define voltage_work_level       1160  
#define voltage_lower_level      1215  
#define voltage_high_level	  1306  

//电池电量状态
typedef enum
{
	POWER_DOWN=0,	// 低电关机
	POWER_LOW_WORK,	// 低电工作电压
	POWER_REMIND,		// 低电提醒
	POWER_FULL,		//满电
}POWER_LEVEL_T;

typedef enum
{
	SLEEP=0,					//haft 灭屏,按任意键直接操作
	WORK_MODE,

	SLEEP_STATE_MAX	
}DEVICE_SLEEP_STATE_T;

extern uint8 SendId;

extern uint8 net_link_cclk_flag;
extern uint8 lowpowerwait_flag;
extern uint8 load_continuous_flag;
extern uint8 g_system_reset_time; 	
extern uint8 power_level_state;
extern uint8 low_power_report_flag;
extern uint8 ModuleSts;

uint16 Get_ADC_Value(uint8 type);
void delay_ms(uint16 time) ;

void set_time(uint8 *time);

void set_rtc_interrupt_flag(uint8 type);

void TimingDelay_Decrement(void);

void stop_rtc_wake(void);

void set_rtc_wake_time(uint16 period);

void get_rtc_time(void);

/*低功耗模式*/
void low_power_mode(void);

extern void RTC_Config_Init(void);

void	go_to_sleep(void);

/*按键唤醒处理*/
void wake_up_from_sleep(void);

/*设置睡眠超时的最小值*/
void set_sleep_counter_min(uint16 n);

void set_sleep_counter_max(uint16 n);

extern void LSE_StabTime(void);

#endif 

