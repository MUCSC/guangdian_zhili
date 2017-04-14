#include "include.h"
uint16 CCD_Buff[128]={0};
uint8  CCD_Offset;           //����ѹ
uint16 Max_Value=0,Brightness;

void  delay200ns()
{
    asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");//��25�� һ��asm("nop")��8ns;
    asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
}
void CCD_Exposure()    //�ع� ��һ��ͼ�񲶻�ʱ����ú���ִ�е�ʱ�����ֵΪ�ع�ʱ��
{
    SI_SetVal();        
    delay200ns();
    CLK_SetVal(); 
    delay200ns();
    SI_ClrVal();    
    delay200ns();
    CLK_ClrVal();    
    for(uint8 i=0; i<129; i++)
    {
        delay200ns();
        CLK_SetVal(); 
        delay200ns();
        CLK_ClrVal(); 
    } 
}
void CCD_Capture()
{
  uint8  i=0; 
  SI_SetVal();
  delay200ns();
  CLK_SetVal();  
  delay200ns();
  SI_ClrVal();
  delay200ns();
  //�ɼ���һ����
  CCD_Buff[0]=LPLD_ADC_Get(ADC1, AD15);
  Max_Value=CCD_Buff[0];
  CLK_ClrVal();
  //�ɼ���2~128����
  for(i=1; i<128; i++)
  {
          delay200ns();
          CLK_SetVal(); 
          delay200ns();
          CCD_Buff[i]=LPLD_ADC_Get(ADC1,AD15);
  
        if((Right-Left>20)&&Leftlastfind&&Rightlastfind)             //�ϴ����ұ��߶�������ôӦ��������5��������������ȣ��������������Ƶ�
       {
         if((i>Left)&&(i<Right))      if(Max_Value<CCD_Buff[i]) Max_Value=CCD_Buff[i]; 
       } 
       else
       {
          if(Max_Value<CCD_Buff[i])  Max_Value=CCD_Buff[i];
       }
      CLK_ClrVal();     
   }
  //���͵�129��clk��Ϊ����
  delay200ns();
  CLK_SetVal();
  delay200ns();
  CLK_ClrVal();
}
 //����һ������(������ֵ������0-127)
void CCD_Normalization()
{
  uint8 i=0;
  float ratio;
  int temp;
  if(Max_Value>CCD_Offset)
  ratio=127.0/(Max_Value-CCD_Offset);
  else  ratio=0;
  for(i=0; i<128; i++)
  {
    if(CCD_Buff[i]>CCD_Offset)
    temp=CCD_Buff[i]-CCD_Offset;
    else temp=0;
    CCD_Buff[i]=(int)(temp*ratio);
    if(CCD_Buff[i]>126) CCD_Buff[i]=126;
    CCD_Draw_Buff[i]=CCD_Buff[i];
  }
  CCD_Draw_Buff[130]=BYTE0(Max_Value);
  CCD_Draw_Buff[131]=BYTE1(Max_Value); 
}