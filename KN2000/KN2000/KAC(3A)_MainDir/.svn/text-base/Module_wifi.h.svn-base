#ifndef __MODULE_WIFI_H_ 
#define __MODULE_WIFI_H_
#include "sysdefs.h"
#include "defineconst.h"

//WIFI模块开关脚定义
#define WIFI_KEYPOWER_T       GPIOE
#define WIFI_KEYPOWER_P       GPIO_Pin_0

//WIFI模块复位脚定义
#define WIFI_RESET_T       GPIOE
#define WIFI_RESET_P       GPIO_Pin_1 

/* 常用AT指令定义 */
typedef enum
{
	ATE0 = 0,		//设置串口回显关闭
	AT_WSCAN,         //查询信号强度
	ATWMAC,              //查询模块的IMEI

	WIFI_CMD_MAX
}WifiCmdTypeT; 

typedef  struct WIFIMODULEINFO
{
	uint8 IniEndFlag;		//已设置COAP地址
	uint8 Csq;	               //信号强度

	uint8 IMEI[16];
	uint8 SendFlag; 
	uint8 AtUARTE;

}WIFIMODULEINFO;

extern WIFIMODULEINFO  WIFIinfo;

//串口2中断接收数据处理
void UART2_ISR(uint8 data);

char WifiAtComFormMoudle(void);

uint8 WifiModuleIniDisp(void);

void WifiModuleResetInit(void);
void Set_WIFI_IO_RESETGpio(unsigned char flag);
void WIFI_Module_Init(void);
#endif

