#ifndef __EVENTQUEUE_H
#define __EVENTQUEUE_H

#include "defineconst.h"

#define         EVENTQUEUE_NUM               8


typedef  struct EVENTINFO
{
	EVENT_ID_T type;
	uint8  buf[7];
}EVENTINFO;



extern EVENTINFO Eventinfo[EVENTQUEUE_NUM];

extern uint8 EventReadPtr,EventWritePtr;

extern void FillEventQueue(EVENT_ID_T type,char *buf,uint8 len);

extern uint8 GetOneEvent(EVENTINFO *p);



#endif




















