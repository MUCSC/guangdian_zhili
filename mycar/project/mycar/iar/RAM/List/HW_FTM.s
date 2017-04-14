///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       29/May/2016  22:30:44
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\lib\LPLD\HW\HW_FTM.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\lib\LPLD\HW\HW_FTM.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\HW_FTM.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy4
        EXTERN assert_failed
        EXTERN g_bus_clock

        PUBLIC FTM0_IRQHandler
        PUBLIC FTM1_IRQHandler
        PUBLIC FTM2_IRQHandler
        PUBLIC FTM_ISR
        PUBLIC LPLD_FTM_ClearCHnF
        PUBLIC LPLD_FTM_ClearCounter
        PUBLIC LPLD_FTM_ClearTOF
        PUBLIC LPLD_FTM_Deinit
        PUBLIC LPLD_FTM_DisableChn
        PUBLIC LPLD_FTM_DisableIrq
        PUBLIC LPLD_FTM_EnableIrq
        PUBLIC LPLD_FTM_GetChVal
        PUBLIC LPLD_FTM_GetClkDiv
        PUBLIC LPLD_FTM_GetCounter
        PUBLIC LPLD_FTM_IC_Enable
        PUBLIC LPLD_FTM_Init
        PUBLIC LPLD_FTM_IsCHnF
        PUBLIC LPLD_FTM_IsTOF
        PUBLIC LPLD_FTM_PWM_ChangeDuty
        PUBLIC LPLD_FTM_PWM_Enable
        PUBLIC LPLD_FTM_QD_Disable
        PUBLIC LPLD_FTM_QD_Enable

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\lib\LPLD\HW\HW_FTM.c
//    1 /**
//    2  * @file HW_FTM.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FTM�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable10  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable10_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_FTM.h"
//   24 
//   25 //�û��Զ����жϷ���������
//   26 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 FTM_ISR_CALLBACK FTM_ISR[3];
FTM_ISR:
        DS8 12
//   28 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   29 FTM_ISR_CALLBACK FTM_ISR[4];
//   30 #endif
//   31 
//   32 static uint8 LPLD_FTM_PWM_Init(FTM_InitTypeDef);
//   33 static uint8 LPLD_FTM_IC_Init(FTM_InitTypeDef);
//   34 static uint8 LPLD_FTM_QD_Init(FTM_InitTypeDef);
//   35 static uint8 LPLD_FTM_DEC_Init(FTM_InitTypeDef);
//   36 static uint8 LPLD_FTM_PinInit(FTM_Type *, FtmChnEnum_Type, PortPinsEnum_Type);
//   37 static uint8 LPLD_FTM_PinDeinit(FTM_Type *, FtmChnEnum_Type);
//   38 
//   39 
//   40 /*
//   41  * LPLD_FTM_Init
//   42  * FTMģ��ͨ�ó�ʼ�����ɳ�ʼ��ΪPWM�����벶���������롢˫�߲���ģʽ
//   43  *
//   44  * ����:
//   45  *    ftm_init_structure--FTM��ʼ���ṹ�壬
//   46  *                        ���嶨���FTM_InitTypeDef
//   47  *
//   48  * ���:
//   49  *    0--���ô���
//   50  *    1--���óɹ�
//   51  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 uint8 LPLD_FTM_Init(FTM_InitTypeDef ftm_init_structure)
//   53 {
LPLD_FTM_Init:
        PUSH     {R0-R3}
        PUSH     {R1-R5,LR}
//   54   uint8 result, i;
//   55   //�������
//   56   ASSERT( ftm_init_structure.FTM_Mode & 
//   57          (FTM_MODE_PWM|FTM_MODE_IC|FTM_MODE_QD|FTM_MODE_DEC));  //�ж�ģʽѡ��
        LDRB     R0,[SP, #+28]
        MOVS     R1,#+15
        TST      R0,R1
        BNE.N    ??LPLD_FTM_Init_0
        MOVS     R1,#+57
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   58   
//   59   // ʹ��FTMʱ��ģ��
//   60   if(ftm_init_structure.FTM_Ftmx == FTM0)
??LPLD_FTM_Init_0:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable10_3  ;; 0x40038000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Init_1
//   61   {
//   62     i=0; 
        MOVS     R5,#+0
//   63     SIM->SCGC6 |= SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   64   }
//   65   else if(ftm_init_structure.FTM_Ftmx == FTM1)
//   66   {
//   67     i=1;
//   68     SIM->SCGC6 |= SIM_SCGC6_FTM1_MASK;
//   69   }
//   70   else if(ftm_init_structure.FTM_Ftmx == FTM2)
//   71   {
//   72     i=2;
//   73     SIM->SCGC3 |= SIM_SCGC3_FTM2_MASK;
//   74   }
//   75 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   76   else if(ftm_init_structure.FTM_Ftmx == FTM3)
//   77   {
//   78     i=3;
//   79     SIM->SCGC3 |= SIM_SCGC3_FTM3_MASK;
//   80   }
//   81 #endif
//   82   else
//   83   {
//   84     return 0;
//   85   }
//   86   
//   87   if(ftm_init_structure.FTM_Mode & FTM_MODE_PWM)
??LPLD_FTM_Init_2:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+31
        BPL.N    ??LPLD_FTM_Init_3
//   88   {
//   89     result = LPLD_FTM_PWM_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_PWM_Init
        MOVS     R4,R0
        B.N      ??LPLD_FTM_Init_4
//   90   }
??LPLD_FTM_Init_1:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable10_5  ;; 0x40039000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Init_5
        MOVS     R5,#+1
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Init_2
??LPLD_FTM_Init_5:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable10_6  ;; 0x400b8000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Init_6
        MOVS     R5,#+2
        LDR.W    R0,??DataTable10_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Init_2
??LPLD_FTM_Init_6:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_Init_7
//   91   else if(ftm_init_structure.FTM_Mode & FTM_MODE_IC)
??LPLD_FTM_Init_3:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+30
        BPL.N    ??LPLD_FTM_Init_8
//   92   {
//   93     result = LPLD_FTM_IC_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_IC_Init
        MOVS     R4,R0
        B.N      ??LPLD_FTM_Init_4
//   94   }
//   95   else if(ftm_init_structure.FTM_Mode & FTM_MODE_QD)
??LPLD_FTM_Init_8:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+29
        BPL.N    ??LPLD_FTM_Init_9
//   96   {
//   97     result = LPLD_FTM_QD_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_QD_Init
        MOVS     R4,R0
        B.N      ??LPLD_FTM_Init_4
//   98   }
//   99   else if(ftm_init_structure.FTM_Mode & FTM_MODE_DEC)
??LPLD_FTM_Init_9:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+28
        BPL.N    ??LPLD_FTM_Init_4
//  100   {
//  101     result = LPLD_FTM_DEC_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_DEC_Init
        MOVS     R4,R0
//  102   }
//  103   
//  104   if(result == 1)
??LPLD_FTM_Init_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_FTM_Init_10
//  105   {    
//  106     //�ж��Ƿ�������ж�
//  107     if(ftm_init_structure.FTM_Isr!=NULL)
        LDR      R0,[SP, #+48]
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM_Init_10
//  108     {      
//  109       FTM_ISR[i] = ftm_init_structure.FTM_Isr;
        LDR      R0,[SP, #+48]
        LDR.W    R1,??DataTable10_8
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R1, R5, LSL #+2]
//  110       if(ftm_init_structure.FTM_ToiEnable == TRUE)
        LDRB     R0,[SP, #+44]
        CMP      R0,#+1
        BNE.N    ??LPLD_FTM_Init_10
//  111       {
//  112         ftm_init_structure.FTM_Ftmx->SC |= FTM_SC_TOIE_MASK;
        LDR      R0,[SP, #+24]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR      R1,[SP, #+24]
        STR      R0,[R1, #+0]
//  113       }
//  114     }
//  115   }
//  116   
//  117   return result;
??LPLD_FTM_Init_10:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_FTM_Init_7:
        POP      {R1-R5}
        LDR      PC,[SP], #+20    ;; return
//  118 }
//  119 
//  120 /*
//  121  * LPLD_FTM_Deinit
//  122  * FTMģ��ͨ�÷���ʼ��
//  123  *
//  124  * ����:
//  125  *    ftm_init_structure--FTM��ʼ���ṹ�壬
//  126  *                        ���嶨���FTM_InitTypeDef
//  127  *
//  128  * ���:
//  129  *    0--���ô���
//  130  *    1--���óɹ�
//  131  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 uint8 LPLD_FTM_Deinit(FTM_InitTypeDef ftm_init_structure)
//  133 {
LPLD_FTM_Deinit:
        PUSH     {R0-R3}
        PUSH     {R5-R7,LR}
//  134   if(ftm_init_structure.FTM_Ftmx == FTM0)
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable10_3  ;; 0x40038000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Deinit_0
//  135   {
//  136     SIM->SCGC6 &= ~SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  137   }
//  138   else if(ftm_init_structure.FTM_Ftmx == FTM1)
//  139   {
//  140     SIM->SCGC6 &= ~SIM_SCGC6_FTM1_MASK;
//  141   }
//  142   else if(ftm_init_structure.FTM_Ftmx == FTM2)
//  143   {
//  144     SIM->SCGC3 &= ~SIM_SCGC3_FTM2_MASK;
//  145   }
//  146 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  147   else if(ftm_init_structure.FTM_Ftmx == FTM3)
//  148   {
//  149     SIM->SCGC3 &= ~SIM_SCGC3_FTM3_MASK;
//  150   }
//  151 #endif
//  152   else
//  153   {
//  154     return 0;
//  155   }
//  156   
//  157   return LPLD_FTM_DisableIrq(ftm_init_structure);
??LPLD_FTM_Deinit_1:
        ADD      R1,SP,#+16
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_DisableIrq
??LPLD_FTM_Deinit_2:
        POP      {R1-R3}
        LDR      PC,[SP], #+20    ;; return
??LPLD_FTM_Deinit_0:
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable10_5  ;; 0x40039000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Deinit_3
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Deinit_1
??LPLD_FTM_Deinit_3:
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable10_6  ;; 0x400b8000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Deinit_4
        LDR.W    R0,??DataTable10_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Deinit_1
??LPLD_FTM_Deinit_4:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_Deinit_2
//  158 }
//  159 
//  160 /*
//  161  * LPLD_FTM_PWM_Enable
//  162  * FTMģ��PWMģʽ���ʹ�ܣ��������ͨ����ռ�ձȡ�ָ����Ӧ�����š����뷽ʽ
//  163  * 
//  164  * ����:
//  165  *    ftmx--FTMxģ���
//  166  *      |__FTM0          --FTM0
//  167  *      |__FTM1          --FTM1
//  168  *      |__FTM2          --FTM2
//  169  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  170  *      |__FTM3          --FTM3
//  171  *    chn--PWM���ͨ��
//  172  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  173  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2\FTM3)
//  174  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2\FTM3)
//  175  *      |__FTM_Ch2          --FTMxͨ��2(FTM0\FTM3)
//  176  *      |__FTM_Ch3          --FTMxͨ��3(FTM0\FTM3)
//  177  *      |__FTM_Ch4          --FTMxͨ��4(FTM0\FTM3)
//  178  *      |__FTM_Ch5          --FTMxͨ��5(FTM0\FTM3)
//  179  *      |__FTM_Ch6          --FTMxͨ��6(FTM0\FTM3)
//  180  *      |__FTM_Ch7          --FTMxͨ��7(FTM0\FTM3)
//  181  *    duty--PWM���ռ�ձ�
//  182  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  183  *    pin--FTMxͨ����Ӧ������
//  184  *      FTM0
//  185  *       FTM_Ch0-PTA3\PTC1
//  186  *       FTM_Ch1-PTA4\PTC2
//  187  *       FTM_Ch2-PTA5\PTC3
//  188  *       FTM_Ch3-PTA6\PTC4
//  189  *       FTM_Ch4-PTA7\PTD4
//  190  *       FTM_Ch5-PTA0\PTD5
//  191  *       FTM_Ch6-PTA1\PTD6
//  192  *       FTM_Ch7-PTA2\PTD7
//  193  *      FTM1
//  194  *       FTM_Ch0-PTA8\PTA12\PTB0
//  195  *       FTM_Ch1-PTA9\PTA13\PTB1
//  196  *      FTM2
//  197  *       FTM_Ch0-PTA10\PTB18
//  198  *       FTM_Ch1-PTA11\PTB19
//  199  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  200  *      FTM3
//  201  *       FTM_Ch0-PTE5\PTD0
//  202  *       FTM_Ch1-PTE6\PTD1
//  203  *       FTM_Ch2-PTE7\PTD2
//  204  *       FTM_Ch3-PTE8\PTD3
//  205  *       FTM_Ch4-PTE9\PTC8
//  206  *       FTM_Ch5-PTE10\PTC9
//  207  *       FTM_Ch6-PTE11\PTC10
//  208  *       FTM_Ch7-PTE12\PTC11
//  209  *    align--������뷽ʽ
//  210  *      |__ALIGN_LEFT    --�����
//  211  *      |__ALIGN_RIGHT   --�Ҷ���
//  212  *
//  213  * ���:
//  214  *    0--���ô���
//  215  *    1--���óɹ�
//  216  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 uint8 LPLD_FTM_PWM_Enable(FTM_Type *ftmx, FtmChnEnum_Type chn, uint32 duty, PortPinsEnum_Type pin, uint8 align)
//  218 {
LPLD_FTM_PWM_Enable:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  219   uint32 cv;
//  220   vuint32 mod;
//  221   
//  222   //�������
//  223   ASSERT( duty <= 10000 );                  //�ж�ռ�ձ�
        MOVW     R0,#+10001
        CMP      R6,R0
        BCC.N    ??LPLD_FTM_PWM_Enable_0
        MOVS     R1,#+223
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  224   
//  225   if(!LPLD_FTM_PinInit(ftmx, chn, pin))
??LPLD_FTM_PWM_Enable_0:
        MOVS     R2,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_FTM_PinInit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_PWM_Enable_1
//  226     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PWM_Enable_2
??LPLD_FTM_PWM_Enable_1:
        LDR      R0,[SP, #+24]
//  227   
//  228   //������Ҷ��룬100%-ռ�ձ�
//  229   if(align == ALIGN_RIGHT)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+36
        BNE.N    ??LPLD_FTM_PWM_Enable_3
//  230   {
//  231     duty = 10000 - duty;
        MOVW     R1,#+10000
        SUBS     R6,R1,R6
//  232   }
//  233   
//  234   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  235   mod = ftmx->MOD;
??LPLD_FTM_PWM_Enable_3:
        LDR      R1,[R4, #+8]
        STR      R1,[SP, #+0]
//  236   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R1,[SP, #+0]
        ADDS     R1,R1,#+1
        MUL      R1,R1,R6
        MOVW     R2,#+10000
        UDIV     R1,R1,R2
//  237   
//  238   // ����FTMͨ�����ƼĴ��� 
//  239   // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ����� ELSB:ELSA-10
//  240   // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� �Ҷ��� ELSB:ELSA-X1
//  241   ftmx->CONTROLS[chn].CnSC = align;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R2,R4,R5, LSL #+3
        STR      R0,[R2, #+12]
//  242   // ����FTMͨ��ֵ
//  243   ftmx->CONTROLS[chn].CnV  = cv;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        STR      R1,[R0, #+16]
//  244   
//  245   return 1;
        MOVS     R0,#+1
??LPLD_FTM_PWM_Enable_2:
        POP      {R1,R4-R7,PC}    ;; return
//  246 }
//  247 
//  248 /*
//  249  * LPLD_FTM_PWM_ChangeDuty
//  250  * ���FTMģ��PWMģʽָ��ͨ�������ռ�ձ�
//  251  *
//  252  * ����:
//  253  *    ftmx--FTMxģ���
//  254  *      |__FTM0          --FTM0
//  255  *      |__FTM1          --FTM1
//  256  *      |__FTM2          --FTM2
//  257  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  258  *      |__FTM3          --FTM3
//  259  *    chn--PWM���ͨ��
//  260  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  261  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2\FTM3)
//  262  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2\FTM3)
//  263  *      |__FTM_Ch2          --FTMxͨ��2(FTM0\FTM3)
//  264  *      |__FTM_Ch3          --FTMxͨ��3(FTM0\FTM3)
//  265  *      |__FTM_Ch4          --FTMxͨ��4(FTM0\FTM3)
//  266  *      |__FTM_Ch5          --FTMxͨ��5(FTM0\FTM3)
//  267  *      |__FTM_Ch6          --FTMxͨ��6(FTM0\FTM3)
//  268  *      |__FTM_Ch7          --FTMxͨ��7(FTM0\FTM3)
//  269  *    duty--PWM���ռ�ձ�
//  270  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  271  *
//  272  * ���:
//  273  *    0--���ô���
//  274  *    1--���óɹ�
//  275  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  276 uint8 LPLD_FTM_PWM_ChangeDuty(FTM_Type *ftmx, FtmChnEnum_Type chn, uint32 duty)
//  277 {
LPLD_FTM_PWM_ChangeDuty:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  278   uint32 cv;
//  279   vuint32 mod;
//  280   
//  281   //�������
//  282   ASSERT( duty <= 10000 );                  //�ж�ռ�ձ�
        MOVW     R0,#+10001
        CMP      R6,R0
        BCC.N    ??LPLD_FTM_PWM_ChangeDuty_0
        MOV      R1,#+282
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  283     
//  284   //������Ҷ��룬100%-ռ�ձ�
//  285   if(ftmx->CONTROLS[chn].CnSC & FTM_CnSC_ELSA_MASK)
??LPLD_FTM_PWM_ChangeDuty_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+29
        BPL.N    ??LPLD_FTM_PWM_ChangeDuty_1
//  286   {
//  287     duty = 10000 - duty;
        MOVW     R0,#+10000
        SUBS     R6,R0,R6
//  288   }
//  289   
//  290   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  291   mod = ftmx->MOD;
??LPLD_FTM_PWM_ChangeDuty_1:
        LDR      R0,[R4, #+8]
        STR      R0,[SP, #+0]
//  292   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        MUL      R0,R0,R6
        MOVW     R1,#+10000
        UDIV     R0,R0,R1
//  293  
//  294   // ����FTMͨ��ֵ
//  295   ftmx->CONTROLS[chn].CnV = cv;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+16]
//  296   
//  297   return 1;
        MOVS     R0,#+1
        POP      {R1,R2,R4-R6,PC}  ;; return
//  298 }
//  299 
//  300 /*
//  301  * LPLD_FTM_DisableChn
//  302  * ����FTMģ��ָ��ͨ�������������
//  303  *
//  304  * ����:
//  305  *    ftmx--FTMxģ���
//  306  *      |__FTM0          --FTM0
//  307  *      |__FTM1          --FTM1
//  308  *      |__FTM2          --FTM2
//  309  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  310  *      |__FTM3          --FTM3
//  311  *    chn--PWM���ͨ��
//  312  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  313  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2\FTM3)
//  314  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2\FTM3)
//  315  *      |__FTM_Ch2          --FTMxͨ��2(FTM0\FTM3)
//  316  *      |__FTM_Ch3          --FTMxͨ��3(FTM0\FTM3)
//  317  *      |__FTM_Ch4          --FTMxͨ��4(FTM0\FTM3)
//  318  *      |__FTM_Ch5          --FTMxͨ��5(FTM0\FTM3)
//  319  *      |__FTM_Ch6          --FTMxͨ��6(FTM0\FTM3)
//  320  *      |__FTM_Ch7          --FTMxͨ��7(FTM0\FTM3)
//  321  *
//  322  * ���:
//  323  *    0--���ô���
//  324  *    1--���óɹ�
//  325  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  326 uint8 LPLD_FTM_DisableChn(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  327 {
LPLD_FTM_DisableChn:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  328   LPLD_FTM_PinDeinit(ftmx, chn);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_FTM_PinDeinit
//  329   ftmx->CONTROLS[chn].CnSC = 0;
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  330   ftmx->CONTROLS[chn].CnV  = 0;
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+16]
//  331   
//  332   return 1;
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
//  333 }
//  334 
//  335 
//  336 
//  337 /*
//  338  * LPLD_FTM_IC_Enable
//  339  * FTMģ�����벶��ģʽ���ʹ�ܣ���������ͨ����ָ����Ӧ�����š������Ե
//  340  *
//  341  * ����:
//  342  *    ftmx--FTMxģ���
//  343  *      |__FTM0          --FTM0
//  344  *      |__FTM1          --FTM1
//  345  *      |__FTM2          --FTM2
//  346  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  347  *      |__FTM3          --FTM3
//  348  *    chn--PWM���ͨ��
//  349  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  350  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2\FTM3)
//  351  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2\FTM3)
//  352  *      |__FTM_Ch2          --FTMxͨ��2(FTM0\FTM3)
//  353  *      |__FTM_Ch3          --FTMxͨ��3(FTM0\FTM3)
//  354  *      |__FTM_Ch4          --FTMxͨ��4(FTM0\FTM3)
//  355  *      |__FTM_Ch5          --FTMxͨ��5(FTM0\FTM3)
//  356  *      |__FTM_Ch6          --FTMxͨ��6(FTM0\FTM3)
//  357  *      |__FTM_Ch7          --FTMxͨ��7(FTM0\FTM3)
//  358  *    duty--PWM���ռ�ձ�
//  359  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  360  *    pin--FTMxͨ����Ӧ������
//  361  *      FTM0
//  362  *       FTM_Ch0-PTA3\PTC1
//  363  *       FTM_Ch1-PTA4\PTC2
//  364  *       FTM_Ch2-PTA5\PTC3
//  365  *       FTM_Ch3-PTA6\PTC4
//  366  *       FTM_Ch4-PTA7\PTD4
//  367  *       FTM_Ch5-PTA0\PTD5
//  368  *       FTM_Ch6-PTA1\PTD6
//  369  *       FTM_Ch7-PTA2\PTD7
//  370  *      FTM1
//  371  *       FTM_Ch0-PTA8\PTA12\PTB0
//  372  *       FTM_Ch1-PTA9\PTA13\PTB1
//  373  *      FTM2
//  374  *       FTM_Ch0-PTA10\PTB18
//  375  *       FTM_Ch1-PTA11\PTB19
//  376  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  377  *      FTM3
//  378  *       FTM_Ch0-PTE5\PTD0
//  379  *       FTM_Ch1-PTE6\PTD1
//  380  *       FTM_Ch2-PTE7\PTD2
//  381  *       FTM_Ch3-PTE8\PTD3
//  382  *       FTM_Ch4-PTE9\PTC8
//  383  *       FTM_Ch5-PTE10\PTC9
//  384  *       FTM_Ch6-PTE11\PTC10
//  385  *       FTM_Ch7-PTE12\PTC11
//  386  *    capture_edge--�����Ե����
//  387  *      |__CAPTURE_RI    --�����ز���
//  388  *      |__CAPTURE_FA    --�½��ز���
//  389  *      |__CAPTURE_RIFA  --�����½��ز���
//  390  *
//  391  * ���:
//  392  *    0--���ô���
//  393  *    1--���óɹ�
//  394  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  395 uint8 LPLD_FTM_IC_Enable(FTM_Type *ftmx, FtmChnEnum_Type chn, PortPinsEnum_Type pin, uint8 capture_edge)
//  396 {
LPLD_FTM_IC_Enable:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R3
//  397   if(!LPLD_FTM_PinInit(ftmx, chn, pin))
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_FTM_PinInit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_IC_Enable_0
//  398     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_IC_Enable_1
//  399   
//  400   ftmx->CONTROLS[chn].CnSC = 0x00;
??LPLD_FTM_IC_Enable_0:
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  401   
//  402   ftmx->CONTROLS[chn].CnSC |= capture_edge;        
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ORRS     R0,R6,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  403   
//  404   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_CHF_MASK);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x80
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  405   ftmx->CONTROLS[chn].CnSC |= FTM_CnSC_CHIE_MASK;         //ʹ��ͨ�����������ж�
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x40
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  406   
//  407   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_MSB_MASK);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x20
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  408   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_MSA_MASK);       //���ó�Input captureģʽ
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  409   
//  410   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_DMA_MASK);       //�ر�DMA
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  411   
//  412   return 1;
        MOVS     R0,#+1
??LPLD_FTM_IC_Enable_1:
        POP      {R4-R6,PC}       ;; return
//  413 }
//  414 
//  415 /*
//  416  * LPLD_FTM_IsTOF
//  417  * �ж�FTMx�Ƿ������������жϱ�־
//  418  * 
//  419  * ����:
//  420  *    ftmx--FTMxģ���
//  421  *      |__FTM0          --FTM0
//  422  *      |__FTM1          --FTM1
//  423  *      |__FTM2          --FTM2
//  424  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  425  *      |__FTM3          --FTM3
//  426  *
//  427  * ���:
//  428  *    TRUE��FALSE
//  429  *
//  430  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  431 __INLINE boolean LPLD_FTM_IsTOF(FTM_Type *ftmx)
//  432 {
//  433   return (boolean)((ftmx->SC & FTM_SC_TOF_MASK)>>FTM_SC_TOF_SHIFT);
LPLD_FTM_IsTOF:
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+7,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  434 }
//  435 
//  436 /*
//  437  * LPLD_FTM_ClearTOF
//  438  * ���FTMx����������жϱ�־
//  439  * 
//  440  * ����:
//  441  *    ftmx--FTMxģ���
//  442  *      |__FTM0          --FTM0
//  443  *      |__FTM1          --FTM1
//  444  *      |__FTM2          --FTM2
//  445  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  446  *      |__FTM3          --FTM3
//  447  *
//  448  * ���:
//  449  *    ��
//  450  *
//  451  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  452 __INLINE void LPLD_FTM_ClearTOF(FTM_Type *ftmx)
//  453 {
//  454   ftmx->SC = ftmx->SC & ~FTM_SC_TOF_MASK;
LPLD_FTM_ClearTOF:
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x80
        STR      R1,[R0, #+0]
//  455 }
        BX       LR               ;; return
//  456 
//  457 /*
//  458  * LPLD_FTM_IsCHnF
//  459  * �ж�ͨ��n�Ƿ�����жϱ�־
//  460  * 
//  461  * ����:
//  462  *    ftmx--FTMxģ���
//  463  *      |__FTM0          --FTM0
//  464  *      |__FTM1          --FTM1
//  465  *      |__FTM2          --FTM2
//  466  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  467  *      |__FTM3          --FTM3
//  468  *    chn--PWM���ͨ��
//  469  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  470  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2\FTM3)
//  471  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2\FTM3)
//  472  *      |__FTM_Ch2          --FTMxͨ��2(FTM0\FTM3)
//  473  *      |__FTM_Ch3          --FTMxͨ��3(FTM0\FTM3)
//  474  *      |__FTM_Ch4          --FTMxͨ��4(FTM0\FTM3)
//  475  *      |__FTM_Ch5          --FTMxͨ��5(FTM0\FTM3)
//  476  *      |__FTM_Ch6          --FTMxͨ��6(FTM0\FTM3)
//  477  *      |__FTM_Ch7          --FTMxͨ��7(FTM0\FTM3)
//  478  *
//  479  * ���:
//  480  *    TRUE��FALSE
//  481  *
//  482  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  483 __INLINE boolean LPLD_FTM_IsCHnF(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  484 {
//  485   return (boolean)((ftmx->CONTROLS[chn].CnSC & FTM_CnSC_CHF_MASK)>>FTM_CnSC_CHF_SHIFT);
LPLD_FTM_IsCHnF:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+3
        LDR      R0,[R0, #+12]
        UBFX     R0,R0,#+7,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  486 }
//  487 
//  488 /*
//  489  * LPLD_FTM_ClearCHnF
//  490  * ���ͨ��n�жϱ�־
//  491  * 
//  492  * ����:
//  493  *    ftmx--FTMxģ���
//  494  *      |__FTM0          --FTM0
//  495  *      |__FTM1          --FTM1
//  496  *      |__FTM2          --FTM2
//  497  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  498  *      |__FTM3          --FTM3
//  499  *    chn--PWM���ͨ��
//  500  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  501  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2\FTM3)
//  502  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2\FTM3)
//  503  *      |__FTM_Ch2          --FTMxͨ��2(FTM0\FTM3)
//  504  *      |__FTM_Ch3          --FTMxͨ��3(FTM0\FTM3)
//  505  *      |__FTM_Ch4          --FTMxͨ��4(FTM0\FTM3)
//  506  *      |__FTM_Ch5          --FTMxͨ��5(FTM0\FTM3)
//  507  *      |__FTM_Ch6          --FTMxͨ��6(FTM0\FTM3)
//  508  *      |__FTM_Ch7          --FTMxͨ��7(FTM0\FTM3)
//  509  *
//  510  * ���:
//  511  *    ��
//  512  *
//  513  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  514 __INLINE void LPLD_FTM_ClearCHnF(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  515 {
//  516   ftmx->CONTROLS[chn].CnSC = ftmx->CONTROLS[chn].CnSC & ~FTM_CnSC_CHF_MASK;
LPLD_FTM_ClearCHnF:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R0,R1, LSL #+3
        LDR      R2,[R2, #+12]
        BICS     R2,R2,#0x80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+3
        STR      R2,[R0, #+12]
//  517 }
        BX       LR               ;; return
//  518 
//  519 /*
//  520  * LPLD_FTM_GetChVal
//  521  * ��ȡFTMxͨ��n�����FTMx����ֵ
//  522  * 
//  523  * ����:
//  524  *    ftmx--FTMxģ���
//  525  *      |__FTM0          --FTM0
//  526  *      |__FTM1          --FTM1
//  527  *      |__FTM2          --FTM2
//  528  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  529  *      |__FTM3          --FTM3
//  530  *    chn--PWM���ͨ��
//  531  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  532  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2\FTM3)
//  533  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2\FTM3)
//  534  *      |__FTM_Ch2          --FTMxͨ��2(FTM0\FTM3)
//  535  *      |__FTM_Ch3          --FTMxͨ��3(FTM0\FTM3)
//  536  *      |__FTM_Ch4          --FTMxͨ��4(FTM0\FTM3)
//  537  *      |__FTM_Ch5          --FTMxͨ��5(FTM0\FTM3)
//  538  *      |__FTM_Ch6          --FTMxͨ��6(FTM0\FTM3)
//  539  *      |__FTM_Ch7          --FTMxͨ��7(FTM0\FTM3)
//  540  *
//  541  * ���:
//  542  *    0x1~0xFFFF
//  543  *
//  544  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  545 __INLINE uint16 LPLD_FTM_GetChVal(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  546 {
//  547   return ftmx->CONTROLS[chn].CnV;    //��ȡ��Ӧͨ�����񵽵�FTM������ֵ
LPLD_FTM_GetChVal:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+3
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  548 }
//  549 
//  550 /*
//  551  * LPLD_FTM_GetClkDiv
//  552  * ��ȡFTMxʱ�ӷ�Ƶϵ��
//  553  * 
//  554  * ����:
//  555  *    ftmx--FTMxģ���
//  556  *      |__FTM0          --FTM0
//  557  *      |__FTM1          --FTM1
//  558  *      |__FTM2          --FTM2
//  559  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  560  *      |__FTM3          --FTM3
//  561  *
//  562  * ���:
//  563  *    1��2��4��8��16��32��64��128
//  564  *
//  565  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  566 __INLINE uint8 LPLD_FTM_GetClkDiv(FTM_Type *ftmx)
//  567 {
//  568   return 1u<<((ftmx->SC & FTM_SC_PS_MASK)>>FTM_SC_PS_SHIFT);    //���ʱ�ӷ�Ƶϵ��
LPLD_FTM_GetClkDiv:
        MOVS     R1,#+1
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x7
        LSLS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  569 }
//  570 
//  571 /*
//  572  * LPLD_FTM_GetCounter
//  573  * ��ȡFTMx������ֵ
//  574  * 
//  575  * ����:
//  576  *    ftmx--FTMxģ���
//  577  *      |__FTM0          --FTM0
//  578  *      |__FTM1          --FTM1
//  579  *      |__FTM2          --FTM2
//  580  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  581  *      |__FTM3          --FTM3
//  582  *
//  583  * ���:
//  584  *    ��
//  585  *
//  586  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  587 __INLINE uint16 LPLD_FTM_GetCounter(FTM_Type *ftmx)
//  588 {
//  589   return ftmx->CNT;        //��ȡFTMx������ֵ
LPLD_FTM_GetCounter:
        LDR      R0,[R0, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  590 }
//  591 
//  592 /*
//  593  * LPLD_FTM_ClearCounter
//  594  * ���FTMx������
//  595  * 
//  596  * ����:
//  597  *    ftmx--FTMxģ���
//  598  *      |__FTM0          --FTM0
//  599  *      |__FTM1          --FTM1
//  600  *      |__FTM2          --FTM2
//  601  *      <ע:ֻ��MK60Fϵ�к���FTM3>
//  602  *      |__FTM3          --FTM3
//  603  *
//  604  * ���:
//  605  *    ��
//  606  *
//  607  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  608 __INLINE void LPLD_FTM_ClearCounter(FTM_Type *ftmx)
//  609 {
//  610   ftmx->CNT = 0;        //���FTMx������ֵ
LPLD_FTM_ClearCounter:
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  611 }
        BX       LR               ;; return
//  612 
//  613 /*
//  614  * LPLD_FTM_EnableIrq
//  615  * ʹ��FTMx�ж�
//  616  * 
//  617  * ����:
//  618  *    ftm_init_structure--FTM��ʼ���ṹ�壬
//  619  *                        ���嶨���FTM_InitTypeDef
//  620  *
//  621  * ���:
//  622  *    0--���ô���
//  623  *    1--���óɹ�
//  624  *
//  625  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  626 uint8 LPLD_FTM_EnableIrq(FTM_InitTypeDef ftm_init_structure)
//  627 {
LPLD_FTM_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  628   uint8 i;
//  629   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R0,[SP, #+8]
//  630   
//  631   if(ftmx == FTM0)
        LDR.W    R1,??DataTable10_3  ;; 0x40038000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_EnableIrq_0
//  632     i=0;
        MOVS     R0,#+0
//  633   else if(ftmx == FTM1)
//  634     i=1;
//  635   else if(ftmx == FTM2)
//  636     i=2;
//  637 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  638   else if(ftmx == FTM3)
//  639     i=3;
//  640 #endif
//  641   else
//  642     return 0;
//  643 
//  644   enable_irq((IRQn_Type)(FTM0_IRQn + i));
??LPLD_FTM_EnableIrq_1:
        ADDS     R0,R0,#+62
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  645   
//  646   return 1;
        MOVS     R0,#+1
??LPLD_FTM_EnableIrq_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_FTM_EnableIrq_0:
        LDR.W    R1,??DataTable10_5  ;; 0x40039000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_EnableIrq_3
        MOVS     R0,#+1
        B.N      ??LPLD_FTM_EnableIrq_1
??LPLD_FTM_EnableIrq_3:
        LDR.W    R1,??DataTable10_6  ;; 0x400b8000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_EnableIrq_4
        MOVS     R0,#+2
        B.N      ??LPLD_FTM_EnableIrq_1
??LPLD_FTM_EnableIrq_4:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_EnableIrq_2
//  647 }
//  648 
//  649 /*
//  650  * LPLD_FTM_DisableIrq
//  651  * ����FTMx�ж�
//  652  * 
//  653  * ����:
//  654  *    ftm_init_structure--FTM��ʼ���ṹ�壬
//  655  *                        ���嶨���FTM_InitTypeDef
//  656  *
//  657  * ���:
//  658  *    0--���ô���
//  659  *    1--���óɹ�
//  660  *
//  661  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  662 uint8 LPLD_FTM_DisableIrq(FTM_InitTypeDef ftm_init_structure)
//  663 {
LPLD_FTM_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  664   uint8 i;
//  665   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R0,[SP, #+8]
//  666   
//  667   if(ftmx == FTM0)
        LDR.W    R1,??DataTable10_3  ;; 0x40038000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_DisableIrq_0
//  668     i=0;
        MOVS     R0,#+0
//  669   else if(ftmx == FTM1)
//  670     i=1;
//  671   else if(ftmx == FTM2)
//  672     i=2;
//  673 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  674   else if(ftmx == FTM3)
//  675     i=3;
//  676 #endif
//  677   else
//  678     return 0;
//  679 
//  680   disable_irq((IRQn_Type)(FTM0_IRQn + i));
??LPLD_FTM_DisableIrq_1:
        ADDS     R0,R0,#+62
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  681   
//  682   return 1;
        MOVS     R0,#+1
??LPLD_FTM_DisableIrq_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_FTM_DisableIrq_0:
        LDR.W    R1,??DataTable10_5  ;; 0x40039000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_DisableIrq_3
        MOVS     R0,#+1
        B.N      ??LPLD_FTM_DisableIrq_1
??LPLD_FTM_DisableIrq_3:
        LDR.W    R1,??DataTable10_6  ;; 0x400b8000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_DisableIrq_4
        MOVS     R0,#+2
        B.N      ??LPLD_FTM_DisableIrq_1
??LPLD_FTM_DisableIrq_4:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_DisableIrq_2
//  683 }
//  684 
//  685 /*
//  686  * LPLD_FTM_QD_Enable
//  687  * FTMģ����������ģʽ����ʹ�ܣ���������ͨ��PHA��PHB
//  688  *
//  689  * ����:
//  690  *    ftmx--FTMxģ���
//  691  *      |__FTM1          --FTM1
//  692  *      |__FTM2          --FTM2
//  693  *    pha--PHA����ͨ������
//  694  *      FTM1
//  695  *        PTA8\PTA12\PTB0
//  696  *      FTM2
//  697  *        PTA10\PTB18
//  698  *    phb--PHB����ͨ������
//  699  *      FTM1
//  700  *        PTA9\PTA13\PTB1
//  701  *      FTM2
//  702  *        PTA11\PTB19
//  703  *
//  704  * ���:
//  705  *    0--���ô���
//  706  *    1--���óɹ�
//  707  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  708 uint8 LPLD_FTM_QD_Enable(FTM_Type *ftmx, PortPinsEnum_Type pha, PortPinsEnum_Type phb)
//  709 {
LPLD_FTM_QD_Enable:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R2
//  710   if(!LPLD_FTM_PinInit(ftmx, FTM_PhA, pha))
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+8
        MOVS     R0,R4
        BL       LPLD_FTM_PinInit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_QD_Enable_0
//  711     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_QD_Enable_1
//  712   if(!LPLD_FTM_PinInit(ftmx, FTM_PhB, phb))
??LPLD_FTM_QD_Enable_0:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       LPLD_FTM_PinInit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_QD_Enable_2
//  713     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_QD_Enable_1
//  714   
//  715   return 1;
??LPLD_FTM_QD_Enable_2:
        MOVS     R0,#+1
??LPLD_FTM_QD_Enable_1:
        POP      {R1,R4,R5,PC}    ;; return
//  716 }
//  717 
//  718 /*
//  719  * LPLD_FTM_QD_Disable
//  720  * FTMģ����������ģʽ�������
//  721  *
//  722  * ����:
//  723  *    ftmx--FTMxģ���
//  724  *      |__FTM1          --FTM1
//  725  *      |__FTM2          --FTM2
//  726  *
//  727  * ���:
//  728  *    0--���ô���
//  729  *    1--���óɹ�
//  730  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  731 uint8 LPLD_FTM_QD_Disable(FTM_Type *ftmx)
//  732 {
LPLD_FTM_QD_Disable:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  733   if(!LPLD_FTM_PinDeinit(ftmx, FTM_PhA))
        MOVS     R1,#+8
        MOVS     R0,R4
        BL       LPLD_FTM_PinDeinit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_QD_Disable_0
//  734     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_QD_Disable_1
//  735   if(!LPLD_FTM_PinDeinit(ftmx, FTM_PhB))
??LPLD_FTM_QD_Disable_0:
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       LPLD_FTM_PinDeinit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_QD_Disable_2
//  736     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_QD_Disable_1
//  737   
//  738   return 1;
??LPLD_FTM_QD_Disable_2:
        MOVS     R0,#+1
??LPLD_FTM_QD_Disable_1:
        POP      {R4,PC}          ;; return
//  739 }
//  740 
//  741 /*
//  742  * LPLD_FTM_PWM_Init
//  743  * FTMģ��PWMģʽ��ʼ�����ڲ�����
//  744  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  745 static uint8 LPLD_FTM_PWM_Init(FTM_InitTypeDef ftm_init_structure)
//  746 {
LPLD_FTM_PWM_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R8,LR}
//  747   uint32 bus_clk_hz;
//  748   uint32 mod, mod2;
//  749   uint8 ps;
//  750   uint32 freq = ftm_init_structure.FTM_PwmFreq;
        LDR      R4,[SP, #+32]
//  751   uint32 dt_en = ftm_init_structure.FTM_PwmDeadtimeCfg;
        LDR      R5,[SP, #+36]
//  752   uint8 dt_div = ftm_init_structure.FTM_PwmDeadtimeDiv;
        LDRB     R6,[SP, #+40]
//  753   uint8 dt_val = ftm_init_structure.FTM_PwmDeadtimeVal;
        LDRB     R7,[SP, #+41]
//  754   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R8,[SP, #+24]
//  755   
//  756   //�������
//  757   ASSERT( freq );                  //�ж�Ƶ��
        CMP      R4,#+0
        BNE.N    ??LPLD_FTM_PWM_Init_0
        MOVW     R1,#+757
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  758   ASSERT( dt_val<=63 );            //�ж���������ֵ
??LPLD_FTM_PWM_Init_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+64
        BLT.N    ??LPLD_FTM_PWM_Init_1
        MOVW     R1,#+758
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  759   
//  760   bus_clk_hz = g_bus_clock;
??LPLD_FTM_PWM_Init_1:
        LDR.W    R0,??DataTable14
        LDR      R0,[R0, #+0]
//  761   
//  762   if(freq>bus_clk_hz) return 0;
        CMP      R0,R4
        BCS.N    ??LPLD_FTM_PWM_Init_2
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PWM_Init_3
//  763   
//  764   if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
??LPLD_FTM_PWM_Init_2:
        MOVS     R1,#+128
        MUL      R1,R1,R4
        UDIV     R3,R0,R1
        MOVW     R1,#+65535
        CMP      R3,R1
        BCS.N    ??LPLD_FTM_PWM_Init_4
//  765   {
//  766     ps = 7;
        MOVS     R1,#+7
//  767     mod2=mod;
        MOVS     R2,R3
//  768     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
        MOVS     R3,#+64
        MUL      R3,R3,R4
        UDIV     R3,R0,R3
        MOVW     R12,#+65535
        CMP      R3,R12
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  769     {
//  770       ps = 6;  
        MOVS     R1,#+6
//  771       mod2=mod;  
        MOVS     R2,R3
//  772       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
        LSLS     R3,R4,#+5
        UDIV     R3,R0,R3
        MOVW     R12,#+65535
        CMP      R3,R12
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  773       {
//  774         ps = 5;  
        MOVS     R1,#+5
//  775         mod2=mod;
        MOVS     R2,R3
//  776         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        LSLS     R3,R4,#+4
        UDIV     R3,R0,R3
        MOVW     R12,#+65535
        CMP      R3,R12
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  777         {
//  778           ps = 4;  
        MOVS     R1,#+4
//  779           mod2=mod;   
        MOVS     R2,R3
//  780           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
        LSLS     R3,R4,#+3
        UDIV     R3,R0,R3
        MOVW     R12,#+65535
        CMP      R3,R12
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  781           {
//  782             ps = 3;
        MOVS     R1,#+3
//  783             mod2=mod;
        MOVS     R2,R3
//  784             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
        LSLS     R3,R4,#+2
        UDIV     R3,R0,R3
        MOVW     R12,#+65535
        CMP      R3,R12
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  785             {
//  786               ps = 2;
        MOVS     R1,#+2
//  787               mod2=mod;
        MOVS     R2,R3
//  788               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
        LSLS     R3,R4,#+1
        UDIV     R3,R0,R3
        MOVW     R12,#+65535
        CMP      R3,R12
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  789               {
//  790                 ps = 1;
        MOVS     R1,#+1
//  791                 mod2=mod;
        MOVS     R2,R3
//  792                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
        UDIV     R3,R0,R4
        MOVW     R0,#+65535
        CMP      R3,R0
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  793                 {
//  794                   ps = 0;
        MOVS     R1,#+0
//  795                   mod2=mod;
        MOVS     R2,R3
//  796                 }
//  797               }
//  798             }
//  799           }
//  800         }  
//  801       }
//  802     }
//  803   }
//  804   else
//  805   {
//  806     return 0;
//  807   }
//  808   
//  809   ftmx->SC = 0;
??LPLD_FTM_PWM_Init_5:
        MOVS     R0,#+0
        STR      R0,[R8, #+0]
//  810   
//  811   // ����PWM���ڼ�ռ�ձ�
//  812   //    PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
//  813   // ����FTM������ʼֵ
//  814   ftmx->CNT = 0;
        MOVS     R0,#+0
        STR      R0,[R8, #+4]
//  815   ftmx->CNTIN = 0;
        MOVS     R0,#+0
        STR      R0,[R8, #+76]
//  816   // ����FTM����MODֵ
//  817   ftmx->MOD = mod2;
        STR      R2,[R8, #+8]
//  818   
//  819   ftmx->DEADTIME = FTM_DEADTIME_DTPS(dt_div) | FTM_DEADTIME_DTVAL(dt_val);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,#+6
        ANDS     R0,R0,#0xC0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R2,R7,#0x3F
        ORRS     R0,R2,R0
        STR      R0,[R8, #+104]
//  820   ftmx->COMBINE = dt_en;        //ʹ������
        STR      R5,[R8, #+100]
//  821   
//  822   // ����FTM���ƼĴ���
//  823   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
//  824   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  825   ftmx->SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R0,R1,#0x7
        ORRS     R0,R0,#0x8
        STR      R0,[R8, #+0]
//  826   
//  827   return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_FTM_PWM_Init_3
??LPLD_FTM_PWM_Init_4:
        MOVS     R0,#+0
??LPLD_FTM_PWM_Init_3:
        POP      {R4-R8}
        LDR      PC,[SP], #+20    ;; return
//  828 }
//  829 
//  830 /*
//  831  * LPLD_FTM_IC_Init
//  832  * FTMģ�����벶��ģʽ��ʼ�����ڲ�����
//  833  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  834 static uint8 LPLD_FTM_IC_Init(FTM_InitTypeDef ftm_init_structure)
//  835 {
LPLD_FTM_IC_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R6,LR}
//  836   uint8 i;
//  837   uint8 ps = ftm_init_structure.FTM_ClkDiv;
        LDRB     R5,[SP, #+35]
//  838   FTM_ISR_CALLBACK isr_func = ftm_init_structure.FTM_Isr;
        LDR      R4,[SP, #+40]
//  839   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R6,[SP, #+16]
//  840   
//  841   //�������
//  842   ASSERT( ps <= 7);             //ʱ�ӷ�Ƶϵ��
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BLT.N    ??LPLD_FTM_IC_Init_0
        MOVW     R1,#+842
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  843   
//  844   ftmx->CONF=FTM_CONF_BDMMODE(0x3);
??LPLD_FTM_IC_Init_0:
        MOVS     R0,#+192
        STR      R0,[R6, #+132]
//  845   
//  846   ftmx->SC = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
//  847   
//  848   ftmx->CNT = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+4]
//  849   ftmx->CNTIN = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+76]
//  850   ftmx->MOD = 0;                           
        MOVS     R0,#+0
        STR      R0,[R6, #+8]
//  851   ftmx->QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //�ر���������
        MVNS     R0,#+1
        STR      R0,[R6, #+128]
//  852   ftmx->FILTER = 0x00;                      //�ع�����
        MOVS     R0,#+0
        STR      R0,[R6, #+120]
//  853   
//  854   // ����FTM���ƼĴ���
//  855   // ��FTM Counter���ó�Free Counter
//  856   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:PS
//  857   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  858   ftmx->SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        LDR      R0,[R6, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R1,R5,#0x7
        ORRS     R1,R1,#0x8
        ORRS     R0,R1,R0
        STR      R0,[R6, #+0]
//  859   //ftmx->SC |= FTM_SC_TOIE_MASK;             //ʹ�ܼ�������ж�
//  860   ftmx->SC &= (~FTM_SC_CPWMS_MASK);         //FTM�Ӽ���
        LDR      R0,[R6, #+0]
        BICS     R0,R0,#0x20
        STR      R0,[R6, #+0]
//  861 
//  862   //�����жϺ�����ڵ�ַ�������ж�
//  863   if(isr_func!=NULL)
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM_IC_Init_1
//  864   {
//  865     if(ftmx == FTM0)
        LDR.W    R0,??DataTable10_3  ;; 0x40038000
        CMP      R6,R0
        BNE.N    ??LPLD_FTM_IC_Init_2
//  866       i=0;
        MOVS     R0,#+0
//  867     else if(ftmx == FTM1)
//  868       i=1;
//  869     else if(ftmx == FTM2)
//  870       i=2;
//  871 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  872     else if(ftmx == FTM3)
//  873       i=3;
//  874 #endif   
//  875     else
//  876       return 0;
//  877     FTM_ISR[i] = isr_func;
??LPLD_FTM_IC_Init_3:
        LDR.W    R1,??DataTable10_8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R4,[R1, R0, LSL #+2]
//  878   }
//  879 
//  880   return 1;
??LPLD_FTM_IC_Init_1:
        MOVS     R0,#+1
??LPLD_FTM_IC_Init_4:
        POP      {R4-R6}
        LDR      PC,[SP], #+20    ;; return
??LPLD_FTM_IC_Init_2:
        LDR.W    R0,??DataTable10_5  ;; 0x40039000
        CMP      R6,R0
        BNE.N    ??LPLD_FTM_IC_Init_5
        MOVS     R0,#+1
        B.N      ??LPLD_FTM_IC_Init_3
??LPLD_FTM_IC_Init_5:
        LDR.W    R0,??DataTable10_6  ;; 0x400b8000
        CMP      R6,R0
        BNE.N    ??LPLD_FTM_IC_Init_6
        MOVS     R0,#+2
        B.N      ??LPLD_FTM_IC_Init_3
??LPLD_FTM_IC_Init_6:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_IC_Init_4
//  881 }
//  882 
//  883 /*
//  884  * LPLD_FTM_PinInit
//  885  * ��ʼ��ͨ��nָ�����ŵ�FTM���ù��ܣ��ڲ�����
//  886  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  887 static uint8 LPLD_FTM_PinInit(FTM_Type *ftmx, FtmChnEnum_Type chn, PortPinsEnum_Type pin)
//  888 { 
//  889   //����ftmxʹ����Ӧpin��ftm����
//  890   if(ftmx == FTM0)
LPLD_FTM_PinInit:
        LDR.W    R3,??DataTable14_1  ;; 0x40038000
        CMP      R0,R3
        BNE.W    ??LPLD_FTM_PinInit_0
//  891   {
//  892     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_FTM_PinInit_1
        CMP      R1,#+2
        BEQ.N    ??LPLD_FTM_PinInit_2
        BCC.N    ??LPLD_FTM_PinInit_3
        CMP      R1,#+4
        BEQ.W    ??LPLD_FTM_PinInit_4
        BCC.N    ??LPLD_FTM_PinInit_5
        CMP      R1,#+6
        BEQ.W    ??LPLD_FTM_PinInit_6
        BCC.W    ??LPLD_FTM_PinInit_7
        CMP      R1,#+7
        BEQ.W    ??LPLD_FTM_PinInit_8
        B.N      ??LPLD_FTM_PinInit_9
//  893     {
//  894     case FTM_Ch0:
//  895       if(pin == PTA3)
??LPLD_FTM_PinInit_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BNE.N    ??LPLD_FTM_PinInit_10
//  896         PORTA->PCR[3] = PORTA->PCR[3] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_2  ;; 0x4004900c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_2  ;; 0x4004900c
        STR      R0,[R1, #+0]
//  897       else if(pin == PTC1)
//  898         PORTC->PCR[1] = PORTC->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
//  899       else
//  900         return 0;
//  901       break;
//  902     case FTM_Ch1:
//  903       if(pin == PTA4)
//  904         PORTA->PCR[4] = PORTA->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  905       else if(pin == PTC2)
//  906         PORTC->PCR[2] = PORTC->PCR[2] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
//  907       else
//  908         return 0;
//  909       break;
//  910     case FTM_Ch2:
//  911       if(pin == PTA5)
//  912         PORTA->PCR[5] = PORTA->PCR[5] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  913       else if(pin == PTC3)
//  914         PORTC->PCR[3] = PORTC->PCR[3] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
//  915       else
//  916         return 0;
//  917       break;
//  918     case FTM_Ch3:
//  919       if(pin == PTA6)
//  920         PORTA->PCR[6] = PORTA->PCR[6] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  921       else if(pin == PTC4)
//  922         PORTC->PCR[4] = PORTC->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
//  923       else
//  924         return 0;
//  925       break;
//  926     case FTM_Ch4:
//  927       if(pin == PTA7)
//  928         PORTA->PCR[7] = PORTA->PCR[7] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  929       else if(pin == PTD4)
//  930         PORTD->PCR[4] = PORTD->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
//  931       else
//  932         return 0;
//  933       break;
//  934     case FTM_Ch5:
//  935       if(pin == PTA0)
//  936         PORTA->PCR[0] = PORTA->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  937       else if(pin == PTD5)
//  938         PORTD->PCR[5] = PORTD->PCR[5] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
//  939       else
//  940         return 0;
//  941       break;
//  942     case FTM_Ch6:
//  943       if(pin == PTA1)
//  944         PORTA->PCR[1] = PORTA->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  945       else if(pin == PTD6)
//  946         PORTD->PCR[6] = PORTD->PCR[6] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
//  947       else
//  948         return 0;
//  949       break;
//  950     case FTM_Ch7:
//  951       if(pin == PTA2)
//  952         PORTA->PCR[2] = PORTA->PCR[2] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  953       else if(pin == PTD7)
//  954         PORTD->PCR[7] = PORTD->PCR[7] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
//  955       else
//  956         return 0;
//  957       break;
//  958     default:
//  959       return 0;     
//  960     }
//  961   }
//  962   else if(ftmx == FTM1)
//  963   {
//  964     switch(chn)
//  965     {
//  966     case FTM_Ch0:
//  967       if(pin == PTA8)
//  968         PORTA->PCR[8] = PORTA->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  969       else if(pin == PTA12)
//  970         PORTA->PCR[12] = PORTA->PCR[12] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
//  971       else if(pin == PTB0)
//  972         PORTB->PCR[0] = PORTB->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
//  973       else
//  974         return 0;
//  975       break;
//  976     case FTM_Ch1:
//  977       if(pin == PTA9)
//  978         PORTA->PCR[9] = PORTA->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
//  979       else if(pin == PTA13)
//  980         PORTA->PCR[13] = PORTA->PCR[13] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
//  981       else if(pin == PTB1)
//  982         PORTB->PCR[1] = PORTB->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
//  983       else
//  984         return 0;
//  985       break;
//  986     case FTM_PhA:
//  987       if(pin == PTA8)
//  988         PORTA->PCR[8] = PORTA->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
//  989       else if(pin == PTA12)
//  990         PORTA->PCR[12] = PORTA->PCR[12] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(7);
//  991       else if(pin == PTB0)
//  992         PORTB->PCR[0] = PORTB->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
//  993       else
//  994         return 0;
//  995       break;
//  996     case FTM_PhB:
//  997       if(pin == PTA9)
//  998         PORTA->PCR[9] = PORTA->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
//  999       else if(pin == PTA13)
// 1000         PORTA->PCR[13] = PORTA->PCR[13] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(7);
// 1001       else if(pin == PTB1)
// 1002         PORTB->PCR[1] = PORTB->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
// 1003       else
// 1004         return 0;
// 1005     default:
// 1006       return 0;   
// 1007     }
// 1008   }
// 1009   else if(ftmx == FTM2)
// 1010   {
// 1011     switch(chn)
// 1012     {
// 1013     case FTM_Ch0:
// 1014       if(pin == PTA10)
// 1015         PORTA->PCR[10] = PORTA->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
// 1016       else if(pin == PTB18)
// 1017         PORTB->PCR[18] = PORTB->PCR[18] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
// 1018       else
// 1019         return 0;
// 1020       break;
// 1021     case FTM_Ch1:
// 1022       if(pin == PTA11)
// 1023         PORTA->PCR[11] = PORTA->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
// 1024       else if(pin == PTB19)
// 1025       {
// 1026         PORTB->PCR[19] = PORTB->PCR[19] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
// 1027         //PORTB->PCR[19]|= PORT_PCR_ODE_MASK;
// 1028       }
// 1029       else
// 1030         return 0;
// 1031       break;
// 1032     case FTM_PhA:
// 1033       if(pin == PTA10)
// 1034         PORTA->PCR[10] = PORTA->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1035       else if(pin == PTB18)
// 1036         PORTB->PCR[18] = PORTB->PCR[18] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
// 1037       else
// 1038         return 0;
// 1039       break;
// 1040     case FTM_PhB:
// 1041       if(pin == PTA11)
// 1042         PORTA->PCR[11] = PORTA->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1043       else if(pin == PTB19)
// 1044         PORTB->PCR[19] = PORTB->PCR[19] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
// 1045       else
// 1046         return 0;
// 1047       break;
// 1048     default:
// 1049       return 0;   
// 1050     }
// 1051   }
// 1052   
// 1053 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
// 1054   else if(ftmx == FTM3)
// 1055   {
// 1056     switch(chn)
// 1057     {
// 1058     case FTM_Ch0:
// 1059       if(pin == PTE5)
// 1060         PORTE->PCR[5] = PORTE->PCR[5] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1061       else if(pin == PTD0)
// 1062         PORTD->PCR[0] = PORTD->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
// 1063       else
// 1064         return 0;
// 1065       break;
// 1066     case FTM_Ch1:
// 1067       if(pin == PTE6)
// 1068         PORTE->PCR[6] = PORTE->PCR[6] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1069       else if(pin == PTD0)
// 1070         PORTD->PCR[1] = PORTD->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
// 1071       else
// 1072         return 0;
// 1073       break;
// 1074     case FTM_Ch2:
// 1075       if(pin == PTE7)
// 1076         PORTE->PCR[7] = PORTE->PCR[7] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1077       else if(pin == PTD0)
// 1078         PORTD->PCR[2] = PORTD->PCR[2] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
// 1079       else
// 1080         return 0;
// 1081       break;
// 1082     case FTM_Ch3:
// 1083       if(pin == PTE8)
// 1084         PORTE->PCR[8] = PORTE->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1085       else if(pin == PTD0)
// 1086         PORTD->PCR[3] = PORTD->PCR[3] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
// 1087       else
// 1088         return 0;
// 1089       break;
// 1090     case FTM_Ch4:
// 1091       if(pin == PTE9)
// 1092         PORTE->PCR[9] = PORTE->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1093       else if(pin == PTC8)
// 1094         PORTC->PCR[8] = PORTC->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
// 1095       else
// 1096         return 0;
// 1097       break;
// 1098     case FTM_Ch5:
// 1099       if(pin == PTE10)
// 1100         PORTE->PCR[10] = PORTE->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1101       else if(pin == PTC9)
// 1102         PORTC->PCR[9] = PORTC->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
// 1103       else
// 1104         return 0;
// 1105       break;
// 1106     case FTM_Ch6:
// 1107       if(pin == PTE11)
// 1108         PORTE->PCR[11] = PORTE->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1109       else if(pin == PTC10)
// 1110         PORTC->PCR[10] = PORTC->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
// 1111       else
// 1112         return 0;
// 1113       break;
// 1114     case FTM_Ch7:
// 1115       if(pin == PTE12)
// 1116         PORTE->PCR[12] = PORTE->PCR[12] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
// 1117       else if(pin == PTC11)
// 1118         PORTC->PCR[11] = PORTC->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
// 1119       else
// 1120         return 0;
// 1121       break;
// 1122     default:
// 1123       return 0;     
// 1124     }
// 1125   }
// 1126 #endif
// 1127   else
// 1128   {
// 1129     return 0;
// 1130   }
// 1131   return 1;
??LPLD_FTM_PinInit_11:
??LPLD_FTM_PinInit_12:
        MOVS     R0,#+1
??LPLD_FTM_PinInit_13:
        BX       LR               ;; return
??LPLD_FTM_PinInit_10:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+61
        BNE.N    ??LPLD_FTM_PinInit_14
        LDR.W    R0,??DataTable14_3  ;; 0x4004b004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable14_3  ;; 0x4004b004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_11
??LPLD_FTM_PinInit_14:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_3:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BNE.N    ??LPLD_FTM_PinInit_15
        LDR.W    R0,??DataTable14_4  ;; 0x40049010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_4  ;; 0x40049010
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_16:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_15:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+62
        BNE.N    ??LPLD_FTM_PinInit_17
        LDR.W    R0,??DataTable14_5  ;; 0x4004b008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable14_5  ;; 0x4004b008
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_16
??LPLD_FTM_PinInit_17:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_2:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+5
        BNE.N    ??LPLD_FTM_PinInit_18
        LDR.W    R0,??DataTable14_6  ;; 0x40049014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_6  ;; 0x40049014
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_19:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_18:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+63
        BNE.N    ??LPLD_FTM_PinInit_20
        LDR.W    R0,??DataTable14_7  ;; 0x4004b00c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable14_7  ;; 0x4004b00c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_19
??LPLD_FTM_PinInit_20:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_5:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+6
        BNE.N    ??LPLD_FTM_PinInit_21
        LDR.W    R0,??DataTable14_8  ;; 0x40049018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_8  ;; 0x40049018
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_22:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_21:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+64
        BNE.N    ??LPLD_FTM_PinInit_23
        LDR.W    R0,??DataTable14_9  ;; 0x4004b010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable14_9  ;; 0x4004b010
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_22
??LPLD_FTM_PinInit_23:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BNE.N    ??LPLD_FTM_PinInit_24
        LDR.W    R0,??DataTable14_10  ;; 0x4004901c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_10  ;; 0x4004901c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_25:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_24:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+96
        BNE.N    ??LPLD_FTM_PinInit_26
        LDR.W    R0,??DataTable14_11  ;; 0x4004c010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable14_11  ;; 0x4004c010
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_25
??LPLD_FTM_PinInit_26:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_7:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_FTM_PinInit_27
        LDR.W    R0,??DataTable14_12  ;; 0x40049000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_12  ;; 0x40049000
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_28:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_27:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+97
        BNE.N    ??LPLD_FTM_PinInit_29
        LDR.W    R0,??DataTable14_13  ;; 0x4004c014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable14_13  ;; 0x4004c014
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_28
??LPLD_FTM_PinInit_29:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_6:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_FTM_PinInit_30
        LDR.W    R0,??DataTable14_14  ;; 0x40049004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_14  ;; 0x40049004
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_31:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_30:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+98
        BNE.N    ??LPLD_FTM_PinInit_32
        LDR.W    R0,??DataTable14_15  ;; 0x4004c018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable14_15  ;; 0x4004c018
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_31
??LPLD_FTM_PinInit_32:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_8:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??LPLD_FTM_PinInit_33
        LDR.W    R0,??DataTable14_16  ;; 0x40049008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_16  ;; 0x40049008
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_34:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_33:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+99
        BNE.N    ??LPLD_FTM_PinInit_35
        LDR.W    R0,??DataTable14_17  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable14_17  ;; 0x4004c01c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_34
??LPLD_FTM_PinInit_35:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_9:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_0:
        LDR.W    R3,??DataTable14_18  ;; 0x40039000
        CMP      R0,R3
        BNE.W    ??LPLD_FTM_PinInit_36
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_FTM_PinInit_37
        CMP      R1,#+1
        BEQ.N    ??LPLD_FTM_PinInit_38
        CMP      R1,#+8
        BEQ.N    ??LPLD_FTM_PinInit_39
        CMP      R1,#+9
        BEQ.W    ??LPLD_FTM_PinInit_40
        B.N      ??LPLD_FTM_PinInit_41
??LPLD_FTM_PinInit_37:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+8
        BNE.N    ??LPLD_FTM_PinInit_42
        LDR.W    R0,??DataTable14_19  ;; 0x40049020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_19  ;; 0x40049020
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_43:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_42:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+12
        BNE.N    ??LPLD_FTM_PinInit_44
        LDR.W    R0,??DataTable14_20  ;; 0x40049030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_20  ;; 0x40049030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_43
??LPLD_FTM_PinInit_44:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+32
        BNE.N    ??LPLD_FTM_PinInit_45
        LDR.W    R0,??DataTable14_21  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_21  ;; 0x4004a000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_43
??LPLD_FTM_PinInit_45:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_38:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BNE.N    ??LPLD_FTM_PinInit_46
        LDR.W    R0,??DataTable14_22  ;; 0x40049024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_22  ;; 0x40049024
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_47:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_46:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+13
        BNE.N    ??LPLD_FTM_PinInit_48
        LDR.W    R0,??DataTable14_23  ;; 0x40049034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_23  ;; 0x40049034
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_47
??LPLD_FTM_PinInit_48:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+33
        BNE.N    ??LPLD_FTM_PinInit_49
        LDR.W    R0,??DataTable14_24  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_24  ;; 0x4004a004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_47
??LPLD_FTM_PinInit_49:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_39:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+8
        BNE.N    ??LPLD_FTM_PinInit_50
        LDR.W    R0,??DataTable14_19  ;; 0x40049020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable14_19  ;; 0x40049020
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_51:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_50:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+12
        BNE.N    ??LPLD_FTM_PinInit_52
        LDR.W    R0,??DataTable14_20  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700
        LDR.W    R1,??DataTable14_20  ;; 0x40049030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_51
??LPLD_FTM_PinInit_52:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+32
        BNE.N    ??LPLD_FTM_PinInit_53
        LDR.W    R0,??DataTable14_21  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable14_21  ;; 0x4004a000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_51
??LPLD_FTM_PinInit_53:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_40:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BNE.N    ??LPLD_FTM_PinInit_54
        LDR.W    R0,??DataTable14_22  ;; 0x40049024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable14_22  ;; 0x40049024
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_41:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_54:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+13
        BNE.N    ??LPLD_FTM_PinInit_55
        LDR.W    R0,??DataTable14_23  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700
        LDR.W    R1,??DataTable14_23  ;; 0x40049034
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_41
??LPLD_FTM_PinInit_55:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+33
        BNE.N    ??LPLD_FTM_PinInit_56
        LDR.W    R0,??DataTable14_24  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable14_24  ;; 0x4004a004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_41
??LPLD_FTM_PinInit_56:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_36:
        LDR.N    R3,??DataTable10_6  ;; 0x400b8000
        CMP      R0,R3
        BNE.W    ??LPLD_FTM_PinInit_57
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_FTM_PinInit_58
        CMP      R1,#+1
        BEQ.N    ??LPLD_FTM_PinInit_59
        CMP      R1,#+8
        BEQ.N    ??LPLD_FTM_PinInit_60
        CMP      R1,#+9
        BEQ.N    ??LPLD_FTM_PinInit_61
        B.N      ??LPLD_FTM_PinInit_62
??LPLD_FTM_PinInit_58:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+10
        BNE.N    ??LPLD_FTM_PinInit_63
        LDR.W    R0,??DataTable14_25  ;; 0x40049028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_25  ;; 0x40049028
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_64:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_63:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+50
        BNE.N    ??LPLD_FTM_PinInit_65
        LDR.W    R0,??DataTable14_26  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_26  ;; 0x4004a048
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_64
??LPLD_FTM_PinInit_65:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_59:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+11
        BNE.N    ??LPLD_FTM_PinInit_66
        LDR.W    R0,??DataTable14_27  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_27  ;; 0x4004902c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_67:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_66:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+51
        BNE.N    ??LPLD_FTM_PinInit_68
        LDR.W    R0,??DataTable14_28  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable14_28  ;; 0x4004a04c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_67
??LPLD_FTM_PinInit_68:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_60:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+10
        BNE.N    ??LPLD_FTM_PinInit_69
        LDR.W    R0,??DataTable14_25  ;; 0x40049028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable14_25  ;; 0x40049028
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_70:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_69:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+50
        BNE.N    ??LPLD_FTM_PinInit_71
        LDR.W    R0,??DataTable14_26  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable14_26  ;; 0x4004a048
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_70
??LPLD_FTM_PinInit_71:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_61:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+11
        BNE.N    ??LPLD_FTM_PinInit_72
        LDR.W    R0,??DataTable14_27  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable14_27  ;; 0x4004902c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinInit_73:
        B.N      ??LPLD_FTM_PinInit_12
??LPLD_FTM_PinInit_72:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+51
        BNE.N    ??LPLD_FTM_PinInit_74
        LDR.W    R0,??DataTable14_28  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable14_28  ;; 0x4004a04c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_PinInit_73
??LPLD_FTM_PinInit_74:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_62:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
??LPLD_FTM_PinInit_57:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
// 1132 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     FTM_ISR
// 1133 
// 1134 /*
// 1135  * LPLD_FTM_PinInit
// 1136  * ����ʼ��ͨ��nָ�����ŵ�FTM���ù��ܣ��ڲ�����
// 1137  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1138 static uint8 LPLD_FTM_PinDeinit(FTM_Type *ftmx, FtmChnEnum_Type chn)
// 1139 {
// 1140   //����ftmx������Ӧpin��ftm���ܣ��ظ���Ĭ�Ϲ���
// 1141   if(ftmx == FTM0)
LPLD_FTM_PinDeinit:
        LDR.W    R2,??DataTable14_1  ;; 0x40038000
        CMP      R0,R2
        BNE.W    ??LPLD_FTM_PinDeinit_0
// 1142   {
// 1143     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_FTM_PinDeinit_1
        CMP      R1,#+2
        BEQ.N    ??LPLD_FTM_PinDeinit_2
        BCC.N    ??LPLD_FTM_PinDeinit_3
        CMP      R1,#+4
        BEQ.N    ??LPLD_FTM_PinDeinit_4
        BCC.N    ??LPLD_FTM_PinDeinit_5
        CMP      R1,#+6
        BEQ.W    ??LPLD_FTM_PinDeinit_6
        BCC.W    ??LPLD_FTM_PinDeinit_7
        CMP      R1,#+7
        BEQ.W    ??LPLD_FTM_PinDeinit_8
        B.N      ??LPLD_FTM_PinDeinit_9
// 1144     {
// 1145     case FTM_Ch0:
// 1146       if((PORTA->PCR[3]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_1:
        LDR.W    R0,??DataTable14_2  ;; 0x4004900c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_10
// 1147         PORTA->PCR[3] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_2  ;; 0x4004900c
        STR      R0,[R1, #+0]
// 1148       if((PORTC->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_10:
        LDR.W    R0,??DataTable14_3  ;; 0x4004b004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_11
// 1149         PORTC->PCR[1] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3  ;; 0x4004b004
        STR      R0,[R1, #+0]
// 1150       break;
// 1151     case FTM_Ch1:
// 1152       if((PORTA->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1153         PORTA->PCR[4] = PORT_PCR_MUX(0); 
// 1154       if((PORTC->PCR[2]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1155         PORTC->PCR[2] = PORT_PCR_MUX(0);
// 1156       break;
// 1157     case FTM_Ch2:
// 1158       if((PORTA->PCR[5]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1159         PORTA->PCR[5] = PORT_PCR_MUX(0); 
// 1160       if((PORTC->PCR[3]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1161         PORTC->PCR[3] = PORT_PCR_MUX(0);
// 1162       break;
// 1163     case FTM_Ch3:
// 1164       if((PORTA->PCR[6]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1165         PORTA->PCR[6] = PORT_PCR_MUX(0); 
// 1166       if((PORTC->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1167         PORTC->PCR[4] = PORT_PCR_MUX(0);
// 1168       break;
// 1169     case FTM_Ch4:
// 1170       if((PORTA->PCR[7]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1171         PORTA->PCR[7] = PORT_PCR_MUX(0); 
// 1172       if((PORTD->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1173         PORTD->PCR[4] = PORT_PCR_MUX(0);
// 1174       break;
// 1175     case FTM_Ch5:
// 1176       if((PORTA->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1177         PORTA->PCR[0] = PORT_PCR_MUX(0); 
// 1178       if((PORTD->PCR[5]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1179         PORTD->PCR[5] = PORT_PCR_MUX(0);
// 1180       break;
// 1181     case FTM_Ch6:
// 1182       if((PORTA->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1183         PORTA->PCR[1] = PORT_PCR_MUX(0); 
// 1184       if((PORTD->PCR[6]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1185         PORTD->PCR[6] = PORT_PCR_MUX(0);
// 1186       break;
// 1187     case FTM_Ch7:
// 1188       if((PORTA->PCR[2]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1189         PORTA->PCR[2] = PORT_PCR_MUX(0); 
// 1190       if((PORTD->PCR[7]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1191         PORTD->PCR[7] = PORT_PCR_MUX(0);      
// 1192       break;
// 1193     default:
// 1194       return 0;     
// 1195     }
// 1196   }
// 1197   else if(ftmx == FTM1)
// 1198   {
// 1199     switch(chn)
// 1200     {
// 1201     case FTM_Ch0:
// 1202       if((PORTA->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1203         PORTA->PCR[8] = PORT_PCR_MUX(0); 
// 1204       if((PORTA->PCR[12]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1205         PORTA->PCR[12] = PORT_PCR_MUX(0);
// 1206       if((PORTB->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1207         PORTB->PCR[0] = PORT_PCR_MUX(0);
// 1208       break;
// 1209     case FTM_Ch1:
// 1210       if((PORTA->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1211         PORTA->PCR[9] = PORT_PCR_MUX(0); 
// 1212       if((PORTA->PCR[13]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1213         PORTA->PCR[13] = PORT_PCR_MUX(0);
// 1214       if((PORTB->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1215         PORTB->PCR[1] = PORT_PCR_MUX(0);
// 1216       break;
// 1217     case FTM_PhA:
// 1218       if((PORTA->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1219         PORTA->PCR[8] = PORT_PCR_MUX(0); 
// 1220       if((PORTA->PCR[12]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(7))
// 1221         PORTA->PCR[12] = PORT_PCR_MUX(0);
// 1222       if((PORTB->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1223         PORTB->PCR[0] = PORT_PCR_MUX(0);
// 1224       break;
// 1225     case FTM_PhB:
// 1226       if((PORTA->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1227         PORTA->PCR[9] = PORT_PCR_MUX(0); 
// 1228       if((PORTA->PCR[13]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(7))
// 1229         PORTA->PCR[13] = PORT_PCR_MUX(0);
// 1230       if((PORTB->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1231         PORTB->PCR[1] = PORT_PCR_MUX(0);
// 1232       break;
// 1233     default:
// 1234       return 0;   
// 1235     }
// 1236   }
// 1237   else if(ftmx == FTM2)
// 1238   {
// 1239     switch(chn)
// 1240     {
// 1241     case FTM_Ch0:
// 1242       if((PORTA->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1243         PORTA->PCR[10] = PORT_PCR_MUX(0); 
// 1244       if((PORTB->PCR[18]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1245         PORTB->PCR[18] = PORT_PCR_MUX(0);
// 1246       break;
// 1247     case FTM_Ch1:
// 1248       if((PORTA->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1249         PORTA->PCR[11] = PORT_PCR_MUX(0); 
// 1250       if((PORTB->PCR[19]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1251         PORTB->PCR[19] = PORT_PCR_MUX(0);
// 1252       break;
// 1253     case FTM_PhA:
// 1254       if((PORTA->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1255         PORTA->PCR[10] = PORT_PCR_MUX(0); 
// 1256       if((PORTB->PCR[18]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1257         PORTB->PCR[18] = PORT_PCR_MUX(0);
// 1258       break;
// 1259     case FTM_PhB:
// 1260       if((PORTA->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1261         PORTA->PCR[11] = PORT_PCR_MUX(0); 
// 1262       if((PORTB->PCR[19]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1263         PORTB->PCR[19] = PORT_PCR_MUX(0);
// 1264       break;
// 1265     default:
// 1266       return 0;   
// 1267     }
// 1268   }
// 1269 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
// 1270   else if(ftmx == FTM3)
// 1271   {
// 1272     switch(chn)
// 1273     {
// 1274     case FTM_Ch0:
// 1275       if((PORTE->PCR[5]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1276         PORTE->PCR[5] = PORT_PCR_MUX(0); 
// 1277       if((PORTD->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1278         PORTD->PCR[0] = PORT_PCR_MUX(0);
// 1279       break;
// 1280     case FTM_Ch1:
// 1281       if((PORTE->PCR[6]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1282         PORTE->PCR[6] = PORT_PCR_MUX(0); 
// 1283       if((PORTD->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1284         PORTD->PCR[1] = PORT_PCR_MUX(0);
// 1285       break;
// 1286     case FTM_Ch2:
// 1287       if((PORTE->PCR[7]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1288         PORTE->PCR[7] = PORT_PCR_MUX(0); 
// 1289       if((PORTD->PCR[2]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1290         PORTD->PCR[2] = PORT_PCR_MUX(0);
// 1291       break;
// 1292     case FTM_Ch3:
// 1293       if((PORTE->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1294         PORTE->PCR[8] = PORT_PCR_MUX(0); 
// 1295       if((PORTD->PCR[3]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
// 1296         PORTD->PCR[3] = PORT_PCR_MUX(0);
// 1297       break;
// 1298     case FTM_Ch4:
// 1299       if((PORTE->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1300         PORTE->PCR[9] = PORT_PCR_MUX(0); 
// 1301       if((PORTC->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1302         PORTC->PCR[8] = PORT_PCR_MUX(0);
// 1303       break;
// 1304     case FTM_Ch5:
// 1305       if((PORTE->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1306         PORTE->PCR[10] = PORT_PCR_MUX(0); 
// 1307       if((PORTC->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1308         PORTC->PCR[9] = PORT_PCR_MUX(0);
// 1309       break;
// 1310     case FTM_Ch6:
// 1311       if((PORTE->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1312         PORTE->PCR[11] = PORT_PCR_MUX(0); 
// 1313       if((PORTC->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1314         PORTC->PCR[10] = PORT_PCR_MUX(0);
// 1315       break;
// 1316     case FTM_Ch7:
// 1317       if((PORTE->PCR[12]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
// 1318         PORTE->PCR[12] = PORT_PCR_MUX(0); 
// 1319       if((PORTC->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
// 1320         PORTC->PCR[11] = PORT_PCR_MUX(0);
// 1321       break;
// 1322     default:
// 1323       return 0;     
// 1324     }
// 1325   }
// 1326 #endif
// 1327   else
// 1328   {
// 1329     return 0;
// 1330   }
// 1331   return 1;
??LPLD_FTM_PinDeinit_11:
??LPLD_FTM_PinDeinit_12:
        MOVS     R0,#+1
??LPLD_FTM_PinDeinit_13:
        BX       LR               ;; return
??LPLD_FTM_PinDeinit_3:
        LDR.W    R0,??DataTable14_4  ;; 0x40049010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_14
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_4  ;; 0x40049010
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_14:
        LDR.W    R0,??DataTable14_5  ;; 0x4004b008
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_15
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_5  ;; 0x4004b008
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_15:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_2:
        LDR.W    R0,??DataTable14_6  ;; 0x40049014
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_16
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_6  ;; 0x40049014
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_16:
        LDR.W    R0,??DataTable14_7  ;; 0x4004b00c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_17
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_7  ;; 0x4004b00c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_17:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_5:
        LDR.W    R0,??DataTable14_8  ;; 0x40049018
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_18
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_8  ;; 0x40049018
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_18:
        LDR.W    R0,??DataTable14_9  ;; 0x4004b010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_19
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_9  ;; 0x4004b010
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_19:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_4:
        LDR.W    R0,??DataTable14_10  ;; 0x4004901c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_20
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_10  ;; 0x4004901c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_20:
        LDR.N    R0,??DataTable14_11  ;; 0x4004c010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_21
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_11  ;; 0x4004c010
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_21:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_7:
        LDR.N    R0,??DataTable14_12  ;; 0x40049000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_22
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_12  ;; 0x40049000
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_22:
        LDR.N    R0,??DataTable14_13  ;; 0x4004c014
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_23
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_13  ;; 0x4004c014
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_23:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_6:
        LDR.N    R0,??DataTable14_14  ;; 0x40049004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_24
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_14  ;; 0x40049004
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_24:
        LDR.N    R0,??DataTable14_15  ;; 0x4004c018
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_25
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_15  ;; 0x4004c018
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_25:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_8:
        LDR.N    R0,??DataTable14_16  ;; 0x40049008
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_26
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_16  ;; 0x40049008
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_26:
        LDR.N    R0,??DataTable14_17  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_27
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_17  ;; 0x4004c01c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_27:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_9:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinDeinit_13
??LPLD_FTM_PinDeinit_0:
        LDR.N    R2,??DataTable14_18  ;; 0x40039000
        CMP      R0,R2
        BNE.W    ??LPLD_FTM_PinDeinit_28
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_FTM_PinDeinit_29
        CMP      R1,#+1
        BEQ.N    ??LPLD_FTM_PinDeinit_30
        CMP      R1,#+8
        BEQ.N    ??LPLD_FTM_PinDeinit_31
        CMP      R1,#+9
        BEQ.N    ??LPLD_FTM_PinDeinit_32
        B.N      ??LPLD_FTM_PinDeinit_33
??LPLD_FTM_PinDeinit_29:
        LDR.N    R0,??DataTable14_19  ;; 0x40049020
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_34
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_19  ;; 0x40049020
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_34:
        LDR.N    R0,??DataTable14_20  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_35
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_20  ;; 0x40049030
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_35:
        LDR.N    R0,??DataTable14_21  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_36
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_21  ;; 0x4004a000
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_36:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_30:
        LDR.N    R0,??DataTable14_22  ;; 0x40049024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_37
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_22  ;; 0x40049024
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_37:
        LDR.N    R0,??DataTable14_23  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_38
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_23  ;; 0x40049034
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_38:
        LDR.N    R0,??DataTable14_24  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_39
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_24  ;; 0x4004a004
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_39:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_31:
        LDR.N    R0,??DataTable14_19  ;; 0x40049020
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_40
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_19  ;; 0x40049020
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_40:
        LDR.N    R0,??DataTable14_20  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1792
        BNE.N    ??LPLD_FTM_PinDeinit_41
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_20  ;; 0x40049030
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_41:
        LDR.N    R0,??DataTable14_21  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_42
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_21  ;; 0x4004a000
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_42:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_32:
        LDR.N    R0,??DataTable14_22  ;; 0x40049024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_43
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_22  ;; 0x40049024
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_43:
        LDR.N    R0,??DataTable14_23  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1792
        BNE.N    ??LPLD_FTM_PinDeinit_44
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_23  ;; 0x40049034
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_44:
        LDR.N    R0,??DataTable14_24  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_45
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_24  ;; 0x4004a004
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_45:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_33:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinDeinit_13
??LPLD_FTM_PinDeinit_28:
        LDR.N    R2,??DataTable14_29  ;; 0x400b8000
        CMP      R0,R2
        BNE.N    ??LPLD_FTM_PinDeinit_46
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_FTM_PinDeinit_47
        CMP      R1,#+1
        BEQ.N    ??LPLD_FTM_PinDeinit_48
        CMP      R1,#+8
        BEQ.N    ??LPLD_FTM_PinDeinit_49
        CMP      R1,#+9
        BEQ.N    ??LPLD_FTM_PinDeinit_50
        B.N      ??LPLD_FTM_PinDeinit_51
??LPLD_FTM_PinDeinit_47:
        LDR.N    R0,??DataTable14_25  ;; 0x40049028
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_52
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_25  ;; 0x40049028
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_52:
        LDR.N    R0,??DataTable14_26  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_53
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_26  ;; 0x4004a048
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_53:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_48:
        LDR.N    R0,??DataTable14_27  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_54
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_27  ;; 0x4004902c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_54:
        LDR.N    R0,??DataTable14_28  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_55
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_28  ;; 0x4004a04c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_55:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_49:
        LDR.N    R0,??DataTable14_25  ;; 0x40049028
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_56
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_25  ;; 0x40049028
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_56:
        LDR.N    R0,??DataTable14_26  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_57
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_26  ;; 0x4004a048
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_57:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_50:
        LDR.N    R0,??DataTable14_27  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_58
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_27  ;; 0x4004902c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_58:
        LDR.N    R0,??DataTable14_28  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_59
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_28  ;; 0x4004a04c
        STR      R0,[R1, #+0]
??LPLD_FTM_PinDeinit_59:
        B.N      ??LPLD_FTM_PinDeinit_12
??LPLD_FTM_PinDeinit_51:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinDeinit_13
??LPLD_FTM_PinDeinit_46:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinDeinit_13
// 1332 }
// 1333 
// 1334 /*
// 1335  * LPLD_FTM_QD_Init
// 1336  * FTMģ����������ģʽ��ʼ�����ڲ�����
// 1337  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1338 static uint8 LPLD_FTM_QD_Init(FTM_InitTypeDef ftm_init_structure)
// 1339 {
LPLD_FTM_QD_Init:
        PUSH     {R0-R3}
// 1340   uint8 mode = ftm_init_structure.FTM_QdMode;
        LDRB     R0,[SP, #+18]
// 1341   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R1,[SP, #+0]
// 1342  
// 1343   ftmx->MODE |= FTM_MODE_FTMEN_MASK;    //FTM2EN=1   
        LDR      R2,[R1, #+84]
        ORRS     R2,R2,#0x1
        STR      R2,[R1, #+84]
// 1344   
// 1345   ftmx->CNTIN = 0;//FTM0��������ʼֵΪ0  
        MOVS     R2,#+0
        STR      R2,[R1, #+76]
// 1346   ftmx->CNT=0;  
        MOVS     R2,#+0
        STR      R2,[R1, #+4]
// 1347   ftmx->MOD = 0xFFFF;//����ֵ  
        MOVW     R2,#+65535
        STR      R2,[R1, #+8]
// 1348   
// 1349   ftmx->QDCTRL |= mode;     //����ģʽѡ��
        LDR      R2,[R1, #+128]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R2
        STR      R0,[R1, #+128]
// 1350   ftmx->QDCTRL |= FTM_QDCTRL_QUADEN_MASK;       //ʹ����������ģʽ 
        LDR      R0,[R1, #+128]
        ORRS     R0,R0,#0x1
        STR      R0,[R1, #+128]
// 1351 
// 1352   return 1;
        MOVS     R0,#+1
        ADD      SP,SP,#+16
        BX       LR               ;; return
// 1353 }
// 1354 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1355 static uint8 LPLD_FTM_DEC_Init(FTM_InitTypeDef ftm_init_structure)
// 1356 {
LPLD_FTM_DEC_Init:
        PUSH     {R0-R3}
// 1357   
// 1358   return 0;
        MOVS     R0,#+0
        ADD      SP,SP,#+16
        BX       LR               ;; return
// 1359 }
// 1360 
// 1361 /*
// 1362  * FTM0--FTM1�жϴ�����
// 1363  * �������ļ�startup_K60.s�е��ж����������
// 1364  * �û������޸ģ������Զ������Ӧͨ���жϺ���
// 1365  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1366 void FTM0_IRQHandler(void)
// 1367 {
FTM0_IRQHandler:
        PUSH     {R7,LR}
// 1368 #if (UCOS_II > 0u)
// 1369   OS_CPU_SR  cpu_sr = 0u;
// 1370   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1371   OSIntEnter();
// 1372   OS_EXIT_CRITICAL();
// 1373 #endif
// 1374   
// 1375   FTM_ISR[0]();
        LDR.N    R0,??DataTable14_30
        LDR      R0,[R0, #+0]
        BLX      R0
// 1376   
// 1377 #if (UCOS_II > 0u)
// 1378   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1379 #endif
// 1380 }
        POP      {R0,PC}          ;; return
// 1381 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1382 void FTM1_IRQHandler(void)
// 1383 {
FTM1_IRQHandler:
        PUSH     {R7,LR}
// 1384 #if (UCOS_II > 0u)
// 1385   OS_CPU_SR  cpu_sr = 0u;
// 1386   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1387   OSIntEnter();
// 1388   OS_EXIT_CRITICAL();
// 1389 #endif
// 1390   
// 1391   FTM_ISR[1]();
        LDR.N    R0,??DataTable14_30
        LDR      R0,[R0, #+4]
        BLX      R0
// 1392   
// 1393 #if (UCOS_II > 0u)
// 1394   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1395 #endif
// 1396 }
        POP      {R0,PC}          ;; return
// 1397 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1398 void FTM2_IRQHandler(void)
// 1399 {
FTM2_IRQHandler:
        PUSH     {R7,LR}
// 1400 #if (UCOS_II > 0u)
// 1401   OS_CPU_SR  cpu_sr = 0u;
// 1402   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1403   OSIntEnter();
// 1404   OS_EXIT_CRITICAL();
// 1405 #endif
// 1406   
// 1407   FTM_ISR[2]();
        LDR.N    R0,??DataTable14_30
        LDR      R0,[R0, #+8]
        BLX      R0
// 1408   
// 1409 #if (UCOS_II > 0u)
// 1410   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1411 #endif
// 1412 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     0x4004900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     0x40049010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     0x40049014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     0x4004901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     0x40049004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_15:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_16:
        DC32     0x40049008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_17:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_18:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_19:
        DC32     0x40049020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_20:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_21:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_22:
        DC32     0x40049024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_23:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_24:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_25:
        DC32     0x40049028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_26:
        DC32     0x4004a048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_27:
        DC32     0x4004902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_28:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_29:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_30:
        DC32     FTM_ISR

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
        DC8 46H, 3AH, 5CH, 77H, 6FH, 72H, 6BH, 5CH
        DC8 63H, 6FH, 6DH, 70H, 65H, 74H, 69H, 74H
        DC8 69H, 6FH, 6EH, 5CH, 66H, 72H, 65H, 65H
        DC8 73H, 63H, 61H, 6CH, 65H, 5CH, 50H, 5FH
        DC8 66H, 72H, 65H, 65H, 73H, 74H, 79H, 6CH
        DC8 65H, 5CH, 4DH, 49H, 4EH, 45H, 5CH, 31H
        DC8 36H, 2EH, 35H, 2EH, 31H, 36H, 5CH, 6DH
        DC8 79H, 63H, 61H, 72H, 5CH, 6CH, 69H, 62H
        DC8 5CH, 4CH, 50H, 4CH, 44H, 5CH, 48H, 57H
        DC8 5CH, 48H, 57H, 5FH, 46H, 54H, 4DH, 2EH
        DC8 63H, 0
        DC8 0, 0

        END
// 1413 
// 1414 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
// 1415 void FTM3_IRQHandler(void)
// 1416 {
// 1417 #if (UCOS_II > 0u)
// 1418   OS_CPU_SR  cpu_sr = 0u;
// 1419   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1420   OSIntEnter();
// 1421   OS_EXIT_CRITICAL();
// 1422 #endif
// 1423   
// 1424   FTM_ISR[3]();
// 1425   
// 1426 #if (UCOS_II > 0u)
// 1427   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1428 #endif
// 1429 }
// 1430 #endif
// 
//    12 bytes in section .bss
//    84 bytes in section .rodata
// 3 938 bytes in section .text
// 
// 3 938 bytes of CODE  memory
//    84 bytes of CONST memory
//    12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
