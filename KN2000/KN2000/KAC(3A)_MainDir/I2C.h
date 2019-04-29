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
* ���ƣ�I2C_WriteByte(uint8_t addr,uint8_t data)
* ���ܣ�����IIC��д������
* ��ڲ����� uint8_t addr �Ĵ����ĵ�ַ
* uint8_t data д������� 
* ���ڲ�������
* ˵�����ԼĴ������е��ֽ�д���������������16����
****************************************************************************/

void I2C_WriteByte(unsigned char addr,unsigned char data);

/****************************************************************************
* ���ƣ�uint8_t I2C_ReadByte(uint8_t addr)
* ���ܣ�����IIC�Ķ�������
* ��ڲ����� uint8_t addr �Ĵ����ĵ�ַ 
* ���ڲ����� uint8_t i ������������ݲ���Ϊ��������
* ˵�����ԼĴ������ж�����������������16���ƣ�IICд����Ҫ
��д�Ĵ����ٽ��ж��Ĵ����Ĳ����������ʧ��
****************************************************************************/
unsigned char I2C_ReadByte(unsigned char addr);
/****************************************************************************
* ���ƣ�s8 I2C_Send_STRING(u8 addr, u8*array,u8 cnt);
* ���ܣ�����дIIC��
* ��ڲ����� uint8_t addr �Ĵ����ĵ�ַ ,Ҫд�ַ�������ʼ��ַu8*array,Ҫд�ַ����ĳ���cnt��
* ���ڲ����� д����ִ�н����Ϊ��������   �ɹ�����0 ʧ�ܷ���-1.
* ˵�����ԼĴ�����������д���������������16����
****************************************************************************/
signed char I2C_Send_STRING(unsigned char addr, unsigned char*array,unsigned char cnt);

signed char I2C_WRITE_READ_STRING(unsigned char dev_addr,unsigned char *array,unsigned char cnt);

void Gsensor_IIC_Init(void);

#endif
