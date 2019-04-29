#ifndef __DEFINECONST_H_ 
#define __DEFINECONST_H_

#define  RESEND_DATA_TIME			600			//重发网络数据间隔12S
#define  NO_NET_DATA_TIME			6			//无数据等待网络数据最小时间3S
#define  NET_DATA_MIN_TIME			40			//发数据后等待回应数据最小时间20S
#define  NET_DATA_MAX_TIME			90			//等待网络数据最大时间45S
#define  MOUDLE_WORKING_MAX_TIME 200			//模块最长无效工作时间200S

//协议类型定义
#define  PROHEAD					0XAA
#define  TRANSF_UPDATE_PACK            	0x15		//远程升级
#define  TERMINALHEARTBEAT			0x19		//和维护平台心跳
#define  REPORT_STS					0x29
#define  DOWN_CONFIG				0x2A

//缓冲区大小
#define  CREATE_PRO_BUF_SIZE            200  		//512 按发送开门记录协议最大长度定义
#define  REV_PRO_BUF_SIZE	          	530  		//按目前定义接收协议的最大长度定义

//事件、消息类型定义
typedef enum
{
	PASS_OVERLEN_OVERTIME_EVENT= 0,
	PASS_ERROR_OVERTIME_EVENT,
	EVENT_ID_MAX
}EVENT_ID_T;

/* 网络状态枚举定义 */
typedef enum
{
	MODULE_IDLE_STS = 0,	
	MODULE_INI_STS,			//模块初始化
	MODULE_SEND_STS,			//模块发送状态
	MODULE_WAIT_STS,			//模块初始化后等待状态
	          
}MODULE_STS_E;


#endif
