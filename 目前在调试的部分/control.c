#include "include.h"
//角度类变量
int16  Acc_Z,Gyro_X,Gyro_Y;
int16  Acc_Max=8192;
int16  Acc_Min=-8192;
int16  Acc_Offset;
float Angle,Angle_Speed,Car_Angle=0;
int16  Gyro_X_Offset=0,Gyro_Y_Offset=0;
//速度类变量
float SpeedControlOutNew;
float SpeedControlOutOld;
float SpeedControlIntegral=0,Hill_Slow_Ratio;
uint8  Set_Angle;   //加速前倾角度
int   SpeedCount;
int   Speed_Filter_Times=10;    //速度平滑输出
float CarSpeed=0,ControlSpeed=0,AverageSpeed,SetSpeed=0,Distance;
//方向类变量
float DirectionControlOutNew;
float DirectionControlOutOld;
float Turn_Speed=0;
int   DirectionCount;
float Delt_error;
float Turn_Out;
float Turn_Angle_Integral;
//模糊化系数
float  Delta_P;
float  Delta_D;
float  Fuzzy_Kp;
float  Fuzzy_Kd;
//PID控制类变量
PID PID_ANGLE,PID_SPEED,PID_TURN;

float  LeftMotorOut,RightMotorOut;   //电机输出量
float  L_DeadValue=0,R_DeadValue=0;
float  RunTime=0;                    //跑动时间计数
uint8 Protect=1;
uint8 ForceStop=0;
uint8 Encoder_Disable=0;


float Voltage=0;

//
void Get_Attitude()
{
  Acc_Z =Get_Z_Acc(); 
  Gyro_X= Get_X_Gyro();
  
  read_buff[2]= Get_Y_Gyro();
  Gyro_Y=(read_buff[2]*6+read_buff[1]*3+read_buff[0]*1)/10;              
  Voltage=LPLD_ADC_Get(ADC1,AD14);
  Voltage*=Voltage_Ratio; //转换为实际电压
}

//******Kalman滤波******//
//-------------------------------------------------------
static  float Q_angle=0.01, Q_gyro=0.0001, R_angle=10, dt=0.005;
	//Q增大，动态响应增大
static float Pk[2][2] = { {1, 0}, {0, 1 }};
	
static float Pdot[4] ={0,0,0,0};

static float q_bias=0, angle_err, PCt_0, PCt_1, E, K_0, K_1, t_0, t_1;
//-------------------------------------------------------
void Kalman_Filter(float angle_m,float gyro_m)			
{
	Car_Angle+=(gyro_m-q_bias) * dt; ///预测值
	Pdot[0]=Q_angle - Pk[0][1] - Pk[1][0];
	Pdot[1]=- Pk[1][1];
	Pdot[2]=- Pk[1][1];
	Pdot[3]=Q_gyro;
	
	Pk[0][0] += Pdot[0] * dt;
	Pk[0][1] += Pdot[1] * dt;
	Pk[1][0] += Pdot[2] * dt;
	Pk[1][1] += Pdot[3] * dt;
	
	angle_err = angle_m -Car_Angle;///测量值-预测值
	
	PCt_0 =  Pk[0][0];
	PCt_1 =  Pk[1][0];
	
	E = R_angle + PCt_0;
	
	K_0 = PCt_0 / E; ///卡尔曼增益
	K_1 = PCt_1 / E;
	
	t_0 = PCt_0;
	t_1 = Pk[0][1];

	Pk[0][0] -= K_0 * t_0;
	Pk[0][1] -= K_0 * t_1;
	Pk[1][0] -= K_1 * t_0;
	Pk[1][1] -= K_1 * t_1;
	
	Car_Angle+= K_0 * angle_err; ///最优角度=预测值+卡尔曼增益*(测量值-预测值)
	q_bias	+= K_1 * angle_err;
	Angle_Speed = gyro_m-q_bias;
}


//角度计算与滤波
void Angle_Calculate()
{
 float xishu=0.048;
 Angle =(Acc_Z)*180.0/(Acc_Max-Acc_Min); 
 Angle_Speed=(Gyro_Y-Gyro_Y_Offset) * xishu;
 Kalman_Filter(Angle,Angle_Speed);            //调用卡尔曼滤波函数
}

//角度控制函数
void Angle_Control()  
{
  PID_ANGLE.pout=PID_ANGLE.P*Car_Angle;
  PID_ANGLE.dout=PID_ANGLE.D*Angle_Speed;

  PID_ANGLE.OUT= PID_ANGLE.pout+ PID_ANGLE.dout;
}

void Get_Speed()                     //5ms执行一次
{  
  int qd1_result,qd2_result;
  qd1_result = LPLD_FTM_GetCounter(FTM1); 
  qd2_result = LPLD_FTM_GetCounter(FTM2);
  LPLD_FTM_ClearCounter(FTM1);
  LPLD_FTM_ClearCounter(FTM2);
  if(Encoder_Disable==2)  //编码器坏了的备案
  qd1_result=qd2_result;
  if(Encoder_Disable==1)
  qd2_result=qd1_result;
  if(Stop||Starting)
  {
    if(LeftMotorOut>0)qd1_result=-qd1_result;
    if(RightMotorOut>0)qd2_result=-qd2_result;
  }
  Distance+=(qd1_result+qd2_result)/4220.0;  //转化为距离
  CarSpeed=CarSpeed*0.1+0.9*(qd1_result+qd2_result)*200.0/4220.0;    //求出车速转换为M/S
 if(CarSpeed>4)CarSpeed=4;
  ///////////////////////////////////////////////////////////????????????????????????????????????????????????????????????????????????????????????
  if(RoadType!=5)
  { 
    ControlSpeed=ControlSpeed*0.95+CarSpeed*0.05;
  }
}

//速度控制量计算
void Speed_Control(void)
{  
  static float setspeed=0;       
  static float PreError[20]={0};
  float  SpeedError,Speed_temp;
  uint8 i;
  float  SpeedFilterRatio=0.85;     //速度设定值滤波，防止速度控制变化太剧烈
        
  //设定速度滤波


  //速度滤波，防止因为速度变化过大而车身晃动
  Speed_temp=SetSpeed;
  
  if(ABS(Middle_Err)<3&&(RoadTypeSwitch&(1<<4)))Speed_temp=Speed_temp*0.9;
  
   setspeed = Speed_temp*(1-SpeedFilterRatio)+setspeed*SpeedFilterRatio;
  
  if(Starting||Stop)  setspeed=0; //启动的时候把速度置为零
  
   SpeedError=setspeed-ControlSpeed; 
 
   
  //求出最近20个偏差的总和作为积分项
   SpeedControlIntegral=0;
   for(i=0;i<19;i++)
   {
     PreError[i]=PreError[i+1]; 
     SpeedControlIntegral+=PreError[i];
   }
    PreError[19]=SpeedError;
    SpeedControlIntegral+=PreError[19];
   
  
  //速度更新
  SpeedControlOutOld=SpeedControlOutNew;
 
  //防止起步位移
  if(Starting)
  {
    SpeedControlIntegral=-50*Distance;
    SpeedError=0;
  }
  
  SpeedControlOutNew=PID_SPEED.P*SpeedError+PID_SPEED.I*SpeedControlIntegral;   //PI控制
  

  if(RoadType==5)
  {
     SpeedControlOutNew*=Hill_Slow_Ratio;
     
       SpeedControlOutNew= SpeedControlOutOld*0.6+SpeedControlOutNew*0.4;
       SpeedControlOutOld=SpeedControlOutNew;
  } 

  SpeedControlOutNew= SpeedControlOutOld*0.9+SpeedControlOutNew*0.1;
}
//速度控制
void Speed_Control_Output(void) 
{ 
  float fValue; 
  fValue = SpeedControlOutNew - SpeedControlOutOld; 
  PID_SPEED.OUT = fValue * (SpeedCount+1)/Speed_Filter_Times+SpeedControlOutOld;  
}
/********************方向控制量计算***************/
void Direction_Control(void)
{
  float ratio=-0.005;
  static int Calculate_Length=0;
  Turn_Speed=(Gyro_X-Gyro_X_Offset)*ratio;            
  
   
  if(RoadType==0||RoadType==3)  //只有在普通赛道和单线上用模糊
  {
    if(Calculate_Length<12) 
    {  
     Calculate_Length++;
     Delta_P=0;
     Delt_error=0;
     Delta_D=0;
    }
    else
    {
      Delt_error=-10*Slope_Calculate(0,Calculate_Length,Previous_Error);
      Delta_P=Fuzzy( Middle_Err,Delt_error)* Fuzzy_Kp*0.1;
      Delta_D=Fuzzy( Middle_Err,Delt_error)* Fuzzy_Kd*0.1;
    }
  }
  else 
  {
    Delta_P=0;
    Delta_D=0;
    Calculate_Length=0;
  }
  
  PID_TURN.pout=(PID_TURN.P+Delta_P)*Middle_Err;
  PID_TURN.dout=(PID_TURN.D+Delta_D)*Turn_Speed;
  
  if(RoadType==1) PID_TURN.pout= PID_TURN.pout*1.4;
  
  DirectionControlOutOld=DirectionControlOutNew;
  
  Turn_Out=PID_TURN.pout+PID_TURN.dout;
  
  if(RoadType==5&&RoadTypeConfirm)//坡道
  {
   Turn_Out=Turn_Out*0.8;
   if(Turn_Out>0.2)Turn_Out=0.2;
   if(Turn_Out<-0.2)Turn_Out=-0.2;
  }
  
 /* if(Turn_Out>0.4) Turn_Out=0.4;
  if(Turn_Out<-0.4) Turn_Out=-0.4;
    
  if(Turn_Speed>60) 
  {
    if(Turn_Out<-0.1) Turn_Out=-0.1;
  }
  else  if(Turn_Speed>55)
  {
     if(Turn_Out<-0.15) Turn_Out=-0.15;
  }
  else  if(Turn_Speed>50)
  {
     if(Turn_Out<-0.2) Turn_Out=-0.2;
  }
   else  if(Turn_Speed>35)
  {
     if(Turn_Out<-0.3) Turn_Out=-0.3;
  }
  
  if(Turn_Speed<-60)
  {
    if(Turn_Out>0.1) Turn_Out=0.1;
  }
  else  if(Turn_Speed<-55)
  {
     if(Turn_Out>0.15) Turn_Out=0.15;
  }
  else  if(Turn_Speed<-50)
  {
     if(Turn_Out>0.2) Turn_Out=0.2;
  }
   else  if(Turn_Speed<-35)
  {
     if(Turn_Out>0.3) Turn_Out=0.3;
  }

  */
  
 //直角弯强制转向
  if(RoadType==4)                           //5ms执行一次
  {
    if(Strong_Turn_En)
    {
      if(Strong_Turn_Cnt<50)
      {
        Strong_Turn();
        Strong_Turn_Cnt++;
        CCD_Draw_Buff[138]=Strong_Turn_Cnt;
        Turn_Angle_Integral+=Turn_Speed;
        if(ABS(Turn_Angle_Integral)>Strong_Turn_Angle*30)
        Strong_Turn_En=0;
      } 
      else Strong_Turn_En=0;  //强制输出若干个个周期后停止输出 
      if(Turn_Out>0.7)Turn_Out=0.7;
      if(Turn_Out<-0.7)Turn_Out=-0.7;
    } 
    else
    {
      if(Turn_Out>0.15)Turn_Out=0.15;
      if(Turn_Out<-0.15)Turn_Out=-0.15;
      if(Turn_State==1) Turn_Out=0;    //当没有搜到线的时候Turn_Out赋0
    }
  }
  
  
  if(RoadType==2)    //障碍
  {
    
    Turn_Angle_Integral+=Turn_Speed;
    
    if(Turn_State==0)
    {
      if(Right_Or_Left==0)//左障碍
      {
         Turn_Out=-(Barri_Turn_Speed-ABS(Turn_Speed))*0.01;
         if(Turn_Angle_Integral> Barri_Turn_Angle*30) Turn_State=1;
      }
      else
      {
         Turn_Out=(Barri_Turn_Speed-ABS(Turn_Speed))*0.01;
         if(Turn_Angle_Integral<-Barri_Turn_Angle*30) Turn_State=1;
      }
    }
    else
    {
      if(Turn_Out>0.25)Turn_Out=0.25;
      if(Turn_Out<-0.25)Turn_Out=-0.25; 
    }
  }
  
  Turn_Out=Turn_Out_Filter(Turn_Out);         //转动输出滤波 
  
  DirectionControlOutNew=Turn_Out;
}
//直角弯转向
void Strong_Turn()
{
  float Turn_P=0.012,Turn_D=0.02,Pout,Dout;
  static float Last_Turn_Speed=0;  
  if(Strong_Turn_Cnt<=1)
  {
    Last_Turn_Speed=Turn_Speed;
  }
  else
  {
    Dout=(Last_Turn_Speed-Turn_Speed)*Turn_D*Right_Or_Left;
    Pout=(Strong_Turn_Speed-ABS(Turn_Speed))*Turn_P;
    Turn_Out=Pout-Dout;
    Last_Turn_Speed=Turn_Speed;
  }
  Turn_Out=Turn_Out*Right_Or_Left;
}
/*********************方向控制输出********************/
void Direction_Control_Output(void)
{
  float fValue; 
  fValue =DirectionControlOutNew -DirectionControlOutOld; 
  PID_TURN.OUT=fValue * (DirectionCount+1)/5+DirectionControlOutOld;
}

//电机pwm值输出
void Moto_Out() 
{
 int L_Value,R_Value;

 float Sum;
 //调试模式的输出

   PID_SPEED.OUT=0;
   PID_TURN.OUT=0;



 Sum=PID_ANGLE.OUT+PID_SPEED.OUT;
 
 
  Sum=constrain(Sum,-0.9,0.9);
  LeftMotorOut=Sum+PID_TURN.OUT;   //计算输出值
  RightMotorOut=Sum-PID_TURN.OUT; 
  
 //正值限幅，防止减速过大

   
  //if(LeftMotorOut<0)LeftMotorOut-=L_DeadValue;
 // if(RightMotorOut<0)RightMotorOut-=R_DeadValue;
  
  if(RightMotorOut>0.999)RightMotorOut=0.999;                     
  if(RightMotorOut<-0.999)RightMotorOut=-0.999; 
  if(LeftMotorOut>0.999)LeftMotorOut=0.999;                     
  if(LeftMotorOut<-0.999)LeftMotorOut=-0.999; 
  
  L_Value=(int)(10000*LeftMotorOut);
  R_Value=(int)(10000*RightMotorOut);
 

 ////////////////////////////////////////////////
 if(L_Value>=0)
 {
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,3000);
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,0);
 }
 else
 {
   L_Value=-L_Value;
   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,3000);
   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,0);
 }
 
  if(R_Value>=0)
 { 
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,3000);
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
 }
 else
 {
  R_Value=-R_Value;
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,3000);
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
 } 
  //LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,2000);
 
}

float Slope_Calculate(uint8 begin,uint8 end,float *p)    //最小二乘法拟合斜率
{
  float xsum=0,ysum=0,xysum=0,x2sum=0;
   uint8 i=0;
   float result=0;
   static float resultlast;
   p=p+begin;
   for(i=begin;i<end;i++)
   {
	   xsum+=i;
	   ysum+=*p;
	   xysum+=i*(*p);
	   x2sum+=i*i;
	   p=p+1;
   }
  if((end-begin)*x2sum-xsum*xsum) //判断除数是否为零 
  {
    result=((end-begin)*xysum-xsum*ysum)/((end-begin)*x2sum-xsum*xsum);
    resultlast=result;
  }
  else
  {
   result=resultlast;
  }
  return result;
}
float  Turn_Out_Filter(float turn_out)    //转向控制输出滤波      
{
  float Turn_Out_Filtered; 
  static float Pre1_Error[4]; 
  Pre1_Error[3]=Pre1_Error[2];
  Pre1_Error[2]=Pre1_Error[1];
  Pre1_Error[1]=Pre1_Error[0];
  Pre1_Error[0]=turn_out;
  Turn_Out_Filtered=Pre1_Error[0]*0.4+Pre1_Error[1]*0.3+Pre1_Error[2]*0.2+Pre1_Error[3]*0.1;
  return Turn_Out_Filtered;
}
float  Middle_Err_Filter(float middle_err)    //中心偏差滤波      
{
  float Middle_Err_Fltered; 
  static float Pre3_Error[4]; 
  Pre3_Error[3]=Pre3_Error[2];
  Pre3_Error[2]=Pre3_Error[1];
  Pre3_Error[1]=Pre3_Error[0];
  Pre3_Error[0]=middle_err;
  Middle_Err_Fltered=Pre3_Error[0]*0.4+Pre3_Error[1]*0.3+Pre3_Error[2]*0.2+Pre3_Error[3]*0.1;
  return Middle_Err_Fltered;
}