///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       19/Jul/2016  15:42:36
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\saveinflash.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\saveinflash.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\FLASH\List\saveinflash.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Barraicade_Num
        EXTERN Correct_Err
        EXTERN K_Barraicade
        EXTERN K_CrossRoad
        EXTERN LPLD_Flash_ByteProgram
        EXTERN LPLD_Flash_Init
        EXTERN LPLD_Flash_SectorErase
        EXTERN LPLD_GPIO_Input_b
        EXTERN PID_Speed
        EXTERN PID_Turn
        EXTERN P_CrossRoad
        EXTERN SetSpeed
        EXTERN Threshold

        PUBLIC DataInFlash_Num
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
//    4 #define DATA_SIZE      (157)

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 uint8 read_buffer[DATA_SIZE];  //定义读缓冲区
read_buffer:
        DS8 160

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 uint8 write_buffer[DATA_SIZE]={0}; //定义写缓冲区
write_buffer:
        DS8 160

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    7 uint8 *ptr=(uint8*)FLASH_SAVE_ADDR;
ptr:
        DATA
        DC32 3F800H

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8 DataInFlash_Num=0;
DataInFlash_Num:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    9 float *Save_Data[13]={&PID_Speed.P,&PID_Speed.I,&PID_Speed.D,&PID_Turn.P,&PID_Turn.D,&PID_Turn.I,&Threshold,&K_Barraicade,&Correct_Err,&K_CrossRoad,&SetSpeed,&P_CrossRoad,&Barraicade_Num};
Save_Data:
        DATA
        DC32 PID_Speed, PID_Speed + 8H, PID_Speed + 10H, PID_Turn
        DC32 PID_Turn + 10H, PID_Turn + 8H, Threshold, K_Barraicade
        DC32 Correct_Err, K_CrossRoad, SetSpeed, P_CrossRoad, Barraicade_Num

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   10 void DebugData_Init()
//   11 {
DebugData_Init:
        PUSH     {R7,LR}
//   12   if(SW_In2==0)
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??DebugData_Init_0
//   13   {
//   14     DataInFlash_Num=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
        B.N      ??DebugData_Init_1
//   15   
//   16   }
//   17   else if(SW_In3==0)
??DebugData_Init_0:
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??DebugData_Init_2
//   18   {
//   19      DataInFlash_Num=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
        B.N      ??DebugData_Init_1
//   20   
//   21   }
//   22   else if(SW_In4==0)
??DebugData_Init_2:
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??DebugData_Init_3
//   23   {
//   24   
//   25     DataInFlash_Num=2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
        B.N      ??DebugData_Init_1
//   26   }
//   27   else
//   28   {
//   29     DataInFlash_Num=0;
??DebugData_Init_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   30   }
//   31   LPLD_Flash_Init();
??DebugData_Init_1:
        BL       LPLD_Flash_Init
//   32   delay_flash();
        BL       delay_flash
//   33 
//   34   if(*(ptr)!=0xa3)  //没有数据保存
        LDR.N    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+163
        BEQ.N    ??DebugData_Init_4
//   35   {
//   36     
//   37     DebugData_Save();
        BL       DebugData_Save
        B.N      ??DebugData_Init_5
//   38     
//   39   
//   40   }
//   41   else
//   42   {
//   43     DebugData_Read();
??DebugData_Init_4:
        BL       DebugData_Read
//   44   }
//   45 
//   46 
//   47 
//   48 
//   49 }
??DebugData_Init_5:
        POP      {R0,PC}          ;; return
//   50 
//   51 
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void DebugData_Save()
//   54 {
DebugData_Save:
        PUSH     {R4,LR}
//   55   uint8 i;
//   56   write_buffer[0]=0xa3;
        MOVS     R0,#+163
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+0]
//   57   for(i=1;i<157;i++)
        MOVS     R0,#+1
        B.N      ??DebugData_Save_0
//   58   {
//   59     write_buffer[i]=*(ptr+i);
??DebugData_Save_1:
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        LDR.N    R2,??DataTable2_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R1,[R0, R2]
//   60   
//   61   }
        ADDS     R0,R0,#+1
??DebugData_Save_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+157
        BLT.N    ??DebugData_Save_1
//   62   for(i=0;i<13;i++)
        MOVS     R0,#+0
        B.N      ??DebugData_Save_2
//   63   {
//   64     write_buffer[4*i+1+DataInFlash_Num*52]=BYTE0(*Save_Data[i]);
??DebugData_Save_3:
        LDR.N    R1,??DataTable2_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+2
        LDR.N    R3,??DataTable2_1
        LDRB     R3,[R3, #+0]
        MOVS     R4,#+52
        MLA      R2,R4,R3,R2
        ADDS     R1,R2,R1
        LDR.N    R2,??DataTable2_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+0]
        STRB     R2,[R1, #+1]
//   65     write_buffer[4*i+2+DataInFlash_Num*52]=BYTE1(*Save_Data[i]);
        LDR.N    R1,??DataTable2_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+2
        LDR.N    R3,??DataTable2_1
        LDRB     R3,[R3, #+0]
        MOVS     R4,#+52
        MLA      R2,R4,R3,R2
        ADDS     R1,R2,R1
        LDR.N    R2,??DataTable2_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+1]
        STRB     R2,[R1, #+2]
//   66     write_buffer[4*i+3+DataInFlash_Num*52]=BYTE2(*Save_Data[i]);
        LDR.N    R1,??DataTable2_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+2
        LDR.N    R3,??DataTable2_1
        LDRB     R3,[R3, #+0]
        MOVS     R4,#+52
        MLA      R2,R4,R3,R2
        ADDS     R1,R2,R1
        LDR.N    R2,??DataTable2_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+2]
        STRB     R2,[R1, #+3]
//   67     write_buffer[4*i+4+DataInFlash_Num*52]=BYTE3(*Save_Data[i]);
        LDR.N    R1,??DataTable2_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+2
        LDR.N    R3,??DataTable2_1
        LDRB     R3,[R3, #+0]
        MOVS     R4,#+52
        MLA      R2,R4,R3,R2
        ADDS     R1,R2,R1
        LDR.N    R2,??DataTable2_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+3]
        STRB     R2,[R1, #+4]
//   68     
//   69 
//   70   }
        ADDS     R0,R0,#+1
??DebugData_Save_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+13
        BLT.N    ??DebugData_Save_3
//   71 
//   72   DisableInterrupts;  
        CPSID    I
//   73   LPLD_Flash_SectorErase(FLASH_SAVE_ADDR);
        MOVS     R0,#+260096
        BL       LPLD_Flash_SectorErase
//   74   EnableInterrupts; 
        CPSIE    I
//   75   DisableInterrupts;  
        CPSID    I
//   76   LPLD_Flash_ByteProgram((uint32)FLASH_SAVE_ADDR, (uint32*)write_buffer, DATA_SIZE);
        MOVS     R2,#+157
        LDR.N    R1,??DataTable2_3
        MOVS     R0,#+260096
        BL       LPLD_Flash_ByteProgram
//   77   EnableInterrupts;
        CPSIE    I
//   78   delay_flash();
        BL       delay_flash
//   79   
//   80 
//   81 }
        POP      {R4,PC}          ;; return
//   82 
//   83 
//   84 
//   85 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   86 void DebugData_Read()
//   87 {
//   88   uint8 i;
//   89 
//   90 
//   91   for(i=0;i<13;i++)
DebugData_Read:
        MOVS     R0,#+0
        B.N      ??DebugData_Read_0
//   92   {
//   93     BYTE0(*Save_Data[i])=*(ptr + 4*i+1+52*DataInFlash_Num);
??DebugData_Read_1:
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR.N    R2,??DataTable2_1
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+52
        MLA      R1,R3,R2,R1
        LDRB     R1,[R1, #+1]
        LDR.N    R2,??DataTable2_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+0]
//   94     BYTE1(*Save_Data[i])=*(ptr + 4*i+2+52*DataInFlash_Num);
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR.N    R2,??DataTable2_1
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+52
        MLA      R1,R3,R2,R1
        LDRB     R1,[R1, #+2]
        LDR.N    R2,??DataTable2_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+1]
//   95     BYTE2(*Save_Data[i])=*(ptr + 4*i+3+52*DataInFlash_Num);
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR.N    R2,??DataTable2_1
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+52
        MLA      R1,R3,R2,R1
        LDRB     R1,[R1, #+3]
        LDR.N    R2,??DataTable2_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+2]
//   96     BYTE3(*Save_Data[i])=*(ptr + 4*i+4+52*DataInFlash_Num);
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR.N    R2,??DataTable2_1
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+52
        MLA      R1,R3,R2,R1
        LDRB     R1,[R1, #+4]
        LDR.N    R2,??DataTable2_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+3]
//   97   }
        ADDS     R0,R0,#+1
??DebugData_Read_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+13
        BLT.N    ??DebugData_Read_1
//   98 
//   99 
//  100 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     DataInFlash_Num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     write_buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Save_Data
//  101 
//  102 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  103 void delay_flash()
//  104 {
//  105   uint16 i, n;
//  106   for(i=0;i<30000;i++)
delay_flash:
        MOVS     R0,#+0
        B.N      ??delay_flash_0
//  107   {
//  108     for(n=0;n<200;n++)
//  109     {
//  110       asm("nop");
??delay_flash_1:
        nop
//  111     }
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
//  112   }
//  113 }
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
// 321 bytes in section .bss
//  56 bytes in section .data
// 492 bytes in section .text
// 
// 492 bytes of CODE memory
// 377 bytes of DATA memory
//
//Errors: none
//Warnings: none
