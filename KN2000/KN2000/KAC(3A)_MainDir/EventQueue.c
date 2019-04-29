#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include "sysdefs.h"
#include "EventQueue.h"

EVENTINFO Eventinfo[EVENTQUEUE_NUM];
uint8 EventReadPtr,EventWritePtr;
uint8 EventQueueLock=0;
uint16 LoseventCount=0;

void FillEventQueue(EVENT_ID_T type,char *buf,uint8 len)
{
	uint8 tempwptr;
	
    EventQueueLock=1;

    tempwptr = (EventWritePtr+1) %EVENTQUEUE_NUM;
    if (tempwptr !=EventReadPtr)
	{
		Eventinfo[EventWritePtr].type=type;
		if (buf)
		{
			memcpy(Eventinfo[EventWritePtr].buf,buf,len);
		}
		EventWritePtr=tempwptr;
	}
	else LoseventCount++; 

	EventQueueLock=0;
}

uint8 GetOneEvent(EVENTINFO *p)
{
	if (EventReadPtr !=EventWritePtr)
	{
		memcpy(p,&Eventinfo[EventReadPtr],sizeof(EVENTINFO));
		EventReadPtr =(EventReadPtr+1)%EVENTQUEUE_NUM;
		return 1;
	}
	
	return 0;
}

