///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       19/Jul/2016  22:58:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\roadSearch.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\roadSearch.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\FLASH\List\
//        -lB
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\FLASH\List\
//        -o
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\FLASH\Obj\
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\FLASH\List\roadSearch.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Brightness
        EXTERN CCD_Buff
        EXTERN CCD_Draw_Buff
        EXTERN CCD_Offset
        EXTERN CarSpeed
        EXTERN Distance
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Output_b
        EXTERN Max_Value
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f

        PUBLIC B_RightOrLeft
        PUBLIC Barraicade
        PUBLIC Barraicade_Cnt
        PUBLIC Barraicade_Num
        PUBLIC Barraicade_width
        PUBLIC Brightness_Calculate
        PUBLIC CCD_Diff
        PUBLIC Character_Distance
        PUBLIC Correct_Err
        PUBLIC CrossRoad
        PUBLIC EdgeFind
        PUBLIC FallingEdge
        PUBLIC FallingEdgeCnt
        PUBLIC FallingEdgeIndex
        PUBLIC Fill_CCD_Info
        PUBLIC FindBoundary
        PUBLIC FindNearest
        PUBLIC Find_BothLine
        PUBLIC Is_Barraicade
        PUBLIC Is_CrossRoad
        PUBLIC K_Barraicade
        PUBLIC Left
        PUBLIC Leftlast
        PUBLIC Leftlastfind
        PUBLIC Max_Peak
        PUBLIC Middle_Err
        PUBLIC Nor_Cnt
        PUBLIC Normal
        PUBLIC Pre_Left
        PUBLIC Pre_Right
        PUBLIC Pre_Width
        PUBLIC Prejudge
        PUBLIC Push_And_Pull
        PUBLIC Reference_Width
        PUBLIC Right
        PUBLIC Rightlast
        PUBLIC Rightlastfind
        PUBLIC RisingEdge
        PUBLIC RisingEdgeCnt
        PUBLIC RisingEdgeIndex
        PUBLIC RoadType
        PUBLIC RoadType_Distinguish
        PUBLIC STATE
        PUBLIC Threshold
        PUBLIC curve_to_cross
        PUBLIC flag_barraicade
        PUBLIC flag_curve_to_cross
        PUBLIC leftfind
        PUBLIC rightfind
        PUBLIC temp_s_p

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\roadSearch.c
//    1 #include "roadSearch.h"
//    2 
//    3 #define ABS(x) ((x>0)?(x):(-x))
//    4 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    5 int Reference_Width=50;//赛道参考宽度
Reference_Width:
        DATA
        DC32 50

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    6 uint8 rightfind=0,leftfind=0;
rightfind:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
leftfind:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    7 uint8 Leftlastfind=0,Rightlastfind=0;
Leftlastfind:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Rightlastfind:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8 Leftlast=0,Rightlast=0;//最终确定的边界线
Leftlast:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Rightlast:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    9 int Right=127,Left=0;
Right:
        DATA
        DC32 127

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Left:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 int CCD_Diff[128];//差分值数组
CCD_Diff:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 int RisingEdgeIndex,FallingEdgeIndex;//寻找到的跳变沿index
RisingEdgeIndex:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
FallingEdgeIndex:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   12 uint8 RisingEdgeCnt,FallingEdgeCnt,RisingEdge[5],FallingEdge[5];
RisingEdgeCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
FallingEdgeCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
RisingEdge:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
FallingEdge:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 float Threshold;
Threshold:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   14 uint8 RoadType=0;//定义赛道类型
RoadType:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int Max_Peak;
Max_Peak:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int B_RightOrLeft;
B_RightOrLeft:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 float Middle_Err=0;//中线偏移量
Middle_Err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 float Character_Distance=0; //特征距离
Character_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 static float Middle_Last=0;//最终的中线偏移量
Middle_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 float temp_s_p,Correct_Err=1.2;
temp_s_p:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Correct_Err:
        DATA
        DC32 3F99999AH

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 float Pre_Width[5]={0};
Pre_Width:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 float Pre_Right[5]={0};
Pre_Right:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 float Pre_Left[5]={0};
Pre_Left:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   24 uint8 Nor_Cnt=0;
Nor_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   25 uint8 STATE=0;
STATE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   26 uint8 curve_to_cross=0;
curve_to_cross:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   27 uint8 flag_barraicade=0;
flag_barraicade:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   28 uint8 Barraicade_Cnt=0;
Barraicade_Cnt:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   29 float Barraicade_Num=1;
Barraicade_Num:
        DATA
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   30 float Barraicade_width,K_Barraicade=0.5;
Barraicade_width:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
K_Barraicade:
        DATA
        DC32 3F000000H

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   31 uint8 flag_curve_to_cross=0;
flag_curve_to_cross:
        DS8 1
//   32 
//   33 /****
//   34 *寻找跳变沿和峰值
//   35 ****/
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 void EdgeFind(void) 
//   38 {
EdgeFind:
        PUSH     {R4,LR}
//   39   int i = 0;//for 的下标
        MOVS     R4,#+0
//   40   //对各值进行初始化
//   41   Max_Peak=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+0]
//   42   RisingEdgeCnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+0]
//   43   FallingEdgeCnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
//   44   for(i=0;i<5;i++)
        MOVS     R4,#+0
        B.N      ??EdgeFind_0
//   45   {
//   46     RisingEdge[i]=0;
??EdgeFind_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5
        STRB     R0,[R4, R1]
//   47     FallingEdge[i]=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_1
        STRB     R0,[R4, R1]
//   48   }
        ADDS     R4,R4,#+1
??EdgeFind_0:
        CMP      R4,#+5
        BLT.N    ??EdgeFind_1
//   49   for(i=3;i<128;i++)
        MOVS     R4,#+3
        B.N      ??EdgeFind_2
//   50   {
//   51     CCD_Diff[i]=CCD_Buff[i]-CCD_Buff[i-3];
//   52     if(ABS(CCD_Diff[i])>Max_Peak) Max_Peak=ABS(CCD_Diff[i]);//寻找差分值的峰值 
??EdgeFind_3:
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+0]
??EdgeFind_4:
        ADDS     R4,R4,#+1
??EdgeFind_2:
        CMP      R4,#+128
        BGE.N    ??EdgeFind_5
        LDR.W    R0,??DataTable5_3
        LDRH     R0,[R0, R4, LSL #+1]
        LDR.W    R1,??DataTable5_3
        ADDS     R1,R1,R4, LSL #+1
        LDRH     R1,[R1, #-6]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable5_2
        STR      R0,[R1, R4, LSL #+2]
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+1
        BLT.N    ??EdgeFind_6
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        B.N      ??EdgeFind_7
??EdgeFind_6:
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        RSBS     R0,R0,#+0
??EdgeFind_7:
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BGE.N    ??EdgeFind_4
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+1
        BLT.N    ??EdgeFind_3
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+0]
        B.N      ??EdgeFind_4
//   53   }
//   54   for(i=4;i<127;i++)
??EdgeFind_5:
        MOVS     R4,#+4
        B.N      ??EdgeFind_8
//   55   {
//   56     if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>Threshold)) //寻找正的峰值，左边线
??EdgeFind_9:
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable5_2
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #-4]
        CMP      R0,R1
        BLT.N    ??EdgeFind_10
        LDR.W    R0,??DataTable5_2
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_2
        LDR      R1,[R1, R4, LSL #+2]
        CMP      R0,R1
        BGE.N    ??EdgeFind_10
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable5_4
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??EdgeFind_10
//   57     {
//   58       if(RisingEdgeCnt<5)    
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??EdgeFind_10
//   59       { 
//   60        RisingEdge[RisingEdgeCnt]=i;
        LDR.W    R0,??DataTable5
        LDR.W    R1,??DataTable4_1
        LDRB     R1,[R1, #+0]
        STRB     R4,[R1, R0]
//   61        RisingEdgeCnt++;  
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+0]
//   62       }
//   63     } 
//   64     if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-Threshold))  //寻找负的峰值，右边线
??EdgeFind_10:
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable5_2
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #-4]
        CMP      R0,R1
        BGE.N    ??EdgeFind_11
        LDR.W    R0,??DataTable5_2
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_2
        LDR      R1,[R1, R4, LSL #+2]
        CMP      R0,R1
        BLT.N    ??EdgeFind_11
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable5_4
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??EdgeFind_11
//   65     {
//   66       if(FallingEdgeCnt<5)    
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??EdgeFind_11
//   67       {
//   68        FallingEdge[FallingEdgeCnt]=i;
        LDR.W    R0,??DataTable5_1
        LDR.W    R1,??DataTable6
        LDRB     R1,[R1, #+0]
        STRB     R4,[R1, R0]
//   69        FallingEdgeCnt++;
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
//   70       }
//   71     }
//   72   }
??EdgeFind_11:
        ADDS     R4,R4,#+1
??EdgeFind_8:
        CMP      R4,#+127
        BLT.N    ??EdgeFind_9
//   73   
//   74   
//   75 
//   76 }
        POP      {R4,PC}          ;; return
//   77 
//   78 /*****
//   79 ** 寻找两条边线  仅能够处理直道，弯道无法识别
//   80 *****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void Find_BothLine(void)
//   82 {
Find_BothLine:
        PUSH     {R4-R6,LR}
//   83   uint8 i=0, j=0, find=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R4,#+0
//   84   for(i=60;i>20;i--)
        MOVS     R5,#+60
        B.N      ??Find_BothLine_0
??Find_BothLine_1:
        SUBS     R5,R5,#+1
??Find_BothLine_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+21
        BLT.N    ??Find_BothLine_2
//   85   {
//   86     if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>Threshold)) //寻找左边线
        LDR.W    R0,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        LDR.W    R1,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R1,R5, LSL #+2
        LDR      R1,[R1, #-4]
        CMP      R0,R1
        BLT.N    ??Find_BothLine_1
        LDR.W    R0,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R0,R5, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        CMP      R0,R1
        BGE.N    ??Find_BothLine_1
        LDR.W    R0,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable5_4
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Find_BothLine_1
//   87     {
//   88         break;
//   89     }
//   90   }
//   91   for(j=70;j<110;j++)
??Find_BothLine_2:
        MOVS     R6,#+70
        B.N      ??Find_BothLine_3
??Find_BothLine_4:
        ADDS     R6,R6,#+1
??Find_BothLine_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+110
        BGE.N    ??Find_BothLine_5
//   92   {
//   93     if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold))//寻找右边线
        LDR.W    R0,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #-4]
        CMP      R0,R1
        BGE.N    ??Find_BothLine_4
        LDR.W    R0,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R1,[R1, R6, LSL #+2]
        CMP      R0,R1
        BLT.N    ??Find_BothLine_4
        LDR.W    R0,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable5_4
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??Find_BothLine_4
//   94     {
//   95       break;
//   96     }
//   97   }
//   98   
//   99   if(i>25 && j<105) //如果左右边线满足条件
??Find_BothLine_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+26
        BLT.N    ??Find_BothLine_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+105
        BGE.N    ??Find_BothLine_6
//  100   {
//  101     find=1;
        MOVS     R4,#+1
//  102     Left=i;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable6_1
        STR      R5,[R0, #+0]
//  103     Right=j;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable6_2
        STR      R6,[R0, #+0]
//  104     Leftlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  105     Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
        B.N      ??Find_BothLine_7
//  106   }
//  107   else  //放宽左右边线条件
//  108   {
//  109     for(i=10;i<80;i++)
??Find_BothLine_6:
        MOVS     R5,#+10
        B.N      ??Find_BothLine_8
??Find_BothLine_9:
        ADDS     R5,R5,#+1
??Find_BothLine_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+80
        BGE.N    ??Find_BothLine_7
//  110     {
//  111       if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>Threshold))
        LDR.W    R0,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        LDR.W    R1,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R1,R5, LSL #+2
        LDR      R1,[R1, #-4]
        CMP      R0,R1
        BLT.N    ??Find_BothLine_10
        LDR.W    R0,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R0,R5, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        CMP      R0,R1
        BGE.N    ??Find_BothLine_10
        LDR.W    R0,??DataTable5_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable5_4
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Find_BothLine_10
//  112       {
//  113         for(j=64;j<=120;j++)
        MOVS     R6,#+64
        B.N      ??Find_BothLine_11
??Find_BothLine_12:
        ADDS     R6,R6,#+1
??Find_BothLine_11:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+121
        BGE.N    ??Find_BothLine_10
//  114         {
//  115           if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold))
        LDR.W    R0,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #-4]
        CMP      R0,R1
        BGE.N    ??Find_BothLine_12
        LDR.W    R0,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R1,[R1, R6, LSL #+2]
        CMP      R0,R1
        BLT.N    ??Find_BothLine_12
        LDR.W    R0,??DataTable5_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable5_4
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??Find_BothLine_12
//  116           {
//  117             if(j-i>25)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R6,R5
        CMP      R0,#+26
        BLT.N    ??Find_BothLine_13
//  118             {
//  119               find=1;
        MOVS     R4,#+1
//  120               Left=i;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable6_1
        STR      R5,[R0, #+0]
//  121               Right=j;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable6_2
        STR      R6,[R0, #+0]
//  122               Leftlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  123               Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  124             }
//  125             break;
//  126           }
//  127           
//  128         }
//  129       
//  130       }
//  131       if(find)  break;
??Find_BothLine_13:
??Find_BothLine_10:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??Find_BothLine_9
//  132      
//  133     
//  134     }
//  135 
//  136   }
//  137   
//  138   if(find==0)
??Find_BothLine_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??Find_BothLine_14
//  139   {
//  140     Leftlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  141     Rightlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  142   }
//  143  
//  144 }
??Find_BothLine_14:
        POP      {R4-R6,PC}       ;; return
//  145 
//  146 /****
//  147 * 根据参数寻找靠近中心线的边界
//  148 * 参数;mode ,两种：LEFT和RIGHT
//  149 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 uint8 FindBoundary(uint8 mode)
//  151 {
FindBoundary:
        MOVS     R1,R0
//  152   uint8 find=0;
        MOVS     R0,#+0
//  153   if(mode==LEFT)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FindBoundary_0
//  154   {
//  155     if(RisingEdgeCnt!=0)
        LDR.W    R1,??DataTable4_1
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??FindBoundary_1
//  156     {
//  157       for(RisingEdgeIndex=RisingEdgeCnt-1;RisingEdgeIndex>=0;RisingEdgeIndex--)//RisingEdgeIndex=RisingEdgeCnt-1？？？？？
        LDR.W    R1,??DataTable4_1
        LDRB     R1,[R1, #+0]
        SUBS     R1,R1,#+1
        LDR.W    R2,??DataTable6_4
        STR      R1,[R2, #+0]
        B.N      ??FindBoundary_2
??FindBoundary_3:
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        SUBS     R1,R1,#+1
        LDR.W    R2,??DataTable6_4
        STR      R1,[R2, #+0]
??FindBoundary_2:
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BMI.N    ??FindBoundary_1
//  158       {
//  159         if(RisingEdge[RisingEdgeIndex]<75)   //参数为什么设置为75
        LDR.W    R1,??DataTable5
        LDR.W    R2,??DataTable6_4
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R1,#+75
        BGE.N    ??FindBoundary_4
//  160         {
//  161           find=1;
        MOVS     R0,#+1
//  162           
//  163           break;
        B.N      ??FindBoundary_1
//  164         }
//  165         if(RisingEdgeIndex==0) break;
??FindBoundary_4:
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??FindBoundary_3
        B.N      ??FindBoundary_1
//  166       
//  167       }
//  168     }
//  169   }
//  170   else
//  171   {
//  172     if(FallingEdgeCnt!=0)
??FindBoundary_0:
        LDR.W    R1,??DataTable6
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??FindBoundary_1
//  173     {
//  174       for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
        MOVS     R1,#+0
        LDR.W    R2,??DataTable7_1
        STR      R1,[R2, #+0]
        B.N      ??FindBoundary_5
??FindBoundary_6:
        LDR.W    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable7_1
        STR      R1,[R2, #+0]
??FindBoundary_5:
        LDR.W    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable6
        LDRB     R2,[R2, #+0]
        CMP      R1,R2
        BGE.N    ??FindBoundary_1
//  175       {
//  176          if(FallingEdge[FallingEdgeIndex]>53)
        LDR.W    R1,??DataTable5_1
        LDR.W    R2,??DataTable7_1
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R1,#+54
        BLT.N    ??FindBoundary_6
//  177          {
//  178             find=1;
        MOVS     R0,#+1
//  179             break;
//  180          }
//  181       
//  182       }
//  183     
//  184     }
//  185   }
//  186   
//  187   return find;
??FindBoundary_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  188 
//  189 }
//  190 /*****
//  191 ***根据上次找到的边线寻找新的边线
//  192 *****/
//  193 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 uint8 FindNearest(uint8 mode,uint8 lastegde)
//  195 {
FindNearest:
        PUSH     {R4}
//  196   uint8 find=0;
        MOVS     R2,#+0
//  197   if(mode==LEFT)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FindNearest_0
//  198   {
//  199      if(RisingEdgeCnt!=0)  
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??FindNearest_1
//  200      {
//  201       for(RisingEdgeIndex=0;RisingEdgeIndex<RisingEdgeCnt;RisingEdgeIndex++)
        MOVS     R0,#+0
        LDR.W    R3,??DataTable6_4
        STR      R0,[R3, #+0]
        B.N      ??FindNearest_2
??FindNearest_3:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R3,??DataTable6_4
        STR      R0,[R3, #+0]
??FindNearest_2:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R3,??DataTable4_1
        LDRB     R3,[R3, #+0]
        CMP      R0,R3
        BGE.N    ??FindNearest_1
//  202       {
//  203        if(ABS(lastegde-RisingEdge[RisingEdgeIndex])<=3)//3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5
        LDR.W    R3,??DataTable6_4
        LDR      R3,[R3, #+0]
        LDRB     R0,[R3, R0]
        SUBS     R0,R1,R0
        CMP      R0,#+1
        BLT.N    ??FindNearest_4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5
        LDR.W    R3,??DataTable6_4
        LDR      R3,[R3, #+0]
        LDRB     R0,[R3, R0]
        SUBS     R0,R1,R0
        B.N      ??FindNearest_5
??FindNearest_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        RSBS     R0,R1,#+0
        LDR.W    R3,??DataTable5
        LDR.W    R4,??DataTable6_4
        LDR      R4,[R4, #+0]
        LDRB     R3,[R4, R3]
        SUBS     R0,R0,R3
??FindNearest_5:
        CMP      R0,#+4
        BGE.N    ??FindNearest_3
//  204        {
//  205          find=1;
        MOVS     R2,#+1
//  206          break;
        B.N      ??FindNearest_1
//  207        }
//  208       }
//  209      }
//  210   }
//  211   else
//  212   {
//  213     if(FallingEdgeCnt!=0)  
??FindNearest_0:
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??FindNearest_1
//  214    {
//  215      for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
        MOVS     R0,#+0
        LDR.W    R3,??DataTable7_1
        STR      R0,[R3, #+0]
        B.N      ??FindNearest_6
??FindNearest_7:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R3,??DataTable7_1
        STR      R0,[R3, #+0]
??FindNearest_6:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.W    R3,??DataTable6
        LDRB     R3,[R3, #+0]
        CMP      R0,R3
        BGE.N    ??FindNearest_1
//  216      {
//  217        if(ABS(lastegde-FallingEdge[FallingEdgeIndex])<=3)//3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5_1
        LDR.W    R3,??DataTable7_1
        LDR      R3,[R3, #+0]
        LDRB     R0,[R3, R0]
        SUBS     R0,R1,R0
        CMP      R0,#+1
        BLT.N    ??FindNearest_8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5_1
        LDR.W    R3,??DataTable7_1
        LDR      R3,[R3, #+0]
        LDRB     R0,[R3, R0]
        SUBS     R0,R1,R0
        B.N      ??FindNearest_9
??FindNearest_8:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        RSBS     R0,R1,#+0
        LDR.W    R3,??DataTable5_1
        LDR.W    R4,??DataTable7_1
        LDR      R4,[R4, #+0]
        LDRB     R3,[R4, R3]
        SUBS     R0,R0,R3
??FindNearest_9:
        CMP      R0,#+4
        BGE.N    ??FindNearest_7
//  218        {
//  219          find=1;
        MOVS     R2,#+1
//  220          break;
//  221        }
//  222      }
//  223    }
//  224   }
//  225   return find;
??FindNearest_1:
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  226 }
//  227 
//  228 /****
//  229 ** 对常规赛道的处理函数
//  230 ****/
//  231 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 void Normal(void)
//  233 {
Normal:
        PUSH     {R7,LR}
//  234  uint8 tempwidth;
//  235  if(Leftlastfind==0 && Rightlastfind==0) //上次双线均未找到
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_0
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_0
//  236  {
//  237     Find_BothLine();//寻找双线
        BL       Find_BothLine
//  238     if(Leftlastfind==0 && Rightlastfind==0)//仍然没有找到双线
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_1
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_1
//  239     {
//  240        if(FindBoundary(LEFT))
        MOVS     R0,#+0
        BL       FindBoundary
        CMP      R0,#+0
        BEQ.N    ??Normal_2
//  241        {
//  242         Left=RisingEdge[RisingEdgeIndex];
        LDR.W    R0,??DataTable5
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  243         Leftlastfind=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
        B.N      ??Normal_3
//  244         //if(Left<34)Leftlastfind=0;
//  245        }
//  246        else  Leftlastfind=0;
??Normal_2:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  247        
//  248        if(FindBoundary(RIGHT))
??Normal_3:
        MOVS     R0,#+1
        BL       FindBoundary
        CMP      R0,#+0
        BEQ.N    ??Normal_4
//  249        {
//  250          Right=FallingEdge[FallingEdgeIndex];
        LDR.W    R0,??DataTable5_1
        LDR.W    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//  251          Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
        B.N      ??Normal_5
//  252          //if(Right>84)Rightlastfind=0;
//  253        }
//  254        else  Rightlastfind=0;
??Normal_4:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  255        if(Leftlastfind&&Rightlastfind) 
??Normal_5:
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_1
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_1
//  256        {
//  257          if(Right<=Left)
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.W    ??Normal_1
//  258          {
//  259            Leftlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  260            Rightlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
        B.N      ??Normal_1
//  261          }
//  262        }
//  263        
//  264        
//  265     }//end if(Leftlastfind==0&&Rightlastfind==0)
//  266     
//  267 
//  268 
//  269  
//  270  } //end if (Leftlastfind==0 && Rightlastfind==0) 
//  271  
//  272  
//  273  ///////////////////////////////////
//  274  else //上次至少找到了一边
//  275  {
//  276     if(Leftlastfind  ) //上次找到了左线
??Normal_0:
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_6
//  277     {
//  278       if(FindNearest(LEFT,Leftlast))		//这次能找到左线
        LDR.W    R0,??DataTable7_2
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       FindNearest
        CMP      R0,#+0
        BEQ.W    ??Normal_7
//  279       {
//  280         Left=RisingEdge[RisingEdgeIndex];
        LDR.W    R0,??DataTable5
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  281         Leftlastfind=1;	
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  282         if(Rightlastfind==0)//上次没有找到右线
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_6
//  283         { 
//  284           
//  285          if(FallingEdgeCnt)
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_8
//  286          {
//  287            for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
        B.N      ??Normal_9
??Normal_10:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
??Normal_9:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Normal_11
//  288           {
//  289             rightfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  290             if(FallingEdge[FallingEdgeIndex]>Left)
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_1
        LDR.W    R2,??DataTable7_1
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R0,R1
        BGE.N    ??Normal_10
//  291             {
//  292               tempwidth = FallingEdge[FallingEdgeIndex]-Left;
        LDR.W    R0,??DataTable5_1
        LDR.W    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
//  293               if(ABS(tempwidth-Reference_Width)>=2)      
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R1,R0,R1
        CMP      R1,#+1
        BLT.N    ??Normal_12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R1,R0,R1
        B.N      ??Normal_13
??Normal_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        RSBS     R1,R0,#+0
        LDR.W    R2,??DataTable9
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
??Normal_13:
        CMP      R1,#+2
        BLT.N    ??Normal_14
//  294               {
//  295                if(tempwidth>Reference_Width)   Reference_Width=Reference_Width+1;   //潜在的赛道边线比参考宽度宽,更新参考宽度
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??Normal_15
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
        B.N      ??Normal_16
//  296                else                         
//  297                {
//  298                  Reference_Width=Reference_Width-1;   //潜在的赛道边线比参考宽度窄，更新参考宽度
??Normal_15:
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//  299                  //if(RoadType==0)
//  300                  //Reference_Width=Reference_Width-1;
//  301                }
//  302                Right=Left+Reference_Width;
??Normal_16:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//  303                Rightlastfind = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
        B.N      ??Normal_17
//  304              }
//  305              else
//  306              {
//  307                 Right=FallingEdge[FallingEdgeIndex];
??Normal_14:
        LDR.W    R0,??DataTable5_1
        LDR.W    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//  308                 Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  309              }
//  310              rightfind=1;  
??Normal_17:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  311              break;
//  312             }
//  313            
//  314           
//  315           
//  316            }//end for
//  317            
//  318            
//  319           if(rightfind==0)   
??Normal_11:
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_6
//  320           {
//  321             if(CarSpeed>2.5)          //在车模的速度足够块的情况下才这样弄
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8  ;; 0x40200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Normal_18
//  322             {
//  323              if(Left+Reference_Width<=118)  //虚拟出来的右边线要往外靠，但是不能靠得太狠了
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        CMP      R0,#+119
        BGE.N    ??Normal_19
//  324              {
//  325               Reference_Width++;
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
        B.N      ??Normal_18
//  326              }
//  327              else 
//  328              {
//  329               Reference_Width=118-Left;
??Normal_19:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+118
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//  330              }
//  331             }
//  332             Right=Left+Reference_Width;
??Normal_18:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
        B.N      ??Normal_6
//  333           }
//  334          }
//  335          else
//  336          {
//  337            
//  338            if(CarSpeed>2.5)          //在车模的速度足够块的情况下才这样弄
??Normal_8:
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8  ;; 0x40200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Normal_20
//  339             {
//  340              if(Left+Reference_Width<=118)  //虚拟出来的右边线要往外靠，但是不能靠得太狠了
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        CMP      R0,#+119
        BGE.N    ??Normal_21
//  341              {
//  342               Reference_Width++;
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
        B.N      ??Normal_20
//  343              }
//  344              else 
//  345              {
//  346               Reference_Width=118-Left;
??Normal_21:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+118
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//  347              }
//  348             }
//  349             Right=Left+Reference_Width;
??Normal_20:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
        B.N      ??Normal_6
//  350          }
//  351          
//  352         
//  353         }
//  354       
//  355       }
//  356       else //这次没能找到左线
//  357       {
//  358           Leftlastfind=0;
??Normal_7:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  359           if(FindBoundary(LEFT))
        MOVS     R0,#+0
        BL       FindBoundary
        CMP      R0,#+0
        BEQ.N    ??Normal_22
//  360           {
//  361             if((RisingEdge[RisingEdgeIndex]<Leftlast))//左边界比之前更宽
        LDR.W    R0,??DataTable5
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??Normal_23
//  362             {
//  363               if(Rightlastfind==0)
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_6
//  364               {
//  365                 RoadType=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  366                 Character_Distance=Distance; 
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_3
        STR      R0,[R1, #+0]
        B.N      ??Normal_6
//  367               }
//  368             }
//  369             else if(RisingEdge[RisingEdgeIndex]<Leftlast+8)//没有找到与上次相邻的边界，但找到的边界比上次更加靠近中心
??Normal_23:
        LDR.W    R0,??DataTable5
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+8
        CMP      R0,R1
        BGE.N    ??Normal_6
//  370             {
//  371               Left=RisingEdge[RisingEdgeIndex];
        LDR.W    R0,??DataTable5
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  372               Leftlastfind=1;   
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
        B.N      ??Normal_6
//  373             }
//  374 
//  375 
//  376           }
//  377           else
//  378           {
//  379             if(Rightlastfind==0 )
??Normal_22:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_6
//  380             {
//  381               RoadType=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  382               Character_Distance=Distance; 
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_3
        STR      R0,[R1, #+0]
//  383             }
//  384           }
//  385 
//  386       }
//  387     }
//  388     
//  389     if(Rightlastfind ) //上次找到了右边线
??Normal_6:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_24
//  390     {
//  391        if(FindNearest(RIGHT,Rightlast))	//这次能找到右线
        LDR.W    R0,??DataTable8_4
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+1
        BL       FindNearest
        CMP      R0,#+0
        BEQ.W    ??Normal_25
//  392        {
//  393           Right=FallingEdge[FallingEdgeIndex];
        LDR.W    R0,??DataTable5_1
        LDR.W    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//  394           Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  395           if(Leftlastfind==0)  //上次没有找到左线
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_24
//  396           {
//  397              if(RisingEdgeCnt>0)
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_26
//  398              {  
//  399                 for(RisingEdgeIndex=RisingEdgeCnt-1;RisingEdgeIndex>=0;RisingEdgeIndex--)
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
        B.N      ??Normal_27
??Normal_28:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
??Normal_27:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BMI.N    ??Normal_29
//  400                 {
//  401                     leftfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_5
        STRB     R0,[R1, #+0]
//  402                     if(RisingEdge[RisingEdgeIndex]<Right) //找到潜在边线
        LDR.N    R0,??DataTable5
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Normal_28
//  403                     {
//  404                         tempwidth = Right-RisingEdge[RisingEdgeIndex];
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5
        LDR.W    R2,??DataTable6_4
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        SUBS     R0,R0,R1
//  405                         if (ABS(tempwidth-Reference_Width)>=2)       
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R1,R0,R1
        CMP      R1,#+1
        BLT.N    ??Normal_30
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R1,R0,R1
        B.N      ??Normal_31
??Normal_30:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        RSBS     R1,R0,#+0
        LDR.W    R2,??DataTable9
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
??Normal_31:
        CMP      R1,#+2
        BLT.N    ??Normal_32
//  406                         {
//  407                           if(tempwidth>Reference_Width)   Reference_Width=Reference_Width+1; 
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??Normal_33
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
        B.N      ??Normal_34
//  408                           else
//  409                           {
//  410                               Reference_Width=Reference_Width-1;
??Normal_33:
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//  411                              
//  412                           }
//  413                           Left=Right-Reference_Width;
??Normal_34:
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  414                           Leftlastfind = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
        B.N      ??Normal_35
//  415                             
//  416                         }
//  417                         else
//  418                         {
//  419                           Left=RisingEdge[RisingEdgeIndex];
??Normal_32:
        LDR.N    R0,??DataTable5
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  420                           Leftlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  421                         }
//  422                         leftfind=1;
??Normal_35:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable8_5
        STRB     R0,[R1, #+0]
//  423                         break;
//  424                     
//  425                     }
//  426                 
//  427                 }//end for
//  428                 if(leftfind==0)   //虽然说有上升沿，但是该上升沿无效
??Normal_29:
        LDR.W    R0,??DataTable8_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_24
//  429                 {
//  430                     if(CarSpeed>2.5)              //速度限制，防止出线
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8  ;; 0x40200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Normal_36
//  431                     {
//  432                      if(Right-Reference_Width>=10)  //虚拟出来的右边线要往外靠，但是不能靠得太狠了
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+10
        BLT.N    ??Normal_37
//  433                      {
//  434                         Reference_Width++;
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
        B.N      ??Normal_36
//  435                      }
//  436                      else 
//  437                      {
//  438                         Reference_Width=Right-10;
??Normal_37:
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//  439                      } 
//  440                     }
//  441                    Left=Right-Reference_Width;
??Normal_36:
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        B.N      ??Normal_24
//  442                 }
//  443 
//  444              }
//  445              else
//  446              {
//  447                
//  448                 if(CarSpeed>2.5)              //速度限制，防止出线
??Normal_26:
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8  ;; 0x40200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Normal_38
//  449                 {
//  450                  if(Right-Reference_Width>=10)  //虚拟出来的右边线要往外靠，但是不能靠得太狠了
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+10
        BLT.N    ??Normal_39
//  451                  {
//  452                     Reference_Width++;
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
        B.N      ??Normal_38
//  453                  }
//  454                  else 
//  455                  {
//  456                     Reference_Width=Right-10;
??Normal_39:
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//  457                  } 
//  458                 }
//  459                 Left=Right-Reference_Width;
??Normal_38:
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        B.N      ??Normal_24
//  460              }
//  461           
//  462           }
//  463        
//  464        }
//  465        else//未能找到邻近的边线
//  466        {
//  467            Rightlastfind=0; 
??Normal_25:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  468            if(FindBoundary(RIGHT)) 
        MOVS     R0,#+1
        BL       FindBoundary
        CMP      R0,#+0
        BEQ.N    ??Normal_40
//  469            {
//  470              
//  471              if(FallingEdge[FallingEdgeIndex]>Rightlast)
        LDR.W    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_1
        LDR.W    R2,??DataTable7_1
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R0,R1
        BCS.N    ??Normal_41
//  472              {
//  473                if(Leftlastfind==0)
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_24
//  474                {
//  475                   RoadType=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  476                   Character_Distance=Distance;
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_3
        STR      R0,[R1, #+0]
        B.N      ??Normal_24
//  477                }
//  478              
//  479              }
//  480              else if(FallingEdge[FallingEdgeIndex]>Rightlast-8)
??Normal_41:
        LDR.W    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+8
        LDR.N    R1,??DataTable5_1
        LDR.W    R2,??DataTable7_1
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R0,R1
        BGE.N    ??Normal_24
//  481              {
//  482                 Right=FallingEdge[FallingEdgeIndex];
        LDR.N    R0,??DataTable5_1
        LDR.W    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//  483                 Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
        B.N      ??Normal_24
//  484              }
//  485 
//  486            
//  487            }
//  488            
//  489            else
//  490            {
//  491              if(Leftlastfind==0)
??Normal_40:
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_24
//  492              {
//  493                 RoadType=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  494                 Character_Distance=Distance;
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_3
        STR      R0,[R1, #+0]
//  495              }
//  496            
//  497            }
//  498           
//  499        }
//  500     
//  501     
//  502     }
//  503     if(Rightlastfind&&Leftlastfind)
??Normal_24:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Normal_1
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Normal_1
//  504     {
//  505 
//  506      Reference_Width=Right-Left; 
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//  507      if(Reference_Width<35)Reference_Width=35;
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        CMP      R0,#+35
        BGE.N    ??Normal_1
        MOVS     R0,#+35
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
//  508     }
//  509  
//  510  }
//  511 
//  512 }
??Normal_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     Max_Peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     RisingEdgeCnt
//  513 
//  514 
//  515 /*****
//  516 * 计算赛道的亮度
//  517 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  518 void Brightness_Calculate(void)
//  519 {
Brightness_Calculate:
        PUSH     {R4-R6,LR}
//  520 
//  521   uint8 i;
//  522   uint32 tempi=0;
        MOVS     R0,#+0
//  523   float tempf=0;
        MOVS     R6,#+0
//  524   for(i=Left;i<=Right;i++)
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        B.N      ??Brightness_Calculate_0
//  525   {
//  526     tempi+=CCD_Buff[i];
??Brightness_Calculate_1:
        LDR.N    R2,??DataTable5_3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRH     R2,[R2, R1, LSL #+1]
        UXTAH    R0,R0,R2
//  527   }
        ADDS     R1,R1,#+1
??Brightness_Calculate_0:
        LDR.N    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R2,R1
        BGE.N    ??Brightness_Calculate_1
//  528   tempf=tempi*1.0/(Right-Left);
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_1  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R6,R0
//  529   
//  530   tempf=tempf*(Max_Value-CCD_Offset)/127.0+CCD_Offset;
        LDR.W    R0,??DataTable9_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_3
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_4  ;; 0x405fc000
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R6,R0
//  531   Brightness=(int)(Brightness*0.95+tempf*0.05);
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable9_6  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_7  ;; 0x9999999a
        LDR.W    R3,??DataTable10  ;; 0x3fa99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable9_5
        STR      R0,[R1, #+0]
//  532   CCD_Draw_Buff[140]=BYTE0(Brightness);
        LDR.W    R0,??DataTable9_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+140]
//  533   CCD_Draw_Buff[141]=BYTE1(Brightness);
        LDR.W    R0,??DataTable9_5
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+141]
//  534 
//  535   
//  536 
//  537 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     RisingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     FallingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     CCD_Diff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     CCD_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     Threshold
//  538 /****
//  539 **斜入十字处理
//  540 ****/
//  541 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  542 void Is_CrossRoad(void)
//  543 {
//  544    static int Width_Change_Cnt_L;
//  545    static int Pre_Width_Out_L,Pre_Width_All_L;
//  546    int Width_Out_L,Line_Out_L,Width_All_L;
//  547   
//  548    static int Width_Change_Cnt_R;
//  549    static int Pre_Width_Out_R,Pre_Width_All_R;        
//  550    int Width_Out_R,Line_Out_R,Width_All_R;
//  551    
//  552    static uint8 All_Find=0;
//  553   
//  554   /*if(Leftlastfind && Rightlastfind) // 两条边线均找到
//  555   {
//  556     if(RisingEdgeIndex<RisingEdgeCnt-1)
//  557     {
//  558       Line_Out_R=RisingEdge[RisingEdgeIndex+1];
//  559       Width_Out_R=Line_Out_R-Right;
//  560       Width_All_R=Line_Out_R-Left;
//  561       if(Width_Out_R<6)
//  562       {
//  563         if(RisingEdgeIndex<RisingEdgeCnt-2)
//  564         {
//  565           Line_Out_R=RisingEdge[RisingEdgeIndex+2];
//  566           Width_Out_R=Line_Out_R-Right;
//  567           Width_All_R=Line_Out_R-Left;
//  568         }
//  569       
//  570       }
//  571       if(Width_Out_R>8)
//  572       {
//  573         if((Pre_Width_Out_R>Width_Out_R)&&(Width_All_R<=Pre_Width_All_R))
//  574         {
//  575           Width_Change_Cnt_R++;
//  576         }
//  577         else Width_Change_Cnt_R=0;
//  578       
//  579       }
//  580       Pre_Width_Out_R=Width_Out_R;
//  581       Pre_Width_All_R=Width_All_R;
//  582     
//  583     }
//  584     else
//  585     {
//  586         Width_Change_Cnt_R=0;
//  587     
//  588     }
//  589     
//  590     
//  591     
//  592     if(FallingEdgeIndex>=1)
//  593     {
//  594       Line_Out_L=FallingEdge[FallingEdgeIndex-1];
//  595       Width_Out_L=Left-Line_Out_L;
//  596       Width_All_L=Right-Line_Out_L;
//  597       if(Width_Out_L<6)
//  598       {
//  599         if(FallingEdgeIndex>=2)
//  600         {
//  601           Line_Out_L=FallingEdge[FallingEdgeIndex-2];
//  602           Width_Out_L=Left-Line_Out_L;
//  603           Width_All_L=Right-Line_Out_L;     
//  604         }
//  605 
//  606       }
//  607       if(Width_Out_L>8)
//  608       {
//  609         if((Pre_Width_Out_L>Width_Out_L)&&(Pre_Width_All_L>=Width_All_L))
//  610         {
//  611           Width_Change_Cnt_L++;
//  612 
//  613         }
//  614         else Width_Change_Cnt_L=0;
//  615 
//  616       }
//  617       Pre_Width_Out_L=Width_Out_L;
//  618       Pre_Width_All_L=Width_All_L;
//  619 
//  620     }
//  621     else 
//  622     {
//  623       Width_Change_Cnt_L=0;
//  624     
//  625     }
//  626     All_Find=1;
//  627   
//  628   }
//  629   else
//  630   {
//  631   
//  632     if(Width_Change_Cnt_R>=4 || Width_Change_Cnt_L>=4)
//  633     {
//  634       curve_to_cross=1;
//  635       RoadType=1;
//  636       Character_Distance =Distance;
//  637     
//  638     
//  639     
//  640     }
//  641     if(All_Find==1)
//  642     {
//  643       Width_Change_Cnt_R=0;
//  644       Width_Change_Cnt_L=0;
//  645     
//  646     
//  647     }
//  648     else
//  649     {
//  650       if(Leftlastfind&&(Left<60))
//  651       {
//  652          if((FallingEdgeCnt==0)||FallingEdge[FallingEdgeCnt-1]<Left) 
//  653         {
//  654           if(Left<Leftlast) Width_Change_Cnt_L++;         
//  655           else  Width_Change_Cnt_L=0;
//  656         }
//  657         else Width_Change_Cnt_L=0;
//  658       }
//  659       if(Rightlastfind&&(Right>70))
//  660       {
//  661         if((RisingEdgeCnt==0)||RisingEdge[0]>Right)  //左边没有多的线了
//  662         {
//  663           if(Right>Rightlast)    Width_Change_Cnt_R++;
//  664           else  Width_Change_Cnt_R=0;
//  665         }
//  666         else Width_Change_Cnt_R=0;
//  667       }
//  668     
//  669     
//  670     }
//  671     All_Find=0;
//  672   
//  673   
//  674   
//  675   
//  676   
//  677   
//  678   
//  679   
//  680   }*/
//  681    
//  682    
//  683     if(Width_Change_Cnt_R>=4 || Width_Change_Cnt_L>=4)
Is_CrossRoad:
        LDR.W    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BGE.N    ??Is_CrossRoad_0
        LDR.W    R0,??DataTable12_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Is_CrossRoad_1
//  684     {
//  685       if(Width_Change_Cnt_R>=4)
??Is_CrossRoad_0:
        LDR.W    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Is_CrossRoad_2
//  686         flag_curve_to_cross=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Is_CrossRoad_3
//  687       else if(Width_Change_Cnt_L>=4) flag_curve_to_cross=0;
??Is_CrossRoad_2:
        LDR.W    R0,??DataTable12_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Is_CrossRoad_3
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
//  688       curve_to_cross=1;
??Is_CrossRoad_3:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_3
        STRB     R0,[R1, #+0]
//  689       RoadType=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  690       Character_Distance =Distance;
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_3
        STR      R0,[R1, #+0]
//  691     
//  692     
//  693     
//  694     }
//  695 
//  696   
//  697       if(Leftlastfind&&(Left<60))
??Is_CrossRoad_1:
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_CrossRoad_4
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??Is_CrossRoad_4
//  698       {
//  699          if((FallingEdgeCnt==0)||FallingEdge[FallingEdgeCnt-1]<Left) 
        LDR.N    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_CrossRoad_5
        LDR.W    R0,??DataTable12_4
        LDR.N    R1,??DataTable6
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-1]
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_6
//  700         {
//  701           if(Left<Leftlast) Width_Change_Cnt_L++;         
??Is_CrossRoad_5:
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_7
        LDR.W    R0,??DataTable12_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_4
//  702           else  Width_Change_Cnt_L=0;
??Is_CrossRoad_7:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_4
//  703         }
//  704         else Width_Change_Cnt_L=0;
??Is_CrossRoad_6:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STR      R0,[R1, #+0]
//  705       }
//  706       if(Rightlastfind&&(Right>70))
??Is_CrossRoad_4:
        LDR.N    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_CrossRoad_8
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Is_CrossRoad_8
//  707       {
//  708         if((RisingEdgeCnt==0)||RisingEdge[0]>Right)  //左边没有多的线了
        LDR.W    R0,??DataTable12_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_CrossRoad_9
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_6
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_10
//  709         {
//  710           if(Right>Rightlast)    Width_Change_Cnt_R++;
??Is_CrossRoad_9:
        LDR.W    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_11
        LDR.W    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_1
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_8
//  711           else  Width_Change_Cnt_R=0;
??Is_CrossRoad_11:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_1
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_8
//  712         }
//  713         else Width_Change_Cnt_R=0;
??Is_CrossRoad_10:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_1
        STR      R0,[R1, #+0]
//  714       }
//  715     
//  716     
//  717 
//  718     
//  719 }
??Is_CrossRoad_8:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     FallingEdgeCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     Leftlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     RisingEdgeIndex

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Width_Change_Cnt_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Width_Change_Cnt_R:
        DS8 4
//  720     
//  721 
//  722 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  723 void CrossRoad()
//  724 {
CrossRoad:
        PUSH     {R7,LR}
//  725    static uint8 Normal_Cnt;
//  726    static uint8 Cross_Road_Cnt=0;
//  727   
//  728     //缓慢归零，车子回正  
//  729   if(curve_to_cross==0)
        LDR.W    R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CrossRoad_0
//  730   {  
//  731     Rightlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_7
        STRB     R0,[R1, #+0]
//  732     Leftlastfind=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_1
//  733   }
//  734   else
//  735   {/*  
//  736     if(Rightlastfind)
//  737     {
//  738         if(FindNearest(Right,Rightlast))
//  739        {
//  740         Right=FallingEdge[FallingEdgeIndex]-5;
//  741         Rightlastfind=1;
//  742         Left=Right-Reference_Width;
//  743        }
//  744        else 
//  745        {
//  746          Rightlastfind=0;
//  747          Right=Rightlast-5;
//  748          Left=Right-Reference_Width;
//  749          //curve_to_cross=0;
//  750        }
//  751     }
//  752     else if(Leftlastfind)
//  753     {
//  754       if(FindNearest(Left,Leftlast))		//这次能找到左线
//  755      {
//  756       Left=RisingEdge[RisingEdgeIndex]+5;    
//  757       Leftlastfind=1;
//  758       Right=Reference_Width+Left;
//  759      }
//  760      else 
//  761      {
//  762        Leftlastfind=0;
//  763        Left=Leftlast+5; 
//  764        Right=Reference_Width+Left;
//  765       // curve_to_cross=0;
//  766      }
//  767     }*/
//  768     
//  769     if(flag_curve_to_cross==1) //右斜入十字
??CrossRoad_0:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CrossRoad_2
//  770     {
//  771       Right=Rightlast-Correct_Err;
        LDR.W    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable12_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_10
        STR      R0,[R1, #+0]
//  772       Left=Right-Reference_Width;
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_11
        STR      R0,[R1, #+0]
        B.N      ??CrossRoad_1
//  773 
//  774     }
//  775     else if(flag_curve_to_cross==0)
??CrossRoad_2:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CrossRoad_1
//  776     {
//  777        Left=Leftlast+Correct_Err; 
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable12_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_11
        STR      R0,[R1, #+0]
//  778        Right=Reference_Width+Left;
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_10
        STR      R0,[R1, #+0]
//  779     
//  780     }
//  781   }
//  782   
//  783    /* if(ABS(Middle_Err)>1)
//  784     {
//  785       
//  786       if(curve_to_cross==0)
//  787       {
//  788 
//  789        if(Middle_Err>0)Middle_Err=Middle_Err-1.2;     
//  790        if(Middle_Err<0)Middle_Err=Middle_Err+1.2;
//  791       }
//  792       // if(Middle_Err>0)Middle_Err=Middle_Err-Correct_Err;     
//  793        //if(Middle_Err<0)Middle_Err=Middle_Err+Correct_Err;      
//  794 
//  795         
//  796     }*/
//  797 
//  798     
//  799 
//  800     
//  801 
//  802     
//  803 
//  804     
//  805   
//  806     
//  807     
//  808     
//  809     if(curve_to_cross==0||(curve_to_cross==1&&Distance-Character_Distance>0.4)) Find_BothLine();
??CrossRoad_1:
        LDR.W    R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_3
        LDR.W    R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CrossRoad_4
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable12_12  ;; 0x3ecccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??CrossRoad_4
??CrossRoad_3:
        BL       Find_BothLine
//  810     
//  811     if(Rightlastfind&&Leftlastfind)//能够找到两边边界
??CrossRoad_4:
        LDR.W    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_5
        LDR.W    R0,??DataTable12_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_5
//  812     {
//  813      if(Right-Left<65&&Cross_Road_Cnt>3)     //宽度有效
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_11
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+65
        BGE.N    ??CrossRoad_6
        LDR.W    R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??CrossRoad_6
//  814      {
//  815         /*                跳转到直角弯                 */
//  816         if(Distance>1&&(Distance-Character_Distance<0.15))
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_14  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??CrossRoad_7
        LDR.W    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable12_15  ;; 0x3e19999a
        BL       __aeabi_cfcmple
        BCC.N    ??CrossRoad_8
//  817         {
//  818                       
//  819         }
//  820         else
//  821         { 
//  822           Normal_Cnt++;
??CrossRoad_7:
        LDR.W    R0,??DataTable12_16
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_16
        STRB     R0,[R1, #+0]
//  823           if(Normal_Cnt>=3)
        LDR.W    R0,??DataTable12_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BLT.N    ??CrossRoad_8
//  824           {
//  825            RoadType=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  826            curve_to_cross=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_3
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_8
//  827           /*            跳回正常道路            */
//  828           }
//  829          
//  830         }
//  831      }
//  832      else 
//  833      {
//  834       Rightlastfind=0;
??CrossRoad_6:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_7
        STRB     R0,[R1, #+0]
//  835       Leftlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
//  836       Normal_Cnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_16
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_8
//  837      }
//  838     }
//  839     else Normal_Cnt=0;
??CrossRoad_5:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_16
        STRB     R0,[R1, #+0]
//  840     
//  841 
//  842 
//  843     if(RoadType!=1)
??CrossRoad_8:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??CrossRoad_9
//  844     {
//  845       Cross_Road_Cnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_13
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_10
//  846     }
//  847     else
//  848     {
//  849       if(Cross_Road_Cnt<10)Cross_Road_Cnt++; 
??CrossRoad_9:
        LDR.W    R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??CrossRoad_11
        LDR.W    R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_13
        STRB     R0,[R1, #+0]
//  850       
//  851       if(Cross_Road_Cnt>3&&Cross_Road_Cnt<8&&curve_to_cross==0)/////////////////////////////////改
??CrossRoad_11:
        LDR.W    R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+4
        CMP      R0,#+4
        BCS.N    ??CrossRoad_10
        LDR.W    R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CrossRoad_10
//  852       {
//  853         Leftlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
//  854         Rightlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_7
        STRB     R0,[R1, #+0]
//  855 
//  856       }
//  857       
//  858     }
//  859 }
??CrossRoad_10:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     Rightlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     FallingEdgeIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     Leftlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     rightfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     CarSpeed

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??Normal_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??Cross_Road_Cnt:
        DS8 1
//  860 
//  861 /****
//  862 ** 更新数组
//  863 *****/
//  864 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  865 void Push_And_Pull(float *buff,int len,float newdata)
//  866 {
//  867  int i;
//  868  for(i=len-1;i>0;i--)
Push_And_Pull:
        SUBS     R1,R1,#+1
        B.N      ??Push_And_Pull_0
//  869  {
//  870    *(buff+i)=*(buff+i-1);
??Push_And_Pull_1:
        ADDS     R3,R0,R1, LSL #+2
        LDR      R3,[R3, #-4]
        STR      R3,[R0, R1, LSL #+2]
//  871  }
        SUBS     R1,R1,#+1
??Push_And_Pull_0:
        CMP      R1,#+1
        BGE.N    ??Push_And_Pull_1
//  872    *buff=newdata; 
        STR      R2,[R0, #+0]
//  873 }
        BX       LR               ;; return
//  874 
//  875 
//  876 
//  877 /****
//  878 **识别赛道类型
//  879 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  880 void RoadType_Distinguish(void)
//  881 {
RoadType_Distinguish:
        PUSH     {R7,LR}
//  882   EdgeFind();
        BL       EdgeFind
//  883 
//  884   if(RoadType==0 )  Prejudge();//道路预判
        LDR.N    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RoadType_Distinguish_0
        BL       Prejudge
//  885 
//  886   switch(RoadType)
??RoadType_Distinguish_0:
        LDR.N    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??RoadType_Distinguish_1
        CMP      R0,#+2
        BEQ.N    ??RoadType_Distinguish_2
        BCC.N    ??RoadType_Distinguish_3
        B.N      ??RoadType_Distinguish_4
//  887   {
//  888     case 0: //表示常规赛道
//  889       Character_Distance=0;//普通赛道无特征距离
??RoadType_Distinguish_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_3
        STR      R0,[R1, #+0]
//  890       Normal();//如果赛道类型是0，进行常规处理
        BL       Normal
//  891       Is_Barraicade();
        BL       Is_Barraicade
//  892       if(RoadType==1)
        LDR.N    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??RoadType_Distinguish_5
//  893       {
//  894         curve_to_cross=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_3
        STRB     R0,[R1, #+0]
        B.N      ??RoadType_Distinguish_6
//  895       }
//  896       else Is_CrossRoad();
??RoadType_Distinguish_5:
        BL       Is_CrossRoad
//  897       
//  898       LPLD_GPIO_Output_b(PTE, 10, 0);
??RoadType_Distinguish_6:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable12_17  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  899       LPLD_GPIO_Output_b(PTE, 11, 1);      
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.W    R0,??DataTable12_17  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  900       LPLD_GPIO_Output_b(PTE, 12, 1);
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable12_17  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  901 
//  902       break;
        B.N      ??RoadType_Distinguish_7
//  903     case 1://表示十字弯
//  904 
//  905       CrossRoad();
??RoadType_Distinguish_3:
        BL       CrossRoad
//  906       LPLD_GPIO_Output_b(PTE, 10, 1);
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable12_17  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  907       LPLD_GPIO_Output_b(PTE, 11, 0);
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable12_17  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  908       LPLD_GPIO_Output_b(PTE, 12, 1);
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable12_17  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  909       Middle_Last=Middle_Err;
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_19
        STR      R0,[R1, #+0]
//  910       break;
        B.N      ??RoadType_Distinguish_7
//  911     case 2:
//  912       Barraicade();
??RoadType_Distinguish_2:
        BL       Barraicade
//  913 
//  914       break;
        B.N      ??RoadType_Distinguish_7
//  915     
//  916     default:
//  917       Normal();
??RoadType_Distinguish_4:
        BL       Normal
//  918       break;
//  919 
//  920   }
//  921   
//  922   if(Distance<0.4)  //刚进入赛道,将赛道类型设置为1
??RoadType_Distinguish_7:
        LDR.N    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_12  ;; 0x3ecccccd
        BL       __aeabi_cfcmple
        BCS.N    ??RoadType_Distinguish_8
//  923   {
//  924     RoadType=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  925     
//  926   }
//  927   
//  928   //将赛道信息写入发送数组
//  929   CCD_Draw_Buff[128]=Left-1;
??RoadType_Distinguish_8:
        LDR.W    R0,??DataTable12_11
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+128]
//  930   CCD_Draw_Buff[129]=Right; 
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+129]
//  931   CCD_Draw_Buff[132]=BYTE0(Max_Peak);
        LDR.W    R0,??DataTable12_20
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+132]
//  932   CCD_Draw_Buff[133]=BYTE1(Max_Peak);
        LDR.W    R0,??DataTable12_20
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+133]
//  933   CCD_Draw_Buff[134]=Leftlastfind;
        LDR.W    R0,??DataTable12_8
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+134]
//  934   CCD_Draw_Buff[135]=Rightlastfind;
        LDR.W    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+135]
//  935   CCD_Draw_Buff[136]=RoadType; 
        LDR.N    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+136]
//  936   Leftlast=Left;              // 更新边界线
        LDR.W    R0,??DataTable12_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_21
        STRB     R0,[R1, #+0]
//  937   Rightlast=Right;            //更新边界线
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable8_4
        STRB     R0,[R1, #+0]
//  938   
//  939   
//  940   
//  941   if(Rightlastfind||Leftlastfind)//当左线右线能找到其中一个
        LDR.W    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RoadType_Distinguish_9
        LDR.W    R0,??DataTable12_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??RoadType_Distinguish_10
//  942   {
//  943     Middle_Err=64-(Leftlast+Rightlast)/2.0+1;//计算得到中线偏移量
??RoadType_Distinguish_9:
        LDR.W    R0,??DataTable12_21
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable8_4
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_22  ;; 0x40500000
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_1  ;; 0x3ff00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable12_18
        STR      R0,[R1, #+0]
//  944     if(ABS(Middle_Err-Middle_Last)>2&&(curve_to_cross==0)) //十字内对中心线进行修正
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??RoadType_Distinguish_11
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        B.N      ??RoadType_Distinguish_12
??RoadType_Distinguish_11:
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable12_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
??RoadType_Distinguish_12:
        LDR.W    R1,??DataTable12_23  ;; 0x40000001
        BL       __aeabi_cfrcmple
        BHI.N    ??RoadType_Distinguish_13
        LDR.W    R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RoadType_Distinguish_13
//  945     {
//  946       if(ABS(Middle_Err-Middle_Last)>3)  //可能出现错误采集，对中心偏移量进行微调
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??RoadType_Distinguish_14
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        B.N      ??RoadType_Distinguish_15
??RoadType_Distinguish_14:
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable12_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
??RoadType_Distinguish_15:
        LDR.W    R1,??DataTable12_24  ;; 0x40400001
        BL       __aeabi_cfrcmple
        BHI.N    ??RoadType_Distinguish_16
//  947       {
//  948         if(Middle_Err>Middle_Last) Middle_Err=Middle_Last+1;
        LDR.W    R0,??DataTable12_19
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??RoadType_Distinguish_17
        LDR.W    R0,??DataTable12_19
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1065353216
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_18
        STR      R0,[R1, #+0]
        B.N      ??RoadType_Distinguish_13
//  949         else Middle_Err=Middle_Last-1;
??RoadType_Distinguish_17:
        LDR.W    R0,??DataTable12_19
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable12_25  ;; 0xbf800000
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_18
        STR      R0,[R1, #+0]
        B.N      ??RoadType_Distinguish_13
//  950       }
//  951       else  //在合理采集范围内，对中心偏移量进行更新
//  952       {
//  953         if(Middle_Err>Middle_Last) Middle_Err=Middle_Last+2;
??RoadType_Distinguish_16:
        LDR.W    R0,??DataTable12_19
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??RoadType_Distinguish_18
        LDR.W    R0,??DataTable12_19
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1073741824
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_18
        STR      R0,[R1, #+0]
        B.N      ??RoadType_Distinguish_13
//  954         else Middle_Err=Middle_Last-2;
??RoadType_Distinguish_18:
        LDR.W    R0,??DataTable12_19
        LDR      R1,[R0, #+0]
        MOVS     R0,#-1073741824
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_18
        STR      R0,[R1, #+0]
//  955       }
//  956     
//  957     }
//  958     Middle_Last=Middle_Err;
??RoadType_Distinguish_13:
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_19
        STR      R0,[R1, #+0]
//  959   }
//  960   
//  961   
//  962   Push_And_Pull(Pre_Width,5,(float)(Right-Left));
??RoadType_Distinguish_10:
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_11
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable12_26
        BL       Push_And_Pull
//  963   Push_And_Pull(Pre_Right,5,Right);
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable12_27
        BL       Push_And_Pull
//  964   Push_And_Pull(Pre_Left,5,Left);
        LDR.W    R0,??DataTable12_11
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable12_28
        BL       Push_And_Pull
//  965   if(Rightlastfind&&Leftlastfind&&(Right-Left>20))   //两边边线都能够找到，计算赛道的平均亮度
        LDR.W    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??RoadType_Distinguish_19
        LDR.W    R0,??DataTable12_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??RoadType_Distinguish_19
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_11
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+21
        BLT.N    ??RoadType_Distinguish_19
//  966   {
//  967    Brightness_Calculate();
        BL       Brightness_Calculate
//  968   }
//  969   //Brightness_Calculate();
//  970 
//  971 
//  972 
//  973 }
??RoadType_Distinguish_19:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     Character_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     Rightlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     leftfind
//  974 
//  975 
//  976 
//  977 ///////////////////////////////////////////障碍处理

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  978 void Is_Barraicade(void)
//  979 {
Is_Barraicade:
        PUSH     {R3-R7,LR}
//  980   int left_edge,right_edge,left_edge_find,right_edge_find;
//  981   int i;
//  982   float half_width=0;
        MOVS     R6,#+0
//  983   
//  984   half_width=Pre_Width[0]/2;
        LDR.W    R0,??DataTable12_26
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R6,R0
//  985   
//  986   if(Leftlastfind && Rightlastfind)
        LDR.W    R0,??DataTable12_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Is_Barraicade_0
        LDR.W    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Is_Barraicade_0
//  987   {
//  988     right_edge_find=0;
        MOVS     R0,#+0
//  989     left_edge_find=0;
        MOVS     R1,#+0
//  990     if(FallingEdgeCnt>0)
        LDR.W    R2,??DataTable12_29
        LDRB     R2,[R2, #+0]
        CMP      R2,#+0
        BEQ.N    ??Is_Barraicade_1
//  991     {
//  992       for(i=0;i<FallingEdgeCnt;i++)
        MOVS     R2,#+0
        B.N      ??Is_Barraicade_2
??Is_Barraicade_3:
        ADDS     R2,R2,#+1
??Is_Barraicade_2:
        LDR.W    R3,??DataTable12_29
        LDRB     R3,[R3, #+0]
        CMP      R2,R3
        BGE.N    ??Is_Barraicade_1
//  993       {
//  994         if((FallingEdge[i]>Leftlast)&&(FallingEdge[i]+7<Rightlast))
        LDR.W    R3,??DataTable12_21
        LDRB     R3,[R3, #+0]
        LDR.W    R7,??DataTable12_4
        LDRB     R7,[R2, R7]
        CMP      R3,R7
        BCS.N    ??Is_Barraicade_3
        LDR.W    R3,??DataTable12_4
        LDRB     R3,[R2, R3]
        ADDS     R3,R3,#+7
        LDR.W    R7,??DataTable12_30
        LDRB     R7,[R7, #+0]
        CMP      R3,R7
        BGE.N    ??Is_Barraicade_3
//  995         {
//  996           left_edge=FallingEdge[i];
        LDR.W    R1,??DataTable12_4
        LDRB     R4,[R2, R1]
//  997           left_edge_find=1;
        MOVS     R1,#+1
//  998           break;        
//  999         }
// 1000 
// 1001       }
// 1002     }
// 1003     if(RisingEdgeCnt>0)
??Is_Barraicade_1:
        LDR.W    R2,??DataTable12_5
        LDRB     R2,[R2, #+0]
        CMP      R2,#+0
        BEQ.N    ??Is_Barraicade_4
// 1004     {
// 1005       for(i=RisingEdgeCnt;i>=0;i--)
        LDR.W    R2,??DataTable12_5
        LDRB     R2,[R2, #+0]
        B.N      ??Is_Barraicade_5
??Is_Barraicade_6:
        SUBS     R2,R2,#+1
??Is_Barraicade_5:
        CMP      R2,#+0
        BMI.N    ??Is_Barraicade_4
// 1006       {
// 1007         if((RisingEdge[i]<Rightlast)&&(RisingEdge[i]-7>Leftlast))
        LDR.W    R3,??DataTable12_6
        LDRB     R3,[R2, R3]
        LDR.W    R7,??DataTable12_30
        LDRB     R7,[R7, #+0]
        CMP      R3,R7
        BCS.N    ??Is_Barraicade_6
        LDR.W    R3,??DataTable12_21
        LDRB     R3,[R3, #+0]
        LDR.W    R7,??DataTable12_6
        LDRB     R7,[R2, R7]
        SUBS     R7,R7,#+7
        CMP      R3,R7
        BGE.N    ??Is_Barraicade_6
// 1008         {
// 1009           right_edge=RisingEdge[i];
        LDR.W    R0,??DataTable12_6
        LDRB     R5,[R2, R0]
// 1010           right_edge_find=1;
        MOVS     R0,#+1
// 1011           break;
// 1012 
// 1013         }
// 1014       }
// 1015     }
// 1016     
// 1017     if(right_edge_find && left_edge_find)
??Is_Barraicade_4:
        CMP      R0,#+0
        BEQ.N    ??Is_Barraicade_0
        CMP      R1,#+0
        BEQ.N    ??Is_Barraicade_0
// 1018     {
// 1019       if(ABS(right_edge-left_edge)/Pre_Width[0]>0.2)
        SUBS     R0,R5,R4
        CMP      R0,#+1
        BLT.N    ??Is_Barraicade_7
        SUBS     R0,R5,R4
        B.N      ??Is_Barraicade_8
??Is_Barraicade_7:
        RSBS     R0,R5,#+0
        SUBS     R0,R0,R4
??Is_Barraicade_8:
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable12_26
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable12_31  ;; 0x3e4ccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??Is_Barraicade_0
// 1020       {
// 1021         RoadType=2;//表示障碍
        MOVS     R0,#+2
        LDR.W    R1,??DataTable12_32
        STRB     R0,[R1, #+0]
// 1022         flag_barraicade=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_33
        STRB     R0,[R1, #+0]
// 1023         Character_Distance=Distance;
        LDR.W    R0,??DataTable12_34
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_35
        STR      R0,[R1, #+0]
// 1024       
// 1025 
// 1026         if(Rightlast-right_edge>half_width) B_RightOrLeft=LEFT; //左边出现了障碍
        LDR.W    R0,??DataTable12_30
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,R5
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_cfcmple
        BCS.N    ??Is_Barraicade_9
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_36
        STR      R0,[R1, #+0]
// 1027         if(left_edge-Leftlast>half_width)   B_RightOrLeft=RIGHT;  //右边出现了障碍 
??Is_Barraicade_9:
        LDR.W    R0,??DataTable12_21
        LDRB     R0,[R0, #+0]
        SUBS     R0,R4,R0
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_cfcmple
        BCS.N    ??Is_Barraicade_0
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_36
        STR      R0,[R1, #+0]
// 1028       }
// 1029 
// 1030     }
// 1031 
// 1032   }
// 1033 
// 1034 }
??Is_Barraicade_0:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     Reference_Width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     Max_Value

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     CCD_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x405fc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     Brightness

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x3fee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x9999999a
// 1035 
// 1036 
// 1037 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1038 void Barraicade(void)
// 1039 {
Barraicade:
        PUSH     {R4,LR}
// 1040   int i;
// 1041   LPLD_GPIO_Output_b(PTE, 12, 0);
        MOVS     R2,#+0
        MOVS     R1,#+12
        LDR.N    R0,??DataTable12_17  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
// 1042   if(Barraicade_Cnt<Barraicade_Num)
        LDR.N    R0,??DataTable12_37
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable12_38
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.W    ??Barraicade_0
// 1043   {
// 1044     if(B_RightOrLeft==LEFT)//障碍在左边,右线是对的
        LDR.N    R0,??DataTable12_36
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Barraicade_1
// 1045     {
// 1046        
// 1047       if(FindNearest(RIGHT,Rightlast))
        LDR.N    R0,??DataTable12_30
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+1
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??Barraicade_2
// 1048       {
// 1049         Right=FallingEdge[FallingEdgeIndex];
        LDR.N    R0,??DataTable12_4
        LDR.N    R1,??DataTable12_39
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable12_10
        STR      R0,[R1, #+0]
// 1050         Rightlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_7
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_3
// 1051       }
// 1052       else Rightlastfind=0;
??Barraicade_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_7
        STRB     R0,[R1, #+0]
// 1053       if(Distance-Character_Distance<0.3) //在障碍区内
??Barraicade_3:
        LDR.N    R0,??DataTable12_34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_35
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable12_40  ;; 0x3e99999a
        BL       __aeabi_cfcmple
        BCS.N    ??Barraicade_4
// 1054       {
// 1055         /*Leftlastfind=0;
// 1056         if(RisingEdgeCnt>0)
// 1057         {
// 1058           for(i=RisingEdgeCnt-1;i>=0;i--)
// 1059           {
// 1060             if(RisingEdge[i]+10<Right)
// 1061             {
// 1062               Left=RisingEdge[i];
// 1063               Leftlastfind=1;
// 1064               break;
// 1065             
// 1066             }
// 1067 
// 1068           }
// 1069 
// 1070         }*/
// 1071         if(flag_barraicade==1)
        LDR.N    R0,??DataTable12_33
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Barraicade_5
// 1072         {
// 1073           Barraicade_width=Pre_Width[0];
        LDR.N    R0,??DataTable12_26
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_41
        STR      R0,[R1, #+0]
// 1074           flag_barraicade=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_33
        STRB     R0,[R1, #+0]
// 1075         
// 1076         }
// 1077         Left=Right-(uint8)(Barraicade_width*K_Barraicade); 
??Barraicade_5:
        LDR.N    R0,??DataTable12_10
        LDR      R4,[R0, #+0]
        LDR.N    R0,??DataTable12_41
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_42
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable12_11
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_6
// 1078 
// 1079       }
// 1080       else
// 1081       {
// 1082         if(FindNearest(LEFT,Leftlast))
??Barraicade_4:
        LDR.N    R0,??DataTable12_21
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??Barraicade_7
// 1083         {
// 1084           Left=RisingEdge[RisingEdgeIndex];
        LDR.N    R0,??DataTable12_6
        LDR.N    R1,??DataTable12_43
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable12_11
        STR      R0,[R1, #+0]
// 1085           Leftlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_6
// 1086         
// 1087         }
// 1088         else Leftlastfind=0;
??Barraicade_7:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
// 1089       
// 1090       
// 1091       
// 1092       }
// 1093       
// 1094       
// 1095       if(Leftlastfind && Rightlastfind) Reference_Width=Right-Left;
??Barraicade_6:
        LDR.N    R0,??DataTable12_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_8
        LDR.N    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_8
        LDR.N    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_11
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable12_44
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_9
// 1096       else
// 1097       {
// 1098       
// 1099         Left=Right-Reference_Width;
??Barraicade_8:
        LDR.N    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_44
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable12_11
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_9
// 1100       }
// 1101 
// 1102 
// 1103 
// 1104 
// 1105 
// 1106 
// 1107     }
// 1108     else if(B_RightOrLeft==RIGHT) // 障碍在右边，左线正确
??Barraicade_1:
        LDR.N    R0,??DataTable12_36
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Barraicade_9
// 1109     {
// 1110       if(FindNearest(LEFT,Leftlast))
        LDR.N    R0,??DataTable12_21
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??Barraicade_10
// 1111       {
// 1112         Left=RisingEdge[RisingEdgeIndex];
        LDR.N    R0,??DataTable12_6
        LDR.N    R1,??DataTable12_43
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable12_11
        STR      R0,[R1, #+0]
// 1113         Leftlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_11
// 1114       
// 1115       }
// 1116       else Leftlastfind=0;
??Barraicade_10:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
// 1117       
// 1118       if(Distance - Character_Distance<0.3)//在障碍区域内
??Barraicade_11:
        LDR.N    R0,??DataTable12_34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_35
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable12_40  ;; 0x3e99999a
        BL       __aeabi_cfcmple
        BCS.N    ??Barraicade_12
// 1119       {
// 1120         /*Rightlastfind=0;
// 1121         if(FallingEdgeCnt>0)
// 1122         {
// 1123           for(i=0;i<FallingEdgeCnt;i++)
// 1124           {
// 1125             if(FallingEdge[i]>Left+10)
// 1126             {
// 1127               Right=FallingEdge[i];
// 1128               Rightlastfind=1;
// 1129               break;
// 1130             
// 1131             }
// 1132 
// 1133           }
// 1134 
// 1135         }*/
// 1136         
// 1137         if(flag_barraicade==1)
        LDR.N    R0,??DataTable12_33
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Barraicade_13
// 1138         {
// 1139           Barraicade_width=Pre_Width[0];
        LDR.N    R0,??DataTable12_26
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_41
        STR      R0,[R1, #+0]
// 1140           flag_barraicade=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_33
        STRB     R0,[R1, #+0]
// 1141         
// 1142         }
// 1143         Right=Left-(uint8)(Barraicade_width*K_Barraicade); 
??Barraicade_13:
        LDR.N    R0,??DataTable12_11
        LDR      R4,[R0, #+0]
        LDR.N    R0,??DataTable12_41
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_42
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable12_10
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_14
// 1144 
// 1145       }
// 1146       else  //出障碍
// 1147       {
// 1148         if(FindNearest(Right,Rightlastfind))
??Barraicade_12:
        LDR.N    R0,??DataTable12_7
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??Barraicade_15
// 1149         {
// 1150           Right=FallingEdge[FallingEdgeIndex];
        LDR.N    R0,??DataTable12_4
        LDR.N    R1,??DataTable12_39
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable12_10
        STR      R0,[R1, #+0]
// 1151           Rightlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_7
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_14
// 1152 
// 1153         }
// 1154         else Rightlastfind=0;
??Barraicade_15:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_7
        STRB     R0,[R1, #+0]
// 1155 
// 1156       }
// 1157       if(Leftlastfind && Rightlastfind) Reference_Width=Right-Left;
??Barraicade_14:
        LDR.N    R0,??DataTable12_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_16
        LDR.N    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_16
        LDR.N    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_11
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable12_44
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_9
// 1158       else 
// 1159       {
// 1160         Right=Left+Reference_Width;
??Barraicade_16:
        LDR.N    R0,??DataTable12_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_44
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable12_10
        STR      R0,[R1, #+0]
// 1161       
// 1162       }
// 1163 
// 1164     }
// 1165     
// 1166     if(Distance-Character_Distance>0.5)
??Barraicade_9:
        LDR.N    R0,??DataTable12_34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_35
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable12_45  ;; 0x3f000001
        BL       __aeabi_cfrcmple
        BHI.N    ??Barraicade_17
// 1167     {
// 1168       RoadType=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_32
        STRB     R0,[R1, #+0]
// 1169       Barraicade_Cnt+=1;
        LDR.N    R0,??DataTable12_37
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable12_37
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_17
// 1170     }
// 1171    
// 1172     
// 1173   }
// 1174   else 
// 1175   {
// 1176     Right=80;
??Barraicade_0:
        MOVS     R0,#+80
        LDR.N    R1,??DataTable12_10
        STR      R0,[R1, #+0]
// 1177     Left=52;
        MOVS     R0,#+52
        LDR.N    R1,??DataTable12_11
        STR      R0,[R1, #+0]
// 1178     if(Distance-Character_Distance>0.3)
        LDR.N    R0,??DataTable12_34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_35
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable12_40  ;; 0x3e99999a
        BL       __aeabi_cfrcmple
        BHI.N    ??Barraicade_18
// 1179     {
// 1180       
// 1181       RoadType=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_32
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_17
// 1182     
// 1183     }
// 1184     else
// 1185     {
// 1186       
// 1187       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7,50);
??Barraicade_18:
        MOVS     R2,#+50
        MOVS     R1,#+7
        LDR.N    R0,??DataTable12_46  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
// 1188         
// 1189       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,50);
        MOVS     R2,#+50
        MOVS     R1,#+5
        LDR.N    R0,??DataTable12_46  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
// 1190     
// 1191     }
// 1192   
// 1193   }
// 1194   
// 1195 
// 1196 }
??Barraicade_17:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x3fa99999
// 1197 
// 1198 
// 1199 
// 1200 
// 1201 
// 1202 
// 1203 
// 1204 
// 1205 
// 1206 
// 1207 
// 1208 
// 1209 
// 1210 
// 1211 
// 1212 
// 1213 
// 1214 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1215 void Prejudge()//预判函数
// 1216 {
// 1217   if(RisingEdgeCnt==0 && FallingEdgeCnt==0)
Prejudge:
        LDR.N    R0,??DataTable12_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prejudge_0
        LDR.N    R0,??DataTable12_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prejudge_0
// 1218   {
// 1219     RoadType=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_32
        STRB     R0,[R1, #+0]
// 1220     curve_to_cross=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_3
        STRB     R0,[R1, #+0]
// 1221     Character_Distance=Distance;//进入十字后记录特征距离
        LDR.N    R0,??DataTable12_34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_35
        STR      R0,[R1, #+0]
// 1222   }
// 1223 
// 1224 }
??Prejudge_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     flag_curve_to_cross
// 1225 
// 1226 /***
// 1227 **填充发送到上位机的信息
// 1228 ***/
// 1229 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1230 void Fill_CCD_Info(void)
// 1231 {
// 1232 
// 1233   CCD_Draw_Buff[128]=Leftlast;
Fill_CCD_Info:
        LDR.N    R0,??DataTable12_21
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable12
        STRB     R0,[R1, #+128]
// 1234   CCD_Draw_Buff[129]=Rightlast;  
        LDR.N    R0,??DataTable12_30
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable12
        STRB     R0,[R1, #+129]
// 1235 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     CCD_Draw_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     ??Width_Change_Cnt_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     ??Width_Change_Cnt_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     curve_to_cross

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     FallingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     RisingEdgeCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     RisingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     Rightlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     Leftlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     Correct_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     0x3ecccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     ??Cross_Road_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     0x3e19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     ??Normal_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     Middle_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DC32     Middle_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_20:
        DC32     Max_Peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_21:
        DC32     Leftlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_22:
        DC32     0x40500000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_23:
        DC32     0x40000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_24:
        DC32     0x40400001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_25:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_26:
        DC32     Pre_Width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_27:
        DC32     Pre_Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_28:
        DC32     Pre_Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_29:
        DC32     FallingEdgeCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_30:
        DC32     Rightlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_31:
        DC32     0x3e4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_32:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_33:
        DC32     flag_barraicade

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_34:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_35:
        DC32     Character_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_36:
        DC32     B_RightOrLeft

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_37:
        DC32     Barraicade_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_38:
        DC32     Barraicade_Num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_39:
        DC32     FallingEdgeIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_40:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_41:
        DC32     Barraicade_width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_42:
        DC32     K_Barraicade

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_43:
        DC32     RisingEdgeIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_44:
        DC32     Reference_Width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_45:
        DC32     0x3f000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_46:
        DC32     0x40038000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1236 
// 1237 
// 1238 
// 1239 
// 1240 
// 1241 
// 1242 
// 1243 
// 1244 
// 1245 
// 
//   657 bytes in section .bss
//    20 bytes in section .data
// 5 902 bytes in section .text
// 
// 5 902 bytes of CODE memory
//   677 bytes of DATA memory
//
//Errors: none
//Warnings: 14
