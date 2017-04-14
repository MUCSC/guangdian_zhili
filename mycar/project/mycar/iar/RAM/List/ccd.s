///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       15/Jul/2016  17:17:53
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\ccd.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\ccd.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\ccd.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CCD_Draw_Buff
        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Get
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN Left
        EXTERN Leftlastfind
        EXTERN Right
        EXTERN Rightlastfind
        EXTERN __aeabi_d2f
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN adc_init_struct
        EXTERN gpio_init_struct

        PUBLIC Brightness
        PUBLIC CCD_Buff
        PUBLIC CCD_Capture
        PUBLIC CCD_Normalization
        PUBLIC CCD_Offset
        PUBLIC Max_Value
        PUBLIC ccd_ADC_init
        PUBLIC ccd_GPIO_init
        PUBLIC ccd_init
        PUBLIC delay200ns

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\app\ccd.c
//    1 #include "ccd.h"
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 uint16 CCD_Buff[128] = { 0 };
CCD_Buff:
        DS8 256

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    5 uint8  CCD_Offset=200;           //暗电压大小    单片机12位AD白色赛道亮度值在200-1200左右
CCD_Offset:
        DATA
        DC8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    6 uint16 Max_Value=0,Brightness;
Max_Value:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Brightness:
        DS8 2
//    7 
//    8 
//    9 /****
//   10 **初始化CCD服务
//   11 ****/
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void ccd_init(void)
//   14 {
ccd_init:
        PUSH     {R7,LR}
//   15   ccd_GPIO_init();
        BL       ccd_GPIO_init
//   16   ccd_ADC_init();
        BL       ccd_ADC_init
//   17 }
        POP      {R0,PC}          ;; return
//   18 
//   19 
//   20 
//   21 /***
//   22 *初始化CCD数据线和时钟线的GPIO 
//   23 ***/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void ccd_GPIO_init(void)
//   25 {
ccd_GPIO_init:
        PUSH     {R7,LR}
//   26    /*
//   27   gpio_init_struct.GPIO_PTx = PTB;
//   28   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
//   29   gpio_init_struct.GPIO_Output = OUTPUT_H;
//   30   gpio_init_struct.GPIO_Pins = GPIO_Pin7 | GPIO_Pin8;
//   31   LPLD_GPIO_Init(gpio_init_struct); //SI和CLK
//   32   */
//   33   
//   34  
//   35   gpio_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//   36   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+12]
//   37   gpio_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+13]
//   38   gpio_init_struct.GPIO_Pins = GPIO_Pin16 | GPIO_Pin17;
        MOVS     R0,#+196608
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+4]
//   39   LPLD_GPIO_Init(gpio_init_struct); //SI和CLK
        LDR.N    R1,??DataTable3_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   40 }
        POP      {R0,PC}          ;; return
//   41 
//   42 
//   43 /***
//   44 *初始化ADC，精度：单端12位
//   45 ***/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void ccd_ADC_init(void)
//   47 {
ccd_ADC_init:
        PUSH     {R7,LR}
//   48   adc_init_struct.ADC_Adcx = ADC0;
        LDR.N    R0,??DataTable3_2  ;; 0x4003b000
        LDR.N    R1,??DataTable3_3
        STR      R0,[R1, #+0]
//   49   adc_init_struct.ADC_BitMode = SE_12BIT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_3
        STRB     R0,[R1, #+5]
//   50   adc_init_struct.ADC_CalEnable = TRUE; //使能自动校准
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_3
        STRB     R0,[R1, #+11]
//   51   LPLD_ADC_Init(adc_init_struct); 
        LDR.N    R1,??DataTable3_3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   52   
//   53   LPLD_ADC_Chn_Enable(ADC0, AD10);
        MOVS     R1,#+10
        LDR.N    R0,??DataTable3_2  ;; 0x4003b000
        BL       LPLD_ADC_Chn_Enable
//   54 }
        POP      {R0,PC}          ;; return
//   55 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   56 void delay200ns(void)
//   57 {
//   58     asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");//共10个 一个asm("nop")是20ns;主频50MHz
delay200ns:
        nop
        nop
        nop
        nop
        nop
//   59     asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
//   60 }
        BX       LR               ;; return
//   61 /***
//   62 *CCD采集程序
//   63 ***/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 void CCD_Capture(void)
//   65 {
CCD_Capture:
        PUSH     {R4,LR}
//   66     unsigned char i;
//   67     
//   68     SI_SetVal();
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   69     delay200ns();
        BL       delay200ns
//   70     CLK_SetVal();
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   71     delay200ns();
        BL       delay200ns
//   72     SI_ClrVal();
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   73     delay200ns();  
        BL       delay200ns
//   74     //采集第一个点
//   75     CCD_Buff[0] = LPLD_ADC_Get(ADC0, AD10);
        MOVS     R1,#+10
        LDR.N    R0,??DataTable3_2  ;; 0x4003b000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable3_4
        STRH     R0,[R1, #+0]
//   76     Max_Value=CCD_Buff[0];
        LDR.N    R0,??DataTable3_4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_5
        STRH     R0,[R1, #+0]
//   77     CLK_ClrVal();
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   78     //采集第2-128
//   79     for (i = 1; i < 128; i++)
        MOVS     R4,#+1
        B.N      ??CCD_Capture_0
//   80     {
//   81         delay200ns();      
//   82         CLK_SetVal();
//   83         delay200ns();
//   84         
//   85     
//   86         CCD_Buff[i] = LPLD_ADC_Get(ADC0, AD10);
//   87         if((Right-Left>20)&&Leftlastfind&&Rightlastfind)             //上次左右边线都找了那么应该在左右5个点搜索最高亮度，把其他亮度抑制掉
//   88         {
//   89          if((i>Left)&&(i<Right))      if(Max_Value<CCD_Buff[i]) Max_Value=CCD_Buff[i]; 
//   90         } 
//   91         else
//   92         {
//   93           if(Max_Value<CCD_Buff[i])  Max_Value=CCD_Buff[i];
??CCD_Capture_1:
        LDR.N    R0,??DataTable3_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R1,[R1, R4, LSL #+1]
        CMP      R0,R1
        BCS.N    ??CCD_Capture_2
        LDR.N    R0,??DataTable3_4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R0,[R0, R4, LSL #+1]
        LDR.N    R1,??DataTable3_5
        STRH     R0,[R1, #+0]
//   94         }
//   95         CLK_ClrVal();
??CCD_Capture_2:
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
        ADDS     R4,R4,#+1
??CCD_Capture_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BGE.N    ??CCD_Capture_3
        BL       delay200ns
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
        BL       delay200ns
        MOVS     R1,#+10
        LDR.N    R0,??DataTable3_2  ;; 0x4003b000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable3_4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRH     R0,[R1, R4, LSL #+1]
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_7
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+21
        BLT.N    ??CCD_Capture_1
        LDR.N    R0,??DataTable3_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CCD_Capture_1
        LDR.N    R0,??DataTable3_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CCD_Capture_1
        LDR.N    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BGE.N    ??CCD_Capture_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BGE.N    ??CCD_Capture_2
        LDR.N    R0,??DataTable3_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R1,[R1, R4, LSL #+1]
        CMP      R0,R1
        BCS.N    ??CCD_Capture_2
        LDR.N    R0,??DataTable3_4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R0,[R0, R4, LSL #+1]
        LDR.N    R1,??DataTable3_5
        STRH     R0,[R1, #+0]
        B.N      ??CCD_Capture_2
//   96     }
//   97     delay200ns();
??CCD_Capture_3:
        BL       delay200ns
//   98     CLK_SetVal();
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   99     delay200ns();
        BL       delay200ns
//  100     CLK_ClrVal();
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//  101 }
        POP      {R4,PC}          ;; return
//  102 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 void CCD_Normalization(void)
//  104 {
CCD_Normalization:
        PUSH     {R3-R5,LR}
//  105   uint8 i=0;
        MOVS     R5,#+0
//  106   float ratio;//比率 
//  107   int temp;
//  108   if(Max_Value>CCD_Offset)
        LDR.N    R0,??DataTable3_10
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_5
        LDRH     R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCS.N    ??CCD_Normalization_0
//  109   ratio = 127.0/(Max_Value-CCD_Offset);
        LDR.N    R0,??DataTable3_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_10
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_11  ;; 0x405fc000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R4,R0
        B.N      ??CCD_Normalization_1
//  110   else ratio=0;
??CCD_Normalization_0:
        MOVS     R4,#+0
//  111   for(i=0;i<128;i++)
??CCD_Normalization_1:
        MOVS     R5,#+0
        B.N      ??CCD_Normalization_2
//  112   {
//  113     if(CCD_Buff[i]>CCD_Offset)
//  114     temp=CCD_Buff[i]-CCD_Offset;
//  115     else temp=0;
??CCD_Normalization_3:
        MOVS     R0,#+0
//  116     CCD_Buff[i] = (int)(temp*ratio);
??CCD_Normalization_4:
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable3_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R0,[R1, R5, LSL #+1]
//  117     if(CCD_Buff[i]>126) CCD_Buff[i]=126;
        LDR.N    R0,??DataTable3_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R0,[R0, R5, LSL #+1]
        CMP      R0,#+127
        BLT.N    ??CCD_Normalization_5
        MOVS     R0,#+126
        LDR.N    R1,??DataTable3_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R0,[R1, R5, LSL #+1]
//  118     CCD_Draw_Buff[i]=CCD_Buff[i];
??CCD_Normalization_5:
        LDR.N    R0,??DataTable3_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R0,[R0, R5, LSL #+1]
        LDR.N    R1,??DataTable3_12
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
        ADDS     R5,R5,#+1
??CCD_Normalization_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??CCD_Normalization_6
        LDR.N    R0,??DataTable3_10
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R1,[R1, R5, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCS.N    ??CCD_Normalization_3
        LDR.N    R0,??DataTable3_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R0,[R0, R5, LSL #+1]
        LDR.N    R1,??DataTable3_10
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        B.N      ??CCD_Normalization_4
//  119   }
//  120   CCD_Draw_Buff[130] = BYTE0(Max_Value);
??CCD_Normalization_6:
        LDR.N    R0,??DataTable3_5
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_12
        STRB     R0,[R1, #+130]
//  121   CCD_Draw_Buff[131] = BYTE1(Max_Value);  
        LDR.N    R0,??DataTable3_5
        LDRB     R0,[R0, #+1]
        LDR.N    R1,??DataTable3_12
        STRB     R0,[R1, #+131]
//  122   
//  123 
//  124 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     gpio_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     adc_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     CCD_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     Max_Value

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     Leftlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     Rightlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     CCD_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x405fc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     CCD_Draw_Buff

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  125 
// 
// 260 bytes in section .bss
//   1 byte  in section .data
// 632 bytes in section .text
// 
// 632 bytes of CODE memory
// 261 bytes of DATA memory
//
//Errors: none
//Warnings: none
