#include "include.h"
#define left 0
#define right 1
int Max_Peak,Left,Right;
int leftfind,rightfind;    //���ұ��ض��ҵ��ˣ����ǲ���ֱ�Ӹ�ֵ������
float Middle_Err;
int   CCD_Diff[128],RisingEdgeIndex,FallingEdgeIndex;
uint8 RisingEdgeCnt,FallingEdgeCnt,RisingEdge[5],FallingEdge[5];

float  Previous_Width[15];
float  Previous_Angle[15];
float  Previous_Error[15]; 
int    Both_Line_find_cnt=0;

uint8 state_change=0;

uint8 Hill_Flag=0;

uint8 Leftlast,Rightlast,Leftlastfind=0,Rightlastfind=0;
int Reference_Width=50;             //�ο����
float Normal_Width=0;                 //���������Ŀ��
int  Right_Or_Left;
int Turn_To_Angle=0;
uint8 Strong_Turn_Cnt=0,Strong_Turn_En=0;
float Character_Distance=0;
float Last_Singleine_Position;
float Last_Angle_Turn_Position=0;
int Turn_State;
int Turn_State_Cnt=0;


float Last_Hill_Distance=0;


uint8 Single_Out_Detect=0;

int Turn_State1To2_Left,Turn_State1To2_Right;
uint8 Refind_Cnt=0;

uint8 Strong_Turn_Angle;
uint8 Strong_Turn_Speed;

uint8 Barri_Turn_Angle;
uint8 Barri_Turn_Speed;

uint8 curve_to_cross=0;

uint8 RoadType;
uint8 RoadTypeConfirm;             //��������ȷ��
uint8 Threshold;                 //��ֵ
 
uint8 RoadTypeSwitch=40;

void RoadType_Distinguish()
{
  uint8 i=0;
  int left_c,right_c;
  static float middle_last;
  Max_Peak=0;
  RisingEdgeCnt=0;
  FallingEdgeCnt=0;
  for(i=0;i<5;i++)
  {
    RisingEdge[i]=0;
    FallingEdge[i]=0;  
  }
  for(i=3;i<128;i++)
  {
    CCD_Diff[i]= CCD_Buff[i]- CCD_Buff[i-3];
    if(ABS(CCD_Diff[i])>Max_Peak) Max_Peak=ABS(CCD_Diff[i]); //������Ĳ��ֵ
  }
  
  for(i=4;i<127;i++)
  {
    if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>Threshold)) //Ѱ�����ķ�ֵ�������
    {
      if(RisingEdgeCnt<5)    //һ��ͼ�������5��������
      { 
       RisingEdge[RisingEdgeCnt]=i;
       RisingEdgeCnt++;  
      }
    } 
    if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ���ұ���
    {
      if(FallingEdgeCnt<5)    //һ��ͼ�������5��������
      {
       FallingEdge[FallingEdgeCnt]=i;
       FallingEdgeCnt++;
      }
    }
  }
  if(Distance-Last_Singleine_Position>0.5&&RoadType==0) Prejudge();     //��������Ԥ��
  switch(RoadType)
  {
   case 0:
    Character_Distance=0;
    Normal();
    
    Is_Straight_Angle_Turn();  //�ж��Ƿ�������ֱ�� 
    Is_Barraicade();  
    
     if(RoadType==1)
    { 
      curve_to_cross=0;
    }
    else Is_CrossRoad();
    Single_Out_Detect=1;
    Is_Single_Line();      //�������ⲿ�Ƿ�����
    Single_Out_Detect=0;
    ////////////////////////////////////////////////////////////////////////////////////////////????????????????????????????????????????????????????????????????????
    if(((Rightlastfind==0)||(Leftlastfind==0))&&(Distance-Last_Hill_Distance<2)&&(RoadTypeSwitch&64))
    {
      
      Character_Distance=Distance-1;   
      state_change=0;     
      RoadType=4;
      Turn_State=1;  
      Refind_Cnt=0;
      Strong_Turn_En=1;
      Strong_Turn_Cnt=0;
      Turn_Angle_Integral=0;    
      Turn_State1To2_Left=Left;
      Turn_State1To2_Right=Right;
     
      if(Leftlastfind==0)
      {
        Right_Or_Left=1; //��ֱ�� 
      }
      else  Right_Or_Left=-1; //��ֱ�� 
      
    }
      

   break;
   case 1:
    CrossRoad();
    middle_last=Middle_Err;
   break;
   case 2:
    Barraicade();
   break;
   case 3:
    SingleLine(); 
   break;
   case 4:
    RightAngleTurn();
   break;
   case 5:
    Hill(); 
   break;
   default:
    Normal(); 
   break;
  }
  
  if(Distance<0.4)
  {
    RoadType=0;
    Last_Singleine_Position=0;
  }
  
  if(Stop==0&&RoadType!=0)
    TEST_HIGH;
  else 
    TEST_LOW;
  
   CCD_Draw_Buff[128]=Left-1;
   CCD_Draw_Buff[129]=Right; 
   CCD_Draw_Buff[132]=BYTE0(Max_Peak);
   CCD_Draw_Buff[133]=BYTE1(Max_Peak);
   CCD_Draw_Buff[134]=Leftlastfind;
   CCD_Draw_Buff[135]=Rightlastfind;
   CCD_Draw_Buff[136]=RoadType; 

   Leftlast=Left;              // ���±߽���
   Rightlast=Right;            //���±߽���
   left_c=Left-1;              //��ȥ2����������
   right_c=Right;
   
     //�ж�һ���Ƿ�Ϊ�µ�
   if(RoadType!=4)Is_Hill(); 
   
   if(Rightlastfind||Leftlastfind)
   {
     Middle_Err=64-(right_c+left_c)/2.0+1;  //���Զ�����ʧ����      
     if(ABS(Middle_Err-middle_last)>2&&(curve_to_cross==0))
     {
       if(RoadType!=4&&RoadType!=2)
       {
         if(ABS(Middle_Err-middle_last)>3)
         {
          if(Middle_Err>middle_last) Middle_Err=middle_last+1;
          else Middle_Err=middle_last-1;
         }
         else
         {
          if(Middle_Err>middle_last) Middle_Err=middle_last+2;
          else Middle_Err=middle_last-2;
         }
       }
     }
     middle_last=Middle_Err;
   } 
   
   //���¶��� 
   Push_And_Pull(Previous_Width,15,(float)(Right-Left));
   Push_And_Pull(Previous_Angle,15,Car_Angle);
   Push_And_Pull(Previous_Error,15,Middle_Err);
   
   if(Rightlastfind&&Leftlastfind)
   {
     if(Both_Line_find_cnt<20)Both_Line_find_cnt++;
   }
   else Both_Line_find_cnt=0;
   
   
   if(Rightlastfind&&Leftlastfind&&(Right-Left>20))   //���߱��߶��ܹ��ҵ�������������ƽ������
   {
     Brightness_Calculate();
   }
}
void Prejudge()   //Ԥ�к���
{
   if(RisingEdgeCnt==0&&FallingEdgeCnt==0)//˵��û�������أ�ȫ��
   {
      RoadType=1;
      curve_to_cross=0;
      Character_Distance=Distance;
   }
   else
   {
       Is_Single_Line();
   }
}
void Normal()
{
  uint8 tempwidth;
  if(Leftlastfind==0&&Rightlastfind==0)    //�ϴ�û�б���
  {
    Find_Bothine();
    if(Leftlastfind==0&&Rightlastfind==0)
    {
       if(FindBoundary(left))
       {
        Left=RisingEdge[RisingEdgeIndex];
        Leftlastfind=1; 
        if(Left<34&&RoadType==4)Leftlastfind=0;
       }
       else  Leftlastfind=0;
       if(FindBoundary(right))
       {
        Right=FallingEdge[FallingEdgeIndex];
        Rightlastfind=1;
        if(Right>84&&RoadType==4)Rightlastfind=0;
       }
       else  Rightlastfind=0; 
       if(Leftlastfind&&Rightlastfind)
       {
        if(Right<Left)
        {
         Leftlastfind=0;
         Rightlastfind=0;
        }
       }
    }
  }
  else                                    //�ϴ������ҵ�һ��
  {  
    //////////////////////////////
   if(Leftlastfind)						//�ϴ��ҵ�������
   {
    if(FindNearest(left,Leftlast))		//������ҵ�����
    {
      Left=RisingEdge[RisingEdgeIndex];
      Leftlastfind=1;			
      if(Rightlastfind==0)				//�ϴ��ҵ����ߣ�����ҵ����ߣ��ϴ�û�ҵ�����
      {
       if(FallingEdgeCnt)					//�ϴ��ҵ����ߣ�����ҵ����ߣ��ϴ�û�ҵ����ߣ�����ҵ�����
       {
         for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
         { 
            rightfind=0;   //
            if(FallingEdge[FallingEdgeIndex]>Left)         //�ҵ�Ǳ�ڵı�����
           {  
             tempwidth = FallingEdge[FallingEdgeIndex]-Left;
             if(ABS(tempwidth-Reference_Width)>=2)       //���߳��ֵ�̫���ˣ���������
             {
               if(tempwidth>Reference_Width)   Reference_Width=Reference_Width+1;   //Ǳ�ڵ��������߱Ȳο���ȿ�̫��
               else                         
               {
                 Reference_Width=Reference_Width-1;   //Ǳ�ڵ��������߱Ȳο����խ̫��
                 if((RoadType==0)&&(Distance-Last_Singleine_Position<0.5))
                 Reference_Width=Reference_Width-1;
               }
               Right=Left+Reference_Width;
               Rightlastfind = 0;
             }
             else 
             {
              Right=FallingEdge[FallingEdgeIndex];
              Rightlastfind=1;
             }
             rightfind=1;   //�ҵ������ˣ����ǻ���������ֵ
             break;
           }
         } 
           if(Rightlastfind==0&&rightfind==0)   //��Ȼ˵�������أ����Ǹ���������Ч
          {
            if(CarSpeed>2.5)          //�ڳ�ģ���ٶ��㹻�������²�����Ū
            {
             if(Left+Reference_Width<=118)  //����������ұ���Ҫ���⿿�����ǲ��ܿ���̫����
             {
              Reference_Width++;
             }
             else 
             {
              Reference_Width=118-Left;
             }
            }
           Right=Left+Reference_Width;
          }
       }
       else                        //û��������                                  
       {
                if(CarSpeed>2.5)   
              {
               if(Left+Reference_Width<=118)  //����������ұ���Ҫ���⿿�����ǲ��ܿ���̫����
               {
                Reference_Width++;
               }
               else 
               {
                Reference_Width=118-Left;
               } 
              }
              Right=Left+Reference_Width;
       }
      }
    }
    else  //�ϴ����ҵ����ߣ����û���ҵ�����
    {
       Leftlastfind=0;   //���� 
        /*           ��ת��ʮ��           */   
      if(FindBoundary(left))
     {
      if(RisingEdge[RisingEdgeIndex]<Leftlast)  //���û�ܹ��ҵ����ϴ����ڵı߽磬�����б߽�ȴ�����еı߽��
      {
        if(Rightlastfind==0&&((RoadType!=5)&&(RoadType!=4)))   //�ϴ�û���ҵ��ұ߽磬�����߽������⿿����ô��������ʮ����
        {
         RoadType=1; 
         Character_Distance=Distance; 
        }
      }
      else if(RisingEdge[RisingEdgeIndex]<Leftlast+8)   //��εı߽���ϴθ��������룬�������ǵĲ�ֵ������8
      {
     //  Left=RisingEdge[RisingEdgeIndex];
      // Leftlastfind=1;                 //δ����		 
      }
     } 
      else                     //�����ҵ���߽�
     {
       if(Rightlastfind==0&&(RoadType!=4))  
       {
        RoadType=1;
        Character_Distance=Distance;
       }
     }
    }
   }
   ///////////////////////////////
   if(Rightlastfind)					//�ϴ��ҵ�������
   {
    if(FindNearest(right,Rightlast))	//������ҵ�����
    {
      Right=FallingEdge[FallingEdgeIndex];
      Rightlastfind=1;
      if(Leftlastfind==0)				//�ϴ��ҵ�������,������ҵ�����,�ϴ��Ҳ�������
      {
       if(RisingEdgeCnt>0)				//�ϴ��ҵ�������,������ҵ�����,�ϴ��Ҳ�������,����ҵ�������
       {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
	 for(RisingEdgeIndex=RisingEdgeCnt-1;RisingEdgeIndex>=0;RisingEdgeIndex--)
         {
           leftfind=0;
           if(RisingEdge[RisingEdgeIndex]<Right)         //�ҵ�Ǳ�ڵı�����
           {
             tempwidth = Right-RisingEdge[RisingEdgeIndex];
             if (ABS(tempwidth-Reference_Width)>=2)       //���߳��ֵ�̫���ˣ���������
             {
              if(tempwidth>Reference_Width)   Reference_Width=Reference_Width+1;   //Ǳ�ڵ��������߱Ȳο���ȿ�̫��
              else                          
              {
                Reference_Width=Reference_Width-1;   //Ǳ�ڵ��������߱Ȳο����խ̫��
                if((RoadType==0)&&(Distance-Last_Singleine_Position<0.5))
                Reference_Width=Reference_Width-1;   //Ǳ�ڵ��������߱Ȳο����խ̫��
              }
              Left=Right-Reference_Width;
              Leftlastfind = 0;
             }
             else 
             {
               Left=RisingEdge[RisingEdgeIndex];
               Leftlastfind=1;
             }
            leftfind=1;
            break;
           }          
         }
            if(Leftlastfind==0&&leftfind==0)   //��Ȼ˵�������أ����Ǹ���������Ч
            {
              if(CarSpeed>2.5)              //�ٶ����ƣ���ֹ����
                {
                 if(Right-Reference_Width>=10)  //����������ұ���Ҫ���⿿�����ǲ��ܿ���̫����
                 {
                    Reference_Width++;
                 }
                 else 
                 {
                    Reference_Width=Right-10;
                 } 
                }
               Left=Right-Reference_Width;
            }
       }
       else                               //û��������Ŷ��
       { 
         if(CarSpeed>2.5)              //�ٶ����ƣ���ֹ����
          {
           if(Right-Reference_Width>=10)  //����������ұ���Ҫ���⿿�����ǲ��ܿ���̫����
           {
               Reference_Width++;
           }
           else 
           {
              Reference_Width=Right-10;
           } 
          }
         Left=Right-Reference_Width;
       }
      }
    }
    else  //�ϴ����ҵ������û���ҵ����ϴ����ڽ�����
    {
      Rightlastfind=0;   //����
     /*           ��ת��ʮ��           */
     if(FindBoundary(right))   //�ܹ��ҵ��ұ߽�
     {
      if(FallingEdge[FallingEdgeIndex]>Rightlast)  //���û�ܹ��ҵ����ϴ����ڵı߽磬�����б߽�ȴ�����еı߽��
      {
        if(Leftlastfind==0&&((RoadType!=5)&&(RoadType!=4)))   //�ϴ�û���ҵ���߽磬����ұ߽������⿿����ô��������ʮ����
        {
         RoadType=1; 
         Character_Distance=Distance;
        }
      }
      else if(FallingEdge[FallingEdgeIndex]>Rightlast-8)  //��εı߽���ϴθ��������룬�������ǵĲ�ֵ������8
      {
    //    Right=FallingEdge[FallingEdgeIndex];
     //   Rightlastfind=1;           //��ʵ��δ����
      }
     }
     else                     //�����ҵ��ұ߽�
     {
        if(Leftlastfind==0&&(RoadType!=4))   //�ϴ�û���ҵ���߽磬����ұ߽������⿿����ô��������ʮ����
       {
         RoadType=1;
         Character_Distance=Distance;
       }
     }
    }
   }
   //�����ҵ����ߣ����²ο����
   if(Rightlastfind&&Leftlastfind)
   {
     
     Reference_Width=Right-Left; 
     if(Reference_Width<35)Reference_Width=35;
   }
  }
}
void CrossRoad()
{
   static uint8 Normal_Cnt;
   static uint8 Cross_Road_Cnt=0;
  
    //�������㣬���ӻ���  
  if(curve_to_cross==0)
  {  
    Rightlastfind=0;
    Leftlastfind=0; 
  }
  else
  {  
    if(Rightlastfind)
    {
        if(FindNearest(right,Rightlast))		//������ҵ�����
       {
        Right=FallingEdge[FallingEdgeIndex];
        Rightlastfind=1;
        Left=Right-Reference_Width;
       }
       else 
       {
         Rightlastfind=0;
         //curve_to_cross=0;
       }
    }
    else if(Leftlastfind)
    {
      if(FindNearest(left,Leftlast))		//������ҵ�����
     {
      Left=RisingEdge[RisingEdgeIndex];    
      Leftlastfind=1;
      Right=Reference_Width+Left;
     }
     else 
     {
       Leftlastfind=0;
      // curve_to_cross=0;
     }
    }
  }
  
    if(ABS(Middle_Err)>1)
    {
      if(curve_to_cross==0)
      {
       if(Middle_Err>0)Middle_Err=Middle_Err-1.2;     
       if(Middle_Err<0)Middle_Err=Middle_Err+1.2;
      }
    }
    else Middle_Err=0;
    
    if((curve_to_cross==0)&&Is_Black_Line()&&(Distance-Character_Distance<0.15))
    {
          RoadType=4;
          Turn_To_Angle=0;//??????????????????????????????????
          Strong_Turn_Cnt=0;
          Strong_Turn_En=0;
          Turn_State=0;
          Turn_Angle_Integral=0;
    }
    

    
    if((Stop==0)&&(Distance-Character_Distance>0.7)&&Protect&&(curve_to_cross==0))                             //�ܳ�ȥ��
    {
      Stop=true;
      CarStopedJustNow=true; 
    }
    
  
    
    
    
    if(curve_to_cross==0||(curve_to_cross==1&&Distance-Character_Distance>0.5)) Find_Bothine();
    
    if(Rightlastfind&&Leftlastfind)//�ܹ��ҵ����߽߱�
    {
     if(Right-Left<65&&Cross_Road_Cnt>4)     //�����Ч
     {
        /*                ��ת��ֱ����                 */
        if(Distance>1&&(Distance-Character_Distance<0.15))
        {
          RoadType=4;
          Turn_Angle_Integral=0;
          Turn_To_Angle=0;
          Strong_Turn_Cnt=0;
          Strong_Turn_En=0;
          Turn_State=0;                       
        }
        else
        { 
          Normal_Cnt++;
          if(Normal_Cnt>=3)
          {
           RoadType=0;
           curve_to_cross=0;
          /*            ����������·            */
          }
         
        }
     }
     else 
     {
      Rightlastfind=0;
      Leftlastfind=0;
      Normal_Cnt=0;
     }
    }
    else Normal_Cnt=0;
    
     if(curve_to_cross&&(Distance-Character_Distance>0.1)&&(Distance-Character_Distance<0.32))
    {
       Is_Single_Line();//˵��������ʶ���ˣ�
    }

    if(RoadType!=1)
    {
      Cross_Road_Cnt=0;
    }
    else
    {
      if(Cross_Road_Cnt<10)Cross_Road_Cnt++; 
      
      if(Cross_Road_Cnt>3&&Cross_Road_Cnt<8&&curve_to_cross==0)/////////////////////////////////��
      {
        Leftlastfind=0;
        Rightlastfind=0;
        Is_Single_Line();//˵��������ʶ���ˣ�
      }
      
    }
}
void Barraicade()
{
  int i;
  
   if(Right_Or_Left==left) //�ϰ������
   {
     if(FindNearest(right,Rightlast))
     {
      Right=FallingEdge[FallingEdgeIndex];
      Rightlastfind=1;
     }
     else Rightlastfind=0;
     if(Distance-Character_Distance<0.25)
     {
       Leftlastfind=0;
       if(RisingEdgeCnt>0)  
       {
        for(i=RisingEdgeCnt-1;i>=0;i--)
        {
         if(RisingEdge[i]+10<Right) 
         {
          Left=RisingEdge[i]; 
          Leftlastfind=1;
          break;
         }
        }
       }
     }
     else
     {
       if(FindNearest(left,Leftlast))
       {
        Left=RisingEdge[RisingEdgeIndex];
       Leftlastfind=1;
       }
       else Leftlastfind=0;
     }
     
     if(Leftlastfind&&Rightlastfind)Reference_Width=Right-Left;
     else
     {
      Left=Right-Reference_Width;
     }
   }
   else   //�ϰ����ұ�
   { 
     if(FindNearest(left,Leftlast))
     {
      Left=RisingEdge[RisingEdgeIndex];
      Leftlastfind=1;
     }
     else Leftlastfind=0;
     if(Distance-Character_Distance<0.25)
     {
       Rightlastfind=0;
       if(FallingEdgeCnt>0)  
       {
         for(i=0;i<FallingEdgeCnt;i++)
          {
           if(FallingEdge[i]>Left+10) 
           {
            Right=FallingEdge[i]; 
            Rightlastfind=1;
            break;
           }
          }
       }
     }
     else
     {
        if(FindNearest(right,Rightlast))
       {
        Right=FallingEdge[FallingEdgeIndex];
        Rightlastfind=1;
       }
       else Rightlastfind=0;
     }
     
     if(Leftlastfind&&Rightlastfind)Reference_Width=Right-Left;
     else
     {
       Right=Left+Reference_Width;
     }
   }
   Turn_State_Cnt++;
   if(Distance-Character_Distance>0.5)
   RoadType=0;
}
void SingleLine()
{
  int i=0,j=0;
  static int lostcnt;
  static int SharpTurn_Lost=0;
  
  Leftlastfind=0;
  Rightlastfind=0;
  
  for(i=Left-5;i<=Left+5;i++)           
  {
    if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ
    {   
      Left=i;
      Leftlastfind=1;
      lostcnt=0;
      break;
    }
  }
  
  for(j=Right-5;j<=Right+5;j++)
  {
    if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>Threshold)) //Ѱ�����ķ�ֵ
    {
       Right=j;
       Rightlastfind=1;
       lostcnt=0;
       break;
    }
  }
  
  if((Leftlastfind==0)&&(Rightlastfind==0)) ///////////////ע�⣡��������
  {     
      lostcnt++;
    
      if(lostcnt>=3) 
      {
            
        if(((Distance-Character_Distance)>0.1)&&((Distance-Character_Distance)<0.4)&&(ABS(Middle_Err)>10))
        {
         SharpTurn_Lost=1;
        }
        
        if(Distance-Character_Distance<0.2)           //�����ж�˵�������У�Ӧ��ת��ֱ������                                   /////////�������ðɣ���������������������������
        {
          RoadType=4;
          Turn_Angle_Integral=0;
          Turn_To_Angle=0;
          Strong_Turn_Cnt=0;
          Strong_Turn_En=0;
          Turn_State=0;             
        }
        else                                          //ȷʵ�ǵ��߶��������ǳ����ߵ������
        {
           
           if(SharpTurn_Lost==0) 
          {                      
              for(i=Left-10;(i>Left-40)&&(i>0);i--)           
            {           
              if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>Threshold*2))  //Ѱ�����ķ�ֵ
              {   
                Left=i;
                Leftlastfind=1;
                break;
              }
            }
            
            
             for(j=Right+10;(j<Right+40)&&(j<125);j++)
            {
              if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold*2)) //Ѱ�Ҹ��ķ�ֵ
              {
                 Right=j;
                 Rightlastfind=1;
                 break;
              }
            }
          
            if(Rightlastfind||Leftlastfind) 
            {
             if(Rightlastfind==0) Right=(64-(int)Middle_Err)*2-Left;
             if(Leftlastfind==0) Left=(64-(int)Middle_Err)*2-Right;
             RoadType=0;
             Last_Singleine_Position=Distance;
             lostcnt=0; 
            }
          }
          else
          {  
            if(Middle_Err<0)
            {
              for(i=Left;i<120;i++)         
             {
              if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ
              {
                for(j=i+2;(j<=i+10)&&(j<125);j++) 
                {
                  if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>Threshold)) //Ѱ�����ķ�ֵ
                  {
                    Left=i;
                    Leftlastfind=1;
                    Right=j;
                    Rightlastfind=1;
                    SharpTurn_Lost=0;
                    lostcnt=0;
                  }
                }
              }
             }
            }          
            if(Middle_Err>0)
            {
              for(i=Right;i>1;i--)         
             {
              if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ
              {
                for(j=i+2;j<=i+10;j++) 
                {
                  if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>Threshold)) //Ѱ�����ķ�ֵ
                  {
                    Left=i;
                    Leftlastfind=1;
                    Right=j;
                    Rightlastfind=1;
                    SharpTurn_Lost=0;
                    lostcnt=0;
                  }
                }
              }
             }
            }
          }
        }
      }
    }
  
   if(Leftlastfind&&Rightlastfind) ///////////////ע�⣡��������
  {
   if(ABS(Right-Left)>12)
   {
     RoadType=0;
     Last_Singleine_Position=Distance;
     Leftlastfind=0;
     Rightlastfind=0;
     Find_Bothine();
   }
  }
   
   if(RoadType!=3) SharpTurn_Lost=0;
  
}

///////////////////////////////////////////////////////ֱ�����////////////////
void RightAngleTurn()
{ 
  static uint8 tuofengDisapear=0;
  static uint8 Lastine,Lastine_R,Refind_Cnt_R;
  uint8 refind=0;
  static int Cross_cnt=0;
  uint8 j=0;
  state_change=0;
  if(Distance-Character_Distance<0.1) tuofengDisapear=0;
  /***********************״̬0,���߶����ҵ���********************/
  if(Turn_State==0)
  {   
     if(Turn_To_Angle!=0)
     {
       if(Turn_To_Angle==1)  //��ת��ֱ��
       { 
          if(tuofengDisapear==0) Cross_cnt++;
          if(FindNearest(left,Leftlast))
         {
            Left=RisingEdge[RisingEdgeIndex];
            Leftlastfind=1;         
            if(Rightlastfind==0&&Cross_cnt<=10&&(tuofengDisapear==0))
            {
              if(FallingEdgeCnt==0)
              {
                RoadType=0;
                Cross_cnt=0; 
              }     
              else  if(FallingEdge[FallingEdgeCnt-1]<Left)  
              {   
                RoadType=0;
                Cross_cnt=0; 
              }
            }
         }
         else
         { 
           Cross_cnt=0;
           Leftlastfind=0;
           if(Distance-Character_Distance>0.1)  tuofengDisapear=1; //���������䣬�շ���ʧ        
           if(Distance-Character_Distance<0.60)
           {
             for(RisingEdgeIndex=RisingEdgeCnt-1;RisingEdgeIndex>=0;RisingEdgeIndex--)
             {
              if(((RisingEdge[RisingEdgeIndex]>=Left)&&(RisingEdge[RisingEdgeIndex]-Left<20))||ABS(RisingEdge[RisingEdgeIndex]-Left)<10)  
              {
                  Leftlastfind=1;
                  Left=RisingEdge[RisingEdgeIndex];
                  break;
              }
             }
             Character_Distance=Distance-0.1;
           }           
         }
         //�����ұ���
                                                                                    ///////////////////////
         if(Rightlastfind==0)
         {
           if(RisingEdgeCnt>=1)
           {
               for(FallingEdgeIndex=FallingEdgeCnt-1;FallingEdgeIndex>=0;FallingEdgeIndex--)
              {
                 if(FallingEdge[FallingEdgeIndex]-Left>35)
                 {
                   if(Rightlastfind==1)         //˵�����շ�֮�⻹�б߽�
                   {
                     refind=1;
                     break;
                   }
                   else
                   {
                    Right=FallingEdge[FallingEdgeIndex];
                    Rightlastfind=1; 
                   }
                 }
              }
           }
           if(refind==0&&tuofengDisapear==0)
           {
            Right=Left+Reference_Width; 
            Refind_Cnt=0; 
            Rightlastfind=0;
           }
           else
           {
            if(Rightlastfind==1)
            {
             Refind_Cnt++;
             if(Refind_Cnt>=3) 
             {
               Character_Distance=Distance-0.1;
               Rightlastfind=1;
             }
             else  Rightlastfind=0;
            }
           }
         }
         else
         {
            if(FindNearest(right,Rightlast))
           {
               Right=FallingEdge[FallingEdgeIndex];
               Rightlastfind=1;
           }
           else Rightlastfind=0;
         }                                                                           ///////////////////////
         
       }
       else                  //��ת��ֱ��
       {
         if(tuofengDisapear==0) Cross_cnt++;
         //�����ұ���
         if(FindNearest(right,Rightlast))
         {
          Right=FallingEdge[FallingEdgeIndex];      
          Rightlastfind=1;
          
          
          if(Leftlastfind==0&&Cross_cnt<=10&&(tuofengDisapear==0))
          {
            if(RisingEdgeCnt==0)
            {
              RoadType=0;
              Cross_cnt=0; 
            }     
            else  if(RisingEdge[0]>Right)  
            {   
              RoadType=0;
              Cross_cnt=0; 
            }
          }
  
         }
         else 
         {  
            Cross_cnt=0;
           Rightlastfind=0; 
           if(Distance-Character_Distance>0.1)  tuofengDisapear=1; //���������䣬�շ���ʧ
           if(Distance-Character_Distance<0.60)
           {
             for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
             {
              if(((FallingEdge[FallingEdgeIndex]<Right)&&(Right-FallingEdge[FallingEdgeIndex]<20))||(ABS(Right-FallingEdge[FallingEdgeIndex])<10))
              {
                  Rightlastfind=1;
                  Right=FallingEdge[FallingEdgeIndex];
                  break;
              }
             }
             Character_Distance=Distance-0.1;
           }  
         } 
         //���������
         if(Leftlastfind==0)
         {
           if(RisingEdgeCnt>=1)
           {
               for(RisingEdgeIndex=0;RisingEdgeIndex<=RisingEdgeCnt-1;RisingEdgeIndex++)
              {
                 if(Right-RisingEdge[RisingEdgeIndex]>35)
                 {
                   if(Leftlastfind==1)         //˵�����շ�֮�⻹�б߽�
                   {
                     refind=1;
                     break;
                   }
                   else
                   {
                    Left=RisingEdge[RisingEdgeIndex];
                    Leftlastfind=1; 
                   }
                 }
              }
           }
           if(refind==0&&tuofengDisapear==0)
           {
            Left=Right-Reference_Width; 
            Refind_Cnt=0; 
            Leftlastfind=0;
           }
           else
           {
            if(Leftlastfind==1)
            {
             Refind_Cnt++;
             if(Refind_Cnt>=3) 
             {
               Character_Distance=Distance-0.1;
                Leftlastfind=1;
             }
             else  Leftlastfind=0;
            }
           }
         }
         ////////������Ѿ������ҵ�
         else
         {
            if(FindNearest(left,Leftlast))
           {
               Left=RisingEdge[RisingEdgeIndex];
               Leftlastfind=1;
           }
           else Leftlastfind=0;
         }
       }
     }
  //////////////////////////////////////////////////
     else                   //����ֱ��
     {
       if(Distance-Character_Distance>0.1)
       {  
         Leftlastfind=0;
         Rightlastfind=0;
         if(RisingEdgeCnt!=0) 
         {
            for(RisingEdgeIndex=RisingEdgeCnt-1;RisingEdgeIndex>=0;RisingEdgeIndex--)
            {
               if(RisingEdge[RisingEdgeIndex]<64)
               {
                  Leftlastfind=1;
                  Left=RisingEdge[RisingEdgeIndex];
                  break;
               }
            }
         }       
        if(FallingEdgeCnt!=0)  
        {
           for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
           {
              if(FallingEdge[FallingEdgeIndex]>64)
              {
                  Rightlastfind=1;
                  Right=FallingEdge[FallingEdgeIndex];
                 break;
              }
           }
         }
         Reference_Width=50;
         if(Rightlastfind==1&&Leftlastfind==0)
         {
           Left=Right-Reference_Width;
         }
         if(Rightlastfind==0&&Leftlastfind==1)
         {
           Right=Left+Reference_Width;
         }
       }
     }
    //////////////////////////      
    if(Distance-Character_Distance>1.60)
    {
      RoadType=0;
    }
    
    if((Distance-Character_Distance>0.80)&&(Leftlastfind==0||Rightlastfind==0))
    {
      Turn_State=1;
      Refind_Cnt=0;
      state_change=1;
      Strong_Turn_En=1;
      Turn_Angle_Integral=0;
      Turn_State1To2_Left=Left;
      Turn_State1To2_Right=Right;
      if(Leftlastfind==0)
      {
        Right_Or_Left=1; //��ֱ�� 
      }
      else
      Right_Or_Left=-1;  //��ֱ��
    }
  }
  
  
  /********************״̬1,������ֱ�ǣ�ǿ��*********************/
  if((Turn_State==1)&&(state_change==0))          //״̬һ ��ʧ��һ������
  {
    Cross_cnt=0;
    if(Right_Or_Left==1)
    {   
        Rightlastfind=0;
        Leftlastfind=0;
        
        
       for(j=Turn_State1To2_Left-10;j>5;j--)
      {
         if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>Threshold)) //Ѱ�����ķ�ֵ
         {          
          Left=j;
          Leftlastfind=1; 
          break;   
         }
       }
        
       if(Leftlastfind)             //��ֱ�ǣ������ҵ��������
      {
                     
          for(j=Left;j<100;j++)
          {
             if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ
            {
             Rightlastfind=1;
             Right=j;
             break;
            }
          }
         
         if(Lastine<=Left)
         {
           Refind_Cnt++;
           if(Refind_Cnt>=3)
           {
            Turn_State=2;
            state_change=1;
           }
         }
         else   Refind_Cnt=0;
         Lastine=Left;  
      }
      else    Refind_Cnt=0;
      
       if(Rightlastfind==0)              //
      {        
        for(j=Turn_State1To2_Left;j<100;j++)
        {
           if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ
          {
           Rightlastfind=1;
           Right=j;
           break;
          }
        }
        if(Rightlastfind)
        {
         if(Lastine_R>Right)
         {
           Refind_Cnt_R++;
           if(Refind_Cnt_R>=3)
           {
            Turn_State=2;
            state_change=1;
           }
           else Rightlastfind=0;
         }
         else
         {
           Refind_Cnt_R=0;
           Rightlastfind=0;
         }
         Lastine_R=Right;  
        }
        else   Refind_Cnt_R=0;
      }
    }
    else  //��ֱ��                              �е�����Ŷ
    {  
      Leftlastfind=0;
       Rightlastfind=0;
       
       for(j=Turn_State1To2_Right;j<125;j++)
      {
         if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ
        {
         Rightlastfind=1;
         Right=j;
         break;
        }
      }
       
       if(Rightlastfind)             //��ֱ�ǣ������ҵ��ұ�����
      { 
          for(j=Right;j>20;j--)
          {
             if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>Threshold)) //Ѱ�����ķ�ֵ
            {
             Leftlastfind=1;
             Left=j;
             break;
            }
          }
        
         if(Lastine_R>=Right)
         {
           Refind_Cnt_R++;
           if(Refind_Cnt_R>=3)
           {
            Turn_State=2;
            state_change=1;
           }
         }
         else Refind_Cnt_R=0;
         Lastine_R=Right;  
       }
      else  Refind_Cnt_R=0;
     
      if(Leftlastfind==0)
     {
       for(j=Turn_State1To2_Right;j>5;j--)
      {
         if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>Threshold)) //Ѱ�����ķ�ֵ
         {          
          Left=j;
          Leftlastfind=1; 
          break;   
         }
       }
       
       if(Leftlastfind)
      {
       if(Lastine<Left)
       {
         Refind_Cnt++;
         if(Refind_Cnt>=3)
         {
          Turn_State=2;
          state_change=1;
         }
         else Leftlastfind=0;
       }
       else
       {
         Refind_Cnt=0;
         Leftlastfind=0;
       }
       Lastine=Left;  
      }
       else Refind_Cnt=0;
     }
    }
    
    if(state_change==1)
    {
       if(Strong_Turn_Cnt<20)     //��ֹ���������Turn_State2��
       {
         Turn_State=1;
       }
    }
        
    Middle_Err=0;
    
  }
  
  static uint8 Width_Decrease_cnt;
  static int Widthast;
  int width;
  
  if((Turn_State==2)&&(state_change==0))
  {
    Normal();
    RoadType=4;
    
    if(Distance-Character_Distance>2.0)
    {
        if(Leftlastfind&&Rightlastfind)        //б�ų�ֱ��
      {
        width=Right-Left;
        
        if(Widthast!=0)
        {
          if(Widthast-width>=2)
          {
           Width_Decrease_cnt++; 
          }
          else
          {
           Width_Decrease_cnt=0;  
          }
          if(Width_Decrease_cnt==2||(Widthast-width>=3))
          {
            Turn_State=3;
            state_change=1;
            Character_Distance=Distance;
            Leftlastfind=0;
            Rightlastfind=0;
          } 
        }
        Widthast=width;
      }
    
     if(Leftlastfind==0||Rightlastfind==0) //ֱ��ֱ��
     {  
       Turn_State=3;
       state_change=1;
       Character_Distance=Distance;
       Leftlastfind=0;
       Rightlastfind=0;
     }
    }
    else
    {
      Widthast=0;
      Width_Decrease_cnt=0;
    }
  }
  if((Turn_State==3)&&(state_change==0))  //
  {
      if(Middle_Err>2) Middle_Err=Middle_Err-0.5;
      if(Middle_Err<-2) Middle_Err=Middle_Err+0.5;
      if(Distance-Character_Distance>0.2)
      {
        Find_Bothine();
        if(Leftlastfind&&Rightlastfind)
        {
         if((Right-Left>25)&&(Right-Left<60)&&(ABS((Right+Left)/2-64))<15)
         {
           RoadType=0;
           Turn_State=0;
           Refind_Cnt=0;
         }
        }
      } 
      if(Distance-Character_Distance>0.3)
      {
         RoadType=0;
        Turn_State=0;
        Refind_Cnt=0;
      }
      if(RoadType==0) Last_Angle_Turn_Position=Distance;
      
  }
    if(Distance-Last_Angle_Turn_Position<0.5)RoadType=0;
    
    CCD_Draw_Buff[137]=Turn_State;
}
void Hill()
{
  //////////�������µ��������ߵı���/////////
  uint8 i=0,j=0,threshold_t;
  static uint8 lost_cnt;
  ////////////////////////////
  static uint8  Confirm_Cnt=0;  
   if(RoadTypeConfirm==0)  //��ûȷ��
  {
    Normal(); //����normal���������� 
    if(Confirm_Cnt<5)      //��5��������ȷ��
    {
      if(Leftlastfind==0||Rightlastfind==0||ABS(Middle_Err)>5)   //��һ����û�ҵ�˵�������ʵ�����
      {
       RoadType=0; 
       Confirm_Cnt=0;
      } 
     else Confirm_Cnt++;
    }
    else RoadTypeConfirm=1;     //��������ȷ���ˣ�ȷʵ���µ� 
    lost_cnt=0;
  }
  else                                  //�Ѿ��ж����µ���
  { 
    Leftlastfind=0;
    Rightlastfind=0;
    threshold_t=Threshold;
    while((Leftlastfind==0)&&(threshold_t*1.5>Threshold))
    {
       for(i=Leftlast-6;i<=Leftlast+6;i++) ////////////////////////////////////////////////////////////////////////////////////////////???????????????????????????         
      {
        if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>threshold_t))  //Ѱ�Ҹ��ķ�ֵ
        {  
          Left=i;
          Leftlastfind=1;
        }
      }
      threshold_t=threshold_t-2;
    } 
    threshold_t=Threshold;
    while((Rightlastfind==0)&&(threshold_t*1.5>Threshold))
    {
      for(j=Rightlast+6;j>=Rightlast-6;j--)
      {
        if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-threshold_t)) //Ѱ�����ķ�ֵ
        {
           Right=j;
           Rightlastfind=1;
        }
      }
      threshold_t=threshold_t-2;
    }
    
    if((Leftlastfind==1)&&(Rightlastfind==0))/////////////////////////////////////??????????????????????????????????????????????????????????????????????????????
    {
       for(j=Left+10;(j<=Left+50)&&(j<120);j++)
      {
        if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold)) //Ѱ�����ķ�ֵ
        {
           Right=j;
           Rightlastfind=1;
           break;
        }
      }
    }
      
    if((Leftlastfind==0)||(Rightlastfind==1)) 
    {
       for(i=Right-10;(i>=Right-50)&&(i>10);i--) ////////////////////////////////////////////////////////////////////////////////////////////???????????????????????????         
      {
        if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>threshold_t))  //Ѱ�Ҹ��ķ�ֵ
        {  
          Left=i;
          Leftlastfind=1;
          break;
        }
      }
    }
    
    if(Leftlastfind==0||Rightlastfind==0)  ////////////////////////////////////////////////////////////////////////////////////////////???????????????????????????????????
    {
       if((Distance-Character_Distance)>3) 
     {
       if(Is_Black_Line())
       {
          RoadType=4;
          Turn_To_Angle=0;//??????????????????????????????????
          Strong_Turn_Cnt=0;
          Strong_Turn_En=0;
          Turn_State=0;
          Turn_Angle_Integral=0;
       }
     }
      
      lost_cnt++;
      if(Right-Left>50||(lost_cnt>=3&&Right-Left>30)||(lost_cnt>=5&&Right-Left<20))
      {
        RoadType=0;
        Confirm_Cnt=0;
        RoadTypeConfirm=0;
      }
    }
    else lost_cnt=0;
  }
   if((Distance-Character_Distance)>3.3)   //�����µ����Ȳ�����3m
     /*            ����������·            */
   {
     Last_Hill_Distance=Distance;
     RoadType=0;
     Hill_Flag=1;
     Confirm_Cnt=0;
     RoadTypeConfirm=0;
   }
   

   
}
uint8 FindNearest(uint8 mode,uint8 lastegde)
{
  uint8 find=0;
  if(mode==left)
  {
     if(RisingEdgeCnt!=0)  
     {
      for(RisingEdgeIndex=0;RisingEdgeIndex<RisingEdgeCnt;RisingEdgeIndex++)
      {
       if(ABS(lastegde-RisingEdge[RisingEdgeIndex])<=3)//3
       {
         find=1;
         break;
       }
      }
     }
  }
  else
  {
    if(FallingEdgeCnt!=0)  
   {
     for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
     {
       if(ABS(lastegde-FallingEdge[FallingEdgeIndex])<=3)//3
       {
         find=1;
         break;
       }
     }
   }
  }
  return find;
}
uint8 FindBoundary(uint8 mode)    //Ѱ��������ĵı߽�
{
  uint8 find=0;
  if(mode==left)
  { 
   if(RisingEdgeCnt!=0)  
   { 
    for(RisingEdgeIndex=RisingEdgeCnt-1;RisingEdgeIndex>=0;RisingEdgeIndex--)
    {
     if(RisingEdge[RisingEdgeIndex]<75)
     {
       find=1;
       break;
     }
     if(RisingEdgeIndex==0)  break;
    }
   }
  }
   else
  {
    if(FallingEdgeCnt!=0)  
    {
     for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
     {
      if(FallingEdge[FallingEdgeIndex]>53)
      {
       find=1;
       break;
      }
     }
    }
  }
  return find;
}

//�µ����
void Is_Hill()
{
   static int Width_Increase_Cnt=0,Straight_Cnt; 
   float slope;
   float Angle_Change=0;
   int i;
   
   Angle_Change = Previous_Angle[0]+Previous_Angle[1]+Previous_Angle[2]-Previous_Angle[3]-Previous_Angle[4]-Previous_Angle[5];
   Angle_Change=Angle_Change/3;
   
   if((Stop==0)&&(Distance>1)&&(ABS(Middle_Err)<=3)&&(RoadType!=5)&&Rightlastfind&&Leftlastfind&&(Angle_Change>-1))    //ƫ��С��һ��ֵ ��ֱ���������ж��µ����ܶ��������0.5�����ж�ֵ����ֹ��������
   {
       Straight_Cnt++;
       if(Straight_Cnt>14)                //��������15�ε�ֵ                             //ǰ15��״̬һֱ��ֱ��
       {
          Width_Increase_Cnt=0;
        
          slope=10* Slope_Calculate(0,8,Previous_Error); 
                    
          for(i=0;i<10;i++)                        
         {
           Width_Increase_Cnt+=Previous_Width[i]-Previous_Width[i+1];
         }
          
         if((Width_Increase_Cnt>=5)&&(ABS(slope)<2))      //ֻҪ������ӵĴ�������5�ұ仯�ĽǶȴ���-3������Ϊ�Ҵ����µ�  �ų����ڳ�ģ�Ƕȼ�С�����ĸ���
         {
           RoadType=5;
           RoadTypeConfirm=0;
           Character_Distance=Distance;
         } 
       }
   }
   else
   {
     Angle_Change=0;
     Straight_Cnt=0;
   }     
}

void Is_Barraicade()
{
  int left_edge,right_edge,left_edge_find,right_edge_find;
  int i;
  float half_width=0;
  half_width=Previous_Width[0]/2;
  if(Leftlastfind&&Rightlastfind)
  {
    right_edge_find=0;
    left_edge_find=0;
    if(FallingEdgeCnt>0)
    {
      for(i=0;i<FallingEdgeCnt;i++)
      {
       if((FallingEdge[i]>Leftlast)&&(FallingEdge[i]+7<Rightlast)) 
       {
        left_edge=FallingEdge[i]; 
        left_edge_find=1;
        break;
       }
      }
    }  
    if(RisingEdgeCnt>0)  
   {
    for(i=RisingEdgeCnt-1;i>=0;i--)
    {
       if((RisingEdge[i]<Rightlast)&&(RisingEdge[i]-7>Leftlast)) 
       {
        right_edge=RisingEdge[i]; 
        right_edge_find=1;
        break;
       }
    }
   }
   
   if(right_edge_find&&left_edge_find)
   {
     if(((right_edge-left_edge)*1.0/Previous_Width[0])>0.2)  //���ڿ�ȵ�1/5 ������1/4
     {
       RoadType=2;
       Turn_State_Cnt=0;        
       Turn_Angle_Integral=0;
       Turn_State=0;
       Character_Distance=Distance;  
       if(Rightlast-right_edge>half_width) Right_Or_Left=left; //��߳������ϰ�
       if(left_edge-Leftlast>half_width)   Right_Or_Left=right;  //�ұ߳������ϰ� 
     }
   }
   
   else if(left_edge_find)
   {
     
   }
   else if(right_edge_find)
   {
     
   }
 }
}

void Is_Straight_Angle_Turn()  
{
  //б����ֱ�ǣ����ѵ��������ߵı���
  
  static int Width_Change_Cnt_L=0,Width_Old_R;
  static int Pre_Width_All_L=0;
  int Width_All_L,Width_Low_L;
  
  static int Width_Change_Cnt_R=0,Width_Old_L;
  static int Pre_Width_All_R=0;
  int Width_All_R,Width_Low_R;

  
  uint8 find=0; 
  Turn_To_Angle=0;
  //б����ֱ�ǣ������ѵ��������ߵı���
  int i=0;
  static uint8  leftfind_t=0,rightfind_t=0;
  static uint8  leftlostcnt=0,rightlostcnt=0;

  
  /*********************���߶��ҵ�����*******************/
 if(Leftlastfind&&Rightlastfind&&(Right-Left<60)&&(RoadTypeSwitch&8))  //���߶��ҵ����˲�����б����ֱ��
  {
    if((RisingEdgeIndex<RisingEdgeCnt-1)&&(RisingEdge[RisingEdgeIndex+1]<120))  //�����ұ��ж��������
    {
      Width_All_R=RisingEdge[RisingEdgeIndex+1]-Left;
      Width_Low_R=RisingEdge[RisingEdgeIndex+1]-Right;
      if((Pre_Width_All_R>Width_All_R)&&(Width_Low_R<30)&&(Width_Low_R>=6))//Left-Line_Out>8
      {
        if(Width_Change_Cnt_R==0) Width_Old_R=Right-Left;
        Width_Change_Cnt_R++;
        if(Width_Change_Cnt_R>=5)
        {
          if(Width_Old_R-(Right-Left)>5)
          {
            if(FallingEdgeIndex<FallingEdgeCnt-1)
            {
               Right=FallingEdge[FallingEdgeIndex+1];
               Rightlastfind=1;
            }
            
            else 
            {
              Right=126;
              Reference_Width= Right-Left;
              Rightlastfind=0;
            }  
            find=1;
            Turn_To_Angle=1;
            Width_Change_Cnt_R=0;
          }
        }
      }
      else 
      {
        Width_Change_Cnt_R=0;
      }
      Pre_Width_All_R=Width_All_R;
    }
    
    if((FallingEdgeIndex>=1)&&(FallingEdge[FallingEdgeIndex-1]>10))   //��������ж���½���
    {
      Width_All_L=Right-FallingEdge[FallingEdgeIndex-1];
      Width_Low_L=Left-FallingEdge[FallingEdgeIndex-1];
      if((Pre_Width_All_L>Width_All_L)&&(Width_Low_L<30)&&(Width_Low_L>=6))        //Left-Line_Out>8
      {
        if(Width_Change_Cnt_L==0) Width_Old_L=Right-Left;
        Width_Change_Cnt_L++;
        if(Width_Change_Cnt_L>=5)
        {
          if(Width_Old_L-(Right-Left)>5)
          {
            if(RisingEdgeIndex>=1)
            {
               Left=RisingEdge[RisingEdgeIndex-1]; 
               Leftlastfind=1;
            }
            else 
            {
              Left=10;
              Reference_Width= Right-Left;
              Leftlastfind=0;
            }     
            find=1;
            Turn_To_Angle=-1;
            Width_Change_Cnt_L=0;
          }
        }
      }
      else
      {
        Width_Change_Cnt_L=0;
      }
      Pre_Width_All_L= Width_All_L;
    }
  }
  /**********************������һ�����ҵ�***********************/
  else if((Leftlastfind||Rightlastfind)&&(Right-Left<55)&&(Right<110)&&(Left>18))  //�����а���
  {
    if(Leftlastfind==0)
    {
      if(leftfind_t==0&&leftlostcnt<6)
      {
          for(i=Left;i<Right;i++)
         {
           if(CCD_Draw_Buff[i]>60)//���ȵ�һ��
           break;
         }
         if(i>Left+10&&i+10<Right)
         {
          if(ABS(i-Left)>10)  //���ϴεĲ�ֵ
          find=1;  
         }
      }
    }
     if(Rightlastfind==0)
    {
      if(rightfind_t==0&&rightlostcnt<6)
      {
          for(i=Right;i>Left;i--)
         {
           if(CCD_Draw_Buff[i]>60)//���ȵ�һ��
           break;
         }
         if(i>Left+10&&i+10<Right)
         {
          if(ABS(i-Right)>10)  //���ϴεĲ�ֵ
          find=1;  
         }
      }
    }
    
  }
 
 
 if(Leftlastfind==0&&Rightlastfind==0)
 {
   if(Is_Black_Line())
   {
    RoadType=4;
    Strong_Turn_Cnt=0;
    Turn_To_Angle=0;
    Turn_Angle_Integral=0;
    Strong_Turn_En=0;
    Turn_State=0;  
    Character_Distance=Distance;
   }
 }
 
 //////////////////////
  if(find==1)   //�ҵ���ֱ����
  {
    RoadType=4;
    Strong_Turn_Cnt=0;
    Strong_Turn_En=0;
    Turn_Angle_Integral=0;
    Turn_State=0;  
    Character_Distance=Distance;
  }
  leftfind_t=Leftlastfind;
  rightfind_t=Rightlastfind;
  if(leftfind_t==0)
  {
    if(leftlostcnt<10)
      leftlostcnt++;
  }
  else leftlostcnt=0;
  
  if(rightfind_t==0)
  {
     if(rightlostcnt<10) 
     rightlostcnt++;
  }
  else rightlostcnt=0;
  
  
   if(ABS(Middle_Err)<5&&(Last_Angle_Turn_Position>2)&&(Distance-Last_Angle_Turn_Position<1.2)&&(Distance-Last_Angle_Turn_Position>0.7)&&(RoadTypeSwitch&1))//
  {
   if(((Leftlastfind&&Rightlastfind)==0)&&(Leftlastfind||Rightlastfind))
   {
     Character_Distance=Distance-1;
    
     state_change=0;
     
      RoadType=4;
      Turn_State=1;  
      Refind_Cnt=0;
      Strong_Turn_En=1;
      Strong_Turn_Cnt=0;
      Turn_Angle_Integral=0;
      
      Turn_State1To2_Left=Left;
      Turn_State1To2_Right=Right;
     
      if(Leftlastfind==0)
      {
        Right_Or_Left=1; //��ֱ�� 
      }
      else  Right_Or_Left=-1; //��ֱ�� 
   }  
  }  
}

void Is_CrossRoad(void)  //б��ʮ��   //��ɫ�������ã�
{
   static int Width_Change_Cnt_L;
   static int Pre_Width_Out_L,Pre_Width_All_L;
   int Width_Out_L,Line_Out_L,Width_All_L;
  
   static int Width_Change_Cnt_R;
   static int Pre_Width_Out_R,Pre_Width_All_R;        
   int Width_Out_R,Line_Out_R,Width_All_R;
   
   static uint8 All_Find=0;
   
   if(Leftlastfind&&Rightlastfind)  //���߶��ҵ�����
  {
    if((RisingEdgeIndex<RisingEdgeCnt-1)&&(RoadTypeSwitch&4))                //�ұ��ж��������
    { 
      Line_Out_R=RisingEdge[RisingEdgeIndex+1];
      Width_Out_R=Line_Out_R-Right;
      Width_All_R=Line_Out_R-Left;
      if(Width_Out_R<6)  //��ɫ����
      {
        if(RisingEdgeIndex<RisingEdgeCnt-2)  
        {
          Line_Out_R=RisingEdge[RisingEdgeIndex+2];
          Width_Out_R=Line_Out_R-Right;
          Width_All_R=Line_Out_R-Left;
        }
      }
      if(Width_Out_R>8)
      {  
        if((Pre_Width_Out_R>Width_Out_R)&&(Width_All_R<=Pre_Width_All_R))  //
        {
           Width_Change_Cnt_R++;
        }
        else  Width_Change_Cnt_R=0;
      }
      Pre_Width_Out_R= Width_Out_R;
      Pre_Width_All_R= Width_All_R;
    }
    else 
    {
      Width_Change_Cnt_R=0;
    }
    
    if((FallingEdgeIndex>=1)&&(RoadTypeSwitch&4))    //����ж���½��� 
    {
      Line_Out_L=FallingEdge[FallingEdgeIndex-1];
      Width_Out_L=Left-Line_Out_L;
      Width_All_L=Right-Line_Out_L;
      if(Width_Out_L<6)  //��ɫ����
      {
        if(FallingEdgeIndex>=2)  //��ɫ����
        {
         Line_Out_L=FallingEdge[FallingEdgeIndex-2];
         Width_Out_L=Left-Line_Out_L;
         Width_All_L=Right-Line_Out_L;
        }
      }
      if(Width_Out_L>8)
      {  
        if((Pre_Width_Out_L>Width_Out_L)&&(Pre_Width_All_L>=Width_All_L))  //
        {
           Width_Change_Cnt_L++;
        }
        else  Width_Change_Cnt_L=0;
      }
      Pre_Width_Out_L= Width_Out_L;
      Pre_Width_All_L= Width_All_L;
    }
    else
    {
      Width_Change_Cnt_L=0;
    }
    All_Find=1;
   }
   else                       
   {    
     if(Width_Change_Cnt_R>=5||Width_Change_Cnt_L>=5)
     {
      if(RoadTypeSwitch&4) curve_to_cross=1;
       RoadType=1; 
       Character_Distance=Distance;
     }
     if(All_Find==1)          
     { 
       Width_Change_Cnt_L=0;
       Width_Change_Cnt_R=0;
     }  
     else 
     {
      if(Leftlastfind&&(Left<60))
      {
         if((FallingEdgeCnt==0)||FallingEdge[FallingEdgeCnt-1]<Left)  //�ұ�û�ж������
        {
          if(Left<Leftlast) Width_Change_Cnt_L++;         
          else  Width_Change_Cnt_L=0;
        }
        else Width_Change_Cnt_L=0;
      }
      if(Rightlastfind&&(Right>70))
      {
        if((RisingEdgeCnt==0)||RisingEdge[0]>Right)  //���û�ж������
        {
          if(Right>Rightlast)    Width_Change_Cnt_R++;
          else  Width_Change_Cnt_R=0;
        }
        else Width_Change_Cnt_R=0;
      }
     }
     All_Find=0;
   }  
}
void Is_Single_Line()
{
  uint8 i=0,j=0,threshold=45;
  uint8 find=0;
  
  uint8 Single_Line_Detected=0;
  
  static int Width_Change_Cnt;
  static int Pre_Width_In,Preine_Out;
  int Width_In,Line_Out;
  
  static int Width_Change_Cnt_R;
  static int Pre_Width_In_R,Preine_Out_R;
  int Width_In_R,Line_Out_R;
  
  static int Single_Line_Cnt=0;
  
  
  Single_Line_Detected=0;
  
  
   if(Leftlastfind&&Rightlastfind&&Single_Out_Detect&&(RoadTypeSwitch&2))  //���߶��ҵ����˲�����б�뵥��
  {
    if((RisingEdgeIndex<RisingEdgeCnt-1)&&(Middle_Err<-12))  //�����뵥��
    {
      Width_In_R=Right-Left;
      Line_Out_R=RisingEdge[RisingEdgeIndex+1];
      if((Pre_Width_In_R>Width_In_R)&&(Line_Out_R<=Preine_Out_R)&&(Line_Out_R-Right<=6)&&Width_In_R<45)
      {
        if(ABS(CCD_Buff[Line_Out_R+3]-CCD_Buff[Right-3])<25)
        Width_Change_Cnt_R++;
        if(Width_Change_Cnt_R>=4)//4
        {
            find=1;
            i=Right;
            j=Line_Out_R;
        }
      }
      else 
      { 
        if((Pre_Width_In_R==Width_In_R)&&(Line_Out_R<=Preine_Out_R)&&(Line_Out_R-Right<=6)&&Width_In_R<45)
        Width_Change_Cnt_R=Width_Change_Cnt_R-1;
        else Width_Change_Cnt_R=0;
      }
      Pre_Width_In_R= Width_In_R;
      Preine_Out_R=Line_Out_R;
    }
    
    if((FallingEdgeIndex>=1)&&(Middle_Err>12))  //�����뵥��
    {
      Width_In=Right-Left;
      Line_Out=FallingEdge[FallingEdgeIndex-1];
       if((Pre_Width_In>Width_In)&&(Line_Out>=Preine_Out)&&(Left-Line_Out<=6)&&Width_In<45)
      {
        if(ABS(CCD_Buff[Line_Out-3]-CCD_Buff[Left+2])<25)
        Width_Change_Cnt++;
        if(Width_Change_Cnt>=4)//4
        {
            find=1;
            i=Line_Out;
            j=Left;
        }
      }   
      else 
      {
        if((Pre_Width_In==Width_In)&&(Line_Out>=Preine_Out)&&(Left-Line_Out<=6)&&Width_In<45)
        Width_Change_Cnt=Width_Change_Cnt-1;
        else Width_Change_Cnt=0;
      }
      Pre_Width_In=Width_In;
      Preine_Out=Line_Out;
    }
  }
  
  
 if(Single_Out_Detect==0)
 { 
  for(i=10;i<116;i++)         
  {
    if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-threshold))  //Ѱ�Ҹ��ķ�ֵ
    {
      for(j=i+2;j<=i+10;j++) 
      {
        if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>threshold)) //Ѱ�����ķ�ֵ
        { 
          if(ABS(CCD_Diff[i]+CCD_Diff[j])<30)  //��ֵ�ľ��Բ�С��һ��ֵ
          {
            
               if(Leftlastfind&&Rightlastfind)  //���һ���ϴ����߶��ҵ�����
               {
                 if((i>Left+10)&&(j+10<Right))
                 {
                    find=1;
                 }
               }
                if(Leftlastfind&&Rightlastfind==0)  //��������ϴ�ֻ��һ���ҵ���
               {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                 if((i-Left>10)&&(i-Left<40))
                 {
                    find=1;
                 }
               }
                if(Leftlastfind==0&&Rightlastfind)  //��������ϴ�ֻ��һ���ҵ�����
               {
                    if((Right-j>10)&&(Right-j<40))
                   {
                      find=1;
                   }
               }
               if(Leftlastfind==0&&Rightlastfind==0)  //����ģ��ϴ����߶�û�ҵ���
               {
     
                    find=1;
               }
              
              Single_Line_Detected=1;
               
          }
          break;
        }
      }
    }
    if(find) break;
   }
  
  
  
    if((find==0)&&(Single_Line_Detected)&&(RoadTypeSwitch&2)&&((i-j)<=5))       //����壬�����ǵ���
   {
     Single_Line_Cnt++;
     if(Single_Line_Cnt>3)
     { 
       Single_Line_Cnt=0;
       find=1;
     }
   }
   else  Single_Line_Cnt=0; 
  
  }
  
  
      if(find)
    {
       Single_Line_Cnt=0;
       Left=i;
       Right=j;
       RoadType=3;
       Leftlastfind=1;
       Rightlastfind=1;
       Character_Distance=Distance;
    }
   
   
}
void Brightness_Calculate()   //����������������
{
  uint8 i;
  uint32 tempi=0;
  float tempf=0;
  for(i=Left;i<=Right;i++)
  {
    tempi+=CCD_Buff[i];
  }
  tempf=tempi*1.0/(Right-Left);
  
  tempf=tempf*(Max_Value-CCD_Offset)/127.0+CCD_Offset;
  Brightness=(int)(Brightness*0.95+tempf*0.05);
  CCD_Draw_Buff[140]=BYTE0(Brightness);
  CCD_Draw_Buff[141]=BYTE1(Brightness);  
}
void Find_Bothine()
{
    uint8 i=0,j=0,find=0;
    for(j=60;j>20;j--)
    {
       if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>Threshold)) //Ѱ�����ķ�ֵ
      {
       break;
      }
    }
     for(i=70;i<110;i++)
     {
        if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ
        {
          break;
        }
     }
    if(j>25&&i<105)
    {
      find=1;
       Left=j;
       Right=i;
       Leftlastfind=1;
       Rightlastfind=1;  
    }
    else
    {    
      for(j=10;j<80;j++)         
      {
         if((CCD_Diff[j]>=CCD_Diff[j-1])&&(CCD_Diff[j]>CCD_Diff[j+1])&&(CCD_Diff[j]>Threshold)) //Ѱ�����ķ�ֵ
        {
          for(i=j+1;i<=120;i++) 
          {
            if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-Threshold))  //Ѱ�Ҹ��ķ�ֵ
            {
              if(i-j>25)
              {
                 find=1;
                 Left=j;
                 Right=i;
                 Leftlastfind=1;
                 Rightlastfind=1; 
              }
              break;
            }
          }
        }
        if(find) break;
      } 
    }
    if(find==0)
    {
      Leftlastfind=0;
      Rightlastfind=0; 
    }
}
uint8 Is_Black_Line()
{
  uint8 i,j=0;
  uint32 tempi=0;
  float tempf=0;
  for(i=54;i<74;i++)  //�����м伸���������ֵ
  {
   if(CCD_Buff[i]>10)  tempi+=CCD_Buff[i];
  }
  tempf=tempi*1.0/20;
  
  tempi=(int)(tempf*(Max_Value-CCD_Offset)/127.0+CCD_Offset);
  
  if(tempi<Brightness/2)
  {
    j=1;
  }
  else j=0;
  return j;
}
void Push_And_Pull(float *buff,int len,float newdata)
{
 int i;
 for(i=len-1;i>0;i--)
 {
   *(buff+i)=*(buff+i-1);
 }
   *buff=newdata; 
}