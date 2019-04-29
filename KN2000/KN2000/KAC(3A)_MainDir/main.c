/**
  *****************************************************************************
  * @file    Project/STM8L15x_StdPeriph_Template/main.c
  * @author  MCD Application Team
  * @version V1.6.1
  * @date    30-September-2014
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include "stm8l15x_rtc.h"
#include "EventQueue.h"
#include "OverTimeQueue.h"
#include "bma2x2.h"
#include "Module_wifi.h"
#include "i2c.h"
uint16 SendAtTimeCount=0;
uint8  Sleep_flag=1;

#define TIM2_PERIOD_1   7
#define TIM2_PERIOD_2   15
#define TIM2_PERIOD_4   31
#define TIM2_PERIOD_8   63
#define TIM2_PERIOD_10 	81  //79

uint8 rtc_interrupt_flag = FALSE;
uint8 lowpowerwait_flag = WORK_MODE;
uint8 sleep_counter = 0;			//睡眠等待时间
uint8 had_get_adc_flag = FALSE;	//上电第一次检测ADC
uint8 net_link_cclk_flag = FALSE;	//获取时间标志
uint8 load_continuous_flag = FALSE;	//多包下载数据标志

uint8 g_system_reset_time = 0; 		//重启时间	
	
uint16 ms500Count=0;

RTC_TimeTypeDef   RTC_TimeStr;
RTC_DateTypeDef   RTC_DateStr;
uint8 last_date=0;						//最后更新日期

CONST uint8_t RTC_TampFilter[4] = {RTC_TamperFilter_1Sample, RTC_TamperFilter_2Sample,
                                     RTC_TamperFilter_4Sample, RTC_TamperFilter_8Sample};
__IO uint8_t TampFilterIndex = 1;

uint16 ADCdata = 0,ADC_VALUE_CALCULATE = 0;
uint8 adc_cnt = 0;
uint8 power_level_state = POWER_FULL;		//电池电量状态
uint8 low_power_report_flag = FALSE;		//低电已上报标志
char IniFlagFlag=0;						//恢复出厂等待按#确认的状态

extern void Timer3_Init(void);

uint8 ModuleSts;

/**
  * @addtogroup TIMING_DELAY_Functions
  */

/**
  * @brief  timing delay init:to generate 1 ms time base using TIM2 update interrupt
  * @note   The external low speed clock (LSE) is used to ensure timing accuracy.
  *         This function should be updated in case of use of other clock source.      
  * @param  None
  * @retval None
  */
void Tim2Delay_Init(void)
{
  /* Enable TIM2 clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);

  /* Remap TIM2 ETR to LSE: TIM2 external trigger becomes controlled by LSE clock */
  SYSCFG_REMAPPinConfig(REMAP_Pin_TIM2TRIGLSE, ENABLE);

  /* Enable LSE clock */
  CLK_LSEConfig(CLK_LSE_ON);
  /* Wait for LSERDY flag to be reset */
  while (CLK_GetFlagStatus(CLK_FLAG_LSERDY) == RESET);

  /* TIM2 configuration:
     - TIM2 ETR is mapped to LSE
     - TIM2 counter is clocked by LSE div 4
      so the TIM2 counter clock used is LSE / 4 = 32.768 / 4 = 8.192 KHz
     TIM2 Channel1 output frequency = TIM2CLK / (TIM2 Prescaler * (TIM2_PERIOD + 1))
                                    = 8192 / (1 * 8) = 1024 Hz                */
                                    
  /* Time Base configuration */
  TIM2_TimeBaseInit(TIM2_Prescaler_1, TIM2_CounterMode_Up, TIM2_PERIOD_10);
  TIM2_ETRClockMode2Config(TIM2_ExtTRGPSC_DIV4, TIM2_ExtTRGPolarity_NonInverted, 0);

  TIM2_UpdateRequestConfig(TIM2_UpdateSource_Global);

  /* Clear TIM2 update flag */
  TIM2_ClearFlag(TIM2_FLAG_Update);

  /* Enable update interrupt */
  TIM2_ITConfig(TIM2_IT_Update, ENABLE);

  TIM2_Cmd(ENABLE);
}
	
void ADC_Config(void)
{
	ADC_DeInit(ADC1);
	
  GPIO_Init(GPIOA, GPIO_Pin_5, GPIO_Mode_In_FL_No_IT );
  /* Enable ADC1 clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
  /* Initialise and configure ADC1 */
  ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2); 
  ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_24Cycles);
  /* Enable ADC1 */
  ADC_Cmd(ADC1, ENABLE);
  /* Disable SchmittTrigger for ADC_Channel, to save power */
  ADC_SchmittTriggerConfig(ADC1, ADC_Channel_1, DISABLE);
  /* Enable ADC1 Channel 3 */
  ADC_ChannelCmd(ADC1, ADC_Channel_1, ENABLE);
  /* Start ADC1 Conversion using Software trigger*/
  ADC_SoftwareStartConv(ADC1);
  ADC_Cmd(ADC1,DISABLE);
}

//读电量，输入参数1为开锁时读取电压，0为待机读取；返回电量值
uint16 Get_ADC_Value(uint8 type)
{
	uint32 vo_data,check_data,vrefint_data;
    /* Calculate voltage value*/
	/*3.5V--913;4.0V--1035; 4.5V--1159; 4.9V--1240; 5.3V--1306; 5.7V--1361; 6.1V--1408; 6.4V--1431*/
	/*v=(1.224/ADC_Data)*255	   // ADC需要转成十进制数进行计算*/
	ADC_DeInit(ADC1);
	ADC_Cmd(ADC1,ENABLE);
       ADC_VrefintCmd(ENABLE);		//使能内部参考电压

	ADC_ChannelCmd(ADC1, ADC_Channel_1, ENABLE);
	ADC_SoftwareStartConv(ADC1);
	while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC)==RESET);
	check_data = ADC_GetConversionValue(ADC1);
	ADC_ChannelCmd(ADC1, ADC_Channel_1, DISABLE);

	ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, ENABLE);	//使能内部参考电压通道
	ADC_SoftwareStartConv(ADC1);
	while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC)==RESET);
	vrefint_data = ADC_GetConversionValue(ADC1);
	ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, DISABLE);
       ADC_VrefintCmd(DISABLE);	//失能内部参考电压
	ADC_Cmd(ADC1,DISABLE);

	vo_data = 1224*check_data/vrefint_data;
	if(type==0)
	{
		ADC_VALUE_CALCULATE += vo_data;
		adc_cnt++;	
		if(adc_cnt==4)
		{	ADCdata=ADC_VALUE_CALCULATE/4;
			ADC_VALUE_CALCULATE=0;
			adc_cnt=0;
			if(ADCdata < voltage_down_level)
			{
				power_level_state = POWER_DOWN;
			}
			else if(ADCdata < voltage_lower_level)
			{
				power_level_state = POWER_REMIND;
			}
			Moudleinfo.batt = ADCdata;
		}
		if(had_get_adc_flag == FALSE)
		{
			had_get_adc_flag = TRUE;
			Moudleinfo.batt = vo_data;
			if(vo_data < voltage_lower_level)
			{
				power_level_state = POWER_REMIND;
			}
		}
		if(vo_data > voltage_high_level)
		{
			if(power_level_state<=POWER_REMIND)
				Moudleinfo.batt = vo_data;
			power_level_state = POWER_FULL;
			low_power_report_flag = FALSE;
		}
		else if(vo_data > voltage_work_level)
		{
			//关机后4.5V以上可以开启工作
			if(power_level_state == POWER_DOWN)
			{
				power_level_state = POWER_REMIND;
			}
		}
	}
	return vo_data;
}


RTC_AlarmTypeDef  RTC_AlarmStr;

/**
  * @brief  Calendar Configuration.
  * @param  None
  * @retval None
  */




/**
  * @brief  RTC Tamper Configuration.
  * @param  None
  * @retval None
  */
void Tamper_Init(void)
{
  RTC_TamperFilterConfig((RTC_TamperFilter_TypeDef)RTC_TampFilter[TampFilterIndex]);
  RTC_TamperSamplingFreqConfig(RTC_TamperSamplingFreq_RTCCLK_Div32768);

  RTC_TamperPinsPrechargeDuration(RTC_TamperPrechargeDuration_None);
  RTC_TamperLevelConfig(RTC_Tamper_1, RTC_TamperLevel_Low );
  RTC_TamperCmd(RTC_Tamper_1, ENABLE);
  RTC_ITConfig(RTC_IT_TAMP, ENABLE);


/*  
	RTC_AlarmCmd(DISABLE);
	RTC_AlarmStructInit(&amp;RTC_AlarmStr);
	RTC_AlarmStr.RTC_AlarmTime.RTC_Hours   = 01;
	RTC_AlarmStr.RTC_AlarmTime.RTC_Minutes = 03;
	RTC_AlarmStr.RTC_AlarmTime.RTC_Seconds = 01;
	RTC_AlarmStr.RTC_AlarmMask = RTC_AlarmMask_DateWeekDay;
	RTC_SetAlarm(RTC_Format_BIN, &amp;RTC_AlarmStr);
   
	RTC_ITConfig(RTC_IT_ALRA, ENABLE);
	RTC_AlarmCmd(ENABLE);
	RTC_ITConfig(RTC_IT_WUT, DISABLE);
*/
}


/**
  * @brief  Wait 1 sec for LSE stabilisation .
  * @param  None.
  * @retval None.
  * Note : TIM4 is configured for a system clock = 2MHz
  */
void LSE_StabTime(void)
{
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE);

  /* Configure TIM4 to generate an update event each 1 s */
  TIM4_TimeBaseInit(TIM4_Prescaler_16384, 123);

  /* Enable TIM4 */
  TIM4_Cmd(ENABLE);

  /* Wait 1 sec */
  while ( TIM4_GetFlagStatus(TIM4_FLAG_Update) == RESET );

  TIM4_ClearFlag(TIM4_FLAG_Update);

  /* Disable TIM4 */
  TIM4_Cmd(DISABLE);

  CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, DISABLE);
}

void SystemClock_Init(void)
{
//使用宏定义的写法
 
#ifdef  HSE_Enable
     while (!CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE,\
            CLK_CURRENTCLOCKSTATE_DISABLE));
     //切换到外部时钟,并等待时钟却换成功
#else
//	CLK_HSICmd(ENABLE);
//	CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);
//	CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1); 

	CLK_HSICmd(ENABLE);             //打开高速内部时钟

  // while ( (CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == RESET));


	while (((CLK->ICKCR)& 0x02)!=0x02);

	CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);
	CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);
	if (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSI)
	{
		CLK_SYSCLKSourceSwitchCmd(ENABLE);
		while (((CLK->SWCR)& 0x01)==0x01);
	}
#endif   
}

//配置GPIO口，这边把不需要的IO口都设置为高电平推挽输出，以降低功耗
void GPIO_LowPower_Config(void)
{
	GPIO_Init(GPIOD,GPIO_Pin_2 | GPIO_Pin_7,GPIO_Mode_Out_PP_High_Slow);
	GPIO_Init(GPIOF,GPIO_Pin_0 | GPIO_Pin_1,GPIO_Mode_Out_PP_High_Slow);
}
unsigned long int GsensorGetStepCount(void)
{
	unsigned long int Step=0;
	/* bma2x2acc_data structure used to read accel xyz data*/
	struct bma2x2_accel_data sample_xyz;
	/* Local variable used to assign the bandwidth value*/
	u8 bw_value_u8 = BMA2x2_INIT_VALUE;
#if 0 
	/* bma2x2acc_data_temp structure used to read
		accel xyz and temperature data*/
	struct bma2x2_accel_data_temp sample_xyzt;
	/* Local variable used to set the bandwidth value*/
	u8 banwid = BMA2x2_INIT_VALUE;
#endif	
	bma2x2_set_power_mode(BMA2x2_MODE_NORMAL);

	/* This API used to Write the bandwidth of the sensor input
	value have to be given
	bandwidth is set from the register 0x10 bits from 1 to 4*/
	bw_value_u8 = 0x08;/* set bandwidth of 7.81Hz*/
	bma2x2_set_bw(bw_value_u8);
#if 0	
	/* This API used to read back the written value of bandwidth*/
	bma2x2_get_bw(&banwid);

	/* Read the accel X data*/
	bma2x2_read_accel_x(&accel_x_s16);
	/* Read the accel Y data*/
	bma2x2_read_accel_y(&accel_y_s16);
	/* Read the accel Z data*/
	bma2x2_read_accel_z(&accel_z_s16);

	
	/* accessing the bma2x2acc_data_temp parameter by using sample_xyzt*/
	/* Read the accel XYZT data*/
	bma2x2_read_accel_xyzt(&sample_xyzt);
#endif
	/* accessing the bma2x2acc_data parameter by using sample_xyz*/
	/* Read the accel XYZ data*/
	bma2x2_read_accel_xyz(&sample_xyz);

	PEDO_ProcessAccelarationData(sample_xyz.x, sample_xyz.y, sample_xyz.z);

	Step = PEDO_GetStepCount();
	
	bma2x2_set_power_mode(BMA2x2_MODE_DEEP_SUSPEND);

	return Step;
}

void IWDG_Config(void)
{
  /* Enable IWDG (the LSI oscillator will be enabled by hardware) */
  /*启动IWDG*/
  IWDG_Enable(); 
  
  /* IWDG timeout equal to 214 ms (the timeout may varies due to LSI frequency
     dispersion) */
  /* Enable write access to IWDG_PR and IWDG_RLR registers */
  /*解除PR及RLR的写保护*/
  IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
  
  /* IWDG configuration: IWDG is clocked by LSI = 38KHz */
  /*分频系数为64 1.02s*/
  IWDG_SetPrescaler(IWDG_Prescaler_256);
  
  /* IWDG timeout equal to 214.7 ms (the timeout may varies due to LSI frequency dispersion) */
  /* IWDG timeout = (RELOAD_VALUE + 1) * Prescaler / LSI 
                  = (254 + 1) * 256 / 38 000 
                  = 1.718 s */
  /*看门狗计数器重装载数值*/
  IWDG_SetReload(254);
  
  /* Reload IWDG counter 
  刷新IDDG，避免产生看门狗复位
 看门狗计数器重装载数值护状态*/
  IWDG_ReloadCounter();
}

void delay_ms(uint16 time) 
{         
	uint16 i=0;      
	while(time--)    
	{        
		i=1600;   //自己定义STM32  1ms      
		while(i--)
			;
	}
}

//====================================================================//
// 实现功能：时钟切换：HSI-->LSI
// 参    数：无
// 返 回 值：无
//====================================================================//
void go_to_sleep(void)
{
	Sleep_flag=1;
	{
		CLK_LSEConfig(CLK_LSE_ON);                  		  //目标CLK 先开启
		while (((CLK->ECKCR)& 0x08)!=0x08);          		 //等待目标CLK稳定,f=32768Hz
		CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);      	   //设定目标 CLK的分频参数
		CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_LSI); //设定此CLK 为切换目标CLK
		CLK_SYSCLKSourceSwitchCmd(ENABLE);     	       //开始CLK 切换
		CLK->SWCR |=0X01;                           			  //
		while (((CLK->SWCR)& 0x01)==0x01);			//等待切换后的CLK稳定
		CLK->SWCR &=0X00;
		CLK_HSICmd(DISABLE);                   		       //关闭原先的 CLK source

		CLK_HaltConfig(CLK_Halt_FastWakeup,ENABLE);	//快速唤醒
	//	PWR_FastWakeUpCmd(ENABLE);
		PWR_UltraLowPowerCmd(ENABLE);				//超低功耗

	//	disableInterrupts();  
		sim();                                                     //屏蔽中断
	//	enableInterrupts();
	}

	halt(); 										 //进入Active-Halt模式
}

/*低功耗模式*/
void low_power_mode(void)
{
#if 0
	//设置低功耗
//	TIM2_Cmd(DISABLE);
	GPIO_Init(POWER_ADC_GPIO, POWER_ADC_PIN, GPIO_Mode_Out_PP_Low_Slow );
	TIM3_Cmd(DISABLE);
	Uart_PowerLow_Config();

	net_low_poewr_mode();
	load_continuous_flag = FALSE;
	go_to_sleep();
#endif
}

/**********************************************************************
*FUNCTION NAME	: get_rtc_time
*CREATE	DATA	: 
*CREATED BY		: 
*FUNCTION		:获取时间
*MODIFY	DATA	:
*INPUT			:
*OUTPUT			: 
*RETURN			: 
***********************************************************************/
void get_rtc_time(void)
{
	RTC_GetTime(RTC_Format_BIN, &RTC_TimeStr);
	RTC_GetDate(RTC_Format_BIN, &RTC_DateStr);
	if(RTC_DateStr.RTC_Date != last_date)
	{
		last_date = RTC_DateStr.RTC_Date;
	}
}

/*工作模式*/
void go_to_work(void)
{
	SystemClock_Init();
	GPIO_Init(POWER_ADC_GPIO, POWER_ADC_PIN, GPIO_Mode_In_FL_No_IT );//
	if(power_level_state == POWER_DOWN)
	{
		delay_ms(500);
		Get_ADC_Value(0);
		if(power_level_state == POWER_DOWN)
		{
			GPIO_Init(POWER_ADC_GPIO, POWER_ADC_PIN, GPIO_Mode_Out_PP_Low_Slow );//
			return;
		}
	}
	lowpowerwait_flag = WORK_MODE;
	ModuleResetTime = MOUDLE_WORKING_MAX_TIME;
	TIM3_Cmd(ENABLE);

	Uart_PowerOn_Config ();
	set_sleep_counter_max(0);
	UART1_SendByte(0);
	get_rtc_time();
}

/*设置睡眠超时的最小值*/
void set_sleep_counter_min(uint16 n)
{
	if(sleep_counter < n)
		sleep_counter = n;
}

/*设置睡眠超时的最大值*/
void set_sleep_counter_max(uint16 n)
{
	if(sleep_counter > n)
		sleep_counter = n;
	if((ModuleSts != MODULE_SEND_STS)&&(sleep_counter==0))
		sleep_counter = KEEP_WORK_MAX_TIME-12;
}

void set_rtc_interrupt_flag(uint8 type)
{
 	rtc_interrupt_flag = TRUE;
}

/*按键唤醒处理*/
void wake_up_from_sleep(void)
{

	if(lowpowerwait_flag == SLEEP)
		go_to_work();
}

 //RTC 1S处理函数
uint8  RTC_handle(void)
{
	uint8 Succ=1;

	if(rtc_interrupt_flag == FALSE)
		return 0;

	rtc_interrupt_flag = FALSE;

	ms500Count++;

	if(sleep_counter < 60)
	{
		sleep_counter++;
		if(sleep_counter == KEEP_WORK_MAX_TIME)
		{
			if((EventReadPtr==EventWritePtr) 
				&& (net_link_cclk_flag || (g_at_no_response>10))
				&&(tcp_had_linked_flag==FALSE)
				)
			{
				lowpowerwait_flag = SLEEP;
				low_power_mode();
			}
			else
				sleep_counter --;
				
		}
		if(lowpowerwait_flag == WORK_MODE)
		{
			if ((ModuleResetTime == 0) || (power_level_state == POWER_DOWN))
			{
				lowpowerwait_flag = SLEEP;
				low_power_mode();
			}
		}
		if(g_system_reset_time)
		{
			g_system_reset_time --;
			if(g_system_reset_time == 0)
			{
				wake_up_from_sleep();
				disableInterrupts();  
				asm("JPF $8000"); 
			}
		}
	}
	if (power_level_state == POWER_DOWN)
		return 0;
		
	if((ms500Count%120)==0)
	{
		ModuleResetHandle();
	}

	if(lowpowerwait_flag==WORK_MODE)
	{
		if (Moudleinfo.SendFlag==1)
		{
			   SendAtTimeCount++;
			   
			   if (SendAtTimeCount>4)
			   {
				   SendAtTimeCount=0;
				   Moudleinfo.SendFlag=0;
			   }
		}
		else SendAtTimeCount=0;
		LinkNetTimeOutHandle();
		if(ms500Count&0x01)
		{
			RTC_TimeStr.RTC_Seconds++;
			if(RTC_TimeStr.RTC_Seconds >= 60)
			{
				get_rtc_time();
				Get_ADC_Value(0);
			}
			//启动180秒模块没有有效网络数据则进入睡眠
			if(ModuleResetTime)
			{
				ModuleResetTime--;
				if(ModuleResetTime < 2)
				{
					set_net_state(MODULE_INI_STS);
					tcp_had_linked_flag = FALSE;
				}
			}
		}
	}

   if (Succ==0) return 1;

   return 0;
}

void TimingDelay_Decrement(void)
{

}

void IniBuf(void)
{
  memset(&Moudleinfo,0,sizeof(MODULEINFO));
  EventReadPtr=EventWritePtr=0;
  had_get_adc_flag = FALSE;
}

/*读取复位状态寄存器*/
uint8 READ_RST_CR(void)
{
	uint8 temp=0,k;
	temp = RST->SR;
	if((temp&0x3e) !=0)
	{
		hw_eeprom_read_bytes(NV_RST_CR,(unsigned char*)&k,1);
		hw_eeprom_write_bytes(NV_BACK_RST_CR,(unsigned char*)&k, 1);
		hw_eeprom_write_bytes(NV_RST_CR,(unsigned char*)&temp, 1);
	}
	RST->SR |= 0x3F; 
	return temp;
}

//事件队列处理
void EVENT_Message_Handle(void)
{
	EVENTINFO TempEvent;

	if (GetOneEvent(&TempEvent))
	{
		
		switch (TempEvent.type)
		{
			case PASS_ERROR_OVERTIME_EVENT:
			case PASS_OVERLEN_OVERTIME_EVENT:
			{
				set_sleep_counter_min(KEEP_WORK_MAX_TIME-2);
			}break;
			
			default:break;
		}
	}

}

void main(void)
{   
/**********************  variable   ********************************************/
	uint8 result;
	uint32 step;
/************************GPIO USART I2C SPI Initialization **************************/
	SystemClock_Init();             //配置系统时钟
	hw_board_gpio_init();       //GPIO INIT(NB/WIFI -- POWER&RESET)
	GPIO_LowPower_Config();  //UNUSED GPIO CONFIG
	Gsensor_IIC_Init();           //I2C INIT
	hw_eeprom_flash_init();   //EEPROM INIT
	Uart_Init();                      //USART INIT
	ADC_Config();			//ADC INIT
	Timer3_Init();               	//20ms定时器中断初始化
	RTC_Config_Init();		//RTC INIT
	set_rtc_wake_time(period_1000ms);   //设置rtc唤醒时间
/************************NB MODEM POWER ON ,at least 500 ms falling troggle ***********/
	GPIO_SetBits(NB_POWKEY_T, NB_POWKEY_P);
	delay_ms(800);
        GPIO_ResetBits(NB_POWKEY_T, NB_POWKEY_P);
/************************WIFI MODEM POWER ON ,at least 500 (μs) falling troggle *********/
	GPIO_SetBits(WIFI_KEYPOWER_T, WIFI_KEYPOWER_P);
  	GPIO_SetBits(WIFI_RESET_T, WIFI_RESET_P);
/***********************APPLICATION INIT**************************************/
	IniBuf();
	ModuleResetInit();
	ModuleSts=MODULE_INI_STS;     //模块初始状态
	Protocol_Init();
 	BMA253_Init();
/************************************************************/	
#ifdef SUPPORT_IWDG
	IWDG_Config();				//ENABLE WATCH DOG
#endif
	go_to_work();    //ENTRY  WORK MODE 
	sim();             //DISABLE  INTERRUPT 
	rim();		   //ENABLE  INTERRUPT 
/************************************************************/
	//检测睡眠条件
	result = READ_RST_CR();
	Get_ADC_Value(0);
	if((Moudleinfo.batt < voltage_down_level) 
		&& (result&RST_SR_BORF) 
		)
	{
		power_level_state = POWER_DOWN;
		lowpowerwait_flag = SLEEP;
		low_power_mode();
	}
/*************************************************************/
	
	#if 0
	while (1)
	{
#ifdef SUPPORT_IWDG
		/* Reload IWDG counter 刷新IDDG，避免产生看门狗复位*/
		IWDG_ReloadCounter();  
#endif
		//刷卡检测
		if (RTC_handle()==1)
		{
			wake_up_from_sleep();
		}
		//检测睡眠条件
		if(lowpowerwait_flag == SLEEP)
		{
			halt(); 					//进入WFI模式	  
			SystemClock_Init();
		}
		else 
		{
			//处理NB模块接收数据
			RecAtComFormMoudle();
			//事件队列处理
			EVENT_Message_Handle();
			//网络处理
			net_link_handle();
		
//			if (EventReadPtr == EventWritePtr)
//				wfi();
		}

	}	
	#else
	while(1)
	{
                   delay_ms(1000);
		  	LightenLed(GREENLED);
  			ExtinguishLed(REDLED);
			//step=GsensorGetStepCount();
                   UART2_SendStr((uint8*)"AT\r\n",strlen("AT\r\n"));
			delay_ms(1000);	
			LightenLed(REDLED);
  			ExtinguishLed(GREENLED);	
	}
	#endif

}
	
                

