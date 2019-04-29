#ifndef __MODULE_WIFI_H_ 
#define __MODULE_WIFI_H_
#include "sysdefs.h"
#include "defineconst.h"

//WIFIģ�鿪�ؽŶ���
#define WIFI_KEYPOWER_T       GPIOE
#define WIFI_KEYPOWER_P       GPIO_Pin_0

//WIFIģ�鸴λ�Ŷ���
#define WIFI_RESET_T       GPIOE
#define WIFI_RESET_P       GPIO_Pin_1 

/* ����ATָ��� */
typedef enum
{
	ATE0 = 0,		//���ô��ڻ��Թر�
	AT_WSCAN,         //��ѯ�ź�ǿ��
	ATWMAC,              //��ѯģ���IMEI

	WIFI_CMD_MAX
}WifiCmdTypeT; 

typedef  struct WIFIMODULEINFO
{
	uint8 IniEndFlag;		//������COAP��ַ
	uint8 Csq;	               //�ź�ǿ��

	uint8 IMEI[16];
	uint8 SendFlag; 
	uint8 AtUARTE;

}WIFIMODULEINFO;

extern WIFIMODULEINFO  WIFIinfo;

//����2�жϽ������ݴ���
void UART2_ISR(uint8 data);

char WifiAtComFormMoudle(void);

uint8 WifiModuleIniDisp(void);

void WifiModuleResetInit(void);
void Set_WIFI_IO_RESETGpio(unsigned char flag);
void WIFI_Module_Init(void);
#endif

