#include "include.h"
//OLEDҳ�����Ĭ��Ϊҳ������ʱ��Ϊ3��ҳ��
uint8 Page_Index=2,Para_Index=1,Light_Tower_Index=0,Para_Checked=0,Para_Choice=0,OLED_Refresh=0;
uint8 Race_Index=0;
uint8 Debug_Index=0;
uint8 Para_Index_Limit=7;       //һҳ�����7���������
uint8 Uart_Send=true;
uint8 Debug_Motor_ON;
uint8 Display_Edge=1;
uint8 CCD_Draw_Buff[150];
float reserve=0;

char Debug_Mode[4][12]={"Normal  \0","UpRight\0","NoSpeed\0","NoDirec\0"};  //����ģʽ ���� ֱ�� û���ٶ� ��û�з���

char Light_Tower_Para[4][11]={"OFF      \0","Normal   \0","StartOnly\0","StopOnly \0 "};   //����ģʽ

uint8 light_tower_detected=0;

uint8 SendPara=0;
uint8 SendSD=0;
uint8 SendCCD=0;

//��Ӧ��ͬ��ҳ��
char Para_Name[7][12]={"PID_ANGLE.P\0","PID_ANGLE.D\0","PID_SPEED.P\0",
"PID_SPEED.I\0","PID_SPEED.D\0","PID_DIREC.P\0","PID_DIREC.D\0"};

char Para_Name1[7][12]={"Fuzzy_Kp\0","Fuzzy_Kd\0","Hill_Slow\0",
"STurnAngle\0","STurnSpeed\0","BTurnAngle\0","BTurnSpeed\0"};

char Car_Set_Name[7][12]={"Set_Speed\0","Set_Angle\0","Acc_Offset\0","Debug_Mode\0","Light_Tower\0","Protect\0","Threshold\0"};

char Type_Switch[7][15]={"DoubleTurn\0","TurnToSingle\0","TurnToCross\0","TurnToAngle\0","StraightSlow","TurnToBarri\0","HillAngle\0"};


uint8 OverWrite=true;                        //������д
uint8 Stop=true,CarStopedJustNow=false;
uint8 Starting=false;                //��������
int   Start_Cnt=0;


float Voltage=0;

float Step[6]={0.0001,0.001,0.01,0.1,1.0,10.0};   //Ĭ�ϵ��ڲ���Ϊ0.01
unsigned char Step_Index=2;
#define Frame_Len 4  //֡��Ϊ4

//��PID�����ĵ�ַ�ӵ�ָ��������
float *Control_Para[16]={&PID_ANGLE.P,&PID_ANGLE.D,&PID_SPEED.P,&PID_SPEED.I,&PID_SPEED.D,&PID_TURN.P,&PID_TURN.D,&SetSpeed,
                         &Fuzzy_Kp,&Fuzzy_Kd,&Delta_P,&Delta_D};
float *Variable[20]={&Angle,&Angle_Speed,&Car_Angle,&Middle_Err,&Delt_error,&Turn_Speed,&CarSpeed,&Voltage,&PID_ANGLE.OUT,
                      &PID_SPEED.OUT,&PID_TURN.OUT,&RightMotorOut,&LeftMotorOut,&ControlSpeed,&Distance,&RunTime,&Character_Distance,&reserve,&reserve,&reserve};

uint8 Data_Buf[Frame_Len];

void OLED_Draw_UI()  //��������
{ 
  uint8 i;
   if(Page_Index!=4)                                     //����ҳ��ʾCCDͼ��
   {
     OLED_P6x8Str(0,0,"Voltage=");                          //��ʾ��ص�ѹ
     OLED_PrintValueF(48, 0,Voltage,2);                     
     OLED_PrintValueF(72, 0,Step[Step_Index],5);            //��ʾ���ڲ���ֵ
     if((Page_Index!=3)&&Para_Index==7)
     {
        reverse=1; 
         OLED_P6x8Str(116,0,"EE"); 
        reverse=0;
     }
     else  
     {
        OLED_P6x8Str(116,0,"EE"); 
     }
     OLED_Set_Pos(122,7);
     OLED_P6x8Char(Page_Index+48);                         //д��ҳ�����
   }
  /////////////////////////////////////////////////////////��0ҳ  PID����
  if(Page_Index==0)                
  {
    for(i=0;i<7;i++)
    {
      if(i==Para_Index&&Para_Choice==true&&Para_Checked==false)
      {
       reverse=1;
       OLED_P6x8Str(0,i+1,Para_Name[i]);   //����������ת��ʾ
       reverse=0;
      }
      else OLED_P6x8Str(0,i+1,Para_Name[i]);

      
      
      if(i==(Para_Index)&&Para_Checked)
      {
        reverse=1;
        OLED_PrintValueF(72, i+1,*Control_Para[i],5);
        reverse=0;
      }
      else  OLED_PrintValueF(72, i+1,*Control_Para[i],5);
      
      OLED_Set_Pos(116,i+1);

    }
  }
  /////////////////////////////////////////////////////////��1ҳ  PID����
    else if(Page_Index==1)
  {  
     for(i=0;i<7;i++)
    {
     if(i==Para_Index&&Para_Choice==true&&Para_Checked==false)
      {
       reverse=1;
       OLED_P6x8Str(0,i+1,Para_Name1[i]);   //����������ת��ʾ
       reverse=0;
      }
      else OLED_P6x8Str(0,i+1,Para_Name1[i]);
    }
      OLED_Set_Pos(116,i+1);
    
       if(Para_Index==0&&Para_Checked)
      {
        reverse=1;
        OLED_PrintValueF(72, 1,Fuzzy_Kp,5);
        reverse=0;
      }
      else 
        OLED_PrintValueF(72, 1,Fuzzy_Kp,5);
       
      if(Para_Index==1&&Para_Checked)
      {
        reverse=1;
        OLED_PrintValueF(72, 2,Fuzzy_Kd,5);
        reverse=0;
      }
      else 
        OLED_PrintValueF(72, 2,Fuzzy_Kd,5);
      
       if(Para_Index==2&&Para_Checked)
      {
        reverse=1;
        OLED_PrintValueF(72, 3,Hill_Slow_Ratio,3);
        reverse=0;
      }
      else 
        OLED_PrintValueF(72, 3,Hill_Slow_Ratio,3);

       
       if(Para_Index==3&&Para_Checked)
      {
        reverse=1;
         OLED_PrintValueI(72,4,Strong_Turn_Angle);
        reverse=0;
      }
      else 
         OLED_PrintValueI(72,4,Strong_Turn_Angle);
       
        if(Para_Index==4&&Para_Checked)
      {
        reverse=1;
         OLED_PrintValueI(72,5,Strong_Turn_Speed);
        reverse=0;
      }
      else 
         OLED_PrintValueI(72,5,Strong_Turn_Speed);
        
       if(Para_Index==5&&Para_Checked)
      {
        reverse=1;
         OLED_PrintValueI(72,6,Barri_Turn_Angle);
        reverse=0;
      }
      else 
         OLED_PrintValueI(72,6,Barri_Turn_Angle); 
       
       
             
       if((6==Para_Index)&&Para_Checked)  //����4  ��ֵ
      {
        reverse=1;
       OLED_PrintValueI(72,7,Barri_Turn_Speed);
        reverse=0;
      }
      else    OLED_PrintValueI(72,7,Barri_Turn_Speed); 
       

  }
  /////////////////////////////////////////////////////////��2ҳ            �鿴������Ϣ
  else if(Page_Index==2)
  {   
    for(i=0;i<7;i++)
    {
      if(i==Para_Index&&Para_Choice==true&&Para_Checked==false)
      {
       reverse=1;
       OLED_P6x8Str(0,i+1,Car_Set_Name[i]);   //����������ת��ʾ
       reverse=0;
      }
      else OLED_P6x8Str(0,i+1,Car_Set_Name[i]);

      OLED_Set_Pos(116,i+1);
  
    }  
     //�����ķ�ת��ʾ
      if((0==Para_Index)&&Para_Checked)    //����0    �趨�ٶ�
      {
        reverse=1;
        OLED_PrintValueF(72, 1,SetSpeed,3);
        reverse=0;
      }
      else    OLED_PrintValueF(72,1,SetSpeed,3);
    
       if((1==Para_Index)&&Para_Checked)  //����1     ����ǰ��Ƕ�
      {
        reverse=1;
        OLED_PrintValueI(72,2,Set_Angle);
        reverse=0;
      }
      else    OLED_PrintValueI(72,2,Set_Angle);
         
      if((2==Para_Index)&&Para_Checked)  //����2    ���ٶȼ���ֵ
      {
        reverse=1;
       OLED_PrintValueI(72,3,Acc_Offset);
        reverse=0;
      }
      else    OLED_PrintValueI(72,3,Acc_Offset);
      
      
       if((3==Para_Index)&&Para_Checked)  //����2    ����ģʽ
      {
        reverse=1;
       OLED_P6x8Str(72, 4,Debug_Mode[Debug_Index]);
        reverse=0;
      }
      else     OLED_P6x8Str(72, 4,Debug_Mode[Debug_Index]);
    
        if((4==Para_Index)&&Para_Checked)  //����3    ����ģʽ
      { 
        reverse=1;
             OLED_P6x8Str(72, 5, Light_Tower_Para[Light_Tower_Index]);  
        reverse=0;
      }
      else  OLED_P6x8Str(72, 5, Light_Tower_Para[Light_Tower_Index]);
      
       if((5==Para_Index)&&Para_Checked)  //����3  �Ƿ񱣻�
      {
        reverse=1;
        if(!Protect)
         OLED_P6x8Str(72, 6,"FALSE");
        else
         OLED_P6x8Str(72, 6,"TRUE ");
        reverse=0;
      }
      else 
      {  
        if(!Protect)
        OLED_P6x8Str(72, 6,"FALSE");
        else
        OLED_P6x8Str(72, 6,"TRUE ");
      }
      
        if((6==Para_Index)&&Para_Checked)  //����4   �Ƿ���д����?
      {
        reverse=1;
        OLED_PrintValueI(72,7,Threshold);
        reverse=0;
      }
      else 
      {  
        OLED_PrintValueI(72,7,Threshold);
      }
  }
    /////////////////////////////////////////////////////////��3ҳ
  else if(Page_Index==3)
  {
    OLED_P6x8Str(0,1,"CarAngle");
    OLED_PrintValueF(72,1,Car_Angle,3);
    OLED_P6x8Str(0,2,"GyroSpeed");
    OLED_PrintValueF(72, 2,Angle_Speed,3);
    OLED_P6x8Str(0,3,"CarSpeed");
    OLED_PrintValueF(72, 3,CarSpeed,3);
    OLED_P6x8Str(0,4,"Distance");
    OLED_PrintValueF(72, 4,Distance,4);
    OLED_P6x8Str(0,5,"RunTime");
    OLED_PrintValueF(72, 5,RunTime,4);
    OLED_P6x8Str(0,6,"Average_Spd");
    OLED_PrintValueF(72, 6,AverageSpeed,4);    
    
    
    if(Para_Choice==true&&Para_Checked==false)   reverse=1;
    OLED_P6x8Str(0,7,"Encoder_Dis");
    reverse=0;
       if((0==Para_Index)&&Para_Checked)  //����4   �Ƿ�������
      {
        reverse=1;
        if(Encoder_Disable==0)
         OLED_P6x8Str(72, 7,"None ");
        else if(Encoder_Disable==1)
         OLED_P6x8Str(72, 7,"Left ");
        else if(Encoder_Disable==2)
         OLED_P6x8Str(72, 7,"Right");
        reverse=0;
      }
      else 
      {  
        if(Encoder_Disable==0)
         OLED_P6x8Str(72, 7,"None ");
        else if(Encoder_Disable==1)
         OLED_P6x8Str(72, 7,"Left ");
        else if(Encoder_Disable==2)
         OLED_P6x8Str(72, 7,"Right");
      }
  } 
      /////////////////////////////////////////////////////////��4ҳ
  else if(Page_Index==4)
  {
    Draw_CCD();  
  }
  else if(Page_Index==5)
  {
     for(i=0;i<7;i++)
    {
      if(i==Para_Index&&Para_Choice==true&&Para_Checked==false)
      {
       reverse=1;
       OLED_P6x8Str(0,i+1,Type_Switch[i]);   //����������ת��ʾ
       reverse=0;
      }
      else OLED_P6x8Str(0,i+1,Type_Switch[i]); 
      
      
       if(i==(Para_Index)&&Para_Checked)
      {
        reverse=1;
        if(RoadTypeSwitch&(1<<i))
           OLED_P6x8Str(84,i+1,"ON ");   //����������ת��ʾ
        else   OLED_P6x8Str(84,i+1,"OFF");   //����������ת��ʾ
        reverse=0;
      }
      else
      { 
         if(RoadTypeSwitch&(1<<i))
           OLED_P6x8Str(84,i+1,"ON ");   //����������ת��ʾ
          else   OLED_P6x8Str(84,i+1,"OFF");   //����������ת��ʾ
      }
    
    
    } 
  }
  
}
void Draw_CCD()
{
  uint8 i,j,line,dot;
  uint8 temp=0;
  for(j=0;j<128;j++)
  {  

    temp=32-(uint8)(CCD_Draw_Buff[j]>>2);  //����4
    line=temp/8;
    dot =temp%8; 

    for(i=0;i<4;i++)
    {
        OLED_Set_Pos(j,i);
      if(Display_Edge&&((CCD_Draw_Buff[128]!=0&& CCD_Draw_Buff[128]==j)||( CCD_Draw_Buff[129]!=128&& CCD_Draw_Buff[129]==j)))
      {
       if( CCD_Draw_Buff[128]==j) 
       { 
         if(Leftlastfind)     OLED_WrDat(0xff,0);  
         else                 OLED_WrDat(0xaa,0); 
       }
       else 
       { 
         if(Rightlastfind)  OLED_WrDat(0xff,0);  
         else               OLED_WrDat(0xaa,0);  
       }
             
      }
      else
      { 
       if(i==line)
       OLED_WrDat(1<<dot,0);
       else 
       OLED_WrDat(0,0);
      }
    }
  }
   OLED_P6x8Str(1,4,"Left=");
   OLED_PrintValueF(31, 4,Left,3);
   OLED_P6x8Str(64,4,"Right="); 
   OLED_PrintValueF(100, 4, Right,3);
   OLED_P6x8Str(0,5,"Middle_Err=");
   OLED_PrintValueF(72, 5,Middle_Err,3);
   OLED_P6x8Str(0,6,     "Max_Peak  =");
   OLED_PrintValueF(72, 6,Max_Peak,3);     
   OLED_P6x8Str(0,7,  "Max_Value =");
   OLED_PrintValueF(72, 7,Max_Value,4);
   OLED_Set_Pos(122,7);
   OLED_P6x8Char('L');      
                      
}
/*
 * �����뿪�ص�ֵ
 */
/*void Read_Switch() 
{
  if(BT3_In==0) 
  {
    if(OLED_Refresh==false)
    {
     OLED_Init();
     Stop=true;
     OLED_Refresh=true;
    }
  }
  else           
  {
    if(OLED_Refresh==true)
    {
      OLED_Refresh=false;
      OLED_Fill(0x00);       
    }
  }

  if(PTB7_IN==0)   
  {
    Uart_Send=true;
  } 
   else Uart_Send=false;
  
  if(PTB8_IN==0)  
  {
     if(Debug_Motor_ON==false)
    {
     Debug_Motor_ON=true;
    }
  }
   else Debug_Motor_ON=false;

 
  if(PTB9_IN==0) 
 {
    if(SaveData==false)
    {
     SaveData=true;    
    }
 }
  else   SaveData=false;
} */

//���������ť
void Check_StartPress()
{
   //���� ȡ��
     if(PTA7_IN==0)
   {
      //ȥ��
      DELAY_MS(100);
      if(PTA7_IN==0)
      { 
       if(Stop==true)
       {
         Start_Cnt=3000;
         Starting=true;
         Stop=false; 
         ForceStop=false;
         //�������ٶȿ��Ʊ�������
         SpeedControlOutOld=0;
         SpeedControlOutNew=0;
         SpeedControlIntegral=0;  
         PID_SPEED.OUT=0;
         Distance=0;
         RunTime=0;
         RoadType=0;
         ControlSpeed=0;
         Leftlastfind=0;//��������
         Hill_Flag=0;
         Rightlastfind=0;
         Last_Angle_Turn_Position=0;
         Last_Singleine_Position=0;
         light_tower_detected=0;
       }
       else
       {
        Stop=true;
        CarStopedJustNow=true;     //С����ֹͣ
       }
      }
      while(PTA7_IN==0);  //ֱ�������ɿ�������
   } 
}
/*
 * ��ⰴ���Ƿ���
 */
void Check_BottonPress()
{
   //����1 yes
   if(PTA4_IN==0) 
   {
     //ȥ��
      DELAY_MS(10);
      if(PTA4_IN==0)
     {    
       if(Para_Index==7) 
       { 
         EEPROM_Save();
         Para_Index=0; 
       }
       else
       {
        if(Para_Choice==false)  Para_Choice=true;  //  ѡ�����   
        else
       {
         if(Para_Checked==false) Para_Checked=true;
         else Para_Checked=false;       
        }
       }
      }
      while(PTA4_IN==0); //ֱ�������ɿ�������
   }
   //���� ȡ��
     if(PTA12_IN==0)
   {
      //ȥ��
      DELAY_MS(10);
      if(PTA12_IN==0)
      {    
       if(Para_Choice==true) Para_Choice=false; //��ѡ�����
       if(Para_Checked==true)Para_Checked=false;
       if(Page_Index==4)
       {
         if(Display_Edge) Display_Edge=0;
         else Display_Edge=1;
       }
      }
      while(PTA12_IN==0);  //ֱ�������ɿ�������
   } 
   //����2 Left_L
     if(PTA5_IN==0)
   {
      //ȥ��
      DELAY_MS(10);
      if(PTA5_IN==0)
      {
        if(Para_Checked) 
        {
          if(Step_Index==5) 
          Step_Index=5;   //���Ĳ���Ϊ10
          else Step_Index++;
        }
        else 
        { 
          Para_Index=0;
          if(Page_Index==0) Page_Index=5; //������û��ѡ�е�ʱ�򣬰����Ҽ���ҳ
          else Page_Index--;
          OLED_Fill(0);//���� 
        }
      }
      while(PTA5_IN==0);//ֱ�������ɿ�������
   } 
   //����6 Right_L
     if(PTA13_IN==0)
   {
      //ȥ��
      DELAY_MS(10);
      if(PTA13_IN==0)
      {
        if(Para_Checked) 
        {
          if(Step_Index==0) 
           Step_Index=0;//��С�Ĳ���Ϊ0.0001
          else
          {
            Step_Index--;
          }
        }
        else 
        { 
          Para_Index=0;
          if(Page_Index==5) Page_Index=0;
          else Page_Index++;
         OLED_Fill(0);//���� 
        }
      }
      while(PTA13_IN==0);      //ֱ�������ɿ�������
   }
   //����3 up
     if(PTA6_IN==0)
   {
      DELAY_MS(10);
      if(PTA6_IN==0)
      {
        if(Para_Choice==true)
        {
          if(Para_Checked==false)
          {
           if(Para_Index==0) Para_Index=Para_Index_Limit;
           else Para_Index-=1;
          }
          else
          {
              if(Page_Index==0&&Para_Index<=6)                    //�޸ĵ�0ҳ�Ĳ���
            {
              *Control_Para[Para_Index]+=Step[Step_Index];
            }
            
            if(Page_Index==1&&Para_Index<=6)                    //�޸ĵ�1ҳ�Ĳ���
            {
              if(Para_Index==0)Fuzzy_Kp+=Step[Step_Index];
              if(Para_Index==1)Fuzzy_Kd+=Step[Step_Index];
              if(Para_Index==2)Hill_Slow_Ratio+=Step[Step_Index];
              if(Para_Index==3)Strong_Turn_Angle+=Step[Step_Index];
              if(Para_Index==4)Strong_Turn_Speed+=Step[Step_Index];
              if(Para_Index==5)Barri_Turn_Angle+=Step[Step_Index];
              if(Para_Index==6)Barri_Turn_Speed+=(uint8)Step[Step_Index];
            }
            
            if(Page_Index==2&&Para_Index<=6)                    //�޸ĵ�2ҳ�Ĳ���
            {
              if(Para_Index==0) SetSpeed+=Step[Step_Index];         //�趨�ٶ�    
              if(Para_Index==1) Set_Angle+=(uint8)Step[Step_Index]; //���ٽǶ�
              if(Para_Index==2) Acc_Offset+=(int)Step[Step_Index];  //�趨�е�ֵ            
       
              if(Para_Index==3)                                
              {
               if(Debug_Index==3)Debug_Index=0;
               else Debug_Index++;                   
              }
              if(Para_Index==4)                                //����ģʽ�趨
              {
              if(Light_Tower_Index==3)Light_Tower_Index=0;
               else Light_Tower_Index++;                 
              } 
              if(Para_Index==5)
              {
               if(Protect) Protect=0;
               else Protect=1;
              }
              if(Para_Index==6)Threshold+=(uint8)Step[Step_Index];
            } 
             if(Page_Index==3)      
             {
               Encoder_Disable++;
               if(Encoder_Disable>2)
               Encoder_Disable=0;
             }
             
             if(Page_Index==5)                    //�޸ĵ�0ҳ�Ĳ���
            {
             if(RoadTypeSwitch&(1<<Para_Index))
             RoadTypeSwitch&=~(1<<Para_Index);  
              else    RoadTypeSwitch|=(1<<Para_Index); 
            } 
                         
          }
        }
      }  
      
     
     
      while(PTA6_IN==0);//ֱ�������ɿ�������  
   }
   //����4 down
     if(PTA7_IN==0)
   {
      DELAY_MS(10);
      if(PTA7_IN==0)
      {
       if(Para_Choice==true)
        {
          if(Para_Checked==false)
          {             
            if(Para_Index==Para_Index_Limit)Para_Index=0;   //��ֹ��ų�����Χ
            else  Para_Index+=1; 
          }
           else 
           {
              if(Page_Index==0&&Para_Index<=6)                    //�޸ĵ�0ҳ�Ĳ���
            {
              *Control_Para[Para_Index]-=Step[Step_Index];
            }
             
             if(Page_Index==1&&Para_Index<=6)                    //�޸ĵ�0ҳ�Ĳ���
            {
              if(Para_Index==0)Fuzzy_Kp-=Step[Step_Index];
              if(Para_Index==1)Fuzzy_Kd-=Step[Step_Index];
              if(Para_Index==2)Hill_Slow_Ratio-=Step[Step_Index];
              if(Para_Index==3)Strong_Turn_Angle-=Step[Step_Index];
              if(Para_Index==4)Strong_Turn_Speed-=Step[Step_Index];
              if(Para_Index==5)Barri_Turn_Angle-=Step[Step_Index]; 
              if(Para_Index==6)Barri_Turn_Speed-=(uint8)Step[Step_Index];
             
            }
            
             if(Page_Index==2&&Para_Index<=6)                    //�޸ĵ�1ҳ�Ĳ���
            {
              if(Para_Index==0) SetSpeed-=Step[Step_Index];         //�趨�ٶ�    
              if(Para_Index==1) Set_Angle-=(uint8)Step[Step_Index]; //���ٽǶ�
              if(Para_Index==2) Acc_Offset-=(int)Step[Step_Index];  //�趨�е�ֵ            
              if(Para_Index==3)                                //����ģʽ
              {
               if(Debug_Index==0)Debug_Index=3;
               else Debug_Index--;                   
              }
               if(Para_Index==4)                             
              {
                 if(Light_Tower_Index==0)Light_Tower_Index=3;
               else Light_Tower_Index--;        
              }
              if(Para_Index==5)
              {
               if(Protect) Protect=0;
               else Protect=1;
              } 
              if(Para_Index==6) Threshold-=(uint8)Step[Step_Index];
            } 
              if(Page_Index==3)      
             { 
               if(Encoder_Disable==0)
               Encoder_Disable=3;
               Encoder_Disable--;
             }
             
             if(Page_Index==5)                    //�޸ĵ�0ҳ�Ĳ���
            {
             if(RoadTypeSwitch&(1<<Para_Index))
             RoadTypeSwitch&=~(1<<Para_Index);  
              else    RoadTypeSwitch|=(1<<Para_Index); 
            }      
          }
        }
      }

      while(PTA7_IN==0);  //ֱ�������ɿ�������
   }
}
/*
 * �����жϺ���
 */
void UART0_RX_IRQHandler(void)
{
  static uint8 recv,recv_last;
  static uint8 data_cnt=0;
  static uint8 Recv_Buff[50];
  static uint8 Block_Index_receiving=false,Data_Receiving=false;
  
  if(uart_query(UART0)==1)  uart_getchar (UART0,(char*)(&recv));
  
  if(Data_Receiving||Block_Index_receiving)
  {
    if(Data_Receiving)
    {
      if(data_cnt<40)
      {
       Recv_Buff[data_cnt]= recv;
       data_cnt++;
      }
      else
      {
        data_cnt=0;    //�ﵽ֡��
        Data_Receiving=false;
        if(recv==0XAB)  //֡β
        {
           Modify_Para(Recv_Buff);
           SendPara=1;
        }
      }
    }
   if(Block_Index_receiving)
   {
     if(data_cnt>=2)
     {
       if(recv==0x36)  //У��֡β
       {
        BYTE0(Block_Index)= Data_Buf[0];
        BYTE1(Block_Index)= Data_Buf[1];
        SendSD=true;
       }
        Block_Index_receiving=false;
        data_cnt=0;
     }
     else
     {
       Data_Buf[data_cnt]=recv;
       data_cnt++;
     }
   }
  }
  else
  {
      switch(recv)         //�жϹ�����
     {     
         case 0x30:           //����SD�� ��һƬ��
         if(SendPara==0)
         SendPara=1;
         break;           
         case 0x33:           //����SD�� ��һ����
         if(SD_OK)
         {
           Block_Index++;
           SendSD=true;
         }
         break;
         case 0x34:           //����SD�� ��һ����
         if(SD_OK)
         {
           Block_Index--;
           SendSD=true;
         }
         break;
         case 0x35:          //������ת    
         if(SD_OK)
         {
           if(Block_Index_receiving==false)
           {
             Block_Index_receiving=true;
             data_cnt=0;
           }
         }
        break;
        
        case 0XAF:
        if(recv_last==0xAA)//����֡ͷ
        {
          Data_Receiving=true;
          data_cnt=0;
        }
        break;
        
        case 0XAD:
        {
          if(recv_last==0xAC)//����֡ͷ
          {
           EEPROM_Save();
          }
        }
        break;
          
        default:           //�յ���������Ĭ��Ϊ�޸���ر���
           Block_Index=0;
           SendSD=true;
        break;
      }
    }
  recv_last=recv; 
  uart_rx_irq_en(UART0);//ʹ�ܴ��ڽ����ж� 
}
//�޸Ĳ���
void Modify_Para(uint8 *buff)
{
   uint8 i=0,addr=0;
   float temp;
   for(i=0;i<10;i++)
  {
       BYTE0(temp)=*(uint8*)(buff+addr);
       addr++;
       BYTE1(temp)=*(uint8*)(buff+addr);
       addr++;
       BYTE2(temp)=*(uint8*)(buff+addr);
       addr++;
       BYTE3(temp)=*(uint8*)(buff+addr);
       addr++;
       *Control_Para[i]=temp;
   }
}
//���Ϳ��Ʋ���
void Send_Para()
{
  uint8 i=0,ch=0;
  float temp=0;
  uart_putchar(UART0,0xaa);
  uart_putchar(UART0,0xaa);
  uart_putchar(UART0,0xaa);
  for(i=0;i<10;i++)
  {
    temp=*Control_Para[i];
    if(temp<0.00001&&temp>-0.00001)
      temp=0;
    else temp=temp+0.000001;
    ch=BYTE0(temp);
    uart_putchar(UART0,ch);
    ch=BYTE1(temp);
    uart_putchar(UART0,ch);
    ch=BYTE2(temp);
    uart_putchar(UART0,ch);
    ch=BYTE3(temp);
    uart_putchar(UART0,ch);
  }
    uart_putchar(UART0,0X0a);;//֡β
}

void Send_Variable()
{
  uint8 i=0,ch=0;
  float temp=0;
  uart_putchar(UART0,0xad);
  uart_putchar(UART0,0xad);
  uart_putchar(UART0,0xad);
 for(i=0;i<20;i++)
  {
    temp=*Variable[i];
    if(temp<0.00001&&temp>-0.00001)
      temp=0;
    else temp=temp+0.000001;
    ch=BYTE0(temp);
     uart_putchar(UART0,ch);
    ch=BYTE1(temp);
     uart_putchar(UART0,ch);
    ch=BYTE2(temp);
     uart_putchar(UART0,ch);
    ch=BYTE3(temp);
     uart_putchar(UART0,ch);
  }
    uart_putchar(UART0,0x0d);
}
void Send_CCD(void)
{
  uint8 i;
  uart_putchar(UART0,0xab);
  uart_putchar(UART0,0xab);
  uart_putchar(UART0,0xab);
  for(i=0;i<150;i++)              //CCD
  {
   uart_putchar(UART0,CCD_Draw_Buff[i]); 
  }
   uart_putchar(UART0,0x0b);
}
void Send_SD()
{
 int i;
 SD_ReadDisk(SDHC_Buff,Block_Index+Zone_Size);
 for(i=0;i<512;i++) uart_putchar(UART0,SDHC_Buff[i]);  
}