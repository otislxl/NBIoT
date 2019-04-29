#ifndef __MODULEPROTOCOL_H_ 
#define __MODULEPROTOCOL_H_
#include "sysdefs.h"
#include "defineconst.h"
#include "mmi_common.h"
#include "net.h"
#include "main.h"
#include "uart1.h"

#define FLASH_BOOT_PROGRAM_BLOCKS 	0x10
#define FLASH_APP_PROGRAM_BLOCKS  	0x78
#define BACKUP_PROGRAM_AREA_ADDRESS 0x0000C400
typedef struct pedostepcnt
{
	uint8 startcnttime[13];
	uint8 endcnttime[13];
	uint32 stepcount;
	uint8 status;
	
}PEDOSTEPCNT_S;
extern uint16 ModuleResetTime;
extern uint8 g_had_link_manager;
extern uint8  ReBackNetBag;

extern void set_time(uint8 *time);

extern void set_date(uint8 *date);

extern unsigned short ProtoDataOrganized(unsigned char cmd,uint8 *card,uint8 flag);

//Э���ʼ��
void Protocol_Init(void);

//�ж��Ƿ����������緢������TRUEΪ��Ҫ����
uint8 GetNetNeedLinkState(void);
//����������ͺ����������ݺ���
void NetActiveHandle(void);
//ģ��ͨ���쳣����
void ModuleResetHandle(void);
uint16 ProtoDataAnalyze(uint8 *string,uint16 len);

#endif

