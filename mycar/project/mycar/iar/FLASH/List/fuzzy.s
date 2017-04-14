///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       17/Jul/2016  00:31:47
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\fuzzy.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\fuzzy.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\FLASH\List\fuzzy.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4

        PUBLIC Fuzzy

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\fuzzy.c
//    1 #include "fuzzy.h"
//    2 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    3 float Fuzzy(float P,float D)
//    4 {
Fuzzy:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+316
        MOVS     R7,R0
        MOVS     R4,R1
//    5 /*输入量P语言值特征点*/ 
//    6 float PFF[7]={-27,-15,-8,0,8,15,27};
        ADD      R0,SP,#+68
        LDR.W    R1,??Fuzzy_0
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//    7 /*输入量D语言值特征点*/ 
//    8 float DFF[5]={-7.2,-3,0,3,7.2};
        ADD      R0,SP,#+48
        LDR.W    R1,??Fuzzy_0+0x4
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
//    9 /*输出量U语言值特征点(根据赛道类型选择不同的输出值)*/
//   10 float UFF[7]={0,15,20,35,50,80,120};
        ADD      R0,SP,#+96
        LDR.W    R1,??Fuzzy_0+0x8
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//   11 
//   12 int rule[8][6]={
//   13 //  -2  -1   0   1   2 ec    e
//   14   { 2,  2,  3,  0,  0,0}, //  -3
//   15   { 6,  5,  1,  0,  0,0}, //  -2
//   16   { 5,  3,  1,  1,  0,0}, //  -1
//   17   { 4,  3,  0,  3,  5,5}, //   0
//   18   { 0,  1,  1,  5,  6,6}, //   1
//   19   { 0,  0,  1,  2,  4,4}, //   2
//   20   { 0,  0,  3,  2,  2,2}, //   3
//   21   { 0,  0,  3,  2,  2,2}   
//   22 };
        ADD      R0,SP,#+124
        LDR.W    R1,??Fuzzy_0+0xC
        MOVS     R2,#+192
        BL       __aeabi_memcpy4
//   23 
//   24 
//   25 float U=0;  /*偏差,偏差微分以及输出值的精确量*/ 
        MOVS     R0,#+0
//   26 float PF[2]={0},DF[2]={0},UF[4]={0};
        ADD      R0,SP,#+16
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
        ADD      R0,SP,#+24
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
        ADD      R0,SP,#+0
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   27  /*偏差,偏差微分以及输出值的隶属度*/ 
//   28 int Pn=0,Dn=0,Un[4]={0};
        MOVS     R6,#+0
        MOVS     R5,#+0
        ADD      R0,SP,#+32
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   29 float t1=0,t2=0,t3=0,t4=0,temp1=0,temp2=0;
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R8,#+0
        MOVS     R1,#+0
//   30 /*隶属度的确定*/ 
//   31 /*根据PD的指定语言值获得有效隶属度*/ 
//   32  if(P>PFF[0] && P<PFF[6])
        LDR      R0,[SP, #+68]
        MOVS     R1,R7
        BL       __aeabi_cfcmple
        BCS.W    ??Fuzzy_1
        MOVS     R0,R7
        LDR      R1,[SP, #+92]
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_1
//   33 {
//   34  if(P<=PFF[1])
        LDR      R0,[SP, #+72]
        MOVS     R1,R7
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_2
//   35  {
//   36   Pn=1;
        MOVS     R6,#+1
//   37   PF[0]=(PFF[1]-P)/(PFF[1]-PFF[0]);
        LDR      R0,[SP, #+72]
        MOVS     R1,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR      R0,[SP, #+72]
        LDR      R1,[SP, #+68]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_3
//   38  }
//   39  else if(P<=PFF[2])
??Fuzzy_2:
        LDR      R0,[SP, #+76]
        MOVS     R1,R7
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_4
//   40  {
//   41   Pn=2;
        MOVS     R6,#+2
//   42   PF[0]=(PFF[2]-P)/(PFF[2]-PFF[1]);
        LDR      R0,[SP, #+76]
        MOVS     R1,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR      R0,[SP, #+76]
        LDR      R1,[SP, #+72]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_3
//   43  }
//   44  else if(P<=PFF[3])
??Fuzzy_4:
        LDR      R0,[SP, #+80]
        MOVS     R1,R7
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_5
//   45  {
//   46   Pn=3;
        MOVS     R6,#+3
//   47   PF[0]=(PFF[3]-P)/(PFF[3]-PFF[2]);
        LDR      R0,[SP, #+80]
        MOVS     R1,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR      R0,[SP, #+80]
        LDR      R1,[SP, #+76]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_3
//   48  }
//   49  else if(P<=PFF[4])
??Fuzzy_5:
        LDR      R0,[SP, #+84]
        MOVS     R1,R7
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_6
//   50  {
//   51   Pn=3;
        MOVS     R6,#+3
//   52   PF[0]=(PFF[4]-P)/(PFF[4]-PFF[3]);
        LDR      R0,[SP, #+84]
        MOVS     R1,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR      R0,[SP, #+84]
        LDR      R1,[SP, #+80]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_3
//   53  }
//   54  else if(P<=PFF[5])
??Fuzzy_6:
        LDR      R0,[SP, #+88]
        MOVS     R1,R7
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_7
//   55  {
//   56   Pn=4;
        MOVS     R6,#+4
//   57   PF[0]=(PFF[5]-P)/(PFF[5]-PFF[4]);
        LDR      R0,[SP, #+88]
        MOVS     R1,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR      R0,[SP, #+88]
        LDR      R1,[SP, #+84]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_3
//   58  }
//   59  else if(P<=PFF[6])
??Fuzzy_7:
        LDR      R0,[SP, #+92]
        MOVS     R1,R7
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_3
//   60  {
//   61   Pn=5;
        MOVS     R6,#+5
//   62   PF[0]=(PFF[6]-P)/(PFF[6]-PFF[5]);
        LDR      R0,[SP, #+92]
        MOVS     R1,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR      R0,[SP, #+92]
        LDR      R1,[SP, #+88]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_3
//   63  }
//   64 }
//   65  
//   66  else if(P<=PFF[0])
??Fuzzy_1:
        LDR      R0,[SP, #+68]
        MOVS     R1,R7
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_8
//   67  {
//   68   Pn=0;
        MOVS     R6,#+0
//   69   PF[0]=1;
        MOVS     R0,#+1065353216
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_3
//   70  }
//   71  else if(P>=PFF[6])
??Fuzzy_8:
        MOVS     R0,R7
        LDR      R1,[SP, #+92]
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_3
//   72  {
//   73   Pn=6;
        MOVS     R6,#+6
//   74   PF[0]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   75  }
//   76 
//   77 PF[1]=1-PF[0];
??Fuzzy_3:
        MOVS     R0,#+1065353216
        LDR      R1,[SP, #+16]
        BL       __aeabi_fsub
        STR      R0,[SP, #+20]
//   78 
//   79 
//   80 //判断D的隶属度
//   81  if(D>DFF[0]&&D<DFF[4])
        LDR      R0,[SP, #+48]
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_9
        MOVS     R0,R4
        LDR      R1,[SP, #+64]
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_9
//   82  {
//   83   if(D<=DFF[1])
        LDR      R0,[SP, #+52]
        MOVS     R1,R4
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_10
//   84   {
//   85    Dn=1;
        MOVS     R5,#+1
//   86    DF[0]=(DFF[1]-D)/(DFF[1]-DFF[0]);
        LDR      R0,[SP, #+52]
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR      R0,[SP, #+52]
        LDR      R1,[SP, #+48]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        STR      R0,[SP, #+24]
        B.N      ??Fuzzy_11
//   87   }
//   88  else if(D<=DFF[2])
??Fuzzy_10:
        LDR      R0,[SP, #+56]
        MOVS     R1,R4
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_12
//   89  {
//   90   Dn=2;
        MOVS     R5,#+2
//   91   DF[0]=(DFF[2]-D)/(DFF[2]-DFF[1]);
        LDR      R0,[SP, #+56]
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR      R0,[SP, #+56]
        LDR      R1,[SP, #+52]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        STR      R0,[SP, #+24]
        B.N      ??Fuzzy_11
//   92   }
//   93  else if(D<=DFF[3])
??Fuzzy_12:
        LDR      R0,[SP, #+60]
        MOVS     R1,R4
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_13
//   94  {
//   95   Dn=3;
        MOVS     R5,#+3
//   96   DF[0]=(DFF[3]-D)/(DFF[3]-DFF[2]);
        LDR      R0,[SP, #+60]
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR      R0,[SP, #+60]
        LDR      R1,[SP, #+56]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        STR      R0,[SP, #+24]
        B.N      ??Fuzzy_11
//   97   }
//   98  else if(D<=DFF[4])
??Fuzzy_13:
        LDR      R0,[SP, #+64]
        MOVS     R1,R4
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_11
//   99  {
//  100   Dn=4;
        MOVS     R5,#+4
//  101   DF[0]=(DFF[4]-D)/(DFF[4]-DFF[3]);
        LDR      R0,[SP, #+64]
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR      R0,[SP, #+64]
        LDR      R1,[SP, #+60]
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        STR      R0,[SP, #+24]
        B.N      ??Fuzzy_11
//  102  }
//  103  }
//  104  //不在给定的区间内
//  105  else if (D<=DFF[0])
??Fuzzy_9:
        LDR      R0,[SP, #+48]
        MOVS     R1,R4
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_14
//  106  {
//  107   Dn=0;
        MOVS     R5,#+0
//  108   DF[0]=1;
        MOVS     R0,#+1065353216
        STR      R0,[SP, #+24]
        B.N      ??Fuzzy_11
//  109  }
//  110  else if(D>=DFF[4])
??Fuzzy_14:
        MOVS     R0,R4
        LDR      R1,[SP, #+64]
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_11
//  111  {
//  112   Dn=5;
        MOVS     R5,#+5
//  113   DF[0]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
//  114  }
//  115 
//  116 DF[1]=1-DF[0];
??Fuzzy_11:
        MOVS     R0,#+1065353216
        LDR      R1,[SP, #+24]
        BL       __aeabi_fsub
        STR      R0,[SP, #+28]
//  117 
//  118  /*使用误差范围优化后的规则表rule[7][7]*/ 
//  119  /*输出值使用13个隶属函数,中心值由UFF[7]指定*/ 
//  120  /*一般都是四个规则有效*/ 
//  121 
//  122 Un[0]=rule[Pn][Dn]; 
        ADD      R0,SP,#+124
        MOVS     R1,#+24
        MLA      R0,R1,R6,R0
        LDR      R0,[R0, R5, LSL #+2]
        STR      R0,[SP, #+32]
//  123 Un[1]=rule[Pn][Dn+1]; 
        ADD      R0,SP,#+124
        MOVS     R1,#+24
        MLA      R0,R1,R6,R0
        ADDS     R0,R0,R5, LSL #+2
        LDR      R0,[R0, #+4]
        STR      R0,[SP, #+36]
//  124 Un[2]=rule[Pn+1][Dn]; 
        ADD      R0,SP,#+124
        MOVS     R1,#+24
        MLA      R0,R1,R6,R0
        ADDS     R0,R0,R5, LSL #+2
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+40]
//  125 Un[3]=rule[Pn+1][Dn+1]; 
        ADD      R0,SP,#+124
        MOVS     R1,#+24
        MLA      R0,R1,R6,R0
        ADDS     R0,R0,R5, LSL #+2
        LDR      R0,[R0, #+28]
        STR      R0,[SP, #+44]
//  126  
//  127  if(PF[0]<=DF[0])    //求小   
        LDR      R0,[SP, #+24]
        LDR      R1,[SP, #+16]
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_15
//  128   UF[0]=PF[0];
        LDR      R0,[SP, #+16]
        STR      R0,[SP, #+0]
        B.N      ??Fuzzy_16
//  129  else
//  130   UF[0]=DF[0];
??Fuzzy_15:
        LDR      R0,[SP, #+24]
        STR      R0,[SP, #+0]
//  131  if(PF[1]<=DF[0])
??Fuzzy_16:
        LDR      R0,[SP, #+24]
        LDR      R1,[SP, #+20]
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_17
//  132   UF[1]=PF[1];
        LDR      R0,[SP, #+20]
        STR      R0,[SP, #+4]
        B.N      ??Fuzzy_18
//  133  else
//  134   UF[1]=DF[0];
??Fuzzy_17:
        LDR      R0,[SP, #+24]
        STR      R0,[SP, #+4]
//  135  if(PF[0]<=DF[1])
??Fuzzy_18:
        LDR      R0,[SP, #+28]
        LDR      R1,[SP, #+16]
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_19
//  136   UF[2]=PF[0];
        LDR      R0,[SP, #+16]
        STR      R0,[SP, #+8]
        B.N      ??Fuzzy_20
//  137  else
//  138   UF[2]=DF[1];
??Fuzzy_19:
        LDR      R0,[SP, #+28]
        STR      R0,[SP, #+8]
//  139  if(PF[1]<=DF[1])
??Fuzzy_20:
        LDR      R0,[SP, #+28]
        LDR      R1,[SP, #+20]
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_21
//  140   UF[3]=PF[1];
        LDR      R0,[SP, #+20]
        STR      R0,[SP, #+12]
        B.N      ??Fuzzy_22
//  141  else
//  142   UF[3]=DF[1];
??Fuzzy_21:
        LDR      R0,[SP, #+28]
        STR      R0,[SP, #+12]
//  143 
//  144  
//  145 /*同隶属函数输出语言值求大*/ 
//  146  if(Un[0]==Un[1])
??Fuzzy_22:
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+36]
        CMP      R0,R1
        BNE.N    ??Fuzzy_23
//  147  {
//  148   if(UF[0]>UF[1])
        LDR      R0,[SP, #+4]
        LDR      R1,[SP, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_24
//  149   UF[1]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        B.N      ??Fuzzy_23
//  150   else
//  151   UF[0]=0;
??Fuzzy_24:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  152  }
//  153  if(Un[0]==Un[2])
??Fuzzy_23:
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+40]
        CMP      R0,R1
        BNE.N    ??Fuzzy_25
//  154  {
//  155   if(UF[0]>UF[2])
        LDR      R0,[SP, #+8]
        LDR      R1,[SP, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_26
//  156   UF[2]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        B.N      ??Fuzzy_25
//  157   else
//  158   UF[0]=0;
??Fuzzy_26:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  159  }
//  160  if(Un[0]==Un[3])
??Fuzzy_25:
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+44]
        CMP      R0,R1
        BNE.N    ??Fuzzy_27
//  161  {
//  162   if(UF[0]>UF[3])
        LDR      R0,[SP, #+12]
        LDR      R1,[SP, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_28
//  163   UF[3]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        B.N      ??Fuzzy_27
//  164   else
//  165   UF[0]=0;
??Fuzzy_28:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  166  }
//  167  if(Un[1]==Un[2])
??Fuzzy_27:
        LDR      R0,[SP, #+36]
        LDR      R1,[SP, #+40]
        CMP      R0,R1
        BNE.N    ??Fuzzy_29
//  168  {
//  169   if(UF[1]>UF[2])
        LDR      R0,[SP, #+8]
        LDR      R1,[SP, #+4]
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_30
//  170   UF[2]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        B.N      ??Fuzzy_29
//  171   else
//  172   UF[1]=0;
??Fuzzy_30:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  173  }
//  174  if(Un[1]==Un[3])
??Fuzzy_29:
        LDR      R0,[SP, #+36]
        LDR      R1,[SP, #+44]
        CMP      R0,R1
        BNE.N    ??Fuzzy_31
//  175  {
//  176   if(UF[1]>UF[3])
        LDR      R0,[SP, #+12]
        LDR      R1,[SP, #+4]
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_32
//  177   UF[3]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        B.N      ??Fuzzy_31
//  178   else
//  179   UF[1]=0;
??Fuzzy_32:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  180  } 
//  181  if(Un[2]==Un[3])
??Fuzzy_31:
        LDR      R0,[SP, #+40]
        LDR      R1,[SP, #+44]
        CMP      R0,R1
        BNE.N    ??Fuzzy_33
//  182  {
//  183   if(UF[2]>UF[3])
        LDR      R0,[SP, #+12]
        LDR      R1,[SP, #+8]
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_34
//  184   UF[3]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        B.N      ??Fuzzy_33
//  185   else
//  186   UF[2]=0;
??Fuzzy_34:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  187  }
//  188  
//  189  
//  190  t1=UF[0]*UFF[Un[0]];  
??Fuzzy_33:
        LDR      R1,[SP, #+0]
        ADD      R0,SP,#+96
        LDR      R2,[SP, #+32]
        LDR      R0,[R0, R2, LSL #+2]
        BL       __aeabi_fmul
        MOV      R8,R0
//  191  t2=UF[1]*UFF[Un[1]];
        LDR      R1,[SP, #+4]
        ADD      R0,SP,#+96
        LDR      R2,[SP, #+36]
        LDR      R0,[R0, R2, LSL #+2]
        BL       __aeabi_fmul
        MOV      R9,R0
//  192  t3=UF[2]*UFF[Un[2]];
        LDR      R1,[SP, #+8]
        ADD      R0,SP,#+96
        LDR      R2,[SP, #+40]
        LDR      R0,[R0, R2, LSL #+2]
        BL       __aeabi_fmul
        MOV      R10,R0
//  193  t4=UF[3]*UFF[Un[3]];
        LDR      R1,[SP, #+12]
        ADD      R0,SP,#+96
        LDR      R2,[SP, #+44]
        LDR      R0,[R0, R2, LSL #+2]
        BL       __aeabi_fmul
        MOV      R11,R0
//  194  temp1=t1+t2+t3+t4;
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_fadd
        MOV      R1,R10
        BL       __aeabi_fadd
        MOV      R1,R11
        BL       __aeabi_fadd
        MOV      R8,R0
//  195  temp2=UF[0]+UF[1]+UF[2]+UF[3];//模糊量输出
        LDR      R1,[SP, #+0]
        LDR      R0,[SP, #+4]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+8]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+12]
        BL       __aeabi_fadd
        MOVS     R1,R0
//  196  U=temp1/temp2;
        MOV      R0,R8
        BL       __aeabi_fdiv
//  197  return U;
        ADD      SP,SP,#+316
        POP      {R4-R11,PC}      ;; return
        Nop      
        DATA
??Fuzzy_0:
        DC32     ?_2
        DC32     ?_3
        DC32     ?_4
        DC32     ?_0
//  198 }

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_0:
        DATA
        DC32 2, 2, 3, 0, 0, 0, 6, 5, 1, 0, 0, 0, 5, 3, 1, 1, 0, 0, 4, 3, 0, 3
        DC32 5, 5, 0, 1, 1, 5, 6, 6, 0, 0, 1, 2, 4, 4, 0, 0, 3, 2, 2, 2, 0, 0
        DC32 3, 2, 2, 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC32 0C1D80000H, 0C1700000H, 0C1000000H, 0H, 41000000H, 41700000H
        DC32 41D80000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC32 0C0E66666H, 0C0400000H, 0H, 40400000H, 40E66666H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC32 0H, 41700000H, 41A00000H, 420C0000H, 42480000H, 42A00000H
        DC32 42F00000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  199 
//  200 
// 
//   316 bytes in section .rodata
// 1 128 bytes in section .text
// 
// 1 128 bytes of CODE  memory
//   316 bytes of CONST memory
//
//Errors: none
//Warnings: none
