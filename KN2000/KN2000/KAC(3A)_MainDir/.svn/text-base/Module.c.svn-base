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
#include <time.h>

MODULEINFO  Moudleinfo;
char AtComRecBuf[UART_REV_MAX];
uint16 AtCommRecLen=0;
uint8 rev_NB_data_flag = FALSE;   	 	 //接收到NB模块有效指令标志
uint16 NB_module_error_cnt = 0;		//NB模块串口错误计数
uint8 module_at_invalid_time = 0;		//at指令无效次数

uint8 SendId=0xff;					//当前发送的at指令id号

uint8 AtDelayTime=0;					//AT指令等待时间
uint8 g_at_no_response=0;			//模块没有回应计数

char *WNip="180.101.147.115,5683";		//电信测试平台
//char *WNip="117.60.157.137,5683";		//电信正式平台

uint8 SendDataErrorTime = 0;
unsigned char ProSendbuf[UART_SEND_MAX];
uint16 ProAtLen;
uint8  ReSndCount=0;						//重发网络数据次数
uint8 socket_id=0xff;						//获取的模块可使用的socket id
uint8 ppp_had_linked_flag = FALSE;		//PPP连上标志
uint8 tcp_had_linked_flag = FALSE;			//TCP连上标志
uint8 tcp_sequence = 0;
uint8 NoDataTimeCount;					//询问网络数据次数

/*******************************************************************/
//获取AT指令里面的","地址
//src查找字符串,n第几个逗号
/*******************************************************************/
uint8 getAddressFromAT(char *src, uint8 n)
{
	uint8  i;
	char *p=NULL;
	char *s=NULL;
	char tmp[128] = {0};

	s = tmp;
	memcpy(s,src,128);
	for (i=0; i<n; i++)
	{
		p = strstr(s,",");
		if (p==NULL)
			return 0;
		*p = 0;
		s = p+1;
	}
	return s-tmp;
}

//模块硬复位处理
void HW_ModuleReset(void)
{
	SetNB_IO_RESETGpio(1);
	delay_ms(500);
	SetNB_IO_RESETGpio(0); 
	ModuleResetInit();   //重新对模块进行初始化2
	Moudleinfo.AtNCSEARFCN=0;
	Moudleinfo.AtCFUN0=0;
	Moudleinfo.AtCFUN1=0;
	Moudleinfo.AtGetCFUN=0;
}

//模块软复位处理
void reset_module_handle(void)
{  
	ModuleResetInit();
	Moudleinfo.AtNCSEARFCN=0;
	Moudleinfo.AtCFUN0=0;
	Moudleinfo.AtCFUN1=0;
	Moudleinfo.AtGetCFUN=0;
	Moudleinfo.QuestAck=0;
	SendId=ATNRB;
	UART1_SendStr((uint8*)"AT+NRB\r\n",strlen("AT+NRB\r\n"));
	Moudleinfo.SendFlag=1;
}

//模块at指令有效处理
void module_at_valid_handle(void)
{  
	module_at_invalid_time = 0;
	set_sleep_counter_max(0);
	 AtDelayTime = 0;
}

//模块at指令无效处理
void module_at_invalid_handle(uint8 time)
{  
	module_at_invalid_time ++;
	if(module_at_invalid_time > time)
	{
		module_at_invalid_time = 0;
		reset_module_handle();
	}
}

//转换时间
void ComputeTime(register struct tm* const t)
{
	uint8 k;

	t->tm_hour ++;
	if ((t->tm_hour&0x0f)>0x09)
	{
		t->tm_hour = (t->tm_hour&0xf0)+0x10;
	}
	if (t->tm_hour >= 0x24)	 //日
	{
		t->tm_hour = 0;
		t->tm_mday++;
		if ((t->tm_mday&0x0f)>0x09)
		{
			t->tm_mday = (t->tm_mday&0xf0)+0x10;
		}
		switch(t->tm_mon)
		{
			case 1:
			case 3:
			case 5:
			case 7:
			case 8:
			case 10:
			case 12: k = 0x31; break;

			case 2:  if((t->tm_year%4)==0)
					{
						k = 0x29;
					}
					else
					{
						k = 0x28;
					}
					break;

			default: k = 0x30; break;
		}
		if (t->tm_mday > k)	//月
		{
			t->tm_mday = 1;
			t->tm_mon++;
			if ((t->tm_mon&0x0f)>0x09)
			{
				t->tm_mon = (t->tm_mon&0xf0)+0x10;
				if (t->tm_mon > 12)
				{
					t->tm_mon=1;
					t->tm_year++;
				}
			}
		}
	}
}

//获取模块的时间
uint8 Rec_cclk(char *buf)
{
	uint8 timebuf[8],j,i=0,Slen;
	struct tm tm_time;

	Slen=strlen((char*)buf);
	for (j=0;j<7;j++)
	{
		while (i<Slen)
		{
			if (buf[i]>='0' && buf[i]<='9')
			{
				timebuf[j]=GetIntFromBuf((char*)&buf[i]);
				i+=2;
				break;
			}
			i++;
		}
	}

	if (timebuf[0]<18)  return 0;

	tm_time.tm_year = BinToBcd(timebuf[0]);
	tm_time.tm_mon = BinToBcd(timebuf[1]);
	tm_time.tm_mday = BinToBcd(timebuf[2]);
	tm_time.tm_hour = BinToBcd(timebuf[3]);
	tm_time.tm_min =BinToBcd(timebuf[4]);
	tm_time.tm_sec = BinToBcd(timebuf[5]);
	
	for(i=0;i<8;i++)
		ComputeTime(&tm_time);
	timebuf[0] = BcdToBin(tm_time.tm_year);
	timebuf[1] = BcdToBin(tm_time.tm_mon);
	timebuf[2] = BcdToBin(tm_time.tm_mday);
	timebuf[3] = BcdToBin(tm_time.tm_hour);
	timebuf[4] = BcdToBin(tm_time.tm_min);
	timebuf[5] = BcdToBin(tm_time.tm_sec);

	set_date(timebuf);
	set_time(&timebuf[3]);

	get_rtc_time();
	net_link_cclk_flag = TRUE; 
	module_at_valid_handle();
	return 0;
}

 /**************************************************
功能：UART1串口数据处理程序
 * 形参: 数据
 * 返回: 
 * 说明: 无 
**************************************************/
void Uart1RevHandle(void)
{
	uint8 a;
	while(1)
	{
		if (uart_rx_read == uart_rx_write)
			break;
		if(rev_NB_data_flag == TRUE)
			break;
		a=uart_rx[uart_rx_read];
		uart_rx_read = (uart_rx_read+1) % UART1_CACHE_MAX;
		AtComRecBuf[AtCommRecLen] = a;
		NB_module_error_cnt = 0;

		if(AtCommRecLen < (UART_REV_MAX-1))
			AtCommRecLen++;
		if(a==0xa)
		{
			AtComRecBuf[AtCommRecLen] = 0;
			if(AtCommRecLen>2)
				rev_NB_data_flag = TRUE;
			else
				AtCommRecLen = 0;
		}
	}
	
}

void GetNBplantformIPandPORT(void)
{
	uint8 ip[15+1]={0},port[5+1]={0};
	memset(Moudleinfo.NB_plantform_IP,0,15);
	memset(Moudleinfo.NB_palntform_PORT,0,5);

	hw_eeprom_read_bytes(NV_NB_PLANTFORM_IP,ip,15);
	hw_eeprom_read_bytes(NV_NB_PLANTFORM_PORT,port,5);

	if(0==memcmp(Moudleinfo.NB_plantform_IP,ip,15))
	{
		memcpy(Moudleinfo.NB_plantform_IP,"218.56.11.180",strlen("218.56.11.180"));
		memcpy(Moudleinfo.NB_palntform_PORT,"14000",strlen("14000"));
//		memcpy(Moudleinfo.NB_palntform_PORT,"12000",strlen("12000"));
 	}
	else
	{
		memcpy(Moudleinfo.NB_plantform_IP,ip,strlen((char*)ip));
		memcpy(Moudleinfo.NB_palntform_PORT,port,strlen((char*)port));
	}

}

//设置保持网络连接的时间
void SetNoDataTimeCount(uint8 time)
{
	NoDataTimeCount = time;
}

//设置重发网络数据的超时时间
void SetReSendDataTime(uint16 time)
{
	Moudleinfo.SendDataTime = time;
}

//网络断开处理
void NetBreakHandle(void)
{
	ReSndCount = 0;
	Moudleinfo.AtCGATT1=0;
	Moudleinfo.AtGetCGATT=0;
	Moudleinfo.AtNSOCR=0;
	Moudleinfo.AtNSOCO=0;
}

 /**************************************************
功能：NB模块数据处理程序
 * 形参: 无 
 * 返回: 无 
 * 说明: 无 
**************************************************/
void RecAtComFormMoudle(void)
{
	char tempbuf[30];
	uint16 UdpDatalen,i,j; 
//	uint8 RecUdpDataBuf[REV_PRO_BUF_SIZE];		
	char *data_ptr = NULL;

	if (rev_NB_data_flag)
	{
		 g_at_no_response = 0;
		 if (!memcmp("ERROR",AtComRecBuf,strlen("ERROR")))
		 {

			if (SendId==ATNMGS) 
			{
				if(ReSndCount)
				{
					Moudleinfo.SendFlag=0; 
					SetReSendDataTime(RESEND_DATA_TIME);
				}
			}
			 else if(SendId==ATGETNCDP)
			 {
				Moudleinfo.SendFlag=0; 
				 Moudleinfo.GetipOk=1;
			 }
			 else if(SendId==ATNSOCL)
			 {
				Moudleinfo.SendFlag=0; 
			 	Moudleinfo.AtNSOCL=1;
				NetBreakHandle();
				tcp_had_linked_flag = FALSE;
			 }
			SendDataErrorTime ++;
			if(SendDataErrorTime > 10)
			{
				//复位模块
				SendDataErrorTime = 0;
				reset_module_handle();
			}
		 }
		 else
		 	SendDataErrorTime = 0;

		if (!memcmp("REBOOTING",AtComRecBuf,strlen("REBOOTING")))
		{
				Moudleinfo.AtNRB=1;
		}

		else if (!memcmp("+CCLK:",AtComRecBuf,strlen("+CCLK:")))
		{
			Rec_cclk(&AtComRecBuf[strlen("+CCLK:")]);
		}

		else if (!memcmp("+NCDP:",AtComRecBuf,strlen("+NCDP:")))  //  
		{

			 if (!memcmp(&AtComRecBuf[strlen("+NCDP:")],(uint8 *)WNip,strlen(WNip)))
			 {
				SetReSendDataTime(200);
				Moudleinfo.send_ATNCDPok = 1;
				Moudleinfo.AtNRB = 1;
			 }
			 else
			 {
				Moudleinfo.AtCFUN0=0;
			 }
		}
		else if (!memcmp("+NSONMI:",AtComRecBuf,strlen("+NSONMI:")))  //  +NSONMI:1,3接收到TCP网络数据
		{
			data_ptr = strstr(AtComRecBuf,":");
			if (data_ptr)
			{
				data_ptr += 1;
				sprintf(tempbuf,"AT+NSORF=");
				j=strlen((char*)tempbuf);
				for(; *data_ptr != 0x0d; )
				{
					tempbuf[j++] = *data_ptr;
					data_ptr++;
					if(j  > 30)
						break;
				}
				tempbuf[j++] = '\r';
				tempbuf[j++] = '\n';
				tempbuf[j++] = 0;
				Moudleinfo.QuestAck=0;
				SendId=ATNSORF;
				Moudleinfo.SendFlag=1;
				UART1_SendStr((uint8*)tempbuf,strlen(tempbuf));
			}
		}
		

		else if (!memcmp("+NNMI:",AtComRecBuf,strlen("+NNMI:")))  //  接收到网络数据
		{

			UdpDatalen=GetIntFromBuf(&AtComRecBuf[strlen("+NNMI:")]);
			i=0;
			while (AtComRecBuf[i] !=',' && AtComRecBuf[i] !='\r' && AtComRecBuf[i] !='\n') i++;
			if (AtComRecBuf[i] ==',')
			{
				for (j=0;j<UdpDatalen;j++)
				{
					AtComRecBuf[j]=AciiToHex(&AtComRecBuf[i+1+j*2]);
				}
				j=ProtoDataAnalyze((uint8*)AtComRecBuf,UdpDatalen);
				//数据连包处理
				if(((UdpDatalen-j)>5) && j)
					ProtoDataAnalyze((uint8*)&AtComRecBuf[j],(UdpDatalen-j));
			}
		}

		else if (!memcmp("+CSQ:",AtComRecBuf,strlen("+CSQ:")))  //
		{
			if (SendId==AT_CSQ)
			{
				Moudleinfo.AtCSQ = 1;
				Moudleinfo.Csq=GetIntFromBuf(&AtComRecBuf[strlen("+CSQ:")]);

				if (Moudleinfo.Csq>31) 
					Moudleinfo.Csq=0;
			}
		}
		//BC35模块版本号
		else if (!memcmp("Revision:",AtComRecBuf,strlen("Revision:"))) 
		{
			data_ptr = strstr(AtComRecBuf,":");
			if (data_ptr)
			{
				data_ptr += 2;
				i = 0;
				for(; *data_ptr != 0x0d; )
				{
					Moudleinfo.Ver[i++] = *data_ptr;
					data_ptr++;
					if(i  > 30)
						break;
				}
			}
			Moudleinfo.Ver[i]=0;
		}
		else if (!memcmp("+CGSN:",AtComRecBuf,strlen("+CGSN:")))  //IMEI
		{
			if (AtCommRecLen>(2+strlen("+CGSN:")))
			{
				memcpy(Moudleinfo.IMEI,&AtComRecBuf[strlen("+CGSN:")],15);
			}
		}
		else if (!memcmp("+NBAND:",AtComRecBuf,strlen("+NBAND:")))  //网络的频段
		{
			i = GetIntFromBuf(&AtComRecBuf[strlen("+NBAND:")]);

			 Moudleinfo.AtGetnband = 1;
			if ((i == 8 && Moudleinfo.ops_type == OPS_CMCC) 
			||(i == 5 && Moudleinfo.ops_type == OPS_TELECOM)
			)
			{
				Moudleinfo.Atnband=1;
			}
			else
			{
				Moudleinfo.AtCFUN0=0;
				Moudleinfo.Atnband=0;
			}
		}

		else if (!memcmp("+CFUN:",AtComRecBuf,strlen("+CFUN:")))  //开启全功能模式
		{
			i = GetIntFromBuf(&AtComRecBuf[strlen("+CFUN:")]);

			if (i == 1) 
			{
				Moudleinfo.AtGetCFUN = 1;
			}
			else
			{
				Moudleinfo.AtCFUN1 = 0;
			}
		}
		else if (!memcmp("+CEREG:",AtComRecBuf,strlen("+CEREG:")))  //注册网络
		{
			i = getAddressFromAT(AtComRecBuf,1);
			if (i)
			{
				j=GetIntFromBuf(&AtComRecBuf[i]);
				if (j == 1) 
				{
					 Moudleinfo.AtGetCEREG = 1;
					module_at_valid_handle();
				}
			}
		}
		else if (!memcmp("+CGATT:",AtComRecBuf,strlen("+CGATT:")))  //附着网络
		{
			i = GetIntFromBuf(&AtComRecBuf[strlen("+CGATT:")]);

			if (i == 1) 
			{
				Moudleinfo.AtGetCGATT = 1;
				module_at_valid_handle();
			}
		}
		else if (!memcmp("+QLWEVTIND:0",AtComRecBuf,strlen("+QLWEVTIND:0")))  //注册上网络
		{
		}
		else if (!memcmp("+QLWEVTIND:3",AtComRecBuf,strlen("+QLWEVTIND:3")))  //可以向网络发数据
		{
		}
		else if (!memcmp("+NSOSTR:",AtComRecBuf,strlen("+NSOSTR:")))  //+NSOSTR:1,101,1数据发送成功
		{
			i = getAddressFromAT(AtComRecBuf,1);
			if (i)
			{
				j=GetIntFromBuf(&AtComRecBuf[i]);
		 		if((load_continuous_flag==FALSE) && (j==tcp_sequence))
				{
					ReSndCount = 0;
				}
			}
		}		
		else if (!memcmp("+NSOCLI:",AtComRecBuf,strlen("+NSOCLI:")))  //+NSOCLI: 1断开网络
		{
			i = GetIntFromBuf(&AtComRecBuf[strlen("+NSOCLI: ")]);
			if (i == socket_id) 
			{
				tcp_had_linked_flag = FALSE;
				NetBreakHandle();
			}
		}
		else if (!memcmp("SNR:",AtComRecBuf,strlen("SNR:")))  //SINR（信号与干扰加噪声比）
		{
			Moudleinfo.sinr=GetIntFromBuf(&AtComRecBuf[strlen("SNR:")]);
		}
		else if (!memcmp("Signal power:",AtComRecBuf,strlen("Signal power:")))  //RSRP（NB信号接收功率）
		{
			Moudleinfo.rsrp=GetIntFromBuf(&AtComRecBuf[strlen("Signal power:")]);
			Moudleinfo.AtNUESTATS=1;
		}
		else if (!memcmp("PCI:",AtComRecBuf,strlen("PCI:")))  //PCI（物理小区标识）
		{
			Moudleinfo.pci=GetIntFromBuf(&AtComRecBuf[strlen("PCI:")]);
		}
		 else
		 {   
			 if (AtComRecBuf[0]>='0' && AtComRecBuf[0]<='9')
			 {
				 if (SendId==ATCIMI)
				 {
					 memcpy(Moudleinfo.IMSI,AtComRecBuf,15);
					 i = AsctoBin(Moudleinfo.IMSI[3])*10+AsctoBin(Moudleinfo.IMSI[4]);
					 
					 if((i == 11) || (i == 3) || (i == 5))
				 	{
				 		Moudleinfo.ops_type=OPS_TELECOM;
						Moudleinfo.GetipOk=0;
						Moudleinfo.send_ATNCDPok=0;
						Moudleinfo.AtNSOCR=1;
						Moudleinfo.AtNSOCO=1;
				 	}
					 else
				 	{
				 		Moudleinfo.ops_type=OPS_CMCC;
						Moudleinfo.GetipOk=1;
						Moudleinfo.send_ATNCDPok=1;
						Moudleinfo.AtNSOCR=0;
						Moudleinfo.AtNSOCO=0;
				 	}
				 }
				 if (SendId==ATNMGR)
				 {
					 UdpDatalen=GetIntFromBuf(AtComRecBuf);
					 i=0;
					 while (AtComRecBuf[i] !=',' && AtComRecBuf[i] !='\r' && AtComRecBuf[i] !='\n') i++;
					 if (AtComRecBuf[i] ==',')
					 {
						 for (j=0;j<UdpDatalen;j++)
						 {
							 AtComRecBuf[j]=AciiToHex(&AtComRecBuf[i+1+j*2]);
						 }
						j=ProtoDataAnalyze((uint8*)AtComRecBuf,UdpDatalen);
						//数据连包处理
						if(((UdpDatalen-j)>5) && j)
							ProtoDataAnalyze((uint8*)&AtComRecBuf[j],(UdpDatalen-j));
						Moudleinfo.SendFlag=0;
					 }
				 }
				if (SendId==ATNSOCR)
				{
					if(AtCommRecLen == 3)
					{
						socket_id = AtComRecBuf[0]-'0';
					}
				}
				if (SendId==ATNSORF)
				{
					// 1,220.180.239.212,8009,4,01020304,0
					i = getAddressFromAT(AtComRecBuf,3);
					if (i)
					{
						UdpDatalen=GetIntFromBuf(&AtComRecBuf[i]);
						while (AtComRecBuf[i] !=',' && AtComRecBuf[i] !='\r' && AtComRecBuf[i] !='\n') i++;
						if (AtComRecBuf[i] ==',')
						{
							for (j=0;j<UdpDatalen;j++)
							{
								AtComRecBuf[j]=AciiToHex(&AtComRecBuf[i+1+j*2]);
							}
							j=ProtoDataAnalyze((uint8*)AtComRecBuf,UdpDatalen);
							//数据连包处理
							if(((UdpDatalen-j)>5) && j)
								ProtoDataAnalyze((uint8*)&AtComRecBuf[j],(UdpDatalen-j));
							Moudleinfo.SendFlag=0;
						}
					}
				}

			 }
			 else
			 {
				 if (!memcmp("OK",AtComRecBuf,strlen("OK")))
				 {
					Moudleinfo.QuestAck=1;

					if (SendId==ATNMGS) 
					{
//						FillOverTimeQueue(QUERY_MSG_OVERTIME_EVENT,50,__LINE__);
						Moudleinfo.QuestDataFlag=0;
					}

					 if(SendId==ATNCDP) Moudleinfo.send_ATNCDPok=1;

					 if(SendId==ATNNMI) Moudleinfo.send_ATNNMIok=1;
					 if(SendId==ATCFUN0) Moudleinfo.AtCFUN0=1;
					 if(SendId==ATNCSEARFCN) Moudleinfo.AtNCSEARFCN=1;
					 if(SendId==ATCFUN1) Moudleinfo.AtCFUN1=1;
					 if(SendId==ATCEDRXS) Moudleinfo.AtCEDRXS=1;
					 if(SendId==ATCGATT1) 
					 {
					 	Moudleinfo.AtCGATT1=1;
						ppp_had_linked_flag = TRUE;
					 }
					 if(SendId==ATCGATT0) 
					 {
					 	Moudleinfo.AtCGATT0=1;
						ppp_had_linked_flag = FALSE;
					 }
					if(SendId==ATNBAND) Moudleinfo.Atnband=1;
					 if(SendId==ATNRB) Moudleinfo.AtNRB=1;
					 if(SendId==ATGETNCDP) Moudleinfo.GetipOk=1;

					 if(SendId==ATCPSMS) Moudleinfo.CpmsSet=1;
					 if(SendId==ATQREGSWT) Moudleinfo.AtQREGSWT=1;
					 if(SendId==ATNSOCR) Moudleinfo.AtNSOCR=1;
					 if(SendId==ATNSOCO)
					 {
					 	Moudleinfo.AtNSOCO=1;
						tcp_had_linked_flag = TRUE;
						SetReSendDataTime(0);
					 }
					 if(SendId==ATNSOCL)        //关闭tcp
					 {
					 	Moudleinfo.AtNSOCL=1;
						NetBreakHandle();
						tcp_had_linked_flag = FALSE;
					 }
					 Moudleinfo.SendFlag=0;
		             
				 }
			 }
		}
		AtCommRecLen=0;
		rev_NB_data_flag = FALSE;
	}
	else
		NB_module_error_cnt++;
	if(NB_module_error_cnt >= UART_ERROR_CNT_MAX)
	{
		NB_module_error_cnt = 0;
		if(AtCommRecLen)
		{
			AtCommRecLen = 0;
		}
	}
}

void ModuleResetInit(void)
{
	memset(Moudleinfo.IMEI,0,sizeof(Moudleinfo.IMEI));
	memset(Moudleinfo.IMSI,0,sizeof(Moudleinfo.IMSI));
	Moudleinfo.ops_type=OPS_NULL;
	Moudleinfo.AtCFUN0=1;
	Moudleinfo.AtNCSEARFCN=1;
	Moudleinfo.AtCFUN1=0;
	Moudleinfo.AtGetCFUN=0;
	Moudleinfo.AtCEDRXS=0;
	Moudleinfo.CpmsSet=0;
	Moudleinfo.AtCGATT0=1;
	Moudleinfo.AtCGATT1=0;
	Moudleinfo.AtNRB=0;
	Moudleinfo.SendFlag=0;
	Moudleinfo.SendDataTime=0;
	Moudleinfo.AtQREGSWT = 0;
	Moudleinfo.AtGetCEREG = 0;
	Moudleinfo.AtNUESTATS = 0;
	NoDataTimeCount=0;
		
	set_net_state(MODULE_INI_STS);
	net_link_cclk_flag = FALSE;
	tcp_had_linked_flag = FALSE;
	ProAtLen=0; 
	AtCommRecLen = 0;
	uart_rx_read = 0;
	uart_rx_write = 0;
	GetNBplantformIPandPORT();
}

//查询模块网络连接状态TRUE为连接上
uint8 GetNetLinkState(void)
{
	if((Moudleinfo.ops_type==OPS_TELECOM)
		||tcp_had_linked_flag
		)
		return TRUE;
	else
		return FALSE;
}

//联网时间超时处理
void LinkNetTimeOutHandle(void)
{
	if(NoDataTimeCount)
	{
		NoDataTimeCount--;
	}
	if(NoDataTimeCount)
	{
		if ((Moudleinfo.SendFlag==0)
			&&(Moudleinfo.ops_type == OPS_TELECOM)
			&&(Moudleinfo.QuestDataFlag==0)
			&&((NoDataTimeCount&0x01)==1)
			)
		{
			if(NoDataTimeCount==1)
			{
				UART1_SendStr("AT+QLWULDATAEX=2,AABB,0x0101\r\n",strlen("AT+QLWULDATAEX=2,AABB,0x0101\r\n"));  
				NoDataTimeCount=0;
			}
			else
			{
				SendId=ATNMGR;
				Moudleinfo.SendFlag=1;
				Moudleinfo.QuestAck=0;
				UART1_SendStr("AT+NMGR\r\n",strlen("AT+NMGR\r\n"));  //查询数据
			}
		}
		set_sleep_counter_max(KEEP_WORK_MAX_TIME-4);
	}
	else if(tcp_had_linked_flag)
	{
		ReSndCount = 0;
		set_net_state(MODULE_WAIT_STS);
	}
}

uint8 ModuleIniDisp(void)
{  
   char tempbuf[64];

   if(AtDelayTime)
   	return 0;
   if (Moudleinfo.SendFlag==0)
   {
	 if (strlen((char*)Moudleinfo.Ver)==0)
 	{
	    	 Moudleinfo.QuestAck=0;
		 SendId=ATCGMR;
//		UART1_SendStr((uint8*)"AT+CGMR\r\n",strlen("AT+CGMR\r\n"));
		UART1_SendStr("ATI\r\n",strlen("ATI\r\n"));
		 Moudleinfo.SendFlag=1;
 	}
	 else if (strlen((char*)Moudleinfo.IMEI)==0)
	 {
		 //查询模块的IMEI号
		Moudleinfo.QuestAck=0;
		SendId=ATCGSN;
		UART1_SendStr((uint8*)"AT+CGSN=1\r\n",strlen("AT+CGSN=1\r\n"));
		Moudleinfo.SendFlag=1;
	 }
	 else if (strlen((char*)Moudleinfo.IMSI)==0 )
	 {
		Moudleinfo.QuestAck=0;
		SendId=ATCIMI;
		UART1_SendStr((uint8*)"AT+CIMI\r\n",strlen("AT+CIMI\r\n"));
		Moudleinfo.SendFlag=1;
	 }
	 else
	 {
		 {
			 if (Moudleinfo.AtGetnband==0)
			 {
				Moudleinfo.QuestAck=0;
				SendId=ATGETNBAND;
				UART1_SendStr((uint8*)"AT+NBAND?\r\n",strlen("AT+NBAND?\r\n"));
				Moudleinfo.SendFlag=1;
			 }
			 else if (Moudleinfo.GetipOk==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATGETNCDP;
				 UART1_SendStr((uint8*)"AT+NCDP?\r\n",strlen("AT+NCDP?\r\n"));
				 Moudleinfo.SendFlag=1;
			 }
             		 else if (Moudleinfo.AtCFUN0==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATCFUN0;
				 UART1_SendStr((uint8*)"AT+CFUN=0\r\n",strlen("AT+CFUN=0\r\n"));
				 Moudleinfo.SendFlag=1;   
				AtDelayTime=100;
			 }
             		else	 if (Moudleinfo.AtNCSEARFCN==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATNCSEARFCN;
				 UART1_SendStr((uint8*)"AT+NCSEARFCN\r\n",strlen("AT+NCSEARFCN\r\n"));
				 Moudleinfo.SendFlag=1;   
			 }
			 else  if (Moudleinfo.Atnband==0)
			 {
				Moudleinfo.QuestAck=0;
				SendId=ATNBAND;
				if(Moudleinfo.ops_type==OPS_TELECOM)
					UART1_SendStr((uint8*)"AT+NBAND=5\r\n",strlen("AT+NBAND=5\r\n"));
				else
					UART1_SendStr((uint8*)"AT+NBAND=8\r\n",strlen("AT+NBAND=8\r\n"));
				Moudleinfo.SendFlag=1;
			 }
		 
             		else	 if (Moudleinfo.send_ATNCDPok==0)
			 {
				  Moudleinfo.QuestAck=0;
				  SendId=ATNCDP;
				  sprintf(tempbuf,"AT+NCDP=%s\r\n",WNip);
				  Moudleinfo.SendFlag=1;
				  UART1_SendStr((uint8*)tempbuf,strlen(tempbuf));
			 }
			 else if (Moudleinfo.AtCFUN1==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATCFUN1;
				 UART1_SendStr((uint8*)"AT+CFUN=1\r\n",strlen("AT+CFUN=1\r\n"));
				 Moudleinfo.SendFlag=1;   
			 }
			 else if (Moudleinfo.AtGetCFUN==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATGETCFUN;
				 UART1_SendStr((uint8*)"AT+CFUN?\r\n",strlen("AT+CFUN?\r\n"));
				 Moudleinfo.SendFlag=1;   
			 }
			 else if (Moudleinfo.AtCGATT1==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATCGATT1;
				 UART1_SendStr((uint8*)"AT+CGATT=1\r\n",strlen("AT+CGATT=1\r\n"));
				 Moudleinfo.SendFlag=1;   
			 }
			 else if (Moudleinfo.AtCEDRXS==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATCEDRXS;
				 UART1_SendStr((uint8*)"AT+CEDRXS=0,5\r\n",strlen("AT+CEDRXS=0,5\r\n"));
				 Moudleinfo.SendFlag=1;   
			 }
			else if (Moudleinfo.CpmsSet==0)
			{
				Moudleinfo.QuestAck=0;
				SendId=ATCPSMS;
				Moudleinfo.SendFlag=1;
//				UART1_SendStr("AT+CPSMS=1\r\n",strlen("AT+CPSMS=1\r\n"));
				UART1_SendStr("AT+CPSMS=1,,,,00000100\r\n",strlen("AT+CPSMS=1,,,,00000100\r\n"));
			}
			 else  if (Moudleinfo.AtQREGSWT==0)
			 {
				Moudleinfo.QuestAck=0;
				SendId=ATQREGSWT;
				if(Moudleinfo.ops_type==OPS_TELECOM)
					UART1_SendStr((uint8*)"AT+QREGSWT=1\r\n",strlen("AT+QREGSWT=1\r\n"));
				else
					UART1_SendStr((uint8*)"AT+QREGSWT=2\r\n",strlen("AT+QREGSWT=2\r\n"));
				Moudleinfo.SendFlag=1;
			 }
			 else if (Moudleinfo.AtGetCEREG==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATCEREG;
				 UART1_SendStr((uint8*)"AT+CEREG?\r\n",strlen("AT+CEREG?\r\n"));
				 Moudleinfo.SendFlag=1;   
				AtDelayTime=50;
				module_at_invalid_handle(60);
			 }
			 else if (Moudleinfo.AtGetCGATT==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATGETCGATT;
				 UART1_SendStr((uint8*)"AT+CGATT?\r\n",strlen("AT+CGATT?\r\n"));
				 Moudleinfo.SendFlag=1;   
				AtDelayTime=50;
				module_at_invalid_handle(50);
			 }
			 else if (Moudleinfo.AtNUESTATS==0)
			 {
				 Moudleinfo.QuestAck=0;
				 SendId=ATNUESTATS;
				 UART1_SendStr((uint8*)"AT+NUESTATS\r\n",strlen("AT+NUESTATS\r\n"));
				 Moudleinfo.SendFlag=1;   
			 }
			else if (net_link_cclk_flag==0)
			{
				  Moudleinfo.QuestAck=0;
				  SendId=ATCCLK;
				  Moudleinfo.SendFlag=1;
				  AtDelayTime=200;
				  UART1_SendStr("AT+CCLK?\r\n",strlen("AT+CCLK?\r\n"));
				  module_at_invalid_handle(10);
			}
			else 
			{
				return 1;
			}
		 }
	 }
	if(Moudleinfo.SendFlag==1)
	{
		if(g_at_no_response<200)
			g_at_no_response++;
	}
   }

    return 0;

}

//模块连接TCP网络处理
void ModuleNetLinkHandle(void)
{  
	char tempbuf[60]={0};

	if (g_system_reset_time || (net_link_cclk_flag==FALSE))
		return;
	if(GetNetLinkState()==TRUE)
	{
		 //发送协议(第一次马上发送，等20秒重发 
		if (Moudleinfo.SendFlag==0 
			&& Moudleinfo.SendDataTime==0	
			)
		 {
			if((Moudleinfo.ops_type==OPS_TELECOM)&&(Moudleinfo.AtCSQ==0))
			{
				//查询信号
				Moudleinfo.QuestAck=0;
				SendId=AT_CSQ;
				Moudleinfo.SendFlag=1;
				UART1_SendStr("AT+CSQ\r\n",strlen("AT+CSQ\r\n"));
			}
		 	else if(ReSndCount)
				SendDataToNBmodule();
			else
				NetActiveHandle();
		 }
	}
	else if(Moudleinfo.SendFlag==0 && tcp_had_linked_flag==FALSE)   //当有数据需要发送时才去建立链接lcx???
	{
		 if (Moudleinfo.AtCGATT1==0)
		 {
			 Moudleinfo.QuestAck=0;
			 SendId=ATCGATT1;
			 UART1_SendStr((uint8*)"AT+CGATT=1\r\n",strlen("AT+CGATT=1\r\n"));
			 Moudleinfo.SendFlag=1;   
		 }
		 else if (Moudleinfo.AtGetCGATT==0)
		 {
			 Moudleinfo.QuestAck=0;
			 SendId=ATGETCGATT;
			 UART1_SendStr((uint8*)"AT+CGATT?\r\n",strlen("AT+CGATT?\r\n"));
			 Moudleinfo.SendFlag=1;   
			AtDelayTime=50;
			module_at_invalid_handle(50);
		 }
		else if (Moudleinfo.AtCSQ==0)
		{
			//查询信号
			Moudleinfo.QuestAck=0;
			SendId=AT_CSQ;
			Moudleinfo.SendFlag=1;
			UART1_SendStr("AT+CSQ\r\n",strlen("AT+CSQ\r\n"));
		}
		else if (Moudleinfo.AtNSOCR==0)
		 {
			  Moudleinfo.QuestAck=0;
			  SendId=ATNSOCR;
			  sprintf(tempbuf,"AT+NSOCR=STREAM,6,0,1\r\n");
			  Moudleinfo.SendFlag=1;
			  UART1_SendStr((uint8*)tempbuf,strlen(tempbuf));
		 }
	     	else	 if (Moudleinfo.AtNSOCO==0)   
		 {
			 //建立tcp链接
			  Moudleinfo.QuestAck=0;
			  SendId=ATNSOCO;
			  if(g_had_link_manager==FALSE)
				  sprintf(tempbuf,"AT+NSOCO=%d,%s,%s\r\n",socket_id,"218.56.11.180","12000");
			  else
				  sprintf(tempbuf,"AT+NSOCO=%d,%s,%s\r\n",socket_id,Moudleinfo.NB_plantform_IP,Moudleinfo.NB_palntform_PORT);
			  Moudleinfo.SendFlag=1;
			  UART1_SendStr((uint8*)tempbuf,strlen(tempbuf));
		 }
	}

}

//模块断开TCP网络处理
void ModuleNetBreakHandle(void)
{  
	char tempbuf[60]={0};

	if(Moudleinfo.ops_type!=OPS_TELECOM)
	{
		if (Moudleinfo.AtNSOCL==0)
		 {
			  if (socket_id<16)
			  {
				Moudleinfo.QuestAck=0;
				SendId=ATNSOCL;
				sprintf(tempbuf,"AT+NSOCL=%d\r\n",socket_id);
				Moudleinfo.SendFlag=1;
				UART1_SendStr((uint8*)tempbuf,strlen(tempbuf));
			  }
			  else Moudleinfo.AtNSOCL=1;
		 }
		else if (Moudleinfo.AtCGATT0==0)
		 {
			 Moudleinfo.QuestAck=0;
			 SendId=ATCGATT0;
			 UART1_SendStr((uint8*)"AT+CGATT=0\r\n",strlen("AT+CGATT=0\r\n"));
			 Moudleinfo.SendFlag=1;   
		 }
	}

	//判断有没有数据发送，有就需要改变成发送状态
	if (GetNetNeedLinkState()) 
	{
		if (net_link_cclk_flag)
		{
			set_net_state(MODULE_SEND_STS);
		}
	 } 
}

/**********************************************************************
*FUNCTION NAME	: SendDataToNBmodule
*FUNCTION		: 发送网络数据函数
*MODIFY	DATA	:
*INPUT			: none
*OUTPUT			: none
*RETURN			: none
***********************************************************************/
void SendDataToNBmodule(void)
{
	if(!GetNetLinkState())
		return;
	if(ReSndCount)
	{
	 	ReSndCount--;
		if(ReSndCount)
		{
			Moudleinfo.SendFlag=1;
			SendId=ATNMGS;
			Moudleinfo.QuestAck=0;
			SetReSendDataTime(RESEND_DATA_TIME);
			UART1_SendStr(ProSendbuf,ProAtLen);
			Moudleinfo.QuestDataFlag=1;
			set_sleep_counter_max(0);
			if(load_continuous_flag == FALSE)
			{
				if(ReBackNetBag)
					SetNoDataTimeCount(NO_NET_DATA_TIME);
				else
					SetNoDataTimeCount(NET_DATA_MIN_TIME);
			}
		}
		else
			set_net_state(MODULE_WAIT_STS);
	}
}

/**********************************************************************
*FUNCTION NAME	: SendProToNBmodule
*FUNCTION		: 发送网络数据函数
*MODIFY	DATA	:
*INPUT			: buf发送数据len数据长度， send_type  0普通1白名单回应
*OUTPUT			: none
*RETURN			: none
***********************************************************************/
void SendProToNBmodule(uint8 *buf,uint16 len,uint8 send_type)
{
	uint16 i,pos;

	set_sleep_counter_max(0);

	if(send_type == 0)
		SetNoDataTimeCount(NET_DATA_MAX_TIME);
	ReSndCount = 7;
	if(ReBackNetBag)
	{
		ReSndCount = 2;
	}
	if(Moudleinfo.ops_type==OPS_TELECOM)
	{
		sprintf((char*)ProSendbuf,"AT+NMGS=%d,",len);                     //发送udp数据
	}
	else
	{
		sprintf((char*)ProSendbuf,"AT+NSOSD=%d,%d,",socket_id,len);       //发送tcp数据
	}
	pos=strlen((char*)ProSendbuf);
	   
	for (i=0;i<len;i++)
	{
		sprintf((char*)&ProSendbuf[pos],"%.2x",buf[i]);
		pos+=2;
	}
	tcp_sequence ++;
	if(Moudleinfo.ops_type!=OPS_TELECOM)
	{
		sprintf((char*)&ProSendbuf[pos],",0x200,%03d",tcp_sequence);       //发送tcp数据方式
		pos += 10;
	}
	sprintf((char*)&ProSendbuf[pos],"\r\n");
	pos+=2;

	ProAtLen=strlen((char*)ProSendbuf);

	SendDataToNBmodule();
}


