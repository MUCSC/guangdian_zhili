///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.2.8542/W32 for ARM       08/Apr/2017  17:19:04
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\lib\CPU\system_MK60.c
//    Command line =  
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\lib\CPU\system_MK60.c
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
//        C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\project\mycar\iar\FLASH\List\system_MK60.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Toggle_b
        EXTERN LPLD_PLL_Setup
        EXTERN LPLD_UART_Init
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memcpy4
        EXTERN common_relocate
        EXTERN g_bus_clock
        EXTERN g_core_clock
        EXTERN g_flash_clock
        EXTERN g_flexbus_clock
        EXTERN printf

        PUBLIC DefaultISR
        PUBLIC HardFault_Handler
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit

// C:\Users\Chron\Desktop\智能车\私家车_葛峰\代码\mycar\lib\CPU\system_MK60.c
//    1 /**
//    2  * @file system_MK60.c
//    3  * @version 1.2.1[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MK60系列单片机系统配置文件
//    6  *
//    7  * 更改建议:禁止修改
//    8  *
//    9  * 该代码提供系统配置函数以及一个储存系统主频的全局变量。
//   10  * 配置函数主要负责建立系统各模块的时钟。
//   11  * 代码还实现常见的系统中断函数。
//   12  *
//   13  * 版权所有:北京拉普兰德电子技术有限公司
//   14  * http://www.lpld.cn
//   15  * mail:support@lpld.cn
//   16  *
//   17  * @par
//   18  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   19  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   20  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   21  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   22  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   23  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   24  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   25  */
//   26 
//   27 #include <stdint.h>
//   28 #include "common.h"
//   29 
//   30 #define DISABLE_WDOG    1
//   31 
//   32 /*----------------------------------------------------------------------------
//   33   定义时钟相关值
//   34  *----------------------------------------------------------------------------*/
//   35 #define CPU_XTAL32k_CLK_HZ              32768u          //外部32k时钟晶振频率，单位Hz    
//   36 #define CPU_INT_SLOW_CLK_HZ             32768u          //慢速内部振荡器的值，单位Hz
//   37 #define CPU_INT_FAST_CLK_HZ             4000000u        //快速内部振荡器的值，单位Hz
//   38 #define DEFAULT_SYSTEM_CLOCK            100000000u      //默认系统主频，单位Hz
//   39 
//   40 static void flash_identify (void);
//   41 static void cpu_identify (void);
//   42 static void Diagnostic_Reset_Source(void);
//   43 /**
//   44  * @brief 系统主频（单位Hz）
//   45  */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   46 uint32_t SystemCoreClock = DEFAULT_SYSTEM_CLOCK;
SystemCoreClock:
        DATA
        DC32 100000000
//   47 
//   48 /**
//   49  * 初始化系统
//   50  *
//   51  * @param  none
//   52  * @return none
//   53  *
//   54  * @brief  初始化MCU硬件系统，包括开放IO时钟、初始化主频、初始化调试串口，
//   55  *         打印调试信息。SystemInit由MCU启动文件调用。
//   56  *         
//   57  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void SystemInit (void) {
SystemInit:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   59   UART_InitTypeDef term_port_structure;
//   60   UART_FIFO_Config_T Uart_Fifo;
//   61   //使能全部IO时钟
//   62   SIM->SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   63               | SIM_SCGC5_PORTB_MASK
//   64               | SIM_SCGC5_PORTC_MASK
//   65               | SIM_SCGC5_PORTD_MASK
//   66               | SIM_SCGC5_PORTE_MASK );
        LDR.W    R0,??DataTable6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable6  ;; 0x40048038
        STR      R0,[R1, #+0]
//   67 #if (DISABLE_WDOG)
//   68   //禁用看门狗模块
//   69   WDOG->UNLOCK = (uint16_t)0xC520u;     
        MOVW     R0,#+50464
        LDR.W    R1,??DataTable6_1  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   70 
//   71   WDOG->UNLOCK  = (uint16_t)0xD928u;  
        MOVW     R0,#+55592
        LDR.W    R1,??DataTable6_1  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   72   WDOG->STCTRLH = (uint16_t)0x01D2u;
        MOV      R0,#+466
        LDR.W    R1,??DataTable6_2  ;; 0x40052000
        STRH     R0,[R1, #+0]
//   73 #endif /* (DISABLE_WDOG) */
//   74   
//   75   //将中断向量表、需在RAM中运行的函数等数据拷贝到RAM中
//   76   common_relocate();
        BL       common_relocate
//   77   
//   78   //初始化各部分时钟：系统内核主频、总线时钟、FlexBus时钟、Flash时钟
//   79   LPLD_PLL_Setup(CORE_CLK_MHZ);
        MOVS     R0,#+96
        BL       LPLD_PLL_Setup
//   80   
//   81   //更新内核主频
//   82   SystemCoreClockUpdate();
        BL       SystemCoreClockUpdate
//   83   
//   84   //获取各部分时钟
//   85   g_core_clock = SystemCoreClock;
        LDR.W    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//   86   g_bus_clock = g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> SIM_CLKDIV1_OUTDIV2_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//   87   g_flexbus_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV3_MASK) >> SIM_CLKDIV1_OUTDIV3_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+20,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//   88   g_flash_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> SIM_CLKDIV1_OUTDIV4_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+16,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_8
        STR      R0,[R1, #+0]
//   89   
//   90   //初始化用于打印调试信息的串口模块
//   91   //TERM_PORT为UART通道，在k60_card.h中定义
//   92   //TERMINAL_BAUD为UART波特率，在k60_card.h中定义
//   93   Uart_Fifo.FIFO_Enable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//   94   Uart_Fifo.FIFO_WaterMark = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//   95   term_port_structure.UART_Uartx = TERM_PORT;
        LDR.W    R0,??DataTable6_9  ;; 0x400ea000
        STR      R0,[SP, #+12]
//   96   term_port_structure.UART_BaudRate = TERMINAL_BAUD;
        MOVS     R0,#+115200
        STR      R0,[SP, #+16]
//   97   term_port_structure.UART_RxPin = PTE25;
        MOVS     R0,#+149
        STRB     R0,[SP, #+21]
//   98   term_port_structure.UART_TxPin = PTE24;
        MOVS     R0,#+148
        STRB     R0,[SP, #+20]
//   99   term_port_structure.TxFIFO = Uart_Fifo;
        ADD      R0,SP,#+26
        ADD      R1,SP,#+0
        MOVS     R2,#+3
        BL       __aeabi_memcpy
//  100   /*term_port_structure.*/
//  101   LPLD_UART_Init(term_port_structure);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  102   
//  103   //打印系统调试信息
//  104 #ifdef DEBUG_PRINT     
//  105   printf("\r\n");   
        ADR.N    R0,??DataTable3  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       printf
//  106   printf("*********** 基于拉普兰德K60底层库 http://www.lpld.cn ***********\r\n");
        LDR.W    R0,??DataTable6_10
        BL       printf
//  107   printf("OSKinetis固件库版本:%s\tmail:support@lpld.cn\r\n", OSKinetis_Version);
        LDR.W    R1,??DataTable6_11
        LDR.W    R0,??DataTable6_12
        BL       printf
//  108   printf("系统内核时钟:%dMHz\t总线时钟:%dMHz\r\n", g_core_clock/1000000u, g_bus_clock/1000000u);
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_13  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_13  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable6_14
        BL       printf
//  109   printf("FlexBus时钟:%dMHz\tFlash时钟:%dMHz\r\n", g_flexbus_clock/1000000u, g_flash_clock/1000000u);
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_13  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_13  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable6_15
        BL       printf
//  110   printf("系统启动完毕，若要禁用调试输出请定义PRINT_ON_OFF为1(k60_card.h)\r\n");
        LDR.W    R0,??DataTable6_16
        BL       printf
//  111   cpu_identify();
        BL       cpu_identify
//  112   Diagnostic_Reset_Source();
        BL       Diagnostic_Reset_Source
//  113   printf("********************************************************************\r\n");
        LDR.W    R0,??DataTable6_17
        BL       printf
//  114 #endif
//  115   
//  116 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  117 
//  118 /**
//  119  * 更新SystemCoreClock
//  120  *
//  121  * @param  none
//  122  * @return none
//  123  *
//  124  * @brief  更新全局变量SystemCoreClock的值，以便获取最新的系统内核频率。
//  125  *         
//  126  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 void SystemCoreClockUpdate (void) {
//  128   uint32_t temp;
//  129 #if (defined(CPU_MK60DZ10))
//  130   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  131   temp =  CANNED_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
SystemCoreClockUpdate:
        LDR.W    R0,??DataTable6_18  ;; 0x40064005
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x1F
        ADDS     R0,R0,#+24
        LDR.W    R1,??DataTable6_19  ;; 0x2faf080
        MULS     R0,R1,R0
//  132   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
        LDR.W    R1,??DataTable6_20  ;; 0x40064004
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1F
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
//  133   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  134   temp =  CRYSTAL_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
//  135   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
//  136   #endif
//  137 #elif (defined(CPU_MK60D10))
//  138   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  139   temp =  CANNED_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) + 24u );
//  140   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) +1u ));
//  141   temp = temp;
//  142   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  143   temp =  CRYSTAL_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) + 24u );
//  144   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) +1u ));
//  145   temp = temp;
//  146   #endif
//  147 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  148   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  149   temp =  CANNED_OSC_CLK_HZ /((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) + 1u );
//  150   temp = (uint32_t)(temp*((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) +16u ));
//  151   temp = temp/2;
//  152   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  153   temp =  CRYSTAL_OSC_CLK_HZ /((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) + 1u );
//  154   temp = (uint32_t)(temp*((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) +16u ));
//  155   temp = temp/2;
//  156   #endif
//  157 #endif
//  158   SystemCoreClock = temp;
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  159 }
        BX       LR               ;; return
//  160 
//  161 /**
//  162  * 硬件错误中断函数
//  163  *
//  164  * @param  none
//  165  * @return none
//  166  *
//  167  * @brief  触发此中断的原因一般为：模块使用未初始化、错误的寻址空间等。
//  168  *         
//  169  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 void HardFault_Handler(void)
//  171 {
HardFault_Handler:
        PUSH     {R4,LR}
//  172   int t=600000;
        LDR.W    R4,??DataTable6_21  ;; 0x927c0
//  173 #ifdef DEBUG_PRINT 
//  174    printf("\r\n****内核发生硬件错误*****\r\n");
        LDR.W    R0,??DataTable6_22
        BL       printf
//  175 #endif
//  176    while(1)
//  177    {
//  178      LPLD_GPIO_Toggle_b(PTB,9);
??HardFault_Handler_0:
        MOVS     R1,#+9
        LDR.W    R0,??DataTable6_23  ;; 0x400ff040
        BL       LPLD_GPIO_Toggle_b
//  179      while(1)
//  180      {
//  181        t--;
??HardFault_Handler_1:
        SUBS     R4,R4,#+1
//  182        if(t<0)
        CMP      R4,#+0
        BPL.N    ??HardFault_Handler_1
//  183        {
//  184          t=600000;
        LDR.W    R4,??DataTable6_21  ;; 0x927c0
//  185          break;
        B.N      ??HardFault_Handler_0
//  186        }
//  187      }
//  188    }
//  189   // return;
//  190 }
//  191 
//  192 /**
//  193  * 默认中断函数
//  194  *
//  195  * @param  none
//  196  * @return none
//  197  *
//  198  * @brief  未定义中断处理函数的中断源会进入此函数，并打印中断向量号。
//  199  *         
//  200  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 void DefaultISR(void)
//  202 {
DefaultISR:
        PUSH     {R7,LR}
//  203    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04)) 
//  204 #ifdef DEBUG_PRINT 
//  205    printf("\r\n****进入未定义中断,Interrupt Number %d*****\r\n",VECTORNUM-16);
        LDR.W    R0,??DataTable6_24  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R1,R0,#+16
        LDR.W    R0,??DataTable6_25
        BL       printf
//  206 #endif
//  207    return;
        POP      {R0,PC}          ;; return
//  208 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      0x0D, 0x0A, 0x00, 0x00
//  209 
//  210 /**
//  211  * 初始化操作系统的滴答定时器(OS Tick)
//  212  *
//  213  * @param  none
//  214  * @return none
//  215  *
//  216  * @brief  该函数仅在uC/OS等系统中调用，切必须在OSStart()和处理器初始化后调用
//  217  *         
//  218  */
//  219 #if UCOS_II > 0u
//  220 void SystemTickInit (void)
//  221 {
//  222   uint32  cpu_clk_freq;
//  223   uint32  cnts;
//  224 
//  225   cpu_clk_freq = g_core_clock;  //获取SysTick时钟
//  226 
//  227 #if (OS_VERSION >= 30000u)
//  228   cnts  = cpu_clk_freq / (uint32)OSCfg_TickRate_Hz;    
//  229 #else
//  230   cnts  = cpu_clk_freq / (uint32)OS_TICKS_PER_SEC;        
//  231 #endif
//  232 
//  233   OS_CPU_SysTickInit(cnts);     //初始化uCOS滴答定时器SysTick
//  234 }
//  235 #endif
//  236 
//  237 /**
//  238  * Kinetis CPU Identify
//  239  *
//  240  * @param  none
//  241  * @return none
//  242  *
//  243  * @brief 输出Kinetis以下信息
//  244  * - Kinetis family
//  245  * - package
//  246  * - die revision
//  247  * - P-flash size
//  248  * - Ram size
//  249  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  250 static void cpu_identify (void)
//  251 {
cpu_identify:
        PUSH     {R7,LR}
//  252     /* 判断Kinetis 单片机的型号 */
//  253     switch((SIM->SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT) 
        LDR.W    R0,??DataTable6_26  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        ANDS     R0,R0,#0x7
        CMP      R0,#+0
        BEQ.N    ??cpu_identify_0
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_1
        BCC.N    ??cpu_identify_2
        CMP      R0,#+4
        BEQ.N    ??cpu_identify_3
        BCC.N    ??cpu_identify_4
        CMP      R0,#+6
        BEQ.N    ??cpu_identify_5
        BCC.N    ??cpu_identify_6
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_7
        B.N      ??cpu_identify_8
//  254     {
//  255 #ifdef DEBUG_PRINT 
//  256     	case 0x0:printf("\nK10-");break;
??cpu_identify_0:
        LDR.W    R0,??DataTable6_27
        BL       printf
        B.N      ??cpu_identify_9
//  257     	case 0x1:printf("\nK20-");break;
??cpu_identify_2:
        LDR.W    R0,??DataTable6_28
        BL       printf
        B.N      ??cpu_identify_9
//  258     	case 0x2:printf("\nK30-");break;
??cpu_identify_1:
        LDR.W    R0,??DataTable6_29
        BL       printf
        B.N      ??cpu_identify_9
//  259     	case 0x3:printf("\nK40-");break;
??cpu_identify_4:
        LDR.W    R0,??DataTable6_30
        BL       printf
        B.N      ??cpu_identify_9
//  260     	case 0x4:printf("\nK60-");break;
??cpu_identify_3:
        LDR.W    R0,??DataTable6_31
        BL       printf
        B.N      ??cpu_identify_9
//  261     	case 0x5:printf("\nK70-");break;
??cpu_identify_6:
        LDR.W    R0,??DataTable6_32
        BL       printf
        B.N      ??cpu_identify_9
//  262     	case 0x6:printf("\nK50-");break;
??cpu_identify_5:
        LDR.W    R0,??DataTable6_33
        BL       printf
        B.N      ??cpu_identify_9
//  263     	case 0x7:printf("\nK53-");break;
??cpu_identify_7:
        LDR.W    R0,??DataTable6_34
        BL       printf
        B.N      ??cpu_identify_9
//  264 	default:printf("\n不能识别单片机型号-");break; 
??cpu_identify_8:
        LDR.W    R0,??DataTable6_35
        BL       printf
//  265 #else 	
//  266         default:break; 
//  267 #endif
//  268     }
//  269 
//  270      /* 判断Kinetis 单片机的封装 */
//  271     switch((SIM->SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT) 
??cpu_identify_9:
        LDR.W    R0,??DataTable6_26  ;; 0x40048024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xF
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_10
        CMP      R0,#+4
        BEQ.N    ??cpu_identify_11
        CMP      R0,#+5
        BEQ.N    ??cpu_identify_12
        CMP      R0,#+6
        BEQ.N    ??cpu_identify_13
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_14
        CMP      R0,#+8
        BEQ.N    ??cpu_identify_15
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_16
        CMP      R0,#+10
        BEQ.N    ??cpu_identify_17
        CMP      R0,#+12
        BEQ.N    ??cpu_identify_18
        CMP      R0,#+14
        BEQ.N    ??cpu_identify_19
        B.N      ??cpu_identify_20
//  272     {
//  273 #ifdef DEBUG_PRINT
//  274     	case 0x2:printf("32pin-");break;
??cpu_identify_10:
        LDR.N    R0,??DataTable6_36
        BL       printf
        B.N      ??cpu_identify_21
//  275     	case 0x4:printf("48pin-");break;
??cpu_identify_11:
        LDR.N    R0,??DataTable6_37
        BL       printf
        B.N      ??cpu_identify_21
//  276     	case 0x5:printf("64pin-");break;
??cpu_identify_12:
        LDR.N    R0,??DataTable6_38
        BL       printf
        B.N      ??cpu_identify_21
//  277     	case 0x6:printf("80pin-");break;
??cpu_identify_13:
        LDR.N    R0,??DataTable6_39
        BL       printf
        B.N      ??cpu_identify_21
//  278     	case 0x7:printf("81pin-");break;
??cpu_identify_14:
        LDR.N    R0,??DataTable6_40
        BL       printf
        B.N      ??cpu_identify_21
//  279     	case 0x8:printf("100pin-");break;
??cpu_identify_15:
        LDR.N    R0,??DataTable6_41
        BL       printf
        B.N      ??cpu_identify_21
//  280     	case 0x9:printf("104pin-");break;
??cpu_identify_16:
        LDR.N    R0,??DataTable6_42
        BL       printf
        B.N      ??cpu_identify_21
//  281     	case 0xA:printf("144pin-");break;
??cpu_identify_17:
        LDR.N    R0,??DataTable6_43
        BL       printf
        B.N      ??cpu_identify_21
//  282     	case 0xC:printf("196pin-");break;
??cpu_identify_18:
        LDR.N    R0,??DataTable6_44
        BL       printf
        B.N      ??cpu_identify_21
//  283     	case 0xE:printf("256pin-");break;
??cpu_identify_19:
        LDR.N    R0,??DataTable6_45
        BL       printf
        B.N      ??cpu_identify_21
//  284 	default:printf("不能识别单片机封装-.");break;
??cpu_identify_20:
        LDR.N    R0,??DataTable6_46
        BL       printf
//  285 #else 	
//  286         default:break; 
//  287 #endif  	
//  288     }                
//  289 
//  290 #ifdef DEBUG_PRINT
//  291     printf("Silicon rev 1.%d\n",(SIM->SDID & SIM_SDID_REVID(0xF))>>SIM_SDID_REVID_SHIFT);
??cpu_identify_21:
        LDR.N    R0,??DataTable6_26  ;; 0x40048024
        LDR      R0,[R0, #+0]
        UBFX     R1,R0,#+12,#+4
        LDR.N    R0,??DataTable6_47
        BL       printf
//  292 #endif  
//  293     /* 判断Kinetis 单片机的P-flash size */
//  294     switch((SIM->FCFG1 & SIM_FCFG1_PFSIZE(0xF))>>SIM_FCFG1_PFSIZE_SHIFT)
        LDR.N    R0,??DataTable6_48  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        ANDS     R0,R0,#0xF
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_22
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_23
        CMP      R0,#+11
        BEQ.N    ??cpu_identify_24
        CMP      R0,#+15
        BEQ.N    ??cpu_identify_25
        B.N      ??cpu_identify_26
//  295     {
//  296 #ifdef DEBUG_PRINT
//  297   #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10)) 
//  298     	case 0x7:printf("128 kBytes of P-flash	");break;
??cpu_identify_22:
        LDR.N    R0,??DataTable6_49
        BL       printf
        B.N      ??cpu_identify_27
//  299     	case 0x9:printf("256 kBytes of P-flash	");break;
??cpu_identify_23:
        LDR.N    R0,??DataTable6_50
        BL       printf
        B.N      ??cpu_identify_27
//  300         case 0xB:printf("512 kBytes of P-flash	");break;
??cpu_identify_24:
        LDR.N    R0,??DataTable6_51
        BL       printf
        B.N      ??cpu_identify_27
//  301     	case 0xF:printf("512 kBytes of P-flash	");break;
??cpu_identify_25:
        LDR.N    R0,??DataTable6_51
        BL       printf
        B.N      ??cpu_identify_27
//  302 	default:printf("不能识别单片机 P-flash size\n");break;
??cpu_identify_26:
        LDR.N    R0,??DataTable6_52
        BL       printf
//  303   #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15)) 
//  304         case 0xB:printf("512 kBytes of P-flash	");break;
//  305     	case 0xD:printf("1024 kBytes of P-flash	");break;
//  306     	case 0xF:printf("1024 kBytes of P-flash	");break;
//  307 	default:printf("不能识别单片机 P-flash size\n");break;
//  308   #endif
//  309 #else 	
//  310         default:break; 
//  311 #endif
//  312     }
//  313 
//  314 #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10))
//  315     /* 判断是否只有 P-flash  或者 P-flash 和 FlexNVM */
//  316     if (SIM->FCFG2 & SIM_FCFG2_PFLSH_MASK) 
??cpu_identify_27:
        LDR.N    R0,??DataTable6_53  ;; 0x40048050
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+8
        BPL.N    ??cpu_identify_28
//  317   #ifdef DEBUG_PRINT
//  318       printf("P-flash only\n");
        LDR.N    R0,??DataTable6_54
        BL       printf
        B.N      ??cpu_identify_29
//  319   #else 
//  320       asm("nop");
//  321   #endif
//  322     else
//  323       /* 如果单片机有FlexNVM、判断Kinetis 单片机的FlexNVM size */
//  324       switch((SIM->FCFG1 & SIM_FCFG1_NVMSIZE(0xF))>>SIM_FCFG1_NVMSIZE_SHIFT)
??cpu_identify_28:
        LDR.N    R0,??DataTable6_48  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+28
        CMP      R0,#+0
        BEQ.N    ??cpu_identify_30
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_31
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_32
        CMP      R0,#+15
        BEQ.N    ??cpu_identify_33
        B.N      ??cpu_identify_34
//  325       {
//  326   #ifdef DEBUG_PRINT
//  327 
//  328       	case 0x0:printf("0 kBytes of FlexNVM\n");break;
??cpu_identify_30:
        LDR.N    R0,??DataTable6_55
        BL       printf
        B.N      ??cpu_identify_29
//  329     	case 0x7:printf("128 kBytes of FlexNVM\n");break;
??cpu_identify_31:
        LDR.N    R0,??DataTable6_56
        BL       printf
        B.N      ??cpu_identify_29
//  330         case 0x9:printf("256 kBytes of FlexNVM\n");break;
??cpu_identify_32:
        LDR.N    R0,??DataTable6_57
        BL       printf
        B.N      ??cpu_identify_29
//  331     	case 0xF:printf("256 kBytes of FlexNVM\n");break;
??cpu_identify_33:
        LDR.N    R0,??DataTable6_57
        BL       printf
        B.N      ??cpu_identify_29
//  332 	default:printf("不能识别单片机 FlexNVM size\n");break;
??cpu_identify_34:
        LDR.N    R0,??DataTable6_58
        BL       printf
//  333   #else 	
//  334         default:break; 
//  335   #endif
//  336       }
//  337 #endif
//  338     
//  339     /* 判断Kinetis 单片机的RAM size */
//  340     switch((SIM->SOPT1 & SIM_SOPT1_RAMSIZE(0xF))>>SIM_SOPT1_RAMSIZE_SHIFT)
??cpu_identify_29:
        LDR.N    R0,??DataTable6_59  ;; 0x40047000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+12
        ANDS     R0,R0,#0xF
        CMP      R0,#+5
        BEQ.N    ??cpu_identify_35
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_36
        CMP      R0,#+8
        BEQ.N    ??cpu_identify_37
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_38
        B.N      ??cpu_identify_39
//  341     {
//  342 #ifdef DEBUG_PRINT
//  343   #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10))
//  344     	case 0x5:printf("32 kBytes of RAM\n");break;
??cpu_identify_35:
        LDR.N    R0,??DataTable6_60
        BL       printf
        B.N      ??cpu_identify_40
//  345     	case 0x7:printf("64 kBytes of RAM\n");break;
??cpu_identify_36:
        LDR.N    R0,??DataTable6_61
        BL       printf
        B.N      ??cpu_identify_40
//  346     	case 0x8:printf("96 kBytes of RAM\n");break;
??cpu_identify_37:
        LDR.N    R0,??DataTable6_62
        BL       printf
        B.N      ??cpu_identify_40
//  347     	case 0x9:printf("128 kBytes of RAM\n");break;
??cpu_identify_38:
        LDR.N    R0,??DataTable6_63
        BL       printf
        B.N      ??cpu_identify_40
//  348 	default:printf("不能识别单片机 RAM size\n");break; 
??cpu_identify_39:
        LDR.N    R0,??DataTable6_64
        BL       printf
//  349   #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  350         case 0x9:printf("128 kBytes of RAM\n");break;
//  351 	default:printf("不能识别单片机 RAM size\n");break;
//  352   #endif
//  353 #else 	
//  354         default:break; 
//  355 #endif
//  356     }
//  357     flash_identify(); 
??cpu_identify_40:
        BL       flash_identify
//  358 }
        POP      {R0,PC}          ;; return
//  359 
//  360 /**
//  361  * Kinetis flash Identify
//  362  *
//  363  * @param  none
//  364  * @return none
//  365  *
//  366  * @brief 输出Kinetis以下信息
//  367  * - flash parameter revision
//  368  * - flash version ID
//  369  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  370 static void flash_identify (void)
//  371 {
flash_identify:
        PUSH     {R5-R7,LR}
//  372   uint8 info[8];
//  373 #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10)) 
//  374     FTFL->FCCOB0 = 0x03;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable6_65  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  375     FTFL->FCCOB1 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_66  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  376     FTFL->FCCOB2 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_67  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  377     FTFL->FCCOB3 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_68  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  378     FTFL->FCCOB8 = 0x01;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_69  ;; 0x4002000f
        STRB     R0,[R1, #+0]
//  379     FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK;
        MOVS     R0,#+128
        LDR.N    R1,??DataTable6_70  ;; 0x40020000
        STRB     R0,[R1, #+0]
//  380     while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));
??flash_identify_0:
        LDR.N    R0,??DataTable6_70  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_identify_0
//  381     info[0] = FTFL->FCCOB4; info[4] = FTFL->FCCOB8;
        LDR.N    R0,??DataTable6_71  ;; 0x4002000b
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+4]
        LDR.N    R0,??DataTable6_69  ;; 0x4002000f
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+8]
//  382     info[1] = FTFL->FCCOB5; info[5] = FTFL->FCCOB9;
        LDR.N    R0,??DataTable6_72  ;; 0x4002000a
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+5]
        LDR.N    R0,??DataTable6_73  ;; 0x4002000e
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+9]
//  383     info[2] = FTFL->FCCOB6; info[6] = FTFL->FCCOBA;
        LDR.N    R0,??DataTable6_74  ;; 0x40020009
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+6]
        LDR.N    R0,??DataTable6_75  ;; 0x4002000d
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+10]
//  384     info[3] = FTFL->FCCOB7; info[7] = FTFL->FCCOBB;
        LDR.N    R0,??DataTable6_76  ;; 0x40020008
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+7]
        LDR.N    R0,??DataTable6_77  ;; 0x4002000c
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+11]
//  385 #ifdef DEBUG_PRINT  
//  386     printf("Flash parameter version %d.%d.%d.%d\n",info[0],info[1],info[2],info[3]);
        LDRB     R0,[SP, #+7]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+6]
        LDRB     R2,[SP, #+5]
        LDRB     R1,[SP, #+4]
        LDR.N    R0,??DataTable6_78
        BL       printf
//  387     printf("Flash version ID %d.%d.%d.%d\n",info[4],info[5],info[6],info[7]); 
        LDRB     R0,[SP, #+11]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+10]
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        LDR.N    R0,??DataTable6_79
        BL       printf
//  388 #endif  
//  389     FTFL->FSTAT = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable6_70  ;; 0x40020000
        STRB     R0,[R1, #+0]
//  390 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  391     FTFE->FCCOB0 = 0x03;
//  392     FTFE->FCCOB1 = 0x00;
//  393     FTFE->FCCOB2 = 0x00;
//  394     FTFE->FCCOB3 = 0x08;
//  395     FTFE->FCCOB4 = 0x01;   
//  396     FTFE->FSTAT = FTFE_FSTAT_CCIF_MASK;
//  397     while(!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK));
//  398     info[0] = FTFE->FCCOB4; info[4] = FTFE->FCCOB8;
//  399     info[1] = FTFE->FCCOB5; info[5] = FTFE->FCCOB9;
//  400     info[2] = FTFE->FCCOB6; info[6] = FTFE->FCCOBA;
//  401     info[3] = FTFE->FCCOB7; info[7] = FTFE->FCCOBB;
//  402 #ifdef DEBUG_PRINT    
//  403     printf("Flash parameter version %d.%d.%d.%d\n",info[0],info[1],info[2],info[3]);
//  404     printf("Flash version ID %d.%d.%d.%d\n",info[4],info[5],info[6],info[7]);  
//  405 #endif   
//  406     FTFE->FSTAT = 0x7F;
//  407 #endif
//  408 }
        POP      {R0-R2,PC}       ;; return
//  409 
//  410 /**
//  411  * Diagnostic_Reset_Source
//  412  *
//  413  * @param  none
//  414  * @return none
//  415  *
//  416  * @brief 输出Kinetis复位信息
//  417  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  418 void Diagnostic_Reset_Source(void)
//  419 {
Diagnostic_Reset_Source:
        PUSH     {R7,LR}
//  420 #ifdef DEBUG_PRINT 
//  421 #if (defined(CPU_MK60DZ10)) 
//  422   /* 判断上一次复位的原因*/
//  423   if (MC->SRSH & MC_SRSH_SW_MASK)
        LDR.N    R0,??DataTable6_80  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Diagnostic_Reset_Source_0
//  424           printf("Software Reset\n");
        LDR.N    R0,??DataTable6_81
        BL       printf
//  425   if (MC->SRSH & MC_SRSH_LOCKUP_MASK)
??Diagnostic_Reset_Source_0:
        LDR.N    R0,??DataTable6_80  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Diagnostic_Reset_Source_1
//  426           printf("Core Lockup Event Reset\n");
        LDR.N    R0,??DataTable6_82
        BL       printf
//  427   if (MC->SRSH & MC_SRSH_JTAG_MASK)
??Diagnostic_Reset_Source_1:
        LDR.N    R0,??DataTable6_80  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Diagnostic_Reset_Source_2
//  428           printf("JTAG Reset\n");
        LDR.N    R0,??DataTable6_83
        BL       printf
//  429   if (MC->SRSL & MC_SRSL_POR_MASK)
??Diagnostic_Reset_Source_2:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??Diagnostic_Reset_Source_3
//  430           printf("Power-on Reset\n");
        LDR.N    R0,??DataTable6_85
        BL       printf
//  431   if (MC->SRSL & MC_SRSL_PIN_MASK)
??Diagnostic_Reset_Source_3:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??Diagnostic_Reset_Source_4
//  432           printf("External Pin Reset\n");
        LDR.N    R0,??DataTable6_86
        BL       printf
//  433   if (MC->SRSL & MC_SRSL_COP_MASK)
??Diagnostic_Reset_Source_4:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Diagnostic_Reset_Source_5
//  434           printf("Watchdog(COP) Reset\n");
        LDR.N    R0,??DataTable6_87
        BL       printf
//  435   if (MC->SRSL & MC_SRSL_LOC_MASK)
??Diagnostic_Reset_Source_5:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Diagnostic_Reset_Source_6
//  436           printf("Loss of Clock Reset\n");
        LDR.N    R0,??DataTable6_88
        BL       printf
//  437   if (MC->SRSL & MC_SRSL_LVD_MASK)
??Diagnostic_Reset_Source_6:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Diagnostic_Reset_Source_7
//  438           printf("Low-voltage Detect Reset\n");
        LDR.N    R0,??DataTable6_89
        BL       printf
//  439   if (MC->SRSL & MC_SRSL_WAKEUP_MASK)
??Diagnostic_Reset_Source_7:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Diagnostic_Reset_Source_8
//  440           printf("LLWU Reset\n");
        LDR.N    R0,??DataTable6_90
        BL       printf
//  441 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15) || defined(CPU_MK60D10))
//  442   
//  443   if (RCM->SRS1 & RCM_SRS1_SACKERR_MASK)
//  444           printf("Stop Mode Acknowledge Error Reset\n");
//  445   if (RCM->SRS1 & RCM_SRS1_EZPT_MASK)
//  446           printf("EzPort Reset\n");
//  447   if (RCM->SRS1 & RCM_SRS1_MDM_AP_MASK)
//  448           printf("MDM-AP Reset\n");
//  449   if (RCM->SRS1 & RCM_SRS1_SW_MASK)
//  450           printf("Software Reset\n");
//  451   if (RCM->SRS1 & RCM_SRS1_LOCKUP_MASK)
//  452           printf("Core Lockup Event Reset\n");
//  453   if (RCM->SRS1 & RCM_SRS1_JTAG_MASK)
//  454           printf("JTAG Reset\n");
//  455   if (RCM->SRS0 & RCM_SRS0_POR_MASK)
//  456           printf("Power-on Reset\n");
//  457   if (RCM->SRS0 & RCM_SRS0_PIN_MASK)
//  458           printf("External Pin Reset\n");
//  459   if (RCM->SRS0 & RCM_SRS0_WDOG_MASK)
//  460           printf("Watchdog(COP) Reset\n");
//  461   if (RCM->SRS0 & RCM_SRS0_LOC_MASK)
//  462           printf("Loss of Clock Reset\n");
//  463   if (RCM->SRS0 & RCM_SRS0_LVD_MASK)
//  464           printf("Low-voltage Detect Reset\n");
//  465   if (RCM->SRS0 & RCM_SRS0_WAKEUP_MASK)
//  466   {
//  467     printf("[outSRS]Wakeup bit set from low power mode exit\n");
//  468     printf("[outSRS]SMC_PMPROT = %#02X ", (SMC->PMPROT))  ;
//  469     printf("[outSRS]SMC_PMCTRL = %#02X ", (SMC->PMCTRL))  ;
//  470     printf("[outSRS]SMC_VLLSCTRL = %#02X ", (SMC->VLLSCTRL))  ;
//  471     printf("[outSRS]SMC_PMSTAT = %#02X \r\n", (SMC->PMSTAT))  ;
//  472 
//  473     if ((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 3)
//  474       printf("[outSRS] LLS exit \n") ;
//  475     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 1))
//  476       printf("[outSRS] VLLS1 exit \n") ;
//  477     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 2))
//  478       printf("[outSRS] VLLS2 exit \n") ;
//  479     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 3))
//  480       printf("[outSRS] VLLS3 exit \n") ; 
//  481   }
//  482 #endif
//  483 #endif
//  484 }
??Diagnostic_Reset_Source_8:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x4005200e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40052000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     g_flexbus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     g_flash_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     ?_7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     0x2faf080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     0x927c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     ?_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_23:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_24:
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_25:
        DC32     ?_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_26:
        DC32     0x40048024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_27:
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_28:
        DC32     ?_11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_29:
        DC32     ?_12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_30:
        DC32     ?_13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_31:
        DC32     ?_14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_32:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_33:
        DC32     ?_16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_34:
        DC32     ?_17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_35:
        DC32     ?_18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_36:
        DC32     ?_19

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_37:
        DC32     ?_20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_38:
        DC32     ?_21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_39:
        DC32     ?_22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_40:
        DC32     ?_23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_41:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_42:
        DC32     ?_25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_43:
        DC32     ?_26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_44:
        DC32     ?_27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_45:
        DC32     ?_28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_46:
        DC32     ?_29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_47:
        DC32     ?_30

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_48:
        DC32     0x4004804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_49:
        DC32     ?_31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_50:
        DC32     ?_32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_51:
        DC32     ?_33

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_52:
        DC32     ?_34

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_53:
        DC32     0x40048050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_54:
        DC32     ?_35

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_55:
        DC32     ?_36

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_56:
        DC32     ?_37

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_57:
        DC32     ?_38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_58:
        DC32     ?_39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_59:
        DC32     0x40047000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_60:
        DC32     ?_40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_61:
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_62:
        DC32     ?_42

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_63:
        DC32     ?_43

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_64:
        DC32     ?_44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_65:
        DC32     0x40020007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_66:
        DC32     0x40020006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_67:
        DC32     0x40020005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_68:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_69:
        DC32     0x4002000f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_70:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_71:
        DC32     0x4002000b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_72:
        DC32     0x4002000a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_73:
        DC32     0x4002000e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_74:
        DC32     0x40020009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_75:
        DC32     0x4002000d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_76:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_77:
        DC32     0x4002000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_78:
        DC32     ?_45

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_79:
        DC32     ?_46

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_80:
        DC32     0x4007e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_81:
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_82:
        DC32     ?_48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_83:
        DC32     ?_49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_84:
        DC32     0x4007e001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_85:
        DC32     ?_50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_86:
        DC32     ?_51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_87:
        DC32     ?_52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_88:
        DC32     ?_53

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_89:
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_90:
        DC32     ?_55

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 20H, 0BBH, 0F9H, 0D3H, 0DAH
        DC8 0C0H, 0ADH, 0C6H, 0D5H, 0C0H, 0BCH, 0B5H, 0C2H
        DC8 4BH, 36H, 30H, 0B5H, 0D7H, 0B2H, 0E3H, 0BFH
        DC8 0E2H, 20H, 68H, 74H, 74H, 70H, 3AH, 2FH
        DC8 2FH, 77H, 77H, 77H, 2EH, 6CH, 70H, 6CH
        DC8 64H, 2EH, 63H, 6EH, 20H, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC8 "OSKinetis\271\314\274\376\277\342\260\346\261\276:%s\tmail:support@lpld.cn\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "3.1 b1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "\317\265\315\263\304\332\272\313\312\261\326\323:%dMHz\t\327\334\317\337\312\261\326\323:%dMHz\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_5:
        DATA
        DC8 "FlexBus\312\261\326\323:%dMHz\tFlash\312\261\326\323:%dMHz\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_6:
        DATA
        DC8 0CFH, 0B5H, 0CDH, 0B3H, 0C6H, 0F4H, 0B6H, 0AFH
        DC8 0CDH, 0EAH, 0B1H, 0CFH, 0A3H, 0ACH, 0C8H, 0F4H
        DC8 0D2H, 0AAH, 0BDH, 0FBH, 0D3H, 0C3H, 0B5H, 0F7H
        DC8 0CAH, 0D4H, 0CAH, 0E4H, 0B3H, 0F6H, 0C7H, 0EBH
        DC8 0B6H, 0A8H, 0D2H, 0E5H, 50H, 52H, 49H, 4EH
        DC8 54H, 5FH, 4FH, 4EH, 5FH, 4FH, 46H, 46H
        DC8 0CEH, 0AAH, 31H, 28H, 6BH, 36H, 30H, 5FH
        DC8 63H, 61H, 72H, 64H, 2EH, 68H, 29H, 0DH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_7:
        DATA
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_8:
        DATA
        DC8 "\015\012****\304\332\272\313\267\242\311\372\323\262\274\376\264\355\316\363*****\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_9:
        DATA
        DC8 "\015\012****\275\370\310\353\316\264\266\250\322\345\326\320\266\317,Interrupt Number %d*****\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_10:
        DATA
        DC8 "\012K10-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_11:
        DATA
        DC8 "\012K20-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_12:
        DATA
        DC8 "\012K30-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_13:
        DATA
        DC8 "\012K40-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_14:
        DATA
        DC8 "\012K60-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_15:
        DATA
        DC8 "\012K70-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_16:
        DATA
        DC8 "\012K50-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_17:
        DATA
        DC8 "\012K53-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_18:
        DATA
        DC8 "\012\262\273\304\334\312\266\261\360\265\245\306\254\273\372\320\315\272\305-"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_19:
        DATA
        DC8 "32pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_20:
        DATA
        DC8 "48pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_21:
        DATA
        DC8 "64pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_22:
        DATA
        DC8 "80pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_23:
        DATA
        DC8 "81pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_24:
        DATA
        DC8 "100pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_25:
        DATA
        DC8 "104pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_26:
        DATA
        DC8 "144pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_27:
        DATA
        DC8 "196pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_28:
        DATA
        DC8 "256pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_29:
        DATA
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372\267\342\327\260-."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_30:
        DATA
        DC8 "Silicon rev 1.%d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_31:
        DATA
        DC8 "128 kBytes of P-flash\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_32:
        DATA
        DC8 "256 kBytes of P-flash\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_33:
        DATA
        DC8 "512 kBytes of P-flash\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_34:
        DATA
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372 P-flash size\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_35:
        DATA
        DC8 "P-flash only\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_36:
        DATA
        DC8 "0 kBytes of FlexNVM\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_37:
        DATA
        DC8 "128 kBytes of FlexNVM\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_38:
        DATA
        DC8 "256 kBytes of FlexNVM\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_39:
        DATA
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372 FlexNVM size\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_40:
        DATA
        DC8 "32 kBytes of RAM\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_41:
        DATA
        DC8 "64 kBytes of RAM\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_42:
        DATA
        DC8 "96 kBytes of RAM\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_43:
        DATA
        DC8 "128 kBytes of RAM\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_44:
        DATA
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372 RAM size\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_45:
        DATA
        DC8 "Flash parameter version %d.%d.%d.%d\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_46:
        DATA
        DC8 "Flash version ID %d.%d.%d.%d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_47:
        DATA
        DC8 "Software Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_48:
        DATA
        DC8 "Core Lockup Event Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_49:
        DATA
        DC8 "JTAG Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_50:
        DATA
        DC8 "Power-on Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_51:
        DATA
        DC8 "External Pin Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_52:
        DATA
        DC8 "Watchdog(COP) Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_53:
        DATA
        DC8 "Loss of Clock Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_54:
        DATA
        DC8 "Low-voltage Detect Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_55:
        DATA
        DC8 "LLWU Reset\012"

        END
//  485 
// 
//     4 bytes in section .data
// 1 216 bytes in section .rodata
// 1 620 bytes in section .text
// 
// 1 620 bytes of CODE  memory
// 1 216 bytes of CONST memory
//     4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
