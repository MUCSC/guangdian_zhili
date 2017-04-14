///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       15/Jul/2016  15:43:53
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\control.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\control.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_LPTMR_GetPulseAcc
        EXTERN LPLD_LPTMR_ResetCounter
        EXTERN Left_Encoder_Init
        EXTERN Middle_Err
        EXTERN RoadType
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f

        PUBLIC CarSpeed
        PUBLIC ControlSpeed
        PUBLIC Delt_error
        PUBLIC Delta_D
        PUBLIC Delta_P
        PUBLIC Delta_Prederror
        PUBLIC Delta_dError_Range
        PUBLIC DirControlOutNew
        PUBLIC DirControlOutOld
        PUBLIC DirectionCount
        PUBLIC Direction_Control
        PUBLIC Direction_Control_Output
        PUBLIC Distance
        PUBLIC Fuzzy_Kd
        PUBLIC Fuzzy_Kp
        PUBLIC Get_Speed
        PUBLIC K_CrossRoad
        PUBLIC K_Varialbe_Speed
        PUBLIC Motor_Output
        PUBLIC PID_Speed
        PUBLIC PID_Turn
        PUBLIC P_CrossRoad
        PUBLIC Pre_Delta_Error
        PUBLIC Servo_Output
        PUBLIC SetSpeed
        PUBLIC Slope_Calculate
        PUBLIC SpeedControlIntegral
        PUBLIC SpeedControlOutNew
        PUBLIC SpeedControlOutOld
        PUBLIC SpeedCount
        PUBLIC Speed_Control
        PUBLIC Speed_Control_Output
        PUBLIC Speed_Filter_Times
        PUBLIC Turn_Out_Filter
        PUBLIC qd1_result
        PUBLIC qd1_result_old
        PUBLIC qd2_result
        PUBLIC qd2_result_old

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\control.c
//    1 #include "control.h"
//    2 #include "oled.h"
//    3 
//    4 #define ABS(x) ((x>0)?(x):(-x))
//    5 
//    6 //模糊控制

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 float Delta_P,Delta_D;
Delta_P:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Delta_D:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 float Fuzzy_Kp,Fuzzy_Kd;
Fuzzy_Kp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Fuzzy_Kd:
        DS8 4
//    9 //PID

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 PID PID_Speed,PID_Turn;
PID_Speed:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
PID_Turn:
        DS8 28
//   11 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 float Distance=0;//运行的总距离
Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 float CarSpeed=0,SetSpeed=0,ControlSpeed=0;
CarSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
SetSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ControlSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 float SpeedControlIntegral=0;
SpeedControlIntegral:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 float SpeedControlOutNew=0,SpeedControlOutOld=0;
SpeedControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
SpeedControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 float DirControlOutNew=0,DirControlOutOld=0;
DirControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
DirControlOutOld:
        DS8 4
//   17 
//   18 //转向角度

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 float K_CrossRoad=0,P_CrossRoad=0;
K_CrossRoad:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
P_CrossRoad:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 float Delt_error;
Delt_error:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   21 int Speed_Filter_Times=10;//速度平滑控制
Speed_Filter_Times:
        DATA
        DC32 10

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int SpeedCount=0,DirectionCount=0;
SpeedCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
DirectionCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 float qd1_result=0,qd1_result_old=0;
qd1_result:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
qd1_result_old:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 float qd2_result=0,qd2_result_old=0;
qd2_result:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
qd2_result_old:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   25 float Delta_dError_Range[5]={2.2,3.4,4.3,5.4,6.3};
Delta_dError_Range:
        DATA
        DC32 400CCCCDH, 4059999AH, 4089999AH, 40ACCCCDH, 40C9999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 float K_Varialbe_Speed[6]={100,95,90,85,80,75};
K_Varialbe_Speed:
        DATA
        DC32 42C80000H, 42BE0000H, 42B40000H, 42AA0000H, 42A00000H, 42960000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 float Pre_Delta_Error,Delta_Prederror[5]={0};
Pre_Delta_Error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Delta_Prederror:
        DS8 20
//   28 /*****
//   29 **获取速度、获取运行总距离
//   30 *****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void Get_Speed(void)
//   32 {
Get_Speed:
        PUSH     {R4-R6,LR}
//   33   qd1_result_old=qd1_result;
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_1
        STR      R0,[R1, #+0]
//   34   qd2_result_old=qd2_result;  
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_3
        STR      R0,[R1, #+0]
//   35   qd1_result=LPLD_LPTMR_GetPulseAcc()*3.54;//获取左轮速度
        BL       LPLD_LPTMR_GetPulseAcc
        BL       __aeabi_ui2d
        LDR.W    R2,??DataTable8_4  ;; 0x851eb852
        LDR.W    R3,??DataTable8_5  ;; 0x400c51eb
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//   36   ;//获取右轮速度
//   37   if(LPLD_FTM_GetCounter(FTM1)<30000)
        LDR.W    R0,??DataTable8_6  ;; 0x40039000
        BL       LPLD_FTM_GetCounter
        MOVW     R1,#+30000
        CMP      R0,R1
        BGE.N    ??Get_Speed_0
//   38   {
//   39     qd2_result=LPLD_FTM_GetCounter(FTM1);
        LDR.W    R0,??DataTable8_6  ;; 0x40039000
        BL       LPLD_FTM_GetCounter
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable8_2
        STR      R0,[R1, #+0]
        B.N      ??Get_Speed_1
//   40   }
//   41   else
//   42   {  
//   43     qd2_result=LPLD_FTM_GetCounter(FTM1)-65536;
??Get_Speed_0:
        LDR.W    R0,??DataTable8_6  ;; 0x40039000
        BL       LPLD_FTM_GetCounter
        ADD      R0,R0,#-16777216
        ADDS     R0,R0,#+16711680
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable8_2
        STR      R0,[R1, #+0]
//   44   }
//   45   
//   46   qd1_result=0.8*qd1_result_old+0.2*qd1_result;
??Get_Speed_1:
        LDR.W    R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_8  ;; 0x3fe99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_9  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//   47   qd2_result=0.8*qd2_result_old+0.2*qd2_result;  
        LDR.W    R0,??DataTable8_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_8  ;; 0x3fe99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_9  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable8_2
        STR      R0,[R1, #+0]
//   48 
//   49 
//   50   LPLD_FTM_ClearCounter(FTM1);
        LDR.W    R0,??DataTable8_6  ;; 0x40039000
        BL       LPLD_FTM_ClearCounter
//   51   LPLD_LPTMR_ResetCounter();
        BL       LPLD_LPTMR_ResetCounter
//   52   Left_Encoder_Init();
        BL       Left_Encoder_Init
//   53   Distance+=(qd1_result/7+qd2_result/7)/4220;  //转化为距离
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_10  ;; 0x40e00000
        BL       __aeabi_fdiv
        MOVS     R4,R0
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_10  ;; 0x40e00000
        BL       __aeabi_fdiv
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable8_11  ;; 0x4583e000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable8_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable8_12
        STR      R0,[R1, #+0]
//   54   CarSpeed=CarSpeed*0.1+0.9*(qd1_result/7+qd2_result/7)*200.0/4220.0;  //获取车体速度
        LDR.W    R0,??DataTable8_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_14  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_10  ;; 0x40e00000
        BL       __aeabi_fdiv
        MOVS     R6,R0
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_10  ;; 0x40e00000
        BL       __aeabi_fdiv
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_15  ;; 0xcccccccd
        LDR.W    R3,??DataTable8_16  ;; 0x3feccccc
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8_17  ;; 0x40690000
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8_18  ;; 0x40b07c00
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable8_13
        STR      R0,[R1, #+0]
//   55   
//   56   //在不是坡道的情况下
//   57   ControlSpeed=ControlSpeed*0.95+CarSpeed*0.05;
        LDR.W    R0,??DataTable8_19
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable8_20  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable8_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_21  ;; 0x3fa99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable8_19
        STR      R0,[R1, #+0]
//   58   
//   59 }
        POP      {R4-R6,PC}       ;; return
//   60 /******
//   61 **计算速度控制量
//   62 ******/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 void Speed_Control(void)
//   64 {
Speed_Control:
        PUSH     {R4-R6,LR}
//   65   uint8 i=0;
        MOVS     R4,#+0
//   66   static float setspeed=0,D_Err;
//   67   static float PreError[10]={0};
//   68   float Speed_temp=0,SpeedError=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//   69   float SpeedFilterRatio=0.85;
        LDR.W    R6,??DataTable8_22  ;; 0x3f59999a
//   70   
//   71   
//   72   ///////////////////////
//   73 
//   74   for (i=0;i<4;i++)
        MOVS     R4,#+0
        B.N      ??Speed_Control_0
//   75   {
//   76     Delta_Prederror[i]=Delta_Prederror[i+1];
??Speed_Control_1:
        LDR.W    R0,??DataTable8_23
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable8_23
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
//   77   
//   78   }
        ADDS     R4,R4,#+1
??Speed_Control_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??Speed_Control_1
//   79   Delta_Prederror[4]=Pre_Delta_Error-Delt_error;
        LDR.W    R0,??DataTable8_24
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_25
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable8_23
        STR      R0,[R1, #+16]
//   80   
//   81   D_Err=Delta_Prederror[4]*0.5+Delta_Prederror[3]*0.2+Delta_Prederror[2]*0.2+Delta_Prederror[1]*0.1;
        LDR.W    R0,??DataTable8_23
        LDR      R0,[R0, #+16]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8_26  ;; 0x3fe00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable8_23
        LDR      R0,[R0, #+12]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_9  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable8_23
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_9  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable8_23
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_14  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable8_27
        STR      R0,[R1, #+0]
//   82   if(ABS(D_Err)<Delta_dError_Range[0])
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Speed_Control_2
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        B.N      ??Speed_Control_3
??Speed_Control_2:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
??Speed_Control_3:
        LDR.W    R1,??DataTable8_28
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_Control_4
//   83   {
//   84     
//   85     Speed_temp=SetSpeed*K_Varialbe_Speed[0]/100;
        LDR.W    R0,??DataTable8_29
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable8_30
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable8_31  ;; 0x42c80000
        BL       __aeabi_fdiv
        MOVS     R4,R0
        B.N      ??Speed_Control_5
//   86   } 
//   87   else if(ABS(D_Err)<Delta_dError_Range[1])
??Speed_Control_4:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Speed_Control_6
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        B.N      ??Speed_Control_7
??Speed_Control_6:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
??Speed_Control_7:
        LDR.W    R1,??DataTable8_28
        LDR      R1,[R1, #+4]
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_Control_8
//   88   {
//   89   
//   90     Speed_temp=SetSpeed*K_Varialbe_Speed[1]/100;  
        LDR.W    R0,??DataTable8_29
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable8_30
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable8_31  ;; 0x42c80000
        BL       __aeabi_fdiv
        MOVS     R4,R0
        B.N      ??Speed_Control_5
//   91   }
//   92   else if(ABS(D_Err)<Delta_dError_Range[2])
??Speed_Control_8:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Speed_Control_9
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        B.N      ??Speed_Control_10
??Speed_Control_9:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
??Speed_Control_10:
        LDR.W    R1,??DataTable8_28
        LDR      R1,[R1, #+8]
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_Control_11
//   93   {
//   94   
//   95     Speed_temp=SetSpeed*K_Varialbe_Speed[2]/100;  
        LDR.W    R0,??DataTable8_29
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable8_30
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable8_31  ;; 0x42c80000
        BL       __aeabi_fdiv
        MOVS     R4,R0
        B.N      ??Speed_Control_5
//   96   }    
//   97   else if(ABS(D_Err)<Delta_dError_Range[3])
??Speed_Control_11:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Speed_Control_12
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        B.N      ??Speed_Control_13
??Speed_Control_12:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
??Speed_Control_13:
        LDR.W    R1,??DataTable8_28
        LDR      R1,[R1, #+12]
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_Control_14
//   98   {
//   99   
//  100     Speed_temp=SetSpeed*K_Varialbe_Speed[3]/100;  
        LDR.W    R0,??DataTable8_29
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable8_30
        LDR      R0,[R0, #+12]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable8_31  ;; 0x42c80000
        BL       __aeabi_fdiv
        MOVS     R4,R0
        B.N      ??Speed_Control_5
//  101   }    
//  102   else if(ABS(D_Err)<Delta_dError_Range[4])
??Speed_Control_14:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Speed_Control_15
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        B.N      ??Speed_Control_16
??Speed_Control_15:
        LDR.W    R0,??DataTable8_27
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
??Speed_Control_16:
        LDR.W    R1,??DataTable8_28
        LDR      R1,[R1, #+16]
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_Control_17
//  103   {
//  104   
//  105     Speed_temp=SetSpeed*K_Varialbe_Speed[4]/100;  
        LDR.W    R0,??DataTable8_29
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable8_30
        LDR      R0,[R0, #+16]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable8_31  ;; 0x42c80000
        BL       __aeabi_fdiv
        MOVS     R4,R0
        B.N      ??Speed_Control_5
//  106   }
//  107   else
//  108   {
//  109     Speed_temp=SetSpeed*K_Varialbe_Speed[5]/100;    
??Speed_Control_17:
        LDR.W    R0,??DataTable8_29
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable8_30
        LDR      R0,[R0, #+20]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable8_31  ;; 0x42c80000
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  110   
//  111   }
//  112     
//  113     
//  114     
//  115     
//  116     
//  117     
//  118     
//  119   Speed_temp=Speed_temp*1.4;
??Speed_Control_5:
        MOVS     R0,R4
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable8_32  ;; 0x3ff66666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R4,R0
//  120 
//  121   setspeed=Speed_temp*(1-SpeedFilterRatio)+setspeed*SpeedFilterRatio;
        MOVS     R0,#+1065353216
        MOVS     R1,R6
        BL       __aeabi_fsub
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable8_33
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable8_33
        STR      R0,[R1, #+0]
//  122   SpeedError=setspeed-ControlSpeed;
        LDR.W    R0,??DataTable8_33
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R5,R0
//  123   
//  124   //计算最近10个偏差值的和作为积分项
//  125   SpeedControlIntegral=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_34
        STR      R0,[R1, #+0]
//  126   for(i=0;i<9;i++)
        MOVS     R4,#+0
        B.N      ??Speed_Control_18
//  127   {
//  128     PreError[i]=PreError[i+1];
??Speed_Control_19:
        LDR.W    R0,??DataTable8_35
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable8_35
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
//  129     SpeedControlIntegral+=PreError[i];
        LDR.W    R0,??DataTable8_34
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_35
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable8_34
        STR      R0,[R1, #+0]
//  130     
//  131   }
        ADDS     R4,R4,#+1
??Speed_Control_18:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+9
        BLT.N    ??Speed_Control_19
//  132   PreError[9]=SpeedError;
        LDR.W    R0,??DataTable8_35
        STR      R5,[R0, #+36]
//  133   SpeedControlIntegral+=PreError[9];
        LDR.W    R0,??DataTable8_34
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable8_35
        LDR      R0,[R0, #+36]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable8_34
        STR      R0,[R1, #+0]
//  134   
//  135   
//  136   SpeedControlOutOld=SpeedControlOutNew;
        LDR.W    R0,??DataTable8_36
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_37
        STR      R0,[R1, #+0]
//  137   
//  138   SpeedControlOutNew=PID_Speed.P*SpeedError+PID_Speed.I*SpeedControlIntegral+PID_Speed.D*(PreError[9]-PreError[8]);
        LDR.W    R0,??DataTable8_38
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable8_38
        LDR      R1,[R0, #+8]
        LDR.W    R0,??DataTable8_34
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.W    R0,??DataTable8_35
        LDR      R0,[R0, #+36]
        LDR.W    R1,??DataTable8_35
        LDR      R1,[R1, #+32]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable8_38
        LDR      R1,[R1, #+16]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable8_36
        STR      R0,[R1, #+0]
//  139   
//  140   
//  141   SpeedControlOutNew=SpeedControlOutOld*0.9+SpeedControlOutNew*0.1;
        LDR.W    R0,??DataTable8_37
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_15  ;; 0xcccccccd
        LDR.W    R3,??DataTable8_16  ;; 0x3feccccc
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable8_36
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable8_7  ;; 0x9999999a
        LDR.W    R3,??DataTable8_14  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable8_36
        STR      R0,[R1, #+0]
//  142   
//  143 
//  144  
//  145 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??setspeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??D_Err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??PreError:
        DS8 40
//  146 
//  147 /****
//  148 * 速度控制,平滑输出
//  149 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 void Speed_Control_Output(void)
//  151 {
Speed_Control_Output:
        PUSH     {R4,LR}
//  152   float dSpeedValue;//速度控制变化量
//  153   dSpeedValue=SpeedControlOutNew-SpeedControlOutOld;
        LDR.W    R0,??DataTable8_36
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
//  154   PID_Speed.OUT= dSpeedValue*(SpeedCount+1)/Speed_Filter_Times+SpeedControlOutOld;
        LDR.W    R0,??DataTable8_39
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable8_40
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable8_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable8_38
        STR      R0,[R1, #+24]
//  155 }
        POP      {R4,PC}          ;; return
//  156 
//  157 
//  158 /****
//  159 * 方向控制量计算
//  160 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  161 void Direction_Control(void)
//  162 {
Direction_Control:
        PUSH     {R4,LR}
//  163   
//  164   int i;
//  165   static int Calculate_Length=0;
//  166   static float Pre_Middle_Err[15]={0};
//  167   for(i=0;i<14;i++)
        MOVS     R0,#+0
        B.N      ??Direction_Control_0
//  168   {
//  169     Pre_Middle_Err[i]=Pre_Middle_Err[i+1];
??Direction_Control_1:
        LDR.W    R1,??DataTable8_41
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable8_41
        STR      R1,[R2, R0, LSL #+2]
//  170   }
        ADDS     R0,R0,#+1
??Direction_Control_0:
        CMP      R0,#+14
        BLT.N    ??Direction_Control_1
//  171   Pre_Middle_Err[14]=Middle_Err;
        LDR.W    R0,??DataTable8_42
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_41
        STR      R0,[R1, #+56]
//  172 
//  173   if(Calculate_Length<12)
        LDR.W    R0,??DataTable8_43
        LDR      R0,[R0, #+0]
        CMP      R0,#+12
        BGE.N    ??Direction_Control_2
//  174   {
//  175      Delta_P=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_44
        STR      R0,[R1, #+0]
//  176      Delta_D=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+0]
//  177      Delt_error=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_25
        STR      R0,[R1, #+0]
//  178      Calculate_Length++;
        LDR.W    R0,??DataTable8_43
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8_43
        STR      R0,[R1, #+0]
        B.N      ??Direction_Control_3
//  179   }
//  180   else
//  181   {
//  182       Pre_Delta_Error=Delt_error;
??Direction_Control_2:
        LDR.W    R0,??DataTable8_25
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable8_24
        STR      R0,[R1, #+0]
//  183       Delt_error=-10*Slope_Calculate(0,Calculate_Length,Pre_Middle_Err);
        LDR.W    R2,??DataTable8_41
        LDR.W    R0,??DataTable8_43
        LDR      R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       Slope_Calculate
        LDR.W    R1,??DataTable8_46  ;; 0xc1200000
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_25
        STR      R0,[R1, #+0]
//  184 
//  185        if(RoadType==0)//直线用模糊控制
        LDR.W    R0,??DataTable8_47
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Direction_Control_3
//  186       {
//  187         
//  188         //Delta_P=Fuzzy( Middle_Err,Delt_error)* Fuzzy_Kp*0.1;
//  189 
//  190         //Delta_D=Fuzzy( Middle_Err,Delt_error)* Fuzzy_Kd*0.1;
//  191       }
//  192       else
//  193       {
//  194          Delta_P=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_44
        STR      R0,[R1, #+0]
//  195          Delta_D=0;       
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+0]
//  196       }
//  197       
//  198   }
//  199     
//  200     
//  201   
//  202   
//  203 
//  204   PID_Turn.pout=(PID_Turn.P+Delta_P)* Pre_Middle_Err[13];
??Direction_Control_3:
        LDR.W    R0,??DataTable8_48
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_44
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable8_41
        LDR      R1,[R1, #+52]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable8_48
        STR      R0,[R1, #+4]
//  205   PID_Turn.iout=(PID_Turn.I)*Middle_Err;
        LDR.N    R0,??DataTable8_48
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable8_42
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_48
        STR      R0,[R1, #+12]
//  206   
//  207   PID_Turn.dout=(PID_Turn.D+Delta_D)*(Middle_Err-Pre_Middle_Err[13])*10;
        LDR.N    R0,??DataTable8_48
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable8_45
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable8_42
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable8_41
        LDR      R1,[R1, #+52]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_49  ;; 0x41200000
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_48
        STR      R0,[R1, #+20]
//  208   if(RoadType==1)//进入十字弯道时增大P
        LDR.N    R0,??DataTable8_47
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Direction_Control_4
//  209   {
//  210     PID_Turn.pout= PID_Turn.pout*K_CrossRoad;
        LDR.N    R0,??DataTable8_48
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable8_50
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_48
        STR      R0,[R1, #+4]
//  211     PID_Turn.dout=PID_Turn.dout*P_CrossRoad;
        LDR.N    R0,??DataTable8_48
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable8_51
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_48
        STR      R0,[R1, #+20]
//  212   }
//  213   DirControlOutOld=DirControlOutNew;
??Direction_Control_4:
        LDR.N    R0,??DataTable8_52
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable8_53
        STR      R0,[R1, #+0]
//  214   DirControlOutNew=PID_Turn.pout+PID_Turn.dout;
        LDR.N    R0,??DataTable8_48
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable8_48
        LDR      R1,[R1, #+20]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable8_52
        STR      R0,[R1, #+0]
//  215   
//  216   DirControlOutNew=Turn_Out_Filter(DirControlOutNew);
        LDR.N    R0,??DataTable8_52
        LDR      R0,[R0, #+0]
        BL       Turn_Out_Filter
        LDR.N    R1,??DataTable8_52
        STR      R0,[R1, #+0]
//  217   
//  218 
//  219 
//  220 }
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Calculate_Length:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Pre_Middle_Err:
        DS8 60
//  221 /****
//  222 * 方向控制量输出
//  223 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  224 void Direction_Control_Output(void)
//  225 {
Direction_Control_Output:
        PUSH     {R4,LR}
//  226   
//  227   float dDirValue;
//  228   dDirValue=DirControlOutNew-DirControlOutOld;
        LDR.N    R0,??DataTable8_52
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable8_53
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
//  229   PID_Turn.OUT=dDirValue*(DirectionCount+1)/5+DirControlOutOld;
        LDR.N    R0,??DataTable8_54
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_55  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable8_53
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable8_48
        STR      R0,[R1, #+24]
//  230 
//  231 }
        POP      {R4,PC}          ;; return
//  232 
//  233 /****
//  234 *转向输出滤波
//  235 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 float Turn_Out_Filter(float DirectionControlOut)
//  237 {
Turn_Out_Filter:
        PUSH     {R3-R5,LR}
//  238   static float DirectionControl[4]={0};
//  239   float DirectionControlOut_Filtered;
//  240   DirectionControl[3]=DirectionControl[2];
        LDR.N    R1,??DataTable8_56
        LDR      R1,[R1, #+8]
        LDR.N    R2,??DataTable8_56
        STR      R1,[R2, #+12]
//  241   DirectionControl[2]=DirectionControl[1];
        LDR.N    R1,??DataTable8_56
        LDR      R1,[R1, #+4]
        LDR.N    R2,??DataTable8_56
        STR      R1,[R2, #+8]
//  242   DirectionControl[1]=DirectionControl[0];
        LDR.N    R1,??DataTable8_56
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable8_56
        STR      R1,[R2, #+4]
//  243   DirectionControl[0]=DirectionControlOut;
        LDR.N    R1,??DataTable8_56
        STR      R0,[R1, #+0]
//  244   DirectionControlOut_Filtered=DirectionControl[0]*0.4+DirectionControl[1]*0.3+DirectionControl[2]*0.2+DirectionControl[3]*0.1;
        LDR.N    R0,??DataTable8_56
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable8_7  ;; 0x9999999a
        LDR.N    R3,??DataTable8_57  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable8_56
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable8_58  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable8_56
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable8_7  ;; 0x9999999a
        LDR.N    R3,??DataTable8_9  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable8_56
        LDR      R0,[R0, #+12]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable8_7  ;; 0x9999999a
        LDR.N    R3,??DataTable8_14  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
//  245   
//  246   return DirectionControlOut_Filtered;
        POP      {R1,R4,R5,PC}    ;; return
//  247 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??DirectionControl:
        DS8 16
//  248 
//  249 /****
//  250 * 电机PWM输出
//  251 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  252 void Motor_Output(void)
//  253 {
Motor_Output:
        PUSH     {R4,LR}
//  254   
//  255     uint32 temp;
//  256     temp=(uint32)PID_Speed.OUT*2800;
        LDR.N    R0,??DataTable8_38
        LDR      R0,[R0, #+24]
        BL       __aeabi_f2uiz
        MOV      R1,#+2800
        MUL      R4,R1,R0
//  257     if(temp>=7600)
        MOVW     R0,#+7600
        CMP      R4,R0
        BCC.N    ??Motor_Output_0
//  258     {
//  259       temp=7600;
        MOVW     R4,#+7600
//  260     }
//  261 
//  262 
//  263   /*  
//  264     if(STATE==1)
//  265     {
//  266       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7,temp);
//  267         
//  268       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,temp);    
//  269     
//  270     
//  271     }
//  272     else if(STATE==0)
//  273     {
//  274        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 50);
//  275         
//  276        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5, 50);       
//  277 
//  278     }
//  279     */
//  280     
//  281 
//  282       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7,temp);
??Motor_Output_0:
        MOVS     R2,R4
        MOVS     R1,#+7
        LDR.N    R0,??DataTable8_59  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  283         
//  284       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,temp);    
        MOVS     R2,R4
        MOVS     R1,#+5
        LDR.N    R0,??DataTable8_59  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  285     
//  286 
//  287 }
        POP      {R4,PC}          ;; return
//  288 
//  289 /****
//  290 *舵机PWM输出
//  291 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  292 void Servo_Output(void)
//  293 {
Servo_Output:
        PUSH     {R7,LR}
//  294   uint16  DutyRation;
//  295   DutyRation= 750-PID_Turn.OUT;
        LDR.N    R0,??DataTable8_60  ;; 0x443b8000
        LDR.N    R1,??DataTable8_48
        LDR      R1,[R1, #+24]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
//  296   LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch1, DutyRation); 
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8_61  ;; 0x400b8000
        BL       LPLD_FTM_PWM_ChangeDuty
//  297     
//  298 }
        POP      {R0,PC}          ;; return
//  299 
//  300 
//  301 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  302 float Slope_Calculate(uint8 begin,uint8 end,float *p)    //最小二乘法拟合斜率
//  303 {
Slope_Calculate:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R10,R2
//  304   float xsum=0,ysum=0,xysum=0,x2sum=0;
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
//  305    uint8 i=0;
        MOVS     R11,#+0
//  306    float result=0;
        MOVS     R0,#+0
//  307    static float resultlast;
//  308    p=p+begin;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R10,R10,R4, LSL #+2
//  309    for(i=begin;i<end;i++)
        MOV      R11,R4
        B.N      ??Slope_Calculate_0
//  310    {
//  311 	   xsum+=i;
??Slope_Calculate_1:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOV      R0,R11
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        MOVS     R6,R0
//  312 	   ysum+=*p;
        LDR      R0,[R10, #+0]
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
//  313 	   xysum+=i*(*p);
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOV      R0,R11
        BL       __aeabi_ui2f
        LDR      R1,[R10, #+0]
        BL       __aeabi_fmul
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R8,R0
//  314 	   x2sum+=i*i;
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MUL      R0,R11,R11
        BL       __aeabi_i2f
        MOV      R1,R9
        BL       __aeabi_fadd
        MOV      R9,R0
//  315 	   p=p+1;
        ADDS     R10,R10,#+4
//  316    }
        ADDS     R11,R11,#+1
??Slope_Calculate_0:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R11,R5
        BCC.N    ??Slope_Calculate_1
//  317   if((end-begin)*x2sum-xsum*xsum) //判断除数是否为零 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R5,R4
        BL       __aeabi_i2f
        MOV      R1,R9
        BL       __aeabi_fmul
        MOV      R10,R0
        MOVS     R0,R6
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R10
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BEQ.N    ??Slope_Calculate_2
//  318   {
//  319     result=((end-begin)*xysum-xsum*ysum)/((end-begin)*x2sum-xsum*xsum);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R5,R4
        BL       __aeabi_i2f
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R8,R0
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        MOVS     R7,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R5,R4
        BL       __aeabi_i2f
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R4,R0
        MOVS     R0,R6
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
//  320     resultlast=result;
        LDR.N    R1,??DataTable8_62
        STR      R0,[R1, #+0]
        B.N      ??Slope_Calculate_3
//  321   }
//  322   else
//  323   {
//  324    result=resultlast;
??Slope_Calculate_2:
        LDR.N    R0,??DataTable8_62
        LDR      R0,[R0, #+0]
//  325   }
//  326   return result;
??Slope_Calculate_3:
        POP      {R1,R4-R11,PC}   ;; return
//  327 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     qd1_result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     qd1_result_old

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     qd2_result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     qd2_result_old

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x851eb852

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x400c51eb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x3fe99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x40e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x4583e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     CarSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x40690000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     0x40b07c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     ControlSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     0x3fee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     0x3fa99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     0x3f59999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     Delta_Prederror

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     Pre_Delta_Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     Delt_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_26:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_27:
        DC32     ??D_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_28:
        DC32     Delta_dError_Range

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_29:
        DC32     SetSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_30:
        DC32     K_Varialbe_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_31:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_32:
        DC32     0x3ff66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_33:
        DC32     ??setspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_34:
        DC32     SpeedControlIntegral

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_35:
        DC32     ??PreError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_36:
        DC32     SpeedControlOutNew

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_37:
        DC32     SpeedControlOutOld

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_38:
        DC32     PID_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_39:
        DC32     SpeedCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_40:
        DC32     Speed_Filter_Times

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_41:
        DC32     ??Pre_Middle_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_42:
        DC32     Middle_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_43:
        DC32     ??Calculate_Length

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_44:
        DC32     Delta_P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_45:
        DC32     Delta_D

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_46:
        DC32     0xc1200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_47:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_48:
        DC32     PID_Turn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_49:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_50:
        DC32     K_CrossRoad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_51:
        DC32     P_CrossRoad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_52:
        DC32     DirControlOutNew

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_53:
        DC32     DirControlOutOld

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_54:
        DC32     DirectionCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_55:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_56:
        DC32     ??DirectionControl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_57:
        DC32     0x3fd99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_58:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_59:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_60:
        DC32     0x443b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_61:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_62:
        DC32     ??resultlast

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??resultlast:
        DS8 4

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
//   300 bytes in section .bss
//    48 bytes in section .data
// 2 628 bytes in section .text
// 
// 2 628 bytes of CODE memory
//   348 bytes of DATA memory
//
//Errors: none
//Warnings: 2
