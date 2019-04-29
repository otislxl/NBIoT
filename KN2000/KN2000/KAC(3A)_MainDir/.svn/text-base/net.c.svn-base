#include "net.h"
				

/************************************************************************ 
*名称:	     set_net_state
*类型:            函数类型
*描述:	     进入网络状态函数
*输入参数:     state网络状态
*输出参数:       
*返回值  :  
*其他说明:   
************************************************************************/
void set_net_state(MODULE_STS_E state)
{
	if(ModuleSts == state)
		return;
	ModuleSts = state;
	switch (ModuleSts)
	{
		case MODULE_IDLE_STS:
		{
		}
		break;
		
		case MODULE_INI_STS:
		{
		}
		break;

		case MODULE_SEND_STS:
		{
			Moudleinfo.AtCSQ = 0;
			set_sleep_counter_max(0);
			if(Moudleinfo.ops_type != OPS_TELECOM)
			{
				NetBreakHandle();
			}
		}
		break;

		case MODULE_WAIT_STS:
		{
			if(tcp_had_linked_flag)
			{
				Moudleinfo.AtNSOCL=0;
				Moudleinfo.AtCGATT0=0;
			}
			set_sleep_counter_min(KEEP_WORK_MAX_TIME-2);
		}
		break;
	
		default:
			break;
	}
}
/************************************************************************ 
*名称:	     net_link_handle
*类型:            函数类型
*描述:	     处理网络连接
*输入参数:     
*输出参数:       
*返回值  :  
*其他说明:   
************************************************************************/
void net_link_handle(void)
{	
	if(AtDelayTime)
		return;
	if (Moudleinfo.SendFlag==1)
		return;
		
	switch (ModuleSts)
	{
		case MODULE_IDLE_STS:
		case MODULE_INI_STS:
		{
			if(ModuleIniDisp()==1)
				set_net_state(MODULE_WAIT_STS);
		}break;
		case MODULE_SEND_STS:
		{
			ModuleNetLinkHandle();
		}
		break;
		case MODULE_WAIT_STS:
		{
			ModuleNetBreakHandle();

		}break;
		default:break;
	}
}

/************************************************************************ 
*名称:	     net_low_poewr_mode
*类型:            函数类型
*描述:	     网络低功耗处理
*输入参数:     
*输出参数:       
*返回值  :  
*其他说明:   
************************************************************************/
void net_low_poewr_mode(void)
{
	if(ModuleSts>MODULE_INI_STS)
		set_net_state(MODULE_WAIT_STS);
	load_continuous_flag=FALSE;
	SetNoDataTimeCount(0);
}

