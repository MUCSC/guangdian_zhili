///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       16/Jul/2016  13:18:55
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\mycar.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\mycar.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\mycar.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CCD_Capture
        EXTERN CCD_Draw_Buff
        EXTERN CCD_Normalization
        EXTERN CarSpeed
        EXTERN DebugData_Init
        EXTERN Delt_error
        EXTERN Delta_D
        EXTERN Delta_P
        EXTERN DirectionCount
        EXTERN Direction_Control
        EXTERN Direction_Control_Output
        EXTERN Distance
        EXTERN GPIO_Init
        EXTERN Get_Speed
        EXTERN If_Button_Press
        EXTERN LPLD_ADC_Get
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Input_b
        EXTERN LPLD_UART_PutChar
        EXTERN Left_Encoder_Init
        EXTERN Middle_Err
        EXTERN Motor_Init
        EXTERN Motor_Output
        EXTERN OLED_Draw_UI
        EXTERN OLED_Init
        EXTERN PID_Speed
        EXTERN PID_Turn
        EXTERN Para_Init
        EXTERN Pit_Init
        EXTERN Right_Encoder_Init
        EXTERN RoadType_Distinguish
        EXTERN Servo_Init
        EXTERN SpeedCount
        EXTERN Speed_Control
        EXTERN Speed_Control_Output
        EXTERN Voltage
        EXTERN Voltage_Adc_init
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_i2d
        EXTERN __aeabi_ui2f
        EXTERN ccd_init
        EXTERN qd1_result
        EXTERN qd2_result

        PUBLIC CCD_flag
        PUBLIC SERVO_PI
        PUBLIC Send_Begin
        PUBLIC Send_CCD
        PUBLIC Send_Variable
        PUBLIC Variable
        PUBLIC lptmr_result
        PUBLIC main
        PUBLIC pit_isr
        PUBLIC qd_result
        PUBLIC reserve
        PUBLIC servo_angle_control
        PUBLIC u

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\mycar.c
//    1 /**
//    2  * --------------基于"拉普兰德K60底层库V3"的工程（mycar）-----------------
//    3  * @file mycar.c
//    4  * @version 0.0
//    5  * @date 2013-9-29
//    6  * @brief 关于该工程的描述
//    7  *
//    8  * 版权所有:北京拉普兰德电子技术有限公司
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * 本工程基于"拉普兰德K60底层库V3"开发，
//   14  * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
//   15  * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
//   16  * 底层库使用方法见相关文档。 
//   17  *
//   18  */
//   19 #include "mycar.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 float SERVO_PI ;
SERVO_PI:
        DS8 4
//   21 #define ABS(x) ((x>0)?(x):(-x))
//   22 #define START 1
//   23 #define STOP 0
//   24 void pit_isr(void);
//   25 void Send_CCD(void);
//   26 void Send_Begin();
//   27 void Send_Variable();

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   28 uint16 u;
u:
        DS8 2
//   29 
//   30 /****
//   31 ***舵机方向控制
//   32 ****/
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void servo_angle_control( int angle)// 675   
//   35 {
servo_angle_control:
        PUSH     {R7,LR}
//   36   uint16 DutyRation = 0;
        MOVS     R2,#+0
//   37   DutyRation = (uint16)(743 - angle*5.5);
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5  ;; 0x40160000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_1  ;; 0x40873800
        BL       __aeabi_dsub
        BL       __aeabi_d2iz
        MOVS     R2,R0
//   38   if(DutyRation>=815) 
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVW     R0,#+815
        CMP      R2,R0
        BLT.N    ??servo_angle_control_0
//   39   {DutyRation=815;}
        MOVW     R2,#+815
//   40   if(DutyRation<=675)
??servo_angle_control_0:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+676
        BGE.N    ??servo_angle_control_1
//   41   { DutyRation=675;}
        MOVW     R2,#+675
//   42     
//   43   LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch1, DutyRation);  //舵机角度控制
??servo_angle_control_1:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+1
        LDR.N    R0,??DataTable5_2  ;; 0x400b8000
        BL       LPLD_FTM_PWM_ChangeDuty
//   44 }
        POP      {R0,PC}          ;; return
//   45 
//   46 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 float qd_result=0;
qd_result:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   48 uint16 lptmr_result = 0;
lptmr_result:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   49 uint8 CCD_flag=0;
CCD_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 float reserve=0;
reserve:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   51 float *Variable[20]={&Delta_P,&Delta_D,&reserve,&Middle_Err,&Delt_error,&reserve,&CarSpeed,&qd1_result,&qd2_result,
Variable:
        DATA
        DC32 Delta_P, Delta_D, reserve, Middle_Err, Delt_error, reserve
        DC32 CarSpeed, qd1_result, qd2_result, PID_Speed + 18H, PID_Turn + 18H
        DC32 reserve, reserve, reserve, Distance, reserve, reserve, reserve
        DC32 reserve, reserve
//   52                       &PID_Speed.OUT,&PID_Turn.OUT,&reserve,&reserve,&reserve,&Distance,&reserve,&reserve,&reserve,&reserve,&reserve};
//   53 
//   54 
//   55 
//   56 
//   57 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void main (void)
//   59 {
main:
        PUSH     {R7,LR}
//   60 
//   61 
//   62   Right_Encoder_Init();
        BL       Right_Encoder_Init
//   63   Left_Encoder_Init();
        BL       Left_Encoder_Init
//   64   GPIO_Init();
        BL       GPIO_Init
//   65   Motor_Init();
        BL       Motor_Init
//   66   Servo_Init();
        BL       Servo_Init
//   67   Voltage_Adc_init();
        BL       Voltage_Adc_init
//   68   OLED_Init();
        BL       OLED_Init
//   69   ccd_init();
        BL       ccd_init
//   70   Para_Init();
        BL       Para_Init
//   71   
//   72   DebugData_Init();
        BL       DebugData_Init
//   73   Pit_Init();
        BL       Pit_Init
//   74 
//   75  
//   76 
//   77    
//   78 
//   79   while(1)
//   80   {
//   81 
//   82       
//   83       if(SW_In1==0)
??main_0:
        MOVS     R1,#+5
        LDR.N    R0,??DataTable5_3  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??main_1
//   84       {
//   85         If_Button_Press();
        BL       If_Button_Press
//   86         OLED_Draw_UI();
        BL       OLED_Draw_UI
//   87       
//   88      }
//   89 
//   90       Send_Begin();
??main_1:
        BL       Send_Begin
//   91       Send_CCD();
        BL       Send_CCD
//   92       Send_Variable();
        BL       Send_Variable
        B.N      ??main_0
//   93 
//   94   } 
//   95 
//   96 }
//   97 
//   98 
//   99 
//  100 
//  101 
//  102 /*
//  103  * PIT中断函数
//  104  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 void pit_isr(void)
//  106 {
pit_isr:
        PUSH     {R7,LR}
//  107   static uint8 part=0;
//  108   
//  109   
//  110   part+=1;
        LDR.N    R0,??DataTable5_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_4
        STRB     R0,[R1, #+0]
//  111   SpeedCount+=1;
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_5
        STR      R0,[R1, #+0]
//  112   DirectionCount+=1;
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+0]
//  113   
//  114   switch(part)
        LDR.N    R0,??DataTable5_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??pit_isr_0
        BCC.N    ??pit_isr_1
        CMP      R0,#+3
        BEQ.N    ??pit_isr_2
        BCC.N    ??pit_isr_3
        CMP      R0,#+5
        BEQ.N    ??pit_isr_4
        BCC.N    ??pit_isr_5
        B.N      ??pit_isr_1
//  115   {
//  116     case 1:
//  117       Get_Speed();
??pit_isr_0:
        BL       Get_Speed
//  118       
//  119       if(SpeedCount>=10) 
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??pit_isr_6
//  120       {
//  121        
//  122         Speed_Control();
        BL       Speed_Control
//  123         SpeedCount=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STR      R0,[R1, #+0]
//  124       }
//  125       
//  126       u=LPLD_ADC_Get(ADC1,AD14);
??pit_isr_6:
        MOVS     R1,#+14
        LDR.N    R0,??DataTable5_7  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable5_8
        STRH     R0,[R1, #+0]
//  127       Voltage=LPLD_ADC_Get(ADC1,AD14);
        MOVS     R1,#+14
        LDR.N    R0,??DataTable5_7  ;; 0x400bb000
        BL       LPLD_ADC_Get
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  128       break;
        B.N      ??pit_isr_7
//  129       
//  130    
//  131     case 2: 
//  132       //CCD采集
//  133       CCD_Capture();
??pit_isr_3:
        BL       CCD_Capture
//  134 
//  135       break;
        B.N      ??pit_isr_7
//  136     case 3:
//  137       CCD_Normalization();//归一化程序
??pit_isr_2:
        BL       CCD_Normalization
//  138       
//  139       break;
        B.N      ??pit_isr_7
//  140     case 4://道路识别
//  141       RoadType_Distinguish();
??pit_isr_5:
        BL       RoadType_Distinguish
//  142       Direction_Control();
        BL       Direction_Control
//  143       DirectionCount=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+0]
//  144 
//  145       break;
        B.N      ??pit_isr_7
//  146     case 5:
//  147 
//  148       part=0;
??pit_isr_4:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_4
        STRB     R0,[R1, #+0]
//  149       break;
        B.N      ??pit_isr_7
//  150       
//  151     default:
//  152       break;
//  153     
//  154   
//  155   
//  156   }
//  157   Speed_Control_Output();//每ms更新速度输出量
??pit_isr_1:
??pit_isr_7:
        BL       Speed_Control_Output
//  158   Direction_Control_Output();//每ms更新方向输出量
        BL       Direction_Control_Output
//  159   Motor_Output();
        BL       Motor_Output
//  160 
//  161   servo_angle_control(0-PID_Turn.OUT);
        LDR.N    R0,??DataTable5_10
        LDR      R0,[R0, #+24]
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2iz
        BL       servo_angle_control
//  162  
//  163   
//  164 
//  165   
//  166   
//  167 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??part:
        DS8 1
//  168 
//  169 
//  170 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 void Send_CCD(void) 
//  172 {
Send_CCD:
        PUSH     {R3-R5,LR}
//  173   uint8 i,num=136;
        MOVS     R5,#+136
//  174   
//  175    //通过串口发送一个字节的数据，下同
//  176   LPLD_UART_PutChar(UART4,0x55);
        MOVS     R1,#+85
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  177 
//  178   LPLD_UART_PutChar(UART4,0xaa);
        MVNS     R1,#+85
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  179 
//  180   LPLD_UART_PutChar(UART4,0xaf);
        MVNS     R1,#+80
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  181 
//  182   LPLD_UART_PutChar(UART4,num);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  183   for(i=0;i<num;i++)              //CCD
        MOVS     R4,#+0
        B.N      ??Send_CCD_0
//  184   {
//  185    
//  186    LPLD_UART_PutChar(UART4,CCD_Draw_Buff[i]);
??Send_CCD_1:
        LDR.N    R0,??DataTable5_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R1,[R4, R0]
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  187   }
        ADDS     R4,R4,#+1
??Send_CCD_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCC.N    ??Send_CCD_1
//  188   //帧尾，必须发送
//  189   LPLD_UART_PutChar(UART4,0x0f);
        MOVS     R1,#+15
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  190 }
        POP      {R0,R4,R5,PC}    ;; return
//  191 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  192 void Send_Begin()
//  193 {
Send_Begin:
        PUSH     {R7,LR}
//  194   LPLD_UART_PutChar(UART4,0x55);
        MOVS     R1,#+85
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  195   LPLD_UART_PutChar(UART4,0xaa);
        MVNS     R1,#+85
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  196   LPLD_UART_PutChar(UART4,0xae);
        MVNS     R1,#+81
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  197 
//  198 
//  199 }
        POP      {R0,PC}          ;; return
//  200 
//  201 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 void Send_Variable()     //发送实时数据
//  203 {
Send_Variable:
        PUSH     {R3-R5,LR}
//  204   uint8 i=0,ch=0;
        MOVS     R4,#+0
        MOVS     R1,#+0
//  205   float temp=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  206   uint8 Variable_num=16;
        MOVS     R5,#+16
//  207 
//  208   
//  209   LPLD_UART_PutChar(UART4,0x55);
        MOVS     R1,#+85
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  210   LPLD_UART_PutChar(UART4,0xaa);
        MVNS     R1,#+85
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  211   LPLD_UART_PutChar(UART4,0xad);
        MVNS     R1,#+82
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  212   LPLD_UART_PutChar(UART4,Variable_num);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  213  for(i=0;i<Variable_num;i++)
        MOVS     R4,#+0
        B.N      ??Send_Variable_0
//  214   {
//  215     temp=*Variable[i];
??Send_Variable_1:
        LDR.N    R0,??DataTable5_13
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
//  216     ch=BYTE0(temp);
        LDRB     R1,[SP, #+0]
//  217 
//  218      LPLD_UART_PutChar(UART4,ch);     
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  219     ch=BYTE1(temp);
        LDRB     R1,[SP, #+1]
//  220 
//  221      LPLD_UART_PutChar(UART4,ch);  
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  222     ch=BYTE2(temp);
        LDRB     R1,[SP, #+2]
//  223 
//  224      LPLD_UART_PutChar(UART4,ch);  
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  225     ch=BYTE3(temp);
        LDRB     R1,[SP, #+3]
//  226 
//  227      LPLD_UART_PutChar(UART4,ch);  
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  228   }
        ADDS     R4,R4,#+1
??Send_Variable_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCC.N    ??Send_Variable_1
//  229 
//  230     LPLD_UART_PutChar(UART4,0x0d);  
        MOVS     R1,#+13
        LDR.N    R0,??DataTable5_11  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  231 } 
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40160000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40873800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     ??part

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     SpeedCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     DirectionCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     u

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     Voltage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     PID_Turn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     CCD_Draw_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     Variable

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
//  18 bytes in section .bss
//  80 bytes in section .data
// 628 bytes in section .text
// 
// 628 bytes of CODE memory
//  98 bytes of DATA memory
//
//Errors: none
//Warnings: 1
