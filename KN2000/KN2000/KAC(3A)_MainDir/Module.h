#ifndef __MODULE_H_ 
#define __MODULE_H_
#include "sysdefs.h"
#include "defineconst.h"
#include "mmi_common.h"
#include "net.h"
#include "main.h"
#include "uart1.h"

/* 常用AT指令定义 */
typedef enum
{
	AT_CSQ = 0,
	ATCGMR,		//查询模块版本号
	ATCGSN,			//查询模块的IMEI
	ATCIMI,			//读UIM卡的IMSI号
	ATCFUN0,		//休眠切换开启最小功能模式
	ATGETNBAND,	//查询网络的频段	
	ATNBAND,		//设置网络的频段	5 电信  8  移动
	ATNCDP,			//设置cdp服务器地址
	ATNNMI,			//设置接收数据后提示 
	ATCEREG,		//查询注册上网络否 
	ATCSCON,		//查询数据网络连接状态
	ATNRB,			//系统重启  
	ATNMGS,		//发送数据  
	ATCFUN1,		//休眠切换开启全功能模式
	ATGETCFUN,		//查询是否开启全功能模式
	ATCEDRXS,		//关闭模组eDRX 功能 
	ATNMGR,		//查询网络数据 
	ATNQMER,		//查询模块中是否有数据没有接收
	ATCMEE,			//设置模块回传模式
	ATCPSMS,		//设置模块可进入PSM模式
	ATGETNCDP,		//查询NCDP	地址
	ATCCLK,			//获取网络时间
	ATNCSEARFCN,	//清除先验频点
	ATCGATT1,		//设置附着网络
	ATCGATT0,		//清除附着网络
	ATGETCGATT,	//查询附着网络
	ATNUESTATS,	//查询模块状态
	ATNSOCR,		//创建socket  UDP  17, TCP  6
	ATNSOCO,		//设置TCP IP PORT  
	ATNSOCD,		//发送TCP数据  
	ATNSORF,		//读取接收到的TCP数据  
	ATNSOCL,		//关闭socket
	ATQREGSWT,		//模块重启后注册网络模式1自动2不使能自动注网
	ATQLWULDATA,	// 带RAI功能发送数据
	
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
	uint8 Csq;               				//信号强度

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
	uint8 AtCEDRXS;					//关闭模组eDRX
	uint8 AtNCSEARFCN;				//清除先验频点
	uint8 AtCGATT1;
	uint8 AtCGATT0;
	uint8 AtGetCEREG;
	uint8 AtGetCGATT;
	uint8 AtNUESTATS;
	
	uint8 send_ATNCDPok;                	//设置Coap服务的ip port
	uint8 AtNRB;

	uint8 send_ATNNMIok;
	uint8 AtGetnband;
	uint8 Atnband;
	uint8 GetipOk;
	uint8 QuestDataFlag;		          	//请求数据标记

	uint8 battleave;
	int16 sinr;						//信号与干扰加噪声比
	int16 rsrp;						//信号接收功率
	uint16 pci;						//物理小区标识

	uint16  SendDataTime;			//重发数据间隔时间

	uint8 AtQREGSWT;				//使能重启后注册网络模式
	uint8 AtNSOCR;					//创建 socket
	uint8 AtNSOCO;					//socket IP
	uint8 AtNSOCL;					//关闭 socket
	uint8 AtCSQ;						//查询信号强度
	uint8 ops_type;
	uint8 NB_plantform_IP[16];
	uint8 NB_palntform_PORT[6];

}MODULEINFO;

extern MODULEINFO  Moudleinfo;

extern uint8 tcp_had_linked_flag;
extern uint8 AtDelayTime;
extern uint8 g_at_no_response;
extern uint8  ReSndCount;//重发次数

extern void RecAtComFormMoudle(void);

extern uint8 ModuleIniDisp(void);

extern void set_time(uint8 *time);

extern void set_date(uint8 *date);

extern void SendDataToNBmodule(void);
extern void SendProToNBmodule(uint8 *buf,uint16 len,uint8 send_type);

extern void ModuleResetInit(void);
extern void ModuleNetLinkHandle(void);
//设置保持网络连接的时间
extern void SetNoDataTimeCount(uint8 time);

void Uart1RevHandle(void);
void GetNBplantformIPandPORT(void);
void SetReSendDataTime(uint16 time);

//网络断开处理
void NetBreakHandle(void);
//模块断开TCP网络处理
void ModuleNetBreakHandle(void);
//联网时间超时处理
void LinkNetTimeOutHandle(void);

//模块复位处理
void HW_ModuleReset(void);
			 
#endif

