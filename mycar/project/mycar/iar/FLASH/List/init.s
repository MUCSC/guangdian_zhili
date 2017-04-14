///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       13/Apr/2017  22:11:34
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\init.c
//    Command line =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\init.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\FLASH\List\
//        -lB
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\FLASH\List\
//        -o
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "E:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.2\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\app\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\common\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\..\..\..\lib\USB\class\
//        -Ol -I "E:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.2\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\FLASH\List\init.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CCD_Offset
        EXTERN Correct_Err
        EXTERN DELAY_MS
        EXTERN Distance
        EXTERN Fuzzy_Kd
        EXTERN Fuzzy_Kp
        EXTERN Get_X_Gyro
        EXTERN Get_Y_Gyro
        EXTERN Gyro_X_Offset
        EXTERN Gyro_Y_Offset
        EXTERN K_CrossRoad
        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_FTM_QD_Enable
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_LPTMR_Init
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN PID_SPEED
        EXTERN PID_TURN
        EXTERN P_CrossRoad
        EXTERN SetSpeed
        EXTERN Threshold
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memcpy4
        EXTERN pit_isr

        PUBLIC All_Init
        PUBLIC Fix_Offset
        PUBLIC GPIO_Init
        PUBLIC Left_Encoder_Init
        PUBLIC Motor_Init
        PUBLIC Para_Init
        PUBLIC Pit_Init
        PUBLIC Right_Encoder_Init
        PUBLIC Servo_Init
        PUBLIC Voltage_Adc_init
        PUBLIC adc_init_struct
        PUBLIC ftm_init_struct
        PUBLIC gpio_init_struct
        PUBLIC lptmr_init_struct
        PUBLIC pit_init_struct
        PUBLIC uart_init_struct

// C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\init.c
//    1 #include "include.h"
//    2 void Para_Init();
//    3 void GPIO_Init();
//    4 void Fix_Offset();
//    5 //变量定义

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 FTM_InitTypeDef ftm_init_struct;
ftm_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 PIT_InitTypeDef pit_init_struct;
pit_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 GPIO_InitTypeDef gpio_init_struct;
gpio_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 ADC_InitTypeDef  adc_init_struct;
adc_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 LPTMR_InitTypeDef lptmr_init_struct;
lptmr_init_struct:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 UART_InitTypeDef uart_init_struct;
uart_init_struct:
        DS8 28
//   12 
//   13 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   14 void All_Init()
//   15 {   
All_Init:
        PUSH     {R7,LR}
//   16   Right_Encoder_Init();
        BL       Right_Encoder_Init
//   17   Motor_Init();
        BL       Motor_Init
//   18   Servo_Init();
        BL       Servo_Init
//   19   Pit_Init();
        BL       Pit_Init
//   20   Left_Encoder_Init();
        BL       Left_Encoder_Init
//   21   Voltage_Adc_init();
        BL       Voltage_Adc_init
//   22   Para_Init();
        BL       Para_Init
//   23   GPIO_Init();
        BL       GPIO_Init
//   24   Fix_Offset();
        BL       Fix_Offset
//   25 
//   26 }
        POP      {R0,PC}          ;; return
//   27 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void Right_Encoder_Init(void)
//   29 {
Right_Encoder_Init:
        PUSH     {R5-R7,LR}
//   30   //配置正交解码功能参数
//   31   ftm_init_struct.FTM_Ftmx = FTM1;              //使用的是FTM1
        LDR.N    R0,??DataTable8  ;; 0x40039000
        LDR.N    R1,??DataTable8_1
        STR      R0,[R1, #+0]
//   32   ftm_init_struct.FTM_Mode = FTM_MODE_QD;       //正交解码功能
        MOVS     R0,#+4
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+4]
//   33   ftm_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB相输入模式
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+18]
//   34   //初始化FTM
//   35   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable8_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   36   //使能AB相输入通道
//   37   //PTB0引脚接A相输入、PTB1引脚接B相输入
//   38   LPLD_FTM_QD_Enable(FTM1, PTB0, PTB1);
        MOVS     R2,#+33
        MOVS     R1,#+32
        LDR.N    R0,??DataTable8  ;; 0x40039000
        BL       LPLD_FTM_QD_Enable
//   39 }
        POP      {R0-R2,PC}       ;; return
//   40 
//   41 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   42 void Motor_Init(void)
//   43 {
Motor_Init:
        PUSH     {R5-R7,LR}
//   44         //电机模块的初始化
//   45     ftm_init_struct.FTM_Ftmx = FTM0;
        LDR.N    R0,??DataTable8_2  ;; 0x40038000
        LDR.N    R1,??DataTable8_1
        STR      R0,[R1, #+0]
//   46     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+4]
//   47     ftm_init_struct.FTM_PwmFreq = 2500;
        MOVW     R0,#+2500
        LDR.N    R1,??DataTable8_1
        STR      R0,[R1, #+8]
//   48     LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable8_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   49     
//   50 
//   51     LPLD_FTM_PWM_Enable(FTM0, FTM_Ch4, 50, PTD4, ALIGN_LEFT); //pwm3
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+96
        MOVS     R2,#+50
        MOVS     R1,#+4
        LDR.N    R0,??DataTable8_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   52     LPLD_FTM_PWM_Enable(FTM0, FTM_Ch5, 50, PTD5, ALIGN_LEFT); //pwm2
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVS     R2,#+50
        MOVS     R1,#+5
        LDR.N    R0,??DataTable8_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   53     LPLD_FTM_PWM_Enable(FTM0, FTM_Ch6, 50, PTD6, ALIGN_LEFT); //pwm1
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+98
        MOVS     R2,#+50
        MOVS     R1,#+6
        LDR.N    R0,??DataTable8_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   54     LPLD_FTM_PWM_Enable(FTM0, FTM_Ch7, 50, PTD7, ALIGN_LEFT); //pwm0
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+99
        MOVS     R2,#+50
        MOVS     R1,#+7
        LDR.N    R0,??DataTable8_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   55 
//   56 }
        POP      {R0-R2,PC}       ;; return
//   57 
//   58 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void Servo_Init(void)
//   60 {
Servo_Init:
        PUSH     {R5-R7,LR}
//   61     ftm_init_struct.FTM_Ftmx = FTM2;
        LDR.N    R0,??DataTable8_3  ;; 0x400b8000
        LDR.N    R1,??DataTable8_1
        STR      R0,[R1, #+0]
//   62     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+4]
//   63     ftm_init_struct.FTM_PwmFreq = 50;   //设置频率为50Hz
        MOVS     R0,#+50
        LDR.N    R1,??DataTable8_1
        STR      R0,[R1, #+8]
//   64     LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable8_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   65      
//   66     LPLD_FTM_PWM_Enable(FTM2, FTM_Ch1, 660,PTB19, ALIGN_LEFT);   
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+51
        MOV      R2,#+660
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8_3  ;; 0x400b8000
        BL       LPLD_FTM_PWM_Enable
//   67 }
        POP      {R0-R2,PC}       ;; return
//   68 
//   69 
//   70 
//   71 
//   72 
//   73 /*
//   74  * 初始化PIT定时器
//   75  *
//   76  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void Pit_Init(void)
//   78 {
Pit_Init:
        PUSH     {R7,LR}
//   79   //配置定时周期中断参数
//   80   pit_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_4
        STRB     R0,[R1, #+0]
//   81   pit_init_struct.PIT_PeriodMs = 1;    //1毫秒产生一次中断
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_4
        STR      R0,[R1, #+8]
//   82   pit_init_struct.PIT_Isr = pit_isr;
        LDR.N    R0,??DataTable8_5
        LDR.N    R1,??DataTable8_4
        STR      R0,[R1, #+16]
//   83   //初始化PIT
//   84   LPLD_PIT_Init(pit_init_struct);
        LDR.N    R1,??DataTable8_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   85   //使能PIT定时中断
//   86   LPLD_PIT_EnableIrq(pit_init_struct);
        LDR.N    R1,??DataTable8_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   87 }
        POP      {R0,PC}          ;; return
//   88 
//   89 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void Left_Encoder_Init(void)
//   91 {
Left_Encoder_Init:
        PUSH     {R7,LR}
//   92 
//   93     lptmr_init_struct.LPTMR_Mode = LPTMR_MODE_PLACC;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_6
        STRB     R0,[R1, #+0]
//   94     lptmr_init_struct.LPTMR_PluseAccInput = LPTMR_ALT2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable8_6
        STRB     R0,[R1, #+4]
//   95     
//   96     lptmr_init_struct.LPTMR_IntEnable = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_6
        STRB     R0,[R1, #+5]
//   97     LPLD_LPTMR_Init(lptmr_init_struct); 
        LDR.N    R0,??DataTable8_6
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//   98 
//   99 
//  100 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 void Voltage_Adc_init(void)
//  102 {
Voltage_Adc_init:
        PUSH     {R7,LR}
//  103   adc_init_struct.ADC_Adcx = ADC1;
        LDR.N    R0,??DataTable8_7  ;; 0x400bb000
        LDR.N    R1,??DataTable8_8
        STR      R0,[R1, #+0]
//  104   adc_init_struct.ADC_BitMode = SE_10BIT;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable8_8
        STRB     R0,[R1, #+5]
//  105   adc_init_struct.ADC_CalEnable = TRUE; //使能自动校准
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_8
        STRB     R0,[R1, #+11]
//  106   LPLD_ADC_Init(adc_init_struct); 
        LDR.N    R1,??DataTable8_8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//  107   
//  108   LPLD_ADC_Chn_Enable(ADC1, AD14);
        MOVS     R1,#+14
        LDR.N    R0,??DataTable8_7  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  109 
//  110 
//  111 
//  112 }
        POP      {R0,PC}          ;; return
//  113 
//  114 /****
//  115 * 参数赋值初始化
//  116 ****/
//  117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void Para_Init(void)
//  119 {
//  120   PID_SPEED.P=0.45;
Para_Init:
        LDR.N    R0,??DataTable8_9  ;; 0x3ee66666
        LDR.N    R1,??DataTable8_10
        STR      R0,[R1, #+0]
//  121   PID_SPEED.I=0.0023;
        LDR.N    R0,??DataTable8_11  ;; 0x3b16bb99
        LDR.N    R1,??DataTable8_10
        STR      R0,[R1, #+8]
//  122   PID_SPEED.D=0.02;
        LDR.N    R0,??DataTable8_12  ;; 0x3ca3d70a
        LDR.N    R1,??DataTable8_10
        STR      R0,[R1, #+16]
//  123   PID_TURN.P=0.53;
        LDR.N    R0,??DataTable8_13  ;; 0x3f07ae14
        LDR.N    R1,??DataTable8_14
        STR      R0,[R1, #+0]
//  124   PID_TURN.I=0.1;
        LDR.N    R0,??DataTable8_15  ;; 0x3dcccccd
        LDR.N    R1,??DataTable8_14
        STR      R0,[R1, #+8]
//  125   PID_TURN.D=0.7446;
        LDR.N    R0,??DataTable8_16  ;; 0x3f3e9e1b
        LDR.N    R1,??DataTable8_14
        STR      R0,[R1, #+16]
//  126   SetSpeed=3.5;
        LDR.N    R0,??DataTable8_17  ;; 0x40600000
        LDR.N    R1,??DataTable8_18
        STR      R0,[R1, #+0]
//  127   Threshold=35;
        MOVS     R0,#+35
        LDR.N    R1,??DataTable8_19
        STRB     R0,[R1, #+0]
//  128   CCD_Offset=200;
        MOVS     R0,#+200
        LDR.N    R1,??DataTable8_20
        STRB     R0,[R1, #+0]
//  129   Fuzzy_Kp=0.05;
        LDR.N    R0,??DataTable8_21  ;; 0x3d4ccccd
        LDR.N    R1,??DataTable8_22
        STR      R0,[R1, #+0]
//  130   Fuzzy_Kd=0.0002;
        LDR.N    R0,??DataTable8_23  ;; 0x3951b717
        LDR.N    R1,??DataTable8_24
        STR      R0,[R1, #+0]
//  131   Distance=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_25
        STR      R0,[R1, #+0]
//  132   K_CrossRoad=1.4;
        LDR.N    R0,??DataTable8_26  ;; 0x3fb33333
        LDR.N    R1,??DataTable8_27
        STR      R0,[R1, #+0]
//  133   P_CrossRoad=1.2;
        LDR.N    R0,??DataTable8_28  ;; 0x3f99999a
        LDR.N    R1,??DataTable8_29
        STR      R0,[R1, #+0]
//  134   Correct_Err=0.026; 
        LDR.N    R0,??DataTable8_30  ;; 0x3cd4fdf4
        LDR.N    R1,??DataTable8_31
        STR      R0,[R1, #+0]
//  135 }
        BX       LR               ;; return
//  136 
//  137 
//  138 /****
//  139 * GPIO初始化函数
//  140 ****/
//  141 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 void GPIO_Init(void)
//  143 {
GPIO_Init:
        PUSH     {R7,LR}
//  144     //初始化按键B1-B6
//  145     gpio_init_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable8_32  ;; 0x400ff000
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+0]
//  146     gpio_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_33
        STRB     R0,[R1, #+12]
//  147     gpio_init_struct.GPIO_Pins = GPIO_Pin9|GPIO_Pin10|GPIO_Pin11|GPIO_Pin12|GPIO_Pin13|GPIO_Pin14;
        MOV      R0,#+32256
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+4]
//  148     gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+8]
//  149     LPLD_GPIO_Init(gpio_init_struct); 
        LDR.N    R1,??DataTable8_33
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  150 
//  151     //初始化拨码开关
//  152     gpio_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable8_34  ;; 0x400ff040
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+0]
//  153     gpio_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_33
        STRB     R0,[R1, #+12]
//  154     gpio_init_struct.GPIO_Pins = GPIO_Pin2|GPIO_Pin3|GPIO_Pin4|GPIO_Pin5;
        MOVS     R0,#+60
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+4]
//  155     gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+8]
//  156     LPLD_GPIO_Init(gpio_init_struct); 
        LDR.N    R1,??DataTable8_33
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  157 
//  158     
//  159     //初始化LED
//  160     gpio_init_struct.GPIO_PTx = PTE;
        LDR.N    R0,??DataTable8_35  ;; 0x400ff100
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+0]
//  161     gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_33
        STRB     R0,[R1, #+12]
//  162     gpio_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_33
        STRB     R0,[R1, #+13]
//  163     gpio_init_struct.GPIO_Pins = GPIO_Pin10|GPIO_Pin11|GPIO_Pin12;
        MOV      R0,#+7168
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+4]
//  164     gpio_init_struct.GPIO_PinControl =  OUTPUT_DSH;
        MOVS     R0,#+64
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+8]
//  165     LPLD_GPIO_Init(gpio_init_struct);
        LDR.N    R1,??DataTable8_33
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  166 
//  167     
//  168     
//  169     
//  170     //初始化OLED屏幕
//  171     gpio_init_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable8_32  ;; 0x400ff000
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+0]
//  172     gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_33
        STRB     R0,[R1, #+12]
//  173     gpio_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_33
        STRB     R0,[R1, #+13]
//  174     gpio_init_struct.GPIO_Pins = GPIO_Pin16 | GPIO_Pin17 | GPIO_Pin24 | GPIO_Pin25;
        LDR.N    R0,??DataTable8_36  ;; 0x3030000
        LDR.N    R1,??DataTable8_33
        STR      R0,[R1, #+4]
//  175 
//  176     LPLD_GPIO_Init(gpio_init_struct); 
        LDR.N    R1,??DataTable8_33
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  177 
//  178 
//  179 
//  180 
//  181 }
        POP      {R0,PC}          ;; return
//  182 //修正传感器偏差

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  183 void Fix_Offset()
//  184 {
Fix_Offset:
        PUSH     {R4-R6,LR}
//  185   int Offset_X_Sum=0,Offset_Y_Sum=0;  //偏差累积
        MOVS     R4,#+0
        MOVS     R5,#+0
//  186   int i; 
//  187  // LED_GREEN_ON; 
//  188  // LED_RED_ON;
//  189   //LED_BLUE_ON;
//  190   DELAY_MS(1000); 
        MOV      R0,#+1000
        BL       DELAY_MS
//  191   for(i=0;i<20;i++)
        MOVS     R6,#+0
        B.N      ??Fix_Offset_0
//  192   {
//  193    Offset_X_Sum+= Get_X_Gyro();
??Fix_Offset_1:
        BL       Get_X_Gyro
        SXTAH    R4,R4,R0
//  194    DELAY_MS(5); 
        MOVS     R0,#+5
        BL       DELAY_MS
//  195    Offset_Y_Sum+= Get_Y_Gyro();
        BL       Get_Y_Gyro
        SXTAH    R5,R5,R0
//  196    DELAY_MS(5);
        MOVS     R0,#+5
        BL       DELAY_MS
//  197   } 
        ADDS     R6,R6,#+1
??Fix_Offset_0:
        CMP      R6,#+20
        BLT.N    ??Fix_Offset_1
//  198   Gyro_X_Offset=(int)(Offset_X_Sum/20.0);
        MOVS     R0,R4
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable8_37  ;; 0x40340000
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable8_38
        STRH     R0,[R1, #+0]
//  199   Gyro_Y_Offset=(int)(Offset_Y_Sum/20.0);
        MOVS     R0,R5
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable8_37  ;; 0x40340000
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable8_39
        STRH     R0,[R1, #+0]
//  200 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     pit_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     lptmr_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     adc_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x3ee66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     PID_SPEED

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x3b16bb99

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x3ca3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x3f07ae14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     PID_TURN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     0x3f3e9e1b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x40600000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     SetSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     Threshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     CCD_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     0x3d4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     Fuzzy_Kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     0x3951b717

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     Fuzzy_Kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_26:
        DC32     0x3fb33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_27:
        DC32     K_CrossRoad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_28:
        DC32     0x3f99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_29:
        DC32     P_CrossRoad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_30:
        DC32     0x3cd4fdf4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_31:
        DC32     Correct_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_32:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_33:
        DC32     gpio_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_34:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_35:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_36:
        DC32     0x3030000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_37:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_38:
        DC32     Gyro_X_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_39:
        DC32     Gyro_Y_Offset

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 128 bytes in section .bss
// 922 bytes in section .text
// 
// 922 bytes of CODE memory
// 128 bytes of DATA memory
//
//Errors: none
//Warnings: 1
