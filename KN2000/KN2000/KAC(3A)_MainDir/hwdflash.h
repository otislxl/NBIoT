#ifndef __HWDFLASH_H_ 
#define __HWDFLASH_H_

/* Includes ------------------------------------------------------------------*/
#include "stm8l15x.h"
#include "sysdefs.h"

#define BLOCK_OPERATION    0    /* block 0 in data eeprom memory: address is 0x1000 */

/* 系统NV 参数配置定义 */
typedef enum
{
	NV_NORMAL_HEART 		= 0,							// 2BYTES
	NV_SAFE_AREA_HEART    	= NV_NORMAL_HEART+2,		// 2BYTES
	NV_SOFT_VERSION		= NV_SAFE_AREA_HEART+2,	// 8BYTES
	NV_SOFT_LEN			= NV_SOFT_VERSION+8,		// 4BYTES
	NV_SOFT_CHECK			= NV_SOFT_LEN+4,			// 2BYTES
	NV_UPDATE_FLAG		= NV_SOFT_CHECK+2,			// 1BYTES

	NV_NB_PLANTFORM_IP  	= NV_UPDATE_FLAG+1,      // 15BYTES
	NV_NB_PLANTFORM_PORT  =NV_NB_PLANTFORM_IP+15,	// 5BYTES
	NV_RST_CR				= NV_NB_PLANTFORM_PORT+5,	// 1BYTES
	NV_BACK_RST_CR		= NV_RST_CR+1,	// 1BYTES
	NV_SAFE_MAC			= NV_BACK_RST_CR+1,	// 17BYTES*15
}NV_ITEM_E;

/* Private function prototypes -----------------------------------------------*/
void hw_eeprom_flash_init(void);
void hw_eeprom_read_bytes(uint8 Dst, uint8* RcvBufPt ,uint8 NByte);
void hw_eeprom_write_bytes(uint8 Dst, uint8* SndbufPt,uint8 NByte);

#endif
/*********************************************************************************************************
      END FILE
*********************************************************************************************************/

