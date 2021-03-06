#include "I2C.h"
#include "stm8l15x_i2c.h"
#include "stm8l15x.h"
/**************************************************************************/
/****************************************************************************
* 名称：I2C_WriteByte(uint8_t addr,uint8_t data)
* 功能：进行IIC的写操作。
* 入口参数： uint8_t addr 寄存器的地址
* uint8_t data 写入的数据 
* 出口参数：无
* 说明：对寄存器进行单字节写入操作，变量都是16进制
****************************************************************************/
void I2C_WriteByte(unsigned char addr, unsigned char data)
{
	while(I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY)); //等待空闲

	I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,主模式*/
	I2C_Send7bitAddress(I2C1, I2C1_WRITE_ADDRESS7, I2C_Direction_Transmitter);//器件地址 -- 默认0xD0
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	I2C_SendData(I2C1, addr);//寄存器地址
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	I2C_SendData(I2C1, data);//发送数据
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	I2C_AcknowledgeConfig(I2C1,ENABLE);

	I2C_GenerateSTOP(I2C1, ENABLE);//关闭I2C1总线
}
/****************************************************************************
* 名称：uint8_t I2C_ReadByte(uint8_t addr)
* 功能：进行IIC的读操作。
* 入口参数： uint8_t addr 寄存器的地址 
* 出口参数： uint8_t i 保存读到的数据并作为参数返回
* 说明：对寄存器进行读出操作，变量都是16进制，IIC写操作要
先写寄存器再进行读寄存器的操作，否则会失败
****************************************************************************/
unsigned char I2C_ReadByte(uint8_t addr)
{
	unsigned char i;

	while(I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY));

	I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,主模式*/
	I2C_Send7bitAddress(I2C1, I2C1_WRITE_ADDRESS7, I2C_Direction_Transmitter);//器件地址 -- 默认0xD0
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	I2C_SendData(I2C1, addr);//寄存器地址
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));



	I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,主模式*/

	I2C_Send7bitAddress(I2C1, I2C1_READ_ADDRESS7, I2C_Direction_Receiver);//器件地址 -- 默认0xD1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));


	while (!I2C_CheckEvent(I2C1,I2C_EVENT_MASTER_BYTE_RECEIVED));
	i=I2C_ReceiveData(I2C1);//读取数据

	I2C_AcknowledgeConfig(I2C1,DISABLE);

	I2C_GenerateSTOP(I2C1, ENABLE);//关闭I2C1总线

	return i;
}
/****************************************************************************
* 名称：s8 I2C_Send_STRING(u8 addr, u8*array,u8 cnt);
* 功能：连续写IIC。
* 入口参数： uint8_t addr 寄存器的地址 ,要写字符串的起始地址u8*array,要写字符串的长度cnt。
* 出口参数： 写操作执行结果作为参数返回   成功返回0 失败返回-1.
* 说明：对寄存器进行连续写入操作，变量都是16进制
****************************************************************************/
signed char I2C_Send_STRING(unsigned char dev_addr, unsigned char*array,unsigned char cnt)
{
	unsigned char i=0;

	while(I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY)); //等待空闲

	I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,主模式*/
	I2C_Send7bitAddress(I2C1, (dev_addr<<1), I2C_Direction_Transmitter);//器件地址 -- 默认0xD0
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	I2C_SendData(I2C1, array[0]);//寄存器地址	
	for(i=1;i<cnt;i++)
	{	
		while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
		I2C_SendData(I2C1, array[i]);//发送数据
	}
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	I2C_AcknowledgeConfig(I2C1,ENABLE);

	I2C_GenerateSTOP(I2C1, ENABLE);//关闭I2C1总线

	return 0;
}

signed char I2C_WRITE_READ_STRING(unsigned char dev_addr,unsigned char *array, unsigned char cnt)
{
	unsigned char i;

	while(I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY));

	I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,主模式*/
	I2C_Send7bitAddress(I2C1,(dev_addr<<1) , I2C_Direction_Transmitter);//器件地址 -- 默认0xD0
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	I2C_SendData(I2C1, array[0]);//寄存器地址
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));



	I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,主模式*/

	I2C_Send7bitAddress(I2C1, ((dev_addr<<1)+1), I2C_Direction_Receiver);//器件地址 -- 默认0xD1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));

	for(i=0;i<cnt;i++)
	{
		while (!I2C_CheckEvent(I2C1,I2C_EVENT_MASTER_BYTE_RECEIVED));
		array[i]=I2C_ReceiveData(I2C1);//读取数据
	}

	I2C_AcknowledgeConfig(I2C1,DISABLE);

	I2C_GenerateSTOP(I2C1, ENABLE);//关闭I2C1总线

	return 0;
}
void Gsensor_IIC_Init(void)
{
	GPIO_Init(IIC_SCL_T, IIC_SCL_P|IIC_SDA_P, GPIO_Mode_Out_OD_HiZ_Slow);
	//EXTI_SetPinSensitivity(EXTI_Pin_2, EXTI_Trigger_Falling_Low);
	//GPIO_Init(IIC_INT_T,IIC_INT_P, GPIO_Mode_In_FL_IT);
	CLK_PeripheralClockConfig(CLK_Peripheral_I2C1 , ENABLE );
	I2C_DeInit(I2C1);
	I2C_Init(I2C1, I2C_MAX_STANDARD_FREQ, IIC_ADDRESS, I2C_Mode_I2C, I2C_DutyCycle_2,I2C_Ack_Enable, I2C_AcknowledgedAddress_7bit );
}

