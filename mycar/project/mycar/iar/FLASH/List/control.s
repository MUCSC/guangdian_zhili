///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       13/Apr/2017  22:11:33
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\control.c
//    Command line =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\control.c
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
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\FLASH\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ABS
        EXTERN Barri_Turn_Angle
        EXTERN Barri_Turn_Speed
        EXTERN CCD_Draw_Buff
        EXTERN CarStopedJustNow
        EXTERN Debug_Index
        EXTERN Debug_Motor_ON
        EXTERN Fuzzy
        EXTERN Get_X_Gyro
        EXTERN Get_Y_Gyro
        EXTERN Get_Z_Acc
        EXTERN LPLD_ADC_Get
        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN Middle_Err
        EXTERN Previous_Error
        EXTERN Right_Or_Left
        EXTERN RoadType
        EXTERN RoadTypeConfirm
        EXTERN RoadTypeSwitch
        EXTERN Starting
        EXTERN Stop
        EXTERN Strong_Turn_Angle
        EXTERN Strong_Turn_Cnt
        EXTERN Strong_Turn_En
        EXTERN Strong_Turn_Speed
        EXTERN Turn_State
        EXTERN Voltage
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2f
        EXTERN constrain
        EXTERN read_buff

        PUBLIC Acc_Max
        PUBLIC Acc_Min
        PUBLIC Acc_Offset
        PUBLIC Acc_Z
        PUBLIC Angle
        PUBLIC Angle_Calculate
        PUBLIC Angle_Control
        PUBLIC Angle_Speed
        PUBLIC AverageSpeed
        PUBLIC CarSpeed
        PUBLIC Car_Angle
        PUBLIC ControlSpeed
        PUBLIC Delt_error
        PUBLIC Delta_D
        PUBLIC Delta_P
        PUBLIC DirectionControlOutNew
        PUBLIC DirectionControlOutOld
        PUBLIC DirectionCount
        PUBLIC Direction_Control
        PUBLIC Direction_Control_Output
        PUBLIC Distance
        PUBLIC Encoder_Disable
        PUBLIC ForceStop
        PUBLIC Fuzzy_Kd
        PUBLIC Fuzzy_Kp
        PUBLIC Get_Attitude
        PUBLIC Get_Speed
        PUBLIC Gyro_X
        PUBLIC Gyro_X_Offset
        PUBLIC Gyro_Y
        PUBLIC Gyro_Y_Offset
        PUBLIC Hill_Slow_Ratio
        PUBLIC Kalman_Filter
        PUBLIC L_DeadValue
        PUBLIC LeftMotorOut
        PUBLIC Middle_Err_Filter
        PUBLIC Moto_Out
        PUBLIC PID_ANGLE
        PUBLIC PID_SPEED
        PUBLIC PID_TURN
        PUBLIC Protect
        PUBLIC R_DeadValue
        PUBLIC RightMotorOut
        PUBLIC RunTime
        PUBLIC SetSpeed
        PUBLIC Set_Angle
        PUBLIC Slope_Calculate
        PUBLIC SpeedControlIntegral
        PUBLIC SpeedControlOutNew
        PUBLIC SpeedControlOutOld
        PUBLIC SpeedCount
        PUBLIC Speed_Control
        PUBLIC Speed_Control_Output
        PUBLIC Speed_Filter_Times
        PUBLIC Strong_Turn
        PUBLIC Turn_Angle_Integral
        PUBLIC Turn_Out
        PUBLIC Turn_Out_Filter
        PUBLIC Turn_Speed

// C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\control.c
//    1 #include "include.h"
//    2 //角度类变量

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    3 int16  Acc_Z,Gyro_X,Gyro_Y;
Acc_Z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Gyro_X:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Gyro_Y:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//    4 int16  Acc_Max=8192;
Acc_Max:
        DATA
        DC16 8192

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//    5 int16  Acc_Min=-8192;
Acc_Min:
        DATA
        DC16 -8192

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    6 int16  Acc_Offset;
Acc_Offset:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 float Angle,Angle_Speed,Car_Angle=0;
Angle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Angle_Speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Car_Angle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    8 int16  Gyro_X_Offset=0,Gyro_Y_Offset=0;
Gyro_X_Offset:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Gyro_Y_Offset:
        DS8 2
//    9 //速度类变量

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 float SpeedControlOutNew;
SpeedControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 float SpeedControlOutOld;
SpeedControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 float SpeedControlIntegral=0,Hill_Slow_Ratio;
SpeedControlIntegral:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Hill_Slow_Ratio:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8  Set_Angle;   //加速前倾角度
Set_Angle:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 int   SpeedCount;
SpeedCount:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   15 int   Speed_Filter_Times=10;    //速度平滑输出
Speed_Filter_Times:
        DATA
        DC32 10

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 float CarSpeed=0,ControlSpeed=0,AverageSpeed,SetSpeed=0,Distance;
CarSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ControlSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AverageSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
SetSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Distance:
        DS8 4
//   17 //方向类变量

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 float DirectionControlOutNew;
DirectionControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 float DirectionControlOutOld;
DirectionControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 float Turn_Speed=0;
Turn_Speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int   DirectionCount;
DirectionCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 float Delt_error;
Delt_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 float Turn_Out;
Turn_Out:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 float Turn_Angle_Integral;
Turn_Angle_Integral:
        DS8 4
//   25 //模糊化系数

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 float  Delta_P;
Delta_P:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 float  Delta_D;
Delta_D:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 float  Fuzzy_Kp;
Fuzzy_Kp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 float  Fuzzy_Kd;
Fuzzy_Kd:
        DS8 4
//   30 //PID控制类变量

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 PID PID_ANGLE,PID_SPEED,PID_TURN;
PID_ANGLE:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
PID_SPEED:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
PID_TURN:
        DS8 28
//   32 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 float  LeftMotorOut,RightMotorOut;   //电机输出量
LeftMotorOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
RightMotorOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 float  L_DeadValue=0,R_DeadValue=0;
L_DeadValue:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
R_DeadValue:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   35 float  RunTime=0;                    //跑动时间计数
RunTime:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   36 uint8 Protect=1;
Protect:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   37 uint8 ForceStop=0;
ForceStop:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   38 uint8 Encoder_Disable=0;
Encoder_Disable:
        DS8 1
//   39 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void Get_Attitude()
//   41 {
Get_Attitude:
        PUSH     {R7,LR}
//   42   Acc_Z =Get_Z_Acc(); 
        BL       Get_Z_Acc
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, #+0]
//   43   Gyro_X= Get_X_Gyro();
        BL       Get_X_Gyro
        LDR.W    R1,??DataTable6_1
        STRH     R0,[R1, #+0]
//   44   
//   45   read_buff[2]= Get_Y_Gyro();
        BL       Get_Y_Gyro
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+8]
//   46   Gyro_Y=(read_buff[2]*6+read_buff[1]*3+read_buff[0]*1)/10;              
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+8]
        MOVS     R1,#+6
        LDR.W    R2,??DataTable6_2
        LDR      R2,[R2, #+4]
        MOVS     R3,#+3
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_3
        STRH     R0,[R1, #+0]
//   47   Voltage=LPLD_ADC_Get(ADC0,AD15);
        MOVS     R1,#+15
        LDR.W    R0,??DataTable6_4  ;; 0x4003b000
        BL       LPLD_ADC_Get
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//   48   Voltage*=Voltage_Ratio; //转换为实际电压
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_5  ;; 0x3470f5e1
        LDR.W    R3,??DataTable6_6  ;; 0x3f64ab0d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//   49 }
        POP      {R0,PC}          ;; return
//   50 //******Kalman滤波******//
//   51 //-------------------------------------------------------

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   52 static  float Q_angle=0.01, Q_gyro=0.0001, R_angle=10, dt=0.005;
Q_angle:
        DATA
        DC32 3C23D70AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Q_gyro:
        DATA
        DC32 38D1B717H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
R_angle:
        DATA
        DC32 41200000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
dt:
        DATA
        DC32 3BA3D70AH
//   53 	//Q增大，动态响应增大

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   54 static float Pk[2][2] = { {1, 0}, {0, 1 }};
Pk:
        DATA
        DC32 3F800000H, 0H, 0H, 3F800000H
//   55 	

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   56 static float Pdot[4] ={0,0,0,0};
Pdot:
        DS8 16
//   57 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 static float q_bias=0, angle_err, PCt_0, PCt_1, E, K_0, K_1, t_0, t_1;
q_bias:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
angle_err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
PCt_0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
PCt_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
E:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
K_0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
K_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
t_0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
t_1:
        DS8 4
//   59 //-------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void Kalman_Filter(float angle_m,float gyro_m)			
//   61 {
Kalman_Filter:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   62 	Car_Angle+=(gyro_m-q_bias) * dt; ///预测值
        MOVS     R0,R5
        LDR.W    R1,??DataTable6_7
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable6_8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable6_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//   63 	Pdot[0]=Q_angle - Pk[0][1] - Pk[1][0];
        LDR.W    R0,??DataTable6_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_11
        LDR      R1,[R1, #+4]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable6_11
        LDR      R1,[R1, #+8]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable6_12
        STR      R0,[R1, #+0]
//   64 	Pdot[1]=- Pk[1][1];
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+12]
        EORS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable6_12
        STR      R0,[R1, #+4]
//   65 	Pdot[2]=- Pk[1][1];
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+12]
        EORS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable6_12
        STR      R0,[R1, #+8]
//   66 	Pdot[3]=Q_gyro;
        LDR.W    R0,??DataTable6_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_12
        STR      R0,[R1, #+12]
//   67 	
//   68 	Pk[0][0] += Pdot[0] * dt;
        LDR.W    R0,??DataTable6_12
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable6_11
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_11
        STR      R0,[R1, #+0]
//   69 	Pk[0][1] += Pdot[1] * dt;
        LDR.W    R0,??DataTable6_12
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable6_11
        LDR      R1,[R1, #+4]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_11
        STR      R0,[R1, #+4]
//   70 	Pk[1][0] += Pdot[2] * dt;
        LDR.W    R0,??DataTable6_12
        LDR      R1,[R0, #+8]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable6_11
        LDR      R1,[R1, #+8]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_11
        STR      R0,[R1, #+8]
//   71 	Pk[1][1] += Pdot[3] * dt;
        LDR.W    R0,??DataTable6_12
        LDR      R1,[R0, #+12]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable6_11
        LDR      R1,[R1, #+12]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_11
        STR      R0,[R1, #+12]
//   72 	
//   73 	angle_err = angle_m -Car_Angle;///测量值-预测值
        MOVS     R0,R4
        LDR.W    R1,??DataTable6_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable7
        STR      R0,[R1, #+0]
//   74 	
//   75 	PCt_0 =  Pk[0][0];
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   76 	PCt_1 =  Pk[1][0];
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   77 	
//   78 	E = R_angle + PCt_0;
        LDR.W    R0,??DataTable7_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable7_4
        STR      R0,[R1, #+0]
//   79 	
//   80 	K_0 = PCt_0 / E; ///卡尔曼增益
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//   81 	K_1 = PCt_1 / E;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable7_6
        STR      R0,[R1, #+0]
//   82 	
//   83 	t_0 = PCt_0;
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_7
        STR      R0,[R1, #+0]
//   84 	t_1 = Pk[0][1];
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable7_8
        STR      R0,[R1, #+0]
//   85 
//   86 	Pk[0][0] -= K_0 * t_0;
        LDR.W    R0,??DataTable7_5
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable6_11
        STR      R0,[R1, #+0]
//   87 	Pk[0][1] -= K_0 * t_1;
        LDR.W    R0,??DataTable7_5
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+4]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable6_11
        STR      R0,[R1, #+4]
//   88 	Pk[1][0] -= K_1 * t_0;
        LDR.W    R0,??DataTable7_6
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+8]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable6_11
        STR      R0,[R1, #+8]
//   89 	Pk[1][1] -= K_1 * t_1;
        LDR.W    R0,??DataTable7_6
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable6_11
        LDR      R0,[R0, #+12]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable6_11
        STR      R0,[R1, #+12]
//   90 	
//   91 	Car_Angle+= K_0 * angle_err; ///最优角度=预测值+卡尔曼增益*(测量值-预测值)
        LDR.W    R0,??DataTable7_5
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable6_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//   92 	q_bias	+= K_1 * angle_err;
        LDR.W    R0,??DataTable7_6
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable6_7
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//   93 	Angle_Speed = gyro_m-q_bias;
        MOVS     R0,R5
        LDR.W    R1,??DataTable6_7
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable9_1
        STR      R0,[R1, #+0]
//   94 }
        POP      {R0,R4,R5,PC}    ;; return
//   95 
//   96 
//   97 //角度计算与滤波

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 void Angle_Calculate()
//   99 {
Angle_Calculate:
        PUSH     {R4-R6,LR}
//  100  float xishu=0.048;
        LDR.W    R6,??DataTable9_2  ;; 0x3d449ba6
//  101  Angle =(Acc_Z-Acc_Offset*10)*180.0/(Acc_Max-Acc_Min); 
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable9_3
        LDRSH    R1,[R1, #+0]
        MOVS     R2,#+10
        SMULBB   R1,R1,R2
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_4  ;; 0x40668000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable9_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable9_6
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable9_7
        STR      R0,[R1, #+0]
//  102  Angle_Speed=(Gyro_Y-Gyro_Y_Offset) * xishu;
        LDR.W    R0,??DataTable6_3
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable9_8
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable9_1
        STR      R0,[R1, #+0]
//  103  Kalman_Filter(Angle,Angle_Speed);            //调用卡尔曼滤波函数
        LDR.W    R0,??DataTable9_1
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+0]
        BL       Kalman_Filter
//  104 }
        POP      {R4-R6,PC}       ;; return
//  105 //角度控制函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 void Angle_Control()  
//  107 {
Angle_Control:
        PUSH     {R4-R6,LR}
//  108   PID_ANGLE.pout=PID_ANGLE.P*Car_Angle;
        LDR.W    R0,??DataTable9_9
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+4]
//  109   PID_ANGLE.dout=PID_ANGLE.D*Angle_Speed;
        LDR.W    R0,??DataTable9_9
        LDR      R1,[R0, #+16]
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+20]
//  110   if(ABS(Angle_Speed)>30&&ABS(Angle_Speed)<80)
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       ABS
        CMP      R0,#+31
        BLT.N    ??Angle_Control_0
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       ABS
        CMP      R0,#+80
        BGE.N    ??Angle_Control_0
//  111   {
//  112        PID_ANGLE.dout*=(1+(ABS(Angle_Speed)-30.0)/30.0);
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       ABS
        MOVS     R6,R0
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+20]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_10  ;; 0xc03e0000
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_11  ;; 0x403e0000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_12  ;; 0x3ff00000
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+20]
//  113   }
//  114   
//  115   PID_ANGLE.OUT= PID_ANGLE.pout+ PID_ANGLE.dout;
??Angle_Control_0:
        LDR.W    R0,??DataTable9_9
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+20]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+24]
//  116 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  117 void Get_Speed()                     //5ms执行一次
//  118 {  
Get_Speed:
        PUSH     {R3-R7,LR}
//  119   int qd1_result,qd2_result;
//  120   qd1_result = LPLD_FTM_GetCounter(FTM1); 
        LDR.W    R0,??DataTable9_13  ;; 0x40039000
        BL       LPLD_FTM_GetCounter
        MOVS     R6,R0
//  121   qd2_result = LPLD_FTM_GetCounter(FTM2);
        LDR.W    R0,??DataTable9_14  ;; 0x400b8000
        BL       LPLD_FTM_GetCounter
        MOVS     R7,R0
//  122   LPLD_FTM_ClearCounter(FTM1);
        LDR.W    R0,??DataTable9_13  ;; 0x40039000
        BL       LPLD_FTM_ClearCounter
//  123   LPLD_FTM_ClearCounter(FTM2);
        LDR.W    R0,??DataTable9_14  ;; 0x400b8000
        BL       LPLD_FTM_ClearCounter
//  124   if(Encoder_Disable==2)  //编码器坏了的备案
        LDR.W    R0,??DataTable9_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Get_Speed_0
//  125   qd1_result=qd2_result;
        MOVS     R6,R7
//  126   if(Encoder_Disable==1)
??Get_Speed_0:
        LDR.W    R0,??DataTable9_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Get_Speed_1
//  127   qd2_result=qd1_result;
        MOVS     R7,R6
//  128   if(Stop||Starting)
??Get_Speed_1:
        LDR.W    R0,??DataTable9_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Get_Speed_2
        LDR.W    R0,??DataTable9_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Get_Speed_3
//  129   {
//  130     if(LeftMotorOut>0)qd1_result=-qd1_result;
??Get_Speed_2:
        LDR.W    R0,??DataTable9_18
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Get_Speed_4
        RSBS     R6,R6,#+0
//  131     if(RightMotorOut>0)qd2_result=-qd2_result;
??Get_Speed_4:
        LDR.W    R0,??DataTable9_19
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Get_Speed_3
        RSBS     R7,R7,#+0
//  132   }
//  133   Distance+=(qd1_result+qd2_result)/4220.0;  //转化为距离
??Get_Speed_3:
        LDR.W    R0,??DataTable9_20
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        ADDS     R0,R7,R6
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_21  ;; 0x40b07c00
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable9_20
        STR      R0,[R1, #+0]
//  134   CarSpeed=CarSpeed*0.1+0.9*(qd1_result+qd2_result)*200.0/4220.0;    //求出车速转换为M/S
        LDR.W    R0,??DataTable9_22
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_23  ;; 0x9999999a
        LDR.W    R3,??DataTable9_24  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        ADDS     R0,R7,R6
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable9_25  ;; 0xcccccccd
        LDR.W    R3,??DataTable9_26  ;; 0x3feccccc
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_27  ;; 0x40690000
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_21  ;; 0x40b07c00
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable9_22
        STR      R0,[R1, #+0]
//  135  if(CarSpeed>4)CarSpeed=4;
        LDR.W    R0,??DataTable9_22
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_28  ;; 0x40800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Get_Speed_5
        MOVS     R0,#+1082130432
        LDR.W    R1,??DataTable9_22
        STR      R0,[R1, #+0]
//  136   ///////////////////////////////////////////////////////////????????????????????????????????????????????????????????????????????????????????????
//  137   if(RoadType!=5)
??Get_Speed_5:
        LDR.W    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.N    ??Get_Speed_6
//  138   { 
//  139     ControlSpeed=ControlSpeed*0.95+CarSpeed*0.05;
        LDR.W    R0,??DataTable9_30
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable9_31  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable9_22
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_23  ;; 0x9999999a
        LDR.W    R3,??DataTable9_32  ;; 0x3fa99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable9_30
        STR      R0,[R1, #+0]
//  140   }
//  141 }
??Get_Speed_6:
        POP      {R0,R4-R7,PC}    ;; return
//  142 //速度控制量计算

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  143 void Speed_Control(void)
//  144 {  
Speed_Control:
        PUSH     {R3-R5,LR}
//  145   static float setspeed=0;       
//  146   static float PreError[20]={0};
//  147   float  SpeedError,Speed_temp;
//  148   uint8 i;
//  149   float  SpeedFilterRatio=0.85;     //速度设定值滤波，防止速度控制变化太剧烈
        LDR.W    R4,??DataTable9_33  ;; 0x3f59999a
//  150         
//  151   //设定速度滤波
//  152 
//  153 
//  154   //速度滤波，防止因为速度变化过大而车身晃动
//  155   Speed_temp=SetSpeed;
        LDR.W    R0,??DataTable9_34
        LDR      R5,[R0, #+0]
//  156   
//  157   if(ABS(Middle_Err)<3&&(RoadTypeSwitch&(1<<4)))Speed_temp=Speed_temp*0.9;
        LDR.W    R0,??DataTable9_35
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       ABS
        CMP      R0,#+3
        BGE.N    ??Speed_Control_0
        LDR.W    R0,??DataTable9_36
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??Speed_Control_0
        MOVS     R0,R5
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_25  ;; 0xcccccccd
        LDR.W    R3,??DataTable9_26  ;; 0x3feccccc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R5,R0
//  158   
//  159    setspeed = Speed_temp*(1-SpeedFilterRatio)+setspeed*SpeedFilterRatio;
??Speed_Control_0:
        MOVS     R0,#+1065353216
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR.W    R0,??DataTable9_37
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable9_37
        STR      R0,[R1, #+0]
//  160   
//  161   if(Starting||Stop)  setspeed=0; //启动的时候把速度置为零
        LDR.W    R0,??DataTable9_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Speed_Control_1
        LDR.W    R0,??DataTable9_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Speed_Control_2
??Speed_Control_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_37
        STR      R0,[R1, #+0]
//  162   
//  163    SpeedError=setspeed-ControlSpeed; 
??Speed_Control_2:
        LDR.W    R0,??DataTable9_37
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_30
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
//  164  
//  165    
//  166   //求出最近20个偏差的总和作为积分项
//  167    SpeedControlIntegral=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_38
        STR      R0,[R1, #+0]
//  168    for(i=0;i<19;i++)
        MOVS     R5,#+0
        B.N      ??Speed_Control_3
//  169    {
//  170      PreError[i]=PreError[i+1]; 
??Speed_Control_4:
        LDR.W    R0,??DataTable9_39
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R0,R5, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable9_39
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R1, R5, LSL #+2]
//  171      SpeedControlIntegral+=PreError[i];
        LDR.W    R0,??DataTable9_38
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_39
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable9_38
        STR      R0,[R1, #+0]
//  172    }
        ADDS     R5,R5,#+1
??Speed_Control_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+19
        BLT.N    ??Speed_Control_4
//  173     PreError[19]=SpeedError;
        LDR.W    R0,??DataTable9_39
        STR      R4,[R0, #+76]
//  174     SpeedControlIntegral+=PreError[19];
        LDR.W    R0,??DataTable9_38
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable9_39
        LDR      R0,[R0, #+76]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable9_38
        STR      R0,[R1, #+0]
//  175    
//  176   
//  177   //速度更新
//  178   SpeedControlOutOld=SpeedControlOutNew;
        LDR.W    R0,??DataTable10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_40
        STR      R0,[R1, #+0]
//  179  
//  180   //防止起步位移
//  181   if(Starting)
        LDR.W    R0,??DataTable9_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Speed_Control_5
//  182   {
//  183     SpeedControlIntegral=-50*Distance;
        LDR.W    R0,??DataTable9_20
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable9_41  ;; 0xc2480000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable9_38
        STR      R0,[R1, #+0]
//  184     SpeedError=0;
        MOVS     R4,#+0
//  185   }
//  186   
//  187   SpeedControlOutNew=PID_SPEED.P*SpeedError+PID_SPEED.I*SpeedControlIntegral;   //PI控制
??Speed_Control_5:
        LDR.W    R0,??DataTable9_42
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable9_42
        LDR      R1,[R0, #+8]
        LDR.W    R0,??DataTable9_38
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  188   
//  189 
//  190   if(RoadType==5)
        LDR.W    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Speed_Control_6
//  191   {
//  192      SpeedControlOutNew*=Hill_Slow_Ratio;
        LDR.W    R0,??DataTable10
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable9_43
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  193      
//  194        SpeedControlOutNew= SpeedControlOutOld*0.6+SpeedControlOutNew*0.4;
        LDR.W    R0,??DataTable9_40
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable9_44  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_23  ;; 0x9999999a
        LDR.W    R3,??DataTable9_45  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  195        SpeedControlOutOld=SpeedControlOutNew;
        LDR.W    R0,??DataTable10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_40
        STR      R0,[R1, #+0]
//  196   } 
//  197 
//  198   SpeedControlOutNew= SpeedControlOutOld*0.9+SpeedControlOutNew*0.1;
??Speed_Control_6:
        LDR.W    R0,??DataTable9_40
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_25  ;; 0xcccccccd
        LDR.W    R3,??DataTable9_26  ;; 0x3feccccc
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_23  ;; 0x9999999a
        LDR.W    R3,??DataTable9_24  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  199 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??setspeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??PreError:
        DS8 80
//  200 //速度控制

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 void Speed_Control_Output(void) 
//  202 { 
Speed_Control_Output:
        PUSH     {R4,LR}
//  203   float fValue; 
//  204   fValue = SpeedControlOutNew - SpeedControlOutOld; 
        LDR.W    R0,??DataTable10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_40
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
//  205   PID_SPEED.OUT = fValue * (SpeedCount+1)/Speed_Filter_Times+SpeedControlOutOld;  
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable9_40
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable13
        STR      R0,[R1, #+24]
//  206 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     Acc_Z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     Gyro_X

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     read_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     Gyro_Y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x3470f5e1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x3f64ab0d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     q_bias

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     dt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     Car_Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     Q_angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     Pk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     Pdot

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     Q_gyro
//  207 /********************方向控制量计算***************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 void Direction_Control(void)
//  209 {
Direction_Control:
        PUSH     {R4,LR}
//  210   float ratio=-0.005;
        LDR.W    R4,??DataTable11  ;; 0xbba3d70a
//  211   static int Calculate_Length=0;
//  212   Turn_Speed=(Gyro_X-Gyro_X_Offset)*ratio;            
        LDR.W    R0,??DataTable11_1
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
//  213   
//  214    
//  215   if(RoadType==0||RoadType==3)  //只有在普通赛道和单线上用模糊
        LDR.W    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Direction_Control_0
        LDR.W    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Direction_Control_1
//  216   {
//  217     if(Calculate_Length<12) 
??Direction_Control_0:
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+12
        BGE.N    ??Direction_Control_2
//  218     {  
//  219      Calculate_Length++;
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, #+0]
//  220      Delta_P=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_4
        STR      R0,[R1, #+0]
//  221      Delt_error=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_5
        STR      R0,[R1, #+0]
//  222      Delta_D=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_6
        STR      R0,[R1, #+0]
        B.N      ??Direction_Control_3
//  223     }
//  224     else
//  225     {
//  226       Delt_error=-10*Slope_Calculate(0,Calculate_Length,Previous_Error);
??Direction_Control_2:
        LDR.W    R2,??DataTable11_7
        LDR.W    R0,??DataTable11_3
        LDR      R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       Slope_Calculate
        LDR.W    R1,??DataTable11_8  ;; 0xc1200000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable11_5
        STR      R0,[R1, #+0]
//  227       Delta_P=Fuzzy( Middle_Err,Delt_error)* Fuzzy_Kp*0.1;
        LDR.W    R0,??DataTable11_5
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable9_35
        LDR      R0,[R0, #+0]
        BL       Fuzzy
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_23  ;; 0x9999999a
        LDR.W    R3,??DataTable9_24  ;; 0x3fb99999
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable11_4
        STR      R0,[R1, #+0]
//  228       Delta_D=Fuzzy( Middle_Err,Delt_error)* Fuzzy_Kd*0.1;
        LDR.W    R0,??DataTable11_5
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable9_35
        LDR      R0,[R0, #+0]
        BL       Fuzzy
        LDR.W    R1,??DataTable12_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_23  ;; 0x9999999a
        LDR.W    R3,??DataTable9_24  ;; 0x3fb99999
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable11_6
        STR      R0,[R1, #+0]
        B.N      ??Direction_Control_3
//  229     }
//  230   }
//  231   else 
//  232   {
//  233     Delta_P=0;
??Direction_Control_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_4
        STR      R0,[R1, #+0]
//  234     Delta_D=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_6
        STR      R0,[R1, #+0]
//  235     Calculate_Length=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, #+0]
//  236   }
//  237   
//  238   PID_TURN.pout=(PID_TURN.P+Delta_P)*Middle_Err;
??Direction_Control_3:
        LDR.W    R0,??DataTable12_2
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable9_35
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+4]
//  239   PID_TURN.dout=(PID_TURN.D+Delta_D)*Turn_Speed;
        LDR.W    R0,??DataTable12_2
        LDR      R1,[R0, #+16]
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+20]
//  240   
//  241   if(RoadType==1) PID_TURN.pout= PID_TURN.pout*1.4;
        LDR.W    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Direction_Control_4
        LDR.W    R0,??DataTable12_2
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable13_1  ;; 0x3ff66666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+4]
//  242   
//  243   DirectionControlOutOld=DirectionControlOutNew;
??Direction_Control_4:
        LDR.W    R0,??DataTable13_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_3
        STR      R0,[R1, #+0]
//  244   
//  245   Turn_Out=PID_TURN.pout+PID_TURN.dout;
        LDR.W    R0,??DataTable12_2
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable12_2
        LDR      R0,[R0, #+20]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  246   
//  247   if(RoadType==5&&RoadTypeConfirm)//坡道
        LDR.W    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Direction_Control_5
        LDR.W    R0,??DataTable13_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Direction_Control_5
//  248   {
//  249    Turn_Out=Turn_Out*0.8;
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_23  ;; 0x9999999a
        LDR.W    R3,??DataTable13_6  ;; 0x3fe99999
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  250    if(Turn_Out>0.2)Turn_Out=0.2;
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_7  ;; 0x3e4ccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??Direction_Control_6
        LDR.W    R0,??DataTable13_7  ;; 0x3e4ccccd
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  251    if(Turn_Out<-0.2)Turn_Out=-0.2;
??Direction_Control_6:
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_8  ;; 0xbe4ccccc
        BL       __aeabi_cfcmple
        BCS.N    ??Direction_Control_5
        LDR.W    R0,??DataTable13_9  ;; 0xbe4ccccd
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  252   }
//  253   
//  254  /* if(Turn_Out>0.4) Turn_Out=0.4;
//  255   if(Turn_Out<-0.4) Turn_Out=-0.4;
//  256     
//  257   if(Turn_Speed>60) 
//  258   {
//  259     if(Turn_Out<-0.1) Turn_Out=-0.1;
//  260   }
//  261   else  if(Turn_Speed>55)
//  262   {
//  263      if(Turn_Out<-0.15) Turn_Out=-0.15;
//  264   }
//  265   else  if(Turn_Speed>50)
//  266   {
//  267      if(Turn_Out<-0.2) Turn_Out=-0.2;
//  268   }
//  269    else  if(Turn_Speed>35)
//  270   {
//  271      if(Turn_Out<-0.3) Turn_Out=-0.3;
//  272   }
//  273   
//  274   if(Turn_Speed<-60)
//  275   {
//  276     if(Turn_Out>0.1) Turn_Out=0.1;
//  277   }
//  278   else  if(Turn_Speed<-55)
//  279   {
//  280      if(Turn_Out>0.15) Turn_Out=0.15;
//  281   }
//  282   else  if(Turn_Speed<-50)
//  283   {
//  284      if(Turn_Out>0.2) Turn_Out=0.2;
//  285   }
//  286    else  if(Turn_Speed<-35)
//  287   {
//  288      if(Turn_Out>0.3) Turn_Out=0.3;
//  289   }
//  290 
//  291   */
//  292   
//  293  //直角弯强制转向
//  294   if(RoadType==4)                           //5ms执行一次
??Direction_Control_5:
        LDR.N    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Direction_Control_7
//  295   {
//  296     if(Strong_Turn_En)
        LDR.W    R0,??DataTable13_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Direction_Control_8
//  297     {
//  298       if(Strong_Turn_Cnt<50)
        LDR.W    R0,??DataTable13_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+50
        BGE.N    ??Direction_Control_9
//  299       {
//  300         Strong_Turn();
        BL       Strong_Turn
//  301         Strong_Turn_Cnt++;
        LDR.W    R0,??DataTable13_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_11
        STRB     R0,[R1, #+0]
//  302         CCD_Draw_Buff[138]=Strong_Turn_Cnt;
        LDR.W    R0,??DataTable13_11
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_12
        STRB     R0,[R1, #+138]
//  303         Turn_Angle_Integral+=Turn_Speed;
        LDR.W    R0,??DataTable13_13
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable13_13
        STR      R0,[R1, #+0]
//  304         if(ABS(Turn_Angle_Integral)>Strong_Turn_Angle*30)
        LDR.W    R0,??DataTable13_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       ABS
        LDR.W    R1,??DataTable13_14
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+30
        MULS     R1,R2,R1
        CMP      R1,R0
        BGE.N    ??Direction_Control_10
//  305         Strong_Turn_En=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_10
        STRB     R0,[R1, #+0]
        B.N      ??Direction_Control_10
//  306       } 
//  307       else Strong_Turn_En=0;  //强制输出若干个个周期后停止输出 
??Direction_Control_9:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_10
        STRB     R0,[R1, #+0]
//  308       if(Turn_Out>0.7)Turn_Out=0.7;
??Direction_Control_10:
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15  ;; 0x3f333334
        BL       __aeabi_cfrcmple
        BHI.N    ??Direction_Control_11
        LDR.W    R0,??DataTable13_16  ;; 0x3f333333
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  309       if(Turn_Out<-0.7)Turn_Out=-0.7;
??Direction_Control_11:
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_17  ;; 0xbf333333
        BL       __aeabi_cfcmple
        BCS.N    ??Direction_Control_7
        LDR.W    R0,??DataTable13_17  ;; 0xbf333333
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
        B.N      ??Direction_Control_7
//  310     } 
//  311     else
//  312     {
//  313       if(Turn_Out>0.15)Turn_Out=0.15;
??Direction_Control_8:
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_18  ;; 0x3e19999a
        BL       __aeabi_cfrcmple
        BHI.N    ??Direction_Control_12
        LDR.W    R0,??DataTable13_18  ;; 0x3e19999a
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  314       if(Turn_Out<-0.15)Turn_Out=-0.15;
??Direction_Control_12:
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_19  ;; 0xbe199999
        BL       __aeabi_cfcmple
        BCS.N    ??Direction_Control_13
        LDR.W    R0,??DataTable13_20  ;; 0xbe19999a
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  315       if(Turn_State==1) Turn_Out=0;    //当没有搜到线的时候Turn_Out赋0
??Direction_Control_13:
        LDR.W    R0,??DataTable13_21
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Direction_Control_7
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  316     }
//  317   }
//  318   
//  319   
//  320   if(RoadType==2)    //障碍
??Direction_Control_7:
        LDR.N    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Direction_Control_14
//  321   {
//  322     
//  323     Turn_Angle_Integral+=Turn_Speed;
        LDR.W    R0,??DataTable13_13
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable13_13
        STR      R0,[R1, #+0]
//  324     
//  325     if(Turn_State==0)
        LDR.W    R0,??DataTable13_21
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Direction_Control_15
//  326     {
//  327       if(Right_Or_Left==0)//左障碍
        LDR.W    R0,??DataTable13_22
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Direction_Control_16
//  328       {
//  329          Turn_Out=-(Barri_Turn_Speed-ABS(Turn_Speed))*0.01;
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       ABS
        LDR.W    R1,??DataTable13_23
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable13_24  ;; 0x47ae147b
        LDR.W    R3,??DataTable13_25  ;; 0x3f847ae1
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  330          if(Turn_Angle_Integral> Barri_Turn_Angle*30) Turn_State=1;
        LDR.W    R0,??DataTable13_26
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+30
        MULS     R0,R1,R0
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable13_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Direction_Control_14
        MOVS     R0,#+1
        LDR.W    R1,??DataTable13_21
        STR      R0,[R1, #+0]
        B.N      ??Direction_Control_14
//  331       }
//  332       else
//  333       {
//  334          Turn_Out=(Barri_Turn_Speed-ABS(Turn_Speed))*0.01;
??Direction_Control_16:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       ABS
        LDR.W    R1,??DataTable13_23
        LDRB     R1,[R1, #+0]
        SUBS     R0,R1,R0
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable13_24  ;; 0x47ae147b
        LDR.W    R3,??DataTable13_25  ;; 0x3f847ae1
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  335          if(Turn_Angle_Integral<-Barri_Turn_Angle*30) Turn_State=1;
        LDR.W    R0,??DataTable13_26
        LDRB     R0,[R0, #+0]
        RSBS     R0,R0,#+0
        MOVS     R1,#+30
        MULS     R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable13_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Direction_Control_14
        MOVS     R0,#+1
        LDR.W    R1,??DataTable13_21
        STR      R0,[R1, #+0]
        B.N      ??Direction_Control_14
//  336       }
//  337     }
//  338     else
//  339     {
//  340       if(Turn_Out>0.25)Turn_Out=0.25;
??Direction_Control_15:
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_27  ;; 0x3e800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Direction_Control_17
        MOVS     R0,#+1048576000
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  341       if(Turn_Out<-0.25)Turn_Out=-0.25; 
??Direction_Control_17:
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_28  ;; 0xbe800000
        BL       __aeabi_cfcmple
        BCS.N    ??Direction_Control_14
        LDR.W    R0,??DataTable13_28  ;; 0xbe800000
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  342     }
//  343   }
//  344   
//  345   Turn_Out=Turn_Out_Filter(Turn_Out);         //转动输出滤波 
??Direction_Control_14:
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        BL       Turn_Out_Filter
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  346   
//  347   DirectionControlOutNew=Turn_Out;
        LDR.W    R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_2
        STR      R0,[R1, #+0]
//  348 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     angle_err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     PCt_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     PCt_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     R_angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     E

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     K_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     K_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     t_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     t_1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Calculate_Length:
        DS8 4
//  349 //直角弯转向

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  350 void Strong_Turn()
//  351 {
Strong_Turn:
        PUSH     {R3-R5,LR}
//  352   float Turn_P=0.012,Turn_D=0.02,Pout,Dout;
        LDR.W    R4,??DataTable13_29  ;; 0x3c449ba6
        LDR.W    R5,??DataTable13_30  ;; 0x3ca3d70a
//  353   static float Last_Turn_Speed=0;  
//  354   if(Strong_Turn_Cnt<=1)
        LDR.W    R0,??DataTable13_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??Strong_Turn_0
//  355   {
//  356     Last_Turn_Speed=Turn_Speed;
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_31
        STR      R0,[R1, #+0]
        B.N      ??Strong_Turn_1
//  357   }
//  358   else
//  359   {
//  360     Dout=(Last_Turn_Speed-Turn_Speed)*Turn_D*Right_Or_Left;
??Strong_Turn_0:
        LDR.W    R0,??DataTable13_31
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR.W    R0,??DataTable13_22
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R5,R0
//  361     Pout=(Strong_Turn_Speed-ABS(Turn_Speed))*Turn_P;
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       ABS
        LDR.W    R1,??DataTable13_32
        LDRB     R1,[R1, #+0]
        SUBS     R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
//  362     Turn_Out=Pout-Dout;
        MOVS     R1,R5
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  363     Last_Turn_Speed=Turn_Speed;
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_31
        STR      R0,[R1, #+0]
//  364   }
//  365   Turn_Out=Turn_Out*Right_Or_Left;
??Strong_Turn_1:
        LDR.W    R0,??DataTable13_22
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable13_4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable13_4
        STR      R0,[R1, #+0]
//  366 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Last_Turn_Speed:
        DS8 4
//  367 /*********************方向控制输出********************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  368 void Direction_Control_Output(void)
//  369 {
Direction_Control_Output:
        PUSH     {R4,LR}
//  370   float fValue; 
//  371   fValue =DirectionControlOutNew -DirectionControlOutOld; 
        LDR.W    R0,??DataTable13_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
//  372   PID_TURN.OUT=fValue * (DirectionCount+1)/5+DirectionControlOutOld;
        LDR.W    R0,??DataTable13_33
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable13_34  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable13_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+24]
//  373 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     Voltage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     Angle_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x3d449ba6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     Acc_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x40668000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     Acc_Max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     Acc_Min

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     Gyro_Y_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     PID_ANGLE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0xc03e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x403e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     Encoder_Disable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     Stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     Starting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     LeftMotorOut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     RightMotorOut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_21:
        DC32     0x40b07c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_22:
        DC32     CarSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_23:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_24:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_25:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_26:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_27:
        DC32     0x40690000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_28:
        DC32     0x40800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_29:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_30:
        DC32     ControlSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_31:
        DC32     0x3fee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_32:
        DC32     0x3fa99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_33:
        DC32     0x3f59999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_34:
        DC32     SetSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_35:
        DC32     Middle_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_36:
        DC32     RoadTypeSwitch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_37:
        DC32     ??setspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_38:
        DC32     SpeedControlIntegral

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_39:
        DC32     ??PreError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_40:
        DC32     SpeedControlOutOld

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_41:
        DC32     0xc2480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_42:
        DC32     PID_SPEED

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_43:
        DC32     Hill_Slow_Ratio

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_44:
        DC32     0x3fe33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_45:
        DC32     0x3fd99999
//  374 //电机pwm值输出

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  375 void Moto_Out() 
//  376 {
Moto_Out:
        PUSH     {R2-R6,LR}
//  377  int L_Value,R_Value;
//  378  static float  Forward_Safe_Angle=35;//前倾的安全角度
//  379  static int Motor_Abnormal_Cnt=0;    //电机转速异常计数
//  380  int Backward_Safe_Angle=20;          //后倾的安全角度
        MOVS     R4,#+20
//  381  float Sum;
//  382  //前倾加速的最大角度
//  383   if(RunTime<0.4) Forward_Safe_Angle=Set_Angle;
        LDR.W    R0,??DataTable13_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_36  ;; 0x3ecccccd
        BL       __aeabi_cfcmple
        BCS.N    ??Moto_Out_0
        LDR.W    R0,??DataTable13_37
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable13_38
        STR      R0,[R1, #+0]
        B.N      ??Moto_Out_1
//  384   else
//  385   {
//  386     if(Forward_Safe_Angle>35)
??Moto_Out_0:
        LDR.W    R0,??DataTable13_38
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_39  ;; 0x420c0001
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_1
//  387     {
//  388      Forward_Safe_Angle-=0.01;
        LDR.W    R0,??DataTable13_38
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable13_24  ;; 0x47ae147b
        LDR.W    R3,??DataTable13_40  ;; 0xbf847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable13_38
        STR      R0,[R1, #+0]
//  389     }
//  390   }
//  391  //调试模式的输出
//  392  if(Debug_Index==1)  //只有直立控制模式
??Moto_Out_1:
        LDR.W    R0,??DataTable13_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Moto_Out_2
//  393  {
//  394    PID_SPEED.OUT=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13
        STR      R0,[R1, #+24]
//  395    PID_TURN.OUT=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+24]
//  396  }
//  397  if(Debug_Index==2)  //没有速度控制模式
??Moto_Out_2:
        LDR.W    R0,??DataTable13_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Moto_Out_3
//  398  {
//  399    PID_SPEED.OUT=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13
        STR      R0,[R1, #+24]
//  400  }
//  401   if(Debug_Index==3)  //没有方向控制模式
??Moto_Out_3:
        LDR.W    R0,??DataTable13_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Moto_Out_4
//  402  {
//  403    PID_TURN.OUT=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+24]
//  404  }
//  405  //速度控制输出限幅
//  406  if(PID_SPEED.OUT>PID_ANGLE.P*Forward_Safe_Angle)//如果车子前倾，则车模的速度控制输出为正，反之为负
??Moto_Out_4:
        LDR.W    R0,??DataTable13_42
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_38
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable13
        LDR      R1,[R1, #+24]
        BL       __aeabi_cfcmple
        BCS.N    ??Moto_Out_5
//  407  PID_SPEED.OUT=PID_ANGLE.P*Forward_Safe_Angle;                       //已经倾斜到到安全角度了
        LDR.W    R0,??DataTable13_42
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_38
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable13
        STR      R0,[R1, #+24]
//  408  if(PID_SPEED.OUT<-PID_ANGLE.P*Backward_Safe_Angle)
??Moto_Out_5:
        MOVS     R0,R4
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable13_42
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable13
        LDR      R0,[R0, #+24]
        BL       __aeabi_cfcmple
        BCS.N    ??Moto_Out_6
//  409  PID_SPEED.OUT=-PID_ANGLE.P*Backward_Safe_Angle;
        MOVS     R0,R4
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable13_42
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable13
        STR      R0,[R1, #+24]
//  410 
//  411  Sum=PID_ANGLE.OUT+PID_SPEED.OUT;
??Moto_Out_6:
        LDR.W    R0,??DataTable13_42
        LDR      R1,[R0, #+24]
        LDR.W    R0,??DataTable13
        LDR      R0,[R0, #+24]
        BL       __aeabi_fadd
        MOVS     R6,R0
//  412  
//  413  
//  414   Sum=constrain(Sum,-0.9,0.9);
        LDR.W    R0,??DataTable13_43  ;; 0xcccccccd
        LDR.W    R1,??DataTable13_44  ;; 0x3feccccc
        STRD     R0,R1,[SP, #+0]
        LDR.W    R2,??DataTable13_43  ;; 0xcccccccd
        LDR.W    R3,??DataTable13_45  ;; 0xbfeccccc
        MOVS     R4,R2
        MOVS     R5,R3
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       constrain
        BL       __aeabi_i2f
        MOVS     R6,R0
//  415  
//  416  if(RoadType==5)
        LDR.W    R0,??DataTable13_46
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Moto_Out_7
//  417  {
//  418    Sum=constrain(Sum,-0.85,0.85);
        MOVS     R0,#+858993459
        LDR.W    R1,??DataTable13_47  ;; 0x3feb3333
        STRD     R0,R1,[SP, #+0]
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable13_48  ;; 0xbfeb3333
        MOVS     R4,R2
        MOVS     R5,R3
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       constrain
        BL       __aeabi_i2f
        MOVS     R6,R0
//  419  }
//  420  
//  421   LeftMotorOut=Sum+PID_TURN.OUT;   //计算输出值
??Moto_Out_7:
        LDR.W    R0,??DataTable12_2
        LDR      R0,[R0, #+24]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable13_49
        STR      R0,[R1, #+0]
//  422   RightMotorOut=Sum-PID_TURN.OUT; 
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_2
        LDR      R1,[R1, #+24]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable13_50
        STR      R0,[R1, #+0]
//  423   
//  424  //正值限幅，防止减速过大
//  425   if((RunTime>1)&&(RoadType==0)&&(Debug_Index!=1))
        LDR.W    R0,??DataTable13_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_51  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_8
        LDR.W    R0,??DataTable13_46
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Moto_Out_8
        LDR.W    R0,??DataTable13_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Moto_Out_8
//  426   {
//  427     if(LeftMotorOut>0)  LeftMotorOut=0;
        LDR.W    R0,??DataTable13_49
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Moto_Out_9
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_49
        STR      R0,[R1, #+0]
//  428     if(RightMotorOut>0)  RightMotorOut=0;
??Moto_Out_9:
        LDR.W    R0,??DataTable13_50
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??Moto_Out_8
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_50
        STR      R0,[R1, #+0]
//  429   }
//  430    
//  431   if(LeftMotorOut<0)LeftMotorOut-=L_DeadValue;
??Moto_Out_8:
        LDR.W    R0,??DataTable13_49
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??Moto_Out_10
        LDR.W    R0,??DataTable13_49
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_52
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable13_49
        STR      R0,[R1, #+0]
//  432   if(RightMotorOut<0)RightMotorOut-=R_DeadValue;
??Moto_Out_10:
        LDR.W    R0,??DataTable13_50
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??Moto_Out_11
        LDR.W    R0,??DataTable13_50
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_53
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable13_50
        STR      R0,[R1, #+0]
//  433   
//  434   if(RightMotorOut>0.999)RightMotorOut=0.999;                     
??Moto_Out_11:
        LDR.W    R0,??DataTable13_50
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_54  ;; 0x3f7fbe77
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_12
        LDR.W    R0,??DataTable13_54  ;; 0x3f7fbe77
        LDR.W    R1,??DataTable13_50
        STR      R0,[R1, #+0]
//  435   if(RightMotorOut<-0.999)RightMotorOut=-0.999; 
??Moto_Out_12:
        LDR.W    R0,??DataTable13_50
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_55  ;; 0xbf7fbe76
        BL       __aeabi_cfcmple
        BCS.N    ??Moto_Out_13
        LDR.W    R0,??DataTable13_56  ;; 0xbf7fbe77
        LDR.W    R1,??DataTable13_50
        STR      R0,[R1, #+0]
//  436   if(LeftMotorOut>0.999)LeftMotorOut=0.999;                     
??Moto_Out_13:
        LDR.W    R0,??DataTable13_49
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_54  ;; 0x3f7fbe77
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_14
        LDR.W    R0,??DataTable13_54  ;; 0x3f7fbe77
        LDR.W    R1,??DataTable13_49
        STR      R0,[R1, #+0]
//  437   if(LeftMotorOut<-0.999)LeftMotorOut=-0.999; 
??Moto_Out_14:
        LDR.W    R0,??DataTable13_49
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_55  ;; 0xbf7fbe76
        BL       __aeabi_cfcmple
        BCS.N    ??Moto_Out_15
        LDR.W    R0,??DataTable13_56  ;; 0xbf7fbe77
        LDR.W    R1,??DataTable13_49
        STR      R0,[R1, #+0]
//  438   
//  439   L_Value=(int)(10000*LeftMotorOut);
??Moto_Out_15:
        LDR.W    R0,??DataTable13_49
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_57  ;; 0x461c4000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R4,R0
//  440   R_Value=(int)(10000*RightMotorOut);
        LDR.W    R0,??DataTable13_50
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_57  ;; 0x461c4000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R5,R0
//  441  
//  442  /////////////////////保护////////////////////////////
//  443  if(Car_Angle<-55||Car_Angle>20)             //倒下
        LDR.W    R0,??DataTable13_58
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_59  ;; 0xc25c0000
        BL       __aeabi_cfcmple
        BCC.N    ??Moto_Out_16
        LDR.W    R0,??DataTable13_58
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_60  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_17
//  444  {
//  445    if(Stop==false&&RunTime>2)
??Moto_Out_16:
        LDR.W    R0,??DataTable13_61
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Moto_Out_17
        LDR.W    R0,??DataTable13_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_62  ;; 0x40000001
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_17
//  446    {
//  447     Stop=true;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable13_61
        STRB     R0,[R1, #+0]
//  448     CarStopedJustNow=true; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable13_63
        STRB     R0,[R1, #+0]
//  449     Motor_Abnormal_Cnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_64
        STR      R0,[R1, #+0]
//  450    }
//  451  }
//  452  if((Distance>1)&&(Stop==false)&&Protect)               //              检测是否是速度异常
??Moto_Out_17:
        LDR.W    R0,??DataTable13_65
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_51  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_18
        LDR.W    R0,??DataTable13_61
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Moto_Out_18
        LDR.W    R0,??DataTable13_66
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Moto_Out_18
//  453  {
//  454     if((CarSpeed<0.5)||(CarSpeed>4)) 
        LDR.W    R0,??DataTable13_67
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1056964608
        BL       __aeabi_cfcmple
        BCC.N    ??Moto_Out_19
        LDR.W    R0,??DataTable13_67
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_68  ;; 0x40800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_20
//  455     {
//  456        Motor_Abnormal_Cnt++;
??Moto_Out_19:
        LDR.W    R0,??DataTable13_64
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_64
        STR      R0,[R1, #+0]
//  457        if(Motor_Abnormal_Cnt>600) //电机异常的持续时间大于600ms秒
        LDR.W    R0,??DataTable13_64
        LDR      R0,[R0, #+0]
        CMP      R0,#+600
        BLE.N    ??Moto_Out_18
//  458        {
//  459           Stop=true;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable13_61
        STRB     R0,[R1, #+0]
//  460           CarStopedJustNow=true; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable13_63
        STRB     R0,[R1, #+0]
        B.N      ??Moto_Out_18
//  461        }
//  462     } 
//  463     else
//  464     {
//  465        Motor_Abnormal_Cnt=0;
??Moto_Out_20:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_64
        STR      R0,[R1, #+0]
//  466     }
//  467  }
//  468  if(Stop)                                //如果停止则电机不输出
??Moto_Out_18:
        LDR.W    R0,??DataTable13_61
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Moto_Out_21
//  469  {
//  470    ForceStop=false;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_69
        STRB     R0,[R1, #+0]
//  471    if(Debug_Motor_ON==false)
        LDR.W    R0,??DataTable13_70
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Moto_Out_21
//  472    {
//  473     L_Value=0;
        MOVS     R4,#+0
//  474     R_Value=0;
        MOVS     R5,#+0
//  475    }
//  476  }
//  477   if(ForceStop)
??Moto_Out_21:
        LDR.W    R0,??DataTable13_69
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Moto_Out_22
//  478   {
//  479    L_Value=4000;
        MOV      R4,#+4000
//  480    R_Value=4000;
        MOV      R5,#+4000
//  481   }
//  482  ////////////////////////////////////////////////
//  483  if(L_Value>=0)
??Moto_Out_22:
        CMP      R4,#+0
        BMI.N    ??Moto_Out_23
//  484  {
//  485   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,L_Value);
        MOVS     R2,R4
        MOVS     R1,#+7
        LDR.W    R0,??DataTable13_71  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  486   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,0);
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.W    R0,??DataTable13_71  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Moto_Out_24
//  487  }
//  488  else
//  489  {
//  490    L_Value=-L_Value;
??Moto_Out_23:
        RSBS     R4,R4,#+0
//  491    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,L_Value);
        MOVS     R2,R4
        MOVS     R1,#+7
        LDR.W    R0,??DataTable13_71  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  492    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch7,0);
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.W    R0,??DataTable13_71  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  493  }
//  494  
//  495   if(R_Value>=0)
??Moto_Out_24:
        CMP      R5,#+0
        BMI.N    ??Moto_Out_25
//  496  { 
//  497   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,R_Value);
        MOVS     R2,R5
        MOVS     R1,#+5
        LDR.W    R0,??DataTable13_71  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  498   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable13_71  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Moto_Out_26
//  499  }
//  500  else
//  501  {
//  502   R_Value=-R_Value;
??Moto_Out_25:
        RSBS     R5,R5,#+0
//  503   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,R_Value);
        MOVS     R2,R5
        MOVS     R1,#+5
        LDR.W    R0,??DataTable13_71  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  504   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable13_71  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  505  }
//  506  
//  507 }
??Moto_Out_26:
        POP      {R0,R1,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     SpeedControlOutNew

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     SpeedCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     Speed_Filter_Times

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??Forward_Safe_Angle:
        DATA
        DC32 420C0000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Motor_Abnormal_Cnt:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  508 float Slope_Calculate(uint8 begin,uint8 end,float *p)    //最小二乘法拟合斜率
//  509 {
Slope_Calculate:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R10,R2
//  510   float xsum=0,ysum=0,xysum=0,x2sum=0;
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
//  511    uint8 i=0;
        MOVS     R11,#+0
//  512    float result=0;
        MOVS     R0,#+0
//  513    static float resultlast;
//  514    p=p+begin;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R10,R10,R4, LSL #+2
//  515    for(i=begin;i<end;i++)
        MOV      R11,R4
        B.N      ??Slope_Calculate_0
//  516    {
//  517 	   xsum+=i;
??Slope_Calculate_1:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOV      R0,R11
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        MOVS     R6,R0
//  518 	   ysum+=*p;
        LDR      R0,[R10, #+0]
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
//  519 	   xysum+=i*(*p);
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOV      R0,R11
        BL       __aeabi_ui2f
        LDR      R1,[R10, #+0]
        BL       __aeabi_fmul
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R8,R0
//  520 	   x2sum+=i*i;
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MUL      R0,R11,R11
        BL       __aeabi_i2f
        MOV      R1,R9
        BL       __aeabi_fadd
        MOV      R9,R0
//  521 	   p=p+1;
        ADDS     R10,R10,#+4
//  522    }
        ADDS     R11,R11,#+1
??Slope_Calculate_0:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R11,R5
        BCC.N    ??Slope_Calculate_1
//  523   if((end-begin)*x2sum-xsum*xsum) //判断除数是否为零 
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
//  524   {
//  525     result=((end-begin)*xysum-xsum*ysum)/((end-begin)*x2sum-xsum*xsum);
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
//  526     resultlast=result;
        LDR.N    R1,??DataTable13_72
        STR      R0,[R1, #+0]
        B.N      ??Slope_Calculate_3
//  527   }
//  528   else
//  529   {
//  530    result=resultlast;
??Slope_Calculate_2:
        LDR.N    R0,??DataTable13_72
        LDR      R0,[R0, #+0]
//  531   }
//  532   return result;
??Slope_Calculate_3:
        POP      {R1,R4-R11,PC}   ;; return
//  533 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0xbba3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     Gyro_X

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     Gyro_X_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     ??Calculate_Length

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     Delta_P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     Delt_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     Delta_D

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     Previous_Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     0xc1200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     Fuzzy_Kp

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??resultlast:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  534 float  Turn_Out_Filter(float turn_out)    //转向控制输出滤波      
//  535 {
Turn_Out_Filter:
        PUSH     {R3-R5,LR}
//  536   float Turn_Out_Filtered; 
//  537   static float Pre1_Error[4]; 
//  538   Pre1_Error[3]=Pre1_Error[2];
        LDR.N    R1,??DataTable13_73
        LDR      R1,[R1, #+8]
        LDR.N    R2,??DataTable13_73
        STR      R1,[R2, #+12]
//  539   Pre1_Error[2]=Pre1_Error[1];
        LDR.N    R1,??DataTable13_73
        LDR      R1,[R1, #+4]
        LDR.N    R2,??DataTable13_73
        STR      R1,[R2, #+8]
//  540   Pre1_Error[1]=Pre1_Error[0];
        LDR.N    R1,??DataTable13_73
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable13_73
        STR      R1,[R2, #+4]
//  541   Pre1_Error[0]=turn_out;
        LDR.N    R1,??DataTable13_73
        STR      R0,[R1, #+0]
//  542   Turn_Out_Filtered=Pre1_Error[0]*0.4+Pre1_Error[1]*0.3+Pre1_Error[2]*0.2+Pre1_Error[3]*0.1;
        LDR.N    R0,??DataTable13_73
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable13_74  ;; 0x9999999a
        LDR.N    R3,??DataTable13_75  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable13_73
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable13_76  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable13_73
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable13_74  ;; 0x9999999a
        LDR.N    R3,??DataTable13_77  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable13_73
        LDR      R0,[R0, #+12]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable13_74  ;; 0x9999999a
        LDR.N    R3,??DataTable13_78  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
//  543   return Turn_Out_Filtered;
        POP      {R1,R4,R5,PC}    ;; return
//  544 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     Turn_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     Fuzzy_Kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     PID_TURN

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Pre1_Error:
        DS8 16

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  545 float  Middle_Err_Filter(float middle_err)    //中心偏差滤波      
//  546 {
Middle_Err_Filter:
        PUSH     {R3-R5,LR}
//  547   float Middle_Err_Fltered; 
//  548   static float Pre3_Error[4]; 
//  549   Pre3_Error[3]=Pre3_Error[2];
        LDR.N    R1,??DataTable13_79
        LDR      R1,[R1, #+8]
        LDR.N    R2,??DataTable13_79
        STR      R1,[R2, #+12]
//  550   Pre3_Error[2]=Pre3_Error[1];
        LDR.N    R1,??DataTable13_79
        LDR      R1,[R1, #+4]
        LDR.N    R2,??DataTable13_79
        STR      R1,[R2, #+8]
//  551   Pre3_Error[1]=Pre3_Error[0];
        LDR.N    R1,??DataTable13_79
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable13_79
        STR      R1,[R2, #+4]
//  552   Pre3_Error[0]=middle_err;
        LDR.N    R1,??DataTable13_79
        STR      R0,[R1, #+0]
//  553   Middle_Err_Fltered=Pre3_Error[0]*0.4+Pre3_Error[1]*0.3+Pre3_Error[2]*0.2+Pre3_Error[3]*0.1;
        LDR.N    R0,??DataTable13_79
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable13_74  ;; 0x9999999a
        LDR.N    R3,??DataTable13_75  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable13_79
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable13_76  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable13_79
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable13_74  ;; 0x9999999a
        LDR.N    R3,??DataTable13_77  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable13_79
        LDR      R0,[R0, #+12]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable13_74  ;; 0x9999999a
        LDR.N    R3,??DataTable13_78  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
//  554   return Middle_Err_Fltered;
        POP      {R1,R4,R5,PC}    ;; return
//  555 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     PID_SPEED

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x3ff66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     DirectionControlOutNew

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     DirectionControlOutOld

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     Turn_Out

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     RoadTypeConfirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0x3fe99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0x3e4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0xbe4ccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0xbe4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     Strong_Turn_En

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     Strong_Turn_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     CCD_Draw_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     Turn_Angle_Integral

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     Strong_Turn_Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     0x3f333334

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_16:
        DC32     0x3f333333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_17:
        DC32     0xbf333333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_18:
        DC32     0x3e19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_19:
        DC32     0xbe199999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_20:
        DC32     0xbe19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_21:
        DC32     Turn_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_22:
        DC32     Right_Or_Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_23:
        DC32     Barri_Turn_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_24:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_25:
        DC32     0x3f847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_26:
        DC32     Barri_Turn_Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_27:
        DC32     0x3e800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_28:
        DC32     0xbe800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_29:
        DC32     0x3c449ba6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_30:
        DC32     0x3ca3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_31:
        DC32     ??Last_Turn_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_32:
        DC32     Strong_Turn_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_33:
        DC32     DirectionCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_34:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_35:
        DC32     RunTime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_36:
        DC32     0x3ecccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_37:
        DC32     Set_Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_38:
        DC32     ??Forward_Safe_Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_39:
        DC32     0x420c0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_40:
        DC32     0xbf847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_41:
        DC32     Debug_Index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_42:
        DC32     PID_ANGLE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_43:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_44:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_45:
        DC32     0xbfeccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_46:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_47:
        DC32     0x3feb3333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_48:
        DC32     0xbfeb3333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_49:
        DC32     LeftMotorOut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_50:
        DC32     RightMotorOut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_51:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_52:
        DC32     L_DeadValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_53:
        DC32     R_DeadValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_54:
        DC32     0x3f7fbe77

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_55:
        DC32     0xbf7fbe76

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_56:
        DC32     0xbf7fbe77

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_57:
        DC32     0x461c4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_58:
        DC32     Car_Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_59:
        DC32     0xc25c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_60:
        DC32     0x41a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_61:
        DC32     Stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_62:
        DC32     0x40000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_63:
        DC32     CarStopedJustNow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_64:
        DC32     ??Motor_Abnormal_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_65:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_66:
        DC32     Protect

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_67:
        DC32     CarSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_68:
        DC32     0x40800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_69:
        DC32     ForceStop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_70:
        DC32     Debug_Motor_ON

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_71:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_72:
        DC32     ??resultlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_73:
        DC32     ??Pre1_Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_74:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_75:
        DC32     0x3fd99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_76:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_77:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_78:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_79:
        DC32     ??Pre3_Error

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Pre3_Error:
        DS8 16

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
//   399 bytes in section .bss
//    45 bytes in section .data
// 5 572 bytes in section .text
// 
// 5 572 bytes of CODE memory
//   444 bytes of DATA memory
//
//Errors: none
//Warnings: 7
