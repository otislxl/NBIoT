#include "mmi_common.h"

//数字转bcd码
uint8 BinToBcd(uint8 bin_data)
{	
	if (bin_data > 99)
		bin_data = bin_data%100;
	return ((bin_data/10)<<4) + (bin_data%10);
}
uint8 BcdToBin(uint8 bcd_data)
{	
	return (bcd_data>>4)*10+(bcd_data&0x0f);
}

/* 16进制转换成ASCALL 码*/
char BinToAsc(char bin_data)
{
	bin_data &= 0x0f;
    	if(bin_data < 0x0a)
    		bin_data += '0';
    	else 
    	{
    		bin_data -= 10;
    		bin_data += 'A';
    	}	
    	return bin_data;
}

/* ASCALL 码转换成16进制*/
uint8 AsctoBin(uint8 asc_data)
{
    if ((asc_data>='0')&&(asc_data<='9'))
        return asc_data-'0';
    else if ((asc_data>='a')&&(asc_data<='f'))
        return (asc_data-'a') + 0x0a;
    else if ((asc_data>='A')&&(asc_data<='F'))
        return (asc_data-'A') + 0x0a;
    
    return 0;
}

uint8  AciiToHex(char *buf)
{
	uint8 temp0,temp1,temp;
	if (buf[0]>=0x41) 
		temp0=(buf[0]-0x37);
	else 
		temp0=buf[0]-0x30;
	if (buf[1]>=0x41) 
		temp1=(buf[1]-0x37);
	else 
		temp1=buf[1]-0x30;
	temp=(temp0<<4) + temp1;
	return temp;
}

uint8 StrToBcd(uint8 *buf)
{
	uint8 temp;
	temp =(buf[0]-0x30)<<4;
	if (buf[1]==0) 
		temp +=0xf;
	else 
		temp+=(buf[1]-0x30);
	return temp;
}

//bcd转字符串
uint8  BcdHexToString(uint8 *in,uint8 inlen,uint8 *out)
{
  uint8 i,temp,nLen=0;
  for (i=0;i<inlen;i++)
  {
	  temp=(in[i]>>4) & 0xf;
	  if (temp !=0xf)
	  {
		out[2*i]=temp+0x30;
		nLen++;
	  }
	  else
	  {
		out[2*i]=0;
		break;
	  }
	
	  temp=in[i] & 0xf;
	  if (temp !=0xf)
	  {
		  out[2*i+1]=temp+0x30;
		  nLen++;
	  }
	  else
	  {
		out[2*i+1]=0;
		break;
	  }

  }

  return nLen;
}

/* ASCALL 码转换成BCD码
* == A	# == B
P == C   W == D
+ == E
*/
bool TransfromStrToBcd(
							 uint8             *bcd_ptr,  // out: called BCD number array
							 uint8             *length_ptr, // out: the BCD array length
							 uint8              *tel_str,     // in:  telephone number string
							 uint8             str_length   // in: telephone number string length
							 )  
{
	uint16 i = 0;
	
	*length_ptr = (uint8)((str_length+1) / 2);
	
	for(i=0; i < *length_ptr; i++)
	{
		switch (*tel_str)
		{
		case '*':
			bcd_ptr[i] = 0x0A;
			break;
		case '#':
			bcd_ptr[i] = 0x0B;
			break;
/*+cr224281*/			
		case 'p':
		case 'P':
			bcd_ptr[i] = 0x0C;
			break;
		case 'W':
		case 'w':
			bcd_ptr[i] = 0x0D;
			break;
		case '+':
			bcd_ptr[i] = 0x0E;
			break;
/*-cr224281*/
		default:
			if (*tel_str >= '0' && *tel_str <= '9')
			{
				bcd_ptr[i] = (uint8)(*tel_str - '0');
			}
			else
			{
				return FALSE;
			}
			break;
		}
		
		
		tel_str++;
		
		switch (*tel_str)
		{
		case '*':
			//bcd_ptr[i] += 0xA0;
			bcd_ptr[i] = ((uint8)(bcd_ptr[i]<<4)) + 0x0A;
			break;
		case '#':
			//bcd_ptr[i] += 0xB0;
			bcd_ptr[i] = ((uint8)(bcd_ptr[i]<<4)) + 0x0B;
			break;
/*+cr224281*/				
		case 'p':
		case 'P':
			//bcd_ptr[i] += 0xC0;
			bcd_ptr[i] = ((uint8)(bcd_ptr[i]<<4)) + 0x0C;
			break;
		case 'w':
		case 'W':
			//bcd_ptr[i] += 0xD0;
			bcd_ptr[i] = ((uint8)(bcd_ptr[i]<<4)) + 0x0D;
			break;
		case '+':
			//bcd_ptr[i] += 0xE0;
			bcd_ptr[i] = ((uint8)(bcd_ptr[i]<<4)) + 0x0E;
			break;
/*-cr224281*/			
		case '\0':
		case 0x0f:
			//bcd_ptr[i] += 0xF0;
			bcd_ptr[i] = ((uint8)(bcd_ptr[i]<<4)) + 0x0F;
			break;
		default:
			if ((*tel_str >= '0') && 
				(*tel_str <= '9'))
			{
				bcd_ptr[i] = ((uint8)(bcd_ptr[i]<<4) + (*tel_str - '0'));
			}
			else
			{
				return FALSE;
			}
			break;
		}
		tel_str++;
	}
	return TRUE;
}

/* BCD 转换成10进制/16进制*/
void BcdToDec(
						uint8 *bcd_code,
						uint8 bcd_len,
						uint8 *dec_code
						)
{	
	uint8 i;
	for(i=0; i<bcd_len; i++)
	{
		*dec_code++ = ((*bcd_code) >> 4)*10 + (*bcd_code & 0x0f);
		bcd_code++;
	}
}

//字符串转十进制数字
int    GetIntFromBuf(char *buf)
{
	int symbol = 1;
	int i=0,Temp=0,Flag=0;
	if(buf[i] == '-')
	{
		symbol = -1;
		i ++;
	}
	for (;i<10;i++)
	{
		if (buf[i]>='0' && buf[i]<='9')
		{
			Temp = (Temp*10) + buf[i]-'0';
			
			Flag=1;
		}
		else break;
	}
	
	if (Flag==0)  return -1;
	
	return (symbol*Temp);
}

