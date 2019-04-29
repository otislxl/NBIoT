#ifndef __OVERTIMEQUEUE_H
#define __OVERTIMEQUEUE_H

#include "defineconst.h"

#define         OVERTIMEQUEUE_NUM            8

typedef  struct OVERTIMEOUT
{
	EVENT_ID_T   type;
	uint16  timeValue;
	uint32  line;
}OVERTIMEOUT;


extern uint8 FillOverTimeQueue(EVENT_ID_T type,uint16 OverTime,int line);

extern void  DecOverTime(void);


#endif
