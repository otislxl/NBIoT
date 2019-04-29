#ifndef __MODULE_H_ 
#define __MODULE_H_
#include "sysdefs.h"
#include "defineconst.h"
#include "mmi_common.h"
#include "net.h"
#include "main.h"
#include "uart1.h"

/* ����ATָ��� */
typedef enum
{
	AT_CSQ = 0,
	ATCGMR,		//��ѯģ��汾��
	ATCGSN,			//��ѯģ���IMEI
	ATCIMI,			//��UIM����IMSI��
	ATCFUN0,		//�����л�������С����ģʽ
	ATGETNBAND,	//��ѯ�����Ƶ��	
	ATNBAND,		//���������Ƶ��	5 ����  8  �ƶ�
	ATNCDP,			//����cdp��������ַ
	ATNNMI,			//���ý������ݺ���ʾ 
	ATCEREG,		//��ѯע��������� 
	ATCSCON,		//��ѯ������������״̬
	ATNRB,			//ϵͳ����  
	ATNMGS,		//��������  
	ATCFUN1,		//�����л�����ȫ����ģʽ
	ATGETCFUN,		//��ѯ�Ƿ���ȫ����ģʽ
	ATCEDRXS,		//�ر�ģ��eDRX ���� 
	ATNMGR,		//��ѯ�������� 
	ATNQMER,		//��ѯģ�����Ƿ�������û�н���
	ATCMEE,			//����ģ��ش�ģʽ
	ATCPSMS,		//����ģ��ɽ���PSMģʽ
	ATGETNCDP,		//��ѯNCDP	��ַ
	ATCCLK,			//��ȡ����ʱ��
	ATNCSEARFCN,	//�������Ƶ��
	ATCGATT1,		//���ø�������
	ATCGATT0,		//�����������
	ATGETCGATT,	//��ѯ��������
	ATNUESTATS,	//��ѯģ��״̬
	ATNSOCR,		//����socket  UDP  17, TCP  6
	ATNSOCO,		//����TCP IP PORT  
	ATNSOCD,		//����TCP����  
	ATNSORF,		//��ȡ���յ���TCP����  
	ATNSOCL,		//�ر�socket
	ATQREGSWT,		//ģ��������ע������ģʽ1�Զ�2��ʹ���Զ�ע��
	ATQLWULDATA,	// ��RAI���ܷ�������
	
	AT_CMD_MAX
}NbCmdTypeT; 

typedef enum
{	
	OPS_CMCC=0,
	OPS_UNICOM,
	OPS_TELECOM,
	OPS_NULL,                            
	OPS_INVALID,                      
}OPS_TYEP_E;

typedef  struct MODULEINFO
{
	uint8 Csq;               				//�ź�ǿ��

	uint16 batt;
	uint8 IMEI[16];
	uint8 IMSI[16];
	uint8 Ver[32];
	uint8 SendFlag; 
	uint8 QuestAck;
	uint8 CpmsSet;

	uint8 AtCFUN0;
	uint8 AtCFUN1;
	uint8 AtGetCFUN;
	uint8 AtCEDRXS;					//�ر�ģ��eDRX
	uint8 AtNCSEARFCN;				//�������Ƶ��
	uint8 AtCGATT1;
	uint8 AtCGATT0;
	uint8 AtGetCEREG;
	uint8 AtGetCGATT;
	uint8 AtNUESTATS;
	
	uint8 send_ATNCDPok;                	//����Coap�����ip port
	uint8 AtNRB;

	uint8 send_ATNNMIok;
	uint8 AtGetnband;
	uint8 Atnband;
	uint8 GetipOk;
	uint8 QuestDataFlag;		          	//�������ݱ��

	uint8 battleave;
	int16 sinr;						//�ź�����ż�������
	int16 rsrp;						//�źŽ��չ���
	uint16 pci;						//����С����ʶ

	uint16  SendDataTime;			//�ط����ݼ��ʱ��

	uint8 AtQREGSWT;				//ʹ��������ע������ģʽ
	uint8 AtNSOCR;					//���� socket
	uint8 AtNSOCO;					//socket IP
	uint8 AtNSOCL;					//�ر� socket
	uint8 AtCSQ;						//��ѯ�ź�ǿ��
	uint8 ops_type;
	uint8 NB_plantform_IP[16];
	uint8 NB_palntform_PORT[6];

}MODULEINFO;

extern MODULEINFO  Moudleinfo;

extern uint8 tcp_had_linked_flag;
extern uint8 AtDelayTime;
extern uint8 g_at_no_response;
extern uint8  ReSndCount;//�ط�����

extern void RecAtComFormMoudle(void);

extern uint8 ModuleIniDisp(void);

extern void set_time(uint8 *time);

extern void set_date(uint8 *date);

extern void SendDataToNBmodule(void);
extern void SendProToNBmodule(uint8 *buf,uint16 len,uint8 send_type);

extern void ModuleResetInit(void);
extern void ModuleNetLinkHandle(void);
//���ñ����������ӵ�ʱ��
extern void SetNoDataTimeCount(uint8 time);

void Uart1RevHandle(void);
void GetNBplantformIPandPORT(void);
void SetReSendDataTime(uint16 time);

//����Ͽ�����
void NetBreakHandle(void);
//ģ��Ͽ�TCP���紦��
void ModuleNetBreakHandle(void);
//����ʱ�䳬ʱ����
void LinkNetTimeOutHandle(void);

//ģ�鸴λ����
void HW_ModuleReset(void);
			 
#endif

