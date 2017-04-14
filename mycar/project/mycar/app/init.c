#include "include.h"
void Para_Init();
void GPIO_Init();
void Fix_Offset();
//��������
FTM_InitTypeDef ftm_init_struct;
PIT_InitTypeDef pit_init_struct;
GPIO_InitTypeDef gpio_init_struct;
ADC_InitTypeDef  adc_init_struct;
LPTMR_InitTypeDef lptmr_init_struct;
UART_InitTypeDef uart_init_struct;


void All_Init()
{   
  Right_Encoder_Init();
  Motor_Init();
  Servo_Init();
  Pit_Init();
  Left_Encoder_Init();
  Voltage_Adc_init();
  Para_Init();
  GPIO_Init();
  Fix_Offset();

}

void Right_Encoder_Init(void)
{
  //�����������빦�ܲ���
  ftm_init_struct.FTM_Ftmx = FTM1;              //ʹ�õ���FTM1
  ftm_init_struct.FTM_Mode = FTM_MODE_QD;       //�������빦��
  ftm_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB������ģʽ
  //��ʼ��FTM
  LPLD_FTM_Init(ftm_init_struct);
  //ʹ��AB������ͨ��
  //PTB0���Ž�A�����롢PTB1���Ž�B������
  LPLD_FTM_QD_Enable(FTM1, PTB0, PTB1);
}


void Motor_Init(void)
{
        //���ģ��ĳ�ʼ��
    ftm_init_struct.FTM_Ftmx = FTM0;
    ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
    ftm_init_struct.FTM_PwmFreq = 2500;
    LPLD_FTM_Init(ftm_init_struct);
    

    LPLD_FTM_PWM_Enable(FTM0, FTM_Ch4, 50, PTD4, ALIGN_LEFT); //pwm3
    LPLD_FTM_PWM_Enable(FTM0, FTM_Ch5, 50, PTD5, ALIGN_LEFT); //pwm2
    LPLD_FTM_PWM_Enable(FTM0, FTM_Ch6, 50, PTD6, ALIGN_LEFT); //pwm1
    LPLD_FTM_PWM_Enable(FTM0, FTM_Ch7, 50, PTD7, ALIGN_LEFT); //pwm0

}


void Servo_Init(void)
{
    ftm_init_struct.FTM_Ftmx = FTM2;
    ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
    ftm_init_struct.FTM_PwmFreq = 50;   //����Ƶ��Ϊ50Hz
    LPLD_FTM_Init(ftm_init_struct);
     
    LPLD_FTM_PWM_Enable(FTM2, FTM_Ch1, 660,PTB19, ALIGN_LEFT);   
}





/*
 * ��ʼ��PIT��ʱ��
 *
 */
void Pit_Init(void)
{
  //���ö�ʱ�����жϲ���
  pit_init_struct.PIT_Pitx = PIT0;
  pit_init_struct.PIT_PeriodMs = 1;    //1�������һ���ж�
  pit_init_struct.PIT_Isr = pit_isr;
  //��ʼ��PIT
  LPLD_PIT_Init(pit_init_struct);
  //ʹ��PIT��ʱ�ж�
  LPLD_PIT_EnableIrq(pit_init_struct);
}


void Left_Encoder_Init(void)
{

    lptmr_init_struct.LPTMR_Mode = LPTMR_MODE_PLACC;
    lptmr_init_struct.LPTMR_PluseAccInput = LPTMR_ALT2;
    
    lptmr_init_struct.LPTMR_IntEnable = FALSE;
    LPLD_LPTMR_Init(lptmr_init_struct); 


}
void Voltage_Adc_init(void)
{
  adc_init_struct.ADC_Adcx = ADC1;
  adc_init_struct.ADC_BitMode = SE_10BIT;
  adc_init_struct.ADC_CalEnable = TRUE; //ʹ���Զ�У׼
  LPLD_ADC_Init(adc_init_struct); 
  
  LPLD_ADC_Chn_Enable(ADC1, AD14);



}

/****
* ������ֵ��ʼ��
****/

void Para_Init(void)
{
  PID_SPEED.P=0.45;
  PID_SPEED.I=0.0023;
  PID_SPEED.D=0.02;
  PID_TURN.P=0.53;
  PID_TURN.I=0.1;
  PID_TURN.D=0.7446;
  SetSpeed=3.5;
  Threshold=35;
  CCD_Offset=200;
  Fuzzy_Kp=0.05;
  Fuzzy_Kd=0.0002;
  Distance=0;
  K_CrossRoad=1.4;
  P_CrossRoad=1.2;
  Correct_Err=0.026; 
}


/****
* GPIO��ʼ������
****/

void GPIO_Init(void)
{
    //��ʼ������B1-B6
    gpio_init_struct.GPIO_PTx = PTA;
    gpio_init_struct.GPIO_Dir = DIR_INPUT;
    gpio_init_struct.GPIO_Pins = GPIO_Pin9|GPIO_Pin10|GPIO_Pin11|GPIO_Pin12|GPIO_Pin13|GPIO_Pin14;
    gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
    LPLD_GPIO_Init(gpio_init_struct); 

    //��ʼ�����뿪��
    gpio_init_struct.GPIO_PTx = PTB;
    gpio_init_struct.GPIO_Dir = DIR_INPUT;
    gpio_init_struct.GPIO_Pins = GPIO_Pin2|GPIO_Pin3|GPIO_Pin4|GPIO_Pin5;
    gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
    LPLD_GPIO_Init(gpio_init_struct); 

    
    //��ʼ��LED
    gpio_init_struct.GPIO_PTx = PTE;
    gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
    gpio_init_struct.GPIO_Output = OUTPUT_H;
    gpio_init_struct.GPIO_Pins = GPIO_Pin10|GPIO_Pin11|GPIO_Pin12;
    gpio_init_struct.GPIO_PinControl =  OUTPUT_DSH;
    LPLD_GPIO_Init(gpio_init_struct);

    
    
    
    //��ʼ��OLED��Ļ
    gpio_init_struct.GPIO_PTx = PTA;
    gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
    gpio_init_struct.GPIO_Output = OUTPUT_H;
    gpio_init_struct.GPIO_Pins = GPIO_Pin16 | GPIO_Pin17 | GPIO_Pin24 | GPIO_Pin25;

    LPLD_GPIO_Init(gpio_init_struct); 




}
//����������ƫ��
void Fix_Offset()
{
  int Offset_X_Sum=0,Offset_Y_Sum=0;  //ƫ���ۻ�
  int i; 
 // LED_GREEN_ON; 
 // LED_RED_ON;
  //LED_BLUE_ON;
  DELAY_MS(1000); 
  for(i=0;i<20;i++)
  {
   Offset_X_Sum+= Get_X_Gyro();
   DELAY_MS(5); 
   Offset_Y_Sum+= Get_Y_Gyro();
   DELAY_MS(5);
  } 
  Gyro_X_Offset=(int)(Offset_X_Sum/20.0);
  Gyro_Y_Offset=(int)(Offset_Y_Sum/20.0);
}
