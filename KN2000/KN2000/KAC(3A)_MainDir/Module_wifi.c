#include "stm8l15x.h"
#include "sysdefs.h"
#include <stdio.h>
#include "string.h"
#include "uart1.h"
#include "defineconst.h"
#include "Module_wifi.h"
#include "hwdgpio.h"
#include "main.h"

#define WIFI_REV_MAX   		50
#define WIFI_AT_MAX   		100

uint8 wifi_rx[WIFI_REV_MAX];
uint8 wifi_rx_read;	
uint8 wifi_rx_write;	

WIFIMODULEINFO  WIFIinfo;
char WifiComRecBuf[WIFI_AT_MAX];
uint16 WifiComRecLen=0;
uint8 WifiSendId=0xff;              			//��ǰ���͵�atָ��id��
uint16 WifiDelayTime=0;				//ATָ��ȴ�ʱ��
uint8 WifiDataErrorTime = 0;
	
//WIFIģ���ʼ��
void WIFI_Module_Init(void)
{
  	GPIO_Init(WIFI_KEYPOWER_T, WIFI_KEYPOWER_P, GPIO_Mode_Out_PP_Low_Slow);
  	GPIO_Init(WIFI_RESET_T, WIFI_RESET_P, GPIO_Mode_Out_PP_Low_Slow);
}

void Set_WIFI_IO_RESETGpio(unsigned char flag)
{
	if(flag==1)
		GPIO_SetBits(WIFI_RESET_T,WIFI_RESET_P);
	else 
		GPIO_ResetBits(WIFI_RESET_T,WIFI_RESET_P);
}

//WIFIģ���ʼ��
void WifiModuleResetInit(void)
{
	memset(WIFIinfo.IMEI,0,sizeof(WIFIinfo.IMEI));
	WIFIinfo.AtUARTE=0;
	WIFIinfo.SendFlag=0;
	WIFIinfo.IniEndFlag=0;
	WifiComRecLen = 0;
	wifi_rx_read = 0;
	wifi_rx_write = 0;
}

//ģ��Ӳ��λ����
void WIFI_ModuleReset(void)
{
	Set_WIFI_IO_RESETGpio(0);
	delay_ms(500);
	Set_WIFI_IO_RESETGpio(1); 
	WifiModuleResetInit();  			 //���¶�ģ����г�ʼ��
}

//����2�жϽ������ݴ���
void UART2_ISR(uint8 data)
{   
	uint8 tempw;
	wifi_rx[wifi_rx_write] = data;
	tempw=(wifi_rx_write + 1) % WIFI_REV_MAX;

	if (tempw==wifi_rx_read)
	{
       //���ջ�������
		return ;
	}
	else
	{
		wifi_rx_write=tempw;
	}
}

//WIFIģ��ATָ���
char WifiAtComFormMoudle(void)
{
	uint8 preAP[35]={0};
	uint8 tmp;
    
	if (wifi_rx_read !=wifi_rx_write)
	{
		WifiComRecBuf[WifiComRecLen]=wifi_rx[wifi_rx_read];
		wifi_rx_read = (wifi_rx_read+1) % WIFI_REV_MAX;
		if(WifiComRecLen < (WIFI_AT_MAX-1))
			WifiComRecLen++;
		else
			WifiComRecLen = 0;
	}
	else 
		return 0;
	tmp = WifiComRecBuf[WifiComRecLen-1];
	if ((tmp ==0xa ) || (tmp ==0xd ))
	{
		WifiComRecBuf[WifiComRecLen]=0;
		if (WifiComRecLen>2)
		{
			if (!memcmp("ERROR",WifiComRecBuf,strlen("ERROR")))
			 {
				WifiDataErrorTime ++;
				if(WifiDataErrorTime > 10)
				{
					//��λģ��
					WIFI_ModuleReset();
					WifiDataErrorTime = 0;
				}
			 }
			 else
			 {
			 	WifiDataErrorTime = 0;
				if((WifiSendId!=AT_WSCAN)
					&&(WifiSendId!=ATE0)
					)
				{
					if(AtDelayTime > 3)
						AtDelayTime = 3;
				}
			 }
			if (!memcmp(preAP,WifiComRecBuf,strlen((char*)preAP))&&strlen((char*)preAP)>0)  //
			{
				if (WifiSendId==AT_WSCAN)
				{
					  WIFIinfo.Csq=GetIntFromBuf(&WifiComRecBuf[strlen((char*)preAP)]);   //-42ǿ -58 ��
					if (WIFIinfo.Csq>100) 
						WIFIinfo.Csq=100;
					if(AtDelayTime > 3)
						AtDelayTime = 3;
				}
			}
			else if (!memcmp("+WMAC:",WifiComRecBuf,strlen("+WMAC:")))  //IMEI
			{
				//+WMAC:B0F89340375E
					memcpy(WIFIinfo.IMEI,&WifiComRecBuf[strlen("+WMAC:")],12);
			}
			 else if (!memcmp("OK",WifiComRecBuf,strlen("OK")))
			 {

				 if(WifiSendId==ATE0) 
				 {
				 	WIFIinfo.AtUARTE=1;
					AtDelayTime = 10;
				 }
			 }
		}        
		WifiComRecLen=0;
	}
	return  1;
}

//WIFIģ�������ʼ��
uint8 WifiModuleIniDisp(void)
{  
   if (WIFIinfo.SendFlag==0)
   {
     	 if (WIFIinfo.AtUARTE==0)
	 {
		 WifiSendId=ATE0;
		 UART2_SendStr((uint8*)"ATE0\r\n",strlen("ATE0\r\n"));
		 WIFIinfo.SendFlag=1;   
	 }
	 else if (strlen((char*)WIFIinfo.IMEI)==0)
	 {
		 //��ѯģ���MAC��
		WifiSendId=ATWMAC;
		UART2_SendStr((uint8*)"AT+WMAC?\r\n",strlen("AT+WMAC?\r\n"));
		WIFIinfo.SendFlag=1;
	 }
	if(WIFIinfo.SendFlag==1)
	{
		if(WifiDelayTime < 100)
			WifiDelayTime = 100;
	}
	else
		return 1;
	}

    return 0;

}


