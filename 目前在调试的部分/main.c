/*!
 *     COPYRIGHT NOTICE
 *     Copyright (c) 2013,山外科技
 *     All rights reserved.
 *     技术讨论：山外论坛 http://www.vcan123.com
 *
 *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
 *     修改内容时必须保留山外科技的版权声明。
 *
 * @file       main.c
 * @brief      山外K60 平台主程序
 * @author     山外科技
 * @version    v5.2
 * @date       2014-11-03
 */
#include "include.h"
FTM_InitTypeDef ftm_init_struct;
PIT_InitTypeDef pit_init_struct;
GPIO_InitTypeDef gpio_init_struct;
ADC_InitTypeDef  adc_init_struct;
LPTMR_InitTypeDef lptmr_init_struct;
UART_InitTypeDef uart_init_struct;

void pit_isr(void);
/*!
 *  @brief      main函数
 *  @since      v5.2
 *  @note       FTM PWM 电机驱动测试
 */
void main(void)
{
    uint8 i = 0;
    printf("\n*****FTM PWM 电机测试*****\n");
    
 PID_ANGLE.P=0.10;
 PID_ANGLE.D=0.01;
 PID_SPEED.P=1.5;
 PID_SPEED.I=0.05;
 PID_TURN.P=0.01;
 PID_TURN.D=0.005; 
 Fuzzy_Kp=0.005;
 Fuzzy_Kd=0.0005;
 SetSpeed=3.8;
 Set_Angle=50;
 Acc_Offset=230;
 Hill_Slow_Ratio=0.6;

    
    ftm_init_struct.FTM_Ftmx = FTM0;
    ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
    ftm_init_struct.FTM_PwmFreq = 2500;
    LPLD_FTM_Init(ftm_init_struct);
    
    
    LPLD_FTM_PWM_Enable(FTM0, FTM_Ch4, 50, PTD4, ALIGN_LEFT); //pwm3
    LPLD_FTM_PWM_Enable(FTM0, FTM_Ch5, 50, PTD5, ALIGN_LEFT); //pwm2
    LPLD_FTM_PWM_Enable(FTM0, FTM_Ch6, 50, PTD6, ALIGN_LEFT); //pwm1
    LPLD_FTM_PWM_Enable(FTM0, FTM_Ch7, 50, PTD7, ALIGN_LEFT); //pwm0
    
    I2C_Init();
        //配置定时周期中断参数
    pit_init_struct.PIT_Pitx = PIT0;
    pit_init_struct.PIT_PeriodMs = 1;    //1毫秒产生一次中断
    pit_init_struct.PIT_Isr = pit_isr;
    //初始化PIT
    LPLD_PIT_Init(pit_init_struct);
    //使能PIT定时中断
    LPLD_PIT_EnableIrq(pit_init_struct);
    
    adc_init_struct.ADC_Adcx = ADC1;
    adc_init_struct.ADC_BitMode = SE_10BIT;
    adc_init_struct.ADC_CalEnable = TRUE; //使能自动校准
    LPLD_ADC_Init(adc_init_struct); 
    
    LPLD_ADC_Chn_Enable(ADC1, AD14);
  
    

    //ftm_pwm_init(FTM0, FTM_CH3,10*1000,80);         //初始化 FTM PWM ，使用 FTM0_CH3，频率为10k ，占空比为 100 / FTM0_PRECISON
                                                    // FTM0_PRECISON 配置 为 100 ，即占空比 为 100%
                                                    // port_cfg.h 里 配置 FTM0_CH3 对应为 PTA6
    
    
    
 /*   gpio_init_struct.GPIO_PTx = PTD;
    gpio_init_struct.GPIO_Dir = DIR_INPUT;
    gpio_init_struct.GPIO_Pins = GPIO_Pin0;
    gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
    LPLD_GPIO_Init(gpio_init_struct); */
    
    //gpio_init(PTD15,GPO,0);                         // 使能端 输入为 0

    //山外的电机驱动模块，经过 MOS 管 反相隔离。
    //K60 输出 PWM 为 100% ，实际接入 电机驱动就是 0%
    //K60 输出 使能端 为 低电平，实际接入 电机驱动 使能端就是 高电平

    while(1)
    {
        /*for(i= 0;i<=100;i+=10)
        {
            LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,5000);
            //LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch6,i);
           // LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,i);
           // LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,i);
            //ftm_pwm_duty(FTM0,FTM_CH3,i);       //改变 占空比 ，K60 输出 PWM 占空比 逐渐增大，电机逐渐 降速
            delay200ns();
            LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,5000);
            delay200ns();
        }*/
      //Moto_Out();
      
    }
}


void pit_isr(void)
{
  static uint8 part=0;
  
  //LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,2000);
  part+=1;
  
  switch(part)
  {
    case 1:
      
      Get_Attitude(); 
      Angle_Calculate();
      Angle_Control();
      //Get_Speed();//速度获取
      
    /*  if(SpeedCount>=10)  //10ms做一次速度控制
      {
       
        Speed_Control();//速度控制
        SpeedCount=0;
      }*/
      
      
      //Voltage=LPLD_ADC_Get(ADC1,AD14)*0.002232;
      break;
      
   
    case 2: 
      break;
    case 3:
      read_buff[0]= Get_Y_Gyro();
      break;
    case 4://道路识别
      break;
    case 5:
      part=0;
      read_buff[1]=0;
      read_buff[1]= Get_Y_Gyro();
      break;
      
    default:
      break;
    
  
  
  }
  //Speed_Control_Output();//每ms更新速度输出量
  //Direction_Control_Output();//每ms更新方向输出量
  
  Moto_Out();
 
  

  
  
}
