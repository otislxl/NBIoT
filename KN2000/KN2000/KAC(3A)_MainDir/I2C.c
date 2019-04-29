#include "I2C.h"
#include "stm8l15x_i2c.h"
#include "stm8l15x.h"
/**************************************************************************/
/****************************************************************************
* ���ƣ�I2C_WriteByte(uint8_t addr,uint8_t data)
* ���ܣ�����IIC��д������
* ��ڲ����� uint8_t addr �Ĵ����ĵ�ַ
* uint8_t data д������� 
* ���ڲ�������
* ˵�����ԼĴ������е��ֽ�д���������������16����
****************************************************************************/
void I2C_WriteByte(unsigned char addr, unsigned char data)
{
	while(I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY)); //�ȴ�����

	I2C_GenerateSTART(I2C1, ENABLE);//����I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,��ģʽ*/
	I2C_Send7bitAddress(I2C1, I2C1_WRITE_ADDRESS7, I2C_Direction_Transmitter);//������ַ -- Ĭ��0xD0
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	I2C_SendData(I2C1, addr);//�Ĵ�����ַ
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	I2C_SendData(I2C1, data);//��������
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	I2C_AcknowledgeConfig(I2C1,ENABLE);

	I2C_GenerateSTOP(I2C1, ENABLE);//�ر�I2C1����
}
/****************************************************************************
* ���ƣ�uint8_t I2C_ReadByte(uint8_t addr)
* ���ܣ�����IIC�Ķ�������
* ��ڲ����� uint8_t addr �Ĵ����ĵ�ַ 
* ���ڲ����� uint8_t i ������������ݲ���Ϊ��������
* ˵�����ԼĴ������ж�����������������16���ƣ�IICд����Ҫ
��д�Ĵ����ٽ��ж��Ĵ����Ĳ����������ʧ��
****************************************************************************/
unsigned char I2C_ReadByte(uint8_t addr)
{
	unsigned char i;

	while(I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY));

	I2C_GenerateSTART(I2C1, ENABLE);//����I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,��ģʽ*/
	I2C_Send7bitAddress(I2C1, I2C1_WRITE_ADDRESS7, I2C_Direction_Transmitter);//������ַ -- Ĭ��0xD0
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	I2C_SendData(I2C1, addr);//�Ĵ�����ַ
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));



	I2C_GenerateSTART(I2C1, ENABLE);//����I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,��ģʽ*/

	I2C_Send7bitAddress(I2C1, I2C1_READ_ADDRESS7, I2C_Direction_Receiver);//������ַ -- Ĭ��0xD1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));


	while (!I2C_CheckEvent(I2C1,I2C_EVENT_MASTER_BYTE_RECEIVED));
	i=I2C_ReceiveData(I2C1);//��ȡ����

	I2C_AcknowledgeConfig(I2C1,DISABLE);

	I2C_GenerateSTOP(I2C1, ENABLE);//�ر�I2C1����

	return i;
}
/****************************************************************************
* ���ƣ�s8 I2C_Send_STRING(u8 addr, u8*array,u8 cnt);
* ���ܣ�����дIIC��
* ��ڲ����� uint8_t addr �Ĵ����ĵ�ַ ,Ҫд�ַ�������ʼ��ַu8*array,Ҫд�ַ����ĳ���cnt��
* ���ڲ����� д����ִ�н����Ϊ��������   �ɹ�����0 ʧ�ܷ���-1.
* ˵�����ԼĴ�����������д���������������16����
****************************************************************************/
signed char I2C_Send_STRING(unsigned char dev_addr, unsigned char*array,unsigned char cnt)
{
	unsigned char i=0;

	while(I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY)); //�ȴ�����

	I2C_GenerateSTART(I2C1, ENABLE);//����I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,��ģʽ*/
	I2C_Send7bitAddress(I2C1, (dev_addr<<1), I2C_Direction_Transmitter);//������ַ -- Ĭ��0xD0
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	I2C_SendData(I2C1, array[0]);//�Ĵ�����ַ	
	for(i=1;i<cnt;i++)
	{	
		while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
		I2C_SendData(I2C1, array[i]);//��������
	}
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	I2C_AcknowledgeConfig(I2C1,ENABLE);

	I2C_GenerateSTOP(I2C1, ENABLE);//�ر�I2C1����

	return 0;
}

signed char I2C_WRITE_READ_STRING(unsigned char dev_addr,unsigned char *array, unsigned char cnt)
{
	unsigned char i;

	while(I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY));

	I2C_GenerateSTART(I2C1, ENABLE);//����I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,��ģʽ*/
	I2C_Send7bitAddress(I2C1,(dev_addr<<1) , I2C_Direction_Transmitter);//������ַ -- Ĭ��0xD0
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	I2C_SendData(I2C1, array[0]);//�Ĵ�����ַ
	while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));



	I2C_GenerateSTART(I2C1, ENABLE);//����I2C1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));/*EV5,��ģʽ*/

	I2C_Send7bitAddress(I2C1, ((dev_addr<<1)+1), I2C_Direction_Receiver);//������ַ -- Ĭ��0xD1
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));

	for(i=0;i<cnt;i++)
	{
		while (!I2C_CheckEvent(I2C1,I2C_EVENT_MASTER_BYTE_RECEIVED));
		array[i]=I2C_ReceiveData(I2C1);//��ȡ����
	}

	I2C_AcknowledgeConfig(I2C1,DISABLE);

	I2C_GenerateSTOP(I2C1, ENABLE);//�ر�I2C1����

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
