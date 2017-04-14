#ifndef _CCD_H_
#define _CCD_H_
#include "common.h"

#define  CCD_CLK  PTB1_OUT 
#define  CCD_SI   PTB2_OUT
extern uint16 CCD_Buff[128];
extern uint16 Max_Value,Brightness;
extern uint8  CCD_Offset; 
void CCD_Normalization();
void CCD_Capture();
void CCD_Exposure(); 

#define SI_SetVal()  LPLD_GPIO_Output_b(PTB, 17, 1)
#define SI_ClrVal()  LPLD_GPIO_Output_b(PTB, 17, 0)
#define CLK_SetVal() LPLD_GPIO_Output_b(PTB, 16, 1)
#define CLK_ClrVal() LPLD_GPIO_Output_b(PTB, 16, 0)

#endif