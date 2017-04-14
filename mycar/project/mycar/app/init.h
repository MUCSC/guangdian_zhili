#ifndef _DRIVER_H_
#define _DRIVER_H_


void All_Init();
extern float SetSpeed,Distance,K_CrossRoad,Correct_Err,P_CrossRoad;
extern uint8  CCD_Offset;
extern float Fuzzy_Kp,Fuzzy_Kd;
void Right_Encoder_Init(void);
void Pit_Init(void);
extern void pit_isr(void);
extern void gpio_isr(void);
void Motor_Init(void);
void delay(uint16);
void Servo_Init(void);
void Left_Encoder_Init(void);
void Para_Init(void);
void GPIO_Init(void);
void Voltage_Adc_init(void);

#endif