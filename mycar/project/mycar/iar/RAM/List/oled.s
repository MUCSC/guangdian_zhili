///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       10/Jul/2016  20:24:42
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\oled.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\oled.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\oled.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f

        PUBLIC F6x8
        PUBLIC OLED_DLY_ms
        PUBLIC OLED_Fill
        PUBLIC OLED_Init
        PUBLIC OLED_P6x8Char
        PUBLIC OLED_P6x8Str
        PUBLIC OLED_PrintValueC
        PUBLIC OLED_PrintValueF
        PUBLIC OLED_PrintValueFP
        PUBLIC OLED_PrintValueI
        PUBLIC OLED_Set_Pos
        PUBLIC OLED_WrCmd
        PUBLIC OLED_WrDat
        PUBLIC SetAddressingMode
        PUBLIC SetColumnAddress
        PUBLIC SetContrastControl
        PUBLIC SetPageAddress
        PUBLIC SetStartColumn
        PUBLIC SetStartLine
        PUBLIC SetStartPage
        PUBLIC Set_Charge_Pump
        PUBLIC Set_Common_Config
        PUBLIC Set_Common_Remap
        PUBLIC Set_Display_Clock
        PUBLIC Set_Display_Offset
        PUBLIC Set_Display_On_Off
        PUBLIC Set_Entire_Display
        PUBLIC Set_Inverse_Display
        PUBLIC Set_Multiplex_Ratio
        PUBLIC Set_NOP
        PUBLIC Set_Precharge_Period
        PUBLIC Set_Segment_Remap
        PUBLIC Set_VCOMH
        PUBLIC reverse
        PUBLIC showimage

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\oled.c
//    1 #include "common.h"
//    2 //OLED显示屏
//    3 
//    4 
//    5 #define OLED_RST(x)  LPLD_GPIO_Output_b(PTA, 16, x)
//    6 #define OLED_DC(x)   LPLD_GPIO_Output_b(PTA, 17, x)
//    7 #define OLED_D0(x)   LPLD_GPIO_Output_b(PTA, 24, x)
//    8 #define OLED_D1(x)   LPLD_GPIO_Output_b(PTA, 25, x)
//    9 
//   10 
//   11 
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8  reverse=0;
reverse:
        DS8 1
//   14 /*定义ASCII码表*/

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   15 const unsigned char F6x8[][6] =
F6x8:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 7, 0, 7, 0, 0, 20, 127
        DC8 20, 127, 20, 0, 36, 42, 127, 42, 18, 0, 98, 100, 8, 19, 35, 0, 54
        DC8 73, 85, 34, 80, 0, 0, 5, 3, 0, 0, 0, 0, 28, 34, 65, 0, 0, 0, 65, 34
        DC8 28, 0, 0, 20, 8, 62, 8, 20, 0, 8, 8, 62, 8, 8, 0, 0, 0, 160, 96, 0
        DC8 0, 8, 8, 8, 8, 8, 0, 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 81
        DC8 73, 69, 62, 0, 0, 66, 127, 64, 0, 0, 66, 97, 81, 73, 70, 0, 33, 65
        DC8 69, 75, 49, 0, 24, 20, 18, 127, 16, 0, 39, 69, 69, 69, 57, 0, 60
        DC8 74, 73, 73, 48, 0, 1, 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73
        DC8 73, 41, 30, 0, 0, 54, 54, 0, 0, 0, 0, 86, 54, 0, 0, 0, 8, 20, 34
        DC8 65, 0, 0, 20, 20, 20, 20, 20, 0, 0, 65, 34, 20, 8, 0, 2, 1, 81, 9
        DC8 6, 0, 50, 73, 89, 81, 62, 0, 124, 18, 17, 18, 124, 0, 127, 73, 73
        DC8 73, 54, 0, 62, 65, 65, 65, 34, 0, 127, 65, 65, 34, 28, 0, 127, 73
        DC8 73, 73, 65, 0, 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8
        DC8 8, 8, 127, 0, 0, 65, 127, 65, 0, 0, 32, 64, 65, 63, 1, 0, 127, 8
        DC8 20, 34, 65, 0, 127, 64, 64, 64, 64, 0, 127, 2, 12, 2, 127, 0, 127
        DC8 4, 8, 16, 127, 0, 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65
        DC8 81, 33, 94, 0, 127, 9, 25, 41, 70, 0, 70, 73, 73, 73, 49, 0, 1, 1
        DC8 127, 1, 1, 0, 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64
        DC8 56, 64, 63, 0, 99, 20, 8, 20, 99, 0, 7, 8, 112, 8, 7, 0, 97, 81, 73
        DC8 69, 67, 0, 0, 127, 65, 65, 0, 0, 2, 4, 8, 16, 32, 0, 0, 65, 65, 127
        DC8 0, 0, 4, 2, 1, 2, 4, 0, 64, 64, 64, 64, 64, 0, 0, 1, 2, 4, 0, 0, 32
        DC8 84, 84, 84, 120, 0, 127, 72, 68, 68, 56, 0, 56, 68, 68, 68, 32, 0
        DC8 56, 68, 68, 72, 127, 0, 56, 84, 84, 84, 24, 0, 8, 126, 9, 1, 2, 0
        DC8 24, 164, 164, 164, 124, 0, 127, 8, 4, 4, 120, 0, 0, 68, 125, 64, 0
        DC8 0, 64, 128, 132, 125, 0, 0, 127, 16, 40, 68, 0, 0, 0, 65, 127, 64
        DC8 0, 0, 124, 4, 24, 4, 120, 0, 124, 8, 4, 4, 120, 0, 56, 68, 68, 68
        DC8 56, 0, 252, 36, 36, 36, 24, 0, 24, 36, 36, 24, 252, 0, 124, 8, 4, 4
        DC8 8, 0, 72, 84, 84, 84, 32, 0, 4, 63, 68, 64, 32, 0, 60, 64, 64, 32
        DC8 124, 0, 28, 32, 64, 32, 28, 0, 60, 64, 48, 64, 60, 0, 68, 40, 16
        DC8 40, 68, 0, 28, 160, 160, 160, 124, 0, 68, 100, 84, 76, 68, 20, 20
        DC8 20, 20, 20, 20
//   16 {
//   17 	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//   18 	{ 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//   19 	{ 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//   20 	{ 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//   21 	{ 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   22 	{ 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   23 	{ 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   24 	{ 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   25 	{ 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   26 	{ 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   27 	{ 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   28 	{ 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   29 	{ 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   30 	{ 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   31 	{ 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   32 	{ 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   33 	{ 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   34 	{ 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   35 	{ 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   36 	{ 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   37 	{ 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   38 	{ 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   39 	{ 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   40 	{ 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   41 	{ 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   42 	{ 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   43 	{ 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   44 	{ 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//   45 	{ 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//   46 	{ 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//   47 	{ 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//   48 	{ 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//   49 	{ 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//   50 	{ 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//   51 	{ 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//   52 	{ 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//   53 	{ 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//   54 	{ 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//   55 	{ 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//   56 	{ 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//   57 	{ 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//   58 	{ 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//   59 	{ 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//   60 	{ 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//   61 	{ 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//   62 	{ 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//   63 	{ 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//   64 	{ 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//   65 	{ 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//   66 	{ 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//   67 	{ 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//   68 	{ 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//   69 	{ 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//   70 	{ 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//   71 	{ 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//   72 	{ 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//   73 	{ 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//   74 	{ 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//   75 	{ 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//   76 	{ 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [ 91
//   77 	{ 0x00, 0x02, 0x04 ,0x08, 0x10, 0x20 },    // \92
//   78 	{ 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//   79 	{ 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//   80 	{ 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//   81 	{ 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//   82 	{ 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//   83 	{ 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//   84 	{ 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//   85 	{ 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//   86 	{ 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//   87 	{ 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//   88 	{ 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//   89 	{ 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//   90 	{ 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//   91 	{ 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//   92 	{ 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//   93 	{ 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//   94 	{ 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//   95 	{ 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//   96 	{ 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//   97 	{ 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//   98 	{ 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//   99 	{ 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//  100 	{ 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//  101 	{ 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//  102 	{ 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//  103 	{ 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//  104 	{ 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//  105 	{ 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//  106 	{ 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//  107 	{ 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//  108 	{ 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//  109 };
//  110 
//  111 //写数据函数

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  112 void OLED_WrDat(unsigned char data,unsigned char revs)   
//  113 {
OLED_WrDat:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  114 	unsigned char i = 8;
        MOVS     R6,#+8
//  115         OLED_DC(1); 
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  116 	OLED_D0(0); 
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  117         if(revs) data=~data;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??OLED_WrDat_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MVNS     R4,R4
        B.N      ??OLED_WrDat_0
//  118 	while (i--)
//  119 	{
//  120             if (data & 0x80)
//  121             {
//  122              OLED_D1(1);
//  123             }
//  124             else
//  125             {
//  126              OLED_D1(0);
??OLED_WrDat_1:
        MOVS     R2,#+0
        MOVS     R1,#+25
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  127             }
//  128              OLED_D0(1);
??OLED_WrDat_2:
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  129             asm("nop");
        nop
//  130              OLED_D0(0);
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  131             data <<= 1;    
        LSLS     R4,R4,#+1
??OLED_WrDat_0:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_WrDat_3
        LSLS     R0,R4,#+24
        BPL.N    ??OLED_WrDat_1
        MOVS     R2,#+1
        MOVS     R1,#+25
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??OLED_WrDat_2
//  132 	}
//  133 }
??OLED_WrDat_3:
        POP      {R4-R6,PC}       ;; return
//  134 //写入命令函数

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  135 void OLED_WrCmd(unsigned char cmd) 
//  136 {
OLED_WrCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  137 	unsigned char i = 8;
        MOVS     R5,#+8
//  138 	//LED_CS = 0;
//  139         OLED_DC(0); 
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  140 	OLED_D0(0);
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??OLED_WrCmd_0
//  141 	while (i--)
//  142 	{
//  143 		if (cmd & 0x80)
//  144 		{
//  145 			OLED_D1(1);
//  146 		}
//  147 		else
//  148 		{
//  149 			OLED_D1(0);
??OLED_WrCmd_1:
        MOVS     R2,#+0
        MOVS     R1,#+25
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  150 		}
//  151 		OLED_D0(1);
??OLED_WrCmd_2:
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  152                 asm("nop");
        nop
//  153                 OLED_D0(0);
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  154 		cmd <<= 1;   
        LSLS     R4,R4,#+1
??OLED_WrCmd_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_WrCmd_3
        LSLS     R0,R4,#+24
        BPL.N    ??OLED_WrCmd_1
        MOVS     R2,#+1
        MOVS     R1,#+25
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??OLED_WrCmd_2
//  155 	} 	
//  156 	//LED_CS = 1;
//  157 }
??OLED_WrCmd_3:
        POP      {R0,R4,R5,PC}    ;; return
//  158 //设置显示坐标位置

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 void OLED_Set_Pos(unsigned char x, unsigned char y)
//  160 { 
OLED_Set_Pos:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  161 	OLED_WrCmd(0xb0+y);
        SUBS     R0,R1,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  162 	OLED_WrCmd(((x&0xf0)>>4)|0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  163 	OLED_WrCmd((x&0x0f)|0x00); 
        ANDS     R0,R4,#0xF
        BL       OLED_WrCmd
//  164 }
        POP      {R4,PC}          ;; return
//  165 //OLED填充

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 void OLED_Fill(unsigned char bmp_data)
//  167 {
OLED_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  168 	unsigned char y,x;
//  169 	
//  170 	for(y=0;y<8;y++)
        MOVS     R5,#+0
        B.N      ??OLED_Fill_0
//  171 	{
//  172 		OLED_WrCmd(0xb0+y);   //0xb0+0~7表示页0~页7?
//  173 		OLED_WrCmd(0x00);       //0x00+0~16表示将128列分成16组其地址在某组中的第几列
//  174 		OLED_WrCmd(0x10);      //0x10+0~16表示将128列分成16组其地址所在第几组
//  175 		for(x=0;x<128;x++)
//  176 	        OLED_WrDat(bmp_data,0);
??OLED_Fill_1:
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrDat
        ADDS     R6,R6,#+1
??OLED_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED_Fill_1
        ADDS     R5,R5,#+1
??OLED_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??OLED_Fill_3
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
        MOVS     R0,#+0
        BL       OLED_WrCmd
        MOVS     R0,#+16
        BL       OLED_WrCmd
        MOVS     R6,#+0
        B.N      ??OLED_Fill_2
//  177 	}
//  178 }
??OLED_Fill_3:
        POP      {R4-R6,PC}       ;; return
//  179 //延时函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  180 void OLED_DLY_ms(unsigned int ms)
//  181 {                         
OLED_DLY_ms:
        B.N      ??OLED_DLY_ms_0
//  182   uint16 a;
//  183   while(ms)
//  184   {
//  185     a=6675;
??OLED_DLY_ms_1:
        MOVW     R1,#+6675
//  186     while(a--);
??OLED_DLY_ms_2:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??OLED_DLY_ms_2
//  187     ms--;
        SUBS     R0,R0,#+1
//  188   }
??OLED_DLY_ms_0:
        CMP      R0,#+0
        BNE.N    ??OLED_DLY_ms_1
//  189   return;
        BX       LR               ;; return
//  190 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  191 void SetStartColumn(unsigned char d)
//  192 {
SetStartColumn:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  193 	OLED_WrCmd(0x00+d%16);	// Set Lower Column Start Address for Page Addressing Mode
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+16
        SDIV     R0,R4,R1
        MLS      R0,R0,R1,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  194 							// Default => 0x00
//  195 	OLED_WrCmd(0x10+d/16);	// Set Higher Column Start Address for Page Addressing Mode
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+16
        SDIV     R0,R4,R0
        ADDS     R0,R0,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  196 							// Default => 0x10
//  197 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  198 void SetAddressingMode(unsigned char d)
//  199 {
SetAddressingMode:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  200 	OLED_WrCmd(0x20);			// Set Memory Addressing Mode
        MOVS     R0,#+32
        BL       OLED_WrCmd
//  201 	OLED_WrCmd(d);			// Default => 0x02
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  202 							// 0x00 => Horizontal Addressing Mode
//  203 							// 0x01 => Vertical Addressing Mode
//  204 							// 0x02 => Page Addressing Mode
//  205 }
        POP      {R4,PC}          ;; return
//  206 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  207 void SetColumnAddress(unsigned char a, unsigned char b)
//  208 {
SetColumnAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  209 	OLED_WrCmd(0x21);			// Set Column Address
        MOVS     R0,#+33
        BL       OLED_WrCmd
//  210 	OLED_WrCmd(a);			// Default => 0x00 (Column Start Address)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  211 	OLED_WrCmd(b);			// Default => 0x7F (Column End Address)
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  212 }
        POP      {R0,R4,R5,PC}    ;; return
//  213 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  214 void SetPageAddress(unsigned char a, unsigned char b)
//  215 {
SetPageAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  216 	OLED_WrCmd(0x22);			// Set Page Address
        MOVS     R0,#+34
        BL       OLED_WrCmd
//  217 	OLED_WrCmd(a);			// Default => 0x00 (Page Start Address)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  218 	OLED_WrCmd(b);			// Default => 0x07 (Page End Address)
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  219 }
        POP      {R0,R4,R5,PC}    ;; return
//  220 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  221 void SetStartLine(unsigned char d)
//  222 {
SetStartLine:
        PUSH     {R7,LR}
//  223 	OLED_WrCmd(0x40|d);		// Set Display Start Line
        ORRS     R0,R0,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  224 							// Default => 0x40 (0x00)
//  225 }
        POP      {R0,PC}          ;; return
//  226 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 void SetContrastControl(unsigned char d)
//  228 {
SetContrastControl:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  229 	OLED_WrCmd(0x81);			// Set Contrast Control
        MOVS     R0,#+129
        BL       OLED_WrCmd
//  230 	OLED_WrCmd(d);			// Default => 0x7F
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  231 }
        POP      {R4,PC}          ;; return
//  232 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 void Set_Charge_Pump(unsigned char d)
//  234 {
Set_Charge_Pump:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  235 	OLED_WrCmd(0x8D);			// Set Charge Pump
        MOVS     R0,#+141
        BL       OLED_WrCmd
//  236 	OLED_WrCmd(0x10|d);		// Default => 0x10
        ORRS     R0,R4,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  237 							// 0x10 (0x00) => Disable Charge Pump
//  238 							// 0x14 (0x04) => Enable Charge Pump
//  239 }
        POP      {R4,PC}          ;; return
//  240 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 void Set_Segment_Remap(unsigned char d)
//  242 {
Set_Segment_Remap:
        PUSH     {R7,LR}
//  243 	OLED_WrCmd(0xA0|d);		// Set Segment Re-Map
        ORRS     R0,R0,#0xA0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  244 							// Default => 0xA0
//  245 							// 0xA0 (0x00) => Column Address 0 Mapped to SEG0
//  246 							// 0xA1 (0x01) => Column Address 0 Mapped to SEG127
//  247 }
        POP      {R0,PC}          ;; return
//  248 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 void Set_Entire_Display(unsigned char d)
//  250 {
Set_Entire_Display:
        PUSH     {R7,LR}
//  251 	OLED_WrCmd(0xA4|d);		// Set Entire Display On / Off
        ORRS     R0,R0,#0xA4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  252 							// Default => 0xA4
//  253 							// 0xA4 (0x00) => Normal Display
//  254 							// 0xA5 (0x01) => Entire Display On
//  255 }
        POP      {R0,PC}          ;; return
//  256 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  257 void Set_Inverse_Display(unsigned char d)
//  258 {
Set_Inverse_Display:
        PUSH     {R7,LR}
//  259 	OLED_WrCmd(0xA6|d);		// Set Inverse Display On/Off
        ORRS     R0,R0,#0xA6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  260 							// Default => 0xA6
//  261 							// 0xA6 (0x00) => Normal Display
//  262 							// 0xA7 (0x01) => Inverse Display On
//  263 }
        POP      {R0,PC}          ;; return
//  264 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  265 void Set_Multiplex_Ratio(unsigned char d)
//  266 {
Set_Multiplex_Ratio:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  267 	OLED_WrCmd(0xA8);			// Set Multiplex Ratio
        MOVS     R0,#+168
        BL       OLED_WrCmd
//  268 	OLED_WrCmd(d);			// Default => 0x3F (1/64 Duty)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  269 }
        POP      {R4,PC}          ;; return
//  270 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  271 void Set_Display_On_Off(unsigned char d)
//  272 {
Set_Display_On_Off:
        PUSH     {R7,LR}
//  273 	OLED_WrCmd(0xAE|d);		// Set Display On/Off
        ORRS     R0,R0,#0xAE
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  274 							// Default => 0xAE
//  275 							// 0xAE (0x00) => Display Off
//  276 							// 0xAF (0x01) => Display On
//  277 }
        POP      {R0,PC}          ;; return
//  278 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  279 void SetStartPage(unsigned char d)
//  280 {
SetStartPage:
        PUSH     {R7,LR}
//  281 	OLED_WrCmd(0xB0|d);		// Set Page Start Address for Page Addressing Mode
        ORRS     R0,R0,#0xB0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  282 							// Default => 0xB0 (0x00)
//  283 }
        POP      {R0,PC}          ;; return
//  284 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  285 void Set_Common_Remap(unsigned char d)
//  286 {
Set_Common_Remap:
        PUSH     {R7,LR}
//  287 	OLED_WrCmd(0xC0|d);		// Set COM Output Scan Direction
        ORRS     R0,R0,#0xC0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  288 							// Default => 0xC0
//  289 							// 0xC0 (0x00) => Scan from COM0 to 63
//  290 							// 0xC8 (0x08) => Scan from COM63 to 0
//  291 }
        POP      {R0,PC}          ;; return
//  292 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  293 void Set_Display_Offset(unsigned char d)
//  294 {
Set_Display_Offset:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  295 	OLED_WrCmd(0xD3);			// Set Display Offset
        MOVS     R0,#+211
        BL       OLED_WrCmd
//  296 	OLED_WrCmd(d);			// Default => 0x00
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  297 }
        POP      {R4,PC}          ;; return
//  298 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  299 void Set_Display_Clock(unsigned char d)
//  300 {
Set_Display_Clock:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  301 	OLED_WrCmd(0xD5);			// Set Display Clock Divide Ratio / Oscillator Frequency
        MOVS     R0,#+213
        BL       OLED_WrCmd
//  302 	OLED_WrCmd(d);			// Default => 0x80
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  303 							// D[3:0] => Display Clock Divider
//  304 							// D[7:4] => Oscillator Frequency
//  305 }
        POP      {R4,PC}          ;; return
//  306 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  307 void Set_Precharge_Period(unsigned char d)
//  308 {
Set_Precharge_Period:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  309 	OLED_WrCmd(0xD9);			// Set Pre-Charge Period
        MOVS     R0,#+217
        BL       OLED_WrCmd
//  310 	OLED_WrCmd(d);			// Default => 0x22 (2 Display Clocks [Phase 2] / 2 Display Clocks [Phase 1])
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  311 							// D[3:0] => Phase 1 Period in 1~15 Display Clocks
//  312 							// D[7:4] => Phase 2 Period in 1~15 Display Clocks
//  313 }
        POP      {R4,PC}          ;; return
//  314 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  315 void Set_Common_Config(unsigned char d)
//  316 {
Set_Common_Config:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  317 	OLED_WrCmd(0xDA);			// Set COM Pins Hardware Configuration
        MOVS     R0,#+218
        BL       OLED_WrCmd
//  318 	OLED_WrCmd(0x02|d);		// Default => 0x12 (0x10)
        ORRS     R0,R4,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  319 							// Alternative COM Pin Configuration
//  320 							// Disable COM Left/Right Re-Map
//  321 }
        POP      {R4,PC}          ;; return
//  322 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  323 void Set_VCOMH(unsigned char d)
//  324 {
Set_VCOMH:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  325 	OLED_WrCmd(0xDB);			// Set VCOMH Deselect Level
        MOVS     R0,#+219
        BL       OLED_WrCmd
//  326 	OLED_WrCmd(d);			        // Default => 0x20 (0.77*VCC)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  327 }
        POP      {R4,PC}          ;; return
//  328 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  329 void Set_NOP(void)
//  330 {
Set_NOP:
        PUSH     {R7,LR}
//  331 	OLED_WrCmd(0xE3);			// Command for No Operation
        MOVS     R0,#+227
        BL       OLED_WrCmd
//  332 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 void OLED_Init(void)        
//  334 {  
OLED_Init:
        PUSH     {R7,LR}
//  335         OLED_DC(0);		
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  336 	OLED_D1(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  337         OLED_D0(0);		
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  338 	OLED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  339         OLED_DLY_ms(50);
        MOVS     R0,#+50
        BL       OLED_DLY_ms
//  340 	OLED_D0(1);		
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  341 	OLED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  342         OLED_DLY_ms(50);
        MOVS     R0,#+50
        BL       OLED_DLY_ms
//  343 	OLED_RST(1);
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.W    R0,??DataTable6  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  344 	Set_Display_On_Off(0x00);	      // Display Off (0x00/0x01)
        MOVS     R0,#+0
        BL       Set_Display_On_Off
//  345 	Set_Display_Clock(0x80);	      // Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       Set_Display_Clock
//  346 	Set_Multiplex_Ratio(0x3F);	      // 1/64 Duty (0x0F~0x3F)
        MOVS     R0,#+63
        BL       Set_Multiplex_Ratio
//  347 	Set_Display_Offset(0x00);	      // Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+0
        BL       Set_Display_Offset
//  348 	SetStartLine(0x00);		      // Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+0
        BL       SetStartLine
//  349 	Set_Charge_Pump(0x04);		      // Enable Embedded DC/DC Converter (0x00/0x04)
        MOVS     R0,#+4
        BL       Set_Charge_Pump
//  350 	SetAddressingMode(0x02);	      // Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+2
        BL       SetAddressingMode
//  351 	Set_Segment_Remap(0x01);	      // Set SEG/Column Mapping     0x00左右反置 0x01正常
        MOVS     R0,#+1
        BL       Set_Segment_Remap
//  352 	Set_Common_Remap(0x08);	              // Set COM/Row Scan Direction 0x00上下反置 0x08正常
        MOVS     R0,#+8
        BL       Set_Common_Remap
//  353 	Set_Common_Config(0x10);	      // Set Sequential Configuration (0x00/0x10)
        MOVS     R0,#+16
        BL       Set_Common_Config
//  354 	SetContrastControl(0xCF);             // Set SEG Output Current
        MOVS     R0,#+207
        BL       SetContrastControl
//  355 	Set_Precharge_Period(0xF1);	      // Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       Set_Precharge_Period
//  356 	Set_VCOMH(0x40);		      // Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       Set_VCOMH
//  357 	Set_Entire_Display(0x00);	      // Disable Entire Display On (0x00/0x01)
        MOVS     R0,#+0
        BL       Set_Entire_Display
//  358 	Set_Inverse_Display(0x00);	      // Disable Inverse Display On (0x00/0x01)  
        MOVS     R0,#+0
        BL       Set_Inverse_Display
//  359 	Set_Display_On_Off(0x01);	      // Display On (0x00/0x01)
        MOVS     R0,#+1
        BL       Set_Display_On_Off
//  360 	OLED_Fill(0x00);                      //初始清屏
        MOVS     R0,#+0
        BL       OLED_Fill
//  361 	OLED_Set_Pos(0,0); 	
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Set_Pos
//  362 } 
        POP      {R0,PC}          ;; return
//  363 //显示一个6x8标准ASCII字符

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  364 void OLED_P6x8Char(unsigned char ch)
//  365 {
OLED_P6x8Char:
        PUSH     {R4-R6,LR}
//  366 	 unsigned char c=0,i=0,rs=0;       
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
//  367 	c =ch-32;
        SUBS     R4,R0,#+32
//  368          if(reverse&&c) rs=1;
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??OLED_P6x8Char_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??OLED_P6x8Char_0
        MOVS     R6,#+1
//  369 	for(i=0;i<6;i++)
??OLED_P6x8Char_0:
        MOVS     R5,#+0
        B.N      ??OLED_P6x8Char_1
//  370 	{     
//  371               OLED_WrDat(F6x8[c][i],rs);  
??OLED_P6x8Char_2:
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable6_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+6
        MLA      R0,R2,R4,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R0]
        BL       OLED_WrDat
//  372 	}
        ADDS     R5,R5,#+1
??OLED_P6x8Char_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BLT.N    ??OLED_P6x8Char_2
//  373 }
        POP      {R4-R6,PC}       ;; return
//  374 //功能描述：写入一组6x8标准ASCII字符串 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  375 void OLED_P6x8Str(unsigned char x,unsigned char y,char ch[])
//  376 {
OLED_P6x8Str:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  377 	unsigned char c=0,i=0,j=0,rs=0;      
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R7,#+0
        MOVS     R10,#+0
        B.N      ??OLED_P6x8Str_0
//  378 	while (ch[j]!='\0')
//  379 	{    
//  380 		c =ch[j]-32;            
//  381                 if(reverse&&c) rs=1;  //是否反转显示
//  382                 else rs=0;               
//  383 		if(x>126)
//  384 		{
//  385 			x=0;
//  386 			y++;
//  387 		}
//  388 		OLED_Set_Pos(x,y);    
//  389 		for(i=0;i<6;i++)
//  390 		{     
//  391                   OLED_WrDat(F6x8[c][i],rs);
??OLED_P6x8Str_1:
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable6_2
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R2,#+6
        MLA      R0,R2,R8,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R0]
        BL       OLED_WrDat
//  392 		}
        ADDS     R9,R9,#+1
??OLED_P6x8Str_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+6
        BLT.N    ??OLED_P6x8Str_1
//  393 		x+=6;
        ADDS     R4,R4,#+6
//  394 		j++;
        ADDS     R7,R7,#+1
??OLED_P6x8Str_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        CMP      R0,#+0
        BEQ.N    ??OLED_P6x8Str_3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        SUBS     R8,R0,#+32
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??OLED_P6x8Str_4
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??OLED_P6x8Str_4
        MOVS     R10,#+1
        B.N      ??OLED_P6x8Str_5
??OLED_P6x8Str_4:
        MOVS     R10,#+0
??OLED_P6x8Str_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??OLED_P6x8Str_6
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??OLED_P6x8Str_6:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R9,#+0
        B.N      ??OLED_P6x8Str_2
//  395 	}
//  396 }
??OLED_P6x8Str_3:
        POP      {R4-R10,PC}      ;; return
//  397 //将一个char型数转换成3位数进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  398 void OLED_PrintValueC(unsigned char x, unsigned char y, int data)
//  399 {
OLED_PrintValueC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R2
//  400         OLED_Set_Pos(x,y); 
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
//  401 	unsigned char i,j,k;
//  402 	if(data<0)
        CMP      R4,#+0
        BPL.N    ??OLED_PrintValueC_0
//  403 	{
//  404 		OLED_P6x8Char('-');
        MOVS     R0,#+45
        BL       OLED_P6x8Char
//  405 		data = - data;	
        RSBS     R4,R4,#+0
        B.N      ??OLED_PrintValueC_1
//  406 	}
//  407 	else
//  408 	{
//  409 		OLED_P6x8Char('+');
??OLED_PrintValueC_0:
        MOVS     R0,#+43
        BL       OLED_P6x8Char
//  410 	}
//  411 	i = data/100;
??OLED_PrintValueC_1:
        MOVS     R0,#+100
        SDIV     R0,R4,R0
//  412 	j = (data%100)/10;
        MOVS     R1,#+100
        SDIV     R2,R4,R1
        MLS      R1,R1,R2,R4
        MOVS     R2,#+10
        SDIV     R5,R1,R2
//  413 	k = data%10;
        MOVS     R1,#+10
        SDIV     R2,R4,R1
        MLS      R4,R1,R2,R4
//  414 	OLED_P6x8Char(i+48);
        ADDS     R0,R0,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  415 	OLED_P6x8Char(j+48);
        ADDS     R0,R5,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  416 	OLED_P6x8Char(k+48);		
        ADDS     R0,R4,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  417 }
        POP      {R0,R4,R5,PC}    ;; return
//  418 //功能描述：将一个int型数转换成5位数进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  419 void OLED_PrintValueI(unsigned char x, unsigned char y, int data)
//  420 {       
OLED_PrintValueI:
        PUSH     {R4-R10,LR}
        MOVS     R4,R2
//  421         OLED_Set_Pos(x,y); 
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
//  422 	unsigned char i,j,k,l,m,fn=0;  
        MOVS     R5,#+0
//  423 
//  424 	l  = data/10000;
        MOVW     R0,#+10000
        SDIV     R6,R4,R0
//  425 	m= (data%10000)/1000;
        MOVW     R0,#+10000
        SDIV     R1,R4,R0
        MLS      R0,R0,R1,R4
        MOV      R1,#+1000
        SDIV     R7,R0,R1
//  426 	i = (data%1000)/100;
        MOV      R0,#+1000
        SDIV     R1,R4,R0
        MLS      R0,R0,R1,R4
        MOVS     R1,#+100
        SDIV     R8,R0,R1
//  427 	j = (data%100)/10;
        MOVS     R0,#+100
        SDIV     R1,R4,R0
        MLS      R0,R0,R1,R4
        MOVS     R1,#+10
        SDIV     R9,R0,R1
//  428 	k = data%10;
        MOVS     R0,#+10
        SDIV     R1,R4,R0
        MLS      R10,R0,R1,R4
//  429 	if(data < 0)
        CMP      R4,#+0
        BPL.N    ??OLED_PrintValueI_0
//  430 	{
//  431 		OLED_P6x8Char('-');
        MOVS     R0,#+45
        BL       OLED_P6x8Char
//  432 		data = - data;	
        RSBS     R4,R4,#+0
//  433 	}
//  434         if(l)
??OLED_PrintValueI_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??OLED_PrintValueI_1
//  435         {
//  436           OLED_P6x8Char(l+48);
        ADDS     R0,R6,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  437           fn=1;
        MOVS     R5,#+1
//  438         }
//  439 	if(m||fn)
??OLED_PrintValueI_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??OLED_PrintValueI_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??OLED_PrintValueI_3
//  440         {
//  441           OLED_P6x8Char(m+48);
??OLED_PrintValueI_2:
        ADDS     R0,R7,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  442           fn=1;
        MOVS     R5,#+1
//  443         }
//  444 	if(i||fn)
??OLED_PrintValueI_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??OLED_PrintValueI_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??OLED_PrintValueI_5
//  445         {
//  446           OLED_P6x8Char(i+48);
??OLED_PrintValueI_4:
        ADDS     R0,R8,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  447           fn=1;
        MOVS     R5,#+1
//  448         }
//  449 	if(j||fn)
??OLED_PrintValueI_5:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??OLED_PrintValueI_6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??OLED_PrintValueI_7
//  450           OLED_P6x8Char(j+48);
??OLED_PrintValueI_6:
        ADDS     R0,R9,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  451 	OLED_P6x8Char(k+48);	
??OLED_PrintValueI_7:
        ADDS     R0,R10,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  452 }
        POP      {R4-R10,PC}      ;; return
//  453 //显示unsigned int型

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  454  void OLED_PrintValueFP(unsigned int data, unsigned char num)
//  455  {     unsigned char m,i,j,k;   	
OLED_PrintValueFP:
        PUSH     {R3-R7,LR}
        MOVS     R5,R0
        MOVS     R4,R1
//  456  	OLED_P6x8Char('.');
        MOVS     R0,#+46
        BL       OLED_P6x8Char
//  457         
//  458 	m= data/1000;
        MOV      R0,#+1000
        UDIV     R0,R5,R0
//  459 	i = (data%1000)/100;
        MOV      R1,#+1000
        UDIV     R2,R5,R1
        MLS      R1,R1,R2,R5
        MOVS     R2,#+100
        UDIV     R6,R1,R2
//  460 	j = (data%100)/10;
        MOVS     R1,#+100
        UDIV     R2,R5,R1
        MLS      R1,R1,R2,R5
        MOVS     R2,#+10
        UDIV     R7,R1,R2
//  461 	k = data%10;
        MOVS     R1,#+10
        UDIV     R2,R5,R1
        MLS      R5,R1,R2,R5
//  462 	switch(num)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??OLED_PrintValueFP_0
        BCC.N    ??OLED_PrintValueFP_1
        CMP      R4,#+3
        BEQ.N    ??OLED_PrintValueFP_2
        BCC.N    ??OLED_PrintValueFP_3
        CMP      R4,#+4
        BEQ.N    ??OLED_PrintValueFP_4
        B.N      ??OLED_PrintValueFP_1
//  463 	{
//  464 
//  465 		case 1:  	OLED_P6x8Char(k+48);
??OLED_PrintValueFP_0:
        ADDS     R0,R5,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  466 				break;
        B.N      ??OLED_PrintValueFP_1
//  467 		case 2:  	OLED_P6x8Char(j+48);
??OLED_PrintValueFP_3:
        ADDS     R0,R7,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  468 				OLED_P6x8Char(k+48);
        ADDS     R0,R5,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  469 				break;
        B.N      ??OLED_PrintValueFP_1
//  470 		case 3:	OLED_P6x8Char(i+48);
??OLED_PrintValueFP_2:
        ADDS     R0,R6,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  471 				OLED_P6x8Char(j+48);
        ADDS     R0,R7,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  472 				OLED_P6x8Char(k+48);
        ADDS     R0,R5,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  473 				break;
        B.N      ??OLED_PrintValueFP_1
//  474 		case 4: 	OLED_P6x8Char(m+48);
??OLED_PrintValueFP_4:
        ADDS     R0,R0,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  475 				OLED_P6x8Char(i+48);
        ADDS     R0,R6,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  476 				OLED_P6x8Char(j+48);
        ADDS     R0,R7,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  477 				OLED_P6x8Char(k+48);
        ADDS     R0,R5,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  478 				break;	
//  479 	}
//  480         OLED_P6x8Char(' ');     //清空后一位
??OLED_PrintValueFP_1:
        MOVS     R0,#+32
        BL       OLED_P6x8Char
//  481  }
        POP      {R0,R4-R7,PC}    ;; return
//  482 //功能描述：将一个float型数转换成2位整数部分带4位小数和符号的数据并进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  483  void OLED_PrintValueF(unsigned char x, unsigned char y, float data, unsigned char num)
//  484  {
OLED_PrintValueF:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R9,R2
        MOVS     R6,R3
//  485  	unsigned char l,m,i,j,k;  //wan
//  486  	unsigned char Integer_Len = 6; //整数位数         
        MOVS     R8,#+6
//  487         
//  488         if(data>0)       
        MOV      R0,R9
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??OLED_PrintValueF_0
//  489         data=data+0.00001;
        MOV      R0,R9
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable6_3  ;; 0x88e368f1
        LDR.N    R3,??DataTable6_4  ;; 0x3ee4f8b5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOV      R9,R0
//  490   	int Integer_Part = (int)data; //整数部分
??OLED_PrintValueF_0:
        MOV      R0,R9
        BL       __aeabi_f2iz
        MOV      R8,R0
//  491  	long int Float_Part = (long int)((data - (int)data)*100000); //取小数位后5位
        MOV      R0,R9
        BL       __aeabi_f2iz
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable6_5  ;; 0x47c35000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R7,R0
//  492         OLED_Set_Pos(x,y); 
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
//  493  	//整数部分显示
//  494          
//  495      
//  496         
//  497         if(data<-0.00001)
        MOV      R0,R9
        LDR.N    R1,??DataTable6_6  ;; 0xb727c5ac
        BL       __aeabi_cfcmple
        BCS.N    ??OLED_PrintValueF_1
//  498         OLED_P6x8Char('-'); 
        MOVS     R0,#+45
        BL       OLED_P6x8Char
//  499 
//  500 	if(Integer_Part < 0)Integer_Part = - Integer_Part;  //去掉整数部分负号
??OLED_PrintValueF_1:
        CMP      R8,#+0
        BPL.N    ??OLED_PrintValueF_2
        RSBS     R8,R8,#+0
//  501  	l  = Integer_Part/10000;
??OLED_PrintValueF_2:
        MOVW     R0,#+10000
        SDIV     R0,R8,R0
//  502 	m= (Integer_Part%10000)/1000;
        MOVW     R1,#+10000
        SDIV     R2,R8,R1
        MLS      R1,R1,R2,R8
        MOV      R2,#+1000
        SDIV     R4,R1,R2
//  503 	i = (Integer_Part%1000)/100;
        MOV      R1,#+1000
        SDIV     R2,R8,R1
        MLS      R1,R1,R2,R8
        MOVS     R2,#+100
        SDIV     R5,R1,R2
//  504 	j = (Integer_Part%100)/10;
        MOVS     R1,#+100
        SDIV     R2,R8,R1
        MLS      R1,R1,R2,R8
        MOVS     R2,#+10
        SDIV     R9,R1,R2
//  505 	k = Integer_Part%10;
        MOVS     R1,#+10
        SDIV     R2,R8,R1
        MLS      R10,R1,R2,R8
//  506         
//  507         
//  508         
//  509         
//  510  	if (l != 0)  //五位
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_PrintValueF_3
//  511  	{
//  512                 Integer_Len = 5;
        MOVS     R8,#+5
//  513  		OLED_P6x8Char(l+48);
        ADDS     R0,R0,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  514  		OLED_P6x8Char(m+48);
        ADDS     R0,R4,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  515 		OLED_P6x8Char(i+48);
        ADDS     R0,R5,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  516 		OLED_P6x8Char(j+48);
        ADDS     R0,R9,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  517 		OLED_P6x8Char(k+48);
        ADDS     R0,R10,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
        B.N      ??OLED_PrintValueF_4
//  518  	}
//  519  	else if(m != 0) //四位
??OLED_PrintValueF_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??OLED_PrintValueF_5
//  520  	{
//  521  		Integer_Len = 4;
        MOVS     R8,#+4
//  522  		OLED_P6x8Char(m+48);
        ADDS     R0,R4,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  523  		OLED_P6x8Char(i+48);
        ADDS     R0,R5,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  524 		OLED_P6x8Char(j+48);
        ADDS     R0,R9,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  525 		OLED_P6x8Char(k+48);
        ADDS     R0,R10,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
        B.N      ??OLED_PrintValueF_4
//  526  	}
//  527   	else if(i != 0) //三位
??OLED_PrintValueF_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??OLED_PrintValueF_6
//  528   	{
//  529   		Integer_Len = 3;
        MOVS     R8,#+3
//  530   	 	OLED_P6x8Char(i+48);
        ADDS     R0,R5,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  531  		OLED_P6x8Char(j+48);
        ADDS     R0,R9,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  532 		OLED_P6x8Char(k+48);
        ADDS     R0,R10,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
        B.N      ??OLED_PrintValueF_4
//  533   	}
//  534   	else if(j != 0) //两位
??OLED_PrintValueF_6:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??OLED_PrintValueF_7
//  535   	{
//  536     		Integer_Len = 2;	
        MOVS     R8,#+2
//  537   		OLED_P6x8Char(j+48);
        ADDS     R0,R9,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  538  		OLED_P6x8Char(k+48);
        ADDS     R0,R10,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
        B.N      ??OLED_PrintValueF_4
//  539   	}
//  540 	else 	
//  541 	{
//  542 		Integer_Len = 1;
??OLED_PrintValueF_7:
        MOVS     R8,#+1
//  543 		OLED_P6x8Char(k+48);
        ADDS     R0,R10,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Char
//  544 	}	
//  545         if(Float_Part < 0)Float_Part = -Float_Part;
??OLED_PrintValueF_4:
        CMP      R7,#+0
        BPL.N    ??OLED_PrintValueF_8
        RSBS     R7,R7,#+0
//  546 	switch(num-Integer_Len)
??OLED_PrintValueF_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        SUBS     R0,R6,R8
        CMP      R0,#+0
        BEQ.N    ??OLED_PrintValueF_9
        CMP      R0,#+2
        BEQ.N    ??OLED_PrintValueF_10
        BCC.N    ??OLED_PrintValueF_11
        CMP      R0,#+4
        BEQ.N    ??OLED_PrintValueF_12
        BCC.N    ??OLED_PrintValueF_13
        B.N      ??OLED_PrintValueF_14
//  547 	{
//  548 		case 0:   OLED_P6x8Char(' '); break;
??OLED_PrintValueF_9:
        MOVS     R0,#+32
        BL       OLED_P6x8Char
        B.N      ??OLED_PrintValueF_14
//  549 		case 1:  OLED_PrintValueFP((unsigned int)(Float_Part /10000),num-Integer_Len);break;
??OLED_PrintValueF_11:
        SUBS     R1,R6,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVW     R0,#+10000
        SDIV     R0,R7,R0
        BL       OLED_PrintValueFP
        B.N      ??OLED_PrintValueF_14
//  550 		case 2:  OLED_PrintValueFP((unsigned int)(Float_Part /1000),num-Integer_Len);break;
??OLED_PrintValueF_10:
        SUBS     R1,R6,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,#+1000
        SDIV     R0,R7,R0
        BL       OLED_PrintValueFP
        B.N      ??OLED_PrintValueF_14
//  551 		case 3:  OLED_PrintValueFP((unsigned int)(Float_Part /100),num-Integer_Len);break;
??OLED_PrintValueF_13:
        SUBS     R1,R6,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+100
        SDIV     R0,R7,R0
        BL       OLED_PrintValueFP
        B.N      ??OLED_PrintValueF_14
//  552 		case 4:  OLED_PrintValueFP((unsigned int)(Float_Part/10),num-Integer_Len);break;					
??OLED_PrintValueF_12:
        SUBS     R1,R6,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+10
        SDIV     R0,R7,R0
        BL       OLED_PrintValueFP
//  553 	}
//  554  }
??OLED_PrintValueF_14:
        POP      {R4-R10,PC}      ;; return
//  555 
//  556 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  557  void showimage(unsigned char *image)
//  558  {
showimage:
        PUSH     {R4-R6,LR}
//  559 	 unsigned int I=0, J=0,k=0;
        MOVS     R5,#+0
        MOVS     R4,#+0
        MOVS     R1,#+0
//  560 	static unsigned char l[140];
//  561 	 for ( k = 1; k < 127;k++ )
        MOVS     R1,#+1
        B.N      ??showimage_0
//  562 	 {
//  563 		 l[k] = image[k];
??showimage_1:
        LDRB     R2,[R1, R0]
        LDR.N    R3,??DataTable6_7
        STRB     R2,[R1, R3]
//  564 	 }
        ADDS     R1,R1,#+1
??showimage_0:
        CMP      R1,#+127
        BCC.N    ??showimage_1
//  565 	 for (J = 0; J < 8; J++)
        MOVS     R4,#+0
        B.N      ??showimage_2
??showimage_3:
        ADDS     R4,R4,#+1
??showimage_2:
        CMP      R4,#+8
        BCS.N    ??showimage_4
//  566 	 {
//  567 		 OLED_WrCmd(0xb0 + 7 - J);
        RSBS     R0,R4,#+183
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  568 		 OLED_WrCmd(0x00);
        MOVS     R0,#+0
        BL       OLED_WrCmd
//  569 		 OLED_WrCmd(0x10);
        MOVS     R0,#+16
        BL       OLED_WrCmd
//  570 		 for (I = 1; I < 126; I++)
        MOVS     R5,#+1
        B.N      ??showimage_5
//  571 		 {
//  572 			 if ( (l[I] / 32) == J )
//  573 				 OLED_WrDat((1 << (7 - ((l[I] % 32) / 4))),0);
//  574 			 else OLED_WrDat(0x00,0);
??showimage_6:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_WrDat
??showimage_7:
        ADDS     R5,R5,#+1
??showimage_5:
        CMP      R5,#+126
        BCS.N    ??showimage_3
        LDR.N    R0,??DataTable6_7
        LDRB     R0,[R5, R0]
        MOVS     R1,#+32
        SDIV     R0,R0,R1
        CMP      R0,R4
        BNE.N    ??showimage_6
        MOVS     R1,#+0
        MOVS     R0,#+1
        LDR.N    R2,??DataTable6_7
        LDRB     R2,[R5, R2]
        MOVS     R3,#+32
        SDIV     R6,R2,R3
        MLS      R6,R6,R3,R2
        MOVS     R2,#+4
        SDIV     R2,R6,R2
        RSBS     R2,R2,#+7
        LSLS     R0,R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrDat
        B.N      ??showimage_7
//  575 		 }
//  576 	 }
//  577  }
??showimage_4:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     reverse

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x88e368f1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x3ee4f8b5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x47c35000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0xb727c5ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     ??l

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??l:
        DS8 140

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
//   141 bytes in section .bss
//   552 bytes in section .rodata
// 2 340 bytes in section .text
// 
// 2 340 bytes of CODE  memory
//   552 bytes of CONST memory
//   141 bytes of DATA  memory
//
//Errors: none
//Warnings: none
