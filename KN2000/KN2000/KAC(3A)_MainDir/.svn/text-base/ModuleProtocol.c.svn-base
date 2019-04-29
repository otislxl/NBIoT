#include "stm8l15x.h"
#include "stm8l15x_itc.h"
#include "sysdefs.h"
#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include "EventQueue.h"
#include "OverTimeQueue.h"
#include "Module.h"
#include "ModuleProtocol.h"
#include "stm8l15x_rtc.h"
#include "hwdgpio.h"
//#include "Pedometer.h"
const char version[16] = {"KN2000V1.00"};

uint8 sendstsflag=1;						// 1为需要上报状态

extern uint8 EventQueueLock;

extern RTC_TimeTypeDef   RTC_TimeStr;
extern RTC_DateTypeDef   RTC_DateStr;

uint16 LinkSeverOverTime = 1440;			//心跳周期
uint16 g_update_total_packnum,g_update_present_packnum;
uint16 ModuleResetTime = MOUDLE_WORKING_MAX_TIME;			//模块启动时间
uint16 NoNetDataTime = 2880;				//连续两个心跳没收到网络数据时间
uint8  cur_cmd=0xff;						//当前指令暂存
uint8  ReBackNetBag=FALSE;				//返回给模块的网络包,为TRUE只发送一遍
uint8 g_had_link_manager=FALSE;			//上电连接过卡尔管理平台标志
uint16 pagid=0,allpag=1;					//通信包号及总包数
uint16 NoLinkSeverCount;					//没有链接服务器时间计数,24小时内连接一次
uint8 macaddresarray[17][15]={0};
PEDOSTEPCNT_S Pedostepcnt;
/*3.5V--913;4.0V--1035; 4.5V--1159; 4.9V--1240; 5.3V--1306; 5.7V--1361; 6.1V--1408*/
const uint16 bat_percentage_range[]=
{
	1035,1100,1159,1200,1240,1276,1306,1331,1361,1408
};

//定时器3初始化 20ms中断
void Timer3_Init(void)
{
  /* Enable TIM3 clock */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM3, ENABLE);

  /* Remap TIM3 ETR to LSE: TIM3 external trigger becomes controlled by LSE clock */
  SYSCFG_REMAPPinConfig(REMAP_Pin_TIM3TRIGLSE, ENABLE);

  /* Enable LSE clock */
  CLK_LSEConfig(CLK_LSE_ON);
  /* Wait for LSERDY flag to be reset */
  while (CLK_GetFlagStatus(CLK_FLAG_LSERDY) == RESET);

  /* TIM3 configuration:
     - TIM3 ETR is mapped to LSE
     - TIM3 counter is clocked by LSE div 4
      so the TIM3 counter clock used is LSE / 4 = 32.768 / 4 = 8.192 KHz
     TIM2Channel1 output frequency = TIM2CLK / (TIM2 Prescaler * (TIM2_PERIOD + 1))
                                    = 8192 / (1 * 8) = 1024 Hz                */
                                    
  /* Time Base configuration */
  TIM3_TimeBaseInit(TIM3_Prescaler_1, TIM3_CounterMode_Up, 163);
  TIM3_ETRClockMode2Config(TIM3_ExtTRGPSC_DIV4, TIM3_ExtTRGPolarity_NonInverted, 0);

  TIM3_UpdateRequestConfig(TIM3_UpdateSource_Global);

  /* Clear TIM2 update flag */
  TIM3_ClearFlag(TIM3_FLAG_Update);

  /* Enable update interrupt */
  TIM3_ITConfig(TIM3_IT_Update, ENABLE);

  ITC_SetSoftwarePriority(TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQn,ITC_PriorityLevel_1);

  TIM3_Cmd(ENABLE);
}

//获取版本号
void get_version(uint8 *buf)
{
	memset(buf,0,16);    
	memcpy(buf,version,strlen(version));    
}
//协议初始化
void Protocol_Init(void)
{
	g_had_link_manager=FALSE;
}

//20ms中断程序
void Timer3ProgramHandle(void)
{  
	Uart1RevHandle();

	if (AtDelayTime>0) 
		AtDelayTime--;

	if (Moudleinfo.SendDataTime>0) 
		Moudleinfo.SendDataTime--;

	if (EventQueueLock==0)   
		DecOverTime();
}

/*更新门禁平台IP*/
void RemoteSetPlantform(uint8 *string)
{
	uint8 nb_ip[16]={0},nb_port[6]={0},flag=0;

	memcpy(nb_ip,string,16);   string+=16;
	memcpy(nb_port,string,6);	string+=6;
	
	hw_eeprom_write_bytes(NV_NB_PLANTFORM_IP, nb_ip,15);
	hw_eeprom_write_bytes(NV_NB_PLANTFORM_PORT,nb_port,5);
	if(memcmp(Moudleinfo.NB_plantform_IP,nb_ip,strlen((char*)nb_ip)))
	{
		flag=1;
 	}
	if(memcmp(Moudleinfo.NB_palntform_PORT,nb_port,strlen((char*)nb_port)))
	{
		flag=1;
 	}
	if(flag)
	{
		GetNBplantformIPandPORT();
	}
}

//时间校准
void check_device_time(uint8 *string)
{  
	uint16 hhmmss0,hhmmss1,SubValue;
	uint8 i,CurTimeBuf[8],*ptr = string;

	for(i=0;i<6;i++)
		CurTimeBuf[i] = BcdToBin(*ptr++);

	RTC_GetTime(RTC_Format_BIN, &RTC_TimeStr);
	RTC_GetDate(RTC_Format_BIN, &RTC_DateStr);

	hhmmss0=CurTimeBuf[4]*60 + CurTimeBuf[5];
	hhmmss1=RTC_TimeStr.RTC_Minutes*60 + RTC_TimeStr.RTC_Seconds;

	if (hhmmss1>hhmmss0) 
		SubValue=hhmmss1-hhmmss0;
	else 
		SubValue=hhmmss0-hhmmss1;

	if (SubValue>5 
		|| RTC_DateStr.RTC_Year !=CurTimeBuf[0] 
		|| RTC_DateStr.RTC_Month !=CurTimeBuf[1] 
		|| RTC_DateStr.RTC_Date !=CurTimeBuf[2]
		|| RTC_TimeStr.RTC_Hours !=CurTimeBuf[3]
		)
	{
		set_date(CurTimeBuf);
		set_time(&CurTimeBuf[3]);
		get_rtc_time();
		net_link_cclk_flag = TRUE; 
	}
}
/**********************************************************************
*FUNCTION NAME	: 
*CREATE	DATA	: 
*CREATED BY		: 
*FUNCTION		: 对接收到的数据进行分析
*MODIFY	DATA	:
*INPUT			:string 有效数据;len数据长度
*OUTPUT			:
*RETURN			:处理数据的长度
***********************************************************************/
uint16 ProtoDataAnalyze(uint8 *string,uint16 len)
{  
	uint32 SubValue;
	unsigned char cmd,check=0,*ptr = string,is_response = TRUE;;
	unsigned short i,lenth;

	unsigned char g_imei_code[18];

	if(	*ptr !=0xaa)
	{
		return 0;
	}
	
	ptr++;
	
	cmd= *ptr++;
	lenth = (*ptr++)<<8;
	lenth += *ptr++;

	if((lenth+4)>len)
	{
		return 0;
	}
		
	pagid = (*ptr++)<<8;
	pagid += *ptr++;
	allpag = (*ptr++)<<8;
	allpag += *ptr++;

	if(string[1]==0xff)
	{
	}
	 else if(pagid == allpag-1)
 	{
		load_continuous_flag = FALSE;
		SetNoDataTimeCount(NO_NET_DATA_TIME);
 	}
	 else
 	{
		set_sleep_counter_max(0);
		SetNoDataTimeCount(NET_DATA_MAX_TIME);
		if(cmd == TRANSF_UPDATE_PACK)
			load_continuous_flag = TRUE;	
 	}
	
	for(i=0;i<(lenth+4);i++)
	{
		check+=*(string+i);
	}
	if(check != string[lenth+4])
  	{
		return 0;
	}
	
	BcdHexToString(&string[8],8,g_imei_code);

	g_imei_code[15]=0;

	if (memcmp(g_imei_code,Moudleinfo.IMEI,15))
	{
		return 0;
	}
	ptr+=8;
	//发送的指令收到回应，则重发次数置0
	if(cmd==cur_cmd || cmd==0xff)
	{
		if(load_continuous_flag == FALSE)
			ReSndCount = 0;
	}
	
	NoNetDataTime = LinkSeverOverTime*2+30;
	//判断是物联网平台应答
	if (string[1]==0xff)
	{
		if (string[16]==REPORT_STS) 
		{
			check_device_time(&string[18]);
		}
		return (lenth+5);
	}

	switch(cmd)
	{
		case REPORT_STS:                        //状态回应
		{
			if(0==*ptr++)
			{
				/*SubValue = (*ptr)<<8;
				SubValue += *(ptr+1);
				if(SubValue)
					LinkSeverOverTime =SubValue;
				if(NoLinkSeverCount > LinkSeverOverTime)
					NoLinkSeverCount =LinkSeverOverTime;
				ptr+=3;
				if(Moudleinfo.ops_type != OPS_TELECOM)
					check_device_time(&(*ptr));
				if(g_had_link_manager == FALSE)
				{
					if(Moudleinfo.ops_type == OPS_TELECOM)
						g_had_link_manager = TRUE;
				}*/
				for(i=0;i<15;i++)
				{
					memcpy(&macaddresarray[0][i],ptr,17);
					ptr+=17;
				}
			}
	
		}break;

	case TRANSF_UPDATE_PACK:
		{
			uint8 tmp,buf[16];
			uint16 check_sum,g_check_sum,pag_len;
			uint32 update_address,update_len=0;
			if(g_system_reset_time == 0)
			{
				is_response = FALSE;
				if(pagid == 0)
				{	
					tmp=0x00;
					hw_eeprom_write_bytes(NV_UPDATE_FLAG,&tmp,1);
					disableInterrupts();  
					hw_eeprom_write_bytes(NV_SOFT_VERSION,ptr,14);
					FLASH_Unlock(FLASH_MemType_Program);
					FLASH_SetProgrammingTime(FLASH_ProgramTime_TProg);
					for(i=0x00;i<FLASH_APP_PROGRAM_BLOCKS;i++)
					{
						FLASH_WaitForLastOperation(FLASH_MemType_Program);
						FLASH_EraseBlock((FLASH_BOOT_PROGRAM_BLOCKS+FLASH_APP_PROGRAM_BLOCKS+i),FLASH_MemType_Program);      // 1page=2block=256bytes    backup area start from c000 to efff
					}
					g_update_total_packnum = allpag;
					g_update_present_packnum = 1;
					enableInterrupts();
				}
				else if(pagid == g_update_present_packnum)
				{
					if(Moudleinfo.ops_type == OPS_TELECOM)
						pag_len = 480;
					else
						pag_len = 512;
					update_address = FLASH_BOOT_PROGRAM_BLOCKS+FLASH_APP_PROGRAM_BLOCKS+pag_len*(g_update_present_packnum-1);
					g_update_present_packnum ++;
					disableInterrupts();  
					FLASH_WaitForLastOperation(FLASH_MemType_Program);
					FLASH_ProgramBlock(update_address, FLASH_MemType_Program,FLASH_ProgramMode_Fast,ptr);
					enableInterrupts();
					if(pagid==(g_update_total_packnum-1))
					{
						hw_eeprom_read_bytes(NV_SOFT_LEN,buf,4);
						update_len = buf[2];
						update_len <<= 8;
						update_len += buf[3];
						hw_eeprom_read_bytes(NV_SOFT_CHECK,buf,2);
						g_check_sum = buf[0]<<8;
						g_check_sum += buf[1];
						check_sum = 0;
						for(i=0;i<update_len;i++)
						{
							tmp=FLASH_ReadByte(FLASH_BOOT_PROGRAM_BLOCKS+FLASH_APP_PROGRAM_BLOCKS+i);
							check_sum +=tmp;
						}
						if(check_sum == g_check_sum)
						{
							tmp=0x0a;
							hw_eeprom_write_bytes(NV_UPDATE_FLAG,&tmp,1);
							g_system_reset_time = 20;
						}
					}
				}
			}			 
		}break;
		
		case TERMINALHEARTBEAT:
		{
			RemoteSetPlantform(ptr);
			g_had_link_manager = TRUE;
		}break;
		
		case DOWN_CONFIG:
		{
			/*uint8 ssid[32+1]={0},pswd[32+1]={0};

			for(i=0;*ptr!=',';i++,ptr++)
			{
				ssid[i]=*ptr;
				}
			ptr++;
			for(i=0;*ptr!=0x0d;i++,ptr++)
			{
				pswd[i]=*ptr;
			}*/
			uint8 locatemode =0xff;
			uint16 heartbeatmove=0,heartbeatstop=0;

			locatemode=*ptr++;

			heartbeatmove = (*ptr++)<<8;
			heartbeatmove += *ptr++;
			
			heartbeatstop = (*ptr++)<<8;
			heartbeatstop += *ptr++;
			
		}break;

	default:break;
		
	}
	if(!is_response)
	{
		/* 平台下发指令处理*/
		ProtoDataOrganized(cmd,NULL,0); 
	}
	else
		Moudleinfo.SendDataTime=0;

	ModuleResetTime = MOUDLE_WORKING_MAX_TIME;
        return (lenth+5);
}


//判断是否需连接网络发送数据TRUE为需要连接
uint8 GetNetNeedLinkState(void)
{
	if (NoLinkSeverCount == 0              
		|| sendstsflag==1
		)
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	}
}

//连接网络后发送后续网络数据函数
void NetActiveHandle(void)
{
	if(load_continuous_flag)
		return;
	//上报报警状态
	if(sendstsflag)
	{
		//生成状态上报的数据
		if ((power_level_state<=POWER_REMIND) && (low_power_report_flag==FALSE))  
		{
			ProtoDataOrganized(REPORT_STS,NULL,1); 
			low_power_report_flag = TRUE;
		}
		else 
		{
			ProtoDataOrganized(REPORT_STS,NULL,0); 
		}
		sendstsflag=0;
		NoLinkSeverCount = LinkSeverOverTime;
	}
	else if(g_had_link_manager == FALSE)
	{
		if(Moudleinfo.ops_type==OPS_TELECOM)
			g_had_link_manager=TRUE;
		else
			ProtoDataOrganized(TERMINALHEARTBEAT,NULL,0); 
	}
}

/**********************************************************************
*FUNCTION NAME	: ProtoDataOrganized
*FUNCTION		: 组织发送网络数据函数
*MODIFY	DATA	:
*INPUT			: cmd 发送指令 card卡号地址  flag 0状态上报1报警上报
*OUTPUT			: none
*RETURN			: 数据长度
***********************************************************************/
unsigned short ProtoDataOrganized(unsigned char cmd,uint8 *card,uint8 flag)
{
	unsigned short i,ptr=0;
	unsigned char check=0,record_num;
	unsigned char g_proto_data[CREATE_PRO_BUF_SIZE];
	
	ReBackNetBag=FALSE;
	cur_cmd = cmd;
	g_proto_data[ptr++] = 0xaa;
	
	g_proto_data[ptr++] = cmd;
	
	ptr+=2;     //lenth
	
 	g_proto_data[ptr++]=(pagid>>8)&0xff;
	g_proto_data[ptr++]=pagid&0xff;
	g_proto_data[ptr++]=(allpag>>8)&0xff;
	g_proto_data[ptr++]=allpag&0xff;
 	for (i=0;i<8;i++)
		 g_proto_data[ptr++]=StrToBcd(&Moudleinfo.IMEI[2*i]);
	switch(cmd)
	{
	case REPORT_STS:	
		{
		get_version(&g_proto_data[ptr]);
		ptr += 32;
		//经16
			
		//纬16

		//海拔16
		
		//MAC1及RSSI1   17+1

		//MAC2及RSSI2
		
		//MAC3及RSSI3
		
		//时间
		sprintf(&g_proto_data[ptr],"20%02d%02d%02d%02d%02d%02d",
		RTC_DateStr.RTC_Year,RTC_DateStr.RTC_Month,RTC_DateStr.RTC_Date,RTC_TimeStr.RTC_Hours,RTC_TimeStr.RTC_Minutes,RTC_TimeStr.RTC_Seconds);
		ptr += 14;
		//消息上报类型
		if(power_level_state<=POWER_REMIND)
			g_proto_data[ptr++]= 1;    				//低电量
		else
			g_proto_data[ptr++]= 0;
		//RSSI
		g_proto_data[ptr++]= Moudleinfo.Csq;        //BCD
		//RSRP
		g_proto_data[ptr++]= (Moudleinfo.rsrp>>8)&0xff;
		g_proto_data[ptr++]= Moudleinfo.rsrp&0xff;
		//ECL
		
		//SINR
		g_proto_data[ptr++]= (Moudleinfo.sinr>>8)&0xff;
		g_proto_data[ptr++]= Moudleinfo.sinr&0xff;
		//电池电量百分比
		record_num = 0;
		for(i=0;i<10;i++)
		{
			if(Moudleinfo.batt>bat_percentage_range[i])
				record_num+=10;
			else
				break;
		}
		g_proto_data[ptr++]= record_num;
		//计步开始时间13	
		memcpy(&g_proto_data[ptr],Pedostepcnt.startcnttime,13);
		ptr+=13;
		//计步结束时间13
		memcpy(&g_proto_data[ptr],Pedostepcnt.endcnttime,13);
		ptr+=13;
		//步数6
		g_proto_data[ptr++]= 0x00;
		g_proto_data[ptr++]= 0x00;
		memcpy(&g_proto_data[ptr],(uint8*)&Pedostepcnt.stepcount,4);
		ptr+=4;
		
		//充电状态
		g_proto_data[ptr++]= 0;

		//Cell ID 16
		
		//PCI
		g_proto_data[ptr++]= (Moudleinfo.pci>>8)&0xff;
		g_proto_data[ptr++]= Moudleinfo.pci&0xff;
		
		}break;
	
	
	case TRANSF_UPDATE_PACK:
		{
		 	g_proto_data[ptr++]= 0x00;   // 错误码
		
		}break;

	case TERMINALHEARTBEAT:
		{			
			memcpy(&g_proto_data[ptr],Moudleinfo.NB_plantform_IP,16);
			ptr+=16;
			memcpy(&g_proto_data[ptr],Moudleinfo.NB_palntform_PORT,6);
			ptr+=6;
			memcpy(&g_proto_data[ptr],Moudleinfo.NB_plantform_IP,16);
			ptr+=16;
			memcpy(&g_proto_data[ptr],Moudleinfo.NB_palntform_PORT,6);
			ptr+=6;

		}break;

	case DOWN_CONFIG:
		{
		 	g_proto_data[ptr++]= 0x00;   // 错误码
		
		}break;

		default:break;
	}
	
	g_proto_data[2] = ((ptr-4)>>8)&0xff;
	g_proto_data[3] =  (ptr-4)&0xff;
	
	for(i=0;i<ptr;i++)
	{
		check+=g_proto_data[i];
	}
	g_proto_data[ptr++]=check;
	
	SendProToNBmodule(g_proto_data,ptr,0);
	return ptr;
}

//模块通信异常处理
void ModuleResetHandle(void)
{
	// 1天没有收到网络数据则重连平台
	if(NoLinkSeverCount)
	{
		NoLinkSeverCount --;
		if(NoLinkSeverCount == 0)
		{
			wake_up_from_sleep();
			sendstsflag=1;
			delay_ms(500);
			Get_ADC_Value(0);
		}
	}
	// 2天没有收到网络数据则重启模块
	if(NoNetDataTime)
	{
		NoNetDataTime--;
		if(NoNetDataTime == 0)
		{
			wake_up_from_sleep();
			//复位模块
			HW_ModuleReset();
		}
	}
}

