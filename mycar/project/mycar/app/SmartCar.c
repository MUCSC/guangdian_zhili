#include "include.h"
uint8 flag_100ms,flag_record;  //������ѭ����ִ��
void main (void)
{
  DisableInterrupts;  //�ر��ж� 
  All_Init();   
  EnableInterrupts; //���ж�
 
  while(1)
  {
    if(SendPara)
    {
      Send_Para();
      SendPara=0;
    }
    if(!SaveData&&Uart_Send) //��������ʱ���ܷ�����
    {
      if(SendCCD)
      {
       Send_CCD();
       SendCCD=0;
      }
       Send_Variable();     
    } 
    if(SendSD)
    {
      SendSD=0;
      Send_SD();
    } 
    if(flag_100ms)        //ֻ��ֹͣ��ʱ���ִ��
    {
       Read_Switch();
       if(OLED_Refresh)
       { 
        Check_BottonPress();        //��ֹ�󴥷�
        if(Stop==true||SaveData==false)  OLED_Draw_UI();
       }
       else Check_StartPress();     //�ر�Һ����ʾ��������������Ƿ���
       flag_100ms=0;
    }
    if(flag_record&&SaveData&&SD_Operation)   //���SD����������Ҵ���SD����¼���ܣ���ô
   {
      if(Stop!=true) //���С���������У����¼
     {
      if (Starting) Block_Index=1;
      else Record();                     //�洢����  
     }
     else if(CarStopedJustNow) //С����ֹͣ
    {
        CarStopedJustNow=false; 
        Write_Information();
    }
      flag_record=false;
   }
  } 
}
void pit0_isr(void)
{
  static uint8  part=0; 
  static uint8  cnt100ms;
  part++;
  cnt100ms++;
  SpeedCount++;    
  //ѭ����������
  
   switch(part) 
 {
    case 1: 
           //ֱ������
            if(CCD_Exposure_Time==1)   CCD_Exposure();  //�ع�        
            Get_Attitude();       
            Angle_Calculate();
            Angle_Control();
            //�ٶȿ���  
            Get_Speed();   //5ms�ɼ�һ���ٶ�
            SpeedCount++;  
            if(SpeedCount>= Speed_Filter_Times) 
           {                 
               Speed_Control();
               SpeedCount=0;
           } 
           Speed_Control_Output(); 
            break; 
    case 2: //CCD�ɼ� 
        
            CCD_Capture(); //�ɼ�CCD                              
            break;
    case 3: 
             //�������
            if(CCD_Exposure_Time==4)    CCD_Exposure(); 
            CCD_Normalization();    
            break;  
    case 4: 
            if(CCD_Exposure_Time==3)   CCD_Exposure(); 
            RoadType_Distinguish();  
           if((RunTime<0.1)&&(Stop==0))  //��ֹ�𲽵�ʱ����Ʈ
          {
            Rightlastfind=0;
            Leftlastfind=0;
            Middle_Err=0;
          }
            Direction_Control(); 
            DirectionCount=0; 
            flag_record=1;                        //����¼��־λ
            SendCCD=1; 
             break;
    case 5:
             part=0;  
             if(CCD_Exposure_Time==2)   CCD_Exposure(); 
             break;
    default:
            break;   
 }
 
  DirectionCount++;
  Direction_Control_Output();
  Moto_Out();          //ÿ���붼�������
  
 ///////////////////////////////////////////////LED״ָ̬ʾ 
  if(cnt100ms==100)
 {
    if(Stop)
    {
        
          LED2_TURN;
          LED1_OFF;
          LED0_OFF;
    }
    else
    {
     if(Starting)
     {
     LED0_TURN;
     LED1_OFF;
     LED2_OFF;
     }
     else
     {
     
     LED0_OFF;
     LED1_TURN;
     LED2_OFF;
     }
    }
    cnt100ms=0;
    flag_100ms=1;
 }
 ////////////////////////////////////////////����
 if(Starting) 
 {  
      Start_Cnt--;
      if(Start_Cnt==0)
      {
       Starting=false;
      }
   
  } 
 /////////////////////////////////////////////ͳ��ʱ�估�ٶ�
 if(Stop==false&&Starting==false)
 {
  RunTime=RunTime+0.001;
  AverageSpeed=Distance/RunTime;//�������ʱ��
 }
}