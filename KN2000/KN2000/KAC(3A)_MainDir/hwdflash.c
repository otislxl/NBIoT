/****************************************Copyright (c)**************************************************                         
**------------------------------------------------------------------------------------------------------
** Modified by:			
** Modified date:	
** Version:
** Descriptions:		
********************************************************************************************************/

/* Includes ------------------------------------------------------------------*/
#include "hwdflash.h"

/*flash初始化写保护*/
void hw_eeprom_flash_init(void)
{
	/* Define flash programming Time*/
	FLASH_SetProgrammingTime(FLASH_ProgramTime_Standard);

	FLASH_Lock(FLASH_MemType_Program);
	while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == SET);
}

/*******************************************************************************
Dst: 目标地址,范围 0x0 - MAX_ADDR
RcvBufPt: 接收缓存的指针
NByte: 要读取的数据字节数	

操作成功则返回OK,失败则返回ERROR

*******************************************************************************/
void hw_eeprom_read_bytes(uint8 Dst, uint8* RcvBufPt ,uint8 NByte)
{
	uint32_t i=0,add, startadd, stopadd = 0;
	startadd = FLASH_DATA_EEPROM_START_PHYSICAL_ADDRESS + ((uint16_t)BLOCK_OPERATION * (uint16_t)FLASH_BLOCK_SIZE+Dst);
	stopadd = startadd + NByte;
	for (add = startadd; add < stopadd; add++)
	{
		RcvBufPt[i++] = FLASH_ReadByte(add);
	}
}

/*******************************************************************************
Dst: 目标地址,范围 0x0 - MAX_ADDR（MAX_ADDR = 0x7FFFFF）
SndbufPt: 发送缓存区指针
NByte: 要写的数据字节数

操作成功则返回OK,失败则返回ERROR
*******************************************************************************/
void hw_eeprom_write_bytes(uint8 Dst, uint8* SndbufPt,uint8 NByte)
{
	uint32_t i=0,startadd;
	startadd = FLASH_DATA_EEPROM_START_PHYSICAL_ADDRESS + ((uint16_t)BLOCK_OPERATION * (uint16_t)FLASH_BLOCK_SIZE+Dst);

	/* Unlock flash data eeprom memory */
	FLASH_Unlock(FLASH_MemType_Data);
	/* Wait until Data EEPROM area unlocked flag is set*/
	while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET)
	{}

  	for(i=0;i<NByte;i++)
  	{
  		FLASH_ProgramByte((startadd+i),SndbufPt[i]);
		/* Wait until End of high voltage flag is set*/
		while (FLASH_GetFlagStatus(FLASH_FLAG_HVOFF) == RESET)
		{}
  	}
	FLASH_Lock(FLASH_MemType_Data);
	while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == SET)
	{}
}

/*******************************************************************************
Dst: 目标地址,范围 0x0 - MAX_ADDR（MAX_ADDR = 0x7FFFFF）
SndbufPt: 发送缓存区指针
NByte: 要写的数据字节数

操作成功则返回OK,失败则返回ERROR
*******************************************************************************/
uint8_t hw_flash_write_bytes(uint32_t Dst, uint8_t* SndbufPt,uint32_t NByte)
{
	FLASH_Unlock(FLASH_MemType_Program);
	/* Wait until Flash Program area unlocked flag is set*/
	while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == RESET)
	{}

	FLASH_Lock(FLASH_MemType_Program);
	while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == SET)
	{}
        
        return 0;
}

uint8_t hw_flash_write_block(uint32_t Dst, uint8_t* SndbufPt)
{
	FLASH_Unlock(FLASH_MemType_Program);
	/* Wait until Flash Program area unlocked flag is set*/
	while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == RESET)
	{}

	/* This function is executed from RAM */
	FLASH_ProgramBlock(Dst, FLASH_MemType_Data, FLASH_ProgramMode_Standard, SndbufPt);

	/* Wait until End of high voltage flag is set*/
	while (FLASH_GetFlagStatus(FLASH_FLAG_HVOFF) == RESET)
	{}

	FLASH_Lock(FLASH_MemType_Program);
	while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == SET)
	{}
     
        return 0;
}
uint8_t hw_flash_erase_block(uint32_t Dst)
{
	FLASH_Unlock(FLASH_MemType_Program);
	/* Wait until Flash Program area unlocked flag is set*/
	while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == RESET)
	{}

	/* Erase block 0 and verify it */
	/* This function is executed from RAM */
	FLASH_EraseBlock(Dst, FLASH_MemType_Program);

	FLASH_Lock(FLASH_MemType_Program);
	while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == SET)
	{}
        
        return 0;
}

/*********************************************************************************************************
      END FILE
*********************************************************************************************************/

