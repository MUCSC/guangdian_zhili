///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       14/Jul/2016  12:00:47
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\saveinflash.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\saveinflash.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\saveinflash.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Correct_Err
        EXTERN Fuzzy_Kd
        EXTERN Fuzzy_Kp
        EXTERN K_CrossRoad
        EXTERN LPLD_Flash_ByteProgram
        EXTERN LPLD_Flash_Init
        EXTERN LPLD_Flash_SectorErase
        EXTERN PID_Speed
        EXTERN PID_Turn
        EXTERN P_CrossRoad
        EXTERN SetSpeed

        PUBLIC DebugData_Init
        PUBLIC DebugData_Read
        PUBLIC DebugData_Save
        PUBLIC Save_Data
        PUBLIC delay_flash
        PUBLIC ptr
        PUBLIC read_buffer
        PUBLIC write_buffer

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\saveinflash.c
//    1 #include "saveinflash.h"
//    2 #define FLASH_SAVE_SECTOR   (127)  //储存扇区
//    3 #define FLASH_SAVE_ADDR     (FLASH_SAVE_SECTOR*2048)  
//    4 #define DATA_SIZE      (49)

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 uint8 read_buffer[DATA_SIZE];  //定义读缓冲区
read_buffer:
        DS8 52

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 uint8 write_buffer[DATA_SIZE]; //定义写缓冲区
write_buffer:
        DS8 52

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    7 uint8 *ptr=(uint8*)FLASH_SAVE_ADDR;
ptr:
        DATA
        DC32 3F800H
//    8 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    9 float *Save_Data[12]={&PID_Speed.P,&PID_Speed.I,&PID_Speed.D,&PID_Turn.P,&PID_Turn.D,&PID_Turn.I,&Fuzzy_Kp,&Fuzzy_Kd,&Correct_Err,&K_CrossRoad,&SetSpeed,&P_CrossRoad};
Save_Data:
        DATA
        DC32 PID_Speed, PID_Speed + 8H, PID_Speed + 10H, PID_Turn
        DC32 PID_Turn + 10H, PID_Turn + 8H, Fuzzy_Kp, Fuzzy_Kd, Correct_Err
        DC32 K_CrossRoad, SetSpeed, P_CrossRoad

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   10 void DebugData_Init()
//   11 {
DebugData_Init:
        PUSH     {R7,LR}
//   12 
//   13   LPLD_Flash_Init();
        BL       LPLD_Flash_Init
//   14   delay_flash();
        BL       delay_flash
//   15 
//   16   if(*(ptr)!=0xa3)  //没有数据保存
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+163
        BEQ.N    ??DebugData_Init_0
//   17   {
//   18     
//   19     DebugData_Save();
        BL       DebugData_Save
        B.N      ??DebugData_Init_1
//   20     
//   21   
//   22   }
//   23   else
//   24   {
//   25     DebugData_Read();
??DebugData_Init_0:
        BL       DebugData_Read
//   26   }
//   27 
//   28 
//   29 
//   30 
//   31 }
??DebugData_Init_1:
        POP      {R0,PC}          ;; return
//   32 
//   33 
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void DebugData_Save()
//   36 {
DebugData_Save:
        PUSH     {R7,LR}
//   37   uint8 i;
//   38   write_buffer[0]=0xa3;
        MOVS     R0,#+163
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   39   for(i=0;i<12;i++)
        MOVS     R0,#+0
        B.N      ??DebugData_Save_0
//   40   {
//   41     write_buffer[4*i+1]=BYTE0(*Save_Data[i]);
??DebugData_Save_1:
        LDR.N    R1,??DataTable2_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STRB     R1,[R2, #+1]
//   42     write_buffer[4*i+2]=BYTE1(*Save_Data[i]);
        LDR.N    R1,??DataTable2_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+1]
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STRB     R1,[R2, #+2]
//   43     write_buffer[4*i+3]=BYTE2(*Save_Data[i]);
        LDR.N    R1,??DataTable2_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+2]
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STRB     R1,[R2, #+3]
//   44     write_buffer[4*i+4]=BYTE3(*Save_Data[i]);
        LDR.N    R1,??DataTable2_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+3]
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STRB     R1,[R2, #+4]
//   45     
//   46 
//   47   }
        ADDS     R0,R0,#+1
??DebugData_Save_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+12
        BLT.N    ??DebugData_Save_1
//   48 
//   49   DisableInterrupts;  
        CPSID    I
//   50   LPLD_Flash_SectorErase(FLASH_SAVE_ADDR);
        MOVS     R0,#+260096
        BL       LPLD_Flash_SectorErase
//   51   EnableInterrupts; 
        CPSIE    I
//   52   DisableInterrupts;  
        CPSID    I
//   53   LPLD_Flash_ByteProgram((uint32)FLASH_SAVE_ADDR, (uint32*)write_buffer, DATA_SIZE);
        MOVS     R2,#+49
        LDR.N    R1,??DataTable2_1
        MOVS     R0,#+260096
        BL       LPLD_Flash_ByteProgram
//   54   EnableInterrupts;
        CPSIE    I
//   55   delay_flash();
        BL       delay_flash
//   56   
//   57 
//   58 }
        POP      {R0,PC}          ;; return
//   59 
//   60 
//   61 
//   62 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 void DebugData_Read()
//   64 {
//   65   uint8 i;
//   66 
//   67 
//   68   for(i=0;i<12;i++)
DebugData_Read:
        MOVS     R0,#+0
        B.N      ??DebugData_Read_0
//   69   {
//   70     BYTE0(*Save_Data[i])=*(ptr + 4*i+1);
??DebugData_Read_1:
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDRB     R1,[R1, #+1]
        LDR.N    R2,??DataTable2_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+0]
//   71     BYTE1(*Save_Data[i])=*(ptr + 4*i+2);
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDRB     R1,[R1, #+2]
        LDR.N    R2,??DataTable2_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+1]
//   72     BYTE2(*Save_Data[i])=*(ptr + 4*i+3);
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDRB     R1,[R1, #+3]
        LDR.N    R2,??DataTable2_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+2]
//   73     BYTE3(*Save_Data[i])=*(ptr + 4*i+4);
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDRB     R1,[R1, #+4]
        LDR.N    R2,??DataTable2_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+3]
//   74   }
        ADDS     R0,R0,#+1
??DebugData_Read_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+12
        BLT.N    ??DebugData_Read_1
//   75 
//   76 
//   77 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     write_buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     Save_Data
//   78 
//   79 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   80 void delay_flash()
//   81 {
//   82   uint16 i, n;
//   83   for(i=0;i<30000;i++)
delay_flash:
        MOVS     R0,#+0
        B.N      ??delay_flash_0
//   84   {
//   85     for(n=0;n<200;n++)
//   86     {
//   87       asm("nop");
??delay_flash_1:
        nop
//   88     }
        ADDS     R1,R1,#+1
??delay_flash_2:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+200
        BLT.N    ??delay_flash_1
        ADDS     R0,R0,#+1
??delay_flash_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+30000
        CMP      R0,R1
        BGE.N    ??delay_flash_3
        MOVS     R1,#+0
        B.N      ??delay_flash_2
//   89   }
//   90 }
??delay_flash_3:
        BX       LR               ;; return

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
// 104 bytes in section .bss
//  52 bytes in section .data
// 312 bytes in section .text
// 
// 312 bytes of CODE memory
// 156 bytes of DATA memory
//
//Errors: none
//Warnings: none
