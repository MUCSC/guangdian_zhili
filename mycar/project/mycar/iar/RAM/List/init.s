///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       16/Jul/2016  13:18:55
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\init.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\init.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\
//        -lB
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\
//        -o
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        E:\IAR\anzhuang\arm\INC\c\DLib_Config_Normal.h -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\app\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\CPU\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\common\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\LPLD\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\LPLD\HW\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\FatFs\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\FatFs\option\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\USB\common\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\USB\driver\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\USB\descriptor\
//        -I
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\..\..\..\lib\USB\class\
//        -Ol -I E:\IAR\anzhuang\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\init.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CCD_Offset
        EXTERN Correct_Err
        EXTERN Distance
        EXTERN Fuzzy_Kd
        EXTERN Fuzzy_Kp
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
        EXTERN PID_Speed
        EXTERN PID_Turn
        EXTERN P_CrossRoad
        EXTERN SetSpeed
        EXTERN Threshold
        EXTERN __aeabi_memcpy4
        EXTERN pit_isr

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

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\init.c
//    1 #include "init.h"
//    2 
//    3 
//    4 
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
//   14 
//   15 
//   16 
//   17 /*****
//   18 *** 右编码器初始化
//   19 *****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void Right_Encoder_Init(void)
//   21 {
Right_Encoder_Init:
        PUSH     {R5-R7,LR}
//   22   //配置正交解码功能参数
//   23   ftm_init_struct.FTM_Ftmx = FTM1;              //使用的是FTM1
        LDR.N    R0,??DataTable7  ;; 0x40039000
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   24   ftm_init_struct.FTM_Mode = FTM_MODE_QD;       //正交解码功能
        MOVS     R0,#+4
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+4]
//   25   ftm_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB相输入模式
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+18]
//   26   //初始化FTM
//   27   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable7_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   28   //使能AB相输入通道
//   29   //PTB0引脚接A相输入、PTB1引脚接B相输入
//   30   LPLD_FTM_QD_Enable(FTM1, PTB0, PTB1);
        MOVS     R2,#+33
        MOVS     R1,#+32
        LDR.N    R0,??DataTable7  ;; 0x40039000
        BL       LPLD_FTM_QD_Enable
//   31 }
        POP      {R0-R2,PC}       ;; return
//   32 
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void Motor_Init(void)
//   35 {
Motor_Init:
        PUSH     {R5-R7,LR}
//   36         //电机模块的初始化
//   37     ftm_init_struct.FTM_Ftmx = FTM0;
        LDR.N    R0,??DataTable7_2  ;; 0x40038000
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   38     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+4]
//   39     ftm_init_struct.FTM_PwmFreq = 2500;
        MOVW     R0,#+2500
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+8]
//   40     LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable7_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   41     
//   42 
//   43     LPLD_FTM_PWM_Enable(FTM0, FTM_Ch4, 50, PTD4, ALIGN_LEFT); //pwm3
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+96
        MOVS     R2,#+50
        MOVS     R1,#+4
        LDR.N    R0,??DataTable7_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   44     LPLD_FTM_PWM_Enable(FTM0, FTM_Ch5, 50, PTD5, ALIGN_LEFT); //pwm2
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVS     R2,#+50
        MOVS     R1,#+5
        LDR.N    R0,??DataTable7_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   45     LPLD_FTM_PWM_Enable(FTM0, FTM_Ch6, 50, PTD6, ALIGN_LEFT); //pwm1
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+98
        MOVS     R2,#+50
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   46     LPLD_FTM_PWM_Enable(FTM0, FTM_Ch7, 50, PTD7, ALIGN_LEFT); //pwm0
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+99
        MOVS     R2,#+50
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   47 
//   48 }
        POP      {R0-R2,PC}       ;; return
//   49 
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void Servo_Init(void)
//   52 {
Servo_Init:
        PUSH     {R5-R7,LR}
//   53     ftm_init_struct.FTM_Ftmx = FTM2;
        LDR.N    R0,??DataTable7_3  ;; 0x400b8000
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   54     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+4]
//   55     ftm_init_struct.FTM_PwmFreq = 50;   //设置频率为50Hz
        MOVS     R0,#+50
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+8]
//   56     LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable7_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   57      
//   58     LPLD_FTM_PWM_Enable(FTM2, FTM_Ch1, 740,PTB19, ALIGN_LEFT);   
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+51
        MOV      R2,#+740
        MOVS     R1,#+1
        LDR.N    R0,??DataTable7_3  ;; 0x400b8000
        BL       LPLD_FTM_PWM_Enable
//   59 }
        POP      {R0-R2,PC}       ;; return
//   60 
//   61 
//   62 
//   63 
//   64 
//   65 /*
//   66  * 初始化PIT定时器
//   67  *
//   68  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 void Pit_Init(void)
//   70 {
Pit_Init:
        PUSH     {R7,LR}
//   71   //配置定时周期中断参数
//   72   pit_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_4
        STRB     R0,[R1, #+0]
//   73   pit_init_struct.PIT_PeriodMs = 1;    //1毫秒产生一次中断
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_4
        STR      R0,[R1, #+8]
//   74   pit_init_struct.PIT_Isr = pit_isr;
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_4
        STR      R0,[R1, #+16]
//   75   //初始化PIT
//   76   LPLD_PIT_Init(pit_init_struct);
        LDR.N    R1,??DataTable7_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   77   //使能PIT定时中断
//   78   LPLD_PIT_EnableIrq(pit_init_struct);
        LDR.N    R1,??DataTable7_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   79 }
        POP      {R0,PC}          ;; return
//   80 
//   81 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 void Left_Encoder_Init(void)
//   83 {
Left_Encoder_Init:
        PUSH     {R7,LR}
//   84 
//   85     lptmr_init_struct.LPTMR_Mode = LPTMR_MODE_PLACC;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_6
        STRB     R0,[R1, #+0]
//   86     lptmr_init_struct.LPTMR_PluseAccInput = LPTMR_ALT2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable7_6
        STRB     R0,[R1, #+4]
//   87     
//   88     lptmr_init_struct.LPTMR_IntEnable = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_6
        STRB     R0,[R1, #+5]
//   89     LPLD_LPTMR_Init(lptmr_init_struct); 
        LDR.N    R0,??DataTable7_6
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//   90 
//   91 
//   92 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void Voltage_Adc_init(void)
//   94 {
Voltage_Adc_init:
        PUSH     {R7,LR}
//   95   /*/adc_init_struct.ADC_Adcx = ADC1;
//   96   adc_init_struct.ADC_BitMode = SE_10BIT;
//   97   adc_init_struct.ADC_CalEnable = TRUE; //使能自动校准
//   98   LPLD_ADC_Init(adc_init_struct); 
//   99   
//  100   LPLD_ADC_Chn_Enable(ADC1, AD14);*/
//  101 
//  102   
//  103   adc_init_struct.ADC_Adcx = ADC1;
        LDR.N    R0,??DataTable7_7  ;; 0x400bb000
        LDR.N    R1,??DataTable7_8
        STR      R0,[R1, #+0]
//  104   adc_init_struct.ADC_DiffMode = ADC_SE;        //单端采集
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_8
        STRB     R0,[R1, #+4]
//  105   adc_init_struct.ADC_BitMode = SE_10BIT;       //单端12位精度
        MOVS     R0,#+2
        LDR.N    R1,??DataTable7_8
        STRB     R0,[R1, #+5]
//  106   //adc_init_struct.ADC_SampleTimeCfg = SAMTIME_SHORT;    //短采样时间
//  107   //adc_init_struct.ADC_HwAvgSel = HW_4AVG;       //4次硬件平均
//  108   adc_init_struct.ADC_CalEnable = TRUE; //使能初始化校验
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_8
        STRB     R0,[R1, #+11]
//  109   //初始化ADC
//  110   LPLD_ADC_Init(adc_init_struct);
        LDR.N    R1,??DataTable7_8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//  111 
//  112   LPLD_ADC_Chn_Enable(ADC1, AD14);
        MOVS     R1,#+14
        LDR.N    R0,??DataTable7_7  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  113 
//  114 }
        POP      {R0,PC}          ;; return
//  115 
//  116 /****
//  117 * 参数赋值初始化
//  118 ****/
//  119 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void Para_Init(void)
//  121 {
//  122   PID_Speed.P=0.45;
Para_Init:
        LDR.N    R0,??DataTable7_9  ;; 0x3ee66666
        LDR.N    R1,??DataTable7_10
        STR      R0,[R1, #+0]
//  123   PID_Speed.I=0.0023;
        LDR.N    R0,??DataTable7_11  ;; 0x3b16bb99
        LDR.N    R1,??DataTable7_10
        STR      R0,[R1, #+8]
//  124   PID_Speed.D=0.02;
        LDR.N    R0,??DataTable7_12  ;; 0x3ca3d70a
        LDR.N    R1,??DataTable7_10
        STR      R0,[R1, #+16]
//  125   PID_Turn.P=0.53;
        LDR.N    R0,??DataTable7_13  ;; 0x3f07ae14
        LDR.N    R1,??DataTable7_14
        STR      R0,[R1, #+0]
//  126   PID_Turn.I=0.1;
        LDR.N    R0,??DataTable7_15  ;; 0x3dcccccd
        LDR.N    R1,??DataTable7_14
        STR      R0,[R1, #+8]
//  127   PID_Turn.D=0.7446;
        LDR.N    R0,??DataTable7_16  ;; 0x3f3e9e1b
        LDR.N    R1,??DataTable7_14
        STR      R0,[R1, #+16]
//  128   SetSpeed=3.5;
        LDR.N    R0,??DataTable7_17  ;; 0x40600000
        LDR.N    R1,??DataTable7_18
        STR      R0,[R1, #+0]
//  129   Threshold=30;
        MOVS     R0,#+30
        LDR.N    R1,??DataTable7_19
        STRB     R0,[R1, #+0]
//  130   CCD_Offset=200;
        MOVS     R0,#+200
        LDR.N    R1,??DataTable7_20
        STRB     R0,[R1, #+0]
//  131   Fuzzy_Kp=0.05;
        LDR.N    R0,??DataTable7_21  ;; 0x3d4ccccd
        LDR.N    R1,??DataTable7_22
        STR      R0,[R1, #+0]
//  132   Fuzzy_Kd=0.0002;
        LDR.N    R0,??DataTable7_23  ;; 0x3951b717
        LDR.N    R1,??DataTable7_24
        STR      R0,[R1, #+0]
//  133   Distance=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_25
        STR      R0,[R1, #+0]
//  134   K_CrossRoad=1.4;
        LDR.N    R0,??DataTable7_26  ;; 0x3fb33333
        LDR.N    R1,??DataTable7_27
        STR      R0,[R1, #+0]
//  135   P_CrossRoad=1.2;
        LDR.N    R0,??DataTable7_28  ;; 0x3f99999a
        LDR.N    R1,??DataTable7_29
        STR      R0,[R1, #+0]
//  136   Correct_Err=0.026; 
        LDR.N    R0,??DataTable7_30  ;; 0x3cd4fdf4
        LDR.N    R1,??DataTable7_31
        STR      R0,[R1, #+0]
//  137 }
        BX       LR               ;; return
//  138 
//  139 
//  140 /****
//  141 * GPIO初始化函数
//  142 ****/
//  143 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  144 void GPIO_Init(void)
//  145 {
GPIO_Init:
        PUSH     {R7,LR}
//  146     //初始化按键B1-B6
//  147     gpio_init_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable7_32  ;; 0x400ff000
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+0]
//  148     gpio_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+12]
//  149     gpio_init_struct.GPIO_Pins = GPIO_Pin9|GPIO_Pin10|GPIO_Pin11|GPIO_Pin12|GPIO_Pin13|GPIO_Pin14;
        MOV      R0,#+32256
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+4]
//  150     gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+8]
//  151     LPLD_GPIO_Init(gpio_init_struct); 
        LDR.N    R1,??DataTable7_33
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  152 
//  153     //初始化拨码开关
//  154     gpio_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable7_34  ;; 0x400ff040
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+0]
//  155     gpio_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+12]
//  156     gpio_init_struct.GPIO_Pins = GPIO_Pin2|GPIO_Pin3|GPIO_Pin4|GPIO_Pin5;
        MOVS     R0,#+60
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+4]
//  157     gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+8]
//  158     LPLD_GPIO_Init(gpio_init_struct); 
        LDR.N    R1,??DataTable7_33
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  159 
//  160     
//  161     //初始化LED
//  162     gpio_init_struct.GPIO_PTx = PTE;
        LDR.N    R0,??DataTable7_35  ;; 0x400ff100
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+0]
//  163     gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+12]
//  164     gpio_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+13]
//  165     gpio_init_struct.GPIO_Pins = GPIO_Pin10|GPIO_Pin11|GPIO_Pin12;
        MOV      R0,#+7168
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+4]
//  166     gpio_init_struct.GPIO_PinControl =  OUTPUT_DSH;
        MOVS     R0,#+64
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+8]
//  167     LPLD_GPIO_Init(gpio_init_struct);
        LDR.N    R1,??DataTable7_33
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  168 
//  169     
//  170     
//  171     
//  172     //初始化OLED屏幕
//  173     gpio_init_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable7_32  ;; 0x400ff000
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+0]
//  174     gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+12]
//  175     gpio_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+13]
//  176     gpio_init_struct.GPIO_Pins = GPIO_Pin16 | GPIO_Pin17 | GPIO_Pin24 | GPIO_Pin25;
        LDR.N    R0,??DataTable7_36  ;; 0x3030000
        LDR.N    R1,??DataTable7_33
        STR      R0,[R1, #+4]
//  177 
//  178     LPLD_GPIO_Init(gpio_init_struct); 
        LDR.N    R1,??DataTable7_33
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  179 
//  180     /*
//  181     //远程控制GND管脚
//  182     gpio_init_struct.GPIO_PTx = PTB;
//  183     gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
//  184     gpio_init_struct.GPIO_Output = OUTPUT_L;
//  185     gpio_init_struct.GPIO_Pins = GPIO_Pin11;
//  186     LPLD_GPIO_Init(gpio_init_struct);  
//  187     
//  188     
//  189     //远程控制D0、D1管脚
//  190     gpio_init_struct.GPIO_PTx = PTB;
//  191     gpio_init_struct.GPIO_Dir = DIR_INPUT;
//  192     gpio_init_struct.GPIO_Pins = GPIO_Pin16|GPIO_Pin17;
//  193     LPLD_GPIO_Init(gpio_init_struct); */
//  194 
//  195 
//  196 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     pit_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     lptmr_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     adc_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x3ee66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     PID_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x3b16bb99

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     0x3ca3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     0x3f07ae14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     PID_Turn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     0x3f3e9e1b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     0x40600000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     SetSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     Threshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     CCD_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     0x3d4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_22:
        DC32     Fuzzy_Kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_23:
        DC32     0x3951b717

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_24:
        DC32     Fuzzy_Kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_25:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_26:
        DC32     0x3fb33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_27:
        DC32     K_CrossRoad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_28:
        DC32     0x3f99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_29:
        DC32     P_CrossRoad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_30:
        DC32     0x3cd4fdf4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_31:
        DC32     Correct_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_32:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_33:
        DC32     gpio_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_34:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_35:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_36:
        DC32     0x3030000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  197 
//  198 
// 
// 128 bytes in section .bss
// 778 bytes in section .text
// 
// 778 bytes of CODE memory
// 128 bytes of DATA memory
//
//Errors: none
//Warnings: none
