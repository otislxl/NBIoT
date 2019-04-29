#ifndef SYSDEFS_H
#define SYSDEFS_H
/*****************************************************************************
 
  FILE NAME:  sysdefs.h
 
  DESCRIPTION:
  
    This include file provides system wide global type declarations and
    constants.

* Copyright (c) 1998 - 2002 LSI Logic. All rights reserved. LSI Confidential information.
* Copyright (c) 2002, VIA Technologies, Inc.
*****************************************************************************/
//#include "string.h"    /* <string.h> doesn't work */
#include "stm8l15x.h"  
/*--------------------------------------------------------------------
* Define system wide data types
*--------------------------------------------------------------------*/

typedef signed char    		int8;
typedef signed short   		int16;
typedef signed long    		int32;

typedef unsigned char  		uint8;
typedef unsigned short 		uint16;
typedef unsigned long  		uint32;

typedef signed 	 char  					rt_int8_t;
typedef signed 	 short 					rt_int16_t;
typedef signed 	 long  					rt_int32_t;
typedef unsigned char  					rt_uint8_t;
typedef unsigned short 					rt_uint16_t;
typedef unsigned long  					rt_uint32_t;
typedef unsigned char						rt_bool_t;

#ifndef NULL
#define NULL 0
#endif

/* 独立看门狗*/
#ifndef SUPPORT_IWDG
//#define SUPPORT_IWDG
#endif

//支持指纹模块
//#define SUPPORT_FINGER

//支持WiFi模块
#define SUPPORT_WIFI

#endif
