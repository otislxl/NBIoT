
#ifndef __MMI_COMMON_H
#define __MMI_COMMON_H

#include "sysdefs.h"

uint8 BinToBcd(uint8 bin_data);
uint8 BcdToBin(uint8 bcd_data);
/* 16进制转换成ASCALL 码*/
char BinToAsc(char bin_data);
/* ASCALL 码转换成16进制*/
uint8 AsctoBin(uint8 asc_data);

uint8  AciiToHex(char *buf);
uint8 StrToBcd(uint8 *buf);

uint8  BcdHexToString(uint8 *in,uint8 inlen,uint8 *out);
bool TransfromStrToBcd(
							 uint8             *bcd_ptr,  // out: called BCD number array
							 uint8             *length_ptr, // out: the BCD array length
							 uint8              *tel_str,     // in:  telephone number string
							 uint8             str_length   // in: telephone number string length
							 );  

/* BCD 转换成10进制/16进制*/
void BcdToDec(
						uint8 *bcd_code,
						uint8 bcd_len,
						uint8 *dec_code
						);

//字符串转十进制数字
int    GetIntFromBuf(char *buf);

#endif

