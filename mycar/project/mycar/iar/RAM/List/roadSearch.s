///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       14/Jul/2016  23:45:57
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\roadSearch.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\roadSearch.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\roadSearch.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Brightness
        EXTERN CCD_Buff
        EXTERN CCD_Draw_Buff
        EXTERN CCD_Offset
        EXTERN CarSpeed
        EXTERN Distance
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
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2d

        PUBLIC B_RightOrLeft
        PUBLIC Barraicade
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
        PUBLIC Left
        PUBLIC Leftlast
        PUBLIC Leftlastfind
        PUBLIC Max_Peak
        PUBLIC Middle_Err
        PUBLIC Nor_Cnt
        PUBLIC Normal
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

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8 Threshold;
Threshold:
        DS8 1

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

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   22 uint8 Nor_Cnt=0;
Nor_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   23 uint8 STATE=0;
STATE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   24 uint8 curve_to_cross=0;
curve_to_cross:
        DS8 1
//   25 /****
//   26 *寻找跳变沿和峰值
//   27 ****/
//   28 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 void EdgeFind(void) 
//   30 {
//   31   int i = 0;//for 的下标
EdgeFind:
        MOVS     R0,#+0
//   32   //对各值进行初始化
//   33   Max_Peak=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5
        STR      R0,[R1, #+0]
//   34   RisingEdgeCnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_1
        STRB     R0,[R1, #+0]
//   35   FallingEdgeCnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_2
        STRB     R0,[R1, #+0]
//   36   for(i=0;i<5;i++)
        MOVS     R0,#+0
        B.N      ??EdgeFind_0
//   37   {
//   38     RisingEdge[i]=0;
??EdgeFind_1:
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5_3
        STRB     R1,[R0, R2]
//   39     FallingEdge[i]=0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5_4
        STRB     R1,[R0, R2]
//   40   }
        ADDS     R0,R0,#+1
??EdgeFind_0:
        CMP      R0,#+5
        BLT.N    ??EdgeFind_1
//   41   for(i=3;i<128;i++)
        MOVS     R0,#+3
        B.N      ??EdgeFind_2
//   42   {
//   43     CCD_Diff[i]=CCD_Buff[i]-CCD_Buff[i-3];
//   44     if(ABS(CCD_Diff[i])>Max_Peak) Max_Peak=ABS(CCD_Diff[i]);//寻找差分值的峰值 
??EdgeFind_3:
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        RSBS     R1,R1,#+0
        LDR.W    R2,??DataTable5
        STR      R1,[R2, #+0]
??EdgeFind_4:
        ADDS     R0,R0,#+1
??EdgeFind_2:
        CMP      R0,#+128
        BGE.N    ??EdgeFind_5
        LDR.W    R1,??DataTable5_6
        LDRH     R1,[R1, R0, LSL #+1]
        LDR.W    R2,??DataTable5_6
        ADDS     R2,R2,R0, LSL #+1
        LDRH     R2,[R2, #-6]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable5_5
        STR      R1,[R2, R0, LSL #+2]
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R1,#+1
        BLT.N    ??EdgeFind_6
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        B.N      ??EdgeFind_7
??EdgeFind_6:
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        RSBS     R1,R1,#+0
??EdgeFind_7:
        LDR.W    R2,??DataTable5
        LDR      R2,[R2, #+0]
        CMP      R2,R1
        BGE.N    ??EdgeFind_4
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R1,#+1
        BLT.N    ??EdgeFind_3
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        LDR.W    R2,??DataTable5
        STR      R1,[R2, #+0]
        B.N      ??EdgeFind_4
//   45   }
//   46   for(i=4;i<127;i++)
??EdgeFind_5:
        MOVS     R0,#+4
        B.N      ??EdgeFind_8
//   47   {
//   48     if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>Threshold)) //寻找正的峰值，左边线
??EdgeFind_9:
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        LDR.W    R2,??DataTable5_5
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #-4]
        CMP      R1,R2
        BLT.N    ??EdgeFind_10
        LDR.W    R1,??DataTable5_5
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable5_5
        LDR      R2,[R2, R0, LSL #+2]
        CMP      R1,R2
        BGE.N    ??EdgeFind_10
        LDR.W    R1,??DataTable5_7
        LDRB     R1,[R1, #+0]
        LDR.W    R2,??DataTable5_5
        LDR      R2,[R2, R0, LSL #+2]
        CMP      R1,R2
        BGE.N    ??EdgeFind_10
//   49     {
//   50       if(RisingEdgeCnt<5)    
        LDR.W    R1,??DataTable5_1
        LDRB     R1,[R1, #+0]
        CMP      R1,#+5
        BGE.N    ??EdgeFind_10
//   51       { 
//   52        RisingEdge[RisingEdgeCnt]=i;
        LDR.W    R1,??DataTable5_3
        LDR.W    R2,??DataTable5_1
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//   53        RisingEdgeCnt++;  
        LDR.W    R1,??DataTable5_1
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable5_1
        STRB     R1,[R2, #+0]
//   54       }
//   55     } 
//   56     if((CCD_Diff[i]<CCD_Diff[i-1])&&(CCD_Diff[i]<=CCD_Diff[i+1])&&(CCD_Diff[i]<-Threshold))  //寻找负的峰值，右边线
??EdgeFind_10:
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        LDR.W    R2,??DataTable5_5
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #-4]
        CMP      R1,R2
        BGE.N    ??EdgeFind_11
        LDR.W    R1,??DataTable5_5
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable5_5
        LDR      R2,[R2, R0, LSL #+2]
        CMP      R1,R2
        BLT.N    ??EdgeFind_11
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R0, LSL #+2]
        LDR.W    R2,??DataTable5_7
        LDRB     R2,[R2, #+0]
        CMN      R1,R2
        BGE.N    ??EdgeFind_11
//   57     {
//   58       if(FallingEdgeCnt<5)    
        LDR.W    R1,??DataTable5_2
        LDRB     R1,[R1, #+0]
        CMP      R1,#+5
        BGE.N    ??EdgeFind_11
//   59       {
//   60        FallingEdge[FallingEdgeCnt]=i;
        LDR.W    R1,??DataTable5_4
        LDR.W    R2,??DataTable5_2
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//   61        FallingEdgeCnt++;
        LDR.W    R1,??DataTable5_2
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable5_2
        STRB     R1,[R2, #+0]
//   62       }
//   63     }
//   64   }
??EdgeFind_11:
        ADDS     R0,R0,#+1
??EdgeFind_8:
        CMP      R0,#+127
        BLT.N    ??EdgeFind_9
//   65   
//   66   
//   67 
//   68 }
        BX       LR               ;; return
//   69 
//   70 /*****
//   71 ** 寻找两条边线  仅能够处理直道，弯道无法识别
//   72 *****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void Find_BothLine(void)
//   74 {
Find_BothLine:
        PUSH     {R4}
//   75   uint8 i=0, j=0, find=0;
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R0,#+0
//   76   for(i=60;i>20;i--)
        MOVS     R1,#+60
        B.N      ??Find_BothLine_0
??Find_BothLine_1:
        SUBS     R1,R1,#+1
??Find_BothLine_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+21
        BLT.N    ??Find_BothLine_2
//   77   {
//   78     if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>Threshold)) //寻找左边线
        LDR.W    R2,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R2,[R2, R1, LSL #+2]
        LDR.W    R3,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R3,R1, LSL #+2
        LDR      R3,[R3, #-4]
        CMP      R2,R3
        BLT.N    ??Find_BothLine_1
        LDR.W    R2,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R2,R1, LSL #+2
        LDR      R2,[R2, #+4]
        LDR.W    R3,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R3,[R3, R1, LSL #+2]
        CMP      R2,R3
        BGE.N    ??Find_BothLine_1
        LDR.W    R2,??DataTable5_7
        LDRB     R2,[R2, #+0]
        LDR.W    R3,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R3,[R3, R1, LSL #+2]
        CMP      R2,R3
        BGE.N    ??Find_BothLine_1
//   79     {
//   80         break;
//   81     }
//   82   }
//   83   for(j=70;j<110;j++)
??Find_BothLine_2:
        MOVS     R2,#+70
        B.N      ??Find_BothLine_3
??Find_BothLine_4:
        ADDS     R2,R2,#+1
??Find_BothLine_3:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+110
        BGE.N    ??Find_BothLine_5
//   84   {
//   85     if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold))//寻找右边线
        LDR.W    R3,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R3,[R3, R2, LSL #+2]
        LDR.W    R4,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R4,R4,R2, LSL #+2
        LDR      R4,[R4, #-4]
        CMP      R3,R4
        BGE.N    ??Find_BothLine_4
        LDR.W    R3,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R3,R3,R2, LSL #+2
        LDR      R3,[R3, #+4]
        LDR.W    R4,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R4,[R4, R2, LSL #+2]
        CMP      R3,R4
        BLT.N    ??Find_BothLine_4
        LDR.W    R3,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R3,[R3, R2, LSL #+2]
        LDR.W    R4,??DataTable5_7
        LDRB     R4,[R4, #+0]
        CMN      R3,R4
        BGE.N    ??Find_BothLine_4
//   86     {
//   87       break;
//   88     }
//   89   }
//   90   
//   91   if(i>25 && j<105) //如果左右边线满足条件
??Find_BothLine_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+26
        BLT.N    ??Find_BothLine_6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+105
        BGE.N    ??Find_BothLine_6
//   92   {
//   93     find=1;
        MOVS     R0,#+1
//   94     Left=i;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable5_8
        STR      R1,[R3, #+0]
//   95     Right=j;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R1,??DataTable5_9
        STR      R2,[R1, #+0]
//   96     Leftlastfind=1;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable5_10
        STRB     R1,[R2, #+0]
//   97     Rightlastfind=1;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable6
        STRB     R1,[R2, #+0]
        B.N      ??Find_BothLine_7
//   98   }
//   99   else  //放宽左右边线条件
//  100   {
//  101     for(i=10;i<80;i++)
??Find_BothLine_6:
        MOVS     R1,#+10
        B.N      ??Find_BothLine_8
??Find_BothLine_9:
        ADDS     R1,R1,#+1
??Find_BothLine_8:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+80
        BGE.N    ??Find_BothLine_7
//  102     {
//  103       if((CCD_Diff[i]>=CCD_Diff[i-1])&&(CCD_Diff[i]>CCD_Diff[i+1])&&(CCD_Diff[i]>Threshold))
        LDR.W    R2,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R2,[R2, R1, LSL #+2]
        LDR.W    R3,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R3,R1, LSL #+2
        LDR      R3,[R3, #-4]
        CMP      R2,R3
        BLT.N    ??Find_BothLine_10
        LDR.W    R2,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R2,R1, LSL #+2
        LDR      R2,[R2, #+4]
        LDR.W    R3,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R3,[R3, R1, LSL #+2]
        CMP      R2,R3
        BGE.N    ??Find_BothLine_10
        LDR.W    R2,??DataTable5_7
        LDRB     R2,[R2, #+0]
        LDR.W    R3,??DataTable5_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R3,[R3, R1, LSL #+2]
        CMP      R2,R3
        BGE.N    ??Find_BothLine_10
//  104       {
//  105         for(j=64;j<=120;j++)
        MOVS     R2,#+64
        B.N      ??Find_BothLine_11
??Find_BothLine_12:
        ADDS     R2,R2,#+1
??Find_BothLine_11:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+121
        BGE.N    ??Find_BothLine_10
//  106         {
//  107           if((CCD_Diff[j]<CCD_Diff[j-1])&&(CCD_Diff[j]<=CCD_Diff[j+1])&&(CCD_Diff[j]<-Threshold))
        LDR.W    R3,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R3,[R3, R2, LSL #+2]
        LDR.W    R4,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R4,R4,R2, LSL #+2
        LDR      R4,[R4, #-4]
        CMP      R3,R4
        BGE.N    ??Find_BothLine_12
        LDR.W    R3,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R3,R3,R2, LSL #+2
        LDR      R3,[R3, #+4]
        LDR.W    R4,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R4,[R4, R2, LSL #+2]
        CMP      R3,R4
        BLT.N    ??Find_BothLine_12
        LDR.W    R3,??DataTable5_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R3,[R3, R2, LSL #+2]
        LDR.W    R4,??DataTable5_7
        LDRB     R4,[R4, #+0]
        CMN      R3,R4
        BGE.N    ??Find_BothLine_12
//  108           {
//  109             if(j-i>25)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R3,R2,R1
        CMP      R3,#+26
        BLT.N    ??Find_BothLine_13
//  110             {
//  111               find=1;
        MOVS     R0,#+1
//  112               Left=i;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable5_8
        STR      R1,[R3, #+0]
//  113               Right=j;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R3,??DataTable5_9
        STR      R2,[R3, #+0]
//  114               Leftlastfind=1;
        MOVS     R2,#+1
        LDR.W    R3,??DataTable5_10
        STRB     R2,[R3, #+0]
//  115               Rightlastfind=1;
        MOVS     R2,#+1
        LDR.W    R3,??DataTable6
        STRB     R2,[R3, #+0]
//  116             }
//  117             break;
//  118           }
//  119           
//  120         }
//  121       
//  122       }
//  123       if(find)  break;
??Find_BothLine_13:
??Find_BothLine_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??Find_BothLine_9
//  124      
//  125     
//  126     }
//  127 
//  128   }
//  129   
//  130   if(find==0)
??Find_BothLine_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??Find_BothLine_14
//  131   {
//  132     Leftlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
//  133     Rightlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
//  134   }
//  135  
//  136 }
??Find_BothLine_14:
        POP      {R4}
        BX       LR               ;; return
//  137 
//  138 /****
//  139 * 根据参数寻找靠近中心线的边界
//  140 * 参数;mode ,两种：LEFT和RIGHT
//  141 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 uint8 FindBoundary(uint8 mode)
//  143 {
FindBoundary:
        MOVS     R1,R0
//  144   uint8 find=0;
        MOVS     R0,#+0
//  145   if(mode==LEFT)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FindBoundary_0
//  146   {
//  147     if(RisingEdgeCnt!=0)
        LDR.W    R1,??DataTable5_1
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??FindBoundary_1
//  148     {
//  149       for(RisingEdgeIndex=RisingEdgeCnt-1;RisingEdgeIndex>=0;RisingEdgeIndex--)//RisingEdgeIndex=RisingEdgeCnt-1？？？？？
        LDR.W    R1,??DataTable5_1
        LDRB     R1,[R1, #+0]
        SUBS     R1,R1,#+1
        LDR.W    R2,??DataTable6_1
        STR      R1,[R2, #+0]
        B.N      ??FindBoundary_2
??FindBoundary_3:
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        SUBS     R1,R1,#+1
        LDR.W    R2,??DataTable6_1
        STR      R1,[R2, #+0]
??FindBoundary_2:
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BMI.N    ??FindBoundary_1
//  150       {
//  151         if(RisingEdge[RisingEdgeIndex]<75)   //参数为什么设置为75
        LDR.W    R1,??DataTable5_3
        LDR.W    R2,??DataTable6_1
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R1,#+75
        BGE.N    ??FindBoundary_4
//  152         {
//  153           find=1;
        MOVS     R0,#+1
//  154           
//  155           break;
        B.N      ??FindBoundary_1
//  156         }
//  157         if(RisingEdgeIndex==0) break;
??FindBoundary_4:
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??FindBoundary_3
        B.N      ??FindBoundary_1
//  158       
//  159       }
//  160     }
//  161   }
//  162   else
//  163   {
//  164     if(FallingEdgeCnt!=0)
??FindBoundary_0:
        LDR.W    R1,??DataTable5_2
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??FindBoundary_1
//  165     {
//  166       for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
        MOVS     R1,#+0
        LDR.W    R2,??DataTable6_2
        STR      R1,[R2, #+0]
        B.N      ??FindBoundary_5
??FindBoundary_6:
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable6_2
        STR      R1,[R2, #+0]
??FindBoundary_5:
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable5_2
        LDRB     R2,[R2, #+0]
        CMP      R1,R2
        BGE.N    ??FindBoundary_1
//  167       {
//  168          if(FallingEdge[FallingEdgeIndex]>53)
        LDR.W    R1,??DataTable5_4
        LDR.W    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R1,#+54
        BLT.N    ??FindBoundary_6
//  169          {
//  170             find=1;
        MOVS     R0,#+1
//  171             break;
//  172          }
//  173       
//  174       }
//  175     
//  176     }
//  177   }
//  178   
//  179   return find;
??FindBoundary_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  180 
//  181 }
//  182 /*****
//  183 ***根据上次找到的边线寻找新的边线
//  184 *****/
//  185 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 uint8 FindNearest(uint8 mode,uint8 lastegde)
//  187 {
FindNearest:
        PUSH     {R4}
//  188   uint8 find=0;
        MOVS     R2,#+0
//  189   if(mode==LEFT)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FindNearest_0
//  190   {
//  191      if(RisingEdgeCnt!=0)  
        LDR.W    R0,??DataTable5_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??FindNearest_1
//  192      {
//  193       for(RisingEdgeIndex=0;RisingEdgeIndex<RisingEdgeCnt;RisingEdgeIndex++)
        MOVS     R0,#+0
        LDR.W    R3,??DataTable6_1
        STR      R0,[R3, #+0]
        B.N      ??FindNearest_2
??FindNearest_3:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R3,??DataTable6_1
        STR      R0,[R3, #+0]
??FindNearest_2:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R3,??DataTable5_1
        LDRB     R3,[R3, #+0]
        CMP      R0,R3
        BGE.N    ??FindNearest_1
//  194       {
//  195        if(ABS(lastegde-RisingEdge[RisingEdgeIndex])<=3)//3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5_3
        LDR.W    R3,??DataTable6_1
        LDR      R3,[R3, #+0]
        LDRB     R0,[R3, R0]
        SUBS     R0,R1,R0
        CMP      R0,#+1
        BLT.N    ??FindNearest_4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5_3
        LDR.W    R3,??DataTable6_1
        LDR      R3,[R3, #+0]
        LDRB     R0,[R3, R0]
        SUBS     R0,R1,R0
        B.N      ??FindNearest_5
??FindNearest_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        RSBS     R0,R1,#+0
        LDR.W    R3,??DataTable5_3
        LDR.W    R4,??DataTable6_1
        LDR      R4,[R4, #+0]
        LDRB     R3,[R4, R3]
        SUBS     R0,R0,R3
??FindNearest_5:
        CMP      R0,#+4
        BGE.N    ??FindNearest_3
//  196        {
//  197          find=1;
        MOVS     R2,#+1
//  198          break;
        B.N      ??FindNearest_1
//  199        }
//  200       }
//  201      }
//  202   }
//  203   else
//  204   {
//  205     if(FallingEdgeCnt!=0)  
??FindNearest_0:
        LDR.W    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??FindNearest_1
//  206    {
//  207      for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
        MOVS     R0,#+0
        LDR.W    R3,??DataTable6_2
        STR      R0,[R3, #+0]
        B.N      ??FindNearest_6
??FindNearest_7:
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R3,??DataTable6_2
        STR      R0,[R3, #+0]
??FindNearest_6:
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.W    R3,??DataTable5_2
        LDRB     R3,[R3, #+0]
        CMP      R0,R3
        BGE.N    ??FindNearest_1
//  208      {
//  209        if(ABS(lastegde-FallingEdge[FallingEdgeIndex])<=3)//3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5_4
        LDR.W    R3,??DataTable6_2
        LDR      R3,[R3, #+0]
        LDRB     R0,[R3, R0]
        SUBS     R0,R1,R0
        CMP      R0,#+1
        BLT.N    ??FindNearest_8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5_4
        LDR.W    R3,??DataTable6_2
        LDR      R3,[R3, #+0]
        LDRB     R0,[R3, R0]
        SUBS     R0,R1,R0
        B.N      ??FindNearest_9
??FindNearest_8:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        RSBS     R0,R1,#+0
        LDR.W    R3,??DataTable5_4
        LDR.W    R4,??DataTable6_2
        LDR      R4,[R4, #+0]
        LDRB     R3,[R4, R3]
        SUBS     R0,R0,R3
??FindNearest_9:
        CMP      R0,#+4
        BGE.N    ??FindNearest_7
//  210        {
//  211          find=1;
        MOVS     R2,#+1
//  212          break;
//  213        }
//  214      }
//  215    }
//  216   }
//  217   return find;
??FindNearest_1:
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  218 }
//  219 
//  220 /****
//  221 ** 对常规赛道的处理函数
//  222 ****/
//  223 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  224 void Normal(void)
//  225 {
Normal:
        PUSH     {R7,LR}
//  226  uint8 tempwidth;
//  227  if(Leftlastfind==0 && Rightlastfind==0) //上次双线均未找到
        LDR.W    R0,??DataTable5_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_0
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_0
//  228  {
//  229     Find_BothLine();//寻找双线
        BL       Find_BothLine
//  230     if(Leftlastfind==0 && Rightlastfind==0)//仍然没有找到双线
        LDR.W    R0,??DataTable5_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_1
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_1
//  231     {
//  232        if(FindBoundary(LEFT))
        MOVS     R0,#+0
        BL       FindBoundary
        CMP      R0,#+0
        BEQ.N    ??Normal_2
//  233        {
//  234         Left=RisingEdge[RisingEdgeIndex];
        LDR.W    R0,??DataTable5_3
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  235         Leftlastfind=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
        B.N      ??Normal_3
//  236         //if(Left<34)Leftlastfind=0;
//  237        }
//  238        else  Leftlastfind=0;
??Normal_2:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
//  239        
//  240        if(FindBoundary(RIGHT))
??Normal_3:
        MOVS     R0,#+1
        BL       FindBoundary
        CMP      R0,#+0
        BEQ.N    ??Normal_4
//  241        {
//  242          Right=FallingEdge[FallingEdgeIndex];
        LDR.W    R0,??DataTable5_4
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  243          Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
        B.N      ??Normal_5
//  244          //if(Right>84)Rightlastfind=0;
//  245        }
//  246        else  Rightlastfind=0;
??Normal_4:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
//  247        if(Leftlastfind&&Rightlastfind) 
??Normal_5:
        LDR.W    R0,??DataTable5_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_1
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_1
//  248        {
//  249          if(Right<=Left)
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_9
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.W    ??Normal_1
//  250          {
//  251            Leftlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
//  252            Rightlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
        B.N      ??Normal_1
//  253          }
//  254        }
//  255        
//  256        
//  257     }//end if(Leftlastfind==0&&Rightlastfind==0)
//  258     
//  259 
//  260 
//  261  
//  262  } //end if (Leftlastfind==0 && Rightlastfind==0) 
//  263  
//  264  
//  265  ///////////////////////////////////
//  266  else //上次至少找到了一边
//  267  {
//  268     if(Leftlastfind  ) //上次找到了左线
??Normal_0:
        LDR.W    R0,??DataTable5_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_6
//  269     {
//  270       if(FindNearest(LEFT,Leftlast))		//这次能找到左线
        LDR.W    R0,??DataTable6_3
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       FindNearest
        CMP      R0,#+0
        BEQ.W    ??Normal_7
//  271       {
//  272         Left=RisingEdge[RisingEdgeIndex];
        LDR.W    R0,??DataTable5_3
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  273         Leftlastfind=1;	
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
//  274         if(Rightlastfind==0)//上次没有找到右线
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_6
//  275         { 
//  276           
//  277          if(FallingEdgeCnt)
        LDR.W    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_8
//  278          {
//  279            for(FallingEdgeIndex=0;FallingEdgeIndex<FallingEdgeCnt;FallingEdgeIndex++)
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
        B.N      ??Normal_9
??Normal_10:
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
??Normal_9:
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_2
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Normal_11
//  280           {
//  281             rightfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  282             if(FallingEdge[FallingEdgeIndex]>Left)
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_4
        LDR.W    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R0,R1
        BGE.N    ??Normal_10
//  283             {
//  284               tempwidth = FallingEdge[FallingEdgeIndex]-Left;
        LDR.W    R0,??DataTable5_4
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable5_8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
//  285               if(ABS(tempwidth-Reference_Width)>=2)      
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R1,R0,R1
        CMP      R1,#+1
        BLT.N    ??Normal_12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R1,R0,R1
        B.N      ??Normal_13
??Normal_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        RSBS     R1,R0,#+0
        LDR.W    R2,??DataTable8
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
??Normal_13:
        CMP      R1,#+2
        BLT.N    ??Normal_14
//  286               {
//  287                if(tempwidth>Reference_Width)   Reference_Width=Reference_Width+1;   //潜在的赛道边线比参考宽度宽,更新参考宽度
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??Normal_15
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
        B.N      ??Normal_16
//  288                else                         
//  289                {
//  290                  Reference_Width=Reference_Width-1;   //潜在的赛道边线比参考宽度窄，更新参考宽度
??Normal_15:
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//  291                  //if(RoadType==0)
//  292                  //Reference_Width=Reference_Width-1;
//  293                }
//  294                Right=Left+Reference_Width;
??Normal_16:
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  295                Rightlastfind = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
        B.N      ??Normal_17
//  296              }
//  297              else
//  298              {
//  299                 Right=FallingEdge[FallingEdgeIndex];
??Normal_14:
        LDR.W    R0,??DataTable5_4
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  300                 Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
//  301              }
//  302              rightfind=1;  
??Normal_17:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  303              break;
//  304             }
//  305            
//  306           
//  307           
//  308            }//end for
//  309            
//  310            
//  311           if(rightfind==0)   
??Normal_11:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_6
//  312           {
//  313             if(CarSpeed>2.5)          //在车模的速度足够块的情况下才这样弄
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2  ;; 0x40200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Normal_18
//  314             {
//  315              if(Left+Reference_Width<=118)  //虚拟出来的右边线要往外靠，但是不能靠得太狠了
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        CMP      R0,#+119
        BGE.N    ??Normal_19
//  316              {
//  317               Reference_Width++;
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
        B.N      ??Normal_18
//  318              }
//  319              else 
//  320              {
//  321               Reference_Width=118-Left;
??Normal_19:
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+118
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//  322              }
//  323             }
//  324             Right=Left+Reference_Width;
??Normal_18:
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable5_9
        STR      R0,[R1, #+0]
        B.N      ??Normal_6
//  325           }
//  326          }
//  327          else
//  328          {
//  329            
//  330            if(CarSpeed>2.5)          //在车模的速度足够块的情况下才这样弄
??Normal_8:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2  ;; 0x40200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Normal_20
//  331             {
//  332              if(Left+Reference_Width<=118)  //虚拟出来的右边线要往外靠，但是不能靠得太狠了
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        CMP      R0,#+119
        BGE.N    ??Normal_21
//  333              {
//  334               Reference_Width++;
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
        B.N      ??Normal_20
//  335              }
//  336              else 
//  337              {
//  338               Reference_Width=118-Left;
??Normal_21:
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+118
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//  339              }
//  340             }
//  341             Right=Left+Reference_Width;
??Normal_20:
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable5_9
        STR      R0,[R1, #+0]
        B.N      ??Normal_6
//  342          }
//  343          
//  344         
//  345         }
//  346       
//  347       }
//  348       else //这次没能找到左线
//  349       {
//  350           Leftlastfind=0;
??Normal_7:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
//  351           if(FindBoundary(LEFT))
        MOVS     R0,#+0
        BL       FindBoundary
        CMP      R0,#+0
        BEQ.N    ??Normal_22
//  352           {
//  353             if((RisingEdge[RisingEdgeIndex]<Leftlast))//左边界比之前更宽
        LDR.W    R0,??DataTable5_3
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_3
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??Normal_23
//  354             {
//  355               if(Rightlastfind==0)
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_6
//  356               {
//  357                 RoadType=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  358                 Character_Distance=Distance; 
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
        B.N      ??Normal_6
//  359               }
//  360             }
//  361             else if(RisingEdge[RisingEdgeIndex]<Leftlast+8)//没有找到与上次相邻的边界，但找到的边界比上次更加靠近中心
??Normal_23:
        LDR.W    R0,??DataTable5_3
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable6_3
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+8
        CMP      R0,R1
        BGE.N    ??Normal_6
//  362             {
//  363               Left=RisingEdge[RisingEdgeIndex];
        LDR.W    R0,??DataTable5_3
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  364               Leftlastfind=1;   
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
        B.N      ??Normal_6
//  365             }
//  366 
//  367 
//  368           }
//  369           else
//  370           {
//  371             if(Rightlastfind==0 )
??Normal_22:
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_6
//  372             {
//  373               RoadType=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  374               Character_Distance=Distance; 
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  375             }
//  376           }
//  377 
//  378       }
//  379     }
//  380     
//  381     if(Rightlastfind ) //上次找到了右边线
??Normal_6:
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_24
//  382     {
//  383        if(FindNearest(RIGHT,Rightlast))	//这次能找到右线
        LDR.W    R0,??DataTable7_6
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+1
        BL       FindNearest
        CMP      R0,#+0
        BEQ.W    ??Normal_25
//  384        {
//  385           Right=FallingEdge[FallingEdgeIndex];
        LDR.W    R0,??DataTable5_4
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  386           Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
//  387           if(Leftlastfind==0)  //上次没有找到左线
        LDR.W    R0,??DataTable5_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_24
//  388           {
//  389              if(RisingEdgeCnt>0)
        LDR.N    R0,??DataTable5_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Normal_26
//  390              {  
//  391                 for(RisingEdgeIndex=RisingEdgeCnt-1;RisingEdgeIndex>=0;RisingEdgeIndex--)
        LDR.N    R0,??DataTable5_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        B.N      ??Normal_27
??Normal_28:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
??Normal_27:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BMI.N    ??Normal_29
//  392                 {
//  393                     leftfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//  394                     if(RisingEdge[RisingEdgeIndex]<Right) //找到潜在边线
        LDR.N    R0,??DataTable5_3
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_9
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Normal_28
//  395                     {
//  396                         tempwidth = Right-RisingEdge[RisingEdgeIndex];
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_3
        LDR.W    R2,??DataTable6_1
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        SUBS     R0,R0,R1
//  397                         if (ABS(tempwidth-Reference_Width)>=2)       
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R1,R0,R1
        CMP      R1,#+1
        BLT.N    ??Normal_30
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R1,R0,R1
        B.N      ??Normal_31
??Normal_30:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        RSBS     R1,R0,#+0
        LDR.W    R2,??DataTable8
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
??Normal_31:
        CMP      R1,#+2
        BLT.N    ??Normal_32
//  398                         {
//  399                           if(tempwidth>Reference_Width)   Reference_Width=Reference_Width+1; 
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??Normal_33
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
        B.N      ??Normal_34
//  400                           else
//  401                           {
//  402                               Reference_Width=Reference_Width-1;
??Normal_33:
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//  403                              
//  404                           }
//  405                           Left=Right-Reference_Width;
??Normal_34:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  406                           Leftlastfind = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
        B.N      ??Normal_35
//  407                             
//  408                         }
//  409                         else
//  410                         {
//  411                           Left=RisingEdge[RisingEdgeIndex];
??Normal_32:
        LDR.N    R0,??DataTable5_3
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  412                           Leftlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
//  413                         }
//  414                         leftfind=1;
??Normal_35:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//  415                         break;
//  416                     
//  417                     }
//  418                 
//  419                 }//end for
//  420                 if(leftfind==0)   //虽然说有上升沿，但是该上升沿无效
??Normal_29:
        LDR.W    R0,??DataTable7_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Normal_24
//  421                 {
//  422                     if(CarSpeed>2.5)              //速度限制，防止出线
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2  ;; 0x40200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Normal_36
//  423                     {
//  424                      if(Right-Reference_Width>=10)  //虚拟出来的右边线要往外靠，但是不能靠得太狠了
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+10
        BLT.N    ??Normal_37
//  425                      {
//  426                         Reference_Width++;
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
        B.N      ??Normal_36
//  427                      }
//  428                      else 
//  429                      {
//  430                         Reference_Width=Right-10;
??Normal_37:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//  431                      } 
//  432                     }
//  433                    Left=Right-Reference_Width;
??Normal_36:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
        B.N      ??Normal_24
//  434                 }
//  435 
//  436              }
//  437              else
//  438              {
//  439                
//  440                 if(CarSpeed>2.5)              //速度限制，防止出线
??Normal_26:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2  ;; 0x40200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Normal_38
//  441                 {
//  442                  if(Right-Reference_Width>=10)  //虚拟出来的右边线要往外靠，但是不能靠得太狠了
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+10
        BLT.N    ??Normal_39
//  443                  {
//  444                     Reference_Width++;
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
        B.N      ??Normal_38
//  445                  }
//  446                  else 
//  447                  {
//  448                     Reference_Width=Right-10;
??Normal_39:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//  449                  } 
//  450                 }
//  451                 Left=Right-Reference_Width;
??Normal_38:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
        B.N      ??Normal_24
//  452              }
//  453           
//  454           }
//  455        
//  456        }
//  457        else//未能找到邻近的边线
//  458        {
//  459            Rightlastfind=0; 
??Normal_25:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
//  460            if(FindBoundary(RIGHT)) 
        MOVS     R0,#+1
        BL       FindBoundary
        CMP      R0,#+0
        BEQ.N    ??Normal_40
//  461            {
//  462              
//  463              if(FallingEdge[FallingEdgeIndex]>Rightlast)
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_4
        LDR.W    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R0,R1
        BCS.N    ??Normal_41
//  464              {
//  465                if(Leftlastfind==0)
        LDR.N    R0,??DataTable5_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_24
//  466                {
//  467                   RoadType=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  468                   Character_Distance=Distance;
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
        B.N      ??Normal_24
//  469                }
//  470              
//  471              }
//  472              else if(FallingEdge[FallingEdgeIndex]>Rightlast-8)
??Normal_41:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+8
        LDR.N    R1,??DataTable5_4
        LDR.W    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R0,R1
        BGE.N    ??Normal_24
//  473              {
//  474                 Right=FallingEdge[FallingEdgeIndex];
        LDR.N    R0,??DataTable5_4
        LDR.W    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  475                 Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6
        STRB     R0,[R1, #+0]
        B.N      ??Normal_24
//  476              }
//  477 
//  478            
//  479            }
//  480            
//  481            else
//  482            {
//  483              if(Leftlastfind==0)
??Normal_40:
        LDR.N    R0,??DataTable5_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Normal_24
//  484              {
//  485                 RoadType=1; 
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  486                 Character_Distance=Distance;
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  487              }
//  488            
//  489            }
//  490           
//  491        }
//  492     
//  493     
//  494     }
//  495     if(Rightlastfind&&Leftlastfind)
??Normal_24:
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Normal_1
        LDR.N    R0,??DataTable5_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Normal_1
//  496     {
//  497 
//  498      Reference_Width=Right-Left; 
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//  499      if(Reference_Width<35)Reference_Width=35;
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        CMP      R0,#+35
        BGE.N    ??Normal_1
        MOVS     R0,#+35
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
//  500     }
//  501  
//  502  }
//  503 
//  504 }
??Normal_1:
        POP      {R0,PC}          ;; return
//  505 
//  506 
//  507 /*****
//  508 * 计算赛道的亮度
//  509 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  510 void Brightness_Calculate(void)
//  511 {
Brightness_Calculate:
        PUSH     {R4-R6,LR}
//  512 
//  513   uint8 i;
//  514   uint32 tempi=0;
        MOVS     R0,#+0
//  515   float tempf=0;
        MOVS     R6,#+0
//  516   for(i=Left;i<=Right;i++)
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+0]
        B.N      ??Brightness_Calculate_0
//  517   {
//  518     tempi+=CCD_Buff[i];
??Brightness_Calculate_1:
        LDR.N    R2,??DataTable5_6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRH     R2,[R2, R1, LSL #+1]
        UXTAH    R0,R0,R2
//  519   }
        ADDS     R1,R1,#+1
??Brightness_Calculate_0:
        LDR.N    R2,??DataTable5_9
        LDR      R2,[R2, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R2,R1
        BGE.N    ??Brightness_Calculate_1
//  520   tempf=tempi*1.0/(Right-Left);
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_8
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
//  521   
//  522   tempf=tempf*(Max_Value-CCD_Offset)/127.0+CCD_Offset;
        LDR.W    R0,??DataTable9_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_2
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_3  ;; 0x405fc000
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R6,R0
//  523   Brightness=(int)(Brightness*0.95+tempf*0.05);
        LDR.W    R0,??DataTable9_4
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable9_5  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable9_6  ;; 0x9999999a
        LDR.W    R3,??DataTable9_7  ;; 0x3fa99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable9_4
        STRH     R0,[R1, #+0]
//  524   CCD_Draw_Buff[140]=BYTE0(Brightness);
        LDR.W    R0,??DataTable9_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+140]
//  525   CCD_Draw_Buff[141]=BYTE1(Brightness);
        LDR.W    R0,??DataTable9_4
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+141]
//  526 
//  527 
//  528 
//  529 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     Max_Peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     RisingEdgeCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     FallingEdgeCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     RisingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     FallingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     CCD_Diff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     CCD_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     Threshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     Leftlastfind
//  530 /****
//  531 **斜入十字处理
//  532 ****/
//  533 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  534 void Is_CrossRoad(void)
//  535 {
//  536    static int Width_Change_Cnt_L;
//  537    static int Pre_Width_Out_L,Pre_Width_All_L;
//  538    int Width_Out_L,Line_Out_L,Width_All_L;
//  539   
//  540    static int Width_Change_Cnt_R;
//  541    static int Pre_Width_Out_R,Pre_Width_All_R;        
//  542    int Width_Out_R,Line_Out_R,Width_All_R;
//  543    
//  544    static uint8 All_Find=0;
//  545   
//  546   if(Leftlastfind && Rightlastfind) // 两条边线均找到
Is_CrossRoad:
        LDR.W    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Is_CrossRoad_0
        LDR.N    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Is_CrossRoad_0
//  547   {
//  548     if(RisingEdgeIndex<RisingEdgeCnt-1)
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_9
        LDRB     R1,[R1, #+0]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_1
//  549     {
//  550       Line_Out_R=RisingEdge[RisingEdgeIndex+1];
        LDR.W    R0,??DataTable9_10
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R1,[R0, #+1]
//  551       Width_Out_R=Line_Out_R-Right;
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        SUBS     R0,R1,R0
//  552       Width_All_R=Line_Out_R-Left;
        LDR.W    R2,??DataTable9_12
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
//  553       if(Width_Out_R<6)
        CMP      R0,#+6
        BGE.N    ??Is_CrossRoad_2
//  554       {
//  555         if(RisingEdgeIndex<RisingEdgeCnt-2)
        LDR.N    R2,??DataTable6_1
        LDR      R2,[R2, #+0]
        LDR.W    R3,??DataTable9_9
        LDRB     R3,[R3, #+0]
        SUBS     R3,R3,#+2
        CMP      R2,R3
        BGE.N    ??Is_CrossRoad_2
//  556         {
//  557           Line_Out_R=RisingEdge[RisingEdgeIndex+2];
        LDR.W    R0,??DataTable9_10
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R1,[R0, #+2]
//  558           Width_Out_R=Line_Out_R-Right;
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        SUBS     R0,R1,R0
//  559           Width_All_R=Line_Out_R-Left;
        LDR.W    R2,??DataTable9_12
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
//  560         }
//  561       
//  562       }
//  563       if(Width_Out_R>8)
??Is_CrossRoad_2:
        CMP      R0,#+9
        BLT.N    ??Is_CrossRoad_3
//  564       {
//  565         if((Pre_Width_Out_R>Width_Out_R)&&(Width_All_R<=Pre_Width_All_R))
        LDR.W    R2,??DataTable9_13
        LDR      R2,[R2, #+0]
        CMP      R0,R2
        BGE.N    ??Is_CrossRoad_4
        LDR.W    R2,??DataTable9_14
        LDR      R2,[R2, #+0]
        CMP      R2,R1
        BLT.N    ??Is_CrossRoad_4
//  566         {
//  567           Width_Change_Cnt_R++;
        LDR.W    R2,??DataTable10
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1
        LDR.W    R3,??DataTable10
        STR      R2,[R3, #+0]
        B.N      ??Is_CrossRoad_3
//  568         }
//  569         else Width_Change_Cnt_R=0;
??Is_CrossRoad_4:
        MOVS     R2,#+0
        LDR.W    R3,??DataTable10
        STR      R2,[R3, #+0]
//  570       
//  571       }
//  572       Pre_Width_Out_R=Width_Out_R;
??Is_CrossRoad_3:
        LDR.W    R2,??DataTable9_13
        STR      R0,[R2, #+0]
//  573       Pre_Width_All_R=Width_All_R;
        LDR.W    R0,??DataTable9_14
        STR      R1,[R0, #+0]
        B.N      ??Is_CrossRoad_5
//  574     
//  575     }
//  576     else
//  577     {
//  578         Width_Change_Cnt_R=0;
??Is_CrossRoad_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  579     
//  580     }
//  581     
//  582     
//  583     
//  584     if(FallingEdgeIndex>=1)
??Is_CrossRoad_5:
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Is_CrossRoad_6
//  585     {
//  586       Line_Out_L=FallingEdge[FallingEdgeIndex-1];
        LDR.W    R0,??DataTable9_15
        LDR.N    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R1,[R0, #-1]
//  587       Width_Out_L=Left-Line_Out_L;
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,R1
//  588       Width_All_L=Right-Line_Out_L;
        LDR.W    R2,??DataTable9_11
        LDR      R2,[R2, #+0]
        SUBS     R1,R2,R1
//  589       if(Width_Out_L<6)
        CMP      R0,#+6
        BGE.N    ??Is_CrossRoad_7
//  590       {
//  591         if(FallingEdgeIndex>=2)
        LDR.N    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        CMP      R2,#+2
        BLT.N    ??Is_CrossRoad_7
//  592         {
//  593           Line_Out_L=FallingEdge[FallingEdgeIndex-2];
        LDR.W    R0,??DataTable9_15
        LDR.N    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R1,[R0, #-2]
//  594           Width_Out_L=Left-Line_Out_L;
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,R1
//  595           Width_All_L=Right-Line_Out_L;     
        LDR.W    R2,??DataTable9_11
        LDR      R2,[R2, #+0]
        SUBS     R1,R2,R1
//  596         }
//  597 
//  598       }
//  599       if(Width_Out_L>8)
??Is_CrossRoad_7:
        CMP      R0,#+9
        BLT.N    ??Is_CrossRoad_8
//  600       {
//  601         if((Pre_Width_Out_L>Width_Out_L)&&(Pre_Width_All_L>=Width_All_L))
        LDR.W    R2,??DataTable10_1
        LDR      R2,[R2, #+0]
        CMP      R0,R2
        BGE.N    ??Is_CrossRoad_9
        LDR.W    R2,??DataTable10_2
        LDR      R2,[R2, #+0]
        CMP      R2,R1
        BLT.N    ??Is_CrossRoad_9
//  602         {
//  603           Width_Change_Cnt_L++;
        LDR.W    R2,??DataTable11
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1
        LDR.W    R3,??DataTable11
        STR      R2,[R3, #+0]
        B.N      ??Is_CrossRoad_8
//  604 
//  605         }
//  606         else Width_Change_Cnt_L=0;
??Is_CrossRoad_9:
        MOVS     R2,#+0
        LDR.W    R3,??DataTable11
        STR      R2,[R3, #+0]
//  607 
//  608       }
//  609       Pre_Width_Out_L=Width_Out_L;
??Is_CrossRoad_8:
        LDR.W    R2,??DataTable10_1
        STR      R0,[R2, #+0]
//  610       Pre_Width_All_L=Width_All_L;
        LDR.W    R0,??DataTable10_2
        STR      R1,[R0, #+0]
        B.N      ??Is_CrossRoad_10
//  611 
//  612     }
//  613     else 
//  614     {
//  615       Width_Change_Cnt_L=0;
??Is_CrossRoad_6:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+0]
//  616     
//  617     }
//  618     All_Find=1;
??Is_CrossRoad_10:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_1
        STRB     R0,[R1, #+0]
        B.N      ??Is_CrossRoad_11
//  619   
//  620   }
//  621   else
//  622   {
//  623   
//  624     if(Width_Change_Cnt_R>=10 || Width_Change_Cnt_L>=10)
??Is_CrossRoad_0:
        LDR.W    R0,??DataTable10
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??Is_CrossRoad_12
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??Is_CrossRoad_13
//  625     {
//  626       curve_to_cross=1;
??Is_CrossRoad_12:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable11_1
        STRB     R0,[R1, #+0]
//  627       RoadType=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  628       Character_Distance =Distance;
        LDR.N    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  629     
//  630     
//  631     
//  632     }
//  633     if(All_Find==1)
??Is_CrossRoad_13:
        LDR.W    R0,??DataTable12_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Is_CrossRoad_14
//  634     {
//  635       Width_Change_Cnt_R=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  636       Width_Change_Cnt_L=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_15
//  637     
//  638     
//  639     }
//  640     else
//  641     {
//  642       if(Leftlastfind&&(Left<60))
??Is_CrossRoad_14:
        LDR.W    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_CrossRoad_16
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??Is_CrossRoad_16
//  643       {
//  644          if((FallingEdgeCnt==0)||FallingEdge[FallingEdgeCnt-1]<Left)  //右边没有多的线了
        LDR.N    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_CrossRoad_17
        LDR.W    R0,??DataTable9_15
        LDR.N    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-1]
        LDR.W    R1,??DataTable9_12
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_18
//  645         {
//  646           if(Left<Leftlast) Width_Change_Cnt_L++;         
??Is_CrossRoad_17:
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_3
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_19
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_16
//  647           else  Width_Change_Cnt_L=0;
??Is_CrossRoad_19:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_16
//  648         }
//  649         else Width_Change_Cnt_L=0;
??Is_CrossRoad_18:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+0]
//  650       }
//  651       if(Rightlastfind&&(Right>70))
??Is_CrossRoad_16:
        LDR.N    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_CrossRoad_15
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Is_CrossRoad_15
//  652       {
//  653         if((RisingEdgeCnt==0)||RisingEdge[0]>Right)  //左边没有多的线了
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_CrossRoad_20
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_10
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_21
//  654         {
//  655           if(Right>Rightlast)    Width_Change_Cnt_R++;
??Is_CrossRoad_20:
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_11
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Is_CrossRoad_22
        LDR.W    R0,??DataTable10
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_15
//  656           else  Width_Change_Cnt_R=0;
??Is_CrossRoad_22:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
        B.N      ??Is_CrossRoad_15
//  657         }
//  658         else Width_Change_Cnt_R=0;
??Is_CrossRoad_21:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  659       }
//  660     
//  661     
//  662     }
//  663     All_Find=0;
??Is_CrossRoad_15:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_1
        STRB     R0,[R1, #+0]
//  664   
//  665   
//  666   
//  667   
//  668   
//  669   
//  670   
//  671   
//  672   }
//  673     
//  674 }
??Is_CrossRoad_11:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     Rightlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     RisingEdgeIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     FallingEdgeIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     Leftlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     FallingEdgeCnt

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Width_Change_Cnt_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Pre_Width_Out_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Pre_Width_All_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Width_Change_Cnt_R:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Pre_Width_Out_R:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Pre_Width_All_R:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??All_Find:
        DS8 1
//  675     
//  676 
//  677 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  678 void CrossRoad()
//  679 {
CrossRoad:
        PUSH     {R7,LR}
//  680    static uint8 Normal_Cnt;
//  681    static uint8 Cross_Road_Cnt=0;
//  682   
//  683     //缓慢归零，车子回正  
//  684   if(curve_to_cross==0)
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CrossRoad_0
//  685   {  
//  686     Rightlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
//  687     Leftlastfind=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_8
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_1
//  688   }
//  689   else
//  690   {  
//  691     if(Rightlastfind)
??CrossRoad_0:
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_2
//  692     {
//  693         if(FindNearest(RIGHT,Rightlast))		//这次能找到左线
        LDR.N    R0,??DataTable7_6
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+1
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_3
//  694        {
//  695         Right=FallingEdge[FallingEdgeIndex];
        LDR.W    R0,??DataTable9_15
        LDR.W    R1,??DataTable12_3
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
//  696         Rightlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
//  697         Left=Right-Reference_Width;
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable9_12
        STR      R0,[R1, #+0]
        B.N      ??CrossRoad_1
//  698        }
//  699        else 
//  700        {
//  701          Rightlastfind=0;
??CrossRoad_3:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_1
//  702          //curve_to_cross=0;
//  703        }
//  704     }
//  705     else if(Leftlastfind)
??CrossRoad_2:
        LDR.W    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_1
//  706     {
//  707       if(FindNearest(LEFT,Leftlast))		//这次能找到左线
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_4
//  708      {
//  709       Left=RisingEdge[RisingEdgeIndex];    
        LDR.W    R0,??DataTable9_10
        LDR.W    R1,??DataTable12_5
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable9_12
        STR      R0,[R1, #+0]
//  710       Leftlastfind=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_8
        STRB     R0,[R1, #+0]
//  711       Right=Reference_Width+Left;
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_12
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
        B.N      ??CrossRoad_1
//  712      }
//  713      else 
//  714      {
//  715        Leftlastfind=0;
??CrossRoad_4:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_8
        STRB     R0,[R1, #+0]
//  716       // curve_to_cross=0;
//  717      }
//  718     }
//  719   }
//  720   
//  721     if(ABS(Middle_Err)>1)
??CrossRoad_1:
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??CrossRoad_5
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        B.N      ??CrossRoad_6
??CrossRoad_5:
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
??CrossRoad_6:
        LDR.W    R1,??DataTable12_7  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??CrossRoad_7
//  722     {
//  723       
//  724       /*if(curve_to_cross==0)
//  725       {
//  726        if(Middle_Err>0)Middle_Err=Middle_Err+Correct_Err;     
//  727        if(Middle_Err<0)Middle_Err=Middle_Err-Correct_Err;
//  728       }*/
//  729       
//  730        if(Middle_Err>0)Middle_Err=Middle_Err+Correct_Err;     
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??CrossRoad_8
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_6
        STR      R0,[R1, #+0]
//  731        if(Middle_Err<0)Middle_Err=Middle_Err-Correct_Err;
??CrossRoad_8:
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??CrossRoad_9
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable12_6
        STR      R0,[R1, #+0]
        B.N      ??CrossRoad_9
//  732         
//  733     }
//  734     else Middle_Err=0;
??CrossRoad_7:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_6
        STR      R0,[R1, #+0]
//  735     
//  736 
//  737     
//  738 
//  739     
//  740 
//  741     
//  742   
//  743     
//  744     
//  745     
//  746     if(curve_to_cross==0||(curve_to_cross==1&&Distance-Character_Distance>0.5)) Find_BothLine();
??CrossRoad_9:
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_10
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CrossRoad_11
        LDR.N    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable12_9  ;; 0x3f000001
        BL       __aeabi_cfrcmple
        BHI.N    ??CrossRoad_11
??CrossRoad_10:
        BL       Find_BothLine
//  747     
//  748     if(Rightlastfind&&Leftlastfind)//能够找到两边边界
??CrossRoad_11:
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_12
        LDR.W    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossRoad_12
//  749     {
//  750      if(Right-Left<65&&Cross_Road_Cnt>17)     //宽度有效
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_12
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+65
        BGE.N    ??CrossRoad_13
        LDR.W    R0,??DataTable12_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+18
        BLT.N    ??CrossRoad_13
//  751      {
//  752         /*                跳转到直角弯                 */
//  753         if(Distance>1&&(Distance-Character_Distance<0.15))
        LDR.N    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_7  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??CrossRoad_14
        LDR.N    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable12_11  ;; 0x3e19999a
        BL       __aeabi_cfcmple
        BCC.N    ??CrossRoad_15
//  754         {
//  755                       
//  756         }
//  757         else
//  758         { 
//  759           Normal_Cnt++;
??CrossRoad_14:
        LDR.W    R0,??DataTable12_12
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_12
        STRB     R0,[R1, #+0]
//  760           if(Normal_Cnt>=80)
        LDR.W    R0,??DataTable12_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+80
        BLT.N    ??CrossRoad_15
//  761           {
//  762            RoadType=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  763            curve_to_cross=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_1
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_15
//  764           /*            跳回正常道路            */
//  765           }
//  766          
//  767         }
//  768      }
//  769      else 
//  770      {
//  771       Rightlastfind=0;
??CrossRoad_13:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
//  772       Leftlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_8
        STRB     R0,[R1, #+0]
//  773       Normal_Cnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_12
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_15
//  774      }
//  775     }
//  776     else Normal_Cnt=0;
??CrossRoad_12:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_12
        STRB     R0,[R1, #+0]
//  777     
//  778 
//  779 
//  780     if(RoadType!=1)
??CrossRoad_15:
        LDR.N    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??CrossRoad_16
//  781     {
//  782       Cross_Road_Cnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_10
        STRB     R0,[R1, #+0]
        B.N      ??CrossRoad_17
//  783     }
//  784     else
//  785     {
//  786       if(Cross_Road_Cnt<20)Cross_Road_Cnt++; 
??CrossRoad_16:
        LDR.W    R0,??DataTable12_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+20
        BGE.N    ??CrossRoad_18
        LDR.W    R0,??DataTable12_10
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_10
        STRB     R0,[R1, #+0]
//  787       
//  788       if(Cross_Road_Cnt>3&&Cross_Road_Cnt<8&&curve_to_cross==0)/////////////////////////////////改
??CrossRoad_18:
        LDR.W    R0,??DataTable12_10
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+4
        CMP      R0,#+4
        BCS.N    ??CrossRoad_17
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CrossRoad_17
//  789       {
//  790         Leftlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_8
        STRB     R0,[R1, #+0]
//  791         Rightlastfind=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
//  792 
//  793       }
//  794       
//  795     }
//  796 }
??CrossRoad_17:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     rightfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     CarSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x40200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     Character_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     Rightlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     leftfind

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??Normal_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??Cross_Road_Cnt:
        DS8 1
//  797 
//  798 /****
//  799 ** 更新数组
//  800 *****/
//  801 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  802 void Push_And_Pull(float *buff,int len,float newdata)
//  803 {
//  804  int i;
//  805  for(i=len-1;i>0;i--)
Push_And_Pull:
        SUBS     R1,R1,#+1
        B.N      ??Push_And_Pull_0
//  806  {
//  807    *(buff+i)=*(buff+i-1);
??Push_And_Pull_1:
        ADDS     R3,R0,R1, LSL #+2
        LDR      R3,[R3, #-4]
        STR      R3,[R0, R1, LSL #+2]
//  808  }
        SUBS     R1,R1,#+1
??Push_And_Pull_0:
        CMP      R1,#+1
        BGE.N    ??Push_And_Pull_1
//  809    *buff=newdata; 
        STR      R2,[R0, #+0]
//  810 }
        BX       LR               ;; return
//  811 
//  812 
//  813 
//  814 /****
//  815 **识别赛道类型
//  816 ****/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  817 void RoadType_Distinguish(void)
//  818 {
RoadType_Distinguish:
        PUSH     {R7,LR}
//  819   EdgeFind();
        BL       EdgeFind
//  820 
//  821   if(RoadType==0 )  Prejudge();//道路预判
        LDR.W    R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RoadType_Distinguish_0
        BL       Prejudge
//  822 
//  823   switch(RoadType)
??RoadType_Distinguish_0:
        LDR.W    R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??RoadType_Distinguish_1
        CMP      R0,#+2
        BEQ.N    ??RoadType_Distinguish_2
        BCC.N    ??RoadType_Distinguish_3
        B.N      ??RoadType_Distinguish_4
//  824   {
//  825     case 0: //表示常规赛道
//  826       Character_Distance=0;//普通赛道无特征距离
??RoadType_Distinguish_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_14
        STR      R0,[R1, #+0]
//  827       Normal();//如果赛道类型是0，进行常规处理
        BL       Normal
//  828       Is_Barraicade();
        BL       Is_Barraicade
//  829       if(RoadType==1)
        LDR.W    R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??RoadType_Distinguish_5
//  830       {
//  831         curve_to_cross=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_1
        STRB     R0,[R1, #+0]
        B.N      ??RoadType_Distinguish_6
//  832       }
//  833       else Is_CrossRoad();
??RoadType_Distinguish_5:
        BL       Is_CrossRoad
//  834       
//  835       LPLD_GPIO_Output_b(PTE, 10, 0);
??RoadType_Distinguish_6:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable12_15  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  836       LPLD_GPIO_Output_b(PTE, 11, 1);      
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.W    R0,??DataTable12_15  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  837       LPLD_GPIO_Output_b(PTE, 12, 1);
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable12_15  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  838 
//  839       break;
        B.N      ??RoadType_Distinguish_7
//  840     case 1://表示十字弯
//  841 
//  842       CrossRoad();
??RoadType_Distinguish_3:
        BL       CrossRoad
//  843       LPLD_GPIO_Output_b(PTE, 10, 1);
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable12_15  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  844       LPLD_GPIO_Output_b(PTE, 11, 0);
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable12_15  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  845       LPLD_GPIO_Output_b(PTE, 12, 1);
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable12_15  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  846 
//  847       //Middle_Last=Middle_Err;
//  848       break;
        B.N      ??RoadType_Distinguish_7
//  849     case 2:
//  850       Barraicade();
??RoadType_Distinguish_2:
        BL       Barraicade
//  851 
//  852       break;
        B.N      ??RoadType_Distinguish_7
//  853     
//  854     default:
//  855       Normal();
??RoadType_Distinguish_4:
        BL       Normal
//  856       break;
//  857 
//  858   }
//  859   
//  860   if(Distance<0.4)  //刚进入赛道,将赛道类型设置为1
??RoadType_Distinguish_7:
        LDR.W    R0,??DataTable12_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_17  ;; 0x3ecccccd
        BL       __aeabi_cfcmple
        BCS.N    ??RoadType_Distinguish_8
//  861   {
//  862     RoadType=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_13
        STRB     R0,[R1, #+0]
//  863     
//  864   }
//  865   
//  866   //将赛道信息写入发送数组
//  867   CCD_Draw_Buff[128]=Left-1;
??RoadType_Distinguish_8:
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+128]
//  868   CCD_Draw_Buff[129]=Right; 
        LDR.N    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+129]
//  869   CCD_Draw_Buff[132]=BYTE0(Max_Peak);
        LDR.W    R0,??DataTable12_19
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+132]
//  870   CCD_Draw_Buff[133]=BYTE1(Max_Peak);
        LDR.W    R0,??DataTable12_19
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+133]
//  871   CCD_Draw_Buff[134]=Leftlastfind;
        LDR.N    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+134]
//  872   CCD_Draw_Buff[135]=Rightlastfind;
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+135]
//  873   CCD_Draw_Buff[136]=RoadType; 
        LDR.W    R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+136]
//  874   Leftlast=Left;              // 更新边界线
        LDR.W    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_4
        STRB     R0,[R1, #+0]
//  875   Rightlast=Right;            //更新边界线
        LDR.N    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_20
        STRB     R0,[R1, #+0]
//  876   
//  877   
//  878   
//  879   if(Rightlastfind||Leftlastfind)//当左线右线能找到其中一个
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RoadType_Distinguish_9
        LDR.N    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??RoadType_Distinguish_10
//  880   {
//  881     Middle_Err=64-(Leftlast+Rightlast)/2.0+1;//计算得到中线偏移量
??RoadType_Distinguish_9:
        LDR.W    R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_20
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_21  ;; 0x40500000
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9  ;; 0x3ff00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable12_6
        STR      R0,[R1, #+0]
//  882     if(ABS(Middle_Err-Middle_Last)>2&&(curve_to_cross==0)) //十字内对中心线进行修正
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??RoadType_Distinguish_11
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        B.N      ??RoadType_Distinguish_12
??RoadType_Distinguish_11:
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable12_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
??RoadType_Distinguish_12:
        LDR.W    R1,??DataTable12_23  ;; 0x40000001
        BL       __aeabi_cfrcmple
        BHI.N    ??RoadType_Distinguish_13
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RoadType_Distinguish_13
//  883     {
//  884       if(ABS(Middle_Err-Middle_Last)>3)  //可能出现错误采集，对中心偏移量进行微调
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??RoadType_Distinguish_14
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        B.N      ??RoadType_Distinguish_15
??RoadType_Distinguish_14:
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable12_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
??RoadType_Distinguish_15:
        LDR.W    R1,??DataTable12_24  ;; 0x40400001
        BL       __aeabi_cfrcmple
        BHI.N    ??RoadType_Distinguish_16
//  885       {
//  886         if(Middle_Err>Middle_Last) Middle_Err=Middle_Last+1;
        LDR.W    R0,??DataTable12_22
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??RoadType_Distinguish_17
        LDR.W    R0,??DataTable12_22
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1065353216
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_6
        STR      R0,[R1, #+0]
        B.N      ??RoadType_Distinguish_13
//  887         else Middle_Err=Middle_Last-1;
??RoadType_Distinguish_17:
        LDR.W    R0,??DataTable12_22
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable12_25  ;; 0xbf800000
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_6
        STR      R0,[R1, #+0]
        B.N      ??RoadType_Distinguish_13
//  888       }
//  889       else  //在合理采集范围内，对中心偏移量进行更新
//  890       {
//  891         if(Middle_Err>Middle_Last) Middle_Err=Middle_Last+2;
??RoadType_Distinguish_16:
        LDR.W    R0,??DataTable12_22
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??RoadType_Distinguish_18
        LDR.W    R0,??DataTable12_22
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1073741824
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_6
        STR      R0,[R1, #+0]
        B.N      ??RoadType_Distinguish_13
//  892         else Middle_Err=Middle_Last-2;
??RoadType_Distinguish_18:
        LDR.W    R0,??DataTable12_22
        LDR      R1,[R0, #+0]
        MOVS     R0,#-1073741824
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_6
        STR      R0,[R1, #+0]
//  893       }
//  894     
//  895     }
//  896     Middle_Last=Middle_Err;
??RoadType_Distinguish_13:
        LDR.W    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_22
        STR      R0,[R1, #+0]
//  897   }
//  898   
//  899   
//  900   Push_And_Pull(Pre_Width,5,(float)(Right-Left));
??RoadType_Distinguish_10:
        LDR.N    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable12_26
        BL       Push_And_Pull
//  901   
//  902   if(Rightlastfind&&Leftlastfind&&(Right-Left>20))   //两边边线都能够找到，计算赛道的平均亮度
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??RoadType_Distinguish_19
        LDR.N    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??RoadType_Distinguish_19
        LDR.N    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+21
        BLT.N    ??RoadType_Distinguish_19
//  903   {
//  904    Brightness_Calculate();
        BL       Brightness_Calculate
//  905   }
//  906  
//  907 
//  908 
//  909 
//  910 }
??RoadType_Distinguish_19:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     Reference_Width
//  911 
//  912 
//  913 
//  914 ///////////////////////////////////////////障碍处理

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  915 void Is_Barraicade(void)
//  916 {
Is_Barraicade:
        PUSH     {R3-R7,LR}
//  917   int left_edge,right_edge,left_edge_find,right_edge_find;
//  918   int i;
//  919   float half_width=0;
        MOVS     R6,#+0
//  920   
//  921   half_width=Pre_Width[0]/2;
        LDR.W    R0,??DataTable12_26
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R6,R0
//  922   
//  923   if(Leftlastfind && Rightlastfind)
        LDR.N    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_Barraicade_0
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Is_Barraicade_0
//  924   {
//  925     right_edge_find=0;
        MOVS     R0,#+0
//  926     left_edge_find=0;
        MOVS     R1,#+0
//  927     if(FallingEdgeCnt>0)
        LDR.W    R2,??DataTable12_27
        LDRB     R2,[R2, #+0]
        CMP      R2,#+0
        BEQ.N    ??Is_Barraicade_1
//  928     {
//  929       for(i=0;i<FallingEdgeCnt;i++)
        MOVS     R2,#+0
        B.N      ??Is_Barraicade_2
??Is_Barraicade_3:
        ADDS     R2,R2,#+1
??Is_Barraicade_2:
        LDR.W    R3,??DataTable12_27
        LDRB     R3,[R3, #+0]
        CMP      R2,R3
        BGE.N    ??Is_Barraicade_1
//  930       {
//  931         if((FallingEdge[i]>Leftlast)&&(FallingEdge[i]+7<Rightlast))
        LDR.W    R3,??DataTable12_4
        LDRB     R3,[R3, #+0]
        LDR.N    R7,??DataTable9_15
        LDRB     R7,[R2, R7]
        CMP      R3,R7
        BCS.N    ??Is_Barraicade_3
        LDR.N    R3,??DataTable9_15
        LDRB     R3,[R2, R3]
        ADDS     R3,R3,#+7
        LDR.W    R7,??DataTable12_20
        LDRB     R7,[R7, #+0]
        CMP      R3,R7
        BGE.N    ??Is_Barraicade_3
//  932         {
//  933           left_edge=FallingEdge[i];
        LDR.N    R1,??DataTable9_15
        LDRB     R4,[R2, R1]
//  934           left_edge_find=1;
        MOVS     R1,#+1
//  935           break;        
//  936         }
//  937 
//  938       }
//  939     }
//  940     if(RisingEdgeCnt>0)
??Is_Barraicade_1:
        LDR.N    R2,??DataTable9_9
        LDRB     R2,[R2, #+0]
        CMP      R2,#+0
        BEQ.N    ??Is_Barraicade_4
//  941     {
//  942       for(i=RisingEdgeCnt;i>=0;i--)
        LDR.N    R2,??DataTable9_9
        LDRB     R2,[R2, #+0]
        B.N      ??Is_Barraicade_5
??Is_Barraicade_6:
        SUBS     R2,R2,#+1
??Is_Barraicade_5:
        CMP      R2,#+0
        BMI.N    ??Is_Barraicade_4
//  943       {
//  944         if((RisingEdge[i]<Rightlast)&&(RisingEdge[i]-7>Leftlast))
        LDR.N    R3,??DataTable9_10
        LDRB     R3,[R2, R3]
        LDR.W    R7,??DataTable12_20
        LDRB     R7,[R7, #+0]
        CMP      R3,R7
        BCS.N    ??Is_Barraicade_6
        LDR.N    R3,??DataTable12_4
        LDRB     R3,[R3, #+0]
        LDR.N    R7,??DataTable9_10
        LDRB     R7,[R2, R7]
        SUBS     R7,R7,#+7
        CMP      R3,R7
        BGE.N    ??Is_Barraicade_6
//  945         {
//  946           right_edge=RisingEdge[i];
        LDR.N    R0,??DataTable9_10
        LDRB     R5,[R2, R0]
//  947           right_edge_find=1;
        MOVS     R0,#+1
//  948           break;
//  949 
//  950         }
//  951       }
//  952     }
//  953     
//  954     if(right_edge_find && left_edge_find)
??Is_Barraicade_4:
        CMP      R0,#+0
        BEQ.N    ??Is_Barraicade_0
        CMP      R1,#+0
        BEQ.N    ??Is_Barraicade_0
//  955     {
//  956       if(ABS(right_edge-left_edge)/Pre_Width[0]>0.2)
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
        LDR.W    R1,??DataTable12_28  ;; 0x3e4ccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??Is_Barraicade_0
//  957       {
//  958         RoadType=2;//表示障碍
        MOVS     R0,#+2
        LDR.N    R1,??DataTable12_13
        STRB     R0,[R1, #+0]
//  959         
//  960         Character_Distance=Distance;
        LDR.N    R0,??DataTable12_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_14
        STR      R0,[R1, #+0]
//  961       
//  962 
//  963         if(Rightlast-right_edge>half_width) B_RightOrLeft=LEFT; //左边出现了障碍
        LDR.N    R0,??DataTable12_20
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,R5
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_cfcmple
        BCS.N    ??Is_Barraicade_9
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_29
        STR      R0,[R1, #+0]
//  964         if(left_edge-Leftlast>half_width)   B_RightOrLeft=RIGHT;  //右边出现了障碍 
??Is_Barraicade_9:
        LDR.N    R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        SUBS     R0,R4,R0
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_cfcmple
        BCS.N    ??Is_Barraicade_0
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_29
        STR      R0,[R1, #+0]
//  965       }
//  966 
//  967     }
//  968 
//  969   }
//  970 
//  971 }
??Is_Barraicade_0:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     Max_Value

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     CCD_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x405fc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     Brightness

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x3fee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x3fa99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     Leftlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     RisingEdgeCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     RisingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     ??Pre_Width_Out_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     ??Pre_Width_All_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     FallingEdge
//  972 
//  973 
//  974 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  975 void Barraicade(void)
//  976 {
Barraicade:
        PUSH     {R4,LR}
//  977   int i;
//  978   if(B_RightOrLeft==LEFT)//障碍在左边,右线是对的
        LDR.N    R0,??DataTable12_29
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Barraicade_0
//  979   {
//  980      LPLD_GPIO_Output_b(PTE, 12, 0);
        MOVS     R2,#+0
        MOVS     R1,#+12
        LDR.N    R0,??DataTable12_15  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  981     if(FindNearest(RIGHT,Rightlast))
        LDR.N    R0,??DataTable12_20
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+1
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??Barraicade_1
//  982     {
//  983       Right=FallingEdge[FallingEdgeIndex];
        LDR.N    R0,??DataTable12_30
        LDR.N    R1,??DataTable12_3
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable12_31
        STR      R0,[R1, #+0]
//  984       Rightlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_2
//  985     }
//  986     else Rightlastfind=0;
??Barraicade_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
//  987     if(Distance-Character_Distance<0.3) //在障碍区内
??Barraicade_2:
        LDR.N    R0,??DataTable12_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_14
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable12_32  ;; 0x3e99999a
        BL       __aeabi_cfcmple
        BCS.N    ??Barraicade_3
//  988     {
//  989       /*Leftlastfind=0;
//  990       if(RisingEdgeCnt>0)
//  991       {
//  992         for(i=RisingEdgeCnt-1;i>=0;i--)
//  993         {
//  994           if(RisingEdge[i]+10<Right)
//  995           {
//  996             Left=RisingEdge[i];
//  997             Leftlastfind=1;
//  998             break;
//  999           
// 1000           }
// 1001 
// 1002         }
// 1003 
// 1004       }*/
// 1005       Left=Right-(uint8)(Pre_Width[0]*0.5); 
        LDR.N    R0,??DataTable12_31
        LDR      R4,[R0, #+0]
        LDR.N    R0,??DataTable12_26
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable12_33  ;; 0x3fe00000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable12_18
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_4
// 1006 
// 1007     }
// 1008     else
// 1009     {
// 1010       if(FindNearest(LEFT,Leftlast))
??Barraicade_3:
        LDR.N    R0,??DataTable12_4
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??Barraicade_5
// 1011       {
// 1012         Left=RisingEdge[RisingEdgeIndex];
        LDR.N    R0,??DataTable12_34
        LDR.N    R1,??DataTable12_5
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable12_18
        STR      R0,[R1, #+0]
// 1013         Leftlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_35
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_4
// 1014       
// 1015       }
// 1016       else Leftlastfind=0;
??Barraicade_5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_35
        STRB     R0,[R1, #+0]
// 1017     
// 1018     
// 1019     
// 1020     }
// 1021     
// 1022     
// 1023     if(Leftlastfind && Rightlastfind) Reference_Width=Right-Left;
??Barraicade_4:
        LDR.N    R0,??DataTable12_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_6
        LDR.N    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_6
        LDR.N    R0,??DataTable12_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_18
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable12_36
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_7
// 1024     else
// 1025     {
// 1026     
// 1027       Left=Right-Reference_Width;
??Barraicade_6:
        LDR.N    R0,??DataTable12_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_36
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable12_18
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_7
// 1028     }
// 1029 
// 1030 
// 1031 
// 1032 
// 1033 
// 1034 
// 1035   }
// 1036   else if(B_RightOrLeft==RIGHT) // 障碍在右边，左线正确
??Barraicade_0:
        LDR.N    R0,??DataTable12_29
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Barraicade_7
// 1037   {
// 1038     if(FindNearest(LEFT,Leftlast))
        LDR.N    R0,??DataTable12_4
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??Barraicade_8
// 1039     {
// 1040       Left=RisingEdge[RisingEdgeIndex];
        LDR.N    R0,??DataTable12_34
        LDR.N    R1,??DataTable12_5
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable12_18
        STR      R0,[R1, #+0]
// 1041       Leftlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_35
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_9
// 1042     
// 1043     }
// 1044     else Leftlastfind=0;
??Barraicade_8:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_35
        STRB     R0,[R1, #+0]
// 1045     
// 1046     if(Distance - Character_Distance<0.3)//在障碍区域内
??Barraicade_9:
        LDR.N    R0,??DataTable12_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_14
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable12_32  ;; 0x3e99999a
        BL       __aeabi_cfcmple
        BCS.N    ??Barraicade_10
// 1047     {
// 1048       Rightlastfind=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
// 1049       if(FallingEdgeCnt>0)
        LDR.N    R0,??DataTable12_27
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_11
// 1050       {
// 1051         for(i=0;i<FallingEdgeCnt;i++)
        MOVS     R0,#+0
        B.N      ??Barraicade_12
??Barraicade_13:
        ADDS     R0,R0,#+1
??Barraicade_12:
        LDR.N    R1,??DataTable12_27
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Barraicade_11
// 1052         {
// 1053           if(FallingEdge[i]>Left+10)
        LDR.N    R1,??DataTable12_18
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+10
        LDR.N    R2,??DataTable12_30
        LDRB     R2,[R0, R2]
        CMP      R1,R2
        BGE.N    ??Barraicade_13
// 1054           {
// 1055             Right=FallingEdge[i];
        LDR.N    R1,??DataTable12_30
        LDRB     R0,[R0, R1]
        LDR.N    R1,??DataTable12_31
        STR      R0,[R1, #+0]
// 1056             Rightlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
// 1057             break;
        B.N      ??Barraicade_11
// 1058           
// 1059           }
// 1060 
// 1061         }
// 1062 
// 1063       }
// 1064 
// 1065     }
// 1066     else  //出障碍
// 1067     {
// 1068       if(FindNearest(Right,Rightlastfind))
??Barraicade_10:
        LDR.N    R0,??DataTable12_2
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12_31
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       FindNearest
        CMP      R0,#+0
        BEQ.N    ??Barraicade_14
// 1069       {
// 1070         Right=FallingEdge[FallingEdgeIndex];
        LDR.N    R0,??DataTable12_30
        LDR.N    R1,??DataTable12_3
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable12_31
        STR      R0,[R1, #+0]
// 1071         Rightlastfind=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
        B.N      ??Barraicade_11
// 1072 
// 1073       }
// 1074       else Rightlastfind=0;
??Barraicade_14:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
// 1075 
// 1076     }
// 1077     if(Leftlastfind && Rightlastfind) Reference_Width=Right-Left;
??Barraicade_11:
        LDR.N    R0,??DataTable12_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_15
        LDR.N    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Barraicade_15
        LDR.N    R0,??DataTable12_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_18
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable12_36
        STR      R0,[R1, #+0]
        B.N      ??Barraicade_7
// 1078     else 
// 1079     {
// 1080       Right=Left+Reference_Width;
??Barraicade_15:
        LDR.N    R0,??DataTable12_18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_36
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable12_31
        STR      R0,[R1, #+0]
// 1081     
// 1082     }
// 1083 
// 1084   }
// 1085   
// 1086   if(Distance-Character_Distance>0.5)
??Barraicade_7:
        LDR.N    R0,??DataTable12_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_14
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable12_9  ;; 0x3f000001
        BL       __aeabi_cfrcmple
        BHI.N    ??Barraicade_16
// 1087     RoadType=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_13
        STRB     R0,[R1, #+0]
// 1088 
// 1089 }
??Barraicade_16:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     ??Width_Change_Cnt_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     ??Pre_Width_Out_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     ??Pre_Width_All_L
// 1090 
// 1091 
// 1092 
// 1093 
// 1094 
// 1095 
// 1096 
// 1097 
// 1098 
// 1099 
// 1100 
// 1101 
// 1102 
// 1103 
// 1104 
// 1105 
// 1106 
// 1107 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1108 void Prejudge()//预判函数
// 1109 {
// 1110   if(RisingEdgeCnt==0 && FallingEdgeCnt==0)
Prejudge:
        LDR.N    R0,??DataTable12_37
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prejudge_0
        LDR.N    R0,??DataTable12_27
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prejudge_0
// 1111   {
// 1112     RoadType=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_13
        STRB     R0,[R1, #+0]
// 1113     curve_to_cross=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable11_1
        STRB     R0,[R1, #+0]
// 1114     Character_Distance=Distance;//进入十字后记录特征距离
        LDR.N    R0,??DataTable12_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_14
        STR      R0,[R1, #+0]
// 1115   }
// 1116 
// 1117 }
??Prejudge_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     ??Width_Change_Cnt_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     curve_to_cross
// 1118 
// 1119 /***
// 1120 **填充发送到上位机的信息
// 1121 ***/
// 1122 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1123 void Fill_CCD_Info(void)
// 1124 {
// 1125 
// 1126   CCD_Draw_Buff[128]=Leftlast;
Fill_CCD_Info:
        LDR.N    R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable12
        STRB     R0,[R1, #+128]
// 1127   CCD_Draw_Buff[129]=Rightlast;  
        LDR.N    R0,??DataTable12_20
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable12
        STRB     R0,[R1, #+129]
// 1128 }
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
        DC32     ??All_Find

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     Rightlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     FallingEdgeIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     Leftlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     RisingEdgeIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     Middle_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     Correct_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x3f000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     ??Cross_Road_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     0x3e19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     ??Normal_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     Character_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     0x3ecccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DC32     Max_Peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_20:
        DC32     Rightlast

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_21:
        DC32     0x40500000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_22:
        DC32     Middle_Last

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
        DC32     FallingEdgeCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_28:
        DC32     0x3e4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_29:
        DC32     B_RightOrLeft

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_30:
        DC32     FallingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_31:
        DC32     Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_32:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_33:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_34:
        DC32     RisingEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_35:
        DC32     Leftlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_36:
        DC32     Reference_Width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_37:
        DC32     RisingEdgeCnt

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1129 
// 1130 
// 1131 
// 1132 
// 1133 
// 1134 
// 1135 
// 1136 
// 1137 
// 1138 
// 
//   624 bytes in section .bss
//    12 bytes in section .data
// 6 146 bytes in section .text
// 
// 6 146 bytes of CODE memory
//   636 bytes of DATA memory
//
//Errors: none
//Warnings: none
