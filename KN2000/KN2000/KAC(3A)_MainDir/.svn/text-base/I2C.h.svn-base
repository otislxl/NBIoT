#ifndef __I2C_H__
#define __I2C_H__
/******************************************************************************/
#define IIC_INT_T	 GPIOE
#define IIC_INT_P GPIO_Pin_2
#define IIC_SCL_T    GPIOC
#define IIC_SCL_P    GPIO_Pin_1
#define IIC_SDA_T    GPIOC
#define IIC_SDA_P    GPIO_Pin_0
//BMA253  IIC
#define IIC_ADDRESS   0x18
#define I2C1_WRITE_ADDRESS7     ((IIC_ADDRESS)<<1)
#define I2C1_READ_ADDRESS7      (((IIC_ADDRESS)<<1)+1)
/****************************************************************************
* 名称：I2C_WriteByte(uint8_t addr,uint8_t data)
* 功能：进行IIC的写操作。
* 入口参数： uint8_t addr 寄存器的地址
* uint8_t data 写入的数据 
* 出口参数：无
* 说明：对寄存器进行单字节写入操作，变量都是16进制
****************************************************************************/

void I2C_WriteByte(unsigned char addr,unsigned char data);

/****************************************************************************
* 名称：uint8_t I2C_ReadByte(uint8_t addr)
* 功能：进行IIC的读操作。
* 入口参数： uint8_t addr 寄存器的地址 
* 出口参数： uint8_t i 保存读到的数据并作为参数返回
* 说明：对寄存器进行读出操作，变量都是16进制，IIC写操作要
先写寄存器再进行读寄存器的操作，否则会失败
****************************************************************************/
unsigned char I2C_ReadByte(unsigned char addr);
/****************************************************************************
* 名称：s8 I2C_Send_STRING(u8 addr, u8*array,u8 cnt);
* 功能：连续写IIC。
* 入口参数： uint8_t addr 寄存器的地址 ,要写字符串的起始地址u8*array,要写字符串的长度cnt。
* 出口参数： 写操作执行结果作为参数返回   成功返回0 失败返回-1.
* 说明：对寄存器进行连续写入操作，变量都是16进制
****************************************************************************/
signed char I2C_Send_STRING(unsigned char addr, unsigned char*array,unsigned char cnt);

signed char I2C_WRITE_READ_STRING(unsigned char dev_addr,unsigned char *array,unsigned char cnt);

void Gsensor_IIC_Init(void);

#endif
