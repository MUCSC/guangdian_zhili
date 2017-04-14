///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       29/May/2016  22:30:42
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\lib\LPLD\HW\HW_ADC.c
//    Command line =  
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\lib\LPLD\HW\HW_ADC.c
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
//        F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\project\mycar\iar\RAM\List\HW_ADC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC ADC0_IRQHandler
        PUBLIC ADC1_IRQHandler
        PUBLIC ADC_ISR
        PUBLIC LPLD_ADC_Chn_Enable
        PUBLIC LPLD_ADC_Deinit
        PUBLIC LPLD_ADC_DisableIrq
        PUBLIC LPLD_ADC_EnableConversion
        PUBLIC LPLD_ADC_EnableIrq
        PUBLIC LPLD_ADC_Get
        PUBLIC LPLD_ADC_GetResult
        PUBLIC LPLD_ADC_GetSC1nCOCO
        PUBLIC LPLD_ADC_Init

// F:\work\competition\freescale\P_freestyle\MINE\16.5.16\mycar\lib\LPLD\HW\HW_ADC.c
//    1 /**
//    2  * @file HW_ADC.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief ADC�ײ�ģ����غ���
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
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾����
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�������ܡ�ʵ�ַ�����
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
//   23 #include "HW_ADC.h"
//   24 
//   25 //�û��Զ����жϷ���������
//   26 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 ADC_ISR_CALLBACK ADC_ISR[2];
ADC_ISR:
        DS8 8
//   28 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   29 ADC_ISR_CALLBACK ADC_ISR[4];
//   30 #endif
//   31 static uint8 LPLD_ADC_Cal(ADC_Type *);
//   32 
//   33 /*
//   34  * LPLD_ADC_Init
//   35  * ADCͨ�ó�ʼ��������ѡ��ADCx���ɼ�ģʽ�����ȵȲ���
//   36  * 
//   37  * ����:
//   38  *    adc_init_structure--ADC��ʼ���ṹ�壬
//   39  *                        ���嶨���ADC_InitTypeDef
//   40  *
//   41  * ���:
//   42  *    0--���ô���
//   43  *    1--���óɹ�
//   44  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 uint8 LPLD_ADC_Init(ADC_InitTypeDef adc_init_structure)
//   46 {
LPLD_ADC_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R11,LR}
//   47   uint8 i;
//   48   ADC_Type *adcx = adc_init_structure.ADC_Adcx;
        LDR      R4,[SP, #+40]
//   49   uint8 diff = adc_init_structure.ADC_DiffMode;
        LDRB     R5,[SP, #+44]
//   50   uint8 mode = adc_init_structure.ADC_BitMode;
        LDRB     R0,[SP, #+45]
        STRB     R0,[SP, #+2]
//   51   uint8 time = adc_init_structure.ADC_SampleTimeCfg;
        LDRB     R6,[SP, #+46]
//   52   uint8 ltime = adc_init_structure.ADC_LongSampleTimeSel;
        LDRB     R0,[SP, #+47]
        STRB     R0,[SP, #+1]
//   53   uint8 avg = adc_init_structure.ADC_HwAvgSel;
        LDRB     R0,[SP, #+48]
        STRB     R0,[SP, #+0]
//   54   uint8 muxab = adc_init_structure.ADC_MuxSel;
        LDRB     R7,[SP, #+50]
//   55   uint8 pga = adc_init_structure.ADC_PgaGain;
        LDRB     R8,[SP, #+49]
//   56   uint8 hwtrg = adc_init_structure.ADC_HwTrgCfg;
        LDRB     R9,[SP, #+52]
//   57   ADC_ISR_CALLBACK isr_func = adc_init_structure.ADC_Isr;
        LDR      R10,[SP, #+56]
//   58   
//   59   //�������
//   60   ASSERT( (diff==ADC_SE)||(diff==ADC_DIFF) );  //�ж�ģʽѡ��
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??LPLD_ADC_Init_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BEQ.N    ??LPLD_ADC_Init_0
        MOVS     R1,#+60
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   61   ASSERT( mode<=SE_16BIT );       //�жϾ���ѡ��
??LPLD_ADC_Init_0:
        LDRB     R0,[SP, #+2]
        CMP      R0,#+4
        BLT.N    ??LPLD_ADC_Init_1
        MOVS     R1,#+61
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   62   ASSERT( (time==SAMTIME_SHORT)||(time==SAMTIME_LONG) );  //�жϲ���ʱ��ѡ��
??LPLD_ADC_Init_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??LPLD_ADC_Init_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+16
        BEQ.N    ??LPLD_ADC_Init_2
        MOVS     R1,#+62
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   63   ASSERT( ltime<=LSAMTIME_2EX );  //�жϳ�����ʱ��
??LPLD_ADC_Init_2:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+4
        BLT.N    ??LPLD_ADC_Init_3
        MOVS     R1,#+63
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   64   ASSERT( (avg&0x3)<=(HW_32AVG&0x3) );  //�ж�Ӳ��ƽ��
??LPLD_ADC_Init_3:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x3
        CMP      R0,#+4
        BCC.N    ??LPLD_ADC_Init_4
        MOVS     R1,#+64
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   65   ASSERT( (muxab==MUX_ADXXA)||(muxab==MUX_ADXXB) );  //�ж�ADC����ABѡ��
??LPLD_ADC_Init_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??LPLD_ADC_Init_5
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+16
        BEQ.N    ??LPLD_ADC_Init_5
        MOVS     R1,#+65
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   66   ASSERT( (pga&0x7)<=(LSAMTIME_2EX&0x7));  //�ж�PGA
??LPLD_ADC_Init_5:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ANDS     R0,R8,#0x7
        CMP      R0,#+4
        BLT.N    ??LPLD_ADC_Init_6
        MOVS     R1,#+66
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   67   
//   68   //����ADCʱ��
//   69   if(adcx == ADC0)
??LPLD_ADC_Init_6:
        LDR.W    R0,??DataTable10_3  ;; 0x4003b000
        CMP      R4,R0
        BNE.N    ??LPLD_ADC_Init_7
//   70   {
//   71     i=0;
        MOVS     R11,#+0
//   72     SIM->SCGC6 |= SIM_SCGC6_ADC0_MASK;   // ����ADC0ʱ��
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   73   }
//   74   else if(adcx == ADC1)
//   75   {
//   76     i=1;
//   77     SIM->SCGC3 |= SIM_SCGC3_ADC1_MASK;   // ����ADC1ʱ��
//   78   }
//   79 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   80   else if(adcx == ADC2)
//   81   {
//   82     i=2;
//   83     SIM->SCGC6 |= SIM_SCGC6_ADC2_MASK;   // ����ADC1ʱ��
//   84   }
//   85   else if(adcx == ADC3)
//   86   {
//   87     i=3;
//   88     SIM->SCGC3 |= SIM_SCGC3_ADC3_MASK;   // ����ADC1ʱ��
//   89   }
//   90 #endif
//   91   else 
//   92   {
//   93     return 0;
//   94   }
//   95 
//   96   if(adc_init_structure.ADC_CalEnable == TRUE)
??LPLD_ADC_Init_8:
        LDRB     R0,[SP, #+51]
        CMP      R0,#+1
        BNE.N    ??LPLD_ADC_Init_9
//   97     LPLD_ADC_Cal(adcx);  //����ADCУ׼
        MOVS     R0,R4
        BL       LPLD_ADC_Cal
//   98   
//   99   //����ADCCFG1�Ĵ���
//  100   adcx->CFG1  =  0& (~ADC_CFG1_ADLPC_MASK)         // ����Ϊ����ʹ�ý�������
//  101                   | ADC_CFG1_ADIV(ADIV_1)          // ADC����ʱ�ӷ�ƵΪ 1
//  102                   | time                           // ���ó���ʱ�����ģʽ
//  103                   | ADC_CFG1_ADICLK(ADICLK_BUS_2)  // ADC����ʱ��ԴΪ BusClk
//  104                   | ADC_CFG1_MODE(mode);           //����ADCת������
??LPLD_ADC_Init_9:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[SP, #+2]
        LSLS     R0,R0,#+2
        ANDS     R0,R0,#0xC
        ORRS     R0,R0,R6
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+8]
//  105 
//  106   //����ADCCFG2�Ĵ���
//  107   adcx->CFG2 = 0 & (~ADC_CFG2_ADACKEN_MASK)   //�����첽ʱ�����
//  108                  | muxab        // ADC����ѡ��
//  109                  | ADC_CFG2_ADHSC_MASK        // ����ת��
//  110                  | ADC_CFG2_ADLSTS(ltime);    // ������ʱ��ʱ������ѡ��
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[SP, #+1]
        ANDS     R0,R0,#0x3
        ORRS     R0,R0,R7
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+12]
//  111                                               // �ܲ������ڼ�K60�����ĵ� page:840
//  112   //�����趨��ֵ
//  113   adcx->CV1  = 0x1234u ; 
        MOVW     R0,#+4660
        STR      R0,[R4, #+24]
//  114   adcx->CV2  = 0x5678u ;
        MOVW     R0,#+22136
        STR      R0,[R4, #+28]
//  115   
//  116   adcx->SC2  = 0 | (hwtrg & ADC_SC2_ADTRG_MASK) //���ô�����ʽ
//  117                  & (~ADC_SC2_ACFE_MASK)         //�رձȽϹ���
//  118                  & (~ADC_SC2_DMAEN_MASK)        //�ر�DMA
//  119                  |  ADC_SC2_ACREN_MASK          //ʹ�ܷ�Χ�Ƚ�
//  120                  |  ADC_SC2_ACFGT_MASK          //ʹ�ܴ��ڱȽϹ���
//  121                  |  ADC_SC2_REFSEL(REFSEL_EXT); //ѡ���ⲿ�ο�ԴVREFH��VREFL
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ANDS     R0,R9,#0x40
        ORRS     R0,R0,#0x18
        STR      R0,[R4, #+32]
//  122   
//  123   if(adc_init_structure.ADC_DmaEnable == TRUE) 
        LDRB     R0,[SP, #+53]
        CMP      R0,#+1
        BNE.N    ??LPLD_ADC_Init_10
//  124     adcx->SC2  |= ADC_SC2_DMAEN_MASK;   //ʹ��DMA
        LDR      R0,[R4, #+32]
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+32]
//  125 
//  126   adcx->SC3  = 0 & (~ADC_SC3_CAL_MASK)          //�ر�У׼
//  127                  & (~ADC_SC3_ADCO_MASK)         //ѡ��һ��ת��
//  128                  |  avg;        //Ӳ��ƽ��
??LPLD_ADC_Init_10:
        LDRB     R0,[SP, #+0]
        STR      R0,[R4, #+36]
//  129   
//  130   adcx->PGA  = pga<<ADC_PGA_PGAG_SHIFT; 
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+16
        STR      R0,[R4, #+80]
//  131   
//  132   //У׼��Ϻ������³�ʼ��ADC�Ĵ���
//  133   //adcx->SC1[0] = ADC_SC1_ADCH(AD31);    //��λSC1
//  134   adcx->SC1[hwtrg & 0x01] = diff;         //���õ��ˡ��������
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ANDS     R0,R9,#0x1
        STR      R5,[R4, R0, LSL #+2]
//  135   
//  136   if(isr_func!= NULL)
        MOV      R0,R10
        CMP      R0,#+0
        BEQ.N    ??LPLD_ADC_Init_11
//  137   {
//  138     ADC_ISR[i] = isr_func;
        LDR.W    R0,??DataTable10_5
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        STR      R10,[R0, R11, LSL #+2]
//  139   }
//  140   
//  141   return 1;
??LPLD_ADC_Init_11:
        MOVS     R0,#+1
??LPLD_ADC_Init_12:
        POP      {R1,R4-R11}
        LDR      PC,[SP], #+20    ;; return
??LPLD_ADC_Init_7:
        LDR.W    R0,??DataTable10_6  ;; 0x400bb000
        CMP      R4,R0
        BNE.N    ??LPLD_ADC_Init_13
        MOVS     R11,#+1
        LDR.W    R0,??DataTable10_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable10_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_ADC_Init_8
??LPLD_ADC_Init_13:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Init_12
//  142 }
//  143 
//  144 /*
//  145  * LPLD_ADC_Deinit
//  146  * ADC����ʼ������������ADCģ��
//  147  * 
//  148  * ����:
//  149  *    adc_init_structure--ADC��ʼ���ṹ�壬
//  150  *                        ���嶨���ADC_InitTypeDef
//  151  *
//  152  * ���:
//  153  *    0--���ô���
//  154  *    1--���óɹ�
//  155  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  156 uint8 LPLD_ADC_Deinit(ADC_InitTypeDef adc_init_structure)
//  157 {
LPLD_ADC_Deinit:
        PUSH     {R0-R3}
//  158   ADC_Type *adcx = adc_init_structure.ADC_Adcx;
        LDR      R0,[SP, #+0]
//  159   uint8 hwtrg = adc_init_structure.ADC_HwTrgCfg;
        LDRB     R1,[SP, #+12]
//  160   
//  161   adcx->SC1[hwtrg & 0x01] = ADC_SC1_ADCH(AD31);    //��λSC1
        MOVS     R2,#+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1
        STR      R2,[R0, R1, LSL #+2]
//  162   
//  163   //����ADCʱ��
//  164   if(adcx == ADC0)
        LDR.W    R1,??DataTable10_3  ;; 0x4003b000
        CMP      R0,R1
        BNE.N    ??LPLD_ADC_Deinit_0
//  165   {
//  166     SIM->SCGC6 &= ~(SIM_SCGC6_ADC0_MASK);   // �ر�ADC0ʱ��
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  167   }
//  168   else if(adcx == ADC1)
//  169   {
//  170     SIM->SCGC3 &= ~(SIM_SCGC3_ADC1_MASK);   // �ر�ADC1ʱ��
//  171   }
//  172 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  173   else if(adcx == ADC2)
//  174   {
//  175     SIM->SCGC3 &= ~(SIM_SCGC6_ADC2_MASK);   // ����ADC1ʱ��
//  176   }
//  177   else if(adcx == ADC3)
//  178   {
//  179     SIM->SCGC3 &= ~(SIM_SCGC3_ADC3_MASK);   // ����ADC1ʱ��
//  180   }
//  181 #endif
//  182   else 
//  183   {
//  184     return 0;
//  185   }
//  186   
//  187   return 1;
??LPLD_ADC_Deinit_1:
        MOVS     R0,#+1
??LPLD_ADC_Deinit_2:
        ADD      SP,SP,#+16
        BX       LR               ;; return
??LPLD_ADC_Deinit_0:
        LDR.W    R1,??DataTable10_6  ;; 0x400bb000
        CMP      R0,R1
        BNE.N    ??LPLD_ADC_Deinit_3
        LDR.W    R0,??DataTable10_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable10_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_ADC_Deinit_1
??LPLD_ADC_Deinit_3:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Deinit_2
//  188 }
//  189 
//  190 /*
//  191  * LPLD_ADC_Get
//  192  * ��������ģʽ��ȡADת�����
//  193  * 
//  194  * ����:
//  195  *    adcx--ADCxģ���
//  196  *      |__ADC0          --ADC0
//  197  *      |__ADC1          --ADC1
//  198  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  199  *      |__ADC2          --ADC2
//  200  *      |__ADC3          --ADC3
//  201  *    chn--ADC�ɼ�����ͨ��,��������ֲ�K60P144M100SF2RM��118ҳ
//  202  *      ADC0
//  203  *      |__DAD0          --���(ADC0_DP0��ADC0_DM0)/����(ADC0_DP0)
//  204  *      |__DAD1          --���(ADC0_DP1��ADC0_DM1)/����(ADC0_DP1)
//  205  *      |__DAD2          --���(PGA0_DP��PGA0_DM)/����(PGA0_DP)
//  206  *      |__DAD3          --���(ADC0_DP3��ADC0_DM3)/����(ADC0_DP3)
//  207  *      |__AD4           --����A(����)/����B(ADC0_SE4b--PTC2)
//  208  *      |__AD5           --����A(����)/����B(ADC0_SE5b--PTD1)
//  209  *      |__AD6           --����A(����)/����B(ADC0_SE6b--PTD5)
//  210  *      |__AD7           --����A(����)/����B(ADC0_SE7b--PTD6)
//  211  *      |__AD8           --����(ADC0_SE8--PTB0)
//  212  *      |__AD9           --����(ADC0_SE9--PTB1)
//  213  *      |__AD10          --����(ADC0_SE10--PTA7)
//  214  *      |__AD11          --����(ADC0_SE11--PTA8)
//  215  *      |__AD12          --����(ADC0_SE12--PTB2)
//  216  *      |__AD13          --����(ADC0_SE13--PTB3)
//  217  *      |__AD14          --����(ADC0_SE14--PTC0)
//  218  *      |__AD15          --����(ADC0_SE15--PTC1)
//  219  *      |__AD16          --����(ADC0_SE16)
//  220  *      |__AD17          --����(ADC0_SE17-PTE24)
//  221  *      |__AD18          --����(ADC0_SE18--PTE25)
//  222  *      |__AD19          --����(ADC0_DM0)
//  223  *      |__AD20          --����(ADC0_DM1)
//  224  *      |__AD23          --����(DAC0)
//  225  *      |__AD26          --�¶ȴ�����
//  226  *      |__AD27          --Bandgap
//  227  *      |__AD29          --���(-VREFH)/����(VREFH)
//  228  *      |__AD30          --����(VREFL)
//  229  *      ADC1
//  230  *      |__DAD0          --���(ADC1_DP0��ADC1_DM0)/����(ADC1_DP0)
//  231  *      |__DAD1          --���(ADC1_DP1��ADC1_DM1)/����(ADC1_DP1)
//  232  *      |__DAD2          --���(PGA1_DP��PGA1_DM)/����(PGA1_DP)
//  233  *      |__DAD3          --���(ADC1_DP3��ADC1_DM3)/����(ADC1_DP3)
//  234  *      |__AD4           --����A(ADC1_SE4a--PTE0)/����B(ADC1_SE4b--PTC8)
//  235  *      |__AD5           --����A(ADC1_SE5a--PTE1)/����B(ADC1_SE5b--PTC9)
//  236  *      |__AD6           --����A(ADC1_SE6a--PTE2)/����B(ADC1_SE6b--PTC10)
//  237  *      |__AD7           --����A(ADC1_SE7a--PTE3)/����B(ADC1_SE7b--PTC11)
//  238  *      |__AD8           --����(ADC1_SE8--PTB0)
//  239  *      |__AD9           --����(ADC1_SE9--PTB1)
//  240  *      |__AD10          --����(ADC1_SE10--PTB4)
//  241  *      |__AD11          --����(ADC1_SE11--PTB5)
//  242  *      |__AD12          --����(ADC1_SE12--PTB6)
//  243  *      |__AD13          --����(ADC1_SE13--PTB7)
//  244  *      |__AD14          --����(ADC1_SE14--PTB10)
//  245  *      |__AD15          --����(ADC1_SE15--PTB11)
//  246  *      |__AD16          --����(ADC1_SE16)
//  247  *      |__AD17          --����(ADC1_SE17--PTA17)
//  248  *      |__AD18          --����(VREF)
//  249  *      |__AD19          --����(ADC1_DM0)
//  250  *      |__AD20          --����(ADC1_DM1)
//  251  *      |__AD23          --����(DAC1)
//  252  *      |__AD26          --�¶ȴ�����
//  253  *      |__AD27          --Bandgap
//  254  *      |__AD29          --���(-VREFH)/����(VREFH)
//  255  *      |__AD30          --����(VREFL)
//  256  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  257  *          ��������ֲ�K60P144M120SF2RM��131ҳ
//  258  *      ADC2      
//  259  *      |__DAD0          --���(ADC2_DP0��ADC2_DM0)/����(ADC2_DP0)
//  260  *      |__DAD1          --���(ADC2_DP1��ADC2_DM1)/����(ADC2_DP1)
//  261  *      |__DAD2          --���(PGA2_DP��PGA2_DM)/����(PGA2_DP)
//  262  *      |__DAD3          --���(ADC2_DP3��ADC2_DM3)/����(ADC2_DP3)
//  263  *      |__AD4           --����A(ADC2_SE4a--PTB20)/����B(����)
//  264  *      |__AD5           --����A(ADC2_SE5a--PTB21)/����B(����)
//  265  *      |__AD6           --����A(����)/����B(����)
//  266  *      |__AD7           --����A(����)/����B(����)
//  267  *      |__AD8           --����(ADC2_SE8--PTB0)
//  268  *      |__AD9           --����(ADC2_SE9--PTB1)
//  269  *      |__AD10          --����(ADC2_SE10)
//  270  *      |__AD11          --����(ADC2_SE11)
//  271  *      |__AD12          --����(ADC2_SE12--PTA29)
//  272  *      |__AD13          --����(ADC2_SE13--PTA28)
//  273  *      |__AD14          --����(ADC2_SE14--PTA27)
//  274  *      |__AD15          --����(ADC2_SE15--PTA26)
//  275  *      |__AD16          --����(ADC2_SE16--PTE8)
//  276  *      |__AD17          --����(ADC2_SE17--PTE9)
//  277  *      |__AD18          --����(ADC2_SE18)
//  278  *      |__AD19          --����(ADC2_DM0)
//  279  *      |__AD20          --����(ADC2_DM1)
//  280  *      |__AD23          --����(DAC2)
//  281  *      |__AD26          --�¶ȴ�����
//  282  *      |__AD27          --Bandgap
//  283  *      |__AD29          --���(-VREFH)/����(VREFH)
//  284  *      |__AD30          --����(VREFL)
//  285  *      ADC3
//  286  *      |__DAD0          --���(ADC3_DP0��ADC3_DM0)/����(ADC3_DP0)
//  287  *      |__DAD1          --���(ADC3_DP1��ADC3_DM1)/����(ADC3_DP1)
//  288  *      |__DAD2          --���(PGA3_DP��PGA3_DM)/����(PGA3_DP)
//  289  *      |__DAD3          --���(ADC3_DP3��ADC3_DM3)/����(ADC3_DP3)
//  290  *      |__AD4           --����A(ADC3_SE4a--PTA10)/����B(ADC3_SE4b--PTE27)
//  291  *      |__AD5           --����A(ADC3_SE5a--PTA9)/����B(ADC3_SE5b--PTE26)
//  292  *      |__AD6           --����A(ADC3_SE6a--PTA6)/����B(����)
//  293  *      |__AD7           --����A(ADC3_SE7a--PTE28)/����B(����)
//  294  *      |__AD8           --����(ADC3_SE8--PTB0)
//  295  *      |__AD9           --����(ADC3_SE9--PTB1)
//  296  *      |__AD10          --����(ADC3_SE10)
//  297  *      |__AD11          --����(ADC3_SE11)
//  298  *      |__AD12          --����(ADC3_SE12)
//  299  *      |__AD13          --����(ADC3_SE13)
//  300  *      |__AD14          --����(ADC3_SE14)
//  301  *      |__AD15          --����(ADC3_SE15--PTA11)
//  302  *      |__AD16          --����(ADC3_SE16--PTE11)
//  303  *      |__AD17          --����(ADC3_SE17--PTE12)
//  304  *      |__AD18          --����(VREF)
//  305  *      |__AD19          --����(ADC3_DM0)
//  306  *      |__AD20          --����(ADC3_DM1)
//  307  *      |__AD23          --����(DAC3)
//  308  *      |__AD26          --�¶ȴ�����
//  309  *      |__AD27          --Bandgap
//  310  *      |__AD29          --���(-VREFH)/����(VREFH)
//  311  *      |__AD30          --����(VREFL)
//  312  * ���:
//  313  *    ADͨ��ת��ֵ(�Ҷ���)����Ϊ���ת���������Ϊ�����Ʋ����ʽ(��ǿ��ת��Ϊint16)
//  314  *
//  315  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  316 uint16 LPLD_ADC_Get(ADC_Type *adcx, AdcChnEnum_Type chn)
//  317 {
//  318   adcx->SC1[0] &= ~(ADC_SC1_AIEN_MASK);
LPLD_ADC_Get:
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x40
        STR      R2,[R0, #+0]
//  319   adcx->SC1[0] &= ~(ADC_SC1_ADCH_MASK);
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+5
        LSLS     R2,R2,#+5
        STR      R2,[R0, #+0]
//  320   adcx->SC1[0] |= ADC_SC1_ADCH(chn);
        LDR      R2,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1F
        ORRS     R1,R1,R2
        STR      R1,[R0, #+0]
//  321   while((adcx->SC1[0]&ADC_SC1_COCO_MASK) == 0); //�ȴ�ת�����  
??LPLD_ADC_Get_0:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??LPLD_ADC_Get_0
//  322   return adcx->R[0];
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  323 }
//  324 
//  325 /*
//  326  * LPLD_ADC_EnableConversion
//  327  * ʹ��ADCxת��ͨ�������������жϡ�Ӳ��������ģʽ
//  328  * 
//  329  * ����:
//  330  *    adcx--ADCxģ���
//  331  *      |__ADC0          --ADC0
//  332  *      |__ADC1          --ADC1
//  333  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  334  *      |__ADC2          --ADC2
//  335  *      |__ADC3          --ADC3
//  336  *    chn--ADC�ɼ�����ͨ��,��������ֲ�K60P144M100SF2RM��118ҳ
//  337  *      ȡֵͬLPLD_ADC_Get�β�chn
//  338  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  339  *          MK60F��������ֲ�K60P144M120SF2RM��131ҳ
//  340  *    ab--SC1�Ĵ���A��Bͨ��ѡ��
//  341  *      |__0          --Aת��ͨ��
//  342  *      |__1          --Bת��ͨ��
//  343  *    irq--�Ƿ�ʹ��ת������ж�
//  344  *      |__TRUE       --ʹ��ת������ж�
//  345  *      |__FALSE      --����ת������ж�
//  346  *
//  347  * ���:
//  348  *    ��
//  349  *
//  350  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  351 void LPLD_ADC_EnableConversion(ADC_Type *adcx, AdcChnEnum_Type chn, uint8 ab, boolean irq)
//  352 {
LPLD_ADC_EnableConversion:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  353   //�������
//  354   ASSERT( ab<=1 );  //�ж�AB���ƼĴ���
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BLT.N    ??LPLD_ADC_EnableConversion_0
        MOV      R1,#+354
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  355   ASSERT( irq<=1 );  //�ж��Ƿ�ʹ���ж�
??LPLD_ADC_EnableConversion_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BLT.N    ??LPLD_ADC_EnableConversion_1
        MOVW     R1,#+355
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  356   if(irq == TRUE)
??LPLD_ADC_EnableConversion_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_ADC_EnableConversion_2
//  357   {
//  358     adcx->SC1[ab] |= (ADC_SC1_AIEN_MASK);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R4, R6, LSL #+2]
        ORRS     R0,R0,#0x40
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R4, R6, LSL #+2]
//  359   }
//  360   adcx->SC1[ab] &= ~(ADC_SC1_ADCH_MASK);
??LPLD_ADC_EnableConversion_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R4, R6, LSL #+2]
        LSRS     R0,R0,#+5
        LSLS     R0,R0,#+5
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R4, R6, LSL #+2]
//  361   adcx->SC1[ab] |= ADC_SC1_ADCH(chn);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R4, R6, LSL #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R1,R5,#0x1F
        ORRS     R0,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R4, R6, LSL #+2]
//  362 }
        POP      {R0,R4-R7,PC}    ;; return
//  363 
//  364 /*
//  365  * LPLD_ADC_GetResult
//  366  * ��ȡADת�����
//  367  * 
//  368  * ����:
//  369  *    adcx--ADCxģ���
//  370  *      |__ADC0          --ADC0
//  371  *      |__ADC1          --ADC1
//  372  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  373  *      |__ADC2          --ADC2
//  374  *      |__ADC3          --ADC3
//  375  *    ab--SC1�Ĵ���A��Bͨ��ѡ��
//  376  *      |__0          --Aת��ͨ��
//  377  *      |__1          --Bת��ͨ��
//  378  *
//  379  * ���:
//  380  *    ADͨ��ת��ֵ(�Ҷ���)����Ϊ���ת���������Ϊ�����Ʋ����ʽ(��ǿ��ת��Ϊint16)
//  381  *
//  382  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  383 uint16 LPLD_ADC_GetResult(ADC_Type *adcx, uint8 ab)
//  384 {
LPLD_ADC_GetResult:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  385   //�������
//  386   ASSERT( ab<=1 );  //�ж�AB���ƼĴ���
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BLT.N    ??LPLD_ADC_GetResult_0
        MOV      R1,#+386
        LDR.N    R0,??DataTable10_2
        BL       assert_failed
//  387   return adcx->R[ab];
??LPLD_ADC_GetResult_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//  388 }
//  389 
//  390 /*
//  391  * LPLD_ADC_GetSC1nCOCO
//  392  * ��ȡSC1�Ĵ�����COCOλ��1�ı��
//  393  * 
//  394  * ����:
//  395  *    adcx--ADCxģ���
//  396  *      |__ADC0          --ADC0
//  397  *      |__ADC1          --ADC1
//  398  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  399  *      |__ADC2          --ADC2
//  400  *      |__ADC3          --ADC3
//  401  *
//  402  * ���:
//  403 *    0--SC1A�Ĵ���COCOλ��1
//  404 *    1--SC1B�Ĵ���COCOλ��1
//  405  *
//  406  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  407 uint8 LPLD_ADC_GetSC1nCOCO(ADC_Type *adcx)
//  408 {
//  409   if(adcx->SC1[0] & ADC_SC1_COCO_MASK)
LPLD_ADC_GetSC1nCOCO:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??LPLD_ADC_GetSC1nCOCO_0
//  410     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_GetSC1nCOCO_1
//  411   if(adcx->SC1[1] & ADC_SC1_COCO_MASK)
??LPLD_ADC_GetSC1nCOCO_0:
        LDR      R0,[R0, #+4]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_ADC_GetSC1nCOCO_2
//  412     return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_ADC_GetSC1nCOCO_1
//  413   return -1;
??LPLD_ADC_GetSC1nCOCO_2:
        MOVS     R0,#+255
??LPLD_ADC_GetSC1nCOCO_1:
        BX       LR               ;; return
//  414 }
//  415 
//  416 /*
//  417  * LPLD_ADC_EnableIrq
//  418  * ʹ��ADCx�ж�
//  419  * 
//  420  * ����:
//  421  *    adc_init_structure--PIT��ʼ���ṹ�壬
//  422  *                        ���嶨���ADC_InitTypeDef
//  423  *
//  424  * ���:
//  425  *    0--���ô���
//  426  *    1--���óɹ�
//  427  *
//  428  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  429 uint8 LPLD_ADC_EnableIrq(ADC_InitTypeDef adc_init_structure)
//  430 {
LPLD_ADC_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  431   uint8 i;
//  432   ADC_Type *adcx = adc_init_structure.ADC_Adcx;
        LDR      R0,[SP, #+8]
//  433   
//  434   if(adcx == ADC0)
        LDR.N    R1,??DataTable10_3  ;; 0x4003b000
        CMP      R0,R1
        BNE.N    ??LPLD_ADC_EnableIrq_0
//  435     i=0;
        MOVS     R0,#+0
//  436   else if(adcx == ADC1)
//  437     i=1;
//  438 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  439   else if(adcx == ADC2)
//  440     i=2;
//  441   else if(adcx == ADC3)
//  442     i=3;
//  443 #endif
//  444   else
//  445     return 0;
//  446 
//  447   enable_irq((IRQn_Type)(ADC0_IRQn + i));
??LPLD_ADC_EnableIrq_1:
        ADDS     R0,R0,#+57
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  448   
//  449   return 1;
        MOVS     R0,#+1
??LPLD_ADC_EnableIrq_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_ADC_EnableIrq_0:
        LDR.N    R1,??DataTable10_6  ;; 0x400bb000
        CMP      R0,R1
        BNE.N    ??LPLD_ADC_EnableIrq_3
        MOVS     R0,#+1
        B.N      ??LPLD_ADC_EnableIrq_1
??LPLD_ADC_EnableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_EnableIrq_2
//  450 }
//  451 
//  452 /*
//  453  * LPLD_ADC_DisableIrq
//  454  * ����ADCx�ж�
//  455  * 
//  456  * ����:
//  457  *    adc_init_structure--PIT��ʼ���ṹ�壬
//  458  *                        ���嶨���ADC_InitTypeDef
//  459  *
//  460  * ���:
//  461  *    0--���ô���
//  462  *    1--���óɹ�
//  463  *
//  464  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  465 uint8 LPLD_ADC_DisableIrq(ADC_InitTypeDef adc_init_structure)
//  466 {
LPLD_ADC_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  467   uint8 i;
//  468   ADC_Type *adcx = adc_init_structure.ADC_Adcx;
        LDR      R0,[SP, #+8]
//  469   
//  470   if(adcx == ADC0)
        LDR.N    R1,??DataTable10_3  ;; 0x4003b000
        CMP      R0,R1
        BNE.N    ??LPLD_ADC_DisableIrq_0
//  471     i=0;
        MOVS     R0,#+0
//  472   else if(adcx == ADC1)
//  473     i=1;
//  474 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  475   else if(adcx == ADC2)
//  476     i=2;
//  477   else if(adcx == ADC3)
//  478     i=3;
//  479 #endif
//  480   else
//  481     return 0;
//  482 
//  483   disable_irq((IRQn_Type)(ADC0_IRQn + i));
??LPLD_ADC_DisableIrq_1:
        ADDS     R0,R0,#+57
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  484   
//  485   return 1;
        MOVS     R0,#+1
??LPLD_ADC_DisableIrq_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_ADC_DisableIrq_0:
        LDR.N    R1,??DataTable10_6  ;; 0x400bb000
        CMP      R0,R1
        BNE.N    ??LPLD_ADC_DisableIrq_3
        MOVS     R0,#+1
        B.N      ??LPLD_ADC_DisableIrq_1
??LPLD_ADC_DisableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_DisableIrq_2
//  486 }
//  487 
//  488 /*
//  489  * LPLD_ADC_Chn_Enable
//  490  * ʹ��ADCx��Ӧת��ͨ����AD�ɼ�����
//  491  * 
//  492  * ����:
//  493  *    adcx--ADCxģ���
//  494  *      |__ADC0          --ADC0
//  495  *      |__ADC1          --ADC1
//  496  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  497  *      |__ADC2          --ADC2
//  498  *      |__ADC3          --ADC3
//  499  *    chn--ADC�ɼ�����ͨ��,��������ֲ�K60P144M100SF2RM��118ҳ
//  500  *      ADC0
//  501  *      |__DAD0          --���(ADC0_DP0��ADC0_DM0)/����(ADC0_DP0)
//  502  *      |__DAD1          --���(ADC0_DP1��ADC0_DM1)/����(ADC0_DP1)
//  503  *      |__DAD2          --���(PGA0_DP��PGA0_DM)/����(PGA0_DP)
//  504  *      |__DAD3          --���(ADC0_DP3��ADC0_DM3)/����(ADC0_DP3)
//  505  *      |__AD4           --����A(����)/����B(ADC0_SE4b--PTC2)
//  506  *      |__AD5           --����A(����)/����B(ADC0_SE5b--PTD1)
//  507  *      |__AD6           --����A(����)/����B(ADC0_SE6b--PTD5)
//  508  *      |__AD7           --����A(����)/����B(ADC0_SE7b--PTD6)
//  509  *      |__AD8           --����(ADC0_SE8--PTB0)
//  510  *      |__AD9           --����(ADC0_SE9--PTB1)
//  511  *      |__AD10          --����(ADC0_SE10--PTA7)
//  512  *      |__AD11          --����(ADC0_SE11--PTA8)
//  513  *      |__AD12          --����(ADC0_SE12--PTB2)
//  514  *      |__AD13          --����(ADC0_SE13--PTB3)
//  515  *      |__AD14          --����(ADC0_SE14--PTC0)
//  516  *      |__AD15          --����(ADC0_SE15--PTC1)
//  517  *      |__AD16          --����(ADC0_SE16)
//  518  *      |__AD17          --����(ADC0_SE17-PTE24)
//  519  *      |__AD18          --����(ADC0_SE18--PTE25)
//  520  *      |__AD19          --����(ADC0_DM0)
//  521  *      |__AD20          --����(ADC0_DM1)
//  522  *      |__AD23          --����(DAC0)
//  523  *      |__AD26          --�¶ȴ�����
//  524  *      |__AD27          --Bandgap
//  525  *      |__AD29          --���(-VREFH)/����(VREFH)
//  526  *      |__AD30          --����(VREFL)
//  527  *      ADC1
//  528  *      |__DAD0          --���(ADC1_DP0��ADC1_DM0)/����(ADC1_DP0)
//  529  *      |__DAD1          --���(ADC1_DP1��ADC1_DM1)/����(ADC1_DP1)
//  530  *      |__DAD2          --���(PGA1_DP��PGA1_DM)/����(PGA1_DP)
//  531  *      |__DAD3          --���(ADC1_DP3��ADC1_DM3)/����(ADC1_DP3)
//  532  *      |__AD4           --����A(ADC1_SE4a--PTE0)/����B(ADC1_SE4b--PTC8)
//  533  *      |__AD5           --����A(ADC1_SE5a--PTE1)/����B(ADC1_SE5b--PTC9)
//  534  *      |__AD6           --����A(ADC1_SE6a--PTE2)/����B(ADC1_SE6b--PTC10)
//  535  *      |__AD7           --����A(ADC1_SE7a--PTE3)/����B(ADC1_SE7b--PTC11)
//  536  *      |__AD8           --����(ADC1_SE8--PTB0)
//  537  *      |__AD9           --����(ADC1_SE9--PTB1)
//  538  *      |__AD10          --����(ADC1_SE10--PTB4)
//  539  *      |__AD11          --����(ADC1_SE11--PTB5)
//  540  *      |__AD12          --����(ADC1_SE12--PTB6)
//  541  *      |__AD13          --����(ADC1_SE13--PTB7)
//  542  *      |__AD14          --����(ADC1_SE14--PTB10)
//  543  *      |__AD15          --����(ADC1_SE15--PTB11)
//  544  *      |__AD16          --����(ADC1_SE16)
//  545  *      |__AD17          --����(ADC1_SE17--PTA17)
//  546  *      |__AD18          --����(VREF)
//  547  *      |__AD19          --����(ADC1_DM0)
//  548  *      |__AD20          --����(ADC1_DM1)
//  549  *      |__AD23          --����(DAC1)
//  550  *      |__AD26          --�¶ȴ�����
//  551  *      |__AD27          --Bandgap
//  552  *      |__AD29          --���(-VREFH)/����(VREFH)
//  553  *      |__AD30          --����(VREFL)
//  554  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  555  *          ��������ֲ�K60P144M120SF2RM��131ҳ
//  556  *      ADC2      
//  557  *      |__DAD0          --���(ADC2_DP0��ADC2_DM0)/����(ADC2_DP0)
//  558  *      |__DAD1          --���(ADC2_DP1��ADC2_DM1)/����(ADC2_DP1)
//  559  *      |__DAD2          --���(PGA2_DP��PGA2_DM)/����(PGA2_DP)
//  560  *      |__DAD3          --���(ADC2_DP3��ADC2_DM3)/����(ADC2_DP3)
//  561  *      |__AD4           --����A(ADC2_SE4a--PTB20)/����B(����)
//  562  *      |__AD5           --����A(ADC2_SE5a--PTB21)/����B(����)
//  563  *      |__AD6           --����A(����)/����B(����)
//  564  *      |__AD7           --����A(����)/����B(����)
//  565  *      |__AD8           --����(ADC2_SE8--PTB0)
//  566  *      |__AD9           --����(ADC2_SE9--PTB1)
//  567  *      |__AD10          --����(ADC2_SE10)
//  568  *      |__AD11          --����(ADC2_SE11)
//  569  *      |__AD12          --����(ADC2_SE12--PTA29)
//  570  *      |__AD13          --����(ADC2_SE13--PTA28)
//  571  *      |__AD14          --����(ADC2_SE14--PTA27)
//  572  *      |__AD15          --����(ADC2_SE15--PTA26)
//  573  *      |__AD16          --����(ADC2_SE16--PTE8)
//  574  *      |__AD17          --����(ADC2_SE17--PTE9)
//  575  *      |__AD18          --����(ADC2_SE18)
//  576  *      |__AD19          --����(ADC2_DM0)
//  577  *      |__AD20          --����(ADC2_DM1)
//  578  *      |__AD23          --����(DAC2)
//  579  *      |__AD26          --�¶ȴ�����
//  580  *      |__AD27          --Bandgap
//  581  *      |__AD29          --���(-VREFH)/����(VREFH)
//  582  *      |__AD30          --����(VREFL)
//  583  *      ADC3
//  584  *      |__DAD0          --���(ADC3_DP0��ADC3_DM0)/����(ADC3_DP0)
//  585  *      |__DAD1          --���(ADC3_DP1��ADC3_DM1)/����(ADC3_DP1)
//  586  *      |__DAD2          --���(PGA3_DP��PGA3_DM)/����(PGA3_DP)
//  587  *      |__DAD3          --���(ADC3_DP3��ADC3_DM3)/����(ADC3_DP3)
//  588  *      |__AD4           --����A(ADC3_SE4a--PTA10)/����B(ADC3_SE4b--PTE27)
//  589  *      |__AD5           --����A(ADC3_SE5a--PTA9)/����B(ADC3_SE5b--PTE26)
//  590  *      |__AD6           --����A(ADC3_SE6a--PTA6)/����B(����)
//  591  *      |__AD7           --����A(ADC3_SE7a--PTE28)/����B(����)
//  592  *      |__AD8           --����(ADC3_SE8--PTB0)
//  593  *      |__AD9           --����(ADC3_SE9--PTB1)
//  594  *      |__AD10          --����(ADC3_SE10)
//  595  *      |__AD11          --����(ADC3_SE11)
//  596  *      |__AD12          --����(ADC3_SE12)
//  597  *      |__AD13          --����(ADC3_SE13)
//  598  *      |__AD14          --����(ADC3_SE14)
//  599  *      |__AD15          --����(ADC3_SE15--PTA11)
//  600  *      |__AD16          --����(ADC3_SE16--PTE11)
//  601  *      |__AD17          --����(ADC3_SE17--PTE12)
//  602  *      |__AD18          --����(VREF)
//  603  *      |__AD19          --����(ADC3_DM0)
//  604  *      |__AD20          --����(ADC3_DM1)
//  605  *      |__AD23          --����(DAC3)
//  606  *      |__AD26          --�¶ȴ�����
//  607  *      |__AD27          --Bandgap
//  608  *      |__AD29          --���(-VREFH)/����(VREFH)
//  609  *      |__AD30          --����(VREFL)
//  610  * ���:
//  611  *    0--���ô���
//  612  *    1--���óɹ�
//  613  *
//  614  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  615 uint8 LPLD_ADC_Chn_Enable(ADC_Type *adcx, AdcChnEnum_Type chn)
//  616 {
//  617   //�жϸ���������a��b
//  618   uint8 mux = (adcx->CFG2 & ADC_CFG2_MUXSEL_MASK)>>ADC_CFG2_MUXSEL_SHIFT;
LPLD_ADC_Chn_Enable:
        LDR      R2,[R0, #+12]
        UBFX     R2,R2,#+4,#+1
//  619     
//  620   if(chn > AD30)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+31
        BLT.N    ??LPLD_ADC_Chn_Enable_0
//  621     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
//  622   
//  623   //��ͬ��ͨ����Ӧ��ͬ�����ţ������Ҫ�жϲ�����
//  624   if(adcx == ADC0)
??LPLD_ADC_Chn_Enable_0:
        LDR.N    R3,??DataTable10_3  ;; 0x4003b000
        CMP      R0,R3
        BNE.N    ??LPLD_ADC_Chn_Enable_2
//  625   {
//  626     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_3
        SUBS     R0,R0,#+4
        BEQ.N    ??LPLD_ADC_Chn_Enable_4
        SUBS     R0,R0,#+1
        BEQ.N    ??LPLD_ADC_Chn_Enable_5
        SUBS     R0,R0,#+1
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_6
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_7
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_8
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_9
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_10
        SUBS     R0,R0,#+2
        BEQ.N    ??LPLD_ADC_Chn_Enable_11
        SUBS     R0,R0,#+1
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_12
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_13
        SUBS     R0,R0,#+4
        BEQ.N    ??LPLD_ADC_Chn_Enable_13
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_13
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_13
        B.N      ??LPLD_ADC_Chn_Enable_14
//  627     {
//  628       case DAD0:   //ADC0_DP0 -- PGA0_DP
//  629       case DAD1:   //ADC0_DP1 -- PGA2_DP
//  630       case DAD2:   //PGA0_DP
//  631       case DAD3:   //ADC0_DP3 -- PGA1_DP
//  632         break;
//  633       case AD4:   //ADC0_SE4b -- PTC2     
//  634         if(mux == 1)    //b
//  635           PORTC->PCR[2] =  PORT_PCR_MUX(0);
//  636         break;
//  637       case AD5:   //ADC0_SE5b -- PTD1     
//  638         if(mux == 1)    //b
//  639           PORTD->PCR[1] =  PORT_PCR_MUX(0);
//  640         break;
//  641       case AD6:   //ADC0_SE6b -- PTD5
//  642       case AD7:   //ADC0_SE7b -- PTD6     
//  643         if(mux == 1)    //b
//  644           PORTD->PCR[chn-1] =  PORT_PCR_MUX(0);
//  645         break;
//  646       case AD8:  //ADC0_SE8 -- PTB0
//  647       case AD9:  //ADC0_SE9 -- PTB1
//  648         PORTB->PCR[chn-8] =  PORT_PCR_MUX(0);
//  649         break;
//  650       case AD10:  //ADC0_SE10 -- PTA7
//  651       case AD11:  //ADC0_SE11 -- PTA8
//  652         PORTA->PCR[chn-3] =  PORT_PCR_MUX(0);
//  653         break;
//  654       case AD12:  //ADC0_SE12 -- PTB2
//  655       case AD13:  //ADC0_SE13 -- PTB3
//  656         PORTB->PCR[chn-10] =  PORT_PCR_MUX(0);
//  657         break;
//  658       case AD14:  //ADC0_SE14 -- PTC0
//  659       case AD15:  //ADC0_SE15 -- PTC1
//  660         PORTC->PCR[chn-14] =  PORT_PCR_MUX(0);
//  661         break;
//  662       case AD16:   //ADC0_SE16
//  663         break;
//  664       case AD17:   //ADC0_SE17 -- PTE24
//  665       case AD18:   //ADC0_SE18 -- PTE25
//  666         PORTE->PCR[chn+7] =  PORT_PCR_MUX(0);
//  667         break;
//  668       case AD19:   //ADC0_DM0 -- PGA0_DM
//  669       case AD20:   //ADC0_DM1 -- PGA2_DM
//  670       case AD23:   //ADC0_SE23 -- DAC0_OUT
//  671       case AD26:   //Temperature Sensor (S.E)
//  672       case AD27:   //Bandgap (S.E)
//  673       case AD29:   //VREFH (S.E)
//  674       case AD30:   //VREFL
//  675         break;
//  676       default:
//  677         return 0;  
//  678     }
//  679   }
//  680   else if(adcx == ADC1)
//  681   {
//  682     switch(chn)
//  683     {
//  684       case DAD0:   //ADC1_DP0 -- PGA1_DP
//  685       case DAD1:   //ADC1_DP1 -- PGA3_DP
//  686       case DAD2:   //PGA1_DP 
//  687       case DAD3:   //ADC1_DP3 -- PGA0_DP
//  688         break;
//  689       case AD4:   //ADC1_SE4a -- PTE0     //ADC1_SE4b -- PTC8
//  690       case AD5:   //ADC1_SE5a -- PTE1     //ADC1_SE5b -- PTC9
//  691       case AD6:   //ADC1_SE6a -- PTE2     //ADC1_SE6b -- PTC10
//  692       case AD7:   //ADC1_SE7a -- PTE3     //ADC1_SE7b -- PTC11
//  693         if(mux == 0)    //a
//  694           PORTE->PCR[chn-4] =  PORT_PCR_MUX(0);
//  695         else            //b
//  696           PORTC->PCR[chn+4] =  PORT_PCR_MUX(0);
//  697         break;
//  698       case AD8:  //ADC1_SE8 -- PTB0
//  699       case AD9:  //ADC1_SE9 -- PTB1
//  700         PORTB->PCR[chn-8] =  PORT_PCR_MUX(0);
//  701         break;
//  702       case AD10:  //ADC1_SE10 -- PTB4
//  703       case AD11:  //ADC1_SE11 -- PTB5
//  704       case AD12:  //ADC1_SE12 -- PTB6
//  705       case AD13:  //ADC1_SE13 -- PTB7
//  706         PORTB->PCR[chn-6] =  PORT_PCR_MUX(0);
//  707         break;
//  708       case AD14:  //ADC1_SE14 -- PTB10
//  709       case AD15:  //ADC1_SE15 -- PTB11
//  710         PORTB->PCR[chn-4] =  PORT_PCR_MUX(0);
//  711         break;
//  712       case AD16:   //ADC1_SE16
//  713         break;
//  714       case AD17:  //ADC1_SE17 -- PTA17
//  715         PORTA->PCR[chn] =  PORT_PCR_MUX(0);
//  716         break;
//  717       case AD18:   //VREF Output
//  718       case AD19:   //ADC1_DM0 -- PGA1_DM
//  719       case AD20:   //ADC1_DM1 -- PGA3_DM
//  720       case AD23:   //DAC1_OUT 
//  721       case AD26:   //Temperature Sensor (S.E)
//  722       case AD27:   //Bandgap (S.E)
//  723       case AD29:   //VREFH (S.E)
//  724       case AD30:   //VREFL
//  725         break;
//  726       default:
//  727         return 0;  
//  728     }
//  729   }
//  730 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  731   else if(adcx == ADC2)
//  732   {
//  733     switch(chn)
//  734     {
//  735       case DAD0:   //ADC2_DP0 -- PGA1_DP
//  736       case DAD1:   //ADC2_DP1 -- PGA3_DP
//  737       case DAD2:   //PGA2_DP 
//  738       case DAD3:   //ADC2_DP3 -- PGA0_DP
//  739         break;
//  740       case AD4:   //ADC2_SE4a -- PTB20     
//  741       case AD5:   //ADC2_SE5a -- PTB21
//  742         if(mux == 0)    //a
//  743           PORTB->PCR[chn+16] =  PORT_PCR_MUX(0);
//  744         //else            //b
//  745           //PORTC->PCR[chn+4] =  PORT_PCR_MUX(0);
//  746         break;
//  747       case AD6:  //ADC1_SE6      
//  748       case AD7:  //ADC1_SE7
//  749         break;        
//  750       case AD8:  //ADC2_SE8 -- PTB0
//  751       case AD9:  //ADC2_SE9 -- PTB1
//  752         PORTB->PCR[chn-8] =  PORT_PCR_MUX(0);
//  753         break;
//  754       case AD10:  //ADC1_SE10
//  755       case AD11:  //ADC1_SE11
//  756         break;
//  757       case AD12:  //ADC2_SE12 -- PTA29
//  758       case AD13:  //ADC2_SE13 -- PTA28
//  759       case AD14:  //ADC2_SE14 -- PTA27
//  760       case AD15:  //ADC2_SE15 -- PTA26
//  761         PORTA->PCR[41-chn] =  PORT_PCR_MUX(0);
//  762         break;
//  763       case AD16:   //ADC2_SE16 -- PTE8
//  764       case AD17:   //ADC2_SE17 -- PTE9
//  765         PORTE->PCR[chn-8] =  PORT_PCR_MUX(0);
//  766         break;
//  767       case AD18:   //VREF Output
//  768       case AD19:   //ADC1_DM0 -- PGA1_DM
//  769       case AD20:   //ADC1_DM1 -- PGA3_DM
//  770       case AD23:   //DAC1_OUT 
//  771       case AD26:   //Temperature Sensor (S.E)
//  772       case AD27:   //Bandgap (S.E)
//  773       case AD29:   //VREFH (S.E)
//  774       case AD30:   //VREFL
//  775         break;
//  776       default:
//  777         return 0;  
//  778     }
//  779   }
//  780   else if(adcx == ADC3)
//  781   {
//  782     switch(chn)
//  783     {
//  784       case DAD0:   //ADC3_DP0 -- PGA1_DP
//  785       case DAD1:   //ADC3_DP1 -- PGA3_DP
//  786       case DAD2:   //PGA3_DP 
//  787       case DAD3:   //ADC3_DP3 -- PGA0_DP
//  788         break;
//  789       case AD4:   //ADC3_SE4a -- PTA10  //ADC3_SE4b -- PTE27   
//  790       case AD5:   //ADC3_SE5a -- PTA9   //ADC3_SE5b -- PTE26
//  791         if(mux == 0)    //a
//  792           PORTA->PCR[14 - chn] =  PORT_PCR_MUX(0);
//  793         else            //b
//  794           PORTE->PCR[31 - chn] =  PORT_PCR_MUX(0);
//  795         break;
//  796       case AD6:   //ADC3_SE6a--PTA6
//  797         PORTA->PCR[6] =  PORT_PCR_MUX(0);
//  798         break;     
//  799       case AD7:   //ADC3_SE7a--PTE28
//  800         PORTE->PCR[28] =  PORT_PCR_MUX(0);
//  801         break;       
//  802       case AD8:  //ADC3_SE8 -- PTB0
//  803       case AD9:  //ADC3_SE9 -- PTB1
//  804         PORTB->PCR[chn-8] =  PORT_PCR_MUX(0);
//  805         break;
//  806       case AD10:  //ADC3_SE10
//  807       case AD11:  //ADC3_SE11
//  808       case AD12:  //ADC3_SE12 
//  809       case AD13:  //ADC3_SE13 
//  810       case AD14:  //ADC3_SE14 
//  811         break;
//  812       case AD15:  //ADC3_SE15 -- PTA11
//  813         PORTA->PCR[11] =  PORT_PCR_MUX(0);
//  814         break;
//  815       case AD16:   //ADC3_SE16 -- PTE11
//  816       case AD17:   //ADC3_SE17 -- PTE12
//  817         PORTE->PCR[chn-5] =  PORT_PCR_MUX(0);
//  818         break;
//  819       case AD18:   //VREF Output
//  820       case AD19:   //ADC1_DM0 -- PGA1_DM
//  821       case AD20:   //ADC1_DM1 -- PGA3_DM
//  822       case AD23:   //DAC1_OUT 
//  823       case AD26:   //Temperature Sensor (S.E)
//  824       case AD27:   //Bandgap (S.E)
//  825       case AD29:   //VREFH (S.E)
//  826       case AD30:   //VREFL
//  827         break;
//  828       default:
//  829         return 0;  
//  830     }
//  831   }
//  832 #endif
//  833   else
//  834   {
//  835     return 0;
//  836   }
//  837   
//  838   return 1;
??LPLD_ADC_Chn_Enable_3:
??LPLD_ADC_Chn_Enable_15:
        MOVS     R0,#+1
??LPLD_ADC_Chn_Enable_1:
        BX       LR               ;; return
??LPLD_ADC_Chn_Enable_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_ADC_Chn_Enable_16
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_8  ;; 0x4004b008
        STR      R0,[R1, #+0]
??LPLD_ADC_Chn_Enable_16:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_5:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_ADC_Chn_Enable_17
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_9  ;; 0x4004c004
        STR      R0,[R1, #+0]
??LPLD_ADC_Chn_Enable_17:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_6:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_ADC_Chn_Enable_18
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+311296
        STR      R0,[R1, #-4]
??LPLD_ADC_Chn_Enable_18:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_7:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-32]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_8:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+299008
        STR      R0,[R1, #-12]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_9:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-40]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_10:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+307200
        STR      R0,[R1, #-56]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_11:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_12:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+315392
        STR      R0,[R1, #+28]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_13:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_14:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
??LPLD_ADC_Chn_Enable_2:
        LDR.N    R3,??DataTable10_6  ;; 0x400bb000
        CMP      R0,R3
        BNE.N    ??LPLD_ADC_Chn_Enable_19
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_20
        SUBS     R0,R0,#+4
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_21
        SUBS     R0,R0,#+4
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_22
        SUBS     R0,R0,#+2
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_23
        SUBS     R0,R0,#+4
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_24
        SUBS     R0,R0,#+2
        BEQ.N    ??LPLD_ADC_Chn_Enable_25
        SUBS     R0,R0,#+1
        BEQ.N    ??LPLD_ADC_Chn_Enable_26
        SUBS     R0,R0,#+1
        CMP      R0,#+2
        BLS.N    ??LPLD_ADC_Chn_Enable_27
        SUBS     R0,R0,#+5
        BEQ.N    ??LPLD_ADC_Chn_Enable_27
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_27
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_27
        B.N      ??LPLD_ADC_Chn_Enable_28
??LPLD_ADC_Chn_Enable_20:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_21:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_ADC_Chn_Enable_29
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+315392
        STR      R0,[R1, #-16]
        B.N      ??LPLD_ADC_Chn_Enable_30
??LPLD_ADC_Chn_Enable_29:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+307200
        STR      R0,[R1, #+16]
??LPLD_ADC_Chn_Enable_30:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_22:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-32]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_23:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-24]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_24:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-16]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_25:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_26:
        MOVS     R0,#+0
        LDR.N    R2,??DataTable10_10  ;; 0x40049000
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R0,[R2, R1, LSL #+2]
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_27:
        B.N      ??LPLD_ADC_Chn_Enable_15
??LPLD_ADC_Chn_Enable_28:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
??LPLD_ADC_Chn_Enable_19:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
//  839 }
//  840 
//  841 /*
//  842  * ADC_Cal
//  843  * ADCģ��У׼�������ڲ�����
//  844  * 
//  845  * ����:
//  846  *    adcx--ADCģ���
//  847  *      |__ADC0         -ADC0ģ��
//  848  *      |__ADC1         -ADC1ģ��
//  849  *      <ע:ֻ��MK60Fϵ�к���ADC2,ADC3>
//  850  *      |__ADC2         -ADC0ģ��
//  851  *      |__ADC3         -ADC1ģ��
//  852  * ���:
//  853  *    0--���ô���
//  854  *    1--���óɹ�
//  855  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  856 static uint8 LPLD_ADC_Cal(ADC_Type *adcx)
//  857 {
//  858   uint16 cal_var;
//  859     
//  860   //Ϊ�Զ�У׼���ò���
//  861   //Ϊ���У׼���ȣ�������Ϊ��
//  862   //32��Ӳ��ƽ����ADCK������4MHz
//  863   //�ο���=Vdda����������ģʽ
//  864   //�ɺ��Ե����ã�
//  865   //����ͨ����ת��ģʽ�������ܡ��ȽϹ��ܡ����ȡ���ֵ���
//  866   //����ADCCFG1�Ĵ���
//  867   adcx->CFG1  = 0 &(~ADC_CFG1_ADLPC_MASK)          // ������������
//  868                   | ADC_CFG1_ADIV(ADIV_8)          // ADC����ʱ�ӷ�ƵΪ8
//  869                   | ADC_CFG1_ADLSMP_MASK           // ���ó�ʱ�����ģʽ
//  870                   | ADC_CFG1_ADICLK(ADICLK_BUS_2); // ADC����ʱ��ԴΪ BusClk/2
LPLD_ADC_Cal:
        MOVS     R1,#+113
        STR      R1,[R0, #+8]
//  871 
//  872   //����ADCCFG2�Ĵ���
//  873   adcx->CFG2 = 0 & (~ADC_CFG2_ADACKEN_MASK)
//  874                  | ADC_CFG2_ADHSC_MASK         // ����ת��
//  875                  | ADC_CFG2_ADLSTS(LSAMTIME_20EX); // ������ʱ��ʱ������ѡ�� ����20��ʱ�����ڣ���24��ADCK����
        MOVS     R1,#+4
        STR      R1,[R0, #+12]
//  876                                                // �ܲ������ڼ�K60�����ĵ� page:840
//  877   //�����趨��ֵ
//  878   adcx->CV1  = 0x1234u ; 
        MOVW     R1,#+4660
        STR      R1,[R0, #+24]
//  879   adcx->CV2  = 0x5678u ;
        MOVW     R1,#+22136
        STR      R1,[R0, #+28]
//  880   
//  881   adcx->SC2 = 0 & (~ADC_SC2_ADTRG_MASK)        //ʹ������������ΪУ׼
//  882                 | ADC_SC2_REFSEL(REFSEL_EXT);  //ѡ���ⲿ�ο�ԴVREFH��VREFL
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//  883     
//  884   adcx->SC3 &= ( ~ADC_SC3_ADCO_MASK & ~ADC_SC3_AVGS_MASK );  //���õ���ת�������ƽ����־
        LDR      R1,[R0, #+36]
        BICS     R1,R1,#0xB
        STR      R1,[R0, #+36]
//  885   adcx->SC3 |= ( ADC_SC3_AVGE_MASK | ADC_SC3_AVGS(HW_32AVG) );//��ƽ����־�����õ�������ƽ׼
        LDR      R1,[R0, #+36]
        ORRS     R1,R1,#0x7
        STR      R1,[R0, #+36]
//  886   
//  887   adcx->SC3 |= ADC_SC3_CAL_MASK ;                            //��ʼУ׼
        LDR      R1,[R0, #+36]
        ORRS     R1,R1,#0x80
        STR      R1,[R0, #+36]
//  888   
//  889   while((adcx->SC1[0] & ADC_SC1_COCO_MASK)== 0x00 );         //�ȴ�У׼���
??LPLD_ADC_Cal_0:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??LPLD_ADC_Cal_0
//  890   	
//  891   if ((adcx->SC3& ADC_SC3_CALF_MASK) == ADC_SC3_CALF_MASK )
        LDR      R1,[R0, #+36]
        LSLS     R1,R1,#+25
        BPL.N    ??LPLD_ADC_Cal_1
//  892   {  
//  893    return 0;    //��鵽У׼���󣬷��ش���
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Cal_2
//  894   }
//  895   // Calculate plus-side calibration
//  896   cal_var  = 0x00;
??LPLD_ADC_Cal_1:
        MOVS     R1,#+0
//  897   cal_var  = adcx->CLP0;       
        LDR      R1,[R0, #+76]
//  898   cal_var += adcx->CLP1;      
        LDR      R2,[R0, #+72]
        ADDS     R1,R2,R1
//  899   cal_var += adcx->CLP2;      
        LDR      R2,[R0, #+68]
        ADDS     R1,R2,R1
//  900   cal_var += adcx->CLP3;      
        LDR      R2,[R0, #+64]
        ADDS     R1,R2,R1
//  901   cal_var += adcx->CLP4;      
        LDR      R2,[R0, #+60]
        ADDS     R1,R2,R1
//  902   cal_var += adcx->CLPS;      
        LDR      R2,[R0, #+56]
        ADDS     R1,R2,R1
//  903   cal_var  = cal_var/2;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R2,#+2
        SDIV     R1,R1,R2
//  904   cal_var |= 0x8000; // Set MSB
        ORRS     R1,R1,#0x8000
//  905   
//  906   adcx->PG = ADC_PG_PG(cal_var);
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+44]
//  907 
//  908   // Calculate minus-side calibration
//  909   cal_var = 0x00;
        MOVS     R1,#+0
//  910   cal_var =  adcx->CLM0; 
        LDR      R1,[R0, #+108]
//  911   cal_var += adcx->CLM1;
        LDR      R2,[R0, #+104]
        ADDS     R1,R2,R1
//  912   cal_var += adcx->CLM2;
        LDR      R2,[R0, #+100]
        ADDS     R1,R2,R1
//  913   cal_var += adcx->CLM3;
        LDR      R2,[R0, #+96]
        ADDS     R1,R2,R1
//  914   cal_var += adcx->CLM4;
        LDR      R2,[R0, #+92]
        ADDS     R1,R2,R1
//  915   cal_var += adcx->CLMS;
        LDR      R2,[R0, #+88]
        ADDS     R1,R2,R1
//  916   cal_var = cal_var/2;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R2,#+2
        SDIV     R1,R1,R2
//  917   cal_var |= 0x8000; // Set MSB
        ORRS     R1,R1,#0x8000
//  918 
//  919   adcx->MG   = ADC_MG_MG(cal_var); 
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+48]
//  920   adcx->SC3 &= ~ADC_SC3_CAL_MASK ; //���У���־
        LDR      R1,[R0, #+36]
        BICS     R1,R1,#0x80
        STR      R1,[R0, #+36]
//  921   
//  922   return 1;
        MOVS     R0,#+1
??LPLD_ADC_Cal_2:
        BX       LR               ;; return
//  923 }
//  924 
//  925 /*
//  926  * ADC0--ADC1�жϴ�������
//  927  * �������ļ�startup_K60.s�е��ж�����������
//  928  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  929  */
//  930 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  931 void ADC0_IRQHandler(void)
//  932 {
ADC0_IRQHandler:
        PUSH     {R7,LR}
//  933 #if (UCOS_II > 0u)
//  934   OS_CPU_SR  cpu_sr = 0u;
//  935   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  936   OSIntEnter();
//  937   OS_EXIT_CRITICAL();
//  938 #endif
//  939   
//  940   //�����û��Զ����жϷ���
//  941   ADC_ISR[0]();  
        LDR.N    R0,??DataTable10_5
        LDR      R0,[R0, #+0]
        BLX      R0
//  942   
//  943 #if (UCOS_II > 0u)
//  944   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  945 #endif
//  946 }
        POP      {R0,PC}          ;; return
//  947 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  948 void ADC1_IRQHandler(void)
//  949 {
ADC1_IRQHandler:
        PUSH     {R7,LR}
//  950 #if (UCOS_II > 0u)
//  951   OS_CPU_SR  cpu_sr = 0u;
//  952   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  953   OSIntEnter();
//  954   OS_EXIT_CRITICAL();
//  955 #endif
//  956   
//  957   //�����û��Զ����жϷ���
//  958   ADC_ISR[1]();  
        LDR.N    R0,??DataTable10_5
        LDR      R0,[R0, #+4]
        BLX      R0
//  959   
//  960 #if (UCOS_II > 0u)
//  961   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  962 #endif
//  963 }
        POP      {R0,PC}          ;; return

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
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     ADC_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     0x4004c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x40049000

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
        DC8 5CH, 48H, 57H, 5FH, 41H, 44H, 43H, 2EH
        DC8 63H, 0
        DC8 0, 0

        END
//  964 
//  965 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  966 void ADC2_IRQHandler(void)
//  967 {
//  968 #if (UCOS_II > 0u)
//  969   OS_CPU_SR  cpu_sr = 0u;
//  970   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  971   OSIntEnter();
//  972   OS_EXIT_CRITICAL();
//  973 #endif
//  974   
//  975   //�����û��Զ����жϷ���
//  976   ADC_ISR[2]();  
//  977   
//  978 #if (UCOS_II > 0u)
//  979   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  980 #endif
//  981 }
//  982 
//  983 void ADC3_IRQHandler(void)
//  984 {
//  985 #if (UCOS_II > 0u)
//  986   OS_CPU_SR  cpu_sr = 0u;
//  987   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  988   OSIntEnter();
//  989   OS_EXIT_CRITICAL();
//  990 #endif
//  991   
//  992   //�����û��Զ����жϷ���
//  993   ADC_ISR[2]();  
//  994   
//  995 #if (UCOS_II > 0u)
//  996   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  997 #endif
//  998 }
//  999 #endif
// 1000 
// 
//     8 bytes in section .bss
//    84 bytes in section .rodata
// 1 522 bytes in section .text
// 
// 1 522 bytes of CODE  memory
//    84 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: none