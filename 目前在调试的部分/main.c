/*!
 *     COPYRIGHT NOTICE
 *     Copyright (c) 2013,ɽ��Ƽ�
 *     All rights reserved.
 *     �������ۣ�ɽ����̳ http://www.vcan123.com
 *
 *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
 *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
 *
 * @file       main.c
 * @brief      ɽ��K60 ƽ̨������
 * @author     ɽ��Ƽ�
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
 *  @brief      main����
 *  @since      v5.2
 *  @note       FTM PWM �����������
 */
void main(void)
{
    uint8 i = 0;
    printf("\n*****FTM PWM �������*****\n");
    
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
        //���ö�ʱ�����жϲ���
    pit_init_struct.PIT_Pitx = PIT0;
    pit_init_struct.PIT_PeriodMs = 1;    //1�������һ���ж�
    pit_init_struct.PIT_Isr = pit_isr;
    //��ʼ��PIT
    LPLD_PIT_Init(pit_init_struct);
    //ʹ��PIT��ʱ�ж�
    LPLD_PIT_EnableIrq(pit_init_struct);
    
    adc_init_struct.ADC_Adcx = ADC1;
    adc_init_struct.ADC_BitMode = SE_10BIT;
    adc_init_struct.ADC_CalEnable = TRUE; //ʹ���Զ�У׼
    LPLD_ADC_Init(adc_init_struct); 
    
    LPLD_ADC_Chn_Enable(ADC1, AD14);
  
    

    //ftm_pwm_init(FTM0, FTM_CH3,10*1000,80);         //��ʼ�� FTM PWM ��ʹ�� FTM0_CH3��Ƶ��Ϊ10k ��ռ�ձ�Ϊ 100 / FTM0_PRECISON
                                                    // FTM0_PRECISON ���� Ϊ 100 ����ռ�ձ� Ϊ 100%
                                                    // port_cfg.h �� ���� FTM0_CH3 ��ӦΪ PTA6
    
    
    
 /*   gpio_init_struct.GPIO_PTx = PTD;
    gpio_init_struct.GPIO_Dir = DIR_INPUT;
    gpio_init_struct.GPIO_Pins = GPIO_Pin0;
    gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
    LPLD_GPIO_Init(gpio_init_struct); */
    
    //gpio_init(PTD15,GPO,0);                         // ʹ�ܶ� ����Ϊ 0

    //ɽ��ĵ������ģ�飬���� MOS �� ������롣
    //K60 ��� PWM Ϊ 100% ��ʵ�ʽ��� ����������� 0%
    //K60 ��� ʹ�ܶ� Ϊ �͵�ƽ��ʵ�ʽ��� ������� ʹ�ܶ˾��� �ߵ�ƽ

    while(1)
    {
        /*for(i= 0;i<=100;i+=10)
        {
            LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,5000);
            //LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch6,i);
           // LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,i);
           // LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,i);
            //ftm_pwm_duty(FTM0,FTM_CH3,i);       //�ı� ռ�ձ� ��K60 ��� PWM ռ�ձ� �����󣬵���� ����
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
      //Get_Speed();//�ٶȻ�ȡ
      
    /*  if(SpeedCount>=10)  //10ms��һ���ٶȿ���
      {
       
        Speed_Control();//�ٶȿ���
        SpeedCount=0;
      }*/
      
      
      //Voltage=LPLD_ADC_Get(ADC1,AD14)*0.002232;
      break;
      
   
    case 2: 
      break;
    case 3:
      read_buff[0]= Get_Y_Gyro();
      break;
    case 4://��·ʶ��
      break;
    case 5:
      part=0;
      read_buff[1]=0;
      read_buff[1]= Get_Y_Gyro();
      break;
      
    default:
      break;
    
  
  
  }
  //Speed_Control_Output();//ÿms�����ٶ������
  //Direction_Control_Output();//ÿms���·��������
  
  Moto_Out();
 
  

  
  
}
