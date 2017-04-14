///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       16/Jul/2016  13:18:55
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\debug.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\debug.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\debug.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Correct_Err
        EXTERN DebugData_Save
        EXTERN Fuzzy_Kd
        EXTERN Fuzzy_Kp
        EXTERN K_CrossRoad
        EXTERN LPLD_GPIO_Input_b
        EXTERN Left
        EXTERN Leftlastfind
        EXTERN Max_Peak
        EXTERN Max_Value
        EXTERN Middle_Err
        EXTERN OLED_Fill
        EXTERN OLED_P6x8Char
        EXTERN OLED_P6x8Str
        EXTERN OLED_PrintValueF
        EXTERN OLED_PrintValueI
        EXTERN OLED_Set_Pos
        EXTERN OLED_WrDat
        EXTERN PID_Speed
        EXTERN PID_Turn
        EXTERN P_CrossRoad
        EXTERN Right
        EXTERN Rightlastfind
        EXTERN SetSpeed
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2f
        EXTERN delay200ns
        EXTERN reverse

        PUBLIC CCD_Draw_Buff
        PUBLIC Control_Para0
        PUBLIC Control_Para1
        PUBLIC Control_Para2
        PUBLIC Delay_2ms
        PUBLIC Display_Edge
        PUBLIC Draw_CCD
        PUBLIC If_Button_Press
        PUBLIC OLED_Draw_UI
        PUBLIC Page_Index
        PUBLIC Para_Checked
        PUBLIC Para_Choice
        PUBLIC Para_Index
        PUBLIC Para_Name
        PUBLIC Para_Name1
        PUBLIC Para_Name2
        PUBLIC Step
        PUBLIC Step_Index
        PUBLIC Voltage

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\debug.c
//    1 #include "debug.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    2 uint8 CCD_Draw_Buff[150]={0};
CCD_Draw_Buff:
        DS8 152

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    3 uint8 Page_Index=0,Para_Index=0,Para_Checked=0,Para_Choice=0;
Page_Index:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Para_Index:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Para_Checked:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Para_Choice:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    4 uint8 Display_Edge=1;
Display_Edge:
        DATA
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    5 uint8 Step_Index=2;
Step_Index:
        DATA
        DC8 2

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    6 float Step[6]={0.0001,0.001,0.01,0.1,1.0,10.0}; 
Step:
        DATA
        DC32 38D1B717H, 3A83126FH, 3C23D70AH, 3DCCCCCDH, 3F800000H, 41200000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 float Voltage=0;
Voltage:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    8 char Para_Name[5][12]={"PID_SPEED.P\0",
Para_Name:
        DATA
        DC8 "PID_SPEED.P"
        DC8 "PID_SPEED.I"
        DC8 "PID_SPEED.D"
        DC8 "PID_DIREC.P"
        DC8 "PID_DIREC.I"
//    9 "PID_SPEED.I\0","PID_SPEED.D\0","PID_DIREC.P\0","PID_DIREC.I\0"};

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   10 char Para_Name1[5][12]={"PID_DIREC.D\0","Fuzzy_Kp\0","Fuzzy_Kd\0","Correct_Err\0","K_CrossRoad\0"};
Para_Name1:
        DATA
        DC8 "PID_DIREC.D"
        DC8 46H, 75H, 7AH, 7AH, 79H, 5FH, 4BH, 70H
        DC8 0, 0
        DC8 0, 0
        DC8 46H, 75H, 7AH, 7AH, 79H, 5FH, 4BH, 64H
        DC8 0, 0
        DC8 0, 0
        DC8 "Correct_Err"
        DC8 "K_CrossRoad"

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   11 char Para_Name2[3][12]={"SetSpeed\0","P_CrossRoad\0","SAVE\0"};
Para_Name2:
        DATA
        DC8 53H, 65H, 74H, 53H, 70H, 65H, 65H, 64H
        DC8 0, 0
        DC8 0, 0
        DC8 "P_CrossRoad"
        DC8 53H, 41H, 56H, 45H, 0, 0
        DC8 0, 0, 0, 0, 0, 0
//   12 //将PID变量的地址加到指针数组里

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 float *Control_Para0[5]={&PID_Speed.P,&PID_Speed.I,&PID_Speed.D,&PID_Turn.P,&PID_Turn.I};
Control_Para0:
        DATA
        DC32 PID_Speed, PID_Speed + 8H, PID_Speed + 10H, PID_Turn
        DC32 PID_Turn + 8H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 float *Control_Para1[5]={&PID_Turn.D,&Fuzzy_Kp,&Fuzzy_Kd,&Correct_Err,&K_CrossRoad};
Control_Para1:
        DATA
        DC32 PID_Turn + 10H, Fuzzy_Kp, Fuzzy_Kd, Correct_Err, K_CrossRoad

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   15 float *Control_Para2[2]={&SetSpeed,&P_CrossRoad};
Control_Para2:
        DATA
        DC32 SetSpeed, P_CrossRoad
//   16 /********绘制界面********/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void OLED_Draw_UI()
//   18 {
OLED_Draw_UI:
        PUSH     {R4,LR}
//   19   uint8 i;
//   20   
//   21   if(Page_Index!=3)
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??OLED_Draw_UI_0
//   22   {
//   23      OLED_P6x8Str(0,0,"Voltage=");                          //显示电池电压
        LDR.W    R2,??DataTable2_1
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_P6x8Str
//   24      OLED_PrintValueF(48, 0,Voltage,3);     
        MOVS     R3,#+3
        LDR.W    R0,??DataTable2_2
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+48
        BL       OLED_PrintValueF
//   25      OLED_P6x8Str(0,1,"Step=");
        LDR.W    R2,??DataTable2_3
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       OLED_P6x8Str
//   26      OLED_PrintValueF(36, 1,Step[Step_Index],5); 
        MOVS     R3,#+5
        LDR.W    R0,??DataTable2_4
        LDR.W    R1,??DataTable2_5
        LDRB     R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        MOVS     R1,#+1
        MOVS     R0,#+36
        BL       OLED_PrintValueF
//   27      OLED_Set_Pos(122,7);
        MOVS     R1,#+7
        MOVS     R0,#+122
        BL       OLED_Set_Pos
//   28      OLED_P6x8Char(Page_Index+48);                         //写出页面序号
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//   29   
//   30   }
//   31   
//   32   
//   33   /*************************************************************/
//   34   if(Page_Index==0) //第0页 显示PID_Speed PID_Turn
??OLED_Draw_UI_0:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??OLED_Draw_UI_1
//   35   {
//   36     for(i=0;i<5;i++)
        MOVS     R4,#+0
        B.N      ??OLED_Draw_UI_2
//   37     {
//   38       if(i==Para_Index && Para_Choice==1 &&  Para_Checked==0 )
//   39       {
//   40         reverse=1;
//   41         OLED_P6x8Str(0,i+3,Para_Name[i]);   //将参量名反转显示
//   42         reverse=0;
//   43       
//   44       
//   45       }
//   46       else
//   47         OLED_P6x8Str(0,i+3,Para_Name[i]);
//   48       
//   49       
//   50       if(i==(Para_Index) && Para_Checked==1)
//   51       {
//   52         reverse=1;
//   53         OLED_PrintValueF(72, i+3,*Control_Para0[i],5);
//   54         reverse=0;
//   55       }
//   56       else OLED_PrintValueF(72, i+3,*Control_Para0[i],5);
??OLED_Draw_UI_3:
        MOVS     R3,#+5
        LDR.W    R0,??DataTable2_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R2,[R0, #+0]
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+72
        BL       OLED_PrintValueF
??OLED_Draw_UI_4:
        ADDS     R4,R4,#+1
??OLED_Draw_UI_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BGE.W    ??OLED_Draw_UI_5
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??OLED_Draw_UI_6
        LDR.W    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??OLED_Draw_UI_6
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??OLED_Draw_UI_6
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable2_11
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R2,R1,R4,R0
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       OLED_P6x8Str
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        B.N      ??OLED_Draw_UI_7
??OLED_Draw_UI_6:
        LDR.W    R0,??DataTable2_11
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R2,R1,R4,R0
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       OLED_P6x8Str
??OLED_Draw_UI_7:
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??OLED_Draw_UI_3
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??OLED_Draw_UI_3
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        MOVS     R3,#+5
        LDR.W    R0,??DataTable2_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R2,[R0, #+0]
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+72
        BL       OLED_PrintValueF
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        B.N      ??OLED_Draw_UI_4
//   57 
//   58     
//   59     }
//   60   
//   61   }
//   62   else if(Page_Index==1)  //第1页信息  Delta信息， setspeed ，模糊参数
??OLED_Draw_UI_1:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??OLED_Draw_UI_8
//   63   {
//   64     for(i=0;i<5;i++)
        MOVS     R4,#+0
        B.N      ??OLED_Draw_UI_9
//   65     {
//   66       if(i==Para_Index && Para_Choice==1 &&  Para_Checked==0 )
//   67       {
//   68         reverse=1;
//   69         OLED_P6x8Str(0,i+3,Para_Name1[i]);   //将参量名反转显示
//   70         reverse=0;
//   71       
//   72       
//   73       }
//   74       else
//   75         OLED_P6x8Str(0,i+3,Para_Name1[i]);
//   76       
//   77       
//   78       if(i==(Para_Index) && Para_Checked==1)
//   79       {
//   80         reverse=1;
//   81         OLED_PrintValueF(72, i+3,*Control_Para1[i],5);
//   82         reverse=0;
//   83       }
//   84       else OLED_PrintValueF(72, i+3,*Control_Para1[i],5);
??OLED_Draw_UI_10:
        MOVS     R3,#+5
        LDR.W    R0,??DataTable2_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R2,[R0, #+0]
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+72
        BL       OLED_PrintValueF
??OLED_Draw_UI_11:
        ADDS     R4,R4,#+1
??OLED_Draw_UI_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BGE.W    ??OLED_Draw_UI_5
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??OLED_Draw_UI_12
        LDR.W    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??OLED_Draw_UI_12
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??OLED_Draw_UI_12
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable2_13
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R2,R1,R4,R0
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       OLED_P6x8Str
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        B.N      ??OLED_Draw_UI_13
??OLED_Draw_UI_12:
        LDR.W    R0,??DataTable2_13
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R2,R1,R4,R0
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       OLED_P6x8Str
??OLED_Draw_UI_13:
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??OLED_Draw_UI_10
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??OLED_Draw_UI_10
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        MOVS     R3,#+5
        LDR.W    R0,??DataTable2_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R2,[R0, #+0]
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+72
        BL       OLED_PrintValueF
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        B.N      ??OLED_Draw_UI_11
//   85 
//   86     
//   87     }
//   88     
//   89 
//   90   }
//   91   else if(Page_Index==2)  //第2页显示整形变量 Threshold
??OLED_Draw_UI_8:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??OLED_Draw_UI_14
//   92   {
//   93    for(i=0;i<3;i++)
        MOVS     R4,#+0
        B.N      ??OLED_Draw_UI_15
//   94     {
//   95       if(i==Para_Index && Para_Choice==1 &&  Para_Checked==0 )
//   96       {
//   97         reverse=1;
//   98         OLED_P6x8Str(0,i+3,Para_Name2[i]);   //将参量名反转显示
//   99         reverse=0;
//  100       
//  101       
//  102       }
//  103       else
//  104         OLED_P6x8Str(0,i+3,Para_Name2[i]);
//  105       
//  106       if(i<=1)
//  107       {
//  108         if(i==(Para_Index) && Para_Checked==1)
//  109         {
//  110           reverse=1;
//  111           OLED_PrintValueF(72, i+3,*Control_Para2[i],5);
//  112 
//  113           reverse=0;
//  114         }
//  115         else OLED_PrintValueF(72, i+3,*Control_Para2[i],5);     
??OLED_Draw_UI_16:
        MOVS     R3,#+5
        LDR.W    R0,??DataTable2_14
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R2,[R0, #+0]
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+72
        BL       OLED_PrintValueF
??OLED_Draw_UI_17:
        ADDS     R4,R4,#+1
??OLED_Draw_UI_15:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BGE.N    ??OLED_Draw_UI_5
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??OLED_Draw_UI_18
        LDR.W    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??OLED_Draw_UI_18
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??OLED_Draw_UI_18
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable2_15
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R2,R1,R4,R0
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       OLED_P6x8Str
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        B.N      ??OLED_Draw_UI_19
??OLED_Draw_UI_18:
        LDR.W    R0,??DataTable2_15
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R2,R1,R4,R0
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       OLED_P6x8Str
??OLED_Draw_UI_19:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BGE.N    ??OLED_Draw_UI_17
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??OLED_Draw_UI_16
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??OLED_Draw_UI_16
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        MOVS     R3,#+5
        LDR.W    R0,??DataTable2_14
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R2,[R0, #+0]
        ADDS     R1,R4,#+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+72
        BL       OLED_PrintValueF
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
        B.N      ??OLED_Draw_UI_17
//  116       
//  117       
//  118       
//  119       }
//  120 
//  121 
//  122     
//  123     }
//  124       
//  125   
//  126   
//  127   
//  128   }
//  129   else if(Page_Index==3)
??OLED_Draw_UI_14:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??OLED_Draw_UI_5
//  130   {
//  131     Draw_CCD();
        BL       Draw_CCD
//  132   
//  133   }
//  134 }
??OLED_Draw_UI_5:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void Draw_CCD()
//  136 {
Draw_CCD:
        PUSH     {R3-R7,LR}
//  137   uint8 i,j,line,dot;
//  138   uint8 temp=0;
        MOVS     R0,#+0
//  139   for(j=0;j<128;j++)
        MOVS     R4,#+0
        B.N      ??Draw_CCD_0
??Draw_CCD_1:
        ADDS     R4,R4,#+1
??Draw_CCD_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BGE.N    ??Draw_CCD_2
//  140   {  
//  141 
//  142     temp=32-(uint8)(CCD_Draw_Buff[j]>>2);  //除以4
        LDR.W    R0,??DataTable2_16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R4, R0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+2
        RSBS     R0,R0,#+32
//  143     line=temp/8;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+8
        SDIV     R5,R0,R1
//  144     dot =temp%8; 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+8
        SDIV     R6,R0,R1
        MLS      R6,R6,R1,R0
//  145 
//  146     for(i=0;i<4;i++)
        MOVS     R7,#+0
        B.N      ??Draw_CCD_3
//  147     {
//  148         OLED_Set_Pos(j,i);
//  149       if(Display_Edge&&((CCD_Draw_Buff[128]!=0&& CCD_Draw_Buff[128]==j)||( CCD_Draw_Buff[129]!=128&& CCD_Draw_Buff[129]==j)))
//  150       {
//  151        if( CCD_Draw_Buff[128]==j) 
//  152        { 
//  153          if(Leftlastfind)     OLED_WrDat(0xff,0);  
//  154          else                 OLED_WrDat(0xaa,0); 
//  155        }
//  156        else 
//  157        { 
//  158          if(Rightlastfind)  OLED_WrDat(0xff,0);  
//  159          else               OLED_WrDat(0xaa,0);  
//  160        }
//  161              
//  162       }
//  163       else
//  164       { 
//  165        if(i==line)
//  166        OLED_WrDat(1<<dot,0);
//  167        else 
//  168        OLED_WrDat(0,0);
??Draw_CCD_4:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_WrDat
??Draw_CCD_5:
        ADDS     R7,R7,#+1
??Draw_CCD_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+4
        BGE.N    ??Draw_CCD_1
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        LDR.W    R0,??DataTable2_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Draw_CCD_6
        LDR.W    R0,??DataTable2_16
        LDRB     R0,[R0, #+128]
        CMP      R0,#+0
        BEQ.N    ??Draw_CCD_7
        LDR.W    R0,??DataTable2_16
        LDRB     R0,[R0, #+128]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BEQ.N    ??Draw_CCD_8
??Draw_CCD_7:
        LDR.W    R0,??DataTable2_16
        LDRB     R0,[R0, #+129]
        CMP      R0,#+128
        BEQ.N    ??Draw_CCD_6
        LDR.W    R0,??DataTable2_16
        LDRB     R0,[R0, #+129]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??Draw_CCD_6
??Draw_CCD_8:
        LDR.W    R0,??DataTable2_16
        LDRB     R0,[R0, #+128]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??Draw_CCD_9
        LDR.W    R0,??DataTable2_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Draw_CCD_10
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       OLED_WrDat
        B.N      ??Draw_CCD_5
??Draw_CCD_10:
        MOVS     R1,#+0
        MOVS     R0,#+170
        BL       OLED_WrDat
        B.N      ??Draw_CCD_5
??Draw_CCD_9:
        LDR.W    R0,??DataTable2_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Draw_CCD_11
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       OLED_WrDat
        B.N      ??Draw_CCD_5
??Draw_CCD_11:
        MOVS     R1,#+0
        MOVS     R0,#+170
        BL       OLED_WrDat
        B.N      ??Draw_CCD_5
??Draw_CCD_6:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R7,R5
        BNE.N    ??Draw_CCD_4
        MOVS     R1,#+0
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrDat
        B.N      ??Draw_CCD_5
//  169       }
//  170     }
//  171   }
//  172    OLED_P6x8Str(1,4,"Left=");
??Draw_CCD_2:
        LDR.W    R2,??DataTable2_20
        MOVS     R1,#+4
        MOVS     R0,#+1
        BL       OLED_P6x8Str
//  173    OLED_PrintValueF(31, 4,Left,3);
        MOVS     R3,#+3
        MOVS     R4,R3
        LDR.W    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R3,R4
        MOVS     R1,#+4
        MOVS     R0,#+31
        BL       OLED_PrintValueF
//  174    OLED_P6x8Str(64,4,"Right="); 
        LDR.W    R2,??DataTable2_22
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       OLED_P6x8Str
//  175    OLED_PrintValueF(100, 4, Right,3);
        MOVS     R3,#+3
        MOVS     R4,R3
        LDR.W    R0,??DataTable2_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R3,R4
        MOVS     R1,#+4
        MOVS     R0,#+100
        BL       OLED_PrintValueF
//  176    OLED_P6x8Str(0,5,"Middle_Err=");
        LDR.W    R2,??DataTable2_24
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       OLED_P6x8Str
//  177    OLED_PrintValueF(72, 5,Middle_Err,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable2_25
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+72
        BL       OLED_PrintValueF
//  178    OLED_P6x8Str(0,6,     "Max_Peak  =");
        LDR.W    R2,??DataTable2_26
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P6x8Str
//  179    OLED_PrintValueF(72, 6,Max_Peak,3);     
        MOVS     R3,#+3
        MOVS     R4,R3
        LDR.W    R0,??DataTable2_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R3,R4
        MOVS     R1,#+6
        MOVS     R0,#+72
        BL       OLED_PrintValueF
//  180    OLED_P6x8Str(0,7,  "Max_Value =");
        LDR.W    R2,??DataTable2_28
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       OLED_P6x8Str
//  181    OLED_PrintValueF(72, 7,Max_Value,4);
        MOVS     R3,#+4
        MOVS     R4,R3
        LDR.W    R0,??DataTable2_29
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R3,R4
        MOVS     R1,#+7
        MOVS     R0,#+72
        BL       OLED_PrintValueF
//  182    OLED_Set_Pos(122,7);
        MOVS     R1,#+7
        MOVS     R0,#+122
        BL       OLED_Set_Pos
//  183    OLED_P6x8Char('L');      
        MOVS     R0,#+76
        BL       OLED_P6x8Char
//  184                       
//  185 }
        POP      {R0,R4-R7,PC}    ;; return
//  186 
//  187 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  188 void If_Button_Press(void)
//  189 {
If_Button_Press:
        PUSH     {R7,LR}
//  190 
//  191   if(BT6_In==0)  //按键yes
        MOVS     R1,#+9
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_0
//  192   {
//  193     Delay_2ms();//消除抖动
        BL       Delay_2ms
//  194     if(BT6_In==0)
        MOVS     R1,#+9
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_1
//  195     {
//  196         if(Page_Index==2)
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??If_Button_Press_2
//  197         {
//  198           if(Para_Index<=1)
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??If_Button_Press_3
//  199           {
//  200             if(Para_Choice==0)  Para_Choice=1;  //  选择参量   
        LDR.W    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_4
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_1
//  201             else
//  202             {
//  203               if(Para_Checked==0) Para_Checked=1;
??If_Button_Press_4:
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_5
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_9
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_1
//  204               else Para_Checked=0;       
??If_Button_Press_5:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_9
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_1
//  205             }
//  206           
//  207           }
//  208           else if(Para_Index==2)
??If_Button_Press_3:
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??If_Button_Press_1
//  209           {
//  210               
//  211               
//  212               ////////////////////save e2prom
//  213               DebugData_Save();
        BL       DebugData_Save
//  214               OLED_PrintValueI(72, 5,1);
        MOVS     R2,#+1
        MOVS     R1,#+5
        MOVS     R0,#+72
        BL       OLED_PrintValueI
        B.N      ??If_Button_Press_1
//  215           
//  216           }
//  217         
//  218         }
//  219         else if(Page_Index<=1)
??If_Button_Press_2:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??If_Button_Press_1
//  220         {
//  221           if(Para_Index<5)
        LDR.W    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??If_Button_Press_1
//  222           {
//  223             if(Para_Choice==0)  Para_Choice=1;  //  选择参量   
        LDR.W    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_6
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_1
//  224             else
//  225             {
//  226               if(Para_Checked==0) Para_Checked=1;
??If_Button_Press_6:
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_7
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_9
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_1
//  227               else Para_Checked=0;       
??If_Button_Press_7:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_9
        STRB     R0,[R1, #+0]
//  228             }
//  229           
//  230           }        
//  231         
//  232         
//  233         }
//  234     
//  235     }
//  236     while(BT6_In==0);
??If_Button_Press_1:
        MOVS     R1,#+9
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_1
//  237   
//  238   }
//  239   //btn_cancel 
//  240   if(BT2_In==0)
??If_Button_Press_0:
        MOVS     R1,#+13
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_8
//  241   {
//  242      Delay_2ms();
        BL       Delay_2ms
//  243      if(BT2_In==0)
        MOVS     R1,#+13
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_9
//  244      {
//  245         if(Para_Choice==1) Para_Choice=0;
        LDR.W    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??If_Button_Press_10
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  246         if(Para_Checked==1) Para_Checked=0;
??If_Button_Press_10:
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??If_Button_Press_11
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_9
        STRB     R0,[R1, #+0]
//  247         if(Page_Index==3)
??If_Button_Press_11:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??If_Button_Press_9
//  248         {
//  249           if(Display_Edge) Display_Edge=0;
        LDR.W    R0,??DataTable2_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_12
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_17
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_9
//  250           else Display_Edge=1;
??If_Button_Press_12:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_17
        STRB     R0,[R1, #+0]
//  251         
//  252         }
//  253      
//  254      }
//  255      while(BT2_In==0);
??If_Button_Press_9:
        MOVS     R1,#+13
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_9
//  256   
//  257   }
//  258   
//  259   //btn_left
//  260   if(BT5_In==0)
??If_Button_Press_8:
        MOVS     R1,#+10
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_13
//  261   {
//  262     Delay_2ms();
        BL       Delay_2ms
//  263     if(BT5_In==0)
        MOVS     R1,#+10
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_14
//  264     {
//  265       if(Para_Checked)//有参数被选中时，左右键改变步长
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_15
//  266       {
//  267         if(Step_Index==0)
        LDR.W    R0,??DataTable2_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_16
//  268         {
//  269           Step_Index=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_5
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_14
//  270          
//  271         }
//  272         else Step_Index--;
??If_Button_Press_16:
        LDR.W    R0,??DataTable2_5
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable2_5
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_14
//  273       
//  274       }
//  275       else   //没有参数被选中时翻页
//  276       {
//  277         Para_Index=0;
??If_Button_Press_15:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
//  278         if(Page_Index==0) Page_Index=3;
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_17
        MOVS     R0,#+3
        LDR.W    R1,??DataTable2
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_18
//  279         else Page_Index--;
??If_Button_Press_17:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable2
        STRB     R0,[R1, #+0]
//  280         OLED_Fill(0);  //翻页后首先清空界面
??If_Button_Press_18:
        MOVS     R0,#+0
        BL       OLED_Fill
//  281       
//  282       }
//  283     
//  284     }
//  285     while(BT5_In==0);
??If_Button_Press_14:
        MOVS     R1,#+10
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_14
//  286   
//  287   
//  288   
//  289   
//  290   }
//  291   
//  292   
//  293   //btn_right
//  294   if(BT1_In==0)
??If_Button_Press_13:
        MOVS     R1,#+14
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_19
//  295   {
//  296     Delay_2ms();
        BL       Delay_2ms
//  297     if(BT1_In==0)
        MOVS     R1,#+14
        LDR.W    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_20
//  298     {
//  299       if(Para_Checked)
        LDR.N    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_21
//  300       {
//  301         if(Step_Index==5)
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??If_Button_Press_22
//  302         {
//  303           Step_Index=5;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable2_5
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_20
//  304         }
//  305         else Step_Index++;
??If_Button_Press_22:
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_5
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_20
//  306       
//  307       
//  308       }
//  309       else
//  310       {
//  311         Para_Index=0;
??If_Button_Press_21:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
//  312         if(Page_Index==3) 
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??If_Button_Press_23
//  313         {Page_Index=0;}
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_24
//  314         else Page_Index++;
??If_Button_Press_23:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+0]
//  315         OLED_Fill(0);
??If_Button_Press_24:
        MOVS     R0,#+0
        BL       OLED_Fill
//  316       
//  317       }
//  318     
//  319     
//  320     
//  321     }
//  322     while(BT1_In==0);
??If_Button_Press_20:
        MOVS     R1,#+14
        LDR.N    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_20
//  323   
//  324   
//  325   }
//  326   
//  327   //btn_up
//  328   if(BT4_In==0)
??If_Button_Press_19:
        MOVS     R1,#+11
        LDR.N    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.W    ??If_Button_Press_25
//  329   {
//  330     Delay_2ms();
        BL       Delay_2ms
//  331     if(BT4_In==0)
        MOVS     R1,#+11
        LDR.N    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.W    ??If_Button_Press_26
//  332     {
//  333       if(Para_Choice==1)
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??If_Button_Press_26
//  334       {
//  335         if(Page_Index<=1)
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??If_Button_Press_27
//  336         {
//  337           if(Para_Checked==0)
        LDR.N    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_28
//  338           {
//  339             if(Para_Index==0) Para_Index=4;
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_29
        MOVS     R0,#+4
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_26
//  340             else Para_Index--;
??If_Button_Press_29:
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_26
//  341           }
//  342           else 
//  343           {
//  344             if(Page_Index==0 && Para_Index<=4)
??If_Button_Press_28:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_30
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??If_Button_Press_30
//  345             {
//  346               *Control_Para0[Para_Index]+=Step[Step_Index];
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_7
        LDRB     R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_4
        LDR.N    R2,??DataTable2_5
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_6
        LDR.N    R2,??DataTable2_7
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        STR      R0,[R1, #+0]
        B.N      ??If_Button_Press_26
//  347             
//  348             }
//  349             else if(Page_Index==1 && Para_Index<=4)
??If_Button_Press_30:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??If_Button_Press_26
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??If_Button_Press_26
//  350             {
//  351             
//  352               *Control_Para1[Para_Index]+=Step[Step_Index];
        LDR.N    R0,??DataTable2_12
        LDR.N    R1,??DataTable2_7
        LDRB     R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_4
        LDR.N    R2,??DataTable2_5
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_12
        LDR.N    R2,??DataTable2_7
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        STR      R0,[R1, #+0]
        B.N      ??If_Button_Press_26
//  353             
//  354             }
//  355           
//  356           }
//  357         
//  358         
//  359         
//  360         }
//  361         else if(Page_Index==2)
??If_Button_Press_27:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??If_Button_Press_26
//  362         {
//  363           if(Para_Checked==0)
        LDR.N    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_31
//  364           {
//  365               if(Para_Index==0)  Para_Index=2;
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_32
        MOVS     R0,#+2
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_26
//  366               else Para_Index--;
??If_Button_Press_32:
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_26
//  367 
//  368           }
//  369           else
//  370           {
//  371             if(Para_Index<=1)
??If_Button_Press_31:
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??If_Button_Press_26
//  372             *Control_Para2[Para_Index]+=Step[Step_Index];
        LDR.N    R0,??DataTable2_14
        LDR.N    R1,??DataTable2_7
        LDRB     R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_4
        LDR.N    R2,??DataTable2_5
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_14
        LDR.N    R2,??DataTable2_7
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        STR      R0,[R1, #+0]
//  373             
//  374           }
//  375 
//  376         }
//  377 
//  378       }
//  379       
//  380       
//  381       
//  382       
//  383     }
//  384     while(BT4_In==0);
??If_Button_Press_26:
        MOVS     R1,#+11
        LDR.N    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_26
//  385   
//  386   }
//  387   
//  388   //btn_down
//  389   if(BT3_In==0)
??If_Button_Press_25:
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.W    ??If_Button_Press_33
//  390   {
//  391     Delay_2ms();
        BL       Delay_2ms
//  392     if(BT3_In==0)
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.W    ??If_Button_Press_34
//  393     {
//  394     if(Para_Choice==1)
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??If_Button_Press_34
//  395       {
//  396         if(Page_Index<=1)
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??If_Button_Press_35
//  397         {
//  398           if(Para_Checked==0)
        LDR.N    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_36
//  399           {
//  400             if(Para_Index==4) Para_Index=0;
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??If_Button_Press_37
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_34
//  401             else Para_Index++;
??If_Button_Press_37:
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_34
//  402           }
//  403           else 
//  404           {
//  405             if(Page_Index==0 && Para_Index<=4)
??If_Button_Press_36:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_38
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??If_Button_Press_38
//  406             {
//  407               *Control_Para0[Para_Index]-=Step[Step_Index];
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_7
        LDRB     R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_4
        LDR.N    R2,??DataTable2_5
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_6
        LDR.N    R2,??DataTable2_7
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        STR      R0,[R1, #+0]
        B.N      ??If_Button_Press_34
//  408             
//  409             }
//  410             else if(Page_Index==1 && Para_Index<=4)
??If_Button_Press_38:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??If_Button_Press_34
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??If_Button_Press_34
//  411             {
//  412             
//  413               *Control_Para1[Para_Index]-=Step[Step_Index];
        LDR.N    R0,??DataTable2_12
        LDR.N    R1,??DataTable2_7
        LDRB     R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_4
        LDR.N    R2,??DataTable2_5
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_12
        LDR.N    R2,??DataTable2_7
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        STR      R0,[R1, #+0]
        B.N      ??If_Button_Press_34
//  414             
//  415             }
//  416           
//  417           }
//  418         
//  419         
//  420         
//  421         }
//  422         else if(Page_Index==2)
??If_Button_Press_35:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??If_Button_Press_34
//  423         {
//  424           if(Para_Checked==0)
        LDR.N    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??If_Button_Press_39
//  425           {
//  426             if(Para_Index==2) Para_Index=0;
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??If_Button_Press_40
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_34
//  427             else Para_Index++;
??If_Button_Press_40:
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??If_Button_Press_34
//  428           }
//  429           else
//  430           {
//  431             if(Para_Index<=1)
??If_Button_Press_39:
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??If_Button_Press_34
//  432             *Control_Para2[Para_Index]-=Step[Step_Index];
        LDR.N    R0,??DataTable2_14
        LDR.N    R1,??DataTable2_7
        LDRB     R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_4
        LDR.N    R2,??DataTable2_5
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_14
        LDR.N    R2,??DataTable2_7
        LDRB     R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        STR      R0,[R1, #+0]
//  433             
//  434           }
//  435 
//  436         }
//  437 
//  438       }
//  439       
//  440       
//  441       
//  442       
//  443     }
//  444   
//  445   
//  446   
//  447   
//  448   
//  449   while(BT3_In==0);
??If_Button_Press_34:
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2_30  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??If_Button_Press_34
//  450   }
//  451   
//  452 
//  453 
//  454 
//  455 
//  456 
//  457 }
??If_Button_Press_33:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     Page_Index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     Voltage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Step

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     Step_Index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     Control_Para0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     Para_Index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     Para_Choice

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     Para_Checked

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     reverse

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     Para_Name

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     Control_Para1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     Para_Name1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     Control_Para2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     Para_Name2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     CCD_Draw_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     Display_Edge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     Leftlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     Rightlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     Middle_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     Max_Peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     Max_Value

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     0x400ff000
//  458 
//  459 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  460 void Delay_2ms(void)
//  461 {
Delay_2ms:
        PUSH     {R4,LR}
//  462     int i;
//  463     for(i=0;i<10;i++)
        MOVS     R4,#+0
        B.N      ??Delay_2ms_0
//  464     {
//  465       delay200ns();
??Delay_2ms_1:
        BL       delay200ns
//  466     }
        ADDS     R4,R4,#+1
??Delay_2ms_0:
        CMP      R4,#+10
        BLT.N    ??Delay_2ms_1
//  467 
//  468 }
        POP      {R4,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_0:
        DATA
        DC8 "Voltage="
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 "Step="
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC8 "Left="
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "Right="
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "Middle_Err="

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_5:
        DATA
        DC8 "Max_Peak  ="

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_6:
        DATA
        DC8 "Max_Value ="

        END
// 
//   160 bytes in section .bss
//   230 bytes in section .data
//    72 bytes in section .rodata
// 2 504 bytes in section .text
// 
// 2 504 bytes of CODE  memory
//    72 bytes of CONST memory
//   390 bytes of DATA  memory
//
//Errors: none
//Warnings: none
