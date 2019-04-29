#include "stm8l15x.h"
#include "main.h"
#include "ModuleProtocol.h"
#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include "stm8l15x_rtc.h"

extern RTC_TimeTypeDef   RTC_TimeStr;
extern RTC_DateTypeDef   RTC_DateStr;

void stop_rtc_wake(void)
{
	
	RTC_ITConfig(RTC_IT_WUT, DISABLE);
	RTC_WakeUpCmd(DISABLE);
}

void set_rtc_wake_time(uint16 period)
{
	stop_rtc_wake();
	/* Configures the RTC wakeup timer_step = RTCCLK/16 = LSE/16 = 488.28125 us */
	RTC_WakeUpClockConfig(RTC_WakeUpClock_RTCCLK_Div16);
	
	/* Enable wake up unit Interrupt */
	RTC_ITConfig(RTC_IT_WUT, ENABLE);
	
	/* Enable general Interrupt*/
	enableInterrupts();
	
	/* RTC wake-up event every 500 ms (timer_step x (1023 + 1) )*/
	//	RTC_SetWakeUpCounter(1023);
	RTC_SetWakeUpCounter(period);
	
	RTC_WakeUpCmd(ENABLE);
}

void Calendar_Init(void)
{
	RTC_InitTypeDef   RTC_InitStr;
	
	RTC_InitStr.RTC_HourFormat = RTC_HourFormat_24;
	RTC_InitStr.RTC_AsynchPrediv = 0x7F;
	RTC_InitStr.RTC_SynchPrediv = 0x00FF;
	RTC_Init(&RTC_InitStr);
	
	RTC_TimeStructInit(&RTC_TimeStr);
	RTC_TimeStr.RTC_Hours   = 0x10;
	RTC_TimeStr.RTC_Minutes = 00;
	RTC_TimeStr.RTC_Seconds = 00;
	RTC_SetTime(RTC_Format_BIN, &RTC_TimeStr);
	
	RTC_DateStr.RTC_Year   = 19;
	RTC_DateStr.RTC_Month = RTC_Month_January;
	RTC_DateStr.RTC_Date = 1;
	RTC_SetDate(RTC_Format_BIN, &RTC_DateStr);
}


void RTC_Config_Init(void)
{
	/* Enable LSE */
	CLK_LSEConfig(CLK_LSE_ON);
	/* Wait for LSE clock to be ready */
	while (CLK_GetFlagStatus(CLK_FLAG_LSERDY) == RESET);
	
	/* wait for 1 second for the LSE Stabilisation */
//	LSE_StabTime();
	
	/* Select LSE (32.768 KHz) as RTC clock source */
	CLK_RTCClockConfig(CLK_RTCCLKSource_LSE, CLK_RTCCLKDiv_1);
	
	CLK_PeripheralClockConfig(CLK_Peripheral_RTC, ENABLE);
	while (RTC_WaitForSynchro() != SUCCESS);
	/* Calendar Configuration */
	Calendar_Init();         //设置时钟的格式
	
	/*RTC Tamper Configuration*/
	//  Tamper_Init();
	
}

void set_time(uint8 *time)
{
	RTC_TimeStructInit(&RTC_TimeStr);
	RTC_TimeStr.RTC_Hours   = time[0];
	RTC_TimeStr.RTC_Minutes = time[1];
	RTC_TimeStr.RTC_Seconds = time[2];
	RTC_SetTime(RTC_Format_BIN, &RTC_TimeStr);
}

void set_date(uint8 *date)
{
	RTC_DateStr.RTC_Year   = date[0];
	RTC_DateStr.RTC_Month = (RTC_Month_TypeDef)date[1];
	RTC_DateStr.RTC_Date = date[2];
	RTC_SetDate(RTC_Format_BIN, &RTC_DateStr);
}
