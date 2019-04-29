#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include "sysdefs.h"
#include "OverTimeQueue.h"
#include "EventQueue.h"
#include "uart1.h"

OVERTIMEOUT OverTimeOut[OVERTIMEQUEUE_NUM];
extern uint8 EventQueueLock;

void IniOverTime(void)
{
	uint8 i;
	for (i=0;i<OVERTIMEQUEUE_NUM;i++)
    {
		OverTimeOut[i].timeValue=0;
		OverTimeOut[i].type=EVENT_ID_MAX;
	}
}

uint8 FillOverTimeQueue(EVENT_ID_T type,uint16 OverTime,int line)
{
	uint8 i;
    
	for (i=0;i<OVERTIMEQUEUE_NUM;i++)
    {
		if (OverTimeOut[i].type==type)
		{
		  OverTimeOut[i].timeValue=OverTime;

		  EventQueueLock=1;
		  EventQueueLock=0;


		  return 1;
		}
	}

	for (i=0;i<OVERTIMEQUEUE_NUM;i++)
	{
		if (OverTimeOut[i].timeValue==0)
		{
			OverTimeOut[i].type=type;
			OverTimeOut[i].timeValue=OverTime;
			EventQueueLock=1;

			EventQueueLock=0;

			return 1;
		}
	}

	EventQueueLock=1;

	EventQueueLock=0;

	return 0;
	
}





void  DecOverTime(void)
{
	uint8 i;

	for (i=0;i<OVERTIMEQUEUE_NUM;i++)
	{
		if (OverTimeOut[i].timeValue !=0)
		{
			OverTimeOut[i].timeValue--;
			if (OverTimeOut[i].timeValue ==0)
			{
				FillEventQueue(OverTimeOut[i].type,0,0);
			}
		}
	}
	
}





















