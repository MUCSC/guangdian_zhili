///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       13/Apr/2017  22:11:33
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\ccd.c
//    Command line =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\ccd.c
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
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\FLASH\List\ccd.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CCD_Draw_Buff
        EXTERN LPLD_ADC_Get
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

        PUBLIC Brightness
        PUBLIC CCD_Buff
        PUBLIC CCD_Capture
        PUBLIC CCD_Exposure
        PUBLIC CCD_Normalization
        PUBLIC CCD_Offset
        PUBLIC Max_Value
        PUBLIC delay200ns

// C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\app\ccd.c
//    1 #include "include.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    2 uint16 CCD_Buff[128]={0};
CCD_Buff:
        DS8 256

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    3 uint8  CCD_Offset;           //暗电压
CCD_Offset:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    4 uint16 Max_Value=0,Brightness;
Max_Value:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Brightness:
        DS8 2
//    5 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    6 void  delay200ns()
//    7 {
//    8     asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");//共25个 一个asm("nop")是8ns;
delay200ns:
        nop
        nop
        nop
        nop
        nop
//    9     asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
//   10 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   11 void CCD_Exposure()    //曝光 下一次图像捕获时刻与该函数执行的时刻与差值为曝光时间
//   12 {
CCD_Exposure:
        PUSH     {R4,LR}
//   13     SI_SetVal();        
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   14     delay200ns();
        BL       delay200ns
//   15     CLK_SetVal(); 
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   16     delay200ns();
        BL       delay200ns
//   17     SI_ClrVal();    
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   18     delay200ns();
        BL       delay200ns
//   19     CLK_ClrVal();    
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   20     for(uint8 i=0; i<129; i++)
        MOVS     R4,#+0
        B.N      ??CCD_Exposure_0
//   21     {
//   22         delay200ns();
??CCD_Exposure_1:
        BL       delay200ns
//   23         CLK_SetVal(); 
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   24         delay200ns();
        BL       delay200ns
//   25         CLK_ClrVal(); 
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   26     } 
        ADDS     R4,R4,#+1
??CCD_Exposure_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+129
        BLT.N    ??CCD_Exposure_1
//   27 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void CCD_Capture()
//   29 {
CCD_Capture:
        PUSH     {R4,LR}
//   30   uint8  i=0; 
        MOVS     R4,#+0
//   31   SI_SetVal();
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   32   delay200ns();
        BL       delay200ns
//   33   CLK_SetVal();  
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   34   delay200ns();
        BL       delay200ns
//   35   SI_ClrVal();
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   36   delay200ns();
        BL       delay200ns
//   37   //采集第一个点
//   38   CCD_Buff[0]=LPLD_ADC_Get(ADC1, AD15);
        MOVS     R1,#+15
        LDR.N    R0,??DataTable2_1  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable2_2
        STRH     R0,[R1, #+0]
//   39   Max_Value=CCD_Buff[0];
        LDR.N    R0,??DataTable2_2
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_3
        STRH     R0,[R1, #+0]
//   40   CLK_ClrVal();
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   41   //采集第2~128个点
//   42   for(i=1; i<128; i++)
        MOVS     R4,#+1
        B.N      ??CCD_Capture_0
//   43   {
//   44           delay200ns();
//   45           CLK_SetVal(); 
//   46           delay200ns();
//   47           CCD_Buff[i]=LPLD_ADC_Get(ADC1,AD15);
//   48   
//   49         if((Right-Left>20)&&Leftlastfind&&Rightlastfind)             //上次左右边线都找了那么应该在左右5个点搜索最高亮度，把其他亮度抑制掉
//   50        {
//   51          if((i>Left)&&(i<Right))      if(Max_Value<CCD_Buff[i]) Max_Value=CCD_Buff[i]; 
//   52        } 
//   53        else
//   54        {
//   55           if(Max_Value<CCD_Buff[i])  Max_Value=CCD_Buff[i];
??CCD_Capture_1:
        LDR.N    R0,??DataTable2_3
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R1,[R1, R4, LSL #+1]
        CMP      R0,R1
        BCS.N    ??CCD_Capture_2
        LDR.N    R0,??DataTable2_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R0,[R0, R4, LSL #+1]
        LDR.N    R1,??DataTable2_3
        STRH     R0,[R1, #+0]
//   56        }
//   57       CLK_ClrVal();     
??CCD_Capture_2:
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
        ADDS     R4,R4,#+1
??CCD_Capture_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BGE.N    ??CCD_Capture_3
        BL       delay200ns
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
        BL       delay200ns
        MOVS     R1,#+15
        LDR.N    R0,??DataTable2_1  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable2_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRH     R0,[R1, R4, LSL #+1]
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+21
        BLT.N    ??CCD_Capture_1
        LDR.N    R0,??DataTable2_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CCD_Capture_1
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CCD_Capture_1
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BGE.N    ??CCD_Capture_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BGE.N    ??CCD_Capture_2
        LDR.N    R0,??DataTable2_3
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R1,[R1, R4, LSL #+1]
        CMP      R0,R1
        BCS.N    ??CCD_Capture_2
        LDR.N    R0,??DataTable2_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R0,[R0, R4, LSL #+1]
        LDR.N    R1,??DataTable2_3
        STRH     R0,[R1, #+0]
        B.N      ??CCD_Capture_2
//   58    }
//   59   //发送第129个clk作为结束
//   60   delay200ns();
??CCD_Capture_3:
        BL       delay200ns
//   61   CLK_SetVal();
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   62   delay200ns();
        BL       delay200ns
//   63   CLK_ClrVal();
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   64 }
        POP      {R4,PC}          ;; return
//   65  //做归一化处理(将采样值限制在0-127)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 void CCD_Normalization()
//   67 {
CCD_Normalization:
        PUSH     {R3-R5,LR}
//   68   uint8 i=0;
        MOVS     R5,#+0
//   69   float ratio;
//   70   int temp;
//   71   if(Max_Value>CCD_Offset)
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_3
        LDRH     R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCS.N    ??CCD_Normalization_0
//   72   ratio=127.0/(Max_Value-CCD_Offset);
        LDR.N    R0,??DataTable2_3
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_9  ;; 0x405fc000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R4,R0
        B.N      ??CCD_Normalization_1
//   73   else  ratio=0;
??CCD_Normalization_0:
        MOVS     R4,#+0
//   74   for(i=0; i<128; i++)
??CCD_Normalization_1:
        MOVS     R5,#+0
        B.N      ??CCD_Normalization_2
//   75   {
//   76     if(CCD_Buff[i]>CCD_Offset)
//   77     temp=CCD_Buff[i]-CCD_Offset;
//   78     else temp=0;
??CCD_Normalization_3:
        MOVS     R0,#+0
//   79     CCD_Buff[i]=(int)(temp*ratio);
??CCD_Normalization_4:
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R0,[R1, R5, LSL #+1]
//   80     if(CCD_Buff[i]>126) CCD_Buff[i]=126;
        LDR.N    R0,??DataTable2_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R0,[R0, R5, LSL #+1]
        CMP      R0,#+127
        BLT.N    ??CCD_Normalization_5
        MOVS     R0,#+126
        LDR.N    R1,??DataTable2_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R0,[R1, R5, LSL #+1]
//   81     CCD_Draw_Buff[i]=CCD_Buff[i];
??CCD_Normalization_5:
        LDR.N    R0,??DataTable2_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R0,[R0, R5, LSL #+1]
        LDR.N    R1,??DataTable2_10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
        ADDS     R5,R5,#+1
??CCD_Normalization_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??CCD_Normalization_6
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R1,[R1, R5, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCS.N    ??CCD_Normalization_3
        LDR.N    R0,??DataTable2_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R0,[R0, R5, LSL #+1]
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        B.N      ??CCD_Normalization_4
//   82   }
//   83   CCD_Draw_Buff[130]=BYTE0(Max_Value);
??CCD_Normalization_6:
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_10
        STRB     R0,[R1, #+130]
//   84   CCD_Draw_Buff[131]=BYTE1(Max_Value); 
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+1]
        LDR.N    R1,??DataTable2_10
        STRB     R0,[R1, #+131]
//   85 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     CCD_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     Max_Value

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     Leftlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     Rightlastfind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     CCD_Offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x405fc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
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
// 
// 261 bytes in section .bss
// 614 bytes in section .text
// 
// 614 bytes of CODE memory
// 261 bytes of DATA memory
//
//Errors: none
//Warnings: none
