# 1 "0_Src/AppSw/Tricore/Serial/serial.c"
# 1 "C:\\Robot_Project_Handover\\Robot_Project_Mode2//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/AppSw/Tricore/Serial/serial.c"






# 1 "0_Src/AppSw/Tricore/Serial/serial.h" 1




# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 1
# 221 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h" 1
# 45 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxAsclin_cfg.h" 1
# 41 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxAsclin_cfg.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h" 1
# 29 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 1
# 29 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
# 1 "0_Src/AppSw/CpuGeneric/Config/Ifx_Cfg.h" 1
# 30 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 2
# 65 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h" 1
# 29 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 147 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef int wchar_t;
# 30 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h" 2
# 66 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 2
# 120 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
void Ifx_C_Init(void);
# 30 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h" 1
# 88 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;
typedef float float32;
typedef double float64;

typedef unsigned long uint8_least;
typedef unsigned long uint16_least;
typedef unsigned long uint32_least;
typedef signed long sint8_least;
typedef signed long sint16_least;
typedef signed long sint32_least;

typedef unsigned char boolean;
# 31 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h" 2





typedef signed long long sint64;
typedef unsigned long long uint64;

typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;

typedef struct
{
    float32 real;
    float32 imag;
} cfloat32;

typedef struct
{
    sint32 real;
    sint32 imag;
} csint32;

typedef struct
{
    sint16 real;
    sint16 imag;
} csint16;

typedef sint64 Ifx_TickTime;
# 74 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef uint32 Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 146 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;
# 160 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count
} Ifx_Pwm_Mode;
# 178 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 1
# 27 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\cint.h" 1 3
# 24 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 28 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 179 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h" 2
# 190 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h"
typedef struct
{
    fract real;
    fract imag;
} cfract;

typedef struct
{
    sfract real;
    sfract imag;
} csfract;
# 42 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxAsclin_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxAsclin_reg.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxAsclin_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxAsclin_regdef.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxAsclin_regdef.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/Ifx_TypesReg.h" 1
# 40 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxAsclin_regdef.h" 2





typedef struct _Ifx_ASCLIN_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_ASCLIN_ACCEN0_Bits;


typedef struct _Ifx_ASCLIN_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_ASCLIN_ACCEN1_Bits;


typedef struct _Ifx_ASCLIN_BITCON_Bits
{
    unsigned int PRESCALER:12;
    unsigned int reserved_12:4;
    unsigned int OVERSAMPLING:4;
    unsigned int reserved_20:4;
    unsigned int SAMPLEPOINT:4;
    unsigned int reserved_28:3;
    unsigned int SM:1;
} Ifx_ASCLIN_BITCON_Bits;


typedef struct _Ifx_ASCLIN_BRD_Bits
{
    unsigned int LOWERLIMIT:8;
    unsigned int UPPERLIMIT:8;
    unsigned int MEASURED:12;
    unsigned int reserved_28:4;
} Ifx_ASCLIN_BRD_Bits;


typedef struct _Ifx_ASCLIN_BRG_Bits
{
    unsigned int DENOMINATOR:12;
    unsigned int reserved_12:4;
    unsigned int NUMERATOR:12;
    unsigned int reserved_28:4;
} Ifx_ASCLIN_BRG_Bits;


typedef struct _Ifx_ASCLIN_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_ASCLIN_CLC_Bits;


typedef struct _Ifx_ASCLIN_CSR_Bits
{
    unsigned int CLKSEL:5;
    unsigned int reserved_5:26;
    unsigned int CON:1;
} Ifx_ASCLIN_CSR_Bits;


typedef struct _Ifx_ASCLIN_DATCON_Bits
{
    unsigned int DATLEN:4;
    unsigned int reserved_4:9;
    unsigned int HO:1;
    unsigned int RM:1;
    unsigned int CSM:1;
    unsigned int RESPONSE:8;
    unsigned int reserved_24:8;
} Ifx_ASCLIN_DATCON_Bits;


typedef struct _Ifx_ASCLIN_FLAGS_Bits
{
    unsigned int TH:1;
    unsigned int TR:1;
    unsigned int RH:1;
    unsigned int RR:1;
    unsigned int reserved_4:1;
    unsigned int FED:1;
    unsigned int RED:1;
    unsigned int reserved_7:6;
    unsigned int TWRQ:1;
    unsigned int THRQ:1;
    unsigned int TRRQ:1;
    unsigned int PE:1;
    unsigned int TC:1;
    unsigned int FE:1;
    unsigned int HT:1;
    unsigned int RT:1;
    unsigned int BD:1;
    unsigned int LP:1;
    unsigned int LA:1;
    unsigned int LC:1;
    unsigned int CE:1;
    unsigned int RFO:1;
    unsigned int RFU:1;
    unsigned int RFL:1;
    unsigned int reserved_29:1;
    unsigned int TFO:1;
    unsigned int TFL:1;
} Ifx_ASCLIN_FLAGS_Bits;


typedef struct _Ifx_ASCLIN_FLAGSCLEAR_Bits
{
    unsigned int THC:1;
    unsigned int TRC:1;
    unsigned int RHC:1;
    unsigned int RRC:1;
    unsigned int reserved_4:1;
    unsigned int FEDC:1;
    unsigned int REDC:1;
    unsigned int reserved_7:6;
    unsigned int TWRQC:1;
    unsigned int THRQC:1;
    unsigned int TRRQC:1;
    unsigned int PEC:1;
    unsigned int TCC:1;
    unsigned int FEC:1;
    unsigned int HTC:1;
    unsigned int RTC:1;
    unsigned int BDC:1;
    unsigned int LPC:1;
    unsigned int LAC:1;
    unsigned int LCC:1;
    unsigned int CEC:1;
    unsigned int RFOC:1;
    unsigned int RFUC:1;
    unsigned int RFLC:1;
    unsigned int reserved_29:1;
    unsigned int TFOC:1;
    unsigned int TFLC:1;
} Ifx_ASCLIN_FLAGSCLEAR_Bits;


typedef struct _Ifx_ASCLIN_FLAGSENABLE_Bits
{
    unsigned int THE:1;
    unsigned int TRE:1;
    unsigned int RHE:1;
    unsigned int RRE:1;
    unsigned int reserved_4:1;
    unsigned int FEDE:1;
    unsigned int REDE:1;
    unsigned int reserved_7:9;
    unsigned int PEE:1;
    unsigned int TCE:1;
    unsigned int FEE:1;
    unsigned int HTE:1;
    unsigned int RTE:1;
    unsigned int BDE:1;
    unsigned int LPE:1;
    unsigned int ABE:1;
    unsigned int LCE:1;
    unsigned int CEE:1;
    unsigned int RFOE:1;
    unsigned int RFUE:1;
    unsigned int RFLE:1;
    unsigned int reserved_29:1;
    unsigned int TFOE:1;
    unsigned int TFLE:1;
} Ifx_ASCLIN_FLAGSENABLE_Bits;


typedef struct _Ifx_ASCLIN_FLAGSSET_Bits
{
    unsigned int THS:1;
    unsigned int TRS:1;
    unsigned int RHS:1;
    unsigned int RRS:1;
    unsigned int reserved_4:1;
    unsigned int FEDS:1;
    unsigned int REDS:1;
    unsigned int reserved_7:6;
    unsigned int TWRQS:1;
    unsigned int THRQS:1;
    unsigned int TRRQS:1;
    unsigned int PES:1;
    unsigned int TCS:1;
    unsigned int FES:1;
    unsigned int HTS:1;
    unsigned int RTS:1;
    unsigned int BDS:1;
    unsigned int LPS:1;
    unsigned int LAS:1;
    unsigned int LCS:1;
    unsigned int CES:1;
    unsigned int RFOS:1;
    unsigned int RFUS:1;
    unsigned int RFLS:1;
    unsigned int reserved_29:1;
    unsigned int TFOS:1;
    unsigned int TFLS:1;
} Ifx_ASCLIN_FLAGSSET_Bits;


typedef struct _Ifx_ASCLIN_FRAMECON_Bits
{
    unsigned int reserved_0:6;
    unsigned int IDLE:3;
    unsigned int STOP:3;
    unsigned int LEAD:3;
    unsigned int reserved_15:1;
    unsigned int MODE:2;
    unsigned int reserved_18:10;
    unsigned int MSB:1;
    unsigned int CEN:1;
    unsigned int PEN:1;
    unsigned int ODD:1;
} Ifx_ASCLIN_FRAMECON_Bits;


typedef struct _Ifx_ASCLIN_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_ASCLIN_ID_Bits;


typedef struct _Ifx_ASCLIN_IOCR_Bits
{
    unsigned int ALTI:3;
    unsigned int reserved_3:1;
    unsigned int DEPTH:6;
    unsigned int reserved_10:6;
    unsigned int CTS:2;
    unsigned int reserved_18:7;
    unsigned int RCPOL:1;
    unsigned int CPOL:1;
    unsigned int SPOL:1;
    unsigned int LB:1;
    unsigned int CTSEN:1;
    unsigned int RXM:1;
    unsigned int TXM:1;
} Ifx_ASCLIN_IOCR_Bits;


typedef struct _Ifx_ASCLIN_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_ASCLIN_KRST0_Bits;


typedef struct _Ifx_ASCLIN_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_ASCLIN_KRST1_Bits;


typedef struct _Ifx_ASCLIN_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_ASCLIN_KRSTCLR_Bits;


typedef struct _Ifx_ASCLIN_LIN_BTIMER_Bits
{
    unsigned int BREAK:6;
    unsigned int reserved_6:26;
} Ifx_ASCLIN_LIN_BTIMER_Bits;


typedef struct _Ifx_ASCLIN_LIN_CON_Bits
{
    unsigned int reserved_0:23;
    unsigned int CSI:1;
    unsigned int reserved_24:1;
    unsigned int CSEN:1;
    unsigned int MS:1;
    unsigned int ABD:1;
    unsigned int reserved_28:4;
} Ifx_ASCLIN_LIN_CON_Bits;


typedef struct _Ifx_ASCLIN_LIN_HTIMER_Bits
{
    unsigned int HEADER:8;
    unsigned int reserved_8:24;
} Ifx_ASCLIN_LIN_HTIMER_Bits;


typedef struct _Ifx_ASCLIN_OCS_Bits
{
    unsigned int reserved_0:24;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_ASCLIN_OCS_Bits;


typedef struct _Ifx_ASCLIN_RXDATA_Bits
{
    unsigned int DATA:32;
} Ifx_ASCLIN_RXDATA_Bits;


typedef struct _Ifx_ASCLIN_RXDATAD_Bits
{
    unsigned int DATA:32;
} Ifx_ASCLIN_RXDATAD_Bits;


typedef struct _Ifx_ASCLIN_RXFIFOCON_Bits
{
    unsigned int FLUSH:1;
    unsigned int ENI:1;
    unsigned int reserved_2:4;
    unsigned int OUTW:2;
    unsigned int INTLEVEL:4;
    unsigned int reserved_12:4;
    unsigned int FILL:5;
    unsigned int reserved_21:10;
    unsigned int BUF:1;
} Ifx_ASCLIN_RXFIFOCON_Bits;


typedef struct _Ifx_ASCLIN_TXDATA_Bits
{
    unsigned int DATA:32;
} Ifx_ASCLIN_TXDATA_Bits;


typedef struct _Ifx_ASCLIN_TXFIFOCON_Bits
{
    unsigned int FLUSH:1;
    unsigned int ENO:1;
    unsigned int reserved_2:4;
    unsigned int INW:2;
    unsigned int INTLEVEL:4;
    unsigned int reserved_12:4;
    unsigned int FILL:5;
    unsigned int reserved_21:11;
} Ifx_ASCLIN_TXFIFOCON_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_ACCEN0_Bits B;
} Ifx_ASCLIN_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_ACCEN1_Bits B;
} Ifx_ASCLIN_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_BITCON_Bits B;
} Ifx_ASCLIN_BITCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_BRD_Bits B;
} Ifx_ASCLIN_BRD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_BRG_Bits B;
} Ifx_ASCLIN_BRG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_CLC_Bits B;
} Ifx_ASCLIN_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_CSR_Bits B;
} Ifx_ASCLIN_CSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_DATCON_Bits B;
} Ifx_ASCLIN_DATCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_FLAGS_Bits B;
} Ifx_ASCLIN_FLAGS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_FLAGSCLEAR_Bits B;
} Ifx_ASCLIN_FLAGSCLEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_FLAGSENABLE_Bits B;
} Ifx_ASCLIN_FLAGSENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_FLAGSSET_Bits B;
} Ifx_ASCLIN_FLAGSSET;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_FRAMECON_Bits B;
} Ifx_ASCLIN_FRAMECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_ID_Bits B;
} Ifx_ASCLIN_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_IOCR_Bits B;
} Ifx_ASCLIN_IOCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_KRST0_Bits B;
} Ifx_ASCLIN_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_KRST1_Bits B;
} Ifx_ASCLIN_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_KRSTCLR_Bits B;
} Ifx_ASCLIN_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_LIN_BTIMER_Bits B;
} Ifx_ASCLIN_LIN_BTIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_LIN_CON_Bits B;
} Ifx_ASCLIN_LIN_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_LIN_HTIMER_Bits B;
} Ifx_ASCLIN_LIN_HTIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_OCS_Bits B;
} Ifx_ASCLIN_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_RXDATA_Bits B;
} Ifx_ASCLIN_RXDATA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_RXDATAD_Bits B;
} Ifx_ASCLIN_RXDATAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_RXFIFOCON_Bits B;
} Ifx_ASCLIN_RXFIFOCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_TXDATA_Bits B;
} Ifx_ASCLIN_TXDATA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ASCLIN_TXFIFOCON_Bits B;
} Ifx_ASCLIN_TXFIFOCON;
# 647 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxAsclin_regdef.h"
typedef volatile struct _Ifx_ASCLIN_LIN
{
    Ifx_ASCLIN_LIN_CON CON;
    Ifx_ASCLIN_LIN_BTIMER BTIMER;
    Ifx_ASCLIN_LIN_HTIMER HTIMER;
} Ifx_ASCLIN_LIN;
# 665 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxAsclin_regdef.h"
typedef volatile struct _Ifx_ASCLIN
{
    Ifx_ASCLIN_CLC CLC;
    Ifx_ASCLIN_IOCR IOCR;
    Ifx_ASCLIN_ID ID;
    Ifx_ASCLIN_TXFIFOCON TXFIFOCON;
    Ifx_ASCLIN_RXFIFOCON RXFIFOCON;
    Ifx_ASCLIN_BITCON BITCON;
    Ifx_ASCLIN_FRAMECON FRAMECON;
    Ifx_ASCLIN_DATCON DATCON;
    Ifx_ASCLIN_BRG BRG;
    Ifx_ASCLIN_BRD BRD;
    Ifx_ASCLIN_LIN LIN;
    Ifx_ASCLIN_FLAGS FLAGS;
    Ifx_ASCLIN_FLAGSSET FLAGSSET;
    Ifx_ASCLIN_FLAGSCLEAR FLAGSCLEAR;
    Ifx_ASCLIN_FLAGSENABLE FLAGSENABLE;
    Ifx_ASCLIN_TXDATA TXDATA;
    Ifx_ASCLIN_RXDATA RXDATA;
    Ifx_ASCLIN_CSR CSR;
    Ifx_ASCLIN_RXDATAD RXDATAD;
    unsigned char reserved_54[148];
    Ifx_ASCLIN_OCS OCS;
    Ifx_ASCLIN_KRSTCLR KRSTCLR;
    Ifx_ASCLIN_KRST1 KRST1;
    Ifx_ASCLIN_KRST0 KRST0;
    Ifx_ASCLIN_ACCEN1 ACCEN1;
    Ifx_ASCLIN_ACCEN0 ACCEN0;
} Ifx_ASCLIN;
# 46 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxAsclin_reg.h" 2
# 43 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxAsclin_cfg.h" 2
# 58 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxAsclin_cfg.h"
typedef enum
{
    IfxAsclin_Index_none = -1,
    IfxAsclin_Index_0 = 0,
    IfxAsclin_Index_1,
    IfxAsclin_Index_2,
    IfxAsclin_Index_3
} IfxAsclin_Index;







extern const IfxModule_IndexMap IfxAsclin_cfg_indexMap[(4)];
# 46 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h" 1
# 105 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxScu_cfg.h" 1
# 36 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxScu_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_bf.h" 1
# 37 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFlash_bf.h" 1
# 38 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxScu_cfg.h" 2
# 1415 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 106 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h" 1
# 48 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS:1;
    unsigned int STM1DIS:1;
    unsigned int STM2DIS:1;
    unsigned int reserved_3:29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int BAUD1DIV:4;
    unsigned int BAUD2DIV:4;
    unsigned int SRIDIV:4;
    unsigned int LPDIV:4;
    unsigned int SPBDIV:4;
    unsigned int FSI2DIV:2;
    unsigned int reserved_22:2;
    unsigned int FSIDIV:2;
    unsigned int ADCCLKSEL:2;
    unsigned int CLKSEL:2;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV:4;
    unsigned int ERAYDIV:4;
    unsigned int STMDIV:4;
    unsigned int GTMDIV:4;
    unsigned int ETHDIV:4;
    unsigned int ASCLINFDIV:4;
    unsigned int ASCLINSDIV:4;
    unsigned int INSEL:2;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV:4;
    unsigned int reserved_4:26;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV:6;
    unsigned int PLLSEL:2;
    unsigned int PLLERAYDIV:6;
    unsigned int PLLERAYSEL:2;
    unsigned int SRIDIV:6;
    unsigned int SRISEL:2;
    unsigned int reserved_24:5;
    unsigned int SLCK:1;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV:6;
    unsigned int SPBSEL:2;
    unsigned int GTMDIV:6;
    unsigned int GTMSEL:2;
    unsigned int STMDIV:6;
    unsigned int STMSEL:2;
    unsigned int reserved_24:5;
    unsigned int SLCK:1;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV:4;
    unsigned int EBUDIV:4;
    unsigned int reserved_8:22;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV:6;
    unsigned int reserved_6:26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CCUCON7_Bits
{
    unsigned int CPU1DIV:6;
    unsigned int reserved_6:26;
} Ifx_SCU_CCUCON7_Bits;


typedef struct _Ifx_SCU_CCUCON8_Bits
{
    unsigned int CPU2DIV:6;
    unsigned int reserved_6:26;
} Ifx_SCU_CCUCON8_Bits;


typedef struct _Ifx_SCU_CCUCON9_Bits
{
    unsigned int ADCDIV:6;
    unsigned int ADCSEL:2;
    unsigned int reserved_8:21;
    unsigned int SLCK:1;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON9_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV:6;
    unsigned int CHTEC:2;
    unsigned int CHID:8;
    unsigned int EEA:1;
    unsigned int UCODE:7;
    unsigned int FSIZE:4;
    unsigned int SP:2;
    unsigned int SEC:1;
    unsigned int reserved_31:1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD:1;
    unsigned int START:1;
    unsigned int reserved_2:2;
    unsigned int CAL:22;
    unsigned int reserved_26:5;
    unsigned int SLCK:1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER:10;
    unsigned int reserved_10:5;
    unsigned int LLU:1;
    unsigned int UPPER:10;
    unsigned int reserved_26:4;
    unsigned int SLCK:1;
    unsigned int UOF:1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT:10;
    unsigned int reserved_10:4;
    unsigned int RDY:1;
    unsigned int BUSY:1;
    unsigned int reserved_16:16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0:4;
    unsigned int EXIS0:3;
    unsigned int reserved_7:1;
    unsigned int FEN0:1;
    unsigned int REN0:1;
    unsigned int LDEN0:1;
    unsigned int EIEN0:1;
    unsigned int INP0:3;
    unsigned int reserved_15:5;
    unsigned int EXIS1:3;
    unsigned int reserved_23:1;
    unsigned int FEN1:1;
    unsigned int REN1:1;
    unsigned int LDEN1:1;
    unsigned int EIEN1:1;
    unsigned int INP1:3;
    unsigned int reserved_31:1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0:1;
    unsigned int INTF1:1;
    unsigned int INTF2:1;
    unsigned int INTF3:1;
    unsigned int INTF4:1;
    unsigned int INTF5:1;
    unsigned int INTF6:1;
    unsigned int INTF7:1;
    unsigned int reserved_8:24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL:1;
    unsigned int MODE:1;
    unsigned int ENON:1;
    unsigned int PSEL:1;
    unsigned int reserved_4:12;
    unsigned int EMSF:1;
    unsigned int SEMSF:1;
    unsigned int reserved_18:6;
    unsigned int EMSFM:2;
    unsigned int SEMSFM:2;
    unsigned int reserved_28:4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0:7;
    unsigned int EDCON:2;
    unsigned int reserved_9:23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI:1;
    unsigned int ARC:1;
    unsigned int reserved_2:30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0:28;
    unsigned int EVR13OFF:1;
    unsigned int BPEVR13OFF:1;
    unsigned int reserved_30:1;
    unsigned int LCK:1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVR33CON_Bits
{
    unsigned int reserved_0:28;
    unsigned int EVR33OFF:1;
    unsigned int BPEVR33OFF:1;
    unsigned int reserved_30:1;
    unsigned int LCK:1;
} Ifx_SCU_EVR33CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V:8;
    unsigned int ADC33V:8;
    unsigned int ADCSWDV:8;
    unsigned int reserved_24:7;
    unsigned int VAL:1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRDVSTAT_Bits
{
    unsigned int DVS13TRIM:8;
    unsigned int reserved_8:8;
    unsigned int DVS33TRIM:8;
    unsigned int reserved_24:7;
    unsigned int VAL:1;
} Ifx_SCU_EVRDVSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD:2;
    unsigned int reserved_2:2;
    unsigned int EVR13UVMOD:2;
    unsigned int reserved_6:2;
    unsigned int EVR33OVMOD:2;
    unsigned int reserved_10:2;
    unsigned int EVR33UVMOD:2;
    unsigned int reserved_14:2;
    unsigned int SWDOVMOD:2;
    unsigned int reserved_18:2;
    unsigned int SWDUVMOD:2;
    unsigned int reserved_22:8;
    unsigned int SLCK:1;
    unsigned int reserved_31:1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL:8;
    unsigned int EVR33OVVAL:8;
    unsigned int SWDOVVAL:8;
    unsigned int reserved_24:6;
    unsigned int SLCK:1;
    unsigned int LCK:1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int RST13TRIM:8;
    unsigned int reserved_8:16;
    unsigned int RST13OFF:1;
    unsigned int BPRST13OFF:1;
    unsigned int RST33OFF:1;
    unsigned int BPRST33OFF:1;
    unsigned int RSTSWDOFF:1;
    unsigned int BPRSTSWDOFF:1;
    unsigned int SLCK:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF1_Bits
{
    unsigned int SD5P:8;
    unsigned int SD5I:8;
    unsigned int SD5D:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF1_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P:8;
    unsigned int SD33I:8;
    unsigned int SD33D:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF3_Bits
{
    unsigned int CT5REG0:8;
    unsigned int CT5REG1:8;
    unsigned int CT5REG2:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF3_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF4_Bits
{
    unsigned int CT5REG3:8;
    unsigned int CT5REG4:8;
    unsigned int reserved_16:15;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF4_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF5_Bits
{
    unsigned int CT33REG0:8;
    unsigned int CT33REG1:8;
    unsigned int CT33REG2:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF5_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF6_Bits
{
    unsigned int CT33REG3:8;
    unsigned int CT33REG4:8;
    unsigned int reserved_16:15;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF6_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD:16;
    unsigned int SDFREQ:8;
    unsigned int SDSTEP:4;
    unsigned int reserved_28:2;
    unsigned int SDSAMPLE:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int DRVP:8;
    unsigned int SDMINMAXDC:8;
    unsigned int DRVN:8;
    unsigned int SDLUT:6;
    unsigned int reserved_30:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDPWMPRE:8;
    unsigned int SDPID:8;
    unsigned int SDVOKLVL:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL4_Bits
{
    unsigned int reserved_0:8;
    unsigned int SYNCDIV:3;
    unsigned int reserved_11:20;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCTRL4_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13:1;
    unsigned int OV13:1;
    unsigned int EVR33:1;
    unsigned int OV33:1;
    unsigned int OVSWD:1;
    unsigned int UV13:1;
    unsigned int UV33:1;
    unsigned int UVSWD:1;
    unsigned int EXTPASS13:1;
    unsigned int EXTPASS33:1;
    unsigned int BGPROK:1;
    unsigned int reserved_11:21;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRTRIM_Bits
{
    unsigned int EVR13TRIM:8;
    unsigned int SDVOUTSEL:8;
    unsigned int reserved_16:14;
    unsigned int SLCK:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRTRIM_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL:8;
    unsigned int EVR33UVVAL:8;
    unsigned int SWDUVVAL:8;
    unsigned int reserved_24:6;
    unsigned int SLCK:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0:1;
    unsigned int reserved_1:1;
    unsigned int SEL0:4;
    unsigned int reserved_6:10;
    unsigned int EN1:1;
    unsigned int NSEL:1;
    unsigned int SEL1:4;
    unsigned int reserved_22:2;
    unsigned int DIV1:8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP:10;
    unsigned int reserved_10:4;
    unsigned int DM:2;
    unsigned int RESULT:10;
    unsigned int reserved_26:5;
    unsigned int DISCLK:1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0:1;
    unsigned int FS1:1;
    unsigned int FS2:1;
    unsigned int FS3:1;
    unsigned int FS4:1;
    unsigned int FS5:1;
    unsigned int FS6:1;
    unsigned int FS7:1;
    unsigned int reserved_8:8;
    unsigned int FC0:1;
    unsigned int FC1:1;
    unsigned int FC2:1;
    unsigned int FC3:1;
    unsigned int FC4:1;
    unsigned int FC5:1;
    unsigned int FC6:1;
    unsigned int FC7:1;
    unsigned int reserved_24:8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00:1;
    unsigned int IPEN01:1;
    unsigned int IPEN02:1;
    unsigned int IPEN03:1;
    unsigned int IPEN04:1;
    unsigned int IPEN05:1;
    unsigned int IPEN06:1;
    unsigned int IPEN07:1;
    unsigned int reserved_8:5;
    unsigned int GEEN0:1;
    unsigned int IGP0:2;
    unsigned int IPEN10:1;
    unsigned int IPEN11:1;
    unsigned int IPEN12:1;
    unsigned int IPEN13:1;
    unsigned int IPEN14:1;
    unsigned int IPEN15:1;
    unsigned int IPEN16:1;
    unsigned int IPEN17:1;
    unsigned int reserved_24:5;
    unsigned int GEEN1:1;
    unsigned int IGP1:2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0:1;
    unsigned int P1:1;
    unsigned int reserved_2:30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0:4;
    unsigned int PC0:4;
    unsigned int reserved_8:4;
    unsigned int PC1:4;
    unsigned int reserved_16:16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ:1;
    unsigned int LBISTREQP:1;
    unsigned int PATTERNS:14;
    unsigned int reserved_16:16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED:23;
    unsigned int reserved_23:1;
    unsigned int SPLITSH:3;
    unsigned int BODY:1;
    unsigned int LBISTFREQU:4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE:24;
    unsigned int reserved_24:7;
    unsigned int LBISTDONE:1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON_Bits
{
    unsigned int reserved_0:16;
    unsigned int LS:1;
    unsigned int reserved_17:14;
    unsigned int LSEN:1;
} Ifx_SCU_LCLCON_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0:1;
    unsigned int LCLT1:1;
    unsigned int reserved_2:30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT:5;
    unsigned int MANUF:11;
    unsigned int reserved_16:16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0:1;
    unsigned int PS1:1;
    unsigned int reserved_2:14;
    unsigned int PCL0:1;
    unsigned int PCL1:1;
    unsigned int reserved_18:14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0:1;
    unsigned int PLLLV:1;
    unsigned int OSCRES:1;
    unsigned int GAINSEL:2;
    unsigned int MODE:2;
    unsigned int SHBY:1;
    unsigned int PLLHV:1;
    unsigned int reserved_9:1;
    unsigned int X1D:1;
    unsigned int X1DEN:1;
    unsigned int reserved_12:4;
    unsigned int OSCVAL:5;
    unsigned int reserved_21:2;
    unsigned int APREN:1;
    unsigned int CAP0EN:1;
    unsigned int CAP1EN:1;
    unsigned int CAP2EN:1;
    unsigned int CAP3EN:1;
    unsigned int reserved_28:4;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0:1;
    unsigned int P1:1;
    unsigned int reserved_2:30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0:1;
    unsigned int CSEL1:1;
    unsigned int CSEL2:1;
    unsigned int reserved_3:13;
    unsigned int OVSTRT:1;
    unsigned int OVSTP:1;
    unsigned int DCINVAL:1;
    unsigned int reserved_19:5;
    unsigned int OVCONF:1;
    unsigned int POVCONF:1;
    unsigned int reserved_26:6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0:1;
    unsigned int OVEN1:1;
    unsigned int OVEN2:1;
    unsigned int reserved_3:29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0:1;
    unsigned int PDIS1:1;
    unsigned int reserved_2:30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0:3;
    unsigned int PL0:1;
    unsigned int PD1:3;
    unsigned int PL1:1;
    unsigned int reserved_8:24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0:1;
    unsigned int PDR1:1;
    unsigned int PDR2:1;
    unsigned int PDR3:1;
    unsigned int PDR4:1;
    unsigned int PDR5:1;
    unsigned int PDR6:1;
    unsigned int PDR7:1;
    unsigned int reserved_8:24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP:1;
    unsigned int VCOPWD:1;
    unsigned int MODEN:1;
    unsigned int reserved_3:1;
    unsigned int SETFINDIS:1;
    unsigned int CLRFINDIS:1;
    unsigned int OSCDISCDIS:1;
    unsigned int reserved_7:2;
    unsigned int NDIV:7;
    unsigned int PLLPWD:1;
    unsigned int reserved_17:1;
    unsigned int RESLD:1;
    unsigned int reserved_19:5;
    unsigned int PDIV:4;
    unsigned int reserved_28:4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV:7;
    unsigned int reserved_7:1;
    unsigned int K3DIV:7;
    unsigned int reserved_15:1;
    unsigned int K1DIV:7;
    unsigned int reserved_23:9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG:16;
    unsigned int reserved_16:16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP:1;
    unsigned int VCOPWD:1;
    unsigned int reserved_2:2;
    unsigned int SETFINDIS:1;
    unsigned int CLRFINDIS:1;
    unsigned int OSCDISCDIS:1;
    unsigned int reserved_7:2;
    unsigned int NDIV:5;
    unsigned int reserved_14:2;
    unsigned int PLLPWD:1;
    unsigned int reserved_17:1;
    unsigned int RESLD:1;
    unsigned int reserved_19:5;
    unsigned int PDIV:4;
    unsigned int reserved_28:4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV:7;
    unsigned int reserved_7:1;
    unsigned int K3DIV:4;
    unsigned int reserved_12:4;
    unsigned int K1DIV:7;
    unsigned int reserved_23:9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST:1;
    unsigned int PWDSTAT:1;
    unsigned int VCOLOCK:1;
    unsigned int FINDIS:1;
    unsigned int K1RDY:1;
    unsigned int K2RDY:1;
    unsigned int reserved_6:26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST:1;
    unsigned int reserved_1:1;
    unsigned int VCOLOCK:1;
    unsigned int FINDIS:1;
    unsigned int K1RDY:1;
    unsigned int K2RDY:1;
    unsigned int reserved_6:1;
    unsigned int MODRUN:1;
    unsigned int reserved_8:24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP:2;
    unsigned int SMUSLP:1;
    unsigned int reserved_3:5;
    unsigned int PMST:3;
    unsigned int reserved_11:21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0:1;
    unsigned int ESR1WKEN:1;
    unsigned int PINAWKEN:1;
    unsigned int PINBWKEN:1;
    unsigned int ESR0DFEN:1;
    unsigned int ESR0EDCON:2;
    unsigned int ESR1DFEN:1;
    unsigned int ESR1EDCON:2;
    unsigned int PINADFEN:1;
    unsigned int PINAEDCON:2;
    unsigned int PINBDFEN:1;
    unsigned int PINBEDCON:2;
    unsigned int reserved_16:1;
    unsigned int STBYRAMSEL:2;
    unsigned int reserved_19:2;
    unsigned int TRISTEN:1;
    unsigned int TRISTREQ:1;
    unsigned int PORSTDF:1;
    unsigned int PWRWKEN:1;
    unsigned int DCDCSYNC:1;
    unsigned int BLNKFIL:3;
    unsigned int ESR0TRIST:1;
    unsigned int reserved_30:1;
    unsigned int LCK:1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0:8;
    unsigned int CPUIDLSEL:3;
    unsigned int reserved_11:1;
    unsigned int IRADIS:1;
    unsigned int reserved_13:11;
    unsigned int CPUSEL:3;
    unsigned int STBYEVEN:1;
    unsigned int STBYEV:3;
    unsigned int reserved_31:1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0:2;
    unsigned int ESR1WKP:1;
    unsigned int ESR1OVRUN:1;
    unsigned int PINAWKP:1;
    unsigned int PINAOVRUN:1;
    unsigned int PINBWKP:1;
    unsigned int PINBOVRUN:1;
    unsigned int PWRWKP:1;
    unsigned int PORSTDF:1;
    unsigned int HWCFGEVR:3;
    unsigned int STBYRAM:2;
    unsigned int TRIST:1;
    unsigned int reserved_16:4;
    unsigned int ESR1WKEN:1;
    unsigned int PINAWKEN:1;
    unsigned int PINBWKEN:1;
    unsigned int PWRWKEN:1;
    unsigned int BLNKFIL:3;
    unsigned int ESR0TRIST:1;
    unsigned int reserved_28:4;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0:2;
    unsigned int ESR1WKPCLR:1;
    unsigned int ESR1OVRUNCLR:1;
    unsigned int PINAWKPCLR:1;
    unsigned int PINAOVRUNCLR:1;
    unsigned int PINBWKPCLR:1;
    unsigned int PINBOVRUNCLR:1;
    unsigned int PWRWKPCLR:1;
    unsigned int reserved_9:23;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0:1;
    unsigned int CLRC:1;
    unsigned int reserved_2:10;
    unsigned int CSS0:1;
    unsigned int CSS1:1;
    unsigned int CSS2:1;
    unsigned int reserved_15:1;
    unsigned int USRINFO:16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0:2;
    unsigned int ESR1:2;
    unsigned int reserved_4:2;
    unsigned int SMU:2;
    unsigned int SW:2;
    unsigned int STM0:2;
    unsigned int STM1:2;
    unsigned int STM2:2;
    unsigned int reserved_16:16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0:1;
    unsigned int ESR1:1;
    unsigned int reserved_2:1;
    unsigned int SMU:1;
    unsigned int SW:1;
    unsigned int STM0:1;
    unsigned int STM1:1;
    unsigned int STM2:1;
    unsigned int reserved_8:8;
    unsigned int PORST:1;
    unsigned int reserved_17:1;
    unsigned int CB0:1;
    unsigned int CB1:1;
    unsigned int CB3:1;
    unsigned int reserved_21:2;
    unsigned int EVR13:1;
    unsigned int EVR33:1;
    unsigned int SWD:1;
    unsigned int reserved_26:2;
    unsigned int STBYR:1;
    unsigned int reserved_29:3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT:1;
    unsigned int reserved_1:31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG:8;
    unsigned int FTM:7;
    unsigned int MODE:1;
    unsigned int FCBAE:1;
    unsigned int LUDIS:1;
    unsigned int reserved_18:1;
    unsigned int TRSTL:1;
    unsigned int SPDEN:1;
    unsigned int reserved_21:3;
    unsigned int RAMINT:1;
    unsigned int reserved_25:7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0:1;
    unsigned int SWRSTREQ:1;
    unsigned int reserved_2:30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0:1;
    unsigned int reserved_1:1;
    unsigned int RAMINTM:2;
    unsigned int SETLUDIS:1;
    unsigned int reserved_5:3;
    unsigned int DATM:1;
    unsigned int reserved_9:23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T:1;
    unsigned int ESR1T:1;
    unsigned int reserved_2:1;
    unsigned int SMUT:1;
    unsigned int reserved_4:28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T:1;
    unsigned int ESR1T:1;
    unsigned int reserved_2:1;
    unsigned int SMUT:1;
    unsigned int reserved_4:28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T:1;
    unsigned int ESR1T:1;
    unsigned int reserved_2:1;
    unsigned int SMUT:1;
    unsigned int reserved_4:28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T:1;
    unsigned int ESR1T:1;
    unsigned int reserved_2:1;
    unsigned int SMUT:1;
    unsigned int reserved_4:28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    volatile unsigned int ENDINIT:1;
    volatile unsigned int LCK:1;
    volatile unsigned int PW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0:2;
    unsigned int IR0:1;
    unsigned int DR:1;
    unsigned int reserved_4:1;
    unsigned int IR1:1;
    unsigned int UR:1;
    unsigned int PAR:1;
    unsigned int TCR:1;
    unsigned int TCTR:7;
    unsigned int reserved_16:16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE:1;
    unsigned int OE:1;
    unsigned int IS0:1;
    unsigned int DS:1;
    unsigned int TO:1;
    unsigned int IS1:1;
    unsigned int US:1;
    unsigned int PAS:1;
    unsigned int TCS:1;
    unsigned int TCT:7;
    unsigned int TIM:16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    volatile unsigned int ENDINIT:1;
    volatile unsigned int LCK:1;
    volatile unsigned int PW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF:1;
    unsigned int reserved_1:1;
    unsigned int IR0:1;
    unsigned int DR:1;
    unsigned int reserved_4:1;
    unsigned int IR1:1;
    unsigned int UR:1;
    unsigned int PAR:1;
    unsigned int TCR:1;
    unsigned int TCTR:7;
    unsigned int reserved_16:16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE:1;
    unsigned int OE:1;
    unsigned int IS0:1;
    unsigned int DS:1;
    unsigned int TO:1;
    unsigned int IS1:1;
    unsigned int US:1;
    unsigned int PAS:1;
    unsigned int TCS:1;
    unsigned int TCT:7;
    unsigned int TIM:16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON7_Bits B;
} Ifx_SCU_CCUCON7;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON8_Bits B;
} Ifx_SCU_CCUCON8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON9_Bits B;
} Ifx_SCU_CCUCON9;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVR33CON_Bits B;
} Ifx_SCU_EVR33CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRDVSTAT_Bits B;
} Ifx_SCU_EVRDVSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF1_Bits B;
} Ifx_SCU_EVRSDCOEFF1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF3_Bits B;
} Ifx_SCU_EVRSDCOEFF3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF4_Bits B;
} Ifx_SCU_EVRSDCOEFF4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF5_Bits B;
} Ifx_SCU_EVRSDCOEFF5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF6_Bits B;
} Ifx_SCU_EVRSDCOEFF6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL4_Bits B;
} Ifx_SCU_EVRSDCTRL4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRTRIM_Bits B;
} Ifx_SCU_EVRTRIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLCON_Bits B;
} Ifx_SCU_LCLCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 1953 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 1979 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    Ifx_SCU_CCUCON7 CCUCON7;
    Ifx_SCU_CCUCON8 CCUCON8;
    Ifx_SCU_CCUCON9 CCUCON9;
    unsigned char reserved_90[12];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    Ifx_SCU_EVRDVSTAT EVRDVSTAT;
    Ifx_SCU_EVR13CON EVR13CON;
    Ifx_SCU_EVR33CON EVR33CON;
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[3];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[3];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    unsigned char reserved_134[4];
    Ifx_SCU_LCLCON LCLCON1;
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[8];
    Ifx_SCU_EVRTRIM EVRTRIM;
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    Ifx_SCU_EVRSDCTRL4 EVRSDCTRL4;
    Ifx_SCU_EVRSDCOEFF1 EVRSDCOEFF1;
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    Ifx_SCU_EVRSDCOEFF3 EVRSDCOEFF3;
    Ifx_SCU_EVRSDCOEFF4 EVRSDCOEFF4;
    Ifx_SCU_EVRSDCOEFF5 EVRSDCOEFF5;
    Ifx_SCU_EVRSDCOEFF6 EVRSDCOEFF6;
    unsigned char reserved_1D8[8];
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[436];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxScu_reg.h" 2
# 49 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h" 2

# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.asm.h" 1
# 45 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.asm.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password);






static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password)
{

    uint32 temp = password;
    uint16 res;
    __asm("xor.t  %0,%1,0,%1,2   \n           xor.t  %0,%0,0,%1,12  \n           xor.t  %0,%0,0,%1,13  \n           xor.t  %0,%0,0,%1,14  \n           sh     %1,-1 \n           ins.t  %0,%1,14,%0,0   \n"




                                      : "=&d" (res) : "d" (temp));
    return res;

}
# 51 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h" 1
# 31 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2





# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
# 41 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 42 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 2
# 54 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}

static inline __attribute__ ((always_inline)) void __moveToDataParam0(unsigned int var)
{
 __asm__ volatile ("mov\t %%d4, %0"::"d"(var));
}

static inline __attribute__ ((always_inline)) void __moveToDataParamRet(unsigned int var)
{
 __asm__ volatile ("mov\t %%d2, %0"::"d"(var));
}

static inline __attribute__ ((always_inline)) unsigned int __getDataParamRet(void)
{
 unsigned int var;
 __asm__ volatile (" mov\t %0, %%d2":"=d"(var));
 return var;
}

static inline __attribute__ ((always_inline)) void __moveToAddrParam0(const void *var)
{
 __asm__ volatile ("mov.aa\t %%a4, %0"::"a"(var));
}

static inline __attribute__ ((always_inline)) void __jumpToFunction(const void *fun)
{
 __asm__ volatile ("ji %0"::"a"(fun));
}

static inline __attribute__ ((always_inline)) void __jumpToFunctionWithLink(const void *fun)
{
 __jump_and_link((void (*)(void))fun);
}

static inline __attribute__ ((always_inline)) void __jumpBackToLink(void)
{
 __asm__ volatile ("ji %a11");
}
# 130 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 __maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 220 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 __clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("cls  %0,%1":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("maddrs.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("madds.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) laccum __shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}
# 382 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __extru(uint32 a, uint32 p, uint32 w)
{
    uint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 420 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 472 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void __restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 506 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void __cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* __cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 __mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 568 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb __absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 __gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 __gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb __initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void __setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1203 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double __fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1274 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1327 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1373 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void __nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void __rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 __swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1453 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int __cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{

  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 1492 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 __fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}

static inline __attribute__ ((always_inline)) void* __getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void __setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}

static inline __attribute__ ((always_inline)) uint32 __crc32(uint32 b, uint32 a)
{
    uint32 returnvalue = 0;

    __asm__ volatile ("CRC32 %0,%1,%2" : "=d" (returnvalue) : "d"(b), "d"(a));

   return returnvalue;
}

static inline __attribute__ ((always_inline)) uint32 IfxCpu_calculateCrc32(uint32 *startaddress, uint8 length)
{
    uint32 returnvalue = 0;
    for (;length > 0; length--)
    {

        __asm__ ("CRC32 %0,%0,%1" : "+d" (returnvalue) : "d" (*startaddress));
        startaddress++;
    }
    return returnvalue;
}

static inline __attribute__ ((always_inline)) sint32 __popcnt(sint32 a)
{
 sint32 res;
 __asm__ volatile ("popcnt %0,%1":"=d"(res):"d"(a));
  return res;
}



static inline __attribute__ ((always_inline)) void __cacheai(uint8* p)
{
    __asm__ volatile("cachea.i [%0]0"::"a"(p));
}
# 37 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2
# 70 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = __extru(cx, 16, 4);
    return (void *)__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = __extru((int)addr, 28, 4) << 16;
    seg_idx = __extru((int)addr, 6, 16);
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 52 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h" 2
# 69 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 96 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 109 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, const IfxScuWdt_Config *config);
# 122 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, const IfxScuWdt_Config *config);
# 145 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 158 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 170 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 181 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 197 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 209 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 219 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 229 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 249 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);





static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getCpuWatchdogEndInitInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 270 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 284 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 295 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 305 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 316 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 326 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 336 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 346 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 356 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 365 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);




extern boolean IfxScuWdt_getCpuWatchdogEndInit(void);
# 379 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 389 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 399 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);
# 411 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
extern boolean IfxScuWdt_enableWatchdogWithDebugger(void);





static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = (1 << (0u)) |
                           (0 << (1u)) |
                           (password << (2u)) |
                           (watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = (0 << (0u)) |
                       (1 << (1u)) |
                       (password << (2u)) |
                       (watchdog->CON0.B.REL << (16u));


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).U = (1 << (0u)) |
                          (0 << (1u)) |
                          (password << (2u)) |
                          ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).U = (0 << (0u)) |
                      (1 << (1u)) |
                      (password << (2u)) |
                      ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.REL << (16u));


    while ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getCpuWatchdogEndInitInline(Ifx_SCU_WDTCPU *watchdog)
{
    return (boolean)watchdog->CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)(*(Ifx_SCU*)0xF0036000u).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU*)0xF0036000u).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = (1 << (0u)) |
                           (0 << (1u)) |
                           (password << (2u)) |
                           (watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = (1 << (0u)) |
                       (1 << (1u)) |
                       (password << (2u)) |
                       (watchdog->CON0.B.REL << (16u));


    while (watchdog->CON0.B.ENDINIT == 0)
    {}


}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).U = (1 << (0u)) |
                          (0 << (1u)) |
                          (password << (2u)) |
                          ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).U = (1 << (0u)) |
                      (1 << (1u)) |
                      (password << (2u)) |
                      ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.REL << (16u));


    while ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.ENDINIT == 0)
    {}
}
# 107 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 1
# 50 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h" 1
# 40 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCpu_reg.h" 1
# 54 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCpu_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCpu_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCpu_regdef.h"
typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR:32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS:1;
    volatile unsigned int BIV:31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int BTV:31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM:1;
    volatile unsigned int CE:1;
    volatile unsigned int M1:3;
    volatile unsigned int M2:3;
    volatile unsigned int M3:3;
    volatile unsigned int reserved_11:21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int RM:1;
    volatile unsigned int SP:1;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID:3;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int LOWBND:29;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int UPPBND:29;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MOD_REV:8;
    volatile unsigned int MOD_32B:8;
    volatile unsigned int MOD:16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE:8;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID:3;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA:32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int SBE:1;
    volatile unsigned int reserved_4:5;
    volatile unsigned int CWE:1;
    volatile unsigned int CFE:1;
    volatile unsigned int reserved_11:3;
    volatile unsigned int SOE:1;
    volatile unsigned int SME:1;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE:1;
    volatile unsigned int HALT:2;
    volatile unsigned int SIH:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int reserved_5:1;
    volatile unsigned int PREVSUSP:1;
    volatile unsigned int PEVT:1;
    volatile unsigned int EVTSRC:5;
    volatile unsigned int reserved_13:19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int DCBYP:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE:16;
    volatile unsigned int DSCRATCH_SZE:16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0:6;
    volatile unsigned int DCXValue:26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS:32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA:32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED:1;
    volatile unsigned int IE_T:1;
    volatile unsigned int IE_C:1;
    volatile unsigned int IE_S:1;
    volatile unsigned int IE_BI:1;
    volatile unsigned int E_INFO:6;
    volatile unsigned int IE_DUAL:1;
    volatile unsigned int IE_SP:1;
    volatile unsigned int IE_BS:1;
    volatile unsigned int reserved_14:18;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int DMSValue:31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int LOWBND:29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int UPPBND:29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE:1;
    volatile unsigned int GAE:1;
    volatile unsigned int LBE:1;
    volatile unsigned int reserved_3:3;
    volatile unsigned int CRE:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int DTME:1;
    volatile unsigned int LOE:1;
    volatile unsigned int SDE:1;
    volatile unsigned int SCE:1;
    volatile unsigned int CAC:1;
    volatile unsigned int MPE:1;
    volatile unsigned int CLE:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int ALN:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO:16;
    volatile unsigned int FCXS:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST:1;
    volatile unsigned int TCL:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int RM:2;
    volatile unsigned int reserved_10:8;
    volatile unsigned int FXE:1;
    volatile unsigned int FUE:1;
    volatile unsigned int FZE:1;
    volatile unsigned int FVE:1;
    volatile unsigned int FIE:1;
    volatile unsigned int reserved_23:3;
    volatile unsigned int FX:1;
    volatile unsigned int FU:1;
    volatile unsigned int FZ:1;
    volatile unsigned int FV:1;
    volatile unsigned int FI:1;
    volatile unsigned int reserved_31:1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC:8;
    volatile unsigned int FMT:1;
    volatile unsigned int reserved_9:7;
    volatile unsigned int DREG:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC:32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1:32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2:32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3:32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN:10;
    volatile unsigned int reserved_10:5;
    volatile unsigned int IE:1;
    volatile unsigned int PIPN:10;
    volatile unsigned int reserved_26:6;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP:32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO:16;
    volatile unsigned int LCXS:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int PC:31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int PCBYP:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV:1;
    volatile unsigned int PBINV:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE:16;
    volatile unsigned int PSCRATCH_SZE:16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO:16;
    volatile unsigned int PCXS:4;
    volatile unsigned int UL:1;
    volatile unsigned int PIE:1;
    volatile unsigned int PCPN:10;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA:32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED:1;
    volatile unsigned int IE_T:1;
    volatile unsigned int IE_C:1;
    volatile unsigned int IE_S:1;
    volatile unsigned int IE_BI:1;
    volatile unsigned int E_INFO:6;
    volatile unsigned int IE_DUAL:1;
    volatile unsigned int IE_SP:1;
    volatile unsigned int IE_BS:1;
    volatile unsigned int reserved_14:18;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int reserved_0:13;
    volatile unsigned int DAC:3;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int reserved_0:14;
    volatile unsigned int CAC:2;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE:1;
    volatile unsigned int reserved_1:1;
    volatile unsigned int FBE:1;
    volatile unsigned int reserved_3:9;
    volatile unsigned int FPE:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int FME:1;
    volatile unsigned int reserved_15:17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC:7;
    volatile unsigned int CDE:1;
    volatile unsigned int GW:1;
    volatile unsigned int IS:1;
    volatile unsigned int IO:2;
    volatile unsigned int PRS:2;
    volatile unsigned int S:1;
    volatile unsigned int reserved_15:12;
    volatile unsigned int SAV:1;
    volatile unsigned int AV:1;
    volatile unsigned int SV:1;
    volatile unsigned int V:1;
    volatile unsigned int C:1;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP:8;
    volatile unsigned int ADTYPE:2;
    volatile unsigned int reserved_10:21;
    volatile unsigned int AE:1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int PC:1;
    volatile unsigned int reserved_1:1;
    volatile unsigned int PT:1;
    volatile unsigned int reserved_3:5;
    volatile unsigned int DC:1;
    volatile unsigned int reserved_9:1;
    volatile unsigned int DT:1;
    volatile unsigned int reserved_11:13;
    volatile unsigned int IODT:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENA_Bits
{
    volatile unsigned int EN:32;
} Ifx_CPU_SPROT_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENB_Bits
{
    volatile unsigned int reserved_0:32;
} Ifx_CPU_SPROT_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENA_Bits
{
    volatile unsigned int EN:32;
} Ifx_CPU_SPROT_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENB_Bits
{
    volatile unsigned int reserved_0:32;
} Ifx_CPU_SPROT_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_LA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_SPROT_RGN_LA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_UA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_SPROT_RGN_UA_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF:1;
    volatile unsigned int PROTEN:1;
    volatile unsigned int TPROTEN:1;
    volatile unsigned int IS:1;
    volatile unsigned int IT:1;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI:5;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0:1;
    volatile unsigned int TEXP1:1;
    volatile unsigned int TEXP2:1;
    volatile unsigned int reserved_3:13;
    volatile unsigned int TTRAP:1;
    volatile unsigned int reserved_17:15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int Timer:32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR:32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:4;
    volatile unsigned int TYP:1;
    volatile unsigned int RNG:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int ASI_EN:1;
    volatile unsigned int ASI:5;
    volatile unsigned int reserved_21:6;
    volatile unsigned int AST:1;
    volatile unsigned int ALD:1;
    volatile unsigned int reserved_29:3;
} Ifx_CPU_TR_EVT_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0:1;
    volatile unsigned int T1:1;
    volatile unsigned int T2:1;
    volatile unsigned int T3:1;
    volatile unsigned int T4:1;
    volatile unsigned int T5:1;
    volatile unsigned int T6:1;
    volatile unsigned int T7:1;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_TRIG_ACC_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENA_Bits B;
} Ifx_CPU_SPROT_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENB_Bits B;
} Ifx_CPU_SPROT_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENA_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENB_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_LA_Bits B;
} Ifx_CPU_SPROT_RGN_LA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_UA_Bits B;
} Ifx_CPU_SPROT_RGN_UA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;
# 1271 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
    Ifx_CPU_CPR_L L;
    Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;


typedef volatile struct _Ifx_CPU_DPR
{
    Ifx_CPU_DPR_L L;
    Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;


typedef volatile struct _Ifx_CPU_SPROT_RGN
{
    Ifx_CPU_SPROT_RGN_LA LA;
    Ifx_CPU_SPROT_RGN_UA UA;
    Ifx_CPU_SPROT_RGN_ACCENA ACCENA;
    Ifx_CPU_SPROT_RGN_ACCENB ACCENB;
} Ifx_CPU_SPROT_RGN;


typedef volatile struct _Ifx_CPU_TPS
{
    Ifx_CPU_TPS_CON CON;
    Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;


typedef volatile struct _Ifx_CPU_TR
{
    Ifx_CPU_TR_EVT EVT;
    Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 1318 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
    unsigned char reserved_0[4144];
    Ifx_CPU_SEGEN SEGEN;
    unsigned char reserved_1034[28624];
    Ifx_CPU_TASK_ASI TASK_ASI;
    unsigned char reserved_8008[248];
    Ifx_CPU_PMA0 PMA0;
    Ifx_CPU_PMA1 PMA1;
    Ifx_CPU_PMA2 PMA2;
    unsigned char reserved_810C[3828];
    Ifx_CPU_DCON2 DCON2;
    unsigned char reserved_9004[8];
    Ifx_CPU_SMACON SMACON;
    Ifx_CPU_DSTR DSTR;
    unsigned char reserved_9014[4];
    Ifx_CPU_DATR DATR;
    Ifx_CPU_DEADD DEADD;
    Ifx_CPU_DIEAR DIEAR;
    Ifx_CPU_DIETR DIETR;
    unsigned char reserved_9028[24];
    Ifx_CPU_DCON0 DCON0;
    unsigned char reserved_9044[444];
    Ifx_CPU_PSTR PSTR;
    Ifx_CPU_PCON1 PCON1;
    Ifx_CPU_PCON2 PCON2;
    Ifx_CPU_PCON0 PCON0;
    Ifx_CPU_PIEAR PIEAR;
    Ifx_CPU_PIETR PIETR;
    unsigned char reserved_9218[488];
    Ifx_CPU_COMPAT COMPAT;
    unsigned char reserved_9404[3068];
    Ifx_CPU_FPU_TRAP_CON FPU_TRAP_CON;
    Ifx_CPU_FPU_TRAP_PC FPU_TRAP_PC;
    Ifx_CPU_FPU_TRAP_OPC FPU_TRAP_OPC;
    unsigned char reserved_A00C[4];
    Ifx_CPU_FPU_TRAP_SRC1 FPU_TRAP_SRC1;
    Ifx_CPU_FPU_TRAP_SRC2 FPU_TRAP_SRC2;
    Ifx_CPU_FPU_TRAP_SRC3 FPU_TRAP_SRC3;
    unsigned char reserved_A01C[8164];
    Ifx_CPU_DPR DPR[16];
    unsigned char reserved_C080[3968];
    Ifx_CPU_CPR CPR[8];
    unsigned char reserved_D040[4032];
    Ifx_CPU_CPXE CPXE[4];
    Ifx_CPU_DPRE DPRE[4];
    Ifx_CPU_DPWE DPWE[4];
    unsigned char reserved_E030[976];
    Ifx_CPU_TPS TPS;
    unsigned char reserved_E410[3056];
    Ifx_CPU_TR TR[8];
    unsigned char reserved_F040[3008];
    Ifx_CPU_CCTRL CCTRL;
    Ifx_CPU_CCNT CCNT;
    Ifx_CPU_ICNT ICNT;
    Ifx_CPU_M1CNT M1CNT;
    Ifx_CPU_M2CNT M2CNT;
    Ifx_CPU_M3CNT M3CNT;
    unsigned char reserved_FC18[232];
    Ifx_CPU_DBGSR DBGSR;
    unsigned char reserved_FD04[4];
    Ifx_CPU_EXEVT EXEVT;
    Ifx_CPU_CREVT CREVT;
    Ifx_CPU_SWEVT SWEVT;
    unsigned char reserved_FD14[28];
    Ifx_CPU_TRIG_ACC TRIG_ACC;
    unsigned char reserved_FD34[12];
    Ifx_CPU_DMS DMS;
    Ifx_CPU_DCX DCX;
    Ifx_CPU_DBGTCR DBGTCR;
    unsigned char reserved_FD4C[180];
    Ifx_CPU_PCXI PCXI;
    Ifx_CPU_PSW PSW;
    Ifx_CPU_PC PC;
    unsigned char reserved_FE0C[8];
    Ifx_CPU_SYSCON SYSCON;
    Ifx_CPU_CPU_ID CPU_ID;
    Ifx_CPU_CORE_ID CORE_ID;
    Ifx_CPU_BIV BIV;
    Ifx_CPU_BTV BTV;
    Ifx_CPU_ISP ISP;
    Ifx_CPU_ICR ICR;
    unsigned char reserved_FE30[8];
    Ifx_CPU_FCX FCX;
    Ifx_CPU_LCX LCX;
    unsigned char reserved_FE40[16];
    Ifx_CPU_CUS_ID CUS_ID;
    unsigned char reserved_FE54[172];
    Ifx_CPU_D D[16];
    unsigned char reserved_FF40[64];
    Ifx_CPU_A A[16];
    unsigned char reserved_FFC0[64];
} Ifx_CPU;


typedef volatile struct _Ifx_CPU_SPROT
{
    unsigned char reserved_0[57344];
    Ifx_CPU_SPROT_RGN RGN[8];
    unsigned char reserved_E080[128];
    Ifx_CPU_SPROT_ACCENA ACCENA;
    Ifx_CPU_SPROT_ACCENB ACCENB;
    unsigned char reserved_E108[7928];
} Ifx_CPU_SPROT;
# 55 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCpu_reg.h" 2
# 41 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h" 2
# 99 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxCpu_cfg.h"
typedef enum
{
    IfxCpu_DBGST_HALT_run = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;



typedef enum
{
    IfxCpu_Id_0 = 0,
    IfxCpu_Id_1 = 1,
    IfxCpu_Id_2 = 2,
    IfxCpu_Id_none
} IfxCpu_Id;



typedef enum
{
    IfxCpu_Index_0 = 0,
    IfxCpu_Index_1 = 1,
    IfxCpu_Index_2 = 2,
    IfxCpu_Index_none
} IfxCpu_Index;



typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest = 2,
    IfxCpu_PMCSR_PMST_idleMode = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;



typedef enum
{
    IfxCpu_ResourceCpu_0 = IfxCpu_Index_0,
    IfxCpu_ResourceCpu_1 = IfxCpu_Index_1,
    IfxCpu_ResourceCpu_2 = IfxCpu_Index_2,
    IfxCpu_ResourceCpu_none = IfxCpu_Index_none
} IfxCpu_ResourceCpu;





extern const IfxModule_IndexMap IfxCpu_cfg_indexMap[(3)];
# 51 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN:8;
    unsigned int reserved_8:2;
    unsigned int SRE:1;
    unsigned int TOS:2;
    unsigned int reserved_13:3;
    unsigned int ECC:6;
    unsigned int reserved_22:2;
    unsigned int SRR:1;
    unsigned int CLRR:1;
    unsigned int SETR:1;
    unsigned int IOV:1;
    unsigned int IOVCLR:1;
    unsigned int SWS:1;
    unsigned int SWSCLR:1;
    unsigned int reserved_31:1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 86 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_AGBT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_AGBT;


typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CANR
{
    Ifx_SRC_SRCR RINT[8];
} Ifx_SRC_CANR;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CIF
{
    Ifx_SRC_SRCR MI;
    Ifx_SRC_SRCR MIEP;
    Ifx_SRC_SRCR ISP;
    Ifx_SRC_SRCR MJPEG;
} Ifx_SRC_CIF;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DAM
{
    Ifx_SRC_SRCR SR[6];
} Ifx_SRC_DAM;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[128];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_DSADC
{
    Ifx_SRC_SRCR SRM;
    Ifx_SRC_SRCR SRA;
} Ifx_SRC_DSADC;


typedef volatile struct _Ifx_SRC_EMEM
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_EMEM;


typedef volatile struct _Ifx_SRC_ERAY
{
    Ifx_SRC_SRCR INT[2];
    Ifx_SRC_SRCR TINT[2];
    Ifx_SRC_SRCR NDAT[2];
    Ifx_SRC_SRCR MBSC[2];
    Ifx_SRC_SRCR OBUSY;
    Ifx_SRC_SRCR IBUSY;
} Ifx_SRC_ERAY;


typedef volatile struct _Ifx_SRC_ETH
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_ETH;


typedef volatile struct _Ifx_SRC_FCE
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_FCE;


typedef volatile struct _Ifx_SRC_FFT
{
    Ifx_SRC_SRCR DONE;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR RFS;
} Ifx_SRC_FFT;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[16];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    Ifx_SRC_SRCR ARUIRQ[3];
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR BRCIRQ;
    Ifx_SRC_SRCR CMPIRQ;
    Ifx_SRC_SRCR SPEIRQ[4];
    Ifx_SRC_SRCR PSM[2][8];
    unsigned char reserved_6C[56];
    Ifx_SRC_SRCR DPLL[27];
    unsigned char reserved_110[96];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[6][8];
    unsigned char reserved_240[320];
    Ifx_SRC_SRCR MCS[6][8];
    unsigned char reserved_440[320];
    Ifx_SRC_SRCR TOM[5][8];
    unsigned char reserved_620[352];
    Ifx_SRC_SRCR ATOM[9][4];
    unsigned char reserved_810[240];
    Ifx_SRC_SRCR MCSW0[6];
    unsigned char reserved_918[40];
    Ifx_SRC_SRCR MCSW1[6];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_HSCT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_HSCT;


typedef volatile struct _Ifx_SRC_HSM
{
    Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM;


typedef volatile struct _Ifx_SRC_HSSL
{
    Ifx_SRC_SRCR COK;
    Ifx_SRC_SRCR RDI;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR TRG;
} Ifx_SRC_HSSL;


typedef volatile struct _Ifx_SRC_I2C
{
    Ifx_SRC_SRCR BREQ;
    Ifx_SRC_SRCR LBREQ;
    Ifx_SRC_SRCR SREQ;
    Ifx_SRC_SRCR LSREQ;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR P;
} Ifx_SRC_I2C;


typedef volatile struct _Ifx_SRC_LMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_LMU;


typedef volatile struct _Ifx_SRC_MSC
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    Ifx_SRC_SRCR SR4;
} Ifx_SRC_MSC;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_PSI5
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5;


typedef volatile struct _Ifx_SRC_PSI5S
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5S;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    Ifx_SRC_SRCR HC;
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[15];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 393 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GAGBT
{
    Ifx_SRC_AGBT AGBT[1];
} Ifx_SRC_GAGBT;


typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[4];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCANR
{
    Ifx_SRC_CANR CANR[1];
} Ifx_SRC_GCANR;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCIF
{
    Ifx_SRC_CIF CIF[1];
} Ifx_SRC_GCIF;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[3];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDAM
{
    Ifx_SRC_DAM DAM[1];
} Ifx_SRC_GDAM;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GDSADC
{
    Ifx_SRC_DSADC DSADC[10];
} Ifx_SRC_GDSADC;


typedef volatile struct _Ifx_SRC_GEMEM
{
    Ifx_SRC_EMEM EMEM[1];
} Ifx_SRC_GEMEM;


typedef volatile struct _Ifx_SRC_GERAY
{
    Ifx_SRC_ERAY ERAY[2];
} Ifx_SRC_GERAY;


typedef volatile struct _Ifx_SRC_GETH
{
    Ifx_SRC_ETH ETH[1];
} Ifx_SRC_GETH;


typedef volatile struct _Ifx_SRC_GFCE
{
    Ifx_SRC_FCE FCE[1];
} Ifx_SRC_GFCE;


typedef volatile struct _Ifx_SRC_GFFT
{
    Ifx_SRC_FFT FFT[1];
} Ifx_SRC_GFFT;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[3];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GHSCT
{
    Ifx_SRC_HSCT HSCT[1];
} Ifx_SRC_GHSCT;


typedef volatile struct _Ifx_SRC_GHSM
{
    Ifx_SRC_HSM HSM[1];
} Ifx_SRC_GHSM;


typedef volatile struct _Ifx_SRC_GHSSL
{
    Ifx_SRC_HSSL HSSL[4];
    Ifx_SRC_SRCR EXI;
} Ifx_SRC_GHSSL;


typedef volatile struct _Ifx_SRC_GI2C
{
    Ifx_SRC_I2C I2C[2];
} Ifx_SRC_GI2C;


typedef volatile struct _Ifx_SRC_GLMU
{
    Ifx_SRC_LMU LMU[1];
} Ifx_SRC_GLMU;


typedef volatile struct _Ifx_SRC_GMSC
{
    Ifx_SRC_MSC MSC[3];
} Ifx_SRC_GMSC;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GPSI5
{
    Ifx_SRC_PSI5 PSI5[1];
} Ifx_SRC_GPSI5;


typedef volatile struct _Ifx_SRC_GPSI5S
{
    Ifx_SRC_PSI5S PSI5S[1];
} Ifx_SRC_GPSI5S;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[6];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[3];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[11];
    unsigned char reserved_B0[112];
    Ifx_SRC_VADCCG CG[2];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 622 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    unsigned char reserved_C[20];
    Ifx_SRC_GEMEM EMEM;
    Ifx_SRC_GAGBT AGBT;
    unsigned char reserved_28[24];
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_B0[224];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_220[112];
    Ifx_SRC_GHSCT HSCT;
    unsigned char reserved_294[12];
    Ifx_SRC_GHSSL HSSL;
    unsigned char reserved_2E4[28];
    Ifx_SRC_GI2C I2C;
    unsigned char reserved_330[32];
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_38C[84];
    Ifx_SRC_GMSC MSC;
    unsigned char reserved_41C[4];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    unsigned char reserved_4A8[8];
    Ifx_SRC_GFCE FCE;
    unsigned char reserved_4B4[60];
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_700[496];
    Ifx_SRC_GETH ETH;
    unsigned char reserved_8F4[12];
    Ifx_SRC_GCAN CAN;
    Ifx_SRC_GCANR CANR;
    unsigned char reserved_960[32];
    Ifx_SRC_GVADC VADC;
    unsigned char reserved_AC0[144];
    Ifx_SRC_GDSADC DSADC;
    unsigned char reserved_BA0[64];
    Ifx_SRC_GERAY ERAY;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[136];
    Ifx_SRC_GHSM HSM;
    unsigned char reserved_CC8[8];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[20];
    Ifx_SRC_GPSI5 PSI5;
    unsigned char reserved_D50[32];
    Ifx_SRC_GDAM DAM;
    unsigned char reserved_D88[24];
    Ifx_SRC_GCIF CIF;
    unsigned char reserved_DB0[48];
    Ifx_SRC_GLMU LMU;
    unsigned char reserved_DE4[12];
    Ifx_SRC_GPSI5S PSI5S;
    unsigned char reserved_E10[432];
    Ifx_SRC_GFFT FFT;
    unsigned char reserved_FCC[52];
    Ifx_SRC_GGPSR GPSR;
    unsigned char reserved_1060[1440];
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1F58[168];
} Ifx_SRC;
# 37 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_reg.h" 2
# 52 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxStm_reg.h" 1
# 42 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxStm_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxStm_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    unsigned int STMCAP63_32:32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    unsigned int STMCAP63_32:32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    unsigned int MSIZE0:5;
    unsigned int reserved_5:3;
    unsigned int MSTART0:5;
    unsigned int reserved_13:3;
    unsigned int MSIZE1:5;
    unsigned int reserved_21:3;
    unsigned int MSTART1:5;
    unsigned int reserved_29:3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    unsigned int CMPVAL:32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    unsigned int CMP0EN:1;
    unsigned int CMP0IR:1;
    unsigned int CMP0OS:1;
    unsigned int reserved_3:1;
    unsigned int CMP1EN:1;
    unsigned int CMP1IR:1;
    unsigned int CMP1OS:1;
    unsigned int reserved_7:25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    unsigned int CMP0IRR:1;
    unsigned int CMP0IRS:1;
    unsigned int CMP1IRR:1;
    unsigned int CMP1IRS:1;
    unsigned int reserved_4:28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    unsigned int reserved_0:24;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    unsigned int STM31_0:32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    unsigned int STM31_0:32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    unsigned int STM35_4:32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    unsigned int STM39_8:32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    unsigned int STM43_12:32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    unsigned int STM47_16:32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    unsigned int STM51_20:32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    unsigned int STM63_32:32;
} Ifx_STM_TIM6_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 429 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
    Ifx_STM_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_STM_ID ID;
    unsigned char reserved_C[4];
    Ifx_STM_TIM0 TIM0;
    Ifx_STM_TIM1 TIM1;
    Ifx_STM_TIM2 TIM2;
    Ifx_STM_TIM3 TIM3;
    Ifx_STM_TIM4 TIM4;
    Ifx_STM_TIM5 TIM5;
    Ifx_STM_TIM6 TIM6;
    Ifx_STM_CAP CAP;
    Ifx_STM_CMP CMP[2];
    Ifx_STM_CMCON CMCON;
    Ifx_STM_ICR ICR;
    Ifx_STM_ISCR ISCR;
    unsigned char reserved_44[12];
    Ifx_STM_TIM0SV TIM0SV;
    Ifx_STM_CAPSV CAPSV;
    unsigned char reserved_58[144];
    Ifx_STM_OCS OCS;
    Ifx_STM_KRSTCLR KRSTCLR;
    Ifx_STM_KRST1 KRST1;
    Ifx_STM_KRST0 KRST0;
    Ifx_STM_ACCEN1 ACCEN1;
    Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 43 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxStm_reg.h" 2
# 54 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 1
# 56 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h" 1
# 58 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 2
# 94 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
typedef unsigned int IfxCpu_spinLock;



typedef unsigned int IfxCpu_mutexLock;



typedef unsigned int IfxCpu_syncEvent;
# 112 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
typedef enum
{
    IfxCpu_CoreMode_halt,
    IfxCpu_CoreMode_run,
    IfxCpu_CoreMode_idle,
    IfxCpu_CoreMode_sleep,
    IfxCpu_CoreMode_stby,
    IfxCpu_CoreMode_unknown
} IfxCpu_CoreMode;



typedef enum
{
    IfxCpu_CounterMode_normal = 0,
    IfxCpu_CounterMode_task = 1
} IfxCpu_CounterMode;
# 140 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
typedef struct
{
    uint32 counter;
    boolean overlfow;
} IfxCpu_Counter;







typedef struct
{
    IfxCpu_Counter instruction;
    IfxCpu_Counter clock;
    IfxCpu_Counter counter1;
    IfxCpu_Counter counter2;
    IfxCpu_Counter counter3;
} IfxCpu_Perf;
# 174 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu);






static inline __attribute__ ((always_inline)) IfxCpu_Id IfxCpu_getCoreId(void);





static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void);
# 197 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd);




static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId);




static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void);
# 217 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern IfxCpu_CoreMode IfxCpu_getCoreMode(Ifx_CPU *cpu);





extern IfxCpu_ResourceCpu IfxCpu_getIndex(Ifx_CPU *cpu);
# 232 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setCoreMode(Ifx_CPU *cpu, IfxCpu_CoreMode mode);
# 241 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setProgramCounter(Ifx_CPU *cpu, uint32 programCounter);
# 250 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_startCore(Ifx_CPU *cpu, uint32 programCounter);
# 267 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void);
# 277 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void);





static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void);




static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void);
# 297 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled);
# 315 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable);
# 324 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable);




static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void);





static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address);
# 346 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable);
# 357 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable);
# 374 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void);
# 387 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void);







static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void);
# 408 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void);





static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint16 address);






static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint16 address);







static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode);
# 440 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable);







static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void);
# 457 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count);
# 466 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count);







static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count);
# 501 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_acquireMutex(IfxCpu_mutexLock *lock);
# 519 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_releaseMutex(IfxCpu_mutexLock *lock);







extern void IfxCpu_resetSpinLock(IfxCpu_spinLock *lock);
# 546 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setSpinLock(IfxCpu_spinLock *lock, uint32 timeoutCount);
# 561 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern uint32 IfxCpu_getRandomValue(uint32 *seed);







extern uint32 IfxCpu_getRandomValueWithinRange(uint32 *seed, uint32 min, uint32 max);
# 612 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_waitEvent(IfxCpu_syncEvent *event, uint32 timeoutMilliSec);
# 621 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_emitEvent(IfxCpu_syncEvent *event);







static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void)
{
    Ifx_CPU_ICR reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE2C" : "=d" (__res) :: "memory"); __res; }));
    return reg.B.IE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void)
{
    boolean enabled;
    enabled = IfxCpu_areInterruptsEnabled();
    __asm__ volatile ("disable" : : : "memory");
    __nop();
    return enabled;
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void)
{
    __asm__ volatile ("enable" : : : "memory");
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex]);



    checkRestrictionMask = ((uint16)1 << (7 - coreIndex)) | ((uint16)1 << 0xC);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8100" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8100" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex]);



    checkRestrictionMask = ((uint16)1 << (7 - coreIndex)) | ((uint16)1 << 0xD);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8104" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8104" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void)
{
    __asm__ volatile ("disable" : : : "memory");
    __nop();
}


static inline __attribute__ ((always_inline)) Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu)
{
    Ifx_CPU *module;

    if (cpu < IfxCpu_ResourceCpu_none)
    {
        module = (Ifx_CPU *)IfxCpu_cfg_indexMap[cpu].module;
    }
    else
    {
        module = ((void *)0);
    }

    return module;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC04);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC04);
}


static inline __attribute__ ((always_inline)) IfxCpu_Id IfxCpu_getCoreId(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_Id)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC08);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC08);
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint16 address)
{
    Ifx_CPU_CCNT ccnt;

    if (address == 0xFC04)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC08)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC0C)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC10)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC14)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    }

    return ccnt.B.CountValue;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint16 address)
{
    Ifx_CPU_CCNT ccnt;

    if (address == 0xFC04)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC08)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC0C)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC10)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC14)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    }

    return ccnt.B.SOvf;
}


static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd)
{
    uint32 k;
    uint32 nxt_cxi_val = 0;
    uint32 *prvCsa = 0U;
    uint32 *nxtCsa = csaBegin;
    uint32 numOfCsa = (((uint32)csaEnd - (uint32)csaBegin) / 64U);

    for (k = 0; k < numOfCsa; k++)
    {
        nxt_cxi_val = ((uint32)nxtCsa & (0XFU << 28)) >> 12 | ((uint32)nxtCsa & (0XFFFFU << 6)) >> 6;

        if (k == 0)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        if (k == (numOfCsa - 3U))
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }

        prvCsa = (uint32 *)nxtCsa;
        nxtCsa += 16;
    }

    *prvCsa = 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void)
{
    uint16 cpuWdtPassword = IfxScuWdt_getCpuWatchdogPassword();
    {
        IfxScuWdt_clearCpuEndinit(cpuWdtPassword);
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x9204" : "=d" (__res) :: "memory"); __res; }));
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinit(cpuWdtPassword);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address)
{
    uint8 segment = (uint32)address >> 24;
    return ((segment == (8)) || (segment == (9))) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));

    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC08" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC0C" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC10" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC14" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = 1;
    cctrl.B.CM = mode;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled)
{
    if (enabled != 0)
    {
        __asm__ volatile ("enable" : : : "memory");
    }
}


static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable)
{
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    cctrl.B.CE = enable;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable)
{
    if (enable)
    {
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = 0;
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
    }

    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId)
{
    Ifx_CPU_PSW psw;
    ((void)0);
    psw.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    psw.B.S = safetyId;
    do { unsigned __newval = (unsigned) ((uint32)psw.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void)
{
    IfxCpu_Perf result;


    __stopPerfCounters();

    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    result.clock.counter = ccnt.B.CountValue;
    result.clock.overlfow = ccnt.B.SOvf;

    Ifx_CPU_ICNT icnt;
    icnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    result.instruction.counter = icnt.B.CountValue;
    result.instruction.overlfow = icnt.B.SOvf;

    Ifx_CPU_M1CNT m1cnt;
    m1cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    result.counter1.counter = m1cnt.B.CountValue;
    result.counter1.overlfow = m1cnt.B.SOvf;

    Ifx_CPU_M2CNT m2cnt;
    m2cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    result.counter2.counter = m2cnt.B.CountValue;
    result.counter2.overlfow = m2cnt.B.SOvf;

    Ifx_CPU_M3CNT m3cnt;
    m3cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    result.counter3.counter = m3cnt.B.CountValue;
    result.counter3.overlfow = m3cnt.B.SOvf;

    return result;
}


static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void)
{
    (*(Ifx_SCU*)0xF0036000u).SWRSTCON.B.SWRSTREQ = 1;


    while (1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC04, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC08, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count)
{
    Ifx_CPU_CCTRL cctrl;
    boolean enableBit;

    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    enableBit = cctrl.B.CE;
    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    count &= ~(1U << 31);
    do { unsigned __newval = (unsigned) (count); __asm__ volatile ("mtcr LO:" "address" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = enableBit;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}
# 108 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h" 2


# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFlash_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFlash_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFlash_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFlash_regdef.h"
typedef struct _Ifx_FLASH_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_FLASH_ACCEN0_Bits;


typedef struct _Ifx_FLASH_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_FLASH_ACCEN1_Bits;


typedef struct _Ifx_FLASH_CBAB_CFG_Bits
{
    unsigned int SEL:6;
    unsigned int reserved_6:2;
    unsigned int CLR:1;
    unsigned int DIS:1;
    unsigned int reserved_10:22;
} Ifx_FLASH_CBAB_CFG_Bits;


typedef struct _Ifx_FLASH_CBAB_STAT_Bits
{
    unsigned int VLD0:1;
    unsigned int VLD1:1;
    unsigned int VLD2:1;
    unsigned int VLD3:1;
    unsigned int VLD4:1;
    unsigned int VLD5:1;
    unsigned int VLD6:1;
    unsigned int VLD7:1;
    unsigned int VLD8:1;
    unsigned int VLD9:1;
    unsigned int reserved_10:22;
} Ifx_FLASH_CBAB_STAT_Bits;


typedef struct _Ifx_FLASH_CBAB_TOP_Bits
{
    unsigned int reserved_0:5;
    unsigned int ADDR:19;
    unsigned int ERR:6;
    unsigned int VLD:1;
    unsigned int CLR:1;
} Ifx_FLASH_CBAB_TOP_Bits;


typedef struct _Ifx_FLASH_COMM0_Bits
{
    unsigned int STATUS:8;
    unsigned int reserved_8:24;
} Ifx_FLASH_COMM0_Bits;


typedef struct _Ifx_FLASH_COMM1_Bits
{
    unsigned int STATUS:8;
    unsigned int DATA:8;
    unsigned int reserved_16:16;
} Ifx_FLASH_COMM1_Bits;


typedef struct _Ifx_FLASH_COMM2_Bits
{
    unsigned int STATUS:8;
    unsigned int DATA:8;
    unsigned int reserved_16:16;
} Ifx_FLASH_COMM2_Bits;


typedef struct _Ifx_FLASH_ECCRD_Bits
{
    unsigned int RCODE:22;
    unsigned int reserved_22:8;
    unsigned int EDCERRINJ:1;
    unsigned int ECCORDIS:1;
} Ifx_FLASH_ECCRD_Bits;


typedef struct _Ifx_FLASH_ECCRP_Bits
{
    unsigned int RCODE:22;
    unsigned int reserved_22:8;
    unsigned int EDCERRINJ:1;
    unsigned int ECCORDIS:1;
} Ifx_FLASH_ECCRP_Bits;


typedef struct _Ifx_FLASH_ECCW_Bits
{
    unsigned int WCODE:22;
    unsigned int reserved_22:8;
    unsigned int DECENCDIS:1;
    unsigned int PECENCDIS:1;
} Ifx_FLASH_ECCW_Bits;


typedef struct _Ifx_FLASH_FCON_Bits
{
    unsigned int WSPFLASH:4;
    unsigned int WSECPF:2;
    unsigned int WSDFLASH:6;
    unsigned int WSECDF:3;
    unsigned int IDLE:1;
    unsigned int ESLDIS:1;
    unsigned int SLEEP:1;
    unsigned int NSAFECC:1;
    unsigned int STALL:1;
    unsigned int RES21:2;
    unsigned int RES23:2;
    unsigned int VOPERM:1;
    unsigned int SQERM:1;
    unsigned int PROERM:1;
    unsigned int reserved_27:3;
    unsigned int PR5V:1;
    unsigned int EOBM:1;
} Ifx_FLASH_FCON_Bits;


typedef struct _Ifx_FLASH_FPRO_Bits
{
    unsigned int PROINP:1;
    unsigned int PRODISP:1;
    unsigned int PROIND:1;
    unsigned int PRODISD:1;
    unsigned int PROINHSMCOTP:1;
    unsigned int RES5:1;
    unsigned int PROINOTP:1;
    unsigned int RES7:1;
    unsigned int PROINDBG:1;
    unsigned int PRODISDBG:1;
    unsigned int PROINHSM:1;
    unsigned int reserved_11:5;
    unsigned int DCFP:1;
    unsigned int DDFP:1;
    unsigned int DDFPX:1;
    unsigned int reserved_19:1;
    unsigned int DDFD:1;
    unsigned int reserved_21:1;
    unsigned int ENPE:2;
    unsigned int reserved_24:8;
} Ifx_FLASH_FPRO_Bits;


typedef struct _Ifx_FLASH_FSR_Bits
{
    unsigned int FABUSY:1;
    unsigned int D0BUSY:1;
    unsigned int D1BUSY:1;
    unsigned int P0BUSY:1;
    unsigned int P1BUSY:1;
    unsigned int P2BUSY:1;
    unsigned int P3BUSY:1;
    unsigned int PROG:1;
    unsigned int ERASE:1;
    unsigned int PFPAGE:1;
    unsigned int DFPAGE:1;
    unsigned int OPER:1;
    unsigned int SQER:1;
    unsigned int PROER:1;
    unsigned int PFSBER:1;
    unsigned int PFDBER:1;
    unsigned int PFMBER:1;
    unsigned int RES17:1;
    unsigned int DFSBER:1;
    unsigned int DFDBER:1;
    unsigned int DFTBER:1;
    unsigned int DFMBER:1;
    unsigned int SRIADDERR:1;
    unsigned int reserved_23:2;
    unsigned int PVER:1;
    unsigned int EVER:1;
    unsigned int SPND:1;
    unsigned int SLM:1;
    unsigned int reserved_29:1;
    unsigned int ORIER:1;
    unsigned int reserved_31:1;
} Ifx_FLASH_FSR_Bits;


typedef struct _Ifx_FLASH_HSMFCON_Bits
{
    unsigned int LCKHSMUCB:2;
    unsigned int reserved_2:22;
    unsigned int VOPERM:1;
    unsigned int SQERM:1;
    unsigned int reserved_26:5;
    unsigned int EOBM:1;
} Ifx_FLASH_HSMFCON_Bits;


typedef struct _Ifx_FLASH_HSMFSR_Bits
{
    unsigned int reserved_0:2;
    unsigned int D1BUSY:1;
    unsigned int reserved_3:4;
    unsigned int PROG:1;
    unsigned int ERASE:1;
    unsigned int reserved_9:1;
    unsigned int DFPAGE:1;
    unsigned int OPER:1;
    unsigned int SQER:1;
    unsigned int reserved_13:12;
    unsigned int PVER:1;
    unsigned int EVER:1;
    unsigned int SPND:1;
    unsigned int reserved_28:4;
} Ifx_FLASH_HSMFSR_Bits;


typedef struct _Ifx_FLASH_HSMMARD_Bits
{
    unsigned int reserved_0:1;
    unsigned int SELD1:1;
    unsigned int reserved_2:1;
    unsigned int SPND:1;
    unsigned int SPNDERR:1;
    unsigned int reserved_5:27;
} Ifx_FLASH_HSMMARD_Bits;


typedef struct _Ifx_FLASH_HSMRRAD_Bits
{
    unsigned int reserved_0:3;
    unsigned int ADD:29;
} Ifx_FLASH_HSMRRAD_Bits;


typedef struct _Ifx_FLASH_HSMRRCT_Bits
{
    unsigned int STRT:1;
    unsigned int STP:1;
    unsigned int BUSY:1;
    unsigned int DONE:1;
    unsigned int ERR:1;
    unsigned int reserved_5:3;
    unsigned int EOBM:1;
    unsigned int reserved_9:7;
    unsigned int CNT:16;
} Ifx_FLASH_HSMRRCT_Bits;


typedef struct _Ifx_FLASH_HSMRRD0_Bits
{
    unsigned int DATA:32;
} Ifx_FLASH_HSMRRD0_Bits;


typedef struct _Ifx_FLASH_HSMRRD1_Bits
{
    unsigned int DATA:32;
} Ifx_FLASH_HSMRRD1_Bits;


typedef struct _Ifx_FLASH_ID_Bits
{
    unsigned int MOD_REV:8;
    unsigned int MOD_TYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_FLASH_ID_Bits;


typedef struct _Ifx_FLASH_MARD_Bits
{
    unsigned int HMARGIN:1;
    unsigned int SELD0:1;
    unsigned int reserved_2:1;
    unsigned int SPND:1;
    unsigned int SPNDERR:1;
    unsigned int reserved_5:10;
    unsigned int TRAPDIS:1;
    unsigned int reserved_16:16;
} Ifx_FLASH_MARD_Bits;


typedef struct _Ifx_FLASH_MARP_Bits
{
    unsigned int SELP0:1;
    unsigned int SELP1:1;
    unsigned int SELP2:1;
    unsigned int SELP3:1;
    unsigned int reserved_4:11;
    unsigned int TRAPDIS:1;
    unsigned int reserved_16:16;
} Ifx_FLASH_MARP_Bits;


typedef struct _Ifx_FLASH_PROCOND_Bits
{
    unsigned int L:1;
    unsigned int NSAFECC:1;
    unsigned int RAMIN:2;
    unsigned int RAMINSEL:4;
    unsigned int OSCCFG:1;
    unsigned int MODE:2;
    unsigned int APREN:1;
    unsigned int CAP0EN:1;
    unsigned int CAP1EN:1;
    unsigned int CAP2EN:1;
    unsigned int CAP3EN:1;
    unsigned int ESR0CNT:12;
    unsigned int RES29:2;
    unsigned int RES30:1;
    unsigned int RPRO:1;
} Ifx_FLASH_PROCOND_Bits;


typedef struct _Ifx_FLASH_PROCONDBG_Bits
{
    unsigned int OCDSDIS:1;
    unsigned int DBGIFLCK:1;
    unsigned int EDM:2;
    unsigned int reserved_4:28;
} Ifx_FLASH_PROCONDBG_Bits;


typedef struct _Ifx_FLASH_PROCONHSM_Bits
{
    unsigned int HSMDBGDIS:1;
    unsigned int DBGIFLCK:1;
    unsigned int TSTIFLCK:1;
    unsigned int HSMTSTDIS:1;
    unsigned int RES15:12;
    unsigned int reserved_16:16;
} Ifx_FLASH_PROCONHSM_Bits;


typedef struct _Ifx_FLASH_PROCONHSMCOTP_Bits
{
    unsigned int HSMBOOTEN:1;
    unsigned int SSWWAIT:1;
    unsigned int HSMDX:1;
    unsigned int HSM6X:1;
    unsigned int HSM16X:1;
    unsigned int HSM17X:1;
    unsigned int S6ROM:1;
    unsigned int HSMENPINS:2;
    unsigned int HSMENRES:2;
    unsigned int DESTDBG:2;
    unsigned int BLKFLAN:1;
    unsigned int reserved_14:2;
    unsigned int S16ROM:1;
    unsigned int S17ROM:1;
    unsigned int reserved_18:14;
} Ifx_FLASH_PROCONHSMCOTP_Bits;


typedef struct _Ifx_FLASH_PROCONOTP_Bits
{
    unsigned int S0ROM:1;
    unsigned int S1ROM:1;
    unsigned int S2ROM:1;
    unsigned int S3ROM:1;
    unsigned int S4ROM:1;
    unsigned int S5ROM:1;
    unsigned int S6ROM:1;
    unsigned int S7ROM:1;
    unsigned int S8ROM:1;
    unsigned int S9ROM:1;
    unsigned int S10ROM:1;
    unsigned int S11ROM:1;
    unsigned int S12ROM:1;
    unsigned int S13ROM:1;
    unsigned int S14ROM:1;
    unsigned int S15ROM:1;
    unsigned int S16ROM:1;
    unsigned int S17ROM:1;
    unsigned int S18ROM:1;
    unsigned int S19ROM:1;
    unsigned int S20ROM:1;
    unsigned int S21ROM:1;
    unsigned int S22ROM:1;
    unsigned int S23ROM:1;
    unsigned int S24ROM:1;
    unsigned int S25ROM:1;
    unsigned int S26ROM:1;
    unsigned int reserved_27:2;
    unsigned int BML:2;
    unsigned int TP:1;
} Ifx_FLASH_PROCONOTP_Bits;


typedef struct _Ifx_FLASH_PROCONP_Bits
{
    unsigned int S0L:1;
    unsigned int S1L:1;
    unsigned int S2L:1;
    unsigned int S3L:1;
    unsigned int S4L:1;
    unsigned int S5L:1;
    unsigned int S6L:1;
    unsigned int S7L:1;
    unsigned int S8L:1;
    unsigned int S9L:1;
    unsigned int S10L:1;
    unsigned int S11L:1;
    unsigned int S12L:1;
    unsigned int S13L:1;
    unsigned int S14L:1;
    unsigned int S15L:1;
    unsigned int S16L:1;
    unsigned int S17L:1;
    unsigned int S18L:1;
    unsigned int S19L:1;
    unsigned int S20L:1;
    unsigned int S21L:1;
    unsigned int S22L:1;
    unsigned int S23L:1;
    unsigned int S24L:1;
    unsigned int S25L:1;
    unsigned int S26L:1;
    unsigned int reserved_27:4;
    unsigned int RPRO:1;
} Ifx_FLASH_PROCONP_Bits;


typedef struct _Ifx_FLASH_PROCONWOP_Bits
{
    unsigned int S0WOP:1;
    unsigned int S1WOP:1;
    unsigned int S2WOP:1;
    unsigned int S3WOP:1;
    unsigned int S4WOP:1;
    unsigned int S5WOP:1;
    unsigned int S6WOP:1;
    unsigned int S7WOP:1;
    unsigned int S8WOP:1;
    unsigned int S9WOP:1;
    unsigned int S10WOP:1;
    unsigned int S11WOP:1;
    unsigned int S12WOP:1;
    unsigned int S13WOP:1;
    unsigned int S14WOP:1;
    unsigned int S15WOP:1;
    unsigned int S16WOP:1;
    unsigned int S17WOP:1;
    unsigned int S18WOP:1;
    unsigned int S19WOP:1;
    unsigned int S20WOP:1;
    unsigned int S21WOP:1;
    unsigned int S22WOP:1;
    unsigned int S23WOP:1;
    unsigned int S24WOP:1;
    unsigned int S25WOP:1;
    unsigned int S26WOP:1;
    unsigned int reserved_27:4;
    unsigned int DATM:1;
} Ifx_FLASH_PROCONWOP_Bits;


typedef struct _Ifx_FLASH_RDB_CFG0_Bits
{
    unsigned int TAG:6;
    unsigned int reserved_6:26;
} Ifx_FLASH_RDB_CFG0_Bits;


typedef struct _Ifx_FLASH_RDB_CFG1_Bits
{
    unsigned int TAG:6;
    unsigned int reserved_6:26;
} Ifx_FLASH_RDB_CFG1_Bits;


typedef struct _Ifx_FLASH_RDB_CFG2_Bits
{
    unsigned int TAG:6;
    unsigned int reserved_6:26;
} Ifx_FLASH_RDB_CFG2_Bits;


typedef struct _Ifx_FLASH_RRAD_Bits
{
    unsigned int reserved_0:3;
    unsigned int ADD:29;
} Ifx_FLASH_RRAD_Bits;


typedef struct _Ifx_FLASH_RRCT_Bits
{
    unsigned int STRT:1;
    unsigned int STP:1;
    unsigned int BUSY:1;
    unsigned int DONE:1;
    unsigned int ERR:1;
    unsigned int reserved_5:3;
    unsigned int EOBM:1;
    unsigned int reserved_9:7;
    unsigned int CNT:16;
} Ifx_FLASH_RRCT_Bits;


typedef struct _Ifx_FLASH_RRD0_Bits
{
    unsigned int DATA:32;
} Ifx_FLASH_RRD0_Bits;


typedef struct _Ifx_FLASH_RRD1_Bits
{
    unsigned int DATA:32;
} Ifx_FLASH_RRD1_Bits;


typedef struct _Ifx_FLASH_UBAB_CFG_Bits
{
    unsigned int SEL:6;
    unsigned int reserved_6:2;
    unsigned int CLR:1;
    unsigned int DIS:1;
    unsigned int reserved_10:22;
} Ifx_FLASH_UBAB_CFG_Bits;


typedef struct _Ifx_FLASH_UBAB_STAT_Bits
{
    unsigned int VLD0:1;
    unsigned int reserved_1:31;
} Ifx_FLASH_UBAB_STAT_Bits;


typedef struct _Ifx_FLASH_UBAB_TOP_Bits
{
    unsigned int reserved_0:5;
    unsigned int ADDR:19;
    unsigned int ERR:6;
    unsigned int VLD:1;
    unsigned int CLR:1;
} Ifx_FLASH_UBAB_TOP_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN0_Bits B;
} Ifx_FLASH_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN1_Bits B;
} Ifx_FLASH_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_CFG_Bits B;
} Ifx_FLASH_CBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_STAT_Bits B;
} Ifx_FLASH_CBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_TOP_Bits B;
} Ifx_FLASH_CBAB_TOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM0_Bits B;
} Ifx_FLASH_COMM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM1_Bits B;
} Ifx_FLASH_COMM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM2_Bits B;
} Ifx_FLASH_COMM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRD_Bits B;
} Ifx_FLASH_ECCRD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRP_Bits B;
} Ifx_FLASH_ECCRP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCW_Bits B;
} Ifx_FLASH_ECCW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FCON_Bits B;
} Ifx_FLASH_FCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FPRO_Bits B;
} Ifx_FLASH_FPRO;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FSR_Bits B;
} Ifx_FLASH_FSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMFCON_Bits B;
} Ifx_FLASH_HSMFCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMFSR_Bits B;
} Ifx_FLASH_HSMFSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMMARD_Bits B;
} Ifx_FLASH_HSMMARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRAD_Bits B;
} Ifx_FLASH_HSMRRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRCT_Bits B;
} Ifx_FLASH_HSMRRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRD0_Bits B;
} Ifx_FLASH_HSMRRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRD1_Bits B;
} Ifx_FLASH_HSMRRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ID_Bits B;
} Ifx_FLASH_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARD_Bits B;
} Ifx_FLASH_MARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARP_Bits B;
} Ifx_FLASH_MARP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCOND_Bits B;
} Ifx_FLASH_PROCOND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONDBG_Bits B;
} Ifx_FLASH_PROCONDBG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSM_Bits B;
} Ifx_FLASH_PROCONHSM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSMCOTP_Bits B;
} Ifx_FLASH_PROCONHSMCOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONOTP_Bits B;
} Ifx_FLASH_PROCONOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONP_Bits B;
} Ifx_FLASH_PROCONP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONWOP_Bits B;
} Ifx_FLASH_PROCONWOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG0_Bits B;
} Ifx_FLASH_RDB_CFG0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG1_Bits B;
} Ifx_FLASH_RDB_CFG1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG2_Bits B;
} Ifx_FLASH_RDB_CFG2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRAD_Bits B;
} Ifx_FLASH_RRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRCT_Bits B;
} Ifx_FLASH_RRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD0_Bits B;
} Ifx_FLASH_RRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD1_Bits B;
} Ifx_FLASH_RRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_CFG_Bits B;
} Ifx_FLASH_UBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_STAT_Bits B;
} Ifx_FLASH_UBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_TOP_Bits B;
} Ifx_FLASH_UBAB_TOP;
# 949 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH_CBAB
{
    Ifx_FLASH_CBAB_CFG CFG;
    Ifx_FLASH_CBAB_STAT STAT;
    Ifx_FLASH_CBAB_TOP TOP;
} Ifx_FLASH_CBAB;


typedef volatile struct _Ifx_FLASH_RDB
{
    Ifx_FLASH_RDB_CFG0 CFG0;
    Ifx_FLASH_RDB_CFG1 CFG1;
    Ifx_FLASH_RDB_CFG2 CFG2;
} Ifx_FLASH_RDB;


typedef volatile struct _Ifx_FLASH_UBAB
{
    Ifx_FLASH_UBAB_CFG CFG;
    Ifx_FLASH_UBAB_STAT STAT;
    Ifx_FLASH_UBAB_TOP TOP;
} Ifx_FLASH_UBAB;
# 983 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH
{
    Ifx_FLASH_COMM0 COMM0;
    Ifx_FLASH_COMM1 COMM1;
    Ifx_FLASH_COMM2 COMM2;
    unsigned char reserved_C[4092];
    Ifx_FLASH_ID ID;
    unsigned char reserved_100C[4];
    Ifx_FLASH_FSR FSR;
    Ifx_FLASH_FCON FCON;
    unsigned char reserved_1018[4];
    Ifx_FLASH_FPRO FPRO;
    Ifx_FLASH_PROCONP PROCONP[4];
    Ifx_FLASH_PROCOND PROCOND;
    Ifx_FLASH_PROCONHSMCOTP PROCONHSMCOTP;
    Ifx_FLASH_PROCONOTP PROCONOTP[4];
    Ifx_FLASH_PROCONWOP PROCONWOP[4];
    Ifx_FLASH_PROCONDBG PROCONDBG;
    Ifx_FLASH_PROCONHSM PROCONHSM;
    Ifx_FLASH_RDB RDBCFG[4];
    Ifx_FLASH_ECCW ECCW;
    Ifx_FLASH_ECCRP ECCRP[4];
    Ifx_FLASH_ECCRD ECCRD;
    Ifx_FLASH_MARP MARP;
    Ifx_FLASH_MARD MARD;
    unsigned char reserved_10B0[4];
    Ifx_FLASH_CBAB CBAB[4];
    Ifx_FLASH_UBAB UBAB[4];
    unsigned char reserved_1114[44];
    Ifx_FLASH_RRCT RRCT;
    Ifx_FLASH_RRD0 RRD0;
    Ifx_FLASH_RRD1 RRD1;
    Ifx_FLASH_RRAD RRAD;
    unsigned char reserved_1150[176];
    Ifx_FLASH_HSMFSR HSMFSR;
    Ifx_FLASH_HSMFCON HSMFCON;
    Ifx_FLASH_HSMMARD HSMMARD;
    Ifx_FLASH_HSMRRCT HSMRRCT;
    Ifx_FLASH_HSMRRD0 HSMRRD0;
    Ifx_FLASH_HSMRRD1 HSMRRD1;
    Ifx_FLASH_HSMRRAD HSMRRAD;
    unsigned char reserved_121C[476];
    Ifx_FLASH_ACCEN1 ACCEN1;
    Ifx_FLASH_ACCEN0 ACCEN0;
} Ifx_FLASH;
# 37 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxFlash_reg.h" 2
# 111 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxScu_PinMap.h" 1
# 33 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxScu_PinMap.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h" 1
# 43 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxPort_cfg.h" 1
# 41 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxPort_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxPort_reg.h" 1
# 99 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxPort_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxPort_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int reserved_16:16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0:1;
    unsigned int P1:1;
    unsigned int P2:1;
    unsigned int P3:1;
    unsigned int P4:1;
    unsigned int P5:1;
    unsigned int P6:1;
    unsigned int P7:1;
    unsigned int P8:1;
    unsigned int P9:1;
    unsigned int P10:1;
    unsigned int P11:1;
    unsigned int P12:1;
    unsigned int P13:1;
    unsigned int P14:1;
    unsigned int P15:1;
    unsigned int reserved_16:16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0:3;
    unsigned int PC0:5;
    unsigned int reserved_8:3;
    unsigned int PC1:5;
    unsigned int reserved_16:3;
    unsigned int PC2:5;
    unsigned int reserved_24:3;
    unsigned int PC3:5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0:3;
    unsigned int PC12:5;
    unsigned int reserved_8:3;
    unsigned int PC13:5;
    unsigned int reserved_16:3;
    unsigned int PC14:5;
    unsigned int reserved_24:3;
    unsigned int PC15:5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0:3;
    unsigned int PC4:5;
    unsigned int reserved_8:3;
    unsigned int PC5:5;
    unsigned int reserved_16:3;
    unsigned int PC6:5;
    unsigned int reserved_24:3;
    unsigned int PC7:5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0:3;
    unsigned int PC8:5;
    unsigned int reserved_8:3;
    unsigned int PC9:5;
    unsigned int reserved_16:3;
    unsigned int PC10:5;
    unsigned int reserved_24:3;
    unsigned int PC11:5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_LPCR0_Bits
{
    unsigned int reserved_0:1;
    unsigned int PS1:1;
    unsigned int reserved_2:30;
} Ifx_P_LPCR0_Bits;


typedef struct _Ifx_P_LPCR0_P21_Bits
{
    unsigned int RDIS_CTRL:1;
    unsigned int RX_DIS:1;
    unsigned int TERM:1;
    unsigned int LRXTERM:5;
    unsigned int reserved_8:24;
} Ifx_P_LPCR0_P21_Bits;


typedef struct _Ifx_P_LPCR1_Bits
{
    unsigned int reserved_0:1;
    unsigned int PS1:1;
    unsigned int reserved_2:30;
} Ifx_P_LPCR1_Bits;


typedef struct _Ifx_P_LPCR1_P21_Bits
{
    unsigned int RDIS_CTRL:1;
    unsigned int RX_DIS:1;
    unsigned int TERM:1;
    unsigned int LRXTERM:5;
    unsigned int reserved_8:24;
} Ifx_P_LPCR1_P21_Bits;


typedef struct _Ifx_P_LPCR2_Bits
{
    unsigned int reserved_0:1;
    unsigned int PS1:1;
    unsigned int reserved_2:30;
} Ifx_P_LPCR2_Bits;


typedef struct _Ifx_P_LPCR2_P21_Bits
{
    unsigned int reserved_0:8;
    unsigned int LVDSR:1;
    unsigned int LVDSRL:1;
    unsigned int reserved_10:2;
    unsigned int TDIS_CTRL:1;
    unsigned int TX_DIS:1;
    unsigned int TX_PD:1;
    unsigned int TX_PWDPD:1;
    unsigned int reserved_16:16;
} Ifx_P_LPCR2_P21_Bits;


typedef struct _Ifx_P_LPCR3_Bits
{
    unsigned int reserved_0:1;
    unsigned int PS1:1;
    unsigned int reserved_2:30;
} Ifx_P_LPCR3_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0:16;
    unsigned int PCL0:1;
    unsigned int PCL1:1;
    unsigned int PCL2:1;
    unsigned int PCL3:1;
    unsigned int reserved_20:12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0:28;
    unsigned int PCL12:1;
    unsigned int PCL13:1;
    unsigned int PCL14:1;
    unsigned int PCL15:1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0:20;
    unsigned int PCL4:1;
    unsigned int PCL5:1;
    unsigned int PCL6:1;
    unsigned int PCL7:1;
    unsigned int reserved_24:8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0:24;
    unsigned int PCL8:1;
    unsigned int PCL9:1;
    unsigned int PCL10:1;
    unsigned int PCL11:1;
    unsigned int reserved_28:4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0:16;
    unsigned int PCL0:1;
    unsigned int PCL1:1;
    unsigned int PCL2:1;
    unsigned int PCL3:1;
    unsigned int PCL4:1;
    unsigned int PCL5:1;
    unsigned int PCL6:1;
    unsigned int PCL7:1;
    unsigned int PCL8:1;
    unsigned int PCL9:1;
    unsigned int PCL10:1;
    unsigned int PCL11:1;
    unsigned int PCL12:1;
    unsigned int PCL13:1;
    unsigned int PCL14:1;
    unsigned int PCL15:1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0:1;
    unsigned int PS1:1;
    unsigned int PS2:1;
    unsigned int PS3:1;
    unsigned int PS4:1;
    unsigned int PS5:1;
    unsigned int PS6:1;
    unsigned int PS7:1;
    unsigned int PS8:1;
    unsigned int PS9:1;
    unsigned int PS10:1;
    unsigned int PS11:1;
    unsigned int PS12:1;
    unsigned int PS13:1;
    unsigned int PS14:1;
    unsigned int PS15:1;
    unsigned int PCL0:1;
    unsigned int PCL1:1;
    unsigned int PCL2:1;
    unsigned int PCL3:1;
    unsigned int PCL4:1;
    unsigned int PCL5:1;
    unsigned int PCL6:1;
    unsigned int PCL7:1;
    unsigned int PCL8:1;
    unsigned int PCL9:1;
    unsigned int PCL10:1;
    unsigned int PCL11:1;
    unsigned int PCL12:1;
    unsigned int PCL13:1;
    unsigned int PCL14:1;
    unsigned int PCL15:1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0:1;
    unsigned int PS1:1;
    unsigned int PS2:1;
    unsigned int PS3:1;
    unsigned int reserved_4:28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0:12;
    unsigned int PS12:1;
    unsigned int PS13:1;
    unsigned int PS14:1;
    unsigned int PS15:1;
    unsigned int reserved_16:16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0:4;
    unsigned int PS4:1;
    unsigned int PS5:1;
    unsigned int PS6:1;
    unsigned int PS7:1;
    unsigned int reserved_8:24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0:8;
    unsigned int PS8:1;
    unsigned int PS9:1;
    unsigned int PS10:1;
    unsigned int PS11:1;
    unsigned int reserved_12:20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0:1;
    unsigned int PS1:1;
    unsigned int PS2:1;
    unsigned int PS3:1;
    unsigned int PS4:1;
    unsigned int PS5:1;
    unsigned int PS6:1;
    unsigned int PS7:1;
    unsigned int PS8:1;
    unsigned int PS9:1;
    unsigned int PS10:1;
    unsigned int PS11:1;
    unsigned int PS12:1;
    unsigned int PS13:1;
    unsigned int PS14:1;
    unsigned int PS15:1;
    unsigned int reserved_16:16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0:1;
    unsigned int P1:1;
    unsigned int P2:1;
    unsigned int P3:1;
    unsigned int P4:1;
    unsigned int P5:1;
    unsigned int P6:1;
    unsigned int P7:1;
    unsigned int P8:1;
    unsigned int P9:1;
    unsigned int P10:1;
    unsigned int P11:1;
    unsigned int P12:1;
    unsigned int P13:1;
    unsigned int P14:1;
    unsigned int P15:1;
    unsigned int reserved_16:16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int SEL0:1;
    unsigned int SEL1:1;
    unsigned int SEL2:1;
    unsigned int SEL3:1;
    unsigned int SEL4:1;
    unsigned int SEL5:1;
    unsigned int SEL6:1;
    unsigned int reserved_7:3;
    unsigned int SEL10:1;
    unsigned int SEL11:1;
    unsigned int reserved_12:19;
    unsigned int LCK:1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0:1;
    unsigned int PDIS1:1;
    unsigned int PDIS2:1;
    unsigned int PDIS3:1;
    unsigned int PDIS4:1;
    unsigned int PDIS5:1;
    unsigned int PDIS6:1;
    unsigned int PDIS7:1;
    unsigned int PDIS8:1;
    unsigned int PDIS9:1;
    unsigned int PDIS10:1;
    unsigned int PDIS11:1;
    unsigned int PDIS12:1;
    unsigned int PDIS13:1;
    unsigned int PDIS14:1;
    unsigned int PDIS15:1;
    unsigned int reserved_16:16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0:3;
    unsigned int PL0:1;
    unsigned int PD1:3;
    unsigned int PL1:1;
    unsigned int PD2:3;
    unsigned int PL2:1;
    unsigned int PD3:3;
    unsigned int PL3:1;
    unsigned int PD4:3;
    unsigned int PL4:1;
    unsigned int PD5:3;
    unsigned int PL5:1;
    unsigned int PD6:3;
    unsigned int PL6:1;
    unsigned int PD7:3;
    unsigned int PL7:1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8:3;
    unsigned int PL8:1;
    unsigned int PD9:3;
    unsigned int PL9:1;
    unsigned int PD10:3;
    unsigned int PL10:1;
    unsigned int PD11:3;
    unsigned int PL11:1;
    unsigned int PD12:3;
    unsigned int PL12:1;
    unsigned int PD13:3;
    unsigned int PL13:1;
    unsigned int PD14:3;
    unsigned int PL14:1;
    unsigned int PD15:3;
    unsigned int PL15:1;
} Ifx_P_PDR1_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_LPCR0_Bits B;
    Ifx_P_LPCR0_P21_Bits B_P21;
} Ifx_P_LPCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_LPCR1_Bits B;
    Ifx_P_LPCR1_P21_Bits B_P21;
} Ifx_P_LPCR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_LPCR2_Bits B;
    Ifx_P_LPCR2_P21_Bits B_P21;
} Ifx_P_LPCR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_LPCR3_Bits B;
} Ifx_P_LPCR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 776 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_68[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[8];
    Ifx_P_LPCR0 LPCR0;
    Ifx_P_LPCR1 LPCR1;
    Ifx_P_LPCR2 LPCR2;
    Ifx_P_LPCR3 LPCR3;
    unsigned char reserved_A4[72];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 100 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxPort_reg.h" 2
# 42 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxPort_cfg.h" 2
# 59 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxPort_cfg.h"
typedef enum
{
    IfxPort_Index_00 = 0,
    IfxPort_Index_01 = 1,
    IfxPort_Index_02 = 2,
    IfxPort_Index_10 = 10,
    IfxPort_Index_11 = 11,
    IfxPort_Index_12 = 12,
    IfxPort_Index_13 = 13,
    IfxPort_Index_14 = 14,
    IfxPort_Index_15 = 15,
    IfxPort_Index_20 = 20,
    IfxPort_Index_21 = 21,
    IfxPort_Index_22 = 22,
    IfxPort_Index_23 = 23,
    IfxPort_Index_24 = 24,
    IfxPort_Index_25 = 25,
    IfxPort_Index_26 = 26,
    IfxPort_Index_30 = 30,
    IfxPort_Index_31 = 31,
    IfxPort_Index_32 = 32,
    IfxPort_Index_33 = 33,
    IfxPort_Index_34 = 34,
    IfxPort_Index_none = -1
} IfxPort_Index;







typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(21)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(21)];
# 44 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h" 2
# 55 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
typedef enum
{
    IfxPort_ControlledBy_port = 0,
    IfxPort_ControlledBy_hsct = 1
} IfxPort_ControlledBy;



typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_lvdsSpeed1 = 4,
    IfxPort_PadDriver_lvdsSpeed2 = 5,
    IfxPort_PadDriver_lvdsSpeed3 = 6,
    IfxPort_PadDriver_lvdsSpeed4 = 7,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;



typedef enum
{
    IfxPort_PadSupply_5v = 0,
    IfxPort_PadSupply_3v = 1
} IfxPort_PadSupply;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 170 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 208 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 223 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 238 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 252 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 267 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 283 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 298 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 321 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 339 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 355 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 370 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 394 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 413 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 423 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern Ifx_P *IfxPort_getAddress(IfxPort_Index port);





extern IfxPort_Index IfxPort_getIndex(Ifx_P *port);
# 445 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 462 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 478 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 487 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsHigh(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode, IfxPort_ControlledBy enablePortControlled);
# 496 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsMedium(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver lvdsPadDriver, IfxPort_PadSupply padSupply);
# 513 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 524 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 34 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxScu_PinMap.h" 2





typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Evrwup_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
} IfxScu_Hwcfg_In;


typedef const struct
{
    Ifx_SCU* module;
    uint8 channelId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Req_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Dcdcsync_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Emgstop_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Wdtlck_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Extclk_Out;

extern IfxScu_Dcdcsync_Out IfxScu_DCDCSYNC_P32_2_OUT;
extern IfxScu_Dcdcsync_Out IfxScu_DCDCSYNC_P33_13_OUT;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPA_P33_8_IN;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPB_P21_2_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPA_P14_1_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPB_P15_1_IN;
extern IfxScu_Extclk_Out IfxScu_EXTCLK0_P00_15_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK0_P23_1_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P00_13_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P11_12_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P32_4_OUT;
extern IfxScu_Hwcfg_In IfxScu_HWCFG0DCLDO_P14_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG1EVR33_P14_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG2EVR13_P14_2_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG3_BMI_P14_3_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG4_P10_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG5_P10_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG6_P14_4_IN;
extern IfxScu_Req_In IfxScu_REQ0_P15_4_IN;
extern IfxScu_Req_In IfxScu_REQ10_P14_3_IN;
extern IfxScu_Req_In IfxScu_REQ11_P20_9_IN;
extern IfxScu_Req_In IfxScu_REQ12_P11_10_IN;
extern IfxScu_Req_In IfxScu_REQ13_P15_5_IN;
extern IfxScu_Req_In IfxScu_REQ14_P02_1_IN;
extern IfxScu_Req_In IfxScu_REQ15_P14_1_IN;
extern IfxScu_Req_In IfxScu_REQ16_P15_1_IN;
extern IfxScu_Req_In IfxScu_REQ1_P15_8_IN;
extern IfxScu_Req_In IfxScu_REQ2_P10_2_IN;
extern IfxScu_Req_In IfxScu_REQ3_P10_3_IN;
extern IfxScu_Req_In IfxScu_REQ4_P10_7_IN;
extern IfxScu_Req_In IfxScu_REQ5_P10_8_IN;
extern IfxScu_Req_In IfxScu_REQ6_P02_0_IN;
extern IfxScu_Req_In IfxScu_REQ7_P00_4_IN;
extern IfxScu_Req_In IfxScu_REQ8_P33_7_IN;
extern IfxScu_Req_In IfxScu_REQ9_P20_0_IN;
extern IfxScu_Wdtlck_Out IfxScu_WDT0LCK_P20_8_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDT1LCK_P20_7_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDT2LCK_P20_6_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDTSLCK_P20_9_OUT;
# 147 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxScu_PinMap.h"
extern const IfxScu_Dcdcsync_Out *IfxScu_Dcdcsync_Out_pinTable[1][2];


extern const IfxScu_Emgstop_In *IfxScu_Emgstop_In_pinTable[1][2];


extern const IfxScu_Evrwup_In *IfxScu_Evrwup_In_pinTable[1][2];


extern const IfxScu_Extclk_Out *IfxScu_Extclk_Out_pinTable[1][5];


extern const IfxScu_Hwcfg_In *IfxScu_Hwcfg_In_pinTable[1][7];


extern const IfxScu_Req_In *IfxScu_Req_In_pinTable[1][8][4];


extern const IfxScu_Wdtlck_Out *IfxScu_Wdtlck_Out_pinTable[1][4];
# 112 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h" 2
# 128 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
typedef void (*IfxScuCcu_PllStepsFunctionHook)(void);
# 138 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
typedef enum
{
    IfxScuCcu_K1divider_1 = 0,
    IfxScuCcu_K1divider_2,
    IfxScuCcu_K1divider_3,
    IfxScuCcu_K1divider_4,
    IfxScuCcu_K1divider_5,
    IfxScuCcu_K1divider_6,
    IfxScuCcu_K1divider_7,
    IfxScuCcu_K1divider_8,
    IfxScuCcu_K1divider_9,
    IfxScuCcu_K1divider_10,
    IfxScuCcu_K1divider_11,
    IfxScuCcu_K1divider_12,
    IfxScuCcu_K1divider_13,
    IfxScuCcu_K1divider_14,
    IfxScuCcu_K1divider_15,
    IfxScuCcu_K1divider_16,
    IfxScuCcu_K1divider_17,
    IfxScuCcu_K1divider_18,
    IfxScuCcu_K1divider_19,
    IfxScuCcu_K1divider_20,
    IfxScuCcu_K1divider_21,
    IfxScuCcu_K1divider_22,
    IfxScuCcu_K1divider_23,
    IfxScuCcu_K1divider_24,
    IfxScuCcu_K1divider_25,
    IfxScuCcu_K1divider_26,
    IfxScuCcu_K1divider_27,
    IfxScuCcu_K1divider_28,
    IfxScuCcu_K1divider_29,
    IfxScuCcu_K1divider_30,
    IfxScuCcu_K1divider_31,
    IfxScuCcu_K1divider_32,
    IfxScuCcu_K1divider_33,
    IfxScuCcu_K1divider_34,
    IfxScuCcu_K1divider_35,
    IfxScuCcu_K1divider_36,
    IfxScuCcu_K1divider_37,
    IfxScuCcu_K1divider_38,
    IfxScuCcu_K1divider_39,
    IfxScuCcu_K1divider_40,
    IfxScuCcu_K1divider_41,
    IfxScuCcu_K1divider_42,
    IfxScuCcu_K1divider_43,
    IfxScuCcu_K1divider_44,
    IfxScuCcu_K1divider_45,
    IfxScuCcu_K1divider_46,
    IfxScuCcu_K1divider_47,
    IfxScuCcu_K1divider_48,
    IfxScuCcu_K1divider_49,
    IfxScuCcu_K1divider_50,
    IfxScuCcu_K1divider_51,
    IfxScuCcu_K1divider_52,
    IfxScuCcu_K1divider_53,
    IfxScuCcu_K1divider_54,
    IfxScuCcu_K1divider_55,
    IfxScuCcu_K1divider_56,
    IfxScuCcu_K1divider_57,
    IfxScuCcu_K1divider_58,
    IfxScuCcu_K1divider_59,
    IfxScuCcu_K1divider_60,
    IfxScuCcu_K1divider_61,
    IfxScuCcu_K1divider_62,
    IfxScuCcu_K1divider_63,
    IfxScuCcu_K1divider_64,
    IfxScuCcu_K1divider_65,
    IfxScuCcu_K1divider_66,
    IfxScuCcu_K1divider_67,
    IfxScuCcu_K1divider_68,
    IfxScuCcu_K1divider_69,
    IfxScuCcu_K1divider_70,
    IfxScuCcu_K1divider_71,
    IfxScuCcu_K1divider_72,
    IfxScuCcu_K1divider_73,
    IfxScuCcu_K1divider_74,
    IfxScuCcu_K1divider_75,
    IfxScuCcu_K1divider_76,
    IfxScuCcu_K1divider_77,
    IfxScuCcu_K1divider_78,
    IfxScuCcu_K1divider_79,
    IfxScuCcu_K1divider_80,
    IfxScuCcu_K1divider_81,
    IfxScuCcu_K1divider_82,
    IfxScuCcu_K1divider_83,
    IfxScuCcu_K1divider_84,
    IfxScuCcu_K1divider_85,
    IfxScuCcu_K1divider_86,
    IfxScuCcu_K1divider_87,
    IfxScuCcu_K1divider_88,
    IfxScuCcu_K1divider_89,
    IfxScuCcu_K1divider_90,
    IfxScuCcu_K1divider_91,
    IfxScuCcu_K1divider_92,
    IfxScuCcu_K1divider_93,
    IfxScuCcu_K1divider_94,
    IfxScuCcu_K1divider_95,
    IfxScuCcu_K1divider_96,
    IfxScuCcu_K1divider_97,
    IfxScuCcu_K1divider_98,
    IfxScuCcu_K1divider_99,
    IfxScuCcu_K1divider_100,
    IfxScuCcu_K1divider_101,
    IfxScuCcu_K1divider_102,
    IfxScuCcu_K1divider_103,
    IfxScuCcu_K1divider_104,
    IfxScuCcu_K1divider_105,
    IfxScuCcu_K1divider_106,
    IfxScuCcu_K1divider_107,
    IfxScuCcu_K1divider_108,
    IfxScuCcu_K1divider_109,
    IfxScuCcu_K1divider_110,
    IfxScuCcu_K1divider_111,
    IfxScuCcu_K1divider_112,
    IfxScuCcu_K1divider_113,
    IfxScuCcu_K1divider_114,
    IfxScuCcu_K1divider_115,
    IfxScuCcu_K1divider_116,
    IfxScuCcu_K1divider_117,
    IfxScuCcu_K1divider_118,
    IfxScuCcu_K1divider_119,
    IfxScuCcu_K1divider_120,
    IfxScuCcu_K1divider_121,
    IfxScuCcu_K1divider_122,
    IfxScuCcu_K1divider_123,
    IfxScuCcu_K1divider_124,
    IfxScuCcu_K1divider_125,
    IfxScuCcu_K1divider_126,
    IfxScuCcu_K1divider_127,
    IfxScuCcu_K1divider_128
} IfxScuCcu_K1divider;



typedef enum
{
    IfxScuCcu_K2divider_1 = 0,
    IfxScuCcu_K2divider_2,
    IfxScuCcu_K2divider_3,
    IfxScuCcu_K2divider_4,
    IfxScuCcu_K2divider_5,
    IfxScuCcu_K2divider_6,
    IfxScuCcu_K2divider_7,
    IfxScuCcu_K2divider_8,
    IfxScuCcu_K2divider_9,
    IfxScuCcu_K2divider_10,
    IfxScuCcu_K2divider_11,
    IfxScuCcu_K2divider_12,
    IfxScuCcu_K2divider_13,
    IfxScuCcu_K2divider_14,
    IfxScuCcu_K2divider_15,
    IfxScuCcu_K2divider_16,
    IfxScuCcu_K2divider_17,
    IfxScuCcu_K2divider_18,
    IfxScuCcu_K2divider_19,
    IfxScuCcu_K2divider_20,
    IfxScuCcu_K2divider_21,
    IfxScuCcu_K2divider_22,
    IfxScuCcu_K2divider_23,
    IfxScuCcu_K2divider_24,
    IfxScuCcu_K2divider_25,
    IfxScuCcu_K2divider_26,
    IfxScuCcu_K2divider_27,
    IfxScuCcu_K2divider_28,
    IfxScuCcu_K2divider_29,
    IfxScuCcu_K2divider_30,
    IfxScuCcu_K2divider_31,
    IfxScuCcu_K2divider_32,
    IfxScuCcu_K2divider_33,
    IfxScuCcu_K2divider_34,
    IfxScuCcu_K2divider_35,
    IfxScuCcu_K2divider_36,
    IfxScuCcu_K2divider_37,
    IfxScuCcu_K2divider_38,
    IfxScuCcu_K2divider_39,
    IfxScuCcu_K2divider_40,
    IfxScuCcu_K2divider_41,
    IfxScuCcu_K2divider_42,
    IfxScuCcu_K2divider_43,
    IfxScuCcu_K2divider_44,
    IfxScuCcu_K2divider_45,
    IfxScuCcu_K2divider_46,
    IfxScuCcu_K2divider_47,
    IfxScuCcu_K2divider_48,
    IfxScuCcu_K2divider_49,
    IfxScuCcu_K2divider_50,
    IfxScuCcu_K2divider_51,
    IfxScuCcu_K2divider_52,
    IfxScuCcu_K2divider_53,
    IfxScuCcu_K2divider_54,
    IfxScuCcu_K2divider_55,
    IfxScuCcu_K2divider_56,
    IfxScuCcu_K2divider_57,
    IfxScuCcu_K2divider_58,
    IfxScuCcu_K2divider_59,
    IfxScuCcu_K2divider_60,
    IfxScuCcu_K2divider_61,
    IfxScuCcu_K2divider_62,
    IfxScuCcu_K2divider_63,
    IfxScuCcu_K2divider_64,
    IfxScuCcu_K2divider_65,
    IfxScuCcu_K2divider_66,
    IfxScuCcu_K2divider_67,
    IfxScuCcu_K2divider_68,
    IfxScuCcu_K2divider_69,
    IfxScuCcu_K2divider_70,
    IfxScuCcu_K2divider_71,
    IfxScuCcu_K2divider_72,
    IfxScuCcu_K2divider_73,
    IfxScuCcu_K2divider_74,
    IfxScuCcu_K2divider_75,
    IfxScuCcu_K2divider_76,
    IfxScuCcu_K2divider_77,
    IfxScuCcu_K2divider_78,
    IfxScuCcu_K2divider_79,
    IfxScuCcu_K2divider_80,
    IfxScuCcu_K2divider_81,
    IfxScuCcu_K2divider_82,
    IfxScuCcu_K2divider_83,
    IfxScuCcu_K2divider_84,
    IfxScuCcu_K2divider_85,
    IfxScuCcu_K2divider_86,
    IfxScuCcu_K2divider_87,
    IfxScuCcu_K2divider_88,
    IfxScuCcu_K2divider_89,
    IfxScuCcu_K2divider_90,
    IfxScuCcu_K2divider_91,
    IfxScuCcu_K2divider_92,
    IfxScuCcu_K2divider_93,
    IfxScuCcu_K2divider_94,
    IfxScuCcu_K2divider_95,
    IfxScuCcu_K2divider_96,
    IfxScuCcu_K2divider_97,
    IfxScuCcu_K2divider_98,
    IfxScuCcu_K2divider_99,
    IfxScuCcu_K2divider_100,
    IfxScuCcu_K2divider_101,
    IfxScuCcu_K2divider_102,
    IfxScuCcu_K2divider_103,
    IfxScuCcu_K2divider_104,
    IfxScuCcu_K2divider_105,
    IfxScuCcu_K2divider_106,
    IfxScuCcu_K2divider_107,
    IfxScuCcu_K2divider_108,
    IfxScuCcu_K2divider_109,
    IfxScuCcu_K2divider_110,
    IfxScuCcu_K2divider_111,
    IfxScuCcu_K2divider_112,
    IfxScuCcu_K2divider_113,
    IfxScuCcu_K2divider_114,
    IfxScuCcu_K2divider_115,
    IfxScuCcu_K2divider_116,
    IfxScuCcu_K2divider_117,
    IfxScuCcu_K2divider_118,
    IfxScuCcu_K2divider_119,
    IfxScuCcu_K2divider_120,
    IfxScuCcu_K2divider_121,
    IfxScuCcu_K2divider_122,
    IfxScuCcu_K2divider_123,
    IfxScuCcu_K2divider_124,
    IfxScuCcu_K2divider_125,
    IfxScuCcu_K2divider_126,
    IfxScuCcu_K2divider_127,
    IfxScuCcu_K2divider_128
} IfxScuCcu_K2divider;



typedef enum
{
    IfxScuCcu_K3divider_1 = 0,
    IfxScuCcu_K3divider_2,
    IfxScuCcu_K3divider_3,
    IfxScuCcu_K3divider_4,
    IfxScuCcu_K3divider_5,
    IfxScuCcu_K3divider_6,
    IfxScuCcu_K3divider_7,
    IfxScuCcu_K3divider_8,
    IfxScuCcu_K3divider_9,
    IfxScuCcu_K3divider_10,
    IfxScuCcu_K3divider_11,
    IfxScuCcu_K3divider_12,
    IfxScuCcu_K3divider_13,
    IfxScuCcu_K3divider_14,
    IfxScuCcu_K3divider_15,
    IfxScuCcu_K3divider_16,
    IfxScuCcu_K3divider_17,
    IfxScuCcu_K3divider_18,
    IfxScuCcu_K3divider_19,
    IfxScuCcu_K3divider_20,
    IfxScuCcu_K3divider_21,
    IfxScuCcu_K3divider_22,
    IfxScuCcu_K3divider_23,
    IfxScuCcu_K3divider_24,
    IfxScuCcu_K3divider_25,
    IfxScuCcu_K3divider_26,
    IfxScuCcu_K3divider_27,
    IfxScuCcu_K3divider_28,
    IfxScuCcu_K3divider_29,
    IfxScuCcu_K3divider_30,
    IfxScuCcu_K3divider_31,
    IfxScuCcu_K3divider_32,
    IfxScuCcu_K3divider_33,
    IfxScuCcu_K3divider_34,
    IfxScuCcu_K3divider_35,
    IfxScuCcu_K3divider_36,
    IfxScuCcu_K3divider_37,
    IfxScuCcu_K3divider_38,
    IfxScuCcu_K3divider_39,
    IfxScuCcu_K3divider_40,
    IfxScuCcu_K3divider_41,
    IfxScuCcu_K3divider_42,
    IfxScuCcu_K3divider_43,
    IfxScuCcu_K3divider_44,
    IfxScuCcu_K3divider_45,
    IfxScuCcu_K3divider_46,
    IfxScuCcu_K3divider_47,
    IfxScuCcu_K3divider_48,
    IfxScuCcu_K3divider_49,
    IfxScuCcu_K3divider_50,
    IfxScuCcu_K3divider_51,
    IfxScuCcu_K3divider_52,
    IfxScuCcu_K3divider_53,
    IfxScuCcu_K3divider_54,
    IfxScuCcu_K3divider_55,
    IfxScuCcu_K3divider_56,
    IfxScuCcu_K3divider_57,
    IfxScuCcu_K3divider_58,
    IfxScuCcu_K3divider_59,
    IfxScuCcu_K3divider_60,
    IfxScuCcu_K3divider_61,
    IfxScuCcu_K3divider_62,
    IfxScuCcu_K3divider_63,
    IfxScuCcu_K3divider_64,
    IfxScuCcu_K3divider_65,
    IfxScuCcu_K3divider_66,
    IfxScuCcu_K3divider_67,
    IfxScuCcu_K3divider_68,
    IfxScuCcu_K3divider_69,
    IfxScuCcu_K3divider_70,
    IfxScuCcu_K3divider_71,
    IfxScuCcu_K3divider_72,
    IfxScuCcu_K3divider_73,
    IfxScuCcu_K3divider_74,
    IfxScuCcu_K3divider_75,
    IfxScuCcu_K3divider_76,
    IfxScuCcu_K3divider_77,
    IfxScuCcu_K3divider_78,
    IfxScuCcu_K3divider_79,
    IfxScuCcu_K3divider_80,
    IfxScuCcu_K3divider_81,
    IfxScuCcu_K3divider_82,
    IfxScuCcu_K3divider_83,
    IfxScuCcu_K3divider_84,
    IfxScuCcu_K3divider_85,
    IfxScuCcu_K3divider_86,
    IfxScuCcu_K3divider_87,
    IfxScuCcu_K3divider_88,
    IfxScuCcu_K3divider_89,
    IfxScuCcu_K3divider_90,
    IfxScuCcu_K3divider_91,
    IfxScuCcu_K3divider_92,
    IfxScuCcu_K3divider_93,
    IfxScuCcu_K3divider_94,
    IfxScuCcu_K3divider_95,
    IfxScuCcu_K3divider_96,
    IfxScuCcu_K3divider_97,
    IfxScuCcu_K3divider_98,
    IfxScuCcu_K3divider_99,
    IfxScuCcu_K3divider_100,
    IfxScuCcu_K3divider_101,
    IfxScuCcu_K3divider_102,
    IfxScuCcu_K3divider_103,
    IfxScuCcu_K3divider_104,
    IfxScuCcu_K3divider_105,
    IfxScuCcu_K3divider_106,
    IfxScuCcu_K3divider_107,
    IfxScuCcu_K3divider_108,
    IfxScuCcu_K3divider_109,
    IfxScuCcu_K3divider_110,
    IfxScuCcu_K3divider_111,
    IfxScuCcu_K3divider_112,
    IfxScuCcu_K3divider_113,
    IfxScuCcu_K3divider_114,
    IfxScuCcu_K3divider_115,
    IfxScuCcu_K3divider_116,
    IfxScuCcu_K3divider_117,
    IfxScuCcu_K3divider_118,
    IfxScuCcu_K3divider_119,
    IfxScuCcu_K3divider_120,
    IfxScuCcu_K3divider_121,
    IfxScuCcu_K3divider_122,
    IfxScuCcu_K3divider_123,
    IfxScuCcu_K3divider_124,
    IfxScuCcu_K3divider_125,
    IfxScuCcu_K3divider_126,
    IfxScuCcu_K3divider_127,
    IfxScuCcu_K3divider_128
} IfxScuCcu_K3divider;



typedef enum
{
    IfxScuCcu_Ndivider_1 = 0,
    IfxScuCcu_Ndivider_2,
    IfxScuCcu_Ndivider_3,
    IfxScuCcu_Ndivider_4,
    IfxScuCcu_Ndivider_5,
    IfxScuCcu_Ndivider_6,
    IfxScuCcu_Ndivider_7,
    IfxScuCcu_Ndivider_8,
    IfxScuCcu_Ndivider_9,
    IfxScuCcu_Ndivider_10,
    IfxScuCcu_Ndivider_11,
    IfxScuCcu_Ndivider_12,
    IfxScuCcu_Ndivider_13,
    IfxScuCcu_Ndivider_14,
    IfxScuCcu_Ndivider_15,
    IfxScuCcu_Ndivider_16,
    IfxScuCcu_Ndivider_17,
    IfxScuCcu_Ndivider_18,
    IfxScuCcu_Ndivider_19,
    IfxScuCcu_Ndivider_20,
    IfxScuCcu_Ndivider_21,
    IfxScuCcu_Ndivider_22,
    IfxScuCcu_Ndivider_23,
    IfxScuCcu_Ndivider_24,
    IfxScuCcu_Ndivider_25,
    IfxScuCcu_Ndivider_26,
    IfxScuCcu_Ndivider_27,
    IfxScuCcu_Ndivider_28,
    IfxScuCcu_Ndivider_29,
    IfxScuCcu_Ndivider_30,
    IfxScuCcu_Ndivider_31,
    IfxScuCcu_Ndivider_32,
    IfxScuCcu_Ndivider_33,
    IfxScuCcu_Ndivider_34,
    IfxScuCcu_Ndivider_35,
    IfxScuCcu_Ndivider_36,
    IfxScuCcu_Ndivider_37,
    IfxScuCcu_Ndivider_38,
    IfxScuCcu_Ndivider_39,
    IfxScuCcu_Ndivider_40,
    IfxScuCcu_Ndivider_41,
    IfxScuCcu_Ndivider_42,
    IfxScuCcu_Ndivider_43,
    IfxScuCcu_Ndivider_44,
    IfxScuCcu_Ndivider_45,
    IfxScuCcu_Ndivider_46,
    IfxScuCcu_Ndivider_47,
    IfxScuCcu_Ndivider_48,
    IfxScuCcu_Ndivider_49,
    IfxScuCcu_Ndivider_50,
    IfxScuCcu_Ndivider_51,
    IfxScuCcu_Ndivider_52,
    IfxScuCcu_Ndivider_53,
    IfxScuCcu_Ndivider_54,
    IfxScuCcu_Ndivider_55,
    IfxScuCcu_Ndivider_56,
    IfxScuCcu_Ndivider_57,
    IfxScuCcu_Ndivider_58,
    IfxScuCcu_Ndivider_59,
    IfxScuCcu_Ndivider_60,
    IfxScuCcu_Ndivider_61,
    IfxScuCcu_Ndivider_62,
    IfxScuCcu_Ndivider_63,
    IfxScuCcu_Ndivider_64,
    IfxScuCcu_Ndivider_65,
    IfxScuCcu_Ndivider_66,
    IfxScuCcu_Ndivider_67,
    IfxScuCcu_Ndivider_68,
    IfxScuCcu_Ndivider_69,
    IfxScuCcu_Ndivider_70,
    IfxScuCcu_Ndivider_71,
    IfxScuCcu_Ndivider_72,
    IfxScuCcu_Ndivider_73,
    IfxScuCcu_Ndivider_74,
    IfxScuCcu_Ndivider_75,
    IfxScuCcu_Ndivider_76,
    IfxScuCcu_Ndivider_77,
    IfxScuCcu_Ndivider_78,
    IfxScuCcu_Ndivider_79,
    IfxScuCcu_Ndivider_80,
    IfxScuCcu_Ndivider_81,
    IfxScuCcu_Ndivider_82,
    IfxScuCcu_Ndivider_83,
    IfxScuCcu_Ndivider_84,
    IfxScuCcu_Ndivider_85,
    IfxScuCcu_Ndivider_86,
    IfxScuCcu_Ndivider_87,
    IfxScuCcu_Ndivider_88,
    IfxScuCcu_Ndivider_89,
    IfxScuCcu_Ndivider_90,
    IfxScuCcu_Ndivider_91,
    IfxScuCcu_Ndivider_92,
    IfxScuCcu_Ndivider_93,
    IfxScuCcu_Ndivider_94,
    IfxScuCcu_Ndivider_95,
    IfxScuCcu_Ndivider_96,
    IfxScuCcu_Ndivider_97,
    IfxScuCcu_Ndivider_98,
    IfxScuCcu_Ndivider_99,
    IfxScuCcu_Ndivider_100,
    IfxScuCcu_Ndivider_101,
    IfxScuCcu_Ndivider_102,
    IfxScuCcu_Ndivider_103,
    IfxScuCcu_Ndivider_104,
    IfxScuCcu_Ndivider_105,
    IfxScuCcu_Ndivider_106,
    IfxScuCcu_Ndivider_107,
    IfxScuCcu_Ndivider_108,
    IfxScuCcu_Ndivider_109,
    IfxScuCcu_Ndivider_110,
    IfxScuCcu_Ndivider_111,
    IfxScuCcu_Ndivider_112,
    IfxScuCcu_Ndivider_113,
    IfxScuCcu_Ndivider_114,
    IfxScuCcu_Ndivider_115,
    IfxScuCcu_Ndivider_116,
    IfxScuCcu_Ndivider_117,
    IfxScuCcu_Ndivider_118,
    IfxScuCcu_Ndivider_119,
    IfxScuCcu_Ndivider_120,
    IfxScuCcu_Ndivider_121,
    IfxScuCcu_Ndivider_122,
    IfxScuCcu_Ndivider_123,
    IfxScuCcu_Ndivider_124,
    IfxScuCcu_Ndivider_125,
    IfxScuCcu_Ndivider_126,
    IfxScuCcu_Ndivider_127,
    IfxScuCcu_Ndivider_128
} IfxScuCcu_Ndivider;



typedef enum
{
    IfxScuCcu_Pdivider_1 = 0,
    IfxScuCcu_Pdivider_2,
    IfxScuCcu_Pdivider_3,
    IfxScuCcu_Pdivider_4,
    IfxScuCcu_Pdivider_5,
    IfxScuCcu_Pdivider_6,
    IfxScuCcu_Pdivider_7,
    IfxScuCcu_Pdivider_8,
    IfxScuCcu_Pdivider_9,
    IfxScuCcu_Pdivider_10,
    IfxScuCcu_Pdivider_11,
    IfxScuCcu_Pdivider_12,
    IfxScuCcu_Pdivider_13,
    IfxScuCcu_Pdivider_14,
    IfxScuCcu_Pdivider_15,
    IfxScuCcu_Pdivider_16
} IfxScuCcu_Pdivider;
# 704 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_CcuconRegConfig;




typedef struct
{
    uint8 pDivider;
    uint8 nDivider;
    uint8 k2Initial;
    float32 waitTime;
} IfxScuCcu_InitialStepConfig;



typedef struct
{
    uint8 k2Step;
    float32 waitTime;
    IfxScuCcu_PllStepsFunctionHook hookFunction;
} IfxScuCcu_PllStepsConfig;







typedef struct
{
    IfxScuCcu_CcuconRegConfig ccucon0;
    IfxScuCcu_CcuconRegConfig ccucon1;
    IfxScuCcu_CcuconRegConfig ccucon2;
    IfxScuCcu_CcuconRegConfig ccucon5;
    IfxScuCcu_CcuconRegConfig ccucon6;
    IfxScuCcu_CcuconRegConfig ccucon7;
    IfxScuCcu_CcuconRegConfig ccucon8;
} IfxScuCcu_ClockDistributionConfig;



typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_FlashWaitstateConfig;




typedef struct
{
    uint8 numOfPllDividerSteps;
    IfxScuCcu_PllStepsConfig *pllDividerStep;
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_SysPllConfig;







typedef struct
{
    IfxScuCcu_SysPllConfig sysPll;
    IfxScuCcu_ClockDistributionConfig clockDistribution;
    IfxScuCcu_FlashWaitstateConfig flashFconWaitStateConfig;
    uint32 xtalFrequency;
} IfxScuCcu_Config;



typedef struct
{
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_ErayPllConfig;
# 799 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2ErayFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void);




static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getCanFrequency(void);
# 838 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_getBaud1Frequency(void);





extern float32 IfxScuCcu_getBaud2Frequency(void);





extern float32 IfxScuCcu_getBbbFrequency(void);





extern float32 IfxScuCcu_getCpuFrequency(const IfxCpu_ResourceCpu cpu);





extern float32 IfxScuCcu_getFsi2Frequency(void);





extern float32 IfxScuCcu_getFsiFrequency(void);





extern float32 IfxScuCcu_getMaxFrequency(void);





extern float32 IfxScuCcu_getModuleFrequency(void);





extern float32 IfxScuCcu_getOsc0Frequency(void);





extern float32 IfxScuCcu_getOscFrequency(void);





extern float32 IfxScuCcu_getPllErayFrequency(void);





extern float32 IfxScuCcu_getPllErayVcoFrequency(void);





extern float32 IfxScuCcu_getPllFrequency(void);





extern float32 IfxScuCcu_getPllVcoFrequency(void);





extern float32 IfxScuCcu_getSourceFrequency(void);





extern float32 IfxScuCcu_getSpbFrequency(void);





extern float32 IfxScuCcu_getSriFrequency(void);







extern float32 IfxScuCcu_setCpuFrequency(IfxCpu_ResourceCpu cpu, float32 cpuFreq);






extern float32 IfxScuCcu_setPll2ErayFrequency(float32 pll2ErayFreq);






extern float32 IfxScuCcu_setPll2Frequency(float32 pll2Freq);






extern float32 IfxScuCcu_setSpbFrequency(float32 spbFreq);






extern float32 IfxScuCcu_setSriFrequency(float32 sriFreq);
# 986 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_calculateSysPllDividers(IfxScuCcu_Config *cfg, uint32 fPll);
# 995 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_init(const IfxScuCcu_Config *cfg);





extern void IfxScuCcu_initConfig(IfxScuCcu_Config *cfg);
# 1010 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_initErayPll(const IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_initErayPllConfig(IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_switchToBackupClock(const IfxScuCcu_Config *cfg);
# 1035 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void);
# 1046 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_setGtmFrequency(float32 gtmFreq);
# 1055 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuCcu.h"
extern const IfxScuCcu_Config IfxScuCcu_defaultClockConfig;




extern const IfxScuCcu_ErayPllConfig IfxScuCcu_defaultErayPllConfig;





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void)
{
    return (100000000.0);
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.GTMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2ErayFrequency(void)
{
    float32 pll2ErayFrequency;

    pll2ErayFrequency = IfxScuCcu_getPllErayVcoFrequency() / ((*(volatile Ifx_SCU_PLLERAYCON1*)0xF003602Cu).B.K3DIV + 1);

    return pll2ErayFrequency;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void)
{
    float32 pll2Frequency;
    pll2Frequency = IfxScuCcu_getPllVcoFrequency() / ((*(volatile Ifx_SCU_PLLCON1*)0xF003601Cu).B.K3DIV + 1);

    return pll2Frequency;
}


static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void)
{
    return (IfxScu_CCUCON0_CLKSEL)(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.CLKSEL;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.STMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getCanFrequency(void)
{
    float32 canFrequency;
    float32 sourceFrequency;

    sourceFrequency = IfxScuCcu_getSourceFrequency();

    if ((*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.CANDIV == 0)
    {
        canFrequency = 0.0;
    }
    else
    {
        canFrequency = sourceFrequency / (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.CANDIV;
    }

    return canFrequency;
}
# 47 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h" 2



# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h" 1
# 95 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxSrc_cfg.h" 1
# 49 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_cpu1 = 1,
    IfxSrc_Tos_cpu2 = 2,
    IfxSrc_Tos_dma = 3
} IfxSrc_Tos;
# 96 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h" 2
# 112 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 121 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 130 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 139 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 148 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 166 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 175 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 184 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 216 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 51 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxAsclin_PinMap.h" 1
# 39 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxAsclin_PinMap.h"
typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxAsclin_Cts_In;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxAsclin_Rx_In;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxAsclin_Rts_Out;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxAsclin_Sclk_Out;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxAsclin_Slso_Out;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxAsclin_Tx_Out;

extern IfxAsclin_Cts_In IfxAsclin0_CTSA_P14_9_IN;
extern IfxAsclin_Cts_In IfxAsclin1_CTSA_P20_7_IN;
extern IfxAsclin_Cts_In IfxAsclin1_CTSB_P32_4_IN;
extern IfxAsclin_Cts_In IfxAsclin2_CTSA_P10_7_IN;
extern IfxAsclin_Cts_In IfxAsclin2_CTSB_P33_5_IN;
extern IfxAsclin_Cts_In IfxAsclin3_CTSA_P00_12_IN;
extern IfxAsclin_Rts_Out IfxAsclin0_RTS_P14_7_OUT;
extern IfxAsclin_Rts_Out IfxAsclin1_RTS_P20_6_OUT;
extern IfxAsclin_Rts_Out IfxAsclin1_RTS_P23_1_OUT;
extern IfxAsclin_Rts_Out IfxAsclin2_RTS_P10_8_OUT;
extern IfxAsclin_Rts_Out IfxAsclin2_RTS_P33_4_OUT;
extern IfxAsclin_Rts_Out IfxAsclin3_RTS_P00_9_OUT;
extern IfxAsclin_Rx_In IfxAsclin0_RXA_P14_1_IN;
extern IfxAsclin_Rx_In IfxAsclin0_RXB_P15_3_IN;
extern IfxAsclin_Rx_In IfxAsclin0_RXC_P01_8_IN;
extern IfxAsclin_Rx_In IfxAsclin0_RXD_P34_2_IN;
extern IfxAsclin_Rx_In IfxAsclin0_RXE_P13_11_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXA_P15_1_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXB_P15_5_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXC_P20_9_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXD_P14_8_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXE_P11_10_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXF_P33_13_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXG_P02_3_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXA_P14_3_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXB_P02_1_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXC_P02_10_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXD_P10_6_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXE_P33_8_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXF_P32_6_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXG_P02_0_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXA_P15_7_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXB_P11_0_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXC_P20_3_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXD_P32_2_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXE_P00_1_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXF_P21_6_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXG_P21_2_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXG_P21_3_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXH_P13_12_IN;
extern IfxAsclin_Sclk_Out IfxAsclin0_SCLK_P14_0_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin0_SCLK_P15_2_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin1_SCLK_P15_0_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin1_SCLK_P20_10_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin1_SCLK_P33_11_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin1_SCLK_P33_12_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P02_4_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P10_6_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P14_2_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P33_7_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P33_9_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P00_0_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P00_2_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P11_1_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P11_4_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P15_6_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P15_8_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P20_0_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P21_5_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P21_7_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P32_3_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P33_2_OUT;
extern IfxAsclin_Slso_Out IfxAsclin1_SLSO_P14_3_OUT;
extern IfxAsclin_Slso_Out IfxAsclin1_SLSO_P20_8_OUT;
extern IfxAsclin_Slso_Out IfxAsclin1_SLSO_P33_10_OUT;
extern IfxAsclin_Slso_Out IfxAsclin2_SLSO_P02_3_OUT;
extern IfxAsclin_Slso_Out IfxAsclin2_SLSO_P10_5_OUT;
extern IfxAsclin_Slso_Out IfxAsclin2_SLSO_P33_6_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P00_3_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P12_1_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P14_3_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P21_2_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P21_6_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P33_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P01_13_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P13_10_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P14_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P14_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P15_2_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P15_3_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P34_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P02_2_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P11_12_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P14_10_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P14_15_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P15_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P15_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P15_4_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P15_5_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P20_10_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P33_12_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P33_13_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P02_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P02_9_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P10_5_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P14_2_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P14_3_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P32_5_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P33_8_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P33_9_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P00_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P00_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P11_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P11_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P13_9_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P15_6_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P15_7_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P20_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P20_3_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P21_7_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P22_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P22_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P32_2_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P32_3_OUT;
# 212 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxAsclin_PinMap.h"
extern const IfxAsclin_Cts_In *IfxAsclin_Cts_In_pinTable[4][2];


extern const IfxAsclin_Rts_Out *IfxAsclin_Rts_Out_pinTable[4][2];


extern const IfxAsclin_Rx_In *IfxAsclin_Rx_In_pinTable[4][8];


extern const IfxAsclin_Sclk_Out *IfxAsclin_Sclk_Out_pinTable[4][11];


extern const IfxAsclin_Slso_Out *IfxAsclin_Slso_Out_pinTable[4][6];


extern const IfxAsclin_Tx_Out *IfxAsclin_Tx_Out_pinTable[4][14];
# 52 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h" 2
# 62 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
typedef enum
{
    IfxAsclin_Checksum_classic = 0,
    IfxAsclin_Checksum_enhanced = 1
} IfxAsclin_Checksum;




typedef enum
{
    IfxAsclin_ChecksumInjection_notWritten = 0,
    IfxAsclin_ChecksumInjection_written = 1
} IfxAsclin_ChecksumInjection;





typedef enum
{
    IfxAsclin_ClockPolarity_idleLow = 0,
    IfxAsclin_ClockPolarity_idleHigh = 1
} IfxAsclin_ClockPolarity;




typedef enum
{
    IfxAsclin_ClockSource_noClock = 0,
    IfxAsclin_ClockSource_kernelClock = 1,
    IfxAsclin_ClockSource_oscillatorClock = 2,
    IfxAsclin_ClockSource_flexRayClock = 4,
    IfxAsclin_ClockSource_ascFastClock = 8,
    IfxAsclin_ClockSource_ascSlowClock = 16
} IfxAsclin_ClockSource;




typedef enum
{
    IfxAsclin_CtsInputSelect_0,
    IfxAsclin_CtsInputSelect_1,
    IfxAsclin_CtsInputSelect_2,
    IfxAsclin_CtsInputSelect_3
} IfxAsclin_CtsInputSelect;




typedef enum
{
    IfxAsclin_DataLength_1 = 0,
    IfxAsclin_DataLength_2,
    IfxAsclin_DataLength_3,
    IfxAsclin_DataLength_4,
    IfxAsclin_DataLength_5,
    IfxAsclin_DataLength_6,
    IfxAsclin_DataLength_7,
    IfxAsclin_DataLength_8,
    IfxAsclin_DataLength_9,
    IfxAsclin_DataLength_10,
    IfxAsclin_DataLength_11,
    IfxAsclin_DataLength_12,
    IfxAsclin_DataLength_13,
    IfxAsclin_DataLength_14,
    IfxAsclin_DataLength_15,
    IfxAsclin_DataLength_16
} IfxAsclin_DataLength;




typedef enum
{
    IfxAsclin_FrameMode_initialise = 0,
    IfxAsclin_FrameMode_asc = 1,
    IfxAsclin_FrameMode_spi = 2,
    IfxAsclin_FrameMode_lin = 3
} IfxAsclin_FrameMode;




typedef enum
{
    IfxAsclin_HeaderResponseSelect_headerAndResponse = 0,
    IfxAsclin_HeaderResponseSelect_headerOnly = 1
} IfxAsclin_HeaderResponseSelect;






typedef enum
{
    IfxAsclin_IdleDelay_0,
    IfxAsclin_IdleDelay_1,
    IfxAsclin_IdleDelay_2,
    IfxAsclin_IdleDelay_3,
    IfxAsclin_IdleDelay_4,
    IfxAsclin_IdleDelay_5,
    IfxAsclin_IdleDelay_6,
    IfxAsclin_IdleDelay_7
} IfxAsclin_IdleDelay;





typedef enum
{
    IfxAsclin_LeadDelay_0,
    IfxAsclin_LeadDelay_1,
    IfxAsclin_LeadDelay_2,
    IfxAsclin_LeadDelay_3,
    IfxAsclin_LeadDelay_4,
    IfxAsclin_LeadDelay_5,
    IfxAsclin_LeadDelay_6,
    IfxAsclin_LeadDelay_7
} IfxAsclin_LeadDelay;




typedef enum
{
    IfxAsclin_LinMode_slave = 0,
    IfxAsclin_LinMode_master = 1
} IfxAsclin_LinMode;




typedef enum
{
    IfxAsclin_LinResponseTimeoutMode_frameTimeout = 0,
    IfxAsclin_LinResponseTimeoutMode_responseTimeout = 1
} IfxAsclin_LinResponseTimeoutMode;




typedef enum
{
    IfxAsclin_OversamplingFactor_4 = 3,
    IfxAsclin_OversamplingFactor_5 = 4,
    IfxAsclin_OversamplingFactor_6 = 5,
    IfxAsclin_OversamplingFactor_7 = 6,
    IfxAsclin_OversamplingFactor_8 = 7,
    IfxAsclin_OversamplingFactor_9 = 8,
    IfxAsclin_OversamplingFactor_10 = 9,
    IfxAsclin_OversamplingFactor_11 = 10,
    IfxAsclin_OversamplingFactor_12 = 11,
    IfxAsclin_OversamplingFactor_13 = 12,
    IfxAsclin_OversamplingFactor_14 = 13,
    IfxAsclin_OversamplingFactor_15 = 14,
    IfxAsclin_OversamplingFactor_16 = 15
} IfxAsclin_OversamplingFactor;




typedef enum
{
    IfxAsclin_ParityType_even = 0,
    IfxAsclin_ParityType_odd = 1
} IfxAsclin_ParityType;




typedef enum
{
    IfxAsclin_ReceiveBufferMode_rxFifo = 0,
    IfxAsclin_ReceiveBufferMode_rxBuffer = 1
} IfxAsclin_ReceiveBufferMode;




typedef enum
{
    IfxAsclin_RtsCtsPolarity_activeHigh = 0,
    IfxAsclin_RtsCtsPolarity_activeLow = 1
} IfxAsclin_RtsCtsPolarity;




typedef enum
{
    IfxAsclin_RxFifoInterruptLevel_1,
    IfxAsclin_RxFifoInterruptLevel_2,
    IfxAsclin_RxFifoInterruptLevel_3,
    IfxAsclin_RxFifoInterruptLevel_4,
    IfxAsclin_RxFifoInterruptLevel_5,
    IfxAsclin_RxFifoInterruptLevel_6,
    IfxAsclin_RxFifoInterruptLevel_7,
    IfxAsclin_RxFifoInterruptLevel_8,
    IfxAsclin_RxFifoInterruptLevel_9,
    IfxAsclin_RxFifoInterruptLevel_10,
    IfxAsclin_RxFifoInterruptLevel_11,
    IfxAsclin_RxFifoInterruptLevel_12,
    IfxAsclin_RxFifoInterruptLevel_13,
    IfxAsclin_RxFifoInterruptLevel_14,
    IfxAsclin_RxFifoInterruptLevel_15,
    IfxAsclin_RxFifoInterruptLevel_16
} IfxAsclin_RxFifoInterruptLevel;




typedef enum
{
    IfxAsclin_RxFifoOutletWidth_0,
    IfxAsclin_RxFifoOutletWidth_1,
    IfxAsclin_RxFifoOutletWidth_2,
    IfxAsclin_RxFifoOutletWidth_3
} IfxAsclin_RxFifoOutletWidth;




typedef enum
{
    IfxAsclin_RxInputSelect_0,
    IfxAsclin_RxInputSelect_1,
    IfxAsclin_RxInputSelect_2,
    IfxAsclin_RxInputSelect_3,
    IfxAsclin_RxInputSelect_4,
    IfxAsclin_RxInputSelect_5,
    IfxAsclin_RxInputSelect_6,
    IfxAsclin_RxInputSelect_7
} IfxAsclin_RxInputSelect;




typedef enum
{
    IfxAsclin_SamplePointPosition_1 = 1,
    IfxAsclin_SamplePointPosition_2 = 2,
    IfxAsclin_SamplePointPosition_3 = 3,
    IfxAsclin_SamplePointPosition_4 = 4,
    IfxAsclin_SamplePointPosition_5 = 5,
    IfxAsclin_SamplePointPosition_6 = 6,
    IfxAsclin_SamplePointPosition_7 = 7,
    IfxAsclin_SamplePointPosition_8 = 8,
    IfxAsclin_SamplePointPosition_9 = 9,
    IfxAsclin_SamplePointPosition_10 = 10,
    IfxAsclin_SamplePointPosition_11 = 11,
    IfxAsclin_SamplePointPosition_12 = 12,
    IfxAsclin_SamplePointPosition_13 = 13,
    IfxAsclin_SamplePointPosition_14 = 14,
    IfxAsclin_SamplePointPosition_15 = 15
} IfxAsclin_SamplePointPosition;




typedef enum
{
    IfxAsclin_SamplesPerBit_one = 0,
    IfxAsclin_SamplesPerBit_three = 1
} IfxAsclin_SamplesPerBit;





typedef enum
{
    IfxAsclin_ShiftDirection_lsbFirst = 0,
    IfxAsclin_ShiftDirection_msbFirst = 1
} IfxAsclin_ShiftDirection;





typedef enum
{
    IfxAsclin_SlavePolarity_idleLow = 0,
    IfxAsclin_SlavePolarity_idlehigh = 1
} IfxAsclin_SlavePolarity;




typedef enum
{
    IfxAsclin_SleepMode_enable = 0,
    IfxAsclin_SleepMode_disable = 1
} IfxAsclin_SleepMode;



typedef enum
{
    IfxAsclin_Status_configurationError = 0,
    IfxAsclin_Status_noError = 1
} IfxAsclin_Status;




typedef enum
{
    IfxAsclin_StopBit_0,
    IfxAsclin_StopBit_1,
    IfxAsclin_StopBit_2,
    IfxAsclin_StopBit_3,
    IfxAsclin_StopBit_4,
    IfxAsclin_StopBit_5,
    IfxAsclin_StopBit_6,
    IfxAsclin_StopBit_7
} IfxAsclin_StopBit;



typedef enum
{
    IfxAsclin_SuspendMode_none = 0,
    IfxAsclin_SuspendMode_hard = 1,
    IfxAsclin_SuspendMode_soft = 2
} IfxAsclin_SuspendMode;




typedef enum
{
    IfxAsclin_TxFifoInletWidth_0,
    IfxAsclin_TxFifoInletWidth_1,
    IfxAsclin_TxFifoInletWidth_2,
    IfxAsclin_TxFifoInletWidth_3
} IfxAsclin_TxFifoInletWidth;




typedef enum
{
    IfxAsclin_TxFifoInterruptLevel_0,
    IfxAsclin_TxFifoInterruptLevel_1,
    IfxAsclin_TxFifoInterruptLevel_2,
    IfxAsclin_TxFifoInterruptLevel_3,
    IfxAsclin_TxFifoInterruptLevel_4,
    IfxAsclin_TxFifoInterruptLevel_5,
    IfxAsclin_TxFifoInterruptLevel_6,
    IfxAsclin_TxFifoInterruptLevel_7,
    IfxAsclin_TxFifoInterruptLevel_8,
    IfxAsclin_TxFifoInterruptLevel_9,
    IfxAsclin_TxFifoInterruptLevel_10,
    IfxAsclin_TxFifoInterruptLevel_11,
    IfxAsclin_TxFifoInterruptLevel_12,
    IfxAsclin_TxFifoInterruptLevel_13,
    IfxAsclin_TxFifoInterruptLevel_14,
    IfxAsclin_TxFifoInterruptLevel_15
} IfxAsclin_TxFifoInterruptLevel;
# 440 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) void IfxAsclin_clearAllFlags(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearBreakDetectedFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearCollisionDetectionErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearFallingEdgeDetectedFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearFrameErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearHeaderTimeoutFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearKernelResetStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinAutoBaudDetectionErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinChecksumErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinParityErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearParityErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRaisingEdgeDetectedFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearResponseTimeoutFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoFillLevelFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoOverflowFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoUnderflowFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxHeaderEndFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxResponseEndFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTransmissionCompletedFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxFifoFillLevelFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxFifoOverflowFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxHeaderEndFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxResponseEndFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_flushRxFifo(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_flushTxFifo(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setBrdLowerlimt(Ifx_ASCLIN *asclin, uint8 limit);






static inline __attribute__ ((always_inline)) void IfxAsclin_setBrdUpperlimt(Ifx_ASCLIN *asclin, uint8 limit);






static inline __attribute__ ((always_inline)) void IfxAsclin_setChecksumInjection(Ifx_ASCLIN *asclin, IfxAsclin_ChecksumInjection csi);






static inline __attribute__ ((always_inline)) void IfxAsclin_setChecksumMode(Ifx_ASCLIN *asclin, IfxAsclin_Checksum mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setDataLength(Ifx_ASCLIN *asclin, IfxAsclin_DataLength length);






static inline __attribute__ ((always_inline)) void IfxAsclin_setDenominator(Ifx_ASCLIN *asclin, uint16 denominator);





static inline __attribute__ ((always_inline)) void IfxAsclin_setDisableModuleRequest(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_setEnableModuleRequest(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setFilterDepth(Ifx_ASCLIN *asclin, uint8 depth);






static inline __attribute__ ((always_inline)) void IfxAsclin_setHeaderResponseSelect(Ifx_ASCLIN *asclin, IfxAsclin_HeaderResponseSelect type);






static inline __attribute__ ((always_inline)) void IfxAsclin_setIdleDelay(Ifx_ASCLIN *asclin, IfxAsclin_IdleDelay delay);





static inline __attribute__ ((always_inline)) void IfxAsclin_setKernelResetOne(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_setKernelResetZero(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLeadDelay(Ifx_ASCLIN *asclin, IfxAsclin_LeadDelay delay);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinBreakLength(Ifx_ASCLIN *asclin, uint8 length);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinHeaderTimeout(Ifx_ASCLIN *asclin, uint8 timeout);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinMode(Ifx_ASCLIN *asclin, IfxAsclin_LinMode mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinResponseTimeoutMode(Ifx_ASCLIN *asclin, IfxAsclin_LinResponseTimeoutMode mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinResponseTimeoutThreshold(Ifx_ASCLIN *asclin, uint16 threshold);






static inline __attribute__ ((always_inline)) void IfxAsclin_setNumerator(Ifx_ASCLIN *asclin, uint16 numerator);






static inline __attribute__ ((always_inline)) void IfxAsclin_setOversampling(Ifx_ASCLIN *asclin, IfxAsclin_OversamplingFactor ovsFactor);






static inline __attribute__ ((always_inline)) void IfxAsclin_setParityType(Ifx_ASCLIN *asclin, IfxAsclin_ParityType type);






static inline __attribute__ ((always_inline)) void IfxAsclin_setPrescaler(Ifx_ASCLIN *asclin, uint16 prescaler);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRxBufferMode(Ifx_ASCLIN *asclin, IfxAsclin_ReceiveBufferMode mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRxFifoInterruptLevel(Ifx_ASCLIN *asclin, IfxAsclin_RxFifoInterruptLevel level);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRxFifoOutletWidth(Ifx_ASCLIN *asclin, IfxAsclin_RxFifoOutletWidth width);






static inline __attribute__ ((always_inline)) void IfxAsclin_setSampleMode(Ifx_ASCLIN *asclin, IfxAsclin_SamplesPerBit medianFilter);






static inline __attribute__ ((always_inline)) void IfxAsclin_setSamplePointPosition(Ifx_ASCLIN *asclin, IfxAsclin_SamplePointPosition spPosition);






static inline __attribute__ ((always_inline)) void IfxAsclin_setShiftDirection(Ifx_ASCLIN *asclin, IfxAsclin_ShiftDirection dir);






static inline __attribute__ ((always_inline)) void IfxAsclin_setStopBit(Ifx_ASCLIN *asclin, IfxAsclin_StopBit stopBit);





static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitHeaderRequestFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitResponseRequestFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitWakeRequestFlag(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setTxFifoInletWidth(Ifx_ASCLIN *asclin, IfxAsclin_TxFifoInletWidth width);






static inline __attribute__ ((always_inline)) void IfxAsclin_setTxFifoInterruptLevel(Ifx_ASCLIN *asclin, IfxAsclin_TxFifoInterruptLevel level);
# 837 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) boolean IfxAsclin_getBreakDetectedFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getClockSource(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getClockStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getCollisionDetectionErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getFallingEdgeDetectedFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getFrameErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getHeaderTimeoutFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getKernelResetStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getLinAutoBaudDetectionErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getLinChecksumErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getLinParityErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getModuleStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getParityErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint16 IfxAsclin_getPrescaler(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRaisingEdgeDetectedFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getReceiveSignalStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getResponseTimeoutFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getRxFifoFillLevel(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxFifoFillLevelFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getRxFifoOutletWidth(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxFifoOverflowFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxFifoUnderflowFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxHeaderEndFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxResponseEndFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTransmissionCompletedFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTransmitSignalStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getTxFifoFillLevel(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTxFifoFillLevelFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getTxFifoInletWidth(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTxFifoOverflowFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTxHeaderEndFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTxResponseEndFlagStatus(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setSleepMode(Ifx_ASCLIN *asclin, IfxAsclin_SleepMode mode);
# 1040 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
extern Ifx_ASCLIN *IfxAsclin_getAddress(IfxAsclin_Index asclin);





extern float32 IfxAsclin_getFaFrequency(Ifx_ASCLIN *asclin);




extern IfxAsclin_Index IfxAsclin_getIndex(Ifx_ASCLIN *asclin);





extern float32 IfxAsclin_getOvsFrequency(Ifx_ASCLIN *asclin);





extern float32 IfxAsclin_getPdFrequency(Ifx_ASCLIN *asclin);





extern float32 IfxAsclin_getShiftFrequency(Ifx_ASCLIN *asclin);





extern void IfxAsclin_resetModule(Ifx_ASCLIN *asclin);
# 1090 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) void IfxAsclin_disableAllFlags(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableAutoBaudrateDetection(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableBreakDetectedFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableCollisionDetection(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableCollisionDetectionErrorFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableCts(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableFallingEdgeDetectedFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableFrameErrorFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableHardwareChecksum(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableHeaderTimeoutFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinAutoBaudDetectionErrorFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinChecksumErrorFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinParityErrorFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableLoopBackMode(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableParity(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableParityErrorFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRaisingEdgeDetectedFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableResponseTimeoutFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoFillLevelFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoInlet(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoOverflowFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoUnderflowFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxHeaderEndFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxResponseEndFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTransmissionCompletedFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoFillLevelFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoOutlet(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoOverflowFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxHeaderEndFlag(Ifx_ASCLIN *asclin, boolean enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxResponseEndFlag(Ifx_ASCLIN *asclin, boolean enable);







static inline __attribute__ ((always_inline)) boolean IfxAsclin_isModuleSuspended(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setClockPolarity(Ifx_ASCLIN *asclin, IfxAsclin_ClockPolarity cpol);






static inline __attribute__ ((always_inline)) void IfxAsclin_setCtsInput(Ifx_ASCLIN *asclin, IfxAsclin_CtsInputSelect ctsi);






static inline __attribute__ ((always_inline)) void IfxAsclin_setFrameMode(Ifx_ASCLIN *asclin, IfxAsclin_FrameMode mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRtsCtsPolarity(Ifx_ASCLIN *asclin, IfxAsclin_RtsCtsPolarity rcpol);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRxInput(Ifx_ASCLIN *asclin, IfxAsclin_RxInputSelect alti);






static inline __attribute__ ((always_inline)) void IfxAsclin_setSlavePolarity(Ifx_ASCLIN *asclin, IfxAsclin_SlavePolarity spol);







static inline __attribute__ ((always_inline)) void IfxAsclin_setSuspendMode(Ifx_ASCLIN *asclin, IfxAsclin_SuspendMode mode);
# 1367 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
extern boolean IfxAsclin_setBitTiming(Ifx_ASCLIN *asclin, float32 baudrate, IfxAsclin_OversamplingFactor oversampling, IfxAsclin_SamplePointPosition samplepoint, IfxAsclin_SamplesPerBit medianFilter);
# 1382 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
extern void IfxAsclin_disableModule(Ifx_ASCLIN *asclin);







extern void IfxAsclin_enableAscErrorFlags(Ifx_ASCLIN *asclin, boolean parEnable, boolean rfoEnable);





extern void IfxAsclin_enableModule(Ifx_ASCLIN *asclin);




extern volatile Ifx_SRC_SRCR *const IfxAsclin_getSrcPointerEr(Ifx_ASCLIN *asclin);




extern volatile Ifx_SRC_SRCR *const IfxAsclin_getSrcPointerRx(Ifx_ASCLIN *asclin);




extern volatile Ifx_SRC_SRCR *const IfxAsclin_getSrcPointerTx(Ifx_ASCLIN *asclin);







extern uint32 IfxAsclin_read16(Ifx_ASCLIN *asclin, uint16 *data, uint32 count);







extern uint32 IfxAsclin_read32(Ifx_ASCLIN *asclin, uint32 *data, uint32 count);







extern uint32 IfxAsclin_read8(Ifx_ASCLIN *asclin, uint8 *data, uint32 count);
# 1445 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
extern void IfxAsclin_setBaudrateBitFields(Ifx_ASCLIN *asclin, uint16 prescaler, uint16 numerator, uint16 denominator, IfxAsclin_OversamplingFactor oversampling);






extern void IfxAsclin_setClockSource(Ifx_ASCLIN *asclin, IfxAsclin_ClockSource clockSource);







extern uint32 IfxAsclin_write16(Ifx_ASCLIN *asclin, uint16 *data, uint32 count);







extern uint32 IfxAsclin_write32(Ifx_ASCLIN *asclin, uint32 *data, uint32 count);







extern uint32 IfxAsclin_write8(Ifx_ASCLIN *asclin, uint8 *data, uint32 count);
# 1499 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) void IfxAsclin_initCtsPin(const IfxAsclin_Cts_In *cts, IfxPort_InputMode inputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxAsclin_initRtsPin(const IfxAsclin_Rts_Out *rts, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
# 1521 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) void IfxAsclin_initRxPin(const IfxAsclin_Rx_In *rx, IfxPort_InputMode inputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxAsclin_initSclkPin(const IfxAsclin_Sclk_Out *sclk, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxAsclin_initSlsoPin(const IfxAsclin_Slso_Out *slso, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxAsclin_initTxPin(const IfxAsclin_Tx_Out *tx, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
# 1557 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) uint32 IfxAsclin_readRxData(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_writeTxData(Ifx_ASCLIN *asclin, uint32 data);





static inline __attribute__ ((always_inline)) uint16 IfxAsclin_getAllErrorFlagsStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearAllFlags(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.U = 0xFFFFFFFF;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearBreakDetectedFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.BDC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearCollisionDetectionErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.CEC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearFallingEdgeDetectedFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.FEDC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearFrameErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.FEC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearHeaderTimeoutFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.HTC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearKernelResetStatus(Ifx_ASCLIN *asclin)
{
    asclin->KRSTCLR.B.CLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinAutoBaudDetectionErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.LAC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinChecksumErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.LCC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinParityErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.LPC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearParityErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.PEC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRaisingEdgeDetectedFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.REDC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearResponseTimeoutFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RTC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoFillLevelFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RFLC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoOverflowFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RFOC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoUnderflowFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RFUC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxHeaderEndFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RHC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxResponseEndFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RRC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTransmissionCompletedFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.TCC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxFifoFillLevelFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.TFLC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxFifoOverflowFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.TFOC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxHeaderEndFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.THC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxResponseEndFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.TRC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_disableAllFlags(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSENABLE.U = 0x00000000;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableAutoBaudrateDetection(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->LIN.CON.B.ABD = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableBreakDetectedFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.BDE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableCollisionDetection(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FRAMECON.B.CEN = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableCollisionDetectionErrorFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.CEE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableCts(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->IOCR.B.CTSEN = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableFallingEdgeDetectedFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.FEDE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableFrameErrorFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.FEE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableHardwareChecksum(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->LIN.CON.B.CSEN = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableHeaderTimeoutFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.HTE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinAutoBaudDetectionErrorFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.ABE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinChecksumErrorFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.LCE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinParityErrorFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.LPE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableLoopBackMode(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->IOCR.B.LB = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableParity(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FRAMECON.B.PEN = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableParityErrorFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.PEE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRaisingEdgeDetectedFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.REDE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableResponseTimeoutFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.RTE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoFillLevelFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.RFLE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoInlet(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->RXFIFOCON.B.ENI = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoOverflowFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.RFOE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoUnderflowFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.RFUE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxHeaderEndFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.RHE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxResponseEndFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.RRE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTransmissionCompletedFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.TCE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoFillLevelFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.TFLE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoOutlet(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->TXFIFOCON.B.ENO = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoOverflowFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.TFOE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxHeaderEndFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.THE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxResponseEndFlag(Ifx_ASCLIN *asclin, boolean enable)
{
    asclin->FLAGSENABLE.B.TRE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_flushRxFifo(Ifx_ASCLIN *asclin)
{
    asclin->RXFIFOCON.B.FLUSH = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_flushTxFifo(Ifx_ASCLIN *asclin)
{
    asclin->TXFIFOCON.B.FLUSH = 1;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getBreakDetectedFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.BD;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getClockSource(Ifx_ASCLIN *asclin)
{
    return asclin->CSR.B.CLKSEL;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getClockStatus(Ifx_ASCLIN *asclin)
{
    return asclin->CSR.B.CON;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getCollisionDetectionErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.CE;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getFallingEdgeDetectedFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.FED;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getFrameErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.FE;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getHeaderTimeoutFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.HT;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getKernelResetStatus(Ifx_ASCLIN *asclin)
{
    return asclin->KRST0.B.RSTSTAT;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getLinAutoBaudDetectionErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.LA;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getLinChecksumErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.LC;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getLinParityErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.LP;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getModuleStatus(Ifx_ASCLIN *asclin)
{
    return asclin->CLC.B.DISS;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getParityErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.PE;
}


static inline __attribute__ ((always_inline)) uint16 IfxAsclin_getPrescaler(Ifx_ASCLIN *asclin)
{
    return asclin->BITCON.B.PRESCALER + 1;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRaisingEdgeDetectedFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RED;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getReceiveSignalStatus(Ifx_ASCLIN *asclin)
{
    return asclin->IOCR.B.RXM;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getResponseTimeoutFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RT;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getRxFifoFillLevel(Ifx_ASCLIN *asclin)
{
    return asclin->RXFIFOCON.B.FILL;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxFifoFillLevelFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RFL;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getRxFifoOutletWidth(Ifx_ASCLIN *asclin)
{
    return asclin->RXFIFOCON.B.OUTW;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxFifoOverflowFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RFO;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxFifoUnderflowFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RFU;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxHeaderEndFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RH;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getRxResponseEndFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RR;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTransmissionCompletedFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TC;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTransmitSignalStatus(Ifx_ASCLIN *asclin)
{
    return asclin->IOCR.B.TXM;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getTxFifoFillLevel(Ifx_ASCLIN *asclin)
{
    return asclin->TXFIFOCON.B.FILL;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTxFifoFillLevelFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TFL;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getTxFifoInletWidth(Ifx_ASCLIN *asclin)
{
    return asclin->TXFIFOCON.B.INW;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTxFifoOverflowFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TFO;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTxHeaderEndFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TH;
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_getTxResponseEndFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TR;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initCtsPin(const IfxAsclin_Cts_In *cts, IfxPort_InputMode inputMode, IfxPort_PadDriver padDriver)
{
    if (cts->pin.port != ((void *)0))
    {
        IfxPort_setPinModeInput(cts->pin.port, cts->pin.pinIndex, inputMode);
        IfxPort_setPinPadDriver(cts->pin.port, cts->pin.pinIndex, padDriver);
        IfxAsclin_enableCts(cts->module, 1);
        IfxAsclin_setCtsInput(cts->module, (IfxAsclin_CtsInputSelect)cts->select);
    }
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initRtsPin(const IfxAsclin_Rts_Out *rts, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(rts->pin.port, rts->pin.pinIndex, outputMode, rts->select);
    IfxPort_setPinPadDriver(rts->pin.port, rts->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initRxPin(const IfxAsclin_Rx_In *rx, IfxPort_InputMode inputMode, IfxPort_PadDriver padDriver)
{
    if (rx->pin.port != ((void *)0))
    {
        IfxPort_setPinModeInput(rx->pin.port, rx->pin.pinIndex, inputMode);
        IfxPort_setPinPadDriver(rx->pin.port, rx->pin.pinIndex, padDriver);
        IfxAsclin_setRxInput(rx->module, (IfxAsclin_RxInputSelect)rx->select);
    }
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initSclkPin(const IfxAsclin_Sclk_Out *sclk, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(sclk->pin.port, sclk->pin.pinIndex, outputMode, sclk->select);
    IfxPort_setPinPadDriver(sclk->pin.port, sclk->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initSlsoPin(const IfxAsclin_Slso_Out *slso, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(slso->pin.port, slso->pin.pinIndex, outputMode, slso->select);
    IfxPort_setPinPadDriver(slso->pin.port, slso->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initTxPin(const IfxAsclin_Tx_Out *tx, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(tx->pin.port, tx->pin.pinIndex, outputMode, tx->select);
    IfxPort_setPinPadDriver(tx->pin.port, tx->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) boolean IfxAsclin_isModuleSuspended(Ifx_ASCLIN *asclin)
{
    Ifx_ASCLIN_OCS ocs;


    ocs.U = asclin->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) uint32 IfxAsclin_readRxData(Ifx_ASCLIN *asclin)
{
    return asclin->RXDATA.U;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setBrdLowerlimt(Ifx_ASCLIN *asclin, uint8 limit)
{
    asclin->BRD.B.LOWERLIMIT = limit;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setBrdUpperlimt(Ifx_ASCLIN *asclin, uint8 limit)
{
    asclin->BRD.B.UPPERLIMIT = limit;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setChecksumInjection(Ifx_ASCLIN *asclin, IfxAsclin_ChecksumInjection csi)
{
    asclin->LIN.CON.B.CSI = csi;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setChecksumMode(Ifx_ASCLIN *asclin, IfxAsclin_Checksum mode)
{
    asclin->DATCON.B.CSM = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setClockPolarity(Ifx_ASCLIN *asclin, IfxAsclin_ClockPolarity cpol)
{
    asclin->IOCR.B.CPOL = cpol;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setCtsInput(Ifx_ASCLIN *asclin, IfxAsclin_CtsInputSelect ctsi)
{
    asclin->IOCR.B.CTS = ctsi;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setDataLength(Ifx_ASCLIN *asclin, IfxAsclin_DataLength length)
{
    asclin->DATCON.B.DATLEN = length;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setDenominator(Ifx_ASCLIN *asclin, uint16 denominator)
{
    asclin->BRG.B.DENOMINATOR = denominator;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setDisableModuleRequest(Ifx_ASCLIN *asclin)
{
    asclin->CLC.B.DISR = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setEnableModuleRequest(Ifx_ASCLIN *asclin)
{
    asclin->CLC.B.DISR = 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setFilterDepth(Ifx_ASCLIN *asclin, uint8 depth)
{
    asclin->IOCR.B.DEPTH = __minu(depth, 63);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setFrameMode(Ifx_ASCLIN *asclin, IfxAsclin_FrameMode mode)
{
    asclin->FRAMECON.B.MODE = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setHeaderResponseSelect(Ifx_ASCLIN *asclin, IfxAsclin_HeaderResponseSelect type)
{
    asclin->DATCON.B.HO = type;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setIdleDelay(Ifx_ASCLIN *asclin, IfxAsclin_IdleDelay delay)
{
    asclin->FRAMECON.B.IDLE = delay;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setKernelResetOne(Ifx_ASCLIN *asclin)
{
    asclin->KRST1.B.RST = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setKernelResetZero(Ifx_ASCLIN *asclin)
{
    asclin->KRST0.B.RST = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLeadDelay(Ifx_ASCLIN *asclin, IfxAsclin_LeadDelay delay)
{
    asclin->FRAMECON.B.LEAD = delay;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinBreakLength(Ifx_ASCLIN *asclin, uint8 length)
{
    asclin->LIN.BTIMER.B.BREAK = length;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinHeaderTimeout(Ifx_ASCLIN *asclin, uint8 timeout)
{
    asclin->LIN.HTIMER.B.HEADER = timeout;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinMode(Ifx_ASCLIN *asclin, IfxAsclin_LinMode mode)
{
    asclin->LIN.CON.B.MS = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinResponseTimeoutMode(Ifx_ASCLIN *asclin, IfxAsclin_LinResponseTimeoutMode mode)
{
    asclin->DATCON.B.RM = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinResponseTimeoutThreshold(Ifx_ASCLIN *asclin, uint16 threshold)
{
    asclin->DATCON.B.RESPONSE = __minu(threshold, 256);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setNumerator(Ifx_ASCLIN *asclin, uint16 numerator)
{
    asclin->BRG.B.NUMERATOR = numerator;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setOversampling(Ifx_ASCLIN *asclin, IfxAsclin_OversamplingFactor ovsFactor)
{
    asclin->BITCON.B.OVERSAMPLING = ovsFactor;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setParityType(Ifx_ASCLIN *asclin, IfxAsclin_ParityType type)
{
    asclin->FRAMECON.B.ODD = type;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setPrescaler(Ifx_ASCLIN *asclin, uint16 prescaler)
{
    asclin->BITCON.B.PRESCALER = prescaler - 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRtsCtsPolarity(Ifx_ASCLIN *asclin, IfxAsclin_RtsCtsPolarity rcpol)
{
    asclin->IOCR.B.RCPOL = rcpol;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRxBufferMode(Ifx_ASCLIN *asclin, IfxAsclin_ReceiveBufferMode mode)
{
    asclin->RXFIFOCON.B.BUF = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRxFifoInterruptLevel(Ifx_ASCLIN *asclin, IfxAsclin_RxFifoInterruptLevel level)
{
    asclin->RXFIFOCON.B.INTLEVEL = __minu(level, 15);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRxFifoOutletWidth(Ifx_ASCLIN *asclin, IfxAsclin_RxFifoOutletWidth width)
{
    asclin->RXFIFOCON.B.OUTW = width;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRxInput(Ifx_ASCLIN *asclin, IfxAsclin_RxInputSelect alti)
{
    asclin->IOCR.B.ALTI = alti;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSampleMode(Ifx_ASCLIN *asclin, IfxAsclin_SamplesPerBit medianFilter)
{
    asclin->BITCON.B.SM = medianFilter;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSamplePointPosition(Ifx_ASCLIN *asclin, IfxAsclin_SamplePointPosition spPosition)
{
    asclin->BITCON.B.SAMPLEPOINT = __minu(spPosition, asclin->BITCON.B.OVERSAMPLING);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setShiftDirection(Ifx_ASCLIN *asclin, IfxAsclin_ShiftDirection dir)
{
    asclin->FRAMECON.B.MSB = dir;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSlavePolarity(Ifx_ASCLIN *asclin, IfxAsclin_SlavePolarity spol)
{
    asclin->IOCR.B.SPOL = spol;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSleepMode(Ifx_ASCLIN *asclin, IfxAsclin_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    asclin->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setStopBit(Ifx_ASCLIN *asclin, IfxAsclin_StopBit stopBit)
{
    asclin->FRAMECON.B.STOP = stopBit;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSuspendMode(Ifx_ASCLIN *asclin, IfxAsclin_SuspendMode mode)
{
    Ifx_ASCLIN_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;
    asclin->OCS.U = ocs.U;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitHeaderRequestFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSSET.B.THRQS = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitResponseRequestFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSSET.B.TRRQS = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitWakeRequestFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSSET.B.TWRQS = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTxFifoInletWidth(Ifx_ASCLIN *asclin, IfxAsclin_TxFifoInletWidth width)
{
    asclin->TXFIFOCON.B.INW = width;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTxFifoInterruptLevel(Ifx_ASCLIN *asclin, IfxAsclin_TxFifoInterruptLevel level)
{
    asclin->TXFIFOCON.B.INTLEVEL = __minu(level, 15);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_writeTxData(Ifx_ASCLIN *asclin, uint32 data)
{
    asclin->TXDATA.U = data;
}


static inline __attribute__ ((always_inline)) uint16 IfxAsclin_getAllErrorFlagsStatus(Ifx_ASCLIN *asclin)
{
    return (uint16)(asclin->FLAGS.U >> 16);
}
# 222 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h" 1
# 40 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
typedef struct
{
    Ifx_SizeT count;
    sint32 readerWaitx;
    sint32 writerWaitx;
    Ifx_SizeT maxcount;
} Ifx_Fifo_Shared;






typedef struct _Fifo
{
    void *buffer;
    Ifx_Fifo_Shared shared;
    Ifx_SizeT startIndex;
    Ifx_SizeT endIndex;
    Ifx_SizeT size;
    Ifx_SizeT elementSize;
    volatile boolean eventReader;
    volatile boolean eventWriter;
} Ifx_Fifo;
# 75 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern boolean Ifx_Fifo_canReadCount(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_TickTime timeout);
# 87 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern boolean Ifx_Fifo_canWriteCount(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_TickTime timeout);







extern void Ifx_Fifo_clear(Ifx_Fifo *fifo);
# 108 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_Fifo *Ifx_Fifo_create(Ifx_SizeT size, Ifx_SizeT elementSize);
# 119 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern void Ifx_Fifo_destroy(Ifx_Fifo *fifo);
# 134 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_Fifo *Ifx_Fifo_init(void *buffer, Ifx_SizeT size, Ifx_SizeT elementSize);
# 148 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_SizeT Ifx_Fifo_read(Ifx_Fifo *fifo, void *data, Ifx_SizeT count, Ifx_TickTime timeout);
# 160 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_SizeT Ifx_Fifo_write(Ifx_Fifo *fifo, const void *data, Ifx_SizeT count, Ifx_TickTime timeout);
# 169 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) boolean Ifx_Fifo_flush(Ifx_Fifo *fifo, Ifx_TickTime timeout)
{
    return Ifx_Fifo_canWriteCount(fifo, fifo->size, timeout);
}
# 186 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) Ifx_SizeT Ifx_Fifo_readCount(Ifx_Fifo *fifo)
{
    return fifo->shared.count;
}
# 202 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) Ifx_SizeT Ifx_Fifo_writeCount(Ifx_Fifo *fifo)
{
    return (Ifx_SizeT)(fifo->size - Ifx_Fifo_readCount(fifo));
}
# 215 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) boolean Ifx_Fifo_isEmpty(Ifx_Fifo *fifo)
{
    return (Ifx_Fifo_readCount(fifo) != 0) ? 0 : 1;
}
# 223 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h" 1
# 40 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h" 1
# 119 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxStm_cfg.h" 1
# 67 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxStm_cfg.h"
typedef enum
{
    IfxStm_Index_none = -1,
    IfxStm_Index_0 = 0,
    IfxStm_Index_1,
    IfxStm_Index_2
} IfxStm_Index;
# 84 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxStm_cfg.h"
extern const IfxModule_IndexMap IfxStm_cfg_indexMap[3];
# 120 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h" 2
# 131 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
typedef enum
{
    IfxStm_Comparator_0 = 0,
    IfxStm_Comparator_1
} IfxStm_Comparator;



typedef enum
{
    IfxStm_ComparatorInterrupt_ir0 = 0,
    IfxStm_ComparatorInterrupt_ir1 = 1
} IfxStm_ComparatorInterrupt;



typedef enum
{
    IfxStm_ComparatorOffset_0 = 0,
    IfxStm_ComparatorOffset_1,
    IfxStm_ComparatorOffset_2,
    IfxStm_ComparatorOffset_3,
    IfxStm_ComparatorOffset_4,
    IfxStm_ComparatorOffset_5,
    IfxStm_ComparatorOffset_6,
    IfxStm_ComparatorOffset_7,
    IfxStm_ComparatorOffset_8,
    IfxStm_ComparatorOffset_9,
    IfxStm_ComparatorOffset_10,
    IfxStm_ComparatorOffset_11,
    IfxStm_ComparatorOffset_12,
    IfxStm_ComparatorOffset_13,
    IfxStm_ComparatorOffset_14,
    IfxStm_ComparatorOffset_15,
    IfxStm_ComparatorOffset_16,
    IfxStm_ComparatorOffset_17,
    IfxStm_ComparatorOffset_18,
    IfxStm_ComparatorOffset_19,
    IfxStm_ComparatorOffset_20,
    IfxStm_ComparatorOffset_21,
    IfxStm_ComparatorOffset_22,
    IfxStm_ComparatorOffset_23,
    IfxStm_ComparatorOffset_24,
    IfxStm_ComparatorOffset_25,
    IfxStm_ComparatorOffset_26,
    IfxStm_ComparatorOffset_27,
    IfxStm_ComparatorOffset_28,
    IfxStm_ComparatorOffset_29,
    IfxStm_ComparatorOffset_30,
    IfxStm_ComparatorOffset_31
} IfxStm_ComparatorOffset;



typedef enum
{
    IfxStm_ComparatorSize_1Bit = 0,
    IfxStm_ComparatorSize_2Bits = 1,
    IfxStm_ComparatorSize_3Bits = 2,
    IfxStm_ComparatorSize_4Bits = 3,
    IfxStm_ComparatorSize_5Bits = 4,
    IfxStm_ComparatorSize_6Bits = 5,
    IfxStm_ComparatorSize_7Bits = 6,
    IfxStm_ComparatorSize_8Bits = 7,
    IfxStm_ComparatorSize_9Bits = 8,
    IfxStm_ComparatorSize_10Bits = 9,
    IfxStm_ComparatorSize_11Bits = 10,
    IfxStm_ComparatorSize_12Bits = 11,
    IfxStm_ComparatorSize_13Bits = 12,
    IfxStm_ComparatorSize_14Bits = 13,
    IfxStm_ComparatorSize_15Bits = 14,
    IfxStm_ComparatorSize_16Bits = 15,
    IfxStm_ComparatorSize_17Bits = 16,
    IfxStm_ComparatorSize_18Bits = 17,
    IfxStm_ComparatorSize_19Bits = 18,
    IfxStm_ComparatorSize_20Bits = 19,
    IfxStm_ComparatorSize_21Bits = 20,
    IfxStm_ComparatorSize_22Bits = 21,
    IfxStm_ComparatorSize_23Bits = 22,
    IfxStm_ComparatorSize_24Bits = 23,
    IfxStm_ComparatorSize_25Bits = 24,
    IfxStm_ComparatorSize_26Bits = 25,
    IfxStm_ComparatorSize_27Bits = 26,
    IfxStm_ComparatorSize_28Bits = 27,
    IfxStm_ComparatorSize_29Bits = 28,
    IfxStm_ComparatorSize_30Bits = 29,
    IfxStm_ComparatorSize_31Bits = 30,
    IfxStm_ComparatorSize_32Bits = 31
} IfxStm_ComparatorSize;




typedef enum
{
    IfxStm_SleepMode_enable = 0,
    IfxStm_SleepMode_disable = 1
} IfxStm_SleepMode;



typedef enum
{
    IfxStm_SuspendMode_none = 0,
    IfxStm_SuspendMode_hard = 1,
    IfxStm_SuspendMode_soft = 2
} IfxStm_SuspendMode;
# 249 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
typedef struct
{
    IfxStm_Comparator comparator;
    IfxStm_ComparatorInterrupt comparatorInterrupt;
    IfxStm_ComparatorOffset compareOffset;
    IfxStm_ComparatorSize compareSize;
    uint32 ticks;
    Ifx_Priority triggerPriority;
    IfxSrc_Tos typeOfService;
} IfxStm_CompareConfig;
# 273 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint64 IfxStm_get(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) float32 IfxStm_getFrequency(Ifx_STM *stm);







static inline __attribute__ ((always_inline)) boolean IfxStm_isModuleSuspended(Ifx_STM *stm);







static inline __attribute__ ((always_inline)) void IfxStm_setSuspendMode(Ifx_STM *stm, IfxStm_SuspendMode mode);
# 305 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_disableModule(Ifx_STM *stm);





extern void IfxStm_enableOcdsSuspend(Ifx_STM *stm);





extern Ifx_STM *IfxStm_getAddress(IfxStm_Index stm);





extern IfxStm_Index IfxStm_getIndex(Ifx_STM *stm);
# 338 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint32 IfxStm_getLower(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset12Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset16Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset20Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset32Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset4Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset8Timer(Ifx_STM *stm);






static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffsetTimer(Ifx_STM *stm, uint8 offset);







static inline __attribute__ ((always_inline)) void IfxStm_waitTicks(Ifx_STM *stm, uint32 ticks);
# 405 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint32 IfxStm_getCompare(Ifx_STM *stm, IfxStm_Comparator comparator);






static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMicroseconds(Ifx_STM *stm, uint32 microSeconds);






static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMilliseconds(Ifx_STM *stm, uint32 milliSeconds);







static inline __attribute__ ((always_inline)) void IfxStm_increaseCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks);







static inline __attribute__ ((always_inline)) void IfxStm_updateCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks);
# 446 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_clearCompareFlag(Ifx_STM *stm, IfxStm_Comparator comparator);






extern void IfxStm_disableComparatorInterrupt(Ifx_STM *stm, IfxStm_Comparator comparator);






extern void IfxStm_enableComparatorInterrupt(Ifx_STM *stm, IfxStm_Comparator comparator);






extern volatile Ifx_SRC_SRCR *IfxStm_getSrcPointer(Ifx_STM *stm, IfxStm_Comparator comparator);






extern boolean IfxStm_initCompare(Ifx_STM *stm, const IfxStm_CompareConfig *config);





extern void IfxStm_initCompareConfig(IfxStm_CompareConfig *config);






extern boolean IfxStm_isCompareFlagSet(Ifx_STM *stm, IfxStm_Comparator comparator);
# 497 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_setCompareControl(Ifx_STM *stm, IfxStm_Comparator comparator, IfxStm_ComparatorOffset offset, IfxStm_ComparatorSize size, IfxStm_ComparatorInterrupt interrupt);
# 510 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) void IfxStm_setSleepMode(Ifx_STM *stm, IfxStm_SleepMode mode);
# 520 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_resetModule(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint64 IfxStm_get(Ifx_STM *stm)
{
    uint64 result;

    result = stm->TIM0.U;
    result |= ((uint64)stm->CAP.U) << 32;

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getCompare(Ifx_STM *stm, IfxStm_Comparator comparator)
{
    return stm->CMP[comparator].B.CMPVAL;
}


static inline __attribute__ ((always_inline)) float32 IfxStm_getFrequency(Ifx_STM *stm)
{
    float32 result;

    result = IfxScuCcu_getStmFrequency();

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getLower(Ifx_STM *stm)
{
    return stm->TIM0.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset12Timer(Ifx_STM *stm)
{
    return stm->TIM3.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset16Timer(Ifx_STM *stm)
{
    return stm->TIM4.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset20Timer(Ifx_STM *stm)
{
    return stm->TIM5.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset32Timer(Ifx_STM *stm)
{
    return stm->TIM6.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset4Timer(Ifx_STM *stm)
{
    return stm->TIM1.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset8Timer(Ifx_STM *stm)
{
    return stm->TIM2.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffsetTimer(Ifx_STM *stm, uint8 offset)
{
    uint64 now;

    now = IfxStm_get(stm);

    return (uint32)(now >> offset);
}


static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMicroseconds(Ifx_STM *stm, uint32 microSeconds)
{
    sint32 freq = (sint32)IfxStm_getFrequency(stm);
    return (freq / (1000000)) * microSeconds;
}


static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMilliseconds(Ifx_STM *stm, uint32 milliSeconds)
{
    sint32 freq = (sint32)IfxStm_getFrequency(stm);
    return (freq / (1000)) * milliSeconds;
}


static inline __attribute__ ((always_inline)) void IfxStm_increaseCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks)
{
    stm->CMP[comparator].B.CMPVAL = stm->CMP[comparator].B.CMPVAL + ticks;
}


static inline __attribute__ ((always_inline)) boolean IfxStm_isModuleSuspended(Ifx_STM *stm)
{
    Ifx_STM_OCS ocs;


    ocs.U = stm->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxStm_setSleepMode(Ifx_STM *stm, IfxStm_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    stm->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxStm_setSuspendMode(Ifx_STM *stm, IfxStm_SuspendMode mode)
{
    Ifx_STM_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;
    stm->OCS.U = ocs.U;
}


static inline __attribute__ ((always_inline)) void IfxStm_updateCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks)
{
    stm->CMP[comparator].B.CMPVAL = ticks;
}


static inline __attribute__ ((always_inline)) void IfxStm_waitTicks(Ifx_STM *stm, uint32 ticks)
{
    uint32 beginTime;

    beginTime = IfxStm_getLower(stm);




    while ((IfxStm_getLower(stm) - beginTime) < ticks)
    {}
}
# 41 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h" 2
# 56 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean areInterruptsEnabled(void);
static inline __attribute__ ((always_inline)) boolean disableInterrupts(void);
static inline __attribute__ ((always_inline)) void enableInterrupts(void);
static inline __attribute__ ((always_inline)) void restoreInterrupts(boolean enabled);
static inline __attribute__ ((always_inline)) void forceDisableInterrupts(void);
# 75 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean areInterruptsEnabled(void)
{
    return IfxCpu_areInterruptsEnabled();
}
# 88 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean disableInterrupts(void)
{
    return IfxCpu_disableInterrupts();
}







static inline __attribute__ ((always_inline)) void forceDisableInterrupts(void)
{
    IfxCpu_forceDisableInterrupts();
}





static inline __attribute__ ((always_inline)) void enableInterrupts(void)
{
    IfxCpu_enableInterrupts();
}
# 122 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) void restoreInterrupts(boolean enabled)
{
    IfxCpu_restoreInterrupts(enabled);
}
# 148 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
extern Ifx_TickTime TimeConst[(11)];
# 157 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime addTTime(Ifx_TickTime a, Ifx_TickTime b);
static inline __attribute__ ((always_inline)) Ifx_TickTime elapsed(Ifx_TickTime since);
static inline __attribute__ ((always_inline)) Ifx_TickTime getDeadLine(Ifx_TickTime timeout);
static inline __attribute__ ((always_inline)) Ifx_TickTime getTimeout(Ifx_TickTime deadline);
extern void initTime(void);
static inline __attribute__ ((always_inline)) boolean isDeadLine(Ifx_TickTime deadLine);
static inline __attribute__ ((always_inline)) Ifx_TickTime now(void);
static inline __attribute__ ((always_inline)) Ifx_TickTime nowWithoutCriticalSection(void);
static inline __attribute__ ((always_inline)) boolean poll(volatile boolean *test, Ifx_TickTime timeout);
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptEnd(Ifx_TickTime since, boolean interruptEnabled);
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptStart(boolean *interruptEnabled);
static inline __attribute__ ((always_inline)) void wait(Ifx_TickTime timeout);
extern void waitPoll(void);
extern void waitTime(Ifx_TickTime timeout);


typedef void (*WaitTimeFunction)(Ifx_TickTime timeout);
# 201 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime now(void)
{
    Ifx_TickTime stmNow;
    boolean interruptState;

    interruptState = disableInterrupts();
    stmNow = (Ifx_TickTime)IfxStm_get((&(*(Ifx_STM*)0xF0000000u))) & ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    restoreInterrupts(interruptState);

    return stmNow;
}
# 220 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime nowWithoutCriticalSection(void)
{
    Ifx_TickTime stmNow;

    stmNow = (Ifx_TickTime)IfxStm_get((&(*(Ifx_STM*)0xF0000000u))) & ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);

    return stmNow;
}
# 237 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime addTTime(Ifx_TickTime a, Ifx_TickTime b)
{
    Ifx_TickTime result;

    if ((a == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL)) || (b == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL)))
    {
        result = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        result = a + b;
    }

    return result;
}
# 260 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime elapsed(Ifx_TickTime since)
{
    return now() - since;
}
# 272 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime getDeadLine(Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine;

    if (timeout == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        deadLine = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        deadLine = now() + timeout;
    }

    return deadLine;
}
# 295 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime getTimeout(Ifx_TickTime deadline)
{
    Ifx_TickTime timeout;

    if (deadline == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        timeout = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        timeout = deadline - now();
    }

    return timeout;
}
# 319 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean isDeadLine(Ifx_TickTime deadLine)
{
    boolean result;

    if (deadLine == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        result = 0;
    }
    else
    {
        result = now() >= deadLine;
    }

    return result;
}
# 344 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean poll(volatile boolean *test, Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine = getDeadLine(timeout);

    while ((*test == 0) && (isDeadLine(deadLine) == 0))
    {}

    return *test;
}
# 366 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptEnd(Ifx_TickTime since, boolean interruptEnabled)
{
    Ifx_TickTime stmNow;

    stmNow = nowWithoutCriticalSection();
    restoreInterrupts(interruptEnabled);

    return stmNow - since;
}
# 385 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptStart(boolean *interruptEnabled)
{
    *interruptEnabled = disableInterrupts();

    return nowWithoutCriticalSection();
}
# 399 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) void wait(Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine = getDeadLine(timeout);

    while (isDeadLine(deadLine) == 0)
    {}
}
# 224 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h" 1
# 44 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h" 1
# 97 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
typedef void *IfxStdIf_InterfaceDriver;
# 45 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h" 2






typedef struct IfxStdIf_DPipe_ IfxStdIf_DPipe;

typedef volatile boolean *IfxStdIf_DPipe_WriteEvent;
typedef volatile boolean *IfxStdIf_DPipe_ReadEvent;
# 72 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_Write)(IfxStdIf_InterfaceDriver driver, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);
# 87 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_Read)(IfxStdIf_InterfaceDriver driver, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);







typedef sint32 (*IfxStdIf_DPipe_GetReadCount)(IfxStdIf_InterfaceDriver driver);







typedef IfxStdIf_DPipe_ReadEvent (*IfxStdIf_DPipe_GetReadEvent)(IfxStdIf_InterfaceDriver driver);







typedef uint32 (*IfxStdIf_DPipe_GetSendCount)(IfxStdIf_InterfaceDriver driver);







typedef Ifx_TickTime (*IfxStdIf_DPipe_GetTxTimeStamp)(IfxStdIf_InterfaceDriver driver);







typedef sint32 (*IfxStdIf_DPipe_GetWriteCount)(IfxStdIf_InterfaceDriver driver);







typedef IfxStdIf_DPipe_WriteEvent (*IfxStdIf_DPipe_GetWriteEvent)(IfxStdIf_InterfaceDriver driver);
# 146 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_CanReadCount)(IfxStdIf_InterfaceDriver driver, Ifx_SizeT count, Ifx_TickTime timeout);
# 157 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_CanWriteCount)(IfxStdIf_InterfaceDriver driver, Ifx_SizeT count, Ifx_TickTime timeout);
# 166 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_FlushTx)(IfxStdIf_InterfaceDriver driver, Ifx_TickTime timeout);






typedef void (*IfxStdIf_DPipe_ClearRx)(IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_ClearTx)(IfxStdIf_InterfaceDriver driver);







typedef void (*IfxStdIf_DPipe_OnReceive)(IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_OnTransmit)(IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_OnError)(IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_ResetSendCount)(IfxStdIf_InterfaceDriver driver);



struct IfxStdIf_DPipe_
{
    IfxStdIf_InterfaceDriver driver;
    boolean txDisabled;


    IfxStdIf_DPipe_Write write;
    IfxStdIf_DPipe_Read read;
    IfxStdIf_DPipe_GetReadCount getReadCount;
    IfxStdIf_DPipe_GetReadEvent getReadEvent;
    IfxStdIf_DPipe_GetWriteCount getWriteCount;
    IfxStdIf_DPipe_GetWriteEvent getWriteEvent;
    IfxStdIf_DPipe_CanReadCount canReadCount;
    IfxStdIf_DPipe_CanWriteCount canWriteCount;
    IfxStdIf_DPipe_FlushTx flushTx;
    IfxStdIf_DPipe_ClearTx clearTx;
    IfxStdIf_DPipe_ClearRx clearRx;
    IfxStdIf_DPipe_OnReceive onReceive;
    IfxStdIf_DPipe_OnTransmit onTransmit;
    IfxStdIf_DPipe_OnError onError;

    IfxStdIf_DPipe_GetSendCount getSendCount;
    IfxStdIf_DPipe_GetTxTimeStamp getTxTimeStamp;
    IfxStdIf_DPipe_ResetSendCount resetSendCount;
};




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_write(IfxStdIf_DPipe *stdif, void *data, Ifx_SizeT *count, Ifx_TickTime timeout)
{
    return stdif->write(stdif->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_read(IfxStdIf_DPipe *stdif, void *data, Ifx_SizeT *count, Ifx_TickTime timeout)
{
    return stdif->read(stdif->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getReadCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getReadCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getWriteCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getWriteCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_canReadCount(IfxStdIf_DPipe *stdif, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdif->canReadCount(stdif->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_canWriteCount(IfxStdIf_DPipe *stdif, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdif->canWriteCount(stdif->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_ReadEvent IfxStdIf_DPipe_getReadEvent(IfxStdIf_DPipe *stdif)
{
    return stdif->getReadEvent(stdif->driver);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_WriteEvent IfxStdIf_DPipe_getWriteEvent(IfxStdIf_DPipe *stdif)
{
    return stdif->getWriteEvent(stdif->driver);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_flushTx(IfxStdIf_DPipe *stdif, Ifx_TickTime timeout)
{
    return stdif->flushTx(stdif->driver, timeout);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearTx(IfxStdIf_DPipe *stdif)
{
    stdif->clearTx(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearRx(IfxStdIf_DPipe *stdif)
{
    stdif->clearRx(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onReceive(IfxStdIf_DPipe *stdif)
{
    stdif->onReceive(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onTransmit(IfxStdIf_DPipe *stdif)
{
    stdif->onTransmit(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onError(IfxStdIf_DPipe *stdif)
{
    stdif->onError(stdif->driver);
}




static inline __attribute__ ((always_inline)) uint32 IfxStdIf_DPipe_getSendCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getSendCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) Ifx_TickTime IfxStdIf_DPipe_getTxTimeStamp(IfxStdIf_DPipe *stdif)
{
    return stdif->getTxTimeStamp(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_resetSendCount(IfxStdIf_DPipe *stdif)
{
    stdif->resetSendCount(stdif->driver);
}


extern void IfxStdIf_DPipe_print(IfxStdIf_DPipe *stdif, pchar format, ...);
# 225 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2







typedef struct
{
    uint8 parityError : 1;
    uint8 frameError : 1;
    uint8 rxFifoOverflow : 1;
    uint8 rxFifoUnderflow : 1;
    uint8 txFifoOverflow : 1;
} IfxAsclin_Asc_ErrorFlags;





typedef struct
{
    float32 baudrate;
    uint16 prescaler;
    IfxAsclin_OversamplingFactor oversampling;
} IfxAsclin_Asc_BaudRate;



typedef struct
{
    IfxAsclin_SamplesPerBit medianFilter;
    IfxAsclin_SamplePointPosition samplePointPosition;
} IfxAsclin_Asc_BitTimingControl;



typedef struct
{
    IfxAsclin_TxFifoInletWidth inWidth;
    IfxAsclin_RxFifoOutletWidth outWidth;
    IfxAsclin_TxFifoInterruptLevel txFifoInterruptLevel;
    IfxAsclin_RxFifoInterruptLevel rxFifoInterruptLevel;
    IfxAsclin_ReceiveBufferMode buffMode;
} IfxAsclin_Asc_FifoControl;



typedef struct
{
    IfxAsclin_IdleDelay idleDelay;
    IfxAsclin_StopBit stopBit;
    IfxAsclin_FrameMode frameMode;
    IfxAsclin_ShiftDirection shiftDir;
    IfxAsclin_ParityType parityType;
    IfxAsclin_DataLength dataLength;
    boolean parityBit;
} IfxAsclin_Asc_FrameControl;



typedef struct
{
    uint16 txPriority;
    uint16 rxPriority;
    uint16 erPriority;
    IfxSrc_Tos typeOfService;
} IfxAsclin_Asc_InterruptConfig;



typedef struct
{
    const IfxAsclin_Cts_In *cts;
    IfxPort_InputMode ctsMode;
    const IfxAsclin_Rx_In *rx;
    IfxPort_InputMode rxMode;
    const IfxAsclin_Rts_Out *rts;
    IfxPort_OutputMode rtsMode;
    const IfxAsclin_Tx_Out *tx;
    IfxPort_OutputMode txMode;
    IfxPort_PadDriver pinDriver;
} IfxAsclin_Asc_Pins;





typedef union
{
    uint8 ALL;
    IfxAsclin_Asc_ErrorFlags flags;
} IfxAsclin_Asc_ErrorFlagsUnion;





typedef struct
{
    Ifx_ASCLIN *asclin;
    Ifx_Fifo *tx;
    Ifx_Fifo *rx;
    volatile boolean txInProgress;
    volatile boolean rxSwFifoOverflow;
    IfxAsclin_Asc_ErrorFlagsUnion errorFlags;
    Ifx_DataBufferMode dataBufferMode;
    volatile uint32 sendCount;
    volatile Ifx_TickTime txTimestamp;
} IfxAsclin_Asc;



typedef struct
{
    Ifx_ASCLIN *asclin;
    IfxAsclin_Asc_BaudRate baudrate;
    IfxAsclin_Asc_BitTimingControl bitTiming;
    IfxAsclin_Asc_FrameControl frame;
    IfxAsclin_Asc_FifoControl fifo;
    IfxAsclin_Asc_InterruptConfig interrupt;
    const IfxAsclin_Asc_Pins *pins;
    IfxAsclin_ClockSource clockSource;
    IfxAsclin_Asc_ErrorFlagsUnion errorFlags;
    Ifx_SizeT txBufferSize;
    void *txBuffer;




    Ifx_SizeT rxBufferSize;
    void *rxBuffer;




    boolean loopBack;
    Ifx_DataBufferMode dataBufferMode;
} IfxAsclin_Asc_Config;
# 382 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern void IfxAsclin_Asc_isrError(IfxAsclin_Asc *asclin);






extern void IfxAsclin_Asc_isrReceive(IfxAsclin_Asc *asclin);






extern void IfxAsclin_Asc_isrTransmit(IfxAsclin_Asc *asclin);
# 414 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern uint8 IfxAsclin_Asc_blockingRead(IfxAsclin_Asc *asclin);
# 424 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern boolean IfxAsclin_Asc_blockingWrite(IfxAsclin_Asc *asclin, uint8 data);
# 441 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern boolean IfxAsclin_Asc_canReadCount(IfxAsclin_Asc *asclin, Ifx_SizeT count, Ifx_TickTime timeout);







extern boolean IfxAsclin_Asc_canWriteCount(IfxAsclin_Asc *asclin, Ifx_SizeT count, Ifx_TickTime timeout);





extern void IfxAsclin_Asc_clearRx(IfxAsclin_Asc *asclin);





extern void IfxAsclin_Asc_clearTx(IfxAsclin_Asc *asclin);






extern boolean IfxAsclin_Asc_flushTx(IfxAsclin_Asc *asclin, Ifx_TickTime timeout);





extern sint32 IfxAsclin_Asc_getReadCount(IfxAsclin_Asc *asclin);





extern IfxStdIf_DPipe_ReadEvent IfxAsclin_Asc_getReadEvent(IfxAsclin_Asc *asclin);





extern uint32 IfxAsclin_Asc_getSendCount(IfxAsclin_Asc *asclin);





extern Ifx_TickTime IfxAsclin_Asc_getTxTimeStamp(IfxAsclin_Asc *asclin);





extern sint32 IfxAsclin_Asc_getWriteCount(IfxAsclin_Asc *asclin);





extern IfxStdIf_DPipe_WriteEvent IfxAsclin_Asc_getWriteEvent(IfxAsclin_Asc *asclin);
# 517 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern boolean IfxAsclin_Asc_read(IfxAsclin_Asc *asclin, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);





extern void IfxAsclin_Asc_resetSendCount(IfxAsclin_Asc *asclin);
# 536 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern boolean IfxAsclin_Asc_write(IfxAsclin_Asc *asclin, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);
# 551 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern void IfxAsclin_Asc_disableModule(IfxAsclin_Asc *asclin);
# 561 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern IfxAsclin_Status IfxAsclin_Asc_initModule(IfxAsclin_Asc *asclin, const IfxAsclin_Asc_Config *config);
# 571 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern void IfxAsclin_Asc_initModuleConfig(IfxAsclin_Asc_Config *config, Ifx_ASCLIN *asclin);
# 586 "0_Src/BaseSw/iLLD/TC29B/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern void IfxAsclin_Asc_initiateTransmission(IfxAsclin_Asc *asclin);






extern boolean IfxAsclin_Asc_stdIfDPipeInit(IfxStdIf_DPipe *stdif, IfxAsclin_Asc *asclin);
# 6 "0_Src/AppSw/Tricore/Serial/serial.h" 2
# 1 "0_Src/AppSw/CpuGeneric/Config/Config_ISR.h" 1
# 7 "0_Src/AppSw/Tricore/Serial/serial.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Irq/IfxCpu_Irq.h" 1
# 84 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Irq/IfxCpu_Irq.h"
static inline __attribute__ ((always_inline)) IfxSrc_Tos IfxCpu_Irq_getTos(IfxCpu_ResourceCpu coreId)
{
    return (IfxSrc_Tos)coreId;
}
# 8 "0_Src/AppSw/Tricore/Serial/serial.h" 2
# 1 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 1
# 11 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/Ifx_Types.h" 1
# 12 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h" 1
# 13 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h" 1
# 14 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2


# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Io/IfxPort_Io.h" 1
# 159 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Io/IfxPort_Io.h"
typedef struct
{
    const IfxPort_Pin *pin;
    IfxPort_Mode mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Io_ConfigPin;





typedef struct
{
    uint32 size;
    IfxPort_Io_ConfigPin *pinTable;
} IfxPort_Io_Config;
# 188 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Io/IfxPort_Io.h"
extern void IfxPort_Io_initModule(const IfxPort_Io_Config *config);
# 17 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg\\IfxPort_regdef.h" 1
# 18 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Src/std/IfxSrc.h" 1
# 19 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2


# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuEru.h" 1
# 62 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuEru.h"
typedef enum
{
    IfxScuEru_ExternalInputSelection_0 = 0,
    IfxScuEru_ExternalInputSelection_1,
    IfxScuEru_ExternalInputSelection_2,
    IfxScuEru_ExternalInputSelection_3
} IfxScuEru_ExternalInputSelection;



typedef enum
{
    IfxScuEru_InputChannel_0 = 0,
    IfxScuEru_InputChannel_1,
    IfxScuEru_InputChannel_2,
    IfxScuEru_InputChannel_3,
    IfxScuEru_InputChannel_4,
    IfxScuEru_InputChannel_5,
    IfxScuEru_InputChannel_6,
    IfxScuEru_InputChannel_7
} IfxScuEru_InputChannel;




typedef enum
{
    IfxScuEru_InputNodePointer_0 = 0,
    IfxScuEru_InputNodePointer_1,
    IfxScuEru_InputNodePointer_2,
    IfxScuEru_InputNodePointer_3,
    IfxScuEru_InputNodePointer_4,
    IfxScuEru_InputNodePointer_5,
    IfxScuEru_InputNodePointer_6,
    IfxScuEru_InputNodePointer_7
} IfxScuEru_InputNodePointer;




typedef enum
{
    IfxScuEru_InterruptGatingPattern_none = 0,
    IfxScuEru_InterruptGatingPattern_alwaysActive = 1,
    IfxScuEru_InterruptGatingPattern_patternMatch = 2,
    IfxScuEru_InterruptGatingPattern_patternMiss = 3
} IfxScuEru_InterruptGatingPattern;



typedef enum
{
    IfxScuEru_OutputChannel_0 = 0,
    IfxScuEru_OutputChannel_1,
    IfxScuEru_OutputChannel_2,
    IfxScuEru_OutputChannel_3,
    IfxScuEru_OutputChannel_4,
    IfxScuEru_OutputChannel_5,
    IfxScuEru_OutputChannel_6,
    IfxScuEru_OutputChannel_7
} IfxScuEru_OutputChannel;
# 138 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuEru.h"
static inline __attribute__ ((always_inline)) void IfxScuEru_initReqPin(IfxScu_Req_In *req, IfxPort_InputMode inputMode);
# 149 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuEru.h"
extern void IfxScuEru_selectExternalInput(IfxScuEru_InputChannel inputChannel, IfxScuEru_ExternalInputSelection inputSignal);
# 163 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuEru.h"
extern void IfxScuEru_clearAllEventFlags(void);





extern void IfxScuEru_clearEventFlag(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_clearInputChannelConfiguration(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_disableAutoClear(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_disableFallingEdgeDetection(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_disableRisingEdgeDetection(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_enableAutoClear(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_enableFallingEdgeDetection(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_enableRisingEdgeDetection(IfxScuEru_InputChannel inputChannel);




extern uint32 IfxScuEru_getAllEventFlagsStatus(void);





extern boolean IfxScuEru_getEventFlagStatus(IfxScuEru_InputChannel inputChannel);





extern uint32 IfxScuEru_getInputChannelConfiguration(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_setEventFlag(IfxScuEru_InputChannel inputChannel);
# 250 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuEru.h"
extern void IfxScuEru_connectTrigger(IfxScuEru_InputChannel inputChannel, IfxScuEru_InputNodePointer triggerSelect);





extern void IfxScuEru_disableTriggerPulse(IfxScuEru_InputChannel inputChannel);





extern void IfxScuEru_enableTriggerPulse(IfxScuEru_InputChannel inputChannel);
# 271 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuEru.h"
extern void IfxScuEru_setFlagPatternDetection(IfxScuEru_OutputChannel outputChannel, IfxScuEru_InputChannel inputChannel, boolean state);
# 286 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuEru.h"
extern void IfxScuEru_clearOutputChannelConfiguration(IfxScuEru_OutputChannel outputChannel);





extern void IfxScuEru_disablePatternDetectionTrigger(IfxScuEru_OutputChannel outputChannel);





extern void IfxScuEru_enablePatternDetectionTrigger(IfxScuEru_OutputChannel outputChannel);





extern uint32 IfxScuEru_getOutputChannelConfiguration(IfxScuEru_OutputChannel outputChannel);





extern boolean IfxScuEru_getPatternDetectionResult(IfxScuEru_OutputChannel outputChannel);




extern uint32 IfxScuEru_getWholePatternDetectionResult(void);






extern void IfxScuEru_setInterruptGatingPattern(IfxScuEru_OutputChannel outputChannel, IfxScuEru_InterruptGatingPattern gatingPattern);







static inline __attribute__ ((always_inline)) void IfxScuEru_initReqPin(IfxScu_Req_In *req, IfxPort_InputMode inputMode)
{
    IfxPort_setPinModeInput(req->pin.port, req->pin.pinIndex, inputMode);
    IfxScuEru_selectExternalInput((IfxScuEru_InputChannel)req->channelId, (IfxScuEru_ExternalInputSelection)req->select);
}
# 22 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Stm/Std/IfxStm.h" 1
# 23 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2
# 1 "0_Src/AppSw/Tricore/Motors/Motors.h" 1
# 12 "0_Src/AppSw/Tricore/Motors/Motors.h"
# 1 "0_Src/AppSw/Tricore/Encoders/encoders_config.h" 1
# 18 "0_Src/AppSw/Tricore/Encoders/encoders_config.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxSrc_regdef.h" 1
# 19 "0_Src/AppSw/Tricore/Encoders/encoders_config.h" 2

# 1 "0_Src/AppSw/CpuGeneric/Config/Config_ISR.h" 1
# 21 "0_Src/AppSw/Tricore/Encoders/encoders_config.h" 2


void Encoders_config();
void ISR_ENCODER_L();
void ISR_ENCODER_R();
# 13 "0_Src/AppSw/Tricore/Motors/Motors.h" 2

# 1 "0_Src/AppSw/Tricore/PWM/PWM_config.h" 1
# 13 "0_Src/AppSw/Tricore/PWM/PWM_config.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h" 1
# 106 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxGtm_PinMap.h" 1
# 31 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxGtm_PinMap.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_regdef.h" 1
# 49 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_regdef.h"
typedef struct _Ifx_GTM_ACCEN0_Bits
{
    volatile unsigned int EN0:1;
    volatile unsigned int EN1:1;
    volatile unsigned int EN2:1;
    volatile unsigned int EN3:1;
    volatile unsigned int EN4:1;
    volatile unsigned int EN5:1;
    volatile unsigned int EN6:1;
    volatile unsigned int EN7:1;
    volatile unsigned int EN8:1;
    volatile unsigned int EN9:1;
    volatile unsigned int EN10:1;
    volatile unsigned int EN11:1;
    volatile unsigned int EN12:1;
    volatile unsigned int EN13:1;
    volatile unsigned int EN14:1;
    volatile unsigned int EN15:1;
    volatile unsigned int EN16:1;
    volatile unsigned int EN17:1;
    volatile unsigned int EN18:1;
    volatile unsigned int EN19:1;
    volatile unsigned int EN20:1;
    volatile unsigned int EN21:1;
    volatile unsigned int EN22:1;
    volatile unsigned int EN23:1;
    volatile unsigned int EN24:1;
    volatile unsigned int EN25:1;
    volatile unsigned int EN26:1;
    volatile unsigned int EN27:1;
    volatile unsigned int EN28:1;
    volatile unsigned int EN29:1;
    volatile unsigned int EN30:1;
    volatile unsigned int EN31:1;
} Ifx_GTM_ACCEN0_Bits;


typedef struct _Ifx_GTM_ACCEN1_Bits
{
    volatile unsigned int reserved_0:32;
} Ifx_GTM_ACCEN1_Bits;


typedef struct _Ifx_GTM_ADCTRIG0OUT0_Bits
{
    volatile unsigned int SEL0:4;
    volatile unsigned int SEL1:4;
    volatile unsigned int SEL2:4;
    volatile unsigned int SEL3:4;
    volatile unsigned int SEL4:4;
    volatile unsigned int SEL5:4;
    volatile unsigned int SEL6:4;
    volatile unsigned int SEL7:4;
} Ifx_GTM_ADCTRIG0OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG0OUT1_Bits
{
    volatile unsigned int SEL0:4;
    volatile unsigned int SEL1:4;
    volatile unsigned int SEL2:4;
    volatile unsigned int SEL3:4;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ADCTRIG0OUT1_Bits;


typedef struct _Ifx_GTM_ADCTRIG1OUT0_Bits
{
    volatile unsigned int SEL0:4;
    volatile unsigned int SEL1:4;
    volatile unsigned int SEL2:4;
    volatile unsigned int SEL3:4;
    volatile unsigned int SEL4:4;
    volatile unsigned int SEL5:4;
    volatile unsigned int SEL6:4;
    volatile unsigned int SEL7:4;
} Ifx_GTM_ADCTRIG1OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG1OUT1_Bits
{
    volatile unsigned int SEL0:4;
    volatile unsigned int SEL1:4;
    volatile unsigned int SEL2:4;
    volatile unsigned int SEL3:4;
    volatile unsigned int SEL4:4;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_ADCTRIG1OUT1_Bits;


typedef struct _Ifx_GTM_AEI_ADDR_XPT_Bits
{
    volatile unsigned int TO_ADDR:20;
    volatile unsigned int TO_W1R0:1;
    volatile unsigned int reserved_21:11;
} Ifx_GTM_AEI_ADDR_XPT_Bits;


typedef struct _Ifx_GTM_AFD_CH_BUF_ACC_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_AFD_CH_BUF_ACC_Bits;


typedef struct _Ifx_GTM_ARU_ARU_ACCESS_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int RREQ:1;
    volatile unsigned int WREQ:1;
    volatile unsigned int reserved_14:18;
} Ifx_GTM_ARU_ARU_ACCESS_Bits;


typedef struct _Ifx_GTM_ARU_DATA_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DATA_H_Bits;


typedef struct _Ifx_GTM_ARU_DATA_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DATA_L_Bits;


typedef struct _Ifx_GTM_ARU_DBG_ACCESS0_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_ARU_DBG_ACCESS0_Bits;


typedef struct _Ifx_GTM_ARU_DBG_ACCESS1_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_ARU_DBG_ACCESS1_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA0_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA0_H_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA0_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA0_L_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA1_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA1_H_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA1_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA1_L_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_EN_Bits
{
    volatile unsigned int NEW_DATA0_IRQ_EN:1;
    volatile unsigned int NEW_DATA1_IRQ_EN:1;
    volatile unsigned int ACC_ACK_IRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_EN_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEW_DATA0:1;
    volatile unsigned int TRG_NEW_DATA:1;
    volatile unsigned int TRG_ACC_ACK:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ARU_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEW_DATA0:1;
    volatile unsigned int NEW_DATA1:1;
    volatile unsigned int ACC_ACK:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ACT_TB_Bits
{
    volatile unsigned int ACT_TB:24;
    volatile unsigned int TB_TRIG:1;
    volatile unsigned int TBU_SEL:2;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_ATOM_AGC_ACT_TB_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0:2;
    volatile unsigned int ENDIS_STAT1:2;
    volatile unsigned int ENDIS_STAT2:2;
    volatile unsigned int ENDIS_STAT3:2;
    volatile unsigned int ENDIS_STAT4:2;
    volatile unsigned int ENDIS_STAT5:2;
    volatile unsigned int ENDIS_STAT6:2;
    volatile unsigned int ENDIS_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0:2;
    volatile unsigned int FUPD_CTRL1:2;
    volatile unsigned int FUPD_CTRL2:2;
    volatile unsigned int FUPD_CTRL3:2;
    volatile unsigned int FUPD_CTRL4:2;
    volatile unsigned int FUPD_CTRL5:2;
    volatile unsigned int FUPD_CTRL6:2;
    volatile unsigned int FUPD_CTRL7:2;
    volatile unsigned int RSTCN0_CH0:2;
    volatile unsigned int RSTCN0_CH1:2;
    volatile unsigned int RSTCN0_CH2:2;
    volatile unsigned int RSTCN0_CH3:2;
    volatile unsigned int RSTCN0_CH4:2;
    volatile unsigned int RSTCN0_CH5:2;
    volatile unsigned int RSTCN0_CH6:2;
    volatile unsigned int RSTCN0_CH7:2;
} Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int UPEN_CTRL0:2;
    volatile unsigned int UPEN_CTRL1:2;
    volatile unsigned int UPEN_CTRL2:2;
    volatile unsigned int UPEN_CTRL3:2;
    volatile unsigned int UPEN_CTRL4:2;
    volatile unsigned int UPEN_CTRL5:2;
    volatile unsigned int UPEN_CTRL6:2;
    volatile unsigned int UPEN_CTRL7:2;
} Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0:2;
    volatile unsigned int INT_TRIG1:2;
    volatile unsigned int INT_TRIG2:2;
    volatile unsigned int INT_TRIG3:2;
    volatile unsigned int INT_TRIG4:2;
    volatile unsigned int INT_TRIG5:2;
    volatile unsigned int INT_TRIG6:2;
    volatile unsigned int INT_TRIG7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_INT_TRIG_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0:2;
    volatile unsigned int OUTEN_CTRL1:2;
    volatile unsigned int OUTEN_CTRL2:2;
    volatile unsigned int OUTEN_CTRL3:2;
    volatile unsigned int OUTEN_CTRL4:2;
    volatile unsigned int OUTEN_CTRL5:2;
    volatile unsigned int OUTEN_CTRL6:2;
    volatile unsigned int OUTEN_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0:2;
    volatile unsigned int OUTEN_STAT1:2;
    volatile unsigned int OUTEN_STAT2:2;
    volatile unsigned int OUTEN_STAT3:2;
    volatile unsigned int OUTEN_STAT4:2;
    volatile unsigned int OUTEN_STAT5:2;
    volatile unsigned int OUTEN_STAT6:2;
    volatile unsigned int OUTEN_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CM0_Bits
{
    volatile unsigned int CM0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CM1_Bits
{
    volatile unsigned int CM1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CN0_Bits
{
    volatile unsigned int CN0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CTRL_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int TB12_SEL:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB:5;
    volatile unsigned int CMP_CTRL:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int WR_REQ:1;
    volatile unsigned int reserved_17:3;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int SLA:1;
    volatile unsigned int OSM:1;
    volatile unsigned int ABM:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_ATOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN:1;
    volatile unsigned int CCU1TC_IRQ_EN:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC:1;
    volatile unsigned int TRG_CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC:1;
    volatile unsigned int CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_ATOM_CH_RDADDR_Bits
{
    volatile unsigned int RDADDR0:9;
    volatile unsigned int reserved_9:7;
    volatile unsigned int RDADDR1:9;
    volatile unsigned int reserved_25:7;
} Ifx_GTM_ATOM_CH_RDADDR_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMC_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int TB12_SEL:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB10:2;
    volatile unsigned int ACB42:3;
    volatile unsigned int CMP_CTRL:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int SL:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int WR_REQ:1;
    volatile unsigned int reserved_17:7;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int SLA:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int ABM:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_ATOM_CH_SOMC_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMI_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB0:1;
    volatile unsigned int reserved_5:6;
    volatile unsigned int SL:1;
    volatile unsigned int reserved_12:20;
} Ifx_GTM_ATOM_CH_SOMI_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMP_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ADL:2;
    volatile unsigned int reserved_6:5;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int reserved_15:5;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int OSM:1;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_ATOM_CH_SOMP_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMS_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB0:1;
    volatile unsigned int reserved_5:6;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC:3;
    volatile unsigned int reserved_15:11;
    volatile unsigned int OSM:1;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_ATOM_CH_SOMS_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SR0_Bits
{
    volatile unsigned int SR0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SR1_Bits
{
    volatile unsigned int SR1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_ATOM_CH_STAT_Bits
{
    volatile unsigned int OL:1;
    volatile unsigned int reserved_1:15;
    volatile unsigned int ACBI:5;
    volatile unsigned int DV:1;
    volatile unsigned int WRF:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int ACBO:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ATOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_BRC_EIRQ_EN_Bits
{
    volatile unsigned int DEST_ERR_EN:1;
    volatile unsigned int DID_EN0:1;
    volatile unsigned int DID_EN1:1;
    volatile unsigned int DID_EN2:1;
    volatile unsigned int DID_EN3:1;
    volatile unsigned int DID_EN4:1;
    volatile unsigned int DID_EN5:1;
    volatile unsigned int DID_EN6:1;
    volatile unsigned int DID_EN7:1;
    volatile unsigned int DID_EN8:1;
    volatile unsigned int DID_EN9:1;
    volatile unsigned int DID_EN10:1;
    volatile unsigned int DID_EN11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_EN_Bits
{
    volatile unsigned int DEST_ERR_EN:1;
    volatile unsigned int DID_EN0:1;
    volatile unsigned int DID_EN1:1;
    volatile unsigned int DID_EN2:1;
    volatile unsigned int DID_EN3:1;
    volatile unsigned int DID_EN4:1;
    volatile unsigned int DID_EN5:1;
    volatile unsigned int DID_EN6:1;
    volatile unsigned int DID_EN7:1;
    volatile unsigned int DID_EN8:1;
    volatile unsigned int DID_EN9:1;
    volatile unsigned int DID_EN10:1;
    volatile unsigned int DID_EN11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_EN_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_DEST_ERR:1;
    volatile unsigned int TRG_DID0:1;
    volatile unsigned int TRG_DID1:1;
    volatile unsigned int TRG_DID2:1;
    volatile unsigned int TRG_DID3:1;
    volatile unsigned int TRG_DID4:1;
    volatile unsigned int TRG_DID5:1;
    volatile unsigned int TRG_DID6:1;
    volatile unsigned int TRG_DID7:1;
    volatile unsigned int TRG_DID8:1;
    volatile unsigned int TRG_DID9:1;
    volatile unsigned int TRG_DID10:1;
    volatile unsigned int TRG_DID11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_BRC_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_NOTIFY_Bits
{
    volatile unsigned int DEST_ERR:1;
    volatile unsigned int DID0:1;
    volatile unsigned int DID1:1;
    volatile unsigned int DID2:1;
    volatile unsigned int DID3:1;
    volatile unsigned int DID4:1;
    volatile unsigned int DID5:1;
    volatile unsigned int DID6:1;
    volatile unsigned int DID7:1;
    volatile unsigned int DID8:1;
    volatile unsigned int DID9:1;
    volatile unsigned int DID10:1;
    volatile unsigned int DID11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_BRC_RST_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_BRC_RST_Bits;


typedef struct _Ifx_GTM_BRC_SRC0_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC0_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC0_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC0_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC10_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC10_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC10_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC10_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC11_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC11_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC11_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC11_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC1_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC1_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC1_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC1_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC2_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC2_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC2_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC2_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC3_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC3_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC3_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC3_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC4_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC4_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC4_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC4_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC5_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC5_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC5_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC5_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC6_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC6_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC6_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC6_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC7_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC7_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC7_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC7_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC8_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC8_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC8_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC8_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC9_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC9_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC9_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC9_DEST_Bits;


typedef struct _Ifx_GTM_BRIDGE_MODE_Bits
{
    volatile unsigned int BRG_MODE:1;
    volatile unsigned int MSK_WR_RSP:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int MODE_UP_PGR:1;
    volatile unsigned int BUFF_OVL:1;
    volatile unsigned int reserved_10:2;
    volatile unsigned int SYNC_INPUT_REG:1;
    volatile unsigned int reserved_13:3;
    volatile unsigned int BRG_RST:1;
    volatile unsigned int reserved_17:7;
    volatile unsigned int BUFF_DPT:8;
} Ifx_GTM_BRIDGE_MODE_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR1_Bits
{
    volatile unsigned int NEW_TRAN_PTR:5;
    volatile unsigned int FIRST_RSP_PTR:5;
    volatile unsigned int TRAN_IN_PGR:5;
    volatile unsigned int ABT_TRAN_PGR:5;
    volatile unsigned int FBC:6;
    volatile unsigned int RSP_TRAN_RDY:6;
} Ifx_GTM_BRIDGE_PTR1_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR2_Bits
{
    volatile unsigned int TRAN_IN_PGR2:5;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_BRIDGE_PTR2_Bits;


typedef struct _Ifx_GTM_CLC_Bits
{
    volatile unsigned int DISR:1;
    volatile unsigned int DISS:1;
    volatile unsigned int reserved_2:1;
    volatile unsigned int EDIS:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_CLC_Bits;


typedef struct _Ifx_GTM_CMP_EIRQ_EN_Bits
{
    volatile unsigned int ABWC0_EN_EIRQ:1;
    volatile unsigned int ABWC1_EN_EIRQ:1;
    volatile unsigned int ABWC2_EN_EIRQ:1;
    volatile unsigned int ABWC3_EN_EIRQ:1;
    volatile unsigned int ABWC4_EN_EIRQ:1;
    volatile unsigned int ABWC5_EN_EIRQ:1;
    volatile unsigned int ABWC6_EN_EIRQ:1;
    volatile unsigned int ABWC7_EN_EIRQ:1;
    volatile unsigned int ABWC8_EN_EIRQ:1;
    volatile unsigned int ABWC9_EN_EIRQ:1;
    volatile unsigned int ABWC10_EN_EIRQ:1;
    volatile unsigned int ABWC11_EN_EIRQ:1;
    volatile unsigned int TBWC0_EN_EIRQ:1;
    volatile unsigned int TBWC1_EN_EIRQ:1;
    volatile unsigned int TBWC2_EN_EIRQ:1;
    volatile unsigned int TBWC3_EN_EIRQ:1;
    volatile unsigned int TBWC4_EN_EIRQ:1;
    volatile unsigned int TBWC5_EN_EIRQ:1;
    volatile unsigned int TBWC6_EN_EIRQ:1;
    volatile unsigned int TBWC7_EN_EIRQ:1;
    volatile unsigned int TBWC8_EN_EIRQ:1;
    volatile unsigned int TBWC9_EN_EIRQ:1;
    volatile unsigned int TBWC10_EN_EIRQ:1;
    volatile unsigned int TBWC11_EN_EIRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_CMP_EN_Bits
{
    volatile unsigned int ABWC0_EN:1;
    volatile unsigned int ABWC1_EN:1;
    volatile unsigned int ABWC2_EN:1;
    volatile unsigned int ABWC3_EN:1;
    volatile unsigned int ABWC4_EN:1;
    volatile unsigned int ABWC5_EN:1;
    volatile unsigned int ABWC6_EN:1;
    volatile unsigned int ABWC7_EN:1;
    volatile unsigned int ABWC8_EN:1;
    volatile unsigned int ABWC9_EN:1;
    volatile unsigned int ABWC10_EN:1;
    volatile unsigned int ABWC11_EN:1;
    volatile unsigned int TBWC0_EN:1;
    volatile unsigned int TBWC1_EN:1;
    volatile unsigned int TBWC2_EN:1;
    volatile unsigned int TBWC3_EN:1;
    volatile unsigned int TBWC4_EN:1;
    volatile unsigned int TBWC5_EN:1;
    volatile unsigned int TBWC6_EN:1;
    volatile unsigned int TBWC7_EN:1;
    volatile unsigned int TBWC8_EN:1;
    volatile unsigned int TBWC9_EN:1;
    volatile unsigned int TBWC10_EN:1;
    volatile unsigned int TBWC11_EN:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_EN_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_EN_Bits
{
    volatile unsigned int ABWC0_EN_IRQ:1;
    volatile unsigned int ABWC1_EN_IRQ:1;
    volatile unsigned int ABWC2_EN_IRQ:1;
    volatile unsigned int ABWC3_EN_IRQ:1;
    volatile unsigned int ABWC4_EN_IRQ:1;
    volatile unsigned int ABWC5_EN_IRQ:1;
    volatile unsigned int ABWC6_EN_IRQ:1;
    volatile unsigned int ABWC7_EN_IRQ:1;
    volatile unsigned int ABWC8_EN_IRQ:1;
    volatile unsigned int ABWC9_EN_IRQ:1;
    volatile unsigned int ABWC10_EN_IRQ:1;
    volatile unsigned int ABWC11_EN_IRQ:1;
    volatile unsigned int TBWC0_EN_IRQ:1;
    volatile unsigned int TBWC1_EN_IRQ:1;
    volatile unsigned int TBWC2_EN_IRQ:1;
    volatile unsigned int TBWC3_EN_IRQ:1;
    volatile unsigned int TBWC4_EN_IRQ:1;
    volatile unsigned int TBWC5_EN_IRQ:1;
    volatile unsigned int TBWC6_EN_IRQ:1;
    volatile unsigned int TBWC7_EN_IRQ:1;
    volatile unsigned int TBWC8_EN_IRQ:1;
    volatile unsigned int TBWC9_EN_IRQ:1;
    volatile unsigned int TBWC10_EN_IRQ:1;
    volatile unsigned int TBWC11_EN_IRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_EN_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_ABWC0:1;
    volatile unsigned int TRG_ABWC1:1;
    volatile unsigned int TRG_ABWC2:1;
    volatile unsigned int TRG_ABWC3:1;
    volatile unsigned int TRG_ABWC4:1;
    volatile unsigned int TRG_ABWC5:1;
    volatile unsigned int TRG_ABWC6:1;
    volatile unsigned int TRG_ABWC7:1;
    volatile unsigned int TRG_ABWC8:1;
    volatile unsigned int TRG_ABWC9:1;
    volatile unsigned int TRG_ABWC10:1;
    volatile unsigned int TRG_ABWC11:1;
    volatile unsigned int TRG_TBWC0:1;
    volatile unsigned int TRG_TBWC1:1;
    volatile unsigned int TRG_TBWC2:1;
    volatile unsigned int TRG_TBWC3:1;
    volatile unsigned int TRG_TBWC4:1;
    volatile unsigned int TRG_TBWC5:1;
    volatile unsigned int TRG_TBWC6:1;
    volatile unsigned int TRG_TBWC7:1;
    volatile unsigned int TRG_TBWC8:1;
    volatile unsigned int TRG_TBWC9:1;
    volatile unsigned int TRG_TBWC10:1;
    volatile unsigned int TRG_TBWC11:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_CMP_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_NOTIFY_Bits
{
    volatile unsigned int ABWC0:1;
    volatile unsigned int ABWC1:1;
    volatile unsigned int ABWC2:1;
    volatile unsigned int ABWC3:1;
    volatile unsigned int ABWC4:1;
    volatile unsigned int ABWC5:1;
    volatile unsigned int ABWC6:1;
    volatile unsigned int ABWC7:1;
    volatile unsigned int ABWC8:1;
    volatile unsigned int ABWC9:1;
    volatile unsigned int ABWC10:1;
    volatile unsigned int ABWC11:1;
    volatile unsigned int TBWC0:1;
    volatile unsigned int TBWC1:1;
    volatile unsigned int TBWC2:1;
    volatile unsigned int TBWC3:1;
    volatile unsigned int TBWC4:1;
    volatile unsigned int TBWC5:1;
    volatile unsigned int TBWC6:1;
    volatile unsigned int TBWC7:1;
    volatile unsigned int TBWC8:1;
    volatile unsigned int TBWC9:1;
    volatile unsigned int TBWC10:1;
    volatile unsigned int TBWC11:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_CMU_CLK0_5_CTRL_Bits
{
    volatile unsigned int CLK_CNT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_CLK0_5_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_6_CTRL_Bits
{
    volatile unsigned int CLK_CNT:24;
    volatile unsigned int CLK6_SEL:1;
    volatile unsigned int reserved_25:7;
} Ifx_GTM_CMU_CLK_6_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_7_CTRL_Bits
{
    volatile unsigned int CLK_CNT:24;
    volatile unsigned int CLK7_SEL:1;
    volatile unsigned int reserved_25:7;
} Ifx_GTM_CMU_CLK_7_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_EN_Bits
{
    volatile unsigned int EN_CLK0:2;
    volatile unsigned int EN_CLK1:2;
    volatile unsigned int EN_CLK2:2;
    volatile unsigned int EN_CLK3:2;
    volatile unsigned int EN_CLK4:2;
    volatile unsigned int EN_CLK5:2;
    volatile unsigned int EN_CLK6:2;
    volatile unsigned int EN_CLK7:2;
    volatile unsigned int EN_ECLK0:2;
    volatile unsigned int EN_ECLK1:2;
    volatile unsigned int EN_ECLK2:2;
    volatile unsigned int EN_FXCLK:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_CLK_EN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_DEN_Bits
{
    volatile unsigned int ECLK_DEN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_ECLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_NUM_Bits
{
    volatile unsigned int ECLK_NUM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_ECLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_FXCLK_CTRL_Bits
{
    volatile unsigned int FXCLK_SEL:4;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_CMU_FXCLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_DEN_Bits
{
    volatile unsigned int GCLK_DEN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_GCLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_NUM_Bits
{
    volatile unsigned int GCLK_NUM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_GCLK_NUM_Bits;


typedef struct _Ifx_GTM_CTRL_Bits
{
    volatile unsigned int RF_PROT:1;
    volatile unsigned int TO_MODE:1;
    volatile unsigned int reserved_2:2;
    volatile unsigned int TO_VAL:5;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_CTRL_Bits;


typedef struct _Ifx_GTM_DATAIN_Bits
{
    volatile unsigned int DATA:32;
} Ifx_GTM_DATAIN_Bits;


typedef struct _Ifx_GTM_DPLL_ACB_Bits
{
    volatile unsigned int ACB_0:5;
    volatile unsigned int reserved_5:3;
    volatile unsigned int ACB_1:5;
    volatile unsigned int reserved_13:3;
    volatile unsigned int ACB_2:5;
    volatile unsigned int reserved_21:3;
    volatile unsigned int ACB_3:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_DPLL_ACB_Bits;


typedef struct _Ifx_GTM_DPLL_ACT_STA_Bits
{
    volatile unsigned int ACT_Ni:32;
} Ifx_GTM_DPLL_ACT_STA_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_CAL1_Bits
{
    volatile unsigned int ADD_IN_CAL_1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_CAL1_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_CAL2_Bits
{
    volatile unsigned int ADD_IN_CAL_2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_CAL2_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_LD1_Bits
{
    volatile unsigned int ADD_IN_LD_1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_LD1_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_LD2_Bits
{
    volatile unsigned int ADD_IN_LD_2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_LD2_Bits;


typedef struct _Ifx_GTM_DPLL_ADT_S_Bits
{
    volatile unsigned int PD_S:16;
    volatile unsigned int NS:6;
    volatile unsigned int reserved_22:10;
} Ifx_GTM_DPLL_ADT_S_Bits;


typedef struct _Ifx_GTM_DPLL_AOSV_2_Bits
{
    volatile unsigned int AOSV_2A:8;
    volatile unsigned int AOSV_2B:8;
    volatile unsigned int AOSV_2C:8;
    volatile unsigned int AOSV_2D:8;
} Ifx_GTM_DPLL_AOSV_2_Bits;


typedef struct _Ifx_GTM_DPLL_APS_1C3_Bits
{
    volatile unsigned int reserved_0:2;
    volatile unsigned int APS_1C3:6;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_DPLL_APS_1C3_Bits;


typedef struct _Ifx_GTM_DPLL_APS_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int WAPS:1;
    volatile unsigned int APS:6;
    volatile unsigned int reserved_8:5;
    volatile unsigned int WAPS_1C2:1;
    volatile unsigned int APS_1C2:6;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_APS_Bits;


typedef struct _Ifx_GTM_DPLL_APS_SYNC_Bits
{
    volatile unsigned int APS_1C2_EXT:6;
    volatile unsigned int APS_1C2_STATUS:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int APS_1C2_OLD:6;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_APS_SYNC_Bits;


typedef struct _Ifx_GTM_DPLL_APT_2C_Bits
{
    volatile unsigned int reserved_0:2;
    volatile unsigned int APT_2C:10;
    volatile unsigned int reserved_12:20;
} Ifx_GTM_DPLL_APT_2C_Bits;


typedef struct _Ifx_GTM_DPLL_APT_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int WAPT:1;
    volatile unsigned int APT:10;
    volatile unsigned int reserved_12:1;
    volatile unsigned int WAPT_2B:1;
    volatile unsigned int APT_2B:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_APT_Bits;


typedef struct _Ifx_GTM_DPLL_APT_SYNC_Bits
{
    volatile unsigned int APT_2B_EXT:6;
    volatile unsigned int APT_2B_STATUS:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int APT_2B_OLD:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_APT_SYNC_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_SX_Bits
{
    volatile unsigned int CDT_SX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_SX_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_SX_NOM_Bits
{
    volatile unsigned int CDT_SX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_SX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_TX_Bits
{
    volatile unsigned int CDT_TX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_TX_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_TX_NOM_Bits
{
    volatile unsigned int CDT_TX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_TX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_CNT_NUM1_Bits
{
    volatile unsigned int CNT_NUM_1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CNT_NUM1_Bits;


typedef struct _Ifx_GTM_DPLL_CNT_NUM2_Bits
{
    volatile unsigned int CNT_NUM_2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CNT_NUM2_Bits;


typedef struct _Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int reserved_1:2;
    volatile unsigned int COA:1;
    volatile unsigned int PIT:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int SGE2:1;
    volatile unsigned int DLM2:1;
    volatile unsigned int PCM2:1;
    volatile unsigned int SYN_NS:21;
} Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_Bits
{
    volatile unsigned int MLT:10;
    volatile unsigned int IFP:1;
    volatile unsigned int SNU:5;
    volatile unsigned int TNU:9;
    volatile unsigned int AMS:1;
    volatile unsigned int AMT:1;
    volatile unsigned int IDS:1;
    volatile unsigned int IDT:1;
    volatile unsigned int SEN:1;
    volatile unsigned int TEN:1;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits
{
    volatile unsigned int reserved_0:10;
    volatile unsigned int IFP:1;
    volatile unsigned int reserved_11:14;
    volatile unsigned int AMS:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int IDS:1;
    volatile unsigned int reserved_28:3;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits
{
    volatile unsigned int MLT:10;
    volatile unsigned int IFP:1;
    volatile unsigned int reserved_11:15;
    volatile unsigned int AMT:1;
    volatile unsigned int IDS:1;
    volatile unsigned int IDT:1;
    volatile unsigned int reserved_29:2;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int DEN:1;
    volatile unsigned int IDDS:1;
    volatile unsigned int COA:1;
    volatile unsigned int PIT:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int SGE2:1;
    volatile unsigned int DLM2:1;
    volatile unsigned int PCM2:1;
    volatile unsigned int SYN_NS:5;
    volatile unsigned int SYN_NT:5;
    volatile unsigned int reserved_21:1;
    volatile unsigned int LCD:1;
    volatile unsigned int SWR:1;
    volatile unsigned int SYSF:1;
    volatile unsigned int TS0_HRS:1;
    volatile unsigned int TS0_HRT:1;
    volatile unsigned int SMC:1;
    volatile unsigned int SSL:2;
    volatile unsigned int TSL:2;
} Ifx_GTM_DPLL_CTRL_1_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int reserved_1:2;
    volatile unsigned int COA:1;
    volatile unsigned int PIT:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_2_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN0:1;
    volatile unsigned int AEN1:1;
    volatile unsigned int AEN2:1;
    volatile unsigned int AEN3:1;
    volatile unsigned int AEN4:1;
    volatile unsigned int AEN5:1;
    volatile unsigned int AEN6:1;
    volatile unsigned int AEN7:1;
    volatile unsigned int WAD0:1;
    volatile unsigned int WAD1:1;
    volatile unsigned int WAD2:1;
    volatile unsigned int WAD3:1;
    volatile unsigned int WAD4:1;
    volatile unsigned int WAD5:1;
    volatile unsigned int WAD6:1;
    volatile unsigned int WAD7:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_2_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_3_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN8:1;
    volatile unsigned int AEN9:1;
    volatile unsigned int AEN10:1;
    volatile unsigned int AEN11:1;
    volatile unsigned int AEN12:1;
    volatile unsigned int AEN13:1;
    volatile unsigned int AEN14:1;
    volatile unsigned int AEN15:1;
    volatile unsigned int WAD8:1;
    volatile unsigned int WAD9:1;
    volatile unsigned int WAD10:1;
    volatile unsigned int WAD11:1;
    volatile unsigned int WAD12:1;
    volatile unsigned int WAD13:1;
    volatile unsigned int WAD14:1;
    volatile unsigned int WAD15:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_3_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_4_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN16:1;
    volatile unsigned int AEN17:1;
    volatile unsigned int AEN18:1;
    volatile unsigned int AEN19:1;
    volatile unsigned int AEN20:1;
    volatile unsigned int AEN21:1;
    volatile unsigned int AEN22:1;
    volatile unsigned int AEN23:1;
    volatile unsigned int WAD16:1;
    volatile unsigned int WAD17:1;
    volatile unsigned int WAD18:1;
    volatile unsigned int WAD19:1;
    volatile unsigned int WAD20:1;
    volatile unsigned int WAD21:1;
    volatile unsigned int WAD22:1;
    volatile unsigned int WAD23:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_4_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_5_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN24:1;
    volatile unsigned int AEN25:1;
    volatile unsigned int AEN26:1;
    volatile unsigned int AEN27:1;
    volatile unsigned int AEN28:1;
    volatile unsigned int AEN29:1;
    volatile unsigned int AEN30:1;
    volatile unsigned int AEN31:1;
    volatile unsigned int WAD24:1;
    volatile unsigned int WAD25:1;
    volatile unsigned int WAD26:1;
    volatile unsigned int WAD27:1;
    volatile unsigned int WAD28:1;
    volatile unsigned int WAD29:1;
    volatile unsigned int WAD30:1;
    volatile unsigned int WAD31:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_5_Bits;


typedef struct _Ifx_GTM_DPLL_DLA_Bits
{
    volatile unsigned int DLA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DLA_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_ACT_Bits
{
    volatile unsigned int DT_S_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_S_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_Bits
{
    volatile unsigned int DT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_S_Bits;


typedef struct _Ifx_GTM_DPLL_DT_T_ACT_Bits
{
    volatile unsigned int DT_T_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_T_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_DTA_Bits
{
    volatile unsigned int DTA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DTA_Bits;



typedef struct _Ifx_GTM_DPLL_EDT_S_Bits
{
    volatile unsigned int EDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_EDT_S_Bits;



typedef struct _Ifx_GTM_DPLL_EDT_T_Bits
{
    volatile unsigned int EDT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_EDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_EIRQ_EN_Bits
{
    volatile unsigned int PDI_EIRQ_EN:1;
    volatile unsigned int PEI_EIRQ_EN:1;
    volatile unsigned int TINI_EIRQ_EN:1;
    volatile unsigned int TAXI_EIRQ_EN:1;
    volatile unsigned int SISI_EIRQ_EN:1;
    volatile unsigned int TISI_EIRQ_EN:1;
    volatile unsigned int MSI_EIRQ_EN:1;
    volatile unsigned int MTI_EIRQ_EN:1;
    volatile unsigned int SASI_EIRQ_EN:1;
    volatile unsigned int TASI_EIRQ_EN:1;
    volatile unsigned int PWI_EIRQ_EN:1;
    volatile unsigned int W2I_EIRQ_EN:1;
    volatile unsigned int W1I_EIRQ_EN:1;
    volatile unsigned int GL1I_EIRQ_EN:1;
    volatile unsigned int LL1I_EIRQ_EN:1;
    volatile unsigned int EI_EIRQ_EN:1;
    volatile unsigned int GL2I_EIRQ_EN:1;
    volatile unsigned int LL2I_EIRQ_EN:1;
    volatile unsigned int TE0I_EIRQ_EN:1;
    volatile unsigned int TE1I_EIRQ_EN:1;
    volatile unsigned int TE2I_EIRQ_EN:1;
    volatile unsigned int TE3I_EIRQ_EN:1;
    volatile unsigned int TE4I_EIRQ_EN:1;
    volatile unsigned int CDTI_EIRQ_EN:1;
    volatile unsigned int CDSI_EIRQ_EN:1;
    volatile unsigned int TORI:1;
    volatile unsigned int SORI:1;
    volatile unsigned int DCGI:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_DPLL_ID_PMTR_Bits
{
    volatile unsigned int ID_PMTR_x:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_DPLL_ID_PMTR_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT1_Bits
{
    volatile unsigned int INC_CNT1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT1_Bits;



typedef struct _Ifx_GTM_DPLL_INC_CNT2_Bits
{
    volatile unsigned int INC_CNT2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT2_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_EN_Bits
{
    volatile unsigned int PDI_IRQ_EN:1;
    volatile unsigned int PEI_IRQ_EN:1;
    volatile unsigned int TINI_IRQ_EN:1;
    volatile unsigned int TAXI_IRQ_EN:1;
    volatile unsigned int SISI_IRQ_EN:1;
    volatile unsigned int TISI_IRQ_EN:1;
    volatile unsigned int MSI_IRQ_EN:1;
    volatile unsigned int MTI_IRQ_EN:1;
    volatile unsigned int SASI_IRQ_EN:1;
    volatile unsigned int TASI_IRQ_EN:1;
    volatile unsigned int PWI_IRQ_EN:1;
    volatile unsigned int W2I_IRQ_EN:1;
    volatile unsigned int W1I_IRQ_EN:1;
    volatile unsigned int GL1I_IRQ_EN:1;
    volatile unsigned int LL1I_IRQ_EN:1;
    volatile unsigned int EI_IRQ_EN:1;
    volatile unsigned int GL2I_IRQ_EN:1;
    volatile unsigned int LL2I_IRQ_EN:1;
    volatile unsigned int TE0I_IRQ_EN:1;
    volatile unsigned int TE1I_IRQ_EN:1;
    volatile unsigned int TE2I_IRQ_EN:1;
    volatile unsigned int TE3I_IRQ_EN:1;
    volatile unsigned int TE4I_IRQ_EN:1;
    volatile unsigned int CDTI_IRQ_EN:1;
    volatile unsigned int CDSI_IRQ_EN:1;
    volatile unsigned int TORI:1;
    volatile unsigned int SORI:1;
    volatile unsigned int DCGI:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_EN_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_PDI:1;
    volatile unsigned int TRG_PEI:1;
    volatile unsigned int TRG_TINI:1;
    volatile unsigned int TRG_TAXI:1;
    volatile unsigned int TRG_SISI:1;
    volatile unsigned int TRG_TISI:1;
    volatile unsigned int TRG_MSI:1;
    volatile unsigned int TRG_MTI:1;
    volatile unsigned int TRG_SASI:1;
    volatile unsigned int TRG_TASI:1;
    volatile unsigned int TRG_PWI:1;
    volatile unsigned int TRG_W2I:1;
    volatile unsigned int TRG_W1I:1;
    volatile unsigned int TRG_GL1I:1;
    volatile unsigned int TRG_LL1I:1;
    volatile unsigned int TRG_EI:1;
    volatile unsigned int TRG_GL2I:1;
    volatile unsigned int TRG_LL2I:1;
    volatile unsigned int TRG_TE0I:1;
    volatile unsigned int TRG_TE1I:1;
    volatile unsigned int TRG_TE2I:1;
    volatile unsigned int TRG_TE3I:1;
    volatile unsigned int TRG_TE4I:1;
    volatile unsigned int TRG_CDTI:1;
    volatile unsigned int TRG_CDSI:1;
    volatile unsigned int TRG_TORI:1;
    volatile unsigned int TRG_SORI:1;
    volatile unsigned int TRG_DCGI:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_DPLL_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_NOTIFY_Bits
{
    volatile unsigned int PDI:1;
    volatile unsigned int PEI:1;
    volatile unsigned int TINI:1;
    volatile unsigned int TAXI:1;
    volatile unsigned int SISI:1;
    volatile unsigned int TISI:1;
    volatile unsigned int MSI:1;
    volatile unsigned int MTI:1;
    volatile unsigned int SASI:1;
    volatile unsigned int TASI:1;
    volatile unsigned int PWI:1;
    volatile unsigned int W2I:1;
    volatile unsigned int W1I:1;
    volatile unsigned int GL1I:1;
    volatile unsigned int LL1I:1;
    volatile unsigned int EI:1;
    volatile unsigned int GL2I:1;
    volatile unsigned int LL2I:1;
    volatile unsigned int TE0I:1;
    volatile unsigned int TE1I:1;
    volatile unsigned int TE2I:1;
    volatile unsigned int TE3I:1;
    volatile unsigned int TE4I:1;
    volatile unsigned int CDTI:1;
    volatile unsigned int CDSI:1;
    volatile unsigned int TORI:1;
    volatile unsigned int SORI:1;
    volatile unsigned int DCGI:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_NOTIFY_Bits;



typedef struct _Ifx_GTM_DPLL_MEDT_S_Bits
{
    volatile unsigned int MEDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MEDT_S_Bits;



typedef struct _Ifx_GTM_DPLL_MEDT_T_Bits
{
    volatile unsigned int MEDT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MEDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_MLS1_Bits
{
    volatile unsigned int MLS1:18;
    volatile unsigned int reserved_18:14;
} Ifx_GTM_DPLL_MLS1_Bits;


typedef struct _Ifx_GTM_DPLL_MLS2_Bits
{
    volatile unsigned int MLS2:18;
    volatile unsigned int reserved_18:14;
} Ifx_GTM_DPLL_MLS2_Bits;



typedef struct _Ifx_GTM_DPLL_MPVAL1_Bits
{
    volatile unsigned int MPVAL1:16;
    volatile unsigned int SIX1:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MPVAL1_Bits;



typedef struct _Ifx_GTM_DPLL_MPVAL2_Bits
{
    volatile unsigned int MPVAL2:16;
    volatile unsigned int SIX2:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MPVAL2_Bits;


typedef struct _Ifx_GTM_DPLL_NA_Bits
{
    volatile unsigned int DB:10;
    volatile unsigned int DW:10;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_NA_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_Bits
{
    volatile unsigned int NMB_S:20;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_NMB_S_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_TAR_Bits
{
    volatile unsigned int NMB_S_TAR:20;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_NMB_S_TAR_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits
{
    volatile unsigned int NMB_S_TAR_OLD:20;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_Bits
{
    volatile unsigned int NMB_T:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_NMB_T_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_TAR_Bits
{
    volatile unsigned int NMB_T_TAR:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_NMB_T_TAR_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits
{
    volatile unsigned int NMB_T_TAR_OLD:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_NTI_CNT_Bits
{
    volatile unsigned int NTI_CNT:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_DPLL_NTI_CNT_Bits;


typedef struct _Ifx_GTM_DPLL_NUSC_Bits
{
    volatile unsigned int NUSE:6;
    volatile unsigned int FSS:1;
    volatile unsigned int SYN_S:6;
    volatile unsigned int SYN_S_OLD:6;
    volatile unsigned int VSN:6;
    volatile unsigned int reserved_25:4;
    volatile unsigned int WNUS:1;
    volatile unsigned int WSYN:1;
    volatile unsigned int WVSN:1;
} Ifx_GTM_DPLL_NUSC_Bits;


typedef struct _Ifx_GTM_DPLL_NUTC_Bits
{
    volatile unsigned int NUTE:10;
    volatile unsigned int FST:1;
    volatile unsigned int reserved_11:2;
    volatile unsigned int SYN_T:3;
    volatile unsigned int SYN_T_OLD:3;
    volatile unsigned int VTN:6;
    volatile unsigned int reserved_25:4;
    volatile unsigned int WNUT:1;
    volatile unsigned int WSYN:1;
    volatile unsigned int WVTN:1;
} Ifx_GTM_DPLL_NUTC_Bits;


typedef struct _Ifx_GTM_DPLL_OSW_Bits
{
    volatile unsigned int SWON_S:1;
    volatile unsigned int SWON_T:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int OSS:2;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_DPLL_OSW_Bits;


typedef struct _Ifx_GTM_DPLL_PDT_T_Bits
{
    volatile unsigned int DB:14;
    volatile unsigned int DW:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_PSA_Bits
{
    volatile unsigned int PSA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSA_Bits;


typedef struct _Ifx_GTM_DPLL_PSAC_Bits
{
    volatile unsigned int PSAC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSAC_Bits;


typedef struct _Ifx_GTM_DPLL_PSSC_Bits
{
    volatile unsigned int PSSC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSC_Bits;


typedef struct _Ifx_GTM_DPLL_PSSM_0_Bits
{
    volatile unsigned int PSSM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSM_0_Bits;


typedef struct _Ifx_GTM_DPLL_PSSM_1_Bits
{
    volatile unsigned int PSSM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSM_1_Bits;


typedef struct _Ifx_GTM_DPLL_PSTC_Bits
{
    volatile unsigned int PSTC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTC_Bits;


typedef struct _Ifx_GTM_DPLL_PSTM_0_Bits
{
    volatile unsigned int PSTM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTM_0_Bits;


typedef struct _Ifx_GTM_DPLL_PSTM_1_Bits
{
    volatile unsigned int PSTM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTM_1_Bits;


typedef struct _Ifx_GTM_DPLL_PVT_Bits
{
    volatile unsigned int PVT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PVT_Bits;


typedef struct _Ifx_GTM_DPLL_RAM_INI_Bits
{
    volatile unsigned int INIT_1A:1;
    volatile unsigned int INIT_1B:1;
    volatile unsigned int INIT_2:1;
    volatile unsigned int reserved_3:1;
    volatile unsigned int INIT_RAM:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_DPLL_RAM_INI_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_SX_Bits
{
    volatile unsigned int RCDT_SX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_SX_Bits;



typedef struct _Ifx_GTM_DPLL_RCDT_SX_NOM_Bits
{
    volatile unsigned int RCDT_SX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_SX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_TX_Bits
{
    volatile unsigned int RCDT_TX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_TX_Bits;



typedef struct _Ifx_GTM_DPLL_RCDT_TX_NOM_Bits
{
    volatile unsigned int RCDT_TX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_TX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_S_ACT_Bits
{
    volatile unsigned int RDT_S_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_S_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_S_Bits
{
    volatile unsigned int RDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_S_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_T_ACT_Bits
{
    volatile unsigned int RDT_T_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_T_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_SLR_Bits
{
    volatile unsigned int SLR:8;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_DPLL_SLR_Bits;


typedef struct _Ifx_GTM_DPLL_STATUS_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int CSO:1;
    volatile unsigned int reserved_2:1;
    volatile unsigned int CTO:1;
    volatile unsigned int CRO:1;
    volatile unsigned int RCS:1;
    volatile unsigned int RCT:1;
    volatile unsigned int PSE:1;
    volatile unsigned int SOR:1;
    volatile unsigned int MS:1;
    volatile unsigned int TOR:1;
    volatile unsigned int MT:1;
    volatile unsigned int RAM2_ERR:1;
    volatile unsigned int reserved_13:2;
    volatile unsigned int LOW_RES:1;
    volatile unsigned int CSVS:1;
    volatile unsigned int CSVT:1;
    volatile unsigned int CAIP2:1;
    volatile unsigned int CAIP1:1;
    volatile unsigned int ISN:1;
    volatile unsigned int ITN:1;
    volatile unsigned int BWD2:1;
    volatile unsigned int BWD1:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int LOCK2:1;
    volatile unsigned int SYS:1;
    volatile unsigned int SYT:1;
    volatile unsigned int FSD:1;
    volatile unsigned int FTD:1;
    volatile unsigned int LOCK1:1;
    volatile unsigned int ERR:1;
} Ifx_GTM_DPLL_STATUS_Bits;


typedef struct _Ifx_GTM_DPLL_TBU_TS0_S_Bits
{
    volatile unsigned int TBU_TS0_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TBU_TS0_S_Bits;


typedef struct _Ifx_GTM_DPLL_TBU_TS0_T_Bits
{
    volatile unsigned int TBU_TS0_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TBU_TS0_T_Bits;


typedef struct _Ifx_GTM_DPLL_THMA_Bits
{
    volatile unsigned int THMA:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_THMA_Bits;


typedef struct _Ifx_GTM_DPLL_THMI_Bits
{
    volatile unsigned int THMI:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_THMI_Bits;


typedef struct _Ifx_GTM_DPLL_THVAL_Bits
{
    volatile unsigned int THVAL:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_THVAL_Bits;


typedef struct _Ifx_GTM_DPLL_TLR_Bits
{
    volatile unsigned int TLR:8;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_DPLL_TLR_Bits;


typedef struct _Ifx_GTM_DPLL_TOV_Bits
{
    volatile unsigned int DB:10;
    volatile unsigned int DW:6;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_TOV_Bits;


typedef struct _Ifx_GTM_DPLL_TOV_S_Bits
{
    volatile unsigned int DB:10;
    volatile unsigned int DW:6;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_TOV_S_Bits;


typedef struct _Ifx_GTM_DPLL_TS_FTV_S_Bits
{
    volatile unsigned int STATE_FT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_FTV_S_Bits;


typedef struct _Ifx_GTM_DPLL_TS_FTV_T_Bits
{
    volatile unsigned int TRIGGER_FT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_FTV_T_Bits;


typedef struct _Ifx_GTM_DPLL_TS_S_0_Bits
{
    volatile unsigned int STATE_TS:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_S_0_Bits;


typedef struct _Ifx_GTM_DPLL_TS_S_1_Bits
{
    volatile unsigned int STATE_TS:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_S_1_Bits;


typedef struct _Ifx_GTM_DPLL_TS_T_0_Bits
{
    volatile unsigned int TRIGGER_TS:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_T_0_Bits;


typedef struct _Ifx_GTM_DPLL_TS_T_1_Bits
{
    volatile unsigned int TRIGGER_TS:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_T_1_Bits;


typedef struct _Ifx_GTM_DPLL_TSAC_Bits
{
    volatile unsigned int TSAC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TSAC_Bits;


typedef struct _Ifx_GTM_DPLL_TSF_S_Bits
{
    volatile unsigned int TSF_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TSF_S_Bits;


typedef struct _Ifx_GTM_DXINCON_Bits
{
    volatile unsigned int IN00:1;
    volatile unsigned int IN01:1;
    volatile unsigned int IN02:1;
    volatile unsigned int IN03:1;
    volatile unsigned int IN04:1;
    volatile unsigned int IN05:1;
    volatile unsigned int reserved_6:2;
    volatile unsigned int IN10:1;
    volatile unsigned int IN11:1;
    volatile unsigned int IN12:1;
    volatile unsigned int IN13:1;
    volatile unsigned int IN14:1;
    volatile unsigned int IN15:1;
    volatile unsigned int reserved_14:2;
    volatile unsigned int DSS00:1;
    volatile unsigned int DSS01:1;
    volatile unsigned int DSS02:1;
    volatile unsigned int DSS03:1;
    volatile unsigned int DSS04:1;
    volatile unsigned int DSS05:1;
    volatile unsigned int reserved_22:2;
    volatile unsigned int DSS10:1;
    volatile unsigned int DSS11:1;
    volatile unsigned int DSS12:1;
    volatile unsigned int DSS13:1;
    volatile unsigned int DSS14:1;
    volatile unsigned int DSS15:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_DXINCON_Bits;


typedef struct _Ifx_GTM_DXOUTCON_Bits
{
    volatile unsigned int OUT00:1;
    volatile unsigned int OUT01:1;
    volatile unsigned int OUT02:1;
    volatile unsigned int OUT03:1;
    volatile unsigned int OUT04:1;
    volatile unsigned int OUT05:1;
    volatile unsigned int reserved_6:2;
    volatile unsigned int OUT10:1;
    volatile unsigned int OUT11:1;
    volatile unsigned int OUT12:1;
    volatile unsigned int OUT13:1;
    volatile unsigned int OUT14:1;
    volatile unsigned int OUT15:1;
    volatile unsigned int reserved_14:18;
} Ifx_GTM_DXOUTCON_Bits;


typedef struct _Ifx_GTM_EIRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_EIRQ_EN:1;
    volatile unsigned int AEI_USP_ADDR_EIRQ_EN:1;
    volatile unsigned int AEI_IM_ADDR_EIRQ_EN:1;
    volatile unsigned int AEI_USP_BE_EIRQ_EN:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_F2A_ENABLE_Bits
{
    volatile unsigned int STR0_EN:2;
    volatile unsigned int STR1_EN:2;
    volatile unsigned int STR2_EN:2;
    volatile unsigned int STR3_EN:2;
    volatile unsigned int STR4_EN:2;
    volatile unsigned int STR5_EN:2;
    volatile unsigned int STR6_EN:2;
    volatile unsigned int STR7_EN:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_F2A_ENABLE_Bits;


typedef struct _Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO_Bits;


typedef struct _Ifx_GTM_F2A_STR_CH_STR_CFG_Bits
{
    volatile unsigned int reserved_0:16;
    volatile unsigned int TMODE:2;
    volatile unsigned int DIR:1;
    volatile unsigned int reserved_19:13;
} Ifx_GTM_F2A_STR_CH_STR_CFG_Bits;


typedef struct _Ifx_GTM_FIFO_CH_CTRL_Bits
{
    volatile unsigned int RBM:1;
    volatile unsigned int RAP:1;
    volatile unsigned int FLUSH:1;
    volatile unsigned int WULOCK:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_FIFO_CH_CTRL_Bits;


typedef struct _Ifx_GTM_FIFO_CH_EIRQ_EN_Bits
{
    volatile unsigned int FIFO_EMPTY_EIRQ_EN:1;
    volatile unsigned int FIFO_FULL_EIRQ_EN:1;
    volatile unsigned int FIFO_LWM_EIRQ_EN:1;
    volatile unsigned int FIFO_UWM_EIRQ_EN:1;
    volatile unsigned int Reserved:28;
} Ifx_GTM_FIFO_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_FIFO_CH_END_ADDR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_FIFO_CH_END_ADDR_Bits;


typedef struct _Ifx_GTM_FIFO_CH_FILL_LEVEL_Bits
{
    volatile unsigned int LEVEL:11;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_FIFO_CH_FILL_LEVEL_Bits;


typedef struct _Ifx_GTM_FIFO_CH_IRQ_EN_Bits
{
    volatile unsigned int FIFO_EMPTY_IRQ_EN:1;
    volatile unsigned int FIFO_FULL_IRQ_EN:1;
    volatile unsigned int FIFO_LWM_IRQ_EN:1;
    volatile unsigned int FIFO_UWM_IRQ_EN:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_FIFO_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_FIFO_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_FIFO_EMPTY:1;
    volatile unsigned int TRG_FIFO_FULL:1;
    volatile unsigned int TRG_FIFO_LWM:1;
    volatile unsigned int TRG_FIFO_UWM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_FIFO_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_FIFO_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int DMA_HYSTERESIS:1;
    volatile unsigned int DMA_HYST_DIR:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_FIFO_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_FIFO_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int FIFO_EMPTY:1;
    volatile unsigned int FIFO_FULL:1;
    volatile unsigned int FIFO_LWM:1;
    volatile unsigned int FIFO_UWM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_FIFO_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_FIFO_CH_LOWER_WM_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_FIFO_CH_LOWER_WM_Bits;


typedef struct _Ifx_GTM_FIFO_CH_RD_PTR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_FIFO_CH_RD_PTR_Bits;


typedef struct _Ifx_GTM_FIFO_CH_START_ADDR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_FIFO_CH_START_ADDR_Bits;


typedef struct _Ifx_GTM_FIFO_CH_STATUS_Bits
{
    volatile unsigned int EMPTY:1;
    volatile unsigned int FULL:1;
    volatile unsigned int LOW_WM:1;
    volatile unsigned int UP_WM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_FIFO_CH_STATUS_Bits;


typedef struct _Ifx_GTM_FIFO_CH_UPPER_WM_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_FIFO_CH_UPPER_WM_Bits;


typedef struct _Ifx_GTM_FIFO_CH_WR_PTR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_FIFO_CH_WR_PTR_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_0_Bits
{
    volatile unsigned int ARU_NEW_DATA0_IRQ:1;
    volatile unsigned int ARU_NEW_DATA1_IRQ:1;
    volatile unsigned int ARU_ACC_ACK_IRQ:1;
    volatile unsigned int BRC_IRQ:1;
    volatile unsigned int AEI_IRQ:1;
    volatile unsigned int CMP_IRQ:1;
    volatile unsigned int SPE0_IRQ:1;
    volatile unsigned int SPE1_IRQ:1;
    volatile unsigned int SPE2_IRQ:1;
    volatile unsigned int SPE3_IRQ:1;
    volatile unsigned int reserved_10:6;
    volatile unsigned int PSM0_CH0_IRQ:1;
    volatile unsigned int PSM0_CH1_IRQ:1;
    volatile unsigned int PSM0_CH2_IRQ:1;
    volatile unsigned int PSM0_CH3_IRQ:1;
    volatile unsigned int PSM0_CH4_IRQ:1;
    volatile unsigned int PSM0_CH5_IRQ:1;
    volatile unsigned int PSM0_CH6_IRQ:1;
    volatile unsigned int PSM0_CH7_IRQ:1;
    volatile unsigned int PSM1_CH0_IRQ:1;
    volatile unsigned int PSM1_CH1_IRQ:1;
    volatile unsigned int PSM1_CH2_IRQ:1;
    volatile unsigned int PSM1_CH3_IRQ:1;
    volatile unsigned int PSM1_CH4_IRQ:1;
    volatile unsigned int PSM1_CH5_IRQ:1;
    volatile unsigned int PSM1_CH6_IRQ:1;
    volatile unsigned int PSM1_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_10_Bits
{
    volatile unsigned int ATOM4_CH0_IRQ:1;
    volatile unsigned int ATOM4_CH1_IRQ:1;
    volatile unsigned int ATOM4_CH2_IRQ:1;
    volatile unsigned int ATOM4_CH3_IRQ:1;
    volatile unsigned int ATOM4_CH4_IRQ:1;
    volatile unsigned int ATOM4_CH5_IRQ:1;
    volatile unsigned int ATOM4_CH6_IRQ:1;
    volatile unsigned int ATOM4_CH7_IRQ:1;
    volatile unsigned int ATOM5_CH0_IRQ:1;
    volatile unsigned int ATOM5_CH1_IRQ:1;
    volatile unsigned int ATOM5_CH2_IRQ:1;
    volatile unsigned int ATOM5_CH3_IRQ:1;
    volatile unsigned int ATOM5_CH4_IRQ:1;
    volatile unsigned int ATOM5_CH5_IRQ:1;
    volatile unsigned int ATOM5_CH6_IRQ:1;
    volatile unsigned int ATOM5_CH7_IRQ:1;
    volatile unsigned int ATOM6_CH0_IRQ:1;
    volatile unsigned int ATOM6_CH1_IRQ:1;
    volatile unsigned int ATOM6_CH2_IRQ:1;
    volatile unsigned int ATOM6_CH3_IRQ:1;
    volatile unsigned int ATOM6_CH4_IRQ:1;
    volatile unsigned int ATOM6_CH5_IRQ:1;
    volatile unsigned int ATOM6_CH6_IRQ:1;
    volatile unsigned int ATOM6_CH7_IRQ:1;
    volatile unsigned int ATOM7_CH0_IRQ:1;
    volatile unsigned int ATOM7_CH1_IRQ:1;
    volatile unsigned int ATOM7_CH2_IRQ:1;
    volatile unsigned int ATOM7_CH3_IRQ:1;
    volatile unsigned int ATOM7_CH4_IRQ:1;
    volatile unsigned int ATOM7_CH5_IRQ:1;
    volatile unsigned int ATOM7_CH6_IRQ:1;
    volatile unsigned int ATOM7_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_10_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_11_Bits
{
    volatile unsigned int ATOM8_CH0_IRQ:1;
    volatile unsigned int ATOM8_CH1_IRQ:1;
    volatile unsigned int ATOM8_CH2_IRQ:1;
    volatile unsigned int ATOM8_CH3_IRQ:1;
    volatile unsigned int ATOM8_CH4_IRQ:1;
    volatile unsigned int ATOM8_CH5_IRQ:1;
    volatile unsigned int ATOM8_CH6_IRQ:1;
    volatile unsigned int ATOM8_CH7_IRQ:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_ICM_IRQG_11_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_1_Bits
{
    volatile unsigned int DPLL_DCG_IRQ:1;
    volatile unsigned int DPLL_EDI_IRQ:1;
    volatile unsigned int DPLL_TIN_IRQ:1;
    volatile unsigned int DPLL_TAX_IRQ:1;
    volatile unsigned int DPLL_SIS_IRQ:1;
    volatile unsigned int DPLL_TIS_IRQ:1;
    volatile unsigned int DPLL_MSI_IRQ:1;
    volatile unsigned int DPLL_MTI_IRQ:1;
    volatile unsigned int DPLL_SAS_IRQ:1;
    volatile unsigned int DPLL_TAS_IRQ:1;
    volatile unsigned int DPLL_PWI_IRQ:1;
    volatile unsigned int DPLL_W2I_IRQ:1;
    volatile unsigned int DPLL_W1I_IRQ:1;
    volatile unsigned int DPLL_GLI_IRQ:1;
    volatile unsigned int DPLL_LLI_IRQ:1;
    volatile unsigned int DPLL_EI_IRQ:1;
    volatile unsigned int DPLL_GL2I_IRQ:1;
    volatile unsigned int DPLL_LL2I_IRQ:1;
    volatile unsigned int DPLL_TE0_IRQ:1;
    volatile unsigned int DPLL_TE1_IRQ:1;
    volatile unsigned int DPLL_TE2_IRQ:1;
    volatile unsigned int DPLL_TE3_IRQ:1;
    volatile unsigned int DPLL_TE4_IRQ:1;
    volatile unsigned int DPLL_CDIT_IRQ:1;
    volatile unsigned int DPLL_CDIS_IRQ:1;
    volatile unsigned int DPLL_TORI_IRQ:1;
    volatile unsigned int DPLL_SORI_IRQ:1;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_ICM_IRQG_1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_2_Bits
{
    volatile unsigned int TIM0_CH0_IRQ:1;
    volatile unsigned int TIM0_CH1_IRQ:1;
    volatile unsigned int TIM0_CH2_IRQ:1;
    volatile unsigned int TIM0_CH3_IRQ:1;
    volatile unsigned int TIM0_CH4_IRQ:1;
    volatile unsigned int TIM0_CH5_IRQ:1;
    volatile unsigned int TIM0_CH6_IRQ:1;
    volatile unsigned int TIM0_CH7_IRQ:1;
    volatile unsigned int TIM1_CH0_IRQ:1;
    volatile unsigned int TIM1_CH1_IRQ:1;
    volatile unsigned int TIM1_CH2_IRQ:1;
    volatile unsigned int TIM1_CH3_IRQ:1;
    volatile unsigned int TIM1_CH4_IRQ:1;
    volatile unsigned int TIM1_CH5_IRQ:1;
    volatile unsigned int TIM1_CH6_IRQ:1;
    volatile unsigned int TIM1_CH7_IRQ:1;
    volatile unsigned int TIM2_CH0_IRQ:1;
    volatile unsigned int TIM2_CH1_IRQ:1;
    volatile unsigned int TIM2_CH2_IRQ:1;
    volatile unsigned int TIM2_CH3_IRQ:1;
    volatile unsigned int TIM2_CH4_IRQ:1;
    volatile unsigned int TIM2_CH5_IRQ:1;
    volatile unsigned int TIM2_CH6_IRQ:1;
    volatile unsigned int TIM2_CH7_IRQ:1;
    volatile unsigned int TIM3_CH0_IRQ:1;
    volatile unsigned int TIM3_CH1_IRQ:1;
    volatile unsigned int TIM3_CH2_IRQ:1;
    volatile unsigned int TIM3_CH3_IRQ:1;
    volatile unsigned int TIM3_CH4_IRQ:1;
    volatile unsigned int TIM3_CH5_IRQ:1;
    volatile unsigned int TIM3_CH6_IRQ:1;
    volatile unsigned int TIM3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_3_Bits
{
    volatile unsigned int TIM4_CH0_IRQ:1;
    volatile unsigned int TIM4_CH1_IRQ:1;
    volatile unsigned int TIM4_CH2_IRQ:1;
    volatile unsigned int TIM4_CH3_IRQ:1;
    volatile unsigned int TIM4_CH4_IRQ:1;
    volatile unsigned int TIM4_CH5_IRQ:1;
    volatile unsigned int TIM4_CH6_IRQ:1;
    volatile unsigned int TIM4_CH7_IRQ:1;
    volatile unsigned int TIM5_CH0_IRQ:1;
    volatile unsigned int TIM5_CH1_IRQ:1;
    volatile unsigned int TIM5_CH2_IRQ:1;
    volatile unsigned int TIM5_CH3_IRQ:1;
    volatile unsigned int TIM5_CH4_IRQ:1;
    volatile unsigned int TIM5_CH5_IRQ:1;
    volatile unsigned int TIM5_CH6_IRQ:1;
    volatile unsigned int TIM5_CH7_IRQ:1;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ICM_IRQG_3_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_4_Bits
{
    volatile unsigned int MCS0_CH0_IRQ:1;
    volatile unsigned int MCS0_CH1_IRQ:1;
    volatile unsigned int MCS0_CH2_IRQ:1;
    volatile unsigned int MCS0_CH3_IRQ:1;
    volatile unsigned int MCS0_CH4_IRQ:1;
    volatile unsigned int MCS0_CH5_IRQ:1;
    volatile unsigned int MCS0_CH6_IRQ:1;
    volatile unsigned int MCS0_CH7_IRQ:1;
    volatile unsigned int MCS1_CH0_IRQ:1;
    volatile unsigned int MCS1_CH1_IRQ:1;
    volatile unsigned int MCS1_CH2_IRQ:1;
    volatile unsigned int MCS1_CH3_IRQ:1;
    volatile unsigned int MCS1_CH4_IRQ:1;
    volatile unsigned int MCS1_CH5_IRQ:1;
    volatile unsigned int MCS1_CH6_IRQ:1;
    volatile unsigned int MCS1_CH7_IRQ:1;
    volatile unsigned int MCS2_CH0_IRQ:1;
    volatile unsigned int MCS2_CH1_IRQ:1;
    volatile unsigned int MCS2_CH2_IRQ:1;
    volatile unsigned int MCS2_CH3_IRQ:1;
    volatile unsigned int MCS2_CH4_IRQ:1;
    volatile unsigned int MCS2_CH5_IRQ:1;
    volatile unsigned int MCS2_CH6_IRQ:1;
    volatile unsigned int MCS2_CH7_IRQ:1;
    volatile unsigned int MCS3_CH0_IRQ:1;
    volatile unsigned int MCS3_CH1_IRQ:1;
    volatile unsigned int MCS3_CH2_IRQ:1;
    volatile unsigned int MCS3_CH3_IRQ:1;
    volatile unsigned int MCS3_CH4_IRQ:1;
    volatile unsigned int MCS3_CH5_IRQ:1;
    volatile unsigned int MCS3_CH6_IRQ:1;
    volatile unsigned int MCS3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_4_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_5_Bits
{
    volatile unsigned int MCS4_CH0_IRQ:1;
    volatile unsigned int MCS4_CH1_IRQ:1;
    volatile unsigned int MCS4_CH2_IRQ:1;
    volatile unsigned int MCS4_CH3_IRQ:1;
    volatile unsigned int MCS4_CH4_IRQ:1;
    volatile unsigned int MCS4_CH5_IRQ:1;
    volatile unsigned int MCS4_CH6_IRQ:1;
    volatile unsigned int MCS4_CH7_IRQ:1;
    volatile unsigned int MCS5_CH0_IRQ:1;
    volatile unsigned int MCS5_CH1_IRQ:1;
    volatile unsigned int MCS5_CH2_IRQ:1;
    volatile unsigned int MCS5_CH3_IRQ:1;
    volatile unsigned int MCS5_CH4_IRQ:1;
    volatile unsigned int MCS5_CH5_IRQ:1;
    volatile unsigned int MCS5_CH6_IRQ:1;
    volatile unsigned int MCS5_CH7_IRQ:1;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ICM_IRQG_5_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_6_Bits
{
    volatile unsigned int TOM0_CH0_IRQ:1;
    volatile unsigned int TOM0_CH1_IRQ:1;
    volatile unsigned int TOM0_CH2_IRQ:1;
    volatile unsigned int TOM0_CH3_IRQ:1;
    volatile unsigned int TOM0_CH4_IRQ:1;
    volatile unsigned int TOM0_CH5_IRQ:1;
    volatile unsigned int TOM0_CH6_IRQ:1;
    volatile unsigned int TOM0_CH7_IRQ:1;
    volatile unsigned int TOM0_CH8_IRQ:1;
    volatile unsigned int TOM0_CH9_IRQ:1;
    volatile unsigned int TOM0_CH10_IRQ:1;
    volatile unsigned int TOM0_CH11_IRQ:1;
    volatile unsigned int TOM0_CH12_IRQ:1;
    volatile unsigned int TOM0_CH13_IRQ:1;
    volatile unsigned int TOM0_CH14_IRQ:1;
    volatile unsigned int TOM0_CH15_IRQ:1;
    volatile unsigned int TOM1_CH0_IRQ:1;
    volatile unsigned int TOM1_CH1_IRQ:1;
    volatile unsigned int TOM1_CH2_IRQ:1;
    volatile unsigned int TOM1_CH3_IRQ:1;
    volatile unsigned int TOM1_CH4_IRQ:1;
    volatile unsigned int TOM1_CH5_IRQ:1;
    volatile unsigned int TOM1_CH6_IRQ:1;
    volatile unsigned int TOM1_CH7_IRQ:1;
    volatile unsigned int TOM1_CH8_IRQ:1;
    volatile unsigned int TOM1_CH9_IRQ:1;
    volatile unsigned int TOM1_CH10_IRQ:1;
    volatile unsigned int TOM1_CH11_IRQ:1;
    volatile unsigned int TOM1_CH12_IRQ:1;
    volatile unsigned int TOM1_CH13_IRQ:1;
    volatile unsigned int TOM1_CH14_IRQ:1;
    volatile unsigned int TOM1_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_6_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_7_Bits
{
    volatile unsigned int TOM2_CH0_IRQ:1;
    volatile unsigned int TOM2_CH1_IRQ:1;
    volatile unsigned int TOM2_CH2_IRQ:1;
    volatile unsigned int TOM2_CH3_IRQ:1;
    volatile unsigned int TOM2_CH4_IRQ:1;
    volatile unsigned int TOM2_CH5_IRQ:1;
    volatile unsigned int TOM2_CH6_IRQ:1;
    volatile unsigned int TOM2_CH7_IRQ:1;
    volatile unsigned int TOM2_CH8_IRQ:1;
    volatile unsigned int TOM2_CH9_IRQ:1;
    volatile unsigned int TOM2_CH10_IRQ:1;
    volatile unsigned int TOM2_CH11_IRQ:1;
    volatile unsigned int TOM2_CH12_IRQ:1;
    volatile unsigned int TOM2_CH13_IRQ:1;
    volatile unsigned int TOM2_CH14_IRQ:1;
    volatile unsigned int TOM2_CH15_IRQ:1;
    volatile unsigned int TOM3_CH0_IRQ:1;
    volatile unsigned int TOM3_CH1_IRQ:1;
    volatile unsigned int TOM3_CH2_IRQ:1;
    volatile unsigned int TOM3_CH3_IRQ:1;
    volatile unsigned int TOM3_CH4_IRQ:1;
    volatile unsigned int TOM3_CH5_IRQ:1;
    volatile unsigned int TOM3_CH6_IRQ:1;
    volatile unsigned int TOM3_CH7_IRQ:1;
    volatile unsigned int TOM3_CH8_IRQ:1;
    volatile unsigned int TOM3_CH9_IRQ:1;
    volatile unsigned int TOM3_CH10_IRQ:1;
    volatile unsigned int TOM3_CH11_IRQ:1;
    volatile unsigned int TOM3_CH12_IRQ:1;
    volatile unsigned int TOM3_CH13_IRQ:1;
    volatile unsigned int TOM3_CH14_IRQ:1;
    volatile unsigned int TOM3_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_7_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_8_Bits
{
    volatile unsigned int TOM4_CH0_IRQ:1;
    volatile unsigned int TOM4_CH1_IRQ:1;
    volatile unsigned int TOM4_CH2_IRQ:1;
    volatile unsigned int TOM4_CH3_IRQ:1;
    volatile unsigned int TOM4_CH4_IRQ:1;
    volatile unsigned int TOM4_CH5_IRQ:1;
    volatile unsigned int TOM4_CH6_IRQ:1;
    volatile unsigned int TOM4_CH7_IRQ:1;
    volatile unsigned int TOM4_CH8_IRQ:1;
    volatile unsigned int TOM4_CH9_IRQ:1;
    volatile unsigned int TOM4_CH10_IRQ:1;
    volatile unsigned int TOM4_CH11_IRQ:1;
    volatile unsigned int TOM4_CH12_IRQ:1;
    volatile unsigned int TOM4_CH13_IRQ:1;
    volatile unsigned int TOM4_CH14_IRQ:1;
    volatile unsigned int TOM4_CH15_IRQ:1;
    volatile unsigned int TOM5_CH0_IRQ:1;
    volatile unsigned int TOM5_CH1_IRQ:1;
    volatile unsigned int TOM5_CH2_IRQ:1;
    volatile unsigned int TOM5_CH3_IRQ:1;
    volatile unsigned int TOM5_CH4_IRQ:1;
    volatile unsigned int TOM5_CH5_IRQ:1;
    volatile unsigned int TOM5_CH6_IRQ:1;
    volatile unsigned int TOM5_CH7_IRQ:1;
    volatile unsigned int TOM5_CH8_IRQ:1;
    volatile unsigned int TOM5_CH9_IRQ:1;
    volatile unsigned int TOM5_CH10_IRQ:1;
    volatile unsigned int TOM5_CH11_IRQ:1;
    volatile unsigned int TOM5_CH12_IRQ:1;
    volatile unsigned int TOM5_CH13_IRQ:1;
    volatile unsigned int TOM5_CH14_IRQ:1;
    volatile unsigned int TOM5_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_8_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_9_Bits
{
    volatile unsigned int ATOM0_CH0_IRQ:1;
    volatile unsigned int ATOM0_CH1_IRQ:1;
    volatile unsigned int ATOM0_CH2_IRQ:1;
    volatile unsigned int ATOM0_CH3_IRQ:1;
    volatile unsigned int ATOM0_CH4_IRQ:1;
    volatile unsigned int ATOM0_CH5_IRQ:1;
    volatile unsigned int ATOM0_CH6_IRQ:1;
    volatile unsigned int ATOM0_CH7_IRQ:1;
    volatile unsigned int ATOM1_CH0_IRQ:1;
    volatile unsigned int ATOM1_CH1_IRQ:1;
    volatile unsigned int ATOM1_CH2_IRQ:1;
    volatile unsigned int ATOM1_CH3_IRQ:1;
    volatile unsigned int ATOM1_CH4_IRQ:1;
    volatile unsigned int ATOM1_CH5_IRQ:1;
    volatile unsigned int ATOM1_CH6_IRQ:1;
    volatile unsigned int ATOM1_CH7_IRQ:1;
    volatile unsigned int ATOM2_CH0_IRQ:1;
    volatile unsigned int ATOM2_CH1_IRQ:1;
    volatile unsigned int ATOM2_CH2_IRQ:1;
    volatile unsigned int ATOM2_CH3_IRQ:1;
    volatile unsigned int ATOM2_CH4_IRQ:1;
    volatile unsigned int ATOM2_CH5_IRQ:1;
    volatile unsigned int ATOM2_CH6_IRQ:1;
    volatile unsigned int ATOM2_CH7_IRQ:1;
    volatile unsigned int ATOM3_CH0_IRQ:1;
    volatile unsigned int ATOM3_CH1_IRQ:1;
    volatile unsigned int ATOM3_CH2_IRQ:1;
    volatile unsigned int ATOM3_CH3_IRQ:1;
    volatile unsigned int ATOM3_CH4_IRQ:1;
    volatile unsigned int ATOM3_CH5_IRQ:1;
    volatile unsigned int ATOM3_CH6_IRQ:1;
    volatile unsigned int ATOM3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_9_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI0_Bits
{
    volatile unsigned int FIFO0_CH0_EIRQ:1;
    volatile unsigned int FIFO0_CH1_EIRQ:1;
    volatile unsigned int FIFO0_CH2_EIRQ:1;
    volatile unsigned int FIFO0_CH3_EIRQ:1;
    volatile unsigned int FIFO0_CH4_EIRQ:1;
    volatile unsigned int FIFO0_CH5_EIRQ:1;
    volatile unsigned int FIFO0_CH6_EIRQ:1;
    volatile unsigned int FIFO0_CH7_EIRQ:1;
    volatile unsigned int FIFO1_CH0_EIRQ:1;
    volatile unsigned int FIFO1_CH1_EIRQ:1;
    volatile unsigned int FIFO1_CH2_EIRQ:1;
    volatile unsigned int FIFO1_CH3_EIRQ:1;
    volatile unsigned int FIFO1_CH4_EIRQ:1;
    volatile unsigned int FIFO1_CH5_EIRQ:1;
    volatile unsigned int FIFO1_CH6_EIRQ:1;
    volatile unsigned int FIFO1_CH7_EIRQ:1;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ICM_IRQG_CEI0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI1_Bits
{
    volatile unsigned int TIM0_CH0_EIRQ:1;
    volatile unsigned int TIM0_CH1_EIRQ:1;
    volatile unsigned int TIM0_CH2_EIRQ:1;
    volatile unsigned int TIM0_CH3_EIRQ:1;
    volatile unsigned int TIM0_CH4_EIRQ:1;
    volatile unsigned int TIM0_CH5_EIRQ:1;
    volatile unsigned int TIM0_CH6_EIRQ:1;
    volatile unsigned int TIM0_CH7_EIRQ:1;
    volatile unsigned int TIM1_CH0_EIRQ:1;
    volatile unsigned int TIM1_CH1_EIRQ:1;
    volatile unsigned int TIM1_CH2_EIRQ:1;
    volatile unsigned int TIM1_CH3_EIRQ:1;
    volatile unsigned int TIM1_CH4_EIRQ:1;
    volatile unsigned int TIM1_CH5_EIRQ:1;
    volatile unsigned int TIM1_CH6_EIRQ:1;
    volatile unsigned int TIM1_CH7_EIRQ:1;
    volatile unsigned int TIM2_CH0_EIRQ:1;
    volatile unsigned int TIM2_CH1_EIRQ:1;
    volatile unsigned int TIM2_CH2_EIRQ:1;
    volatile unsigned int TIM2_CH3_EIRQ:1;
    volatile unsigned int TIM2_CH4_EIRQ:1;
    volatile unsigned int TIM2_CH5_EIRQ:1;
    volatile unsigned int TIM2_CH6_EIRQ:1;
    volatile unsigned int TIM2_CH7_EIRQ:1;
    volatile unsigned int TIM3_CH0_EIRQ:1;
    volatile unsigned int TIM3_CH1_EIRQ:1;
    volatile unsigned int TIM3_CH2_EIRQ:1;
    volatile unsigned int TIM3_CH3_EIRQ:1;
    volatile unsigned int TIM3_CH4_EIRQ:1;
    volatile unsigned int TIM3_CH5_IRQ:1;
    volatile unsigned int TIM3_CH6_EIRQ:1;
    volatile unsigned int TIM3_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI2_Bits
{
    volatile unsigned int TIM4_CH0_EIRQ:1;
    volatile unsigned int TIM4_CH1_EIRQ:1;
    volatile unsigned int TIM4_CH2_EIRQ:1;
    volatile unsigned int TIM4_CH3_EIRQ:1;
    volatile unsigned int TIM4_CH4_EIRQ:1;
    volatile unsigned int TIM4_CH5_EIRQ:1;
    volatile unsigned int TIM4_CH6_EIRQ:1;
    volatile unsigned int TIM4_CH7_EIRQ:1;
    volatile unsigned int TIM5_CH0_EIRQ:1;
    volatile unsigned int TIM5_CH1_EIRQ:1;
    volatile unsigned int TIM5_CH2_EIRQ:1;
    volatile unsigned int TIM5_CH3_EIRQ:1;
    volatile unsigned int TIM5_CH4_EIRQ:1;
    volatile unsigned int TIM5_CH5_EIRQ:1;
    volatile unsigned int TIM5_CH6_EIRQ:1;
    volatile unsigned int TIM5_CH7_EIRQ:1;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ICM_IRQG_CEI2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI3_Bits
{
    volatile unsigned int MCS0_CH0_EIRQ:1;
    volatile unsigned int MCS0_CH1_EIRQ:1;
    volatile unsigned int MCS0_CH2_EIRQ:1;
    volatile unsigned int MCS0_CH3_EIRQ:1;
    volatile unsigned int MCS0_CH4_EIRQ:1;
    volatile unsigned int MCS0_CH5_EIRQ:1;
    volatile unsigned int MCS0_CH6_EIRQ:1;
    volatile unsigned int MCS0_CH7_EIRQ:1;
    volatile unsigned int MCS1_CH0_EIRQ:1;
    volatile unsigned int MCS1_CH1_EIRQ:1;
    volatile unsigned int MCS1_CH2_EIRQ:1;
    volatile unsigned int MCS1_CH3_EIRQ:1;
    volatile unsigned int MCS1_CH4_EIRQ:1;
    volatile unsigned int MCS1_CH5_EIRQ:1;
    volatile unsigned int MCS1_CH6_EIRQ:1;
    volatile unsigned int MCS1_CH7_EIRQ:1;
    volatile unsigned int MCS2_CH0_EIRQ:1;
    volatile unsigned int MCS2_CH1_EIRQ:1;
    volatile unsigned int MCS2_CH2_EIRQ:1;
    volatile unsigned int MCS2_CH3_EIRQ:1;
    volatile unsigned int MCS2_CH4_EIRQ:1;
    volatile unsigned int MCS2_CH5_EIRQ:1;
    volatile unsigned int MCS2_CH6_EIRQ:1;
    volatile unsigned int MCS2_CH7_EIRQ:1;
    volatile unsigned int MCS3_CH0_EIRQ:1;
    volatile unsigned int MCS3_CH1_EIRQ:1;
    volatile unsigned int MCS3_CH2_EIRQ:1;
    volatile unsigned int MCS3_CH3_EIRQ:1;
    volatile unsigned int MCS3_CH4_EIRQ:1;
    volatile unsigned int MCS3_CH5_EIRQ:1;
    volatile unsigned int MCS3_CH6_EIRQ:1;
    volatile unsigned int MCS3_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI3_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI4_Bits
{
    volatile unsigned int MCS4_CH0_EIRQ:1;
    volatile unsigned int MCS4_CH1_EIRQ:1;
    volatile unsigned int MCS4_CH2_EIRQ:1;
    volatile unsigned int MCS4_CH3_EIRQ:1;
    volatile unsigned int MCS4_CH4_EIRQ:1;
    volatile unsigned int MCS4_CH5_EIRQ:1;
    volatile unsigned int MCS4_CH6_EIRQ:1;
    volatile unsigned int MCS4_CH7_EIRQ:1;
    volatile unsigned int MCS5_CH0_EIRQ:1;
    volatile unsigned int MCS5_CH1_EIRQ:1;
    volatile unsigned int MCS5_CH2_EIRQ:1;
    volatile unsigned int MCS5_CH3_EIRQ:1;
    volatile unsigned int MCS5_CH4_EIRQ:1;
    volatile unsigned int MCS5_CH5_EIRQ:1;
    volatile unsigned int MCS5_CH6_EIRQ:1;
    volatile unsigned int MCS5_CH7_EIRQ:1;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ICM_IRQG_CEI4_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_Bits
{
    volatile unsigned int GTM_EIRQ:1;
    volatile unsigned int BRC_EIRQ:1;
    volatile unsigned int FIFO0_EIRQ:1;
    volatile unsigned int FIFO1_EIRQ:1;
    volatile unsigned int TIM0_EIRQ:1;
    volatile unsigned int TIM1_EIRQ:1;
    volatile unsigned int TIM2_EIRQ:1;
    volatile unsigned int TIM3_EIRQ:1;
    volatile unsigned int TIM4_EIRQ:1;
    volatile unsigned int TIM5_EIRQ:1;
    volatile unsigned int reserved_10:2;
    volatile unsigned int MCS0_EIRQ:1;
    volatile unsigned int MCS1_EIRQ:1;
    volatile unsigned int MCS2_EIRQ:1;
    volatile unsigned int MCS3_EIRQ:1;
    volatile unsigned int MCS4_EIRQ:1;
    volatile unsigned int MCS5_EIRQ:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int SPE0_EIRQ:1;
    volatile unsigned int SPE1_EIRQ:1;
    volatile unsigned int SPE2_EIRQ:1;
    volatile unsigned int SPE3_EIRQ:1;
    volatile unsigned int CMP_EIRQ:1;
    volatile unsigned int DPLL_EIRQ:1;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_ICM_IRQG_MEI_Bits;


typedef struct _Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits
{
    volatile unsigned int SEL0:4;
    volatile unsigned int SEL1:4;
    volatile unsigned int SEL2:4;
    volatile unsigned int SEL3:4;
    volatile unsigned int SEL4:4;
    volatile unsigned int SEL5:4;
    volatile unsigned int SEL6:4;
    volatile unsigned int SEL7:4;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_DSADC_INSEL_Bits
{
    volatile unsigned int INSEL0:4;
    volatile unsigned int INSEL1:4;
    volatile unsigned int INSEL2:4;
    volatile unsigned int INSEL3:4;
    volatile unsigned int INSEL4:4;
    volatile unsigned int INSEL5:4;
    volatile unsigned int INSEL6:4;
    volatile unsigned int INSEL7:4;
} Ifx_GTM_INOUTSEL_DSADC_INSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_DSADC_OUTSEL0_Bits
{
    volatile unsigned int SEL0:3;
    volatile unsigned int reserved_3:1;
    volatile unsigned int SEL1:3;
    volatile unsigned int reserved_7:1;
    volatile unsigned int SEL2:3;
    volatile unsigned int reserved_11:1;
    volatile unsigned int SEL3:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int SEL4:3;
    volatile unsigned int reserved_19:1;
    volatile unsigned int SEL5:3;
    volatile unsigned int reserved_23:1;
    volatile unsigned int SEL6:3;
    volatile unsigned int reserved_27:1;
    volatile unsigned int SEL7:3;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_INOUTSEL_DSADC_OUTSEL0_Bits;


typedef struct _Ifx_GTM_INOUTSEL_DSADC_OUTSEL1_Bits
{
    volatile unsigned int SEL8:3;
    volatile unsigned int reserved_3:1;
    volatile unsigned int SEL9:3;
    volatile unsigned int reserved_7:25;
} Ifx_GTM_INOUTSEL_DSADC_OUTSEL1_Bits;


typedef struct _Ifx_GTM_INOUTSEL_PSI5_OUTSEL0_Bits
{
    volatile unsigned int SEL0:4;
    volatile unsigned int SEL1:4;
    volatile unsigned int SEL2:4;
    volatile unsigned int SEL3:4;
    volatile unsigned int SEL4:4;
    volatile unsigned int SEL5:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_INOUTSEL_PSI5_OUTSEL0_Bits;


typedef struct _Ifx_GTM_INOUTSEL_PSI5S_OUTSEL_Bits
{
    volatile unsigned int SEL0:4;
    volatile unsigned int SEL1:4;
    volatile unsigned int SEL2:4;
    volatile unsigned int SEL3:4;
    volatile unsigned int SEL4:4;
    volatile unsigned int SEL5:4;
    volatile unsigned int SEL6:4;
    volatile unsigned int SEL7:4;
} Ifx_GTM_INOUTSEL_PSI5S_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_T_OUTSEL_Bits
{
    volatile unsigned int SEL0:2;
    volatile unsigned int SEL1:2;
    volatile unsigned int SEL2:2;
    volatile unsigned int SEL3:2;
    volatile unsigned int SEL4:2;
    volatile unsigned int SEL5:2;
    volatile unsigned int SEL6:2;
    volatile unsigned int SEL7:2;
    volatile unsigned int SEL8:2;
    volatile unsigned int SEL9:2;
    volatile unsigned int SEL10:2;
    volatile unsigned int SEL11:2;
    volatile unsigned int SEL12:2;
    volatile unsigned int SEL13:2;
    volatile unsigned int SEL14:2;
    volatile unsigned int SEL15:2;
} Ifx_GTM_INOUTSEL_T_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_TIM_INSEL_Bits
{
    volatile unsigned int CH0SEL:4;
    volatile unsigned int CH1SEL:4;
    volatile unsigned int CH2SEL:4;
    volatile unsigned int CH3SEL:4;
    volatile unsigned int CH4SEL:4;
    volatile unsigned int CH5SEL:4;
    volatile unsigned int CH6SEL:4;
    volatile unsigned int CH7SEL:4;
} Ifx_GTM_INOUTSEL_TIM_INSEL_Bits;


typedef struct _Ifx_GTM_IRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_IRQ_EN:1;
    volatile unsigned int AEI_USP_ADDR_IRQ_EN:1;
    volatile unsigned int AEI_IM_ADDR_IRQ_EN:1;
    volatile unsigned int AEI_USP_BE_IRQ_EN:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_IRQ_EN_Bits;


typedef struct _Ifx_GTM_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_AEI_TO_XPT:1;
    volatile unsigned int TRG_AEI_USP_ADDR:1;
    volatile unsigned int TRG_AEI_IM_ADDR:1;
    volatile unsigned int TRG_AEI_USP_BE:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_IRQ_NOTIFY_Bits
{
    volatile unsigned int AEI_TO_XPT:1;
    volatile unsigned int AEI_USP_ADDR:1;
    volatile unsigned int AEI_IM_ADDR:1;
    volatile unsigned int AEI_USP_BE:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_KRST0_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int RSTSTAT:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_KRST0_Bits;


typedef struct _Ifx_GTM_KRST1_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_KRST1_Bits;


typedef struct _Ifx_GTM_KRSTCLR_Bits
{
    volatile unsigned int CLR:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_KRSTCLR_Bits;


typedef struct _Ifx_GTM_MAP_CTRL_Bits
{
    volatile unsigned int TSEL:1;
    volatile unsigned int SSL:3;
    volatile unsigned int LSEL:1;
    volatile unsigned int reserved_5:11;
    volatile unsigned int TSPP0_EN:1;
    volatile unsigned int TSPP0_DLD:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int TSPP0_I0V:1;
    volatile unsigned int TSPP0_I1V:1;
    volatile unsigned int TSPP0_I2V:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int TSPP1_EN:1;
    volatile unsigned int TSPP1_DLD:1;
    volatile unsigned int reserved_26:2;
    volatile unsigned int TSPP1_I0V:1;
    volatile unsigned int TSPP1_I1V:1;
    volatile unsigned int TSPP1_I2V:1;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_MAP_CTRL_Bits;


typedef struct _Ifx_GTM_MCFG_CTRL_Bits
{
    volatile unsigned int MEM0:2;
    volatile unsigned int MEM1:2;
    volatile unsigned int MEM2:2;
    volatile unsigned int MEM3:2;
    volatile unsigned int MEM4:2;
    volatile unsigned int MEM5:2;
    volatile unsigned int reserved_12:20;
} Ifx_GTM_MCFG_CTRL_Bits;


typedef struct _Ifx_GTM_MCS_CH0_CTRG_Bits
{
    volatile unsigned int TRG0:1;
    volatile unsigned int TRG1:1;
    volatile unsigned int TRG2:1;
    volatile unsigned int TRG3:1;
    volatile unsigned int TRG4:1;
    volatile unsigned int TRG5:1;
    volatile unsigned int TRG6:1;
    volatile unsigned int TRG7:1;
    volatile unsigned int TRG8:1;
    volatile unsigned int TRG9:1;
    volatile unsigned int TRG10:1;
    volatile unsigned int TRG11:1;
    volatile unsigned int TRG12:1;
    volatile unsigned int TRG13:1;
    volatile unsigned int TRG14:1;
    volatile unsigned int TRG15:1;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_MCS_CH0_CTRG_Bits;


typedef struct _Ifx_GTM_MCS_CH0_STRG_Bits
{
    volatile unsigned int TRG0:1;
    volatile unsigned int TRG1:1;
    volatile unsigned int TRG2:1;
    volatile unsigned int TRG3:1;
    volatile unsigned int TRG4:1;
    volatile unsigned int TRG5:1;
    volatile unsigned int TRG6:1;
    volatile unsigned int TRG7:1;
    volatile unsigned int TRG8:1;
    volatile unsigned int TRG9:1;
    volatile unsigned int TRG10:1;
    volatile unsigned int TRG11:1;
    volatile unsigned int TRG12:1;
    volatile unsigned int TRG13:1;
    volatile unsigned int TRG14:1;
    volatile unsigned int TRG15:1;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_MCS_CH0_STRG_Bits;


typedef struct _Ifx_GTM_MCS_CH_ACB_Bits
{
    volatile unsigned int ACB0:1;
    volatile unsigned int ACB1:1;
    volatile unsigned int ACB2:1;
    volatile unsigned int ACB3:1;
    volatile unsigned int ACB4:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_MCS_CH_ACB_Bits;


typedef struct _Ifx_GTM_MCS_CH_CTRL_Bits
{
    volatile unsigned int EN:1;
    volatile unsigned int IRQ:1;
    volatile unsigned int ERR:1;
    volatile unsigned int reserved_3:1;
    volatile unsigned int CY:1;
    volatile unsigned int Z:1;
    volatile unsigned int V:1;
    volatile unsigned int N:1;
    volatile unsigned int CAT:1;
    volatile unsigned int CWT:1;
    volatile unsigned int reserved_10:6;
    volatile unsigned int SP_CNT:3;
    volatile unsigned int reserved_19:13;
} Ifx_GTM_MCS_CH_CTRL_Bits;


typedef struct _Ifx_GTM_MCS_CH_EIRQ_EN_Bits
{
    volatile unsigned int MCS_EIRQ_EN:1;
    volatile unsigned int STK_ERR_EIRQ_EN:1;
    volatile unsigned int MEM_ERR_EIRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_EN_Bits
{
    volatile unsigned int MCS_IRQ_EN:1;
    volatile unsigned int STK_ERR_IRQ_EN:1;
    volatile unsigned int MEM_ERR_IRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_MCS_IRQ:1;
    volatile unsigned int TRG_STK_ERR_IRQ:1;
    volatile unsigned int TRG_MEM_ERR_IRQ:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_MCS_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int MCS_IRQ:1;
    volatile unsigned int STK_ERR_IRQ:1;
    volatile unsigned int MEM_ERR_IRQ:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_MCS_CH_PC_Bits
{
    volatile unsigned int PC:14;
    volatile unsigned int reserved_14:18;
} Ifx_GTM_MCS_CH_PC_Bits;


typedef struct _Ifx_GTM_MCS_CH_R0_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R0_Bits;


typedef struct _Ifx_GTM_MCS_CH_R1_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R1_Bits;


typedef struct _Ifx_GTM_MCS_CH_R2_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R2_Bits;


typedef struct _Ifx_GTM_MCS_CH_R3_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R3_Bits;


typedef struct _Ifx_GTM_MCS_CH_R4_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R4_Bits;


typedef struct _Ifx_GTM_MCS_CH_R5_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R5_Bits;


typedef struct _Ifx_GTM_MCS_CH_R6_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R6_Bits;


typedef struct _Ifx_GTM_MCS_CH_R7_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R7_Bits;


typedef struct _Ifx_GTM_MCS_CTRL_Bits
{
    volatile unsigned int SCHED:1;
    volatile unsigned int HLT_SP_OFL:1;
    volatile unsigned int reserved_2:14;
    volatile unsigned int RAM_RST:1;
    volatile unsigned int reserved_17:15;
} Ifx_GTM_MCS_CTRL_Bits;


typedef struct _Ifx_GTM_MCS_ERR_Bits
{
    volatile unsigned int ERR0:1;
    volatile unsigned int ERR1:1;
    volatile unsigned int ERR2:1;
    volatile unsigned int ERR3:1;
    volatile unsigned int ERR4:1;
    volatile unsigned int ERR5:1;
    volatile unsigned int ERR6:1;
    volatile unsigned int ERR7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_ERR_Bits;


typedef struct _Ifx_GTM_MCS_RST_Bits
{
    volatile unsigned int RST0:1;
    volatile unsigned int RST1:1;
    volatile unsigned int RST2:1;
    volatile unsigned int RST3:1;
    volatile unsigned int RST4:1;
    volatile unsigned int RST5:1;
    volatile unsigned int RST6:1;
    volatile unsigned int RST7:1;
    volatile unsigned int CAT0:1;
    volatile unsigned int CAT1:1;
    volatile unsigned int CAT2:1;
    volatile unsigned int CAT3:1;
    volatile unsigned int CAT4:1;
    volatile unsigned int CAT5:1;
    volatile unsigned int CAT6:1;
    volatile unsigned int CAT7:1;
    volatile unsigned int CWT0:1;
    volatile unsigned int CWT1:1;
    volatile unsigned int CWT2:1;
    volatile unsigned int CWT3:1;
    volatile unsigned int CWT4:1;
    volatile unsigned int CWT5:1;
    volatile unsigned int CWT6:1;
    volatile unsigned int CWT7:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_RST_Bits;


typedef struct _Ifx_GTM_MCSINTCLR_Bits
{
    volatile unsigned int MCS000:1;
    volatile unsigned int MCS001:1;
    volatile unsigned int MCS010:1;
    volatile unsigned int MCS011:1;
    volatile unsigned int MCS100:1;
    volatile unsigned int MCS101:1;
    volatile unsigned int MCS110:1;
    volatile unsigned int MCS111:1;
    volatile unsigned int MCS200:1;
    volatile unsigned int MCS201:1;
    volatile unsigned int MCS210:1;
    volatile unsigned int MCS211:1;
    volatile unsigned int MCS300:1;
    volatile unsigned int MCS301:1;
    volatile unsigned int MCS310:1;
    volatile unsigned int MCS311:1;
    volatile unsigned int MCS400:1;
    volatile unsigned int MCS401:1;
    volatile unsigned int MCS410:1;
    volatile unsigned int MCS411:1;
    volatile unsigned int MCS500:1;
    volatile unsigned int MCS501:1;
    volatile unsigned int MCS510:1;
    volatile unsigned int MCS511:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCSINTCLR_Bits;


typedef struct _Ifx_GTM_MCSINTSTAT_Bits
{
    volatile unsigned int MCS000:1;
    volatile unsigned int MCS001:1;
    volatile unsigned int MCS010:1;
    volatile unsigned int MCS011:1;
    volatile unsigned int MCS100:1;
    volatile unsigned int MCS101:1;
    volatile unsigned int MCS110:1;
    volatile unsigned int MCS111:1;
    volatile unsigned int MCS200:1;
    volatile unsigned int MCS201:1;
    volatile unsigned int MCS210:1;
    volatile unsigned int MCS211:1;
    volatile unsigned int MCS300:1;
    volatile unsigned int MCS301:1;
    volatile unsigned int MCS310:1;
    volatile unsigned int MCS311:1;
    volatile unsigned int MCS400:1;
    volatile unsigned int MCS401:1;
    volatile unsigned int MCS410:1;
    volatile unsigned int MCS411:1;
    volatile unsigned int MCS500:1;
    volatile unsigned int MCS501:1;
    volatile unsigned int MCS510:1;
    volatile unsigned int MCS511:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCSINTSTAT_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_0_Bits
{
    volatile unsigned int MCA_0_0:1;
    volatile unsigned int MCA_0_1:1;
    volatile unsigned int MCA_0_2:1;
    volatile unsigned int MCA_0_3:1;
    volatile unsigned int MCA_0_4:1;
    volatile unsigned int MCA_0_5:1;
    volatile unsigned int MCA_0_6:1;
    volatile unsigned int MCA_0_7:1;
    volatile unsigned int MCA_1_0:1;
    volatile unsigned int MCA_1_1:1;
    volatile unsigned int MCA_1_2:1;
    volatile unsigned int MCA_1_3:1;
    volatile unsigned int MCA_1_4:1;
    volatile unsigned int MCA_1_5:1;
    volatile unsigned int MCA_1_6:1;
    volatile unsigned int MCA_1_7:1;
    volatile unsigned int MCA_2_0:1;
    volatile unsigned int MCA_2_1:1;
    volatile unsigned int MCA_2_2:1;
    volatile unsigned int MCA_2_3:1;
    volatile unsigned int MCA_2_4:1;
    volatile unsigned int MCA_2_5:1;
    volatile unsigned int MCA_2_6:1;
    volatile unsigned int MCA_2_7:1;
    volatile unsigned int MCA_3_0:1;
    volatile unsigned int MCA_3_1:1;
    volatile unsigned int MCA_3_2:1;
    volatile unsigned int MCA_3_3:1;
    volatile unsigned int MCA_3_4:1;
    volatile unsigned int MCA_3_5:1;
    volatile unsigned int MCA_3_6:1;
    volatile unsigned int MCA_3_7:1;
} Ifx_GTM_MON_ACTIVITY_0_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_1_Bits
{
    volatile unsigned int MCA_4_0:1;
    volatile unsigned int MCA_4_1:1;
    volatile unsigned int MCA_4_2:1;
    volatile unsigned int MCA_4_3:1;
    volatile unsigned int MCA_4_4:1;
    volatile unsigned int MCA_4_5:1;
    volatile unsigned int MCA_4_6:1;
    volatile unsigned int MCA_4_7:1;
    volatile unsigned int MCA_5_0:1;
    volatile unsigned int MCA_5_1:1;
    volatile unsigned int MCA_5_2:1;
    volatile unsigned int MCA_5_3:1;
    volatile unsigned int MCA_5_4:1;
    volatile unsigned int MCA_5_5:1;
    volatile unsigned int MCA_5_6:1;
    volatile unsigned int MCA_5_7:1;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_MON_ACTIVITY_1_Bits;


typedef struct _Ifx_GTM_MON_STATUS_Bits
{
    volatile unsigned int ACT_CMU0:1;
    volatile unsigned int ACT_CMU1:1;
    volatile unsigned int ACT_CMU2:1;
    volatile unsigned int ACT_CMU3:1;
    volatile unsigned int ACT_CMU4:1;
    volatile unsigned int ACT_CMU5:1;
    volatile unsigned int ACT_CMU6:1;
    volatile unsigned int ACT_CMU7:1;
    volatile unsigned int ACT_CMUFX0:1;
    volatile unsigned int ACT_CMUFX1:1;
    volatile unsigned int ACT_CMUFX2:1;
    volatile unsigned int ACT_CMUFX3:1;
    volatile unsigned int ACT_CMUFX4:1;
    volatile unsigned int reserved_13:3;
    volatile unsigned int CMP_ERR:1;
    volatile unsigned int reserved_17:3;
    volatile unsigned int MCS0_ERR:1;
    volatile unsigned int MCS1_ERR:1;
    volatile unsigned int MCS2_ERR:1;
    volatile unsigned int MCS3_ERR:1;
    volatile unsigned int MCS4_ERR:1;
    volatile unsigned int MCS5_ERR:1;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_MON_STATUS_Bits;


typedef struct _Ifx_GTM_MSCIN_INHCON_Bits
{
    volatile unsigned int SEL0:2;
    volatile unsigned int SEL1:2;
    volatile unsigned int SEL2:2;
    volatile unsigned int SEL3:2;
    volatile unsigned int SEL4:2;
    volatile unsigned int SEL5:2;
    volatile unsigned int SEL6:2;
    volatile unsigned int SEL7:2;
    volatile unsigned int SEL8:2;
    volatile unsigned int SEL9:2;
    volatile unsigned int SEL10:2;
    volatile unsigned int SEL11:2;
    volatile unsigned int SEL12:2;
    volatile unsigned int SEL13:2;
    volatile unsigned int SEL14:2;
    volatile unsigned int SEL15:2;
} Ifx_GTM_MSCIN_INHCON_Bits;


typedef struct _Ifx_GTM_MSCIN_INLCON_Bits
{
    volatile unsigned int SEL0:2;
    volatile unsigned int SEL1:2;
    volatile unsigned int SEL2:2;
    volatile unsigned int SEL3:2;
    volatile unsigned int SEL4:2;
    volatile unsigned int SEL5:2;
    volatile unsigned int SEL6:2;
    volatile unsigned int SEL7:2;
    volatile unsigned int SEL8:2;
    volatile unsigned int SEL9:2;
    volatile unsigned int SEL10:2;
    volatile unsigned int SEL11:2;
    volatile unsigned int SEL12:2;
    volatile unsigned int SEL13:2;
    volatile unsigned int SEL14:2;
    volatile unsigned int SEL15:2;
} Ifx_GTM_MSCIN_INLCON_Bits;


typedef struct _Ifx_GTM_MSCSET_CON0_Bits
{
    volatile unsigned int SEL0:5;
    volatile unsigned int reserved_5:3;
    volatile unsigned int SEL1:5;
    volatile unsigned int reserved_13:3;
    volatile unsigned int SEL2:5;
    volatile unsigned int reserved_21:3;
    volatile unsigned int SEL3:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_MSCSET_CON0_Bits;


typedef struct _Ifx_GTM_MSCSET_CON1_Bits
{
    volatile unsigned int SEL4:5;
    volatile unsigned int reserved_5:3;
    volatile unsigned int SEL5:5;
    volatile unsigned int reserved_13:3;
    volatile unsigned int SEL6:5;
    volatile unsigned int reserved_21:3;
    volatile unsigned int SEL7:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_MSCSET_CON1_Bits;


typedef struct _Ifx_GTM_MSCSET_CON2_Bits
{
    volatile unsigned int SEL8:5;
    volatile unsigned int reserved_5:3;
    volatile unsigned int SEL9:5;
    volatile unsigned int reserved_13:3;
    volatile unsigned int SEL10:5;
    volatile unsigned int reserved_21:3;
    volatile unsigned int SEL11:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_MSCSET_CON2_Bits;


typedef struct _Ifx_GTM_MSCSET_CON3_Bits
{
    volatile unsigned int SEL12:5;
    volatile unsigned int reserved_5:3;
    volatile unsigned int SEL13:5;
    volatile unsigned int reserved_13:3;
    volatile unsigned int SEL14:5;
    volatile unsigned int reserved_21:3;
    volatile unsigned int SEL15:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_MSCSET_CON3_Bits;


typedef struct _Ifx_GTM_OCS_Bits
{
    volatile unsigned int reserved_0:24;
    volatile unsigned int SUS:4;
    volatile unsigned int SUS_P:1;
    volatile unsigned int SUSSTA:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_OCS_Bits;


typedef struct _Ifx_GTM_ODA_Bits
{
    volatile unsigned int DDREN:1;
    volatile unsigned int DREN:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ODA_Bits;


typedef struct _Ifx_GTM_OTBU0T_Bits
{
    volatile unsigned int CV:27;
    volatile unsigned int reserved_27:1;
    volatile unsigned int CM:2;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_OTBU0T_Bits;


typedef struct _Ifx_GTM_OTBU1T_Bits
{
    volatile unsigned int CV:24;
    volatile unsigned int reserved_24:4;
    volatile unsigned int EN:1;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_OTBU1T_Bits;


typedef struct _Ifx_GTM_OTBU2T_Bits
{
    volatile unsigned int CV:24;
    volatile unsigned int reserved_24:4;
    volatile unsigned int EN:1;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_OTBU2T_Bits;


typedef struct _Ifx_GTM_OTSC0_Bits
{
    volatile unsigned int B0LMT:3;
    volatile unsigned int reserved_3:1;
    volatile unsigned int B0LMI:4;
    volatile unsigned int B0HMT:3;
    volatile unsigned int reserved_11:1;
    volatile unsigned int B0HMI:4;
    volatile unsigned int B1LMT:3;
    volatile unsigned int reserved_19:1;
    volatile unsigned int B1LMI:4;
    volatile unsigned int B1HMT:3;
    volatile unsigned int reserved_27:1;
    volatile unsigned int B1HMI:4;
} Ifx_GTM_OTSC0_Bits;


typedef struct _Ifx_GTM_OTSC1_Bits
{
    volatile unsigned int MCS:4;
    volatile unsigned int MI:4;
    volatile unsigned int reserved_8:1;
    volatile unsigned int MOE:1;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_OTSC1_Bits;


typedef struct _Ifx_GTM_OTSS_Bits
{
    volatile unsigned int OTGB0:4;
    volatile unsigned int reserved_4:4;
    volatile unsigned int OTGB1:4;
    volatile unsigned int reserved_12:4;
    volatile unsigned int OTGB2:4;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_OTSS_Bits;


typedef struct _Ifx_GTM_REV_Bits
{
    volatile unsigned int YEAR:8;
    volatile unsigned int NO:4;
    volatile unsigned int MINOR:4;
    volatile unsigned int MAJOR:4;
    volatile unsigned int DEV_CODE0:4;
    volatile unsigned int DEV_CODE1:4;
    volatile unsigned int DEV_CODE2:4;
} Ifx_GTM_REV_Bits;


typedef struct _Ifx_GTM_RST_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_RST_Bits;


typedef struct _Ifx_GTM_SPE_CMP_Bits
{
    volatile unsigned int CMP:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_SPE_CMP_Bits;


typedef struct _Ifx_GTM_SPE_CNT_Bits
{
    volatile unsigned int CNT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_SPE_CNT_Bits;


typedef struct _Ifx_GTM_SPE_CTRL_STAT_Bits
{
    volatile unsigned int SPE_EN:1;
    volatile unsigned int SIE0:1;
    volatile unsigned int SIE1:1;
    volatile unsigned int SIE2:1;
    volatile unsigned int TRIG_SEL:2;
    volatile unsigned int TIM_SEL:1;
    volatile unsigned int FSOM:1;
    volatile unsigned int SPE_PAT_PTR:3;
    volatile unsigned int reserved_11:1;
    volatile unsigned int AIP:3;
    volatile unsigned int ADIR:1;
    volatile unsigned int PIP:3;
    volatile unsigned int PDIR:1;
    volatile unsigned int NIP:3;
    volatile unsigned int reserved_23:1;
    volatile unsigned int FSOL:8;
} Ifx_GTM_SPE_CTRL_STAT_Bits;


typedef struct _Ifx_GTM_SPE_EIRQ_EN_Bits
{
    volatile unsigned int SPE_NIPD_EIRQ_EN:1;
    volatile unsigned int SPE_DCHG_EIRQ_EN:1;
    volatile unsigned int SPE_PERR_EIRQ_EN:1;
    volatile unsigned int SPE_BIS_EIRQ_EN:1;
    volatile unsigned int SPE_RCMP_EIRQ_EN:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_EN_Bits
{
    volatile unsigned int SPE_NIPD_IRQ_EN:1;
    volatile unsigned int SPE_DCHG_IRQ_EN:1;
    volatile unsigned int SPE_PERR_IRQ_EN:1;
    volatile unsigned int SPE_BIS_IRQ_EN:1;
    volatile unsigned int SPE_RCMP_IRQ_EN:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_EN_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_SPE_NIPD:1;
    volatile unsigned int TRG_SPE_DCHG:1;
    volatile unsigned int TRG_SPE_PERR:1;
    volatile unsigned int TRG_SPE_BIS:1;
    volatile unsigned int TRG_SPE_RCMP:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_SPE_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_NOTIFY_Bits
{
    volatile unsigned int SPE_NIPD:1;
    volatile unsigned int SPE_DCHG:1;
    volatile unsigned int SPE_PERR:1;
    volatile unsigned int SPE_BIS:1;
    volatile unsigned int SPE_RCMP:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_SPE_OUT_CTRL_Bits
{
    volatile unsigned int SPE_OUT_CTRL:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_SPE_OUT_CTRL_Bits;


typedef struct _Ifx_GTM_SPE_OUT_PAT_Bits
{
    volatile unsigned int SPE_OUT_PAT:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_SPE_OUT_PAT_Bits;


typedef struct _Ifx_GTM_SPE_PAT_Bits
{
    volatile unsigned int IP0_VAL:1;
    volatile unsigned int IP0_PAT:3;
    volatile unsigned int IP1_VAL:1;
    volatile unsigned int IP1_PAT:3;
    volatile unsigned int IP2_VAL:1;
    volatile unsigned int IP2_PAT:3;
    volatile unsigned int IP3_VAL:1;
    volatile unsigned int IP3_PAT:3;
    volatile unsigned int IP4_VAL:1;
    volatile unsigned int IP4_PAT:3;
    volatile unsigned int IP5_VAL:1;
    volatile unsigned int IP5_PAT:3;
    volatile unsigned int IP6_VAL:1;
    volatile unsigned int IP6_PAT:3;
    volatile unsigned int IP7_VAL:1;
    volatile unsigned int IP7_PAT:3;
} Ifx_GTM_SPE_PAT_Bits;


typedef struct _Ifx_GTM_TBU_CH0_BASE_Bits
{
    volatile unsigned int BASE:27;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_TBU_CH0_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH0_CTRL_Bits
{
    volatile unsigned int LOW_RES:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH0_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH1_BASE_Bits
{
    volatile unsigned int BASE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH1_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH1_CTRL_Bits
{
    volatile unsigned int CH_MODE:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH1_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH2_BASE_Bits
{
    volatile unsigned int BASE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH2_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH2_CTRL_Bits
{
    volatile unsigned int CH_MODE:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH2_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CHEN_Bits
{
    volatile unsigned int ENDIS_CH0:2;
    volatile unsigned int ENDIS_CH1:2;
    volatile unsigned int ENDIS_CH2:2;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TBU_CHEN_Bits;


typedef struct _Ifx_GTM_TIM_AUX_IN_SRC_Bits
{
    volatile unsigned int SRC_CH0:1;
    volatile unsigned int SRC_CH1:1;
    volatile unsigned int SRC_CH2:1;
    volatile unsigned int SRC_CH3:1;
    volatile unsigned int SRC_CH4:1;
    volatile unsigned int SRC_CH5:1;
    volatile unsigned int SRC_CH6:1;
    volatile unsigned int SRC_CH7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_TIM_AUX_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNT_Bits
{
    volatile unsigned int CNT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_CNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNTS_Bits
{
    volatile unsigned int CNTS:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_CNTS_Bits;


typedef struct _Ifx_GTM_TIM_CH_CTRL_Bits
{
    volatile unsigned int TIM_EN:1;
    volatile unsigned int TIM_MODE:3;
    volatile unsigned int OSM:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int CICTRL:1;
    volatile unsigned int TBU0_SEL:1;
    volatile unsigned int GPR0_SEL:2;
    volatile unsigned int GPR1_SEL:2;
    volatile unsigned int CNTS_SEL:1;
    volatile unsigned int DSL:1;
    volatile unsigned int ISL:1;
    volatile unsigned int ECNT_RESET:1;
    volatile unsigned int FLT_EN:1;
    volatile unsigned int FLT_CNT_FRQ:2;
    volatile unsigned int EXT_CAP_EN:1;
    volatile unsigned int FLT_MODE_RE:1;
    volatile unsigned int FLT_CTR_RE:1;
    volatile unsigned int FLT_MODE_FE:1;
    volatile unsigned int FLT_CTR_FE:1;
    volatile unsigned int CLK_SEL:3;
    volatile unsigned int FR_ECNT_OFL:1;
    volatile unsigned int EGPR0_SEL:1;
    volatile unsigned int EGPR1_SEL:1;
    volatile unsigned int TOCTRL:2;
} Ifx_GTM_TIM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECNT_Bits
{
    volatile unsigned int ECNT:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TIM_CH_ECNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECTRL_Bits
{
    volatile unsigned int EXT_CAP_SRC:3;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_TIM_CH_ECTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_EIRQ_EN_Bits
{
    volatile unsigned int NEWVAL_EIRQ_EN:1;
    volatile unsigned int ECNTOFL_EIRQ_EN:1;
    volatile unsigned int CNTOFL_EIRQ_EN:1;
    volatile unsigned int GPROFL_EIRQ_EN:1;
    volatile unsigned int TODET_EIRQ_EN:1;
    volatile unsigned int GLITCHDET_EIRQ_EN:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_FE_Bits
{
    volatile unsigned int FLT_FE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_FLT_FE_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_RE_Bits
{
    volatile unsigned int FLT_RE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_FLT_RE_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR0_Bits
{
    volatile unsigned int GPR0:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_GPR0_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR1_Bits
{
    volatile unsigned int GPR1:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_GPR1_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_EN_Bits
{
    volatile unsigned int NEWVAL_IRQ_EN:1;
    volatile unsigned int ECNTOFL_IRQ_EN:1;
    volatile unsigned int CNTOFL_IRQ_EN:1;
    volatile unsigned int GPROFL_IRQ_EN:1;
    volatile unsigned int TODET_IRQ_EN:1;
    volatile unsigned int GLITCHDET_IRQ_EN:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEWVAL:1;
    volatile unsigned int TRG_ECNTOFL:1;
    volatile unsigned int TRG_CNTOFL:1;
    volatile unsigned int TRG_GPROFL:1;
    volatile unsigned int TRG_TODET:1;
    volatile unsigned int TRG_GLITCHDET:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TIM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEWVAL:1;
    volatile unsigned int ECNTOFL:1;
    volatile unsigned int CNTOFL:1;
    volatile unsigned int GPROFL:1;
    volatile unsigned int TODET:1;
    volatile unsigned int GLITCHDET:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUC_Bits
{
    volatile unsigned int TO_CNT:8;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_TIM_CH_TDUC_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUV_Bits
{
    volatile unsigned int TOV:8;
    volatile unsigned int reserved_8:20;
    volatile unsigned int TCS:3;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_TIM_CH_TDUV_Bits;


typedef struct _Ifx_GTM_TIM_IN_SRC_Bits
{
    volatile unsigned int VAL_0:2;
    volatile unsigned int MODE_0:2;
    volatile unsigned int VAL_1:2;
    volatile unsigned int MODE_1:2;
    volatile unsigned int VAL_2:2;
    volatile unsigned int MODE_2:2;
    volatile unsigned int VAL_3:2;
    volatile unsigned int MODE_3:2;
    volatile unsigned int VAL_4:2;
    volatile unsigned int MODE_4:2;
    volatile unsigned int VAL_5:2;
    volatile unsigned int MODE_5:2;
    volatile unsigned int VAL_6:2;
    volatile unsigned int MODE_6:2;
    volatile unsigned int VAL_7:2;
    volatile unsigned int MODE_7:2;
} Ifx_GTM_TIM_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_RST_Bits
{
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_TIM_RST_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM0_Bits
{
    volatile unsigned int CM0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM1_Bits
{
    volatile unsigned int CM1:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_TOM_CH_CN0_Bits
{
    volatile unsigned int CN0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CTRL_Bits
{
    volatile unsigned int reserved_0:11;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int reserved_15:5;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int OSM:1;
    volatile unsigned int BITREV:1;
    volatile unsigned int SPEM:1;
    volatile unsigned int GCM:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_TOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN:1;
    volatile unsigned int CCU1TC_IRQ_EN:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC0:1;
    volatile unsigned int TRG_CCU1TC0:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC:1;
    volatile unsigned int CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR0_Bits
{
    volatile unsigned int SR0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR1_Bits
{
    volatile unsigned int SR1:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_TOM_CH_STAT_Bits
{
    volatile unsigned int OL:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_TOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ACT_TB_Bits
{
    volatile unsigned int ACT_TB:24;
    volatile unsigned int TB_TRIG:1;
    volatile unsigned int TBU_SEL:2;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_TOM_TGC0_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0:2;
    volatile unsigned int ENDIS_STAT1:2;
    volatile unsigned int ENDIS_STAT2:2;
    volatile unsigned int ENDIS_STAT3:2;
    volatile unsigned int ENDIS_STAT4:2;
    volatile unsigned int ENDIS_STAT5:2;
    volatile unsigned int ENDIS_STAT6:2;
    volatile unsigned int ENDIS_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0:2;
    volatile unsigned int FUPD_CTRL1:2;
    volatile unsigned int FUPD_CTRL2:2;
    volatile unsigned int FUPD_CTRL3:2;
    volatile unsigned int FUPD_CTRL4:2;
    volatile unsigned int FUPD_CTRL5:2;
    volatile unsigned int FUPD_CTRL6:2;
    volatile unsigned int FUPD_CTRL7:2;
    volatile unsigned int RSTCN0_CH0:2;
    volatile unsigned int RSTCN0_CH1:2;
    volatile unsigned int RSTCN0_CH2:2;
    volatile unsigned int RSTCN0_CH3:2;
    volatile unsigned int RSTCN0_CH4:2;
    volatile unsigned int RSTCN0_CH5:2;
    volatile unsigned int RSTCN0_CH6:2;
    volatile unsigned int RSTCN0_CH7:2;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int UPEN_CTRL0:2;
    volatile unsigned int UPEN_CTRL1:2;
    volatile unsigned int UPEN_CTRL2:2;
    volatile unsigned int UPEN_CTRL3:2;
    volatile unsigned int UPEN_CTRL4:2;
    volatile unsigned int UPEN_CTRL5:2;
    volatile unsigned int UPEN_CTRL6:2;
    volatile unsigned int UPEN_CTRL7:2;
} Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0:2;
    volatile unsigned int INT_TRIG1:2;
    volatile unsigned int INT_TRIG2:2;
    volatile unsigned int INT_TRIG3:2;
    volatile unsigned int INT_TRIG4:2;
    volatile unsigned int INT_TRIG5:2;
    volatile unsigned int INT_TRIG6:2;
    volatile unsigned int INT_TRIG7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC0_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0:2;
    volatile unsigned int OUTEN_CTRL1:2;
    volatile unsigned int OUTEN_CTRL2:2;
    volatile unsigned int OUTEN_CTRL3:2;
    volatile unsigned int OUTEN_CTRL4:2;
    volatile unsigned int OUTEN_CTRL5:2;
    volatile unsigned int OUTEN_CTRL6:2;
    volatile unsigned int OUTEN_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0:2;
    volatile unsigned int OUTEN_STAT1:2;
    volatile unsigned int OUTEN_STAT2:2;
    volatile unsigned int OUTEN_STAT3:2;
    volatile unsigned int OUTEN_STAT4:2;
    volatile unsigned int OUTEN_STAT5:2;
    volatile unsigned int OUTEN_STAT6:2;
    volatile unsigned int OUTEN_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ACT_TB_Bits
{
    volatile unsigned int ACT_TB:24;
    volatile unsigned int TB_TRIG:1;
    volatile unsigned int TBU_SEL:2;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_TOM_TGC1_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0:2;
    volatile unsigned int ENDIS_STAT1:2;
    volatile unsigned int ENDIS_STAT2:2;
    volatile unsigned int ENDIS_STAT3:2;
    volatile unsigned int ENDIS_STAT4:2;
    volatile unsigned int ENDIS_STAT5:2;
    volatile unsigned int ENDIS_STAT6:2;
    volatile unsigned int ENDIS_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0:2;
    volatile unsigned int FUPD_CTRL1:2;
    volatile unsigned int FUPD_CTRL2:2;
    volatile unsigned int FUPD_CTRL3:2;
    volatile unsigned int FUPD_CTRL4:2;
    volatile unsigned int FUPD_CTRL5:2;
    volatile unsigned int FUPD_CTRL6:2;
    volatile unsigned int FUPD_CTRL7:2;
    volatile unsigned int RSTCN0_CH0:2;
    volatile unsigned int RSTCN0_CH1:2;
    volatile unsigned int RSTCN0_CH2:2;
    volatile unsigned int RSTCN0_CH3:2;
    volatile unsigned int RSTCN0_CH4:2;
    volatile unsigned int RSTCN0_CH5:2;
    volatile unsigned int RSTCN0_CH6:2;
    volatile unsigned int RSTCN0_CH7:2;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int UPEN_CTRL0:2;
    volatile unsigned int UPEN_CTRL1:2;
    volatile unsigned int UPEN_CTRL2:2;
    volatile unsigned int UPEN_CTRL3:2;
    volatile unsigned int UPEN_CTRL4:2;
    volatile unsigned int UPEN_CTRL5:2;
    volatile unsigned int UPEN_CTRL6:2;
    volatile unsigned int UPEN_CTRL7:2;
} Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0:2;
    volatile unsigned int INT_TRIG1:2;
    volatile unsigned int INT_TRIG2:2;
    volatile unsigned int INT_TRIG3:2;
    volatile unsigned int INT_TRIG4:2;
    volatile unsigned int INT_TRIG5:2;
    volatile unsigned int INT_TRIG6:2;
    volatile unsigned int INT_TRIG7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC1_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0:2;
    volatile unsigned int OUTEN_CTRL1:2;
    volatile unsigned int OUTEN_CTRL2:2;
    volatile unsigned int OUTEN_CTRL3:2;
    volatile unsigned int OUTEN_CTRL4:2;
    volatile unsigned int OUTEN_CTRL5:2;
    volatile unsigned int OUTEN_CTRL6:2;
    volatile unsigned int OUTEN_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0:2;
    volatile unsigned int OUTEN_STAT1:2;
    volatile unsigned int OUTEN_STAT2:2;
    volatile unsigned int OUTEN_STAT3:2;
    volatile unsigned int OUTEN_STAT4:2;
    volatile unsigned int OUTEN_STAT5:2;
    volatile unsigned int OUTEN_STAT6:2;
    volatile unsigned int OUTEN_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TRIGOUT_Bits
{
    volatile unsigned int INT0:2;
    volatile unsigned int INT1:2;
    volatile unsigned int TRIG0:2;
    volatile unsigned int TRIG1:2;
    volatile unsigned int TRIG2:2;
    volatile unsigned int TRIG3:2;
    volatile unsigned int TRIG4:2;
    volatile unsigned int TRIG5:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TRIGOUT_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN0_Bits B;
} Ifx_GTM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN1_Bits B;
} Ifx_GTM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG0OUT0_Bits B;
} Ifx_GTM_ADCTRIG0OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG0OUT1_Bits B;
} Ifx_GTM_ADCTRIG0OUT1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG1OUT0_Bits B;
} Ifx_GTM_ADCTRIG1OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG1OUT1_Bits B;
} Ifx_GTM_ADCTRIG1OUT1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_AEI_ADDR_XPT_Bits B;
} Ifx_GTM_AEI_ADDR_XPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_AFD_CH_BUF_ACC_Bits B;
} Ifx_GTM_AFD_CH_BUF_ACC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_ARU_ACCESS_Bits B;
} Ifx_GTM_ARU_ARU_ACCESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_DATA_H_Bits B;
} Ifx_GTM_ARU_DATA_H;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_DATA_L_Bits B;
} Ifx_GTM_ARU_DATA_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_DBG_ACCESS0_Bits B;
} Ifx_GTM_ARU_DBG_ACCESS0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_DBG_ACCESS1_Bits B;
} Ifx_GTM_ARU_DBG_ACCESS1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_DBG_DATA0_H_Bits B;
} Ifx_GTM_ARU_DBG_DATA0_H;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_DBG_DATA0_L_Bits B;
} Ifx_GTM_ARU_DBG_DATA0_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_DBG_DATA1_H_Bits B;
} Ifx_GTM_ARU_DBG_DATA1_H;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_DBG_DATA1_L_Bits B;
} Ifx_GTM_ARU_DBG_DATA1_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_IRQ_EN_Bits B;
} Ifx_GTM_ARU_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_IRQ_FORCINT_Bits B;
} Ifx_GTM_ARU_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_IRQ_MODE_Bits B;
} Ifx_GTM_ARU_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ARU_IRQ_NOTIFY_Bits B;
} Ifx_GTM_ARU_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_AGC_ACT_TB_Bits B;
} Ifx_GTM_ATOM_AGC_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits B;
} Ifx_GTM_ATOM_AGC_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_AGC_INT_TRIG_Bits B;
} Ifx_GTM_ATOM_AGC_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits B;
} Ifx_GTM_ATOM_AGC_OUTEN_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_CM0_Bits B;
} Ifx_GTM_ATOM_CH_CM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_CM1_Bits B;
} Ifx_GTM_ATOM_CH_CM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_CN0_Bits B;
} Ifx_GTM_ATOM_CH_CN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_CTRL_Bits B;
} Ifx_GTM_ATOM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_RDADDR_Bits B;
} Ifx_GTM_ATOM_CH_RDADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_SOMC_Bits B;
} Ifx_GTM_ATOM_CH_SOMC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_SOMI_Bits B;
} Ifx_GTM_ATOM_CH_SOMI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_SOMP_Bits B;
} Ifx_GTM_ATOM_CH_SOMP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_SOMS_Bits B;
} Ifx_GTM_ATOM_CH_SOMS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_SR0_Bits B;
} Ifx_GTM_ATOM_CH_SR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_SR1_Bits B;
} Ifx_GTM_ATOM_CH_SR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ATOM_CH_STAT_Bits B;
} Ifx_GTM_ATOM_CH_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_EIRQ_EN_Bits B;
} Ifx_GTM_BRC_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_IRQ_EN_Bits B;
} Ifx_GTM_BRC_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_IRQ_FORCINT_Bits B;
} Ifx_GTM_BRC_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_IRQ_MODE_Bits B;
} Ifx_GTM_BRC_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_IRQ_NOTIFY_Bits B;
} Ifx_GTM_BRC_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_RST_Bits B;
} Ifx_GTM_BRC_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC0_ADDR_Bits B;
} Ifx_GTM_BRC_SRC0_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC0_DEST_Bits B;
} Ifx_GTM_BRC_SRC0_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC10_ADDR_Bits B;
} Ifx_GTM_BRC_SRC10_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC10_DEST_Bits B;
} Ifx_GTM_BRC_SRC10_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC11_ADDR_Bits B;
} Ifx_GTM_BRC_SRC11_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC11_DEST_Bits B;
} Ifx_GTM_BRC_SRC11_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC1_ADDR_Bits B;
} Ifx_GTM_BRC_SRC1_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC1_DEST_Bits B;
} Ifx_GTM_BRC_SRC1_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC2_ADDR_Bits B;
} Ifx_GTM_BRC_SRC2_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC2_DEST_Bits B;
} Ifx_GTM_BRC_SRC2_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC3_ADDR_Bits B;
} Ifx_GTM_BRC_SRC3_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC3_DEST_Bits B;
} Ifx_GTM_BRC_SRC3_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC4_ADDR_Bits B;
} Ifx_GTM_BRC_SRC4_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC4_DEST_Bits B;
} Ifx_GTM_BRC_SRC4_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC5_ADDR_Bits B;
} Ifx_GTM_BRC_SRC5_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC5_DEST_Bits B;
} Ifx_GTM_BRC_SRC5_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC6_ADDR_Bits B;
} Ifx_GTM_BRC_SRC6_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC6_DEST_Bits B;
} Ifx_GTM_BRC_SRC6_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC7_ADDR_Bits B;
} Ifx_GTM_BRC_SRC7_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC7_DEST_Bits B;
} Ifx_GTM_BRC_SRC7_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC8_ADDR_Bits B;
} Ifx_GTM_BRC_SRC8_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC8_DEST_Bits B;
} Ifx_GTM_BRC_SRC8_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC9_ADDR_Bits B;
} Ifx_GTM_BRC_SRC9_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRC_SRC9_DEST_Bits B;
} Ifx_GTM_BRC_SRC9_DEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_MODE_Bits B;
} Ifx_GTM_BRIDGE_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR1_Bits B;
} Ifx_GTM_BRIDGE_PTR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR2_Bits B;
} Ifx_GTM_BRIDGE_PTR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CLC_Bits B;
} Ifx_GTM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMP_EIRQ_EN_Bits B;
} Ifx_GTM_CMP_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMP_EN_Bits B;
} Ifx_GTM_CMP_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMP_IRQ_EN_Bits B;
} Ifx_GTM_CMP_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMP_IRQ_FORCINT_Bits B;
} Ifx_GTM_CMP_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMP_IRQ_MODE_Bits B;
} Ifx_GTM_CMP_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMP_IRQ_NOTIFY_Bits B;
} Ifx_GTM_CMP_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK0_5_CTRL_Bits B;
} Ifx_GTM_CMU_CLK0_5_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_6_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_6_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_7_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_7_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_EN_Bits B;
} Ifx_GTM_CMU_CLK_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_DEN_Bits B;
} Ifx_GTM_CMU_ECLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_NUM_Bits B;
} Ifx_GTM_CMU_ECLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_FXCLK_CTRL_Bits B;
} Ifx_GTM_CMU_FXCLK_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_DEN_Bits B;
} Ifx_GTM_CMU_GCLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_NUM_Bits B;
} Ifx_GTM_CMU_GCLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CTRL_Bits B;
} Ifx_GTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DATAIN_Bits B;
} Ifx_GTM_DATAIN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_ACB_Bits B;
} Ifx_GTM_DPLL_ACB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_ACT_STA_Bits B;
} Ifx_GTM_DPLL_ACT_STA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_ADD_IN_CAL1_Bits B;
} Ifx_GTM_DPLL_ADD_IN_CAL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_ADD_IN_CAL2_Bits B;
} Ifx_GTM_DPLL_ADD_IN_CAL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_ADD_IN_LD1_Bits B;
} Ifx_GTM_DPLL_ADD_IN_LD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_ADD_IN_LD2_Bits B;
} Ifx_GTM_DPLL_ADD_IN_LD2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_ADT_S_Bits B;
} Ifx_GTM_DPLL_ADT_S;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_AOSV_2_Bits B;
} Ifx_GTM_DPLL_AOSV_2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_APS_Bits B;
} Ifx_GTM_DPLL_APS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_APS_1C3_Bits B;
} Ifx_GTM_DPLL_APS_1C3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_APS_SYNC_Bits B;
} Ifx_GTM_DPLL_APS_SYNC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_APT_Bits B;
} Ifx_GTM_DPLL_APT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_APT_2C_Bits B;
} Ifx_GTM_DPLL_APT_2C;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_APT_SYNC_Bits B;
} Ifx_GTM_DPLL_APT_SYNC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CDT_SX_Bits B;
} Ifx_GTM_DPLL_CDT_SX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CDT_SX_NOM_Bits B;
} Ifx_GTM_DPLL_CDT_SX_NOM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CDT_TX_Bits B;
} Ifx_GTM_DPLL_CDT_TX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CDT_TX_NOM_Bits B;
} Ifx_GTM_DPLL_CDT_TX_NOM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CNT_NUM1_Bits B;
} Ifx_GTM_DPLL_CNT_NUM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CNT_NUM2_Bits B;
} Ifx_GTM_DPLL_CNT_NUM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE_Bits B;
} Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_0_Bits B;
} Ifx_GTM_DPLL_CTRL_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits B;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits B;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_1_Bits B;
} Ifx_GTM_DPLL_CTRL_1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits B;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_2_Bits B;
} Ifx_GTM_DPLL_CTRL_2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_3_Bits B;
} Ifx_GTM_DPLL_CTRL_3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_4_Bits B;
} Ifx_GTM_DPLL_CTRL_4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_CTRL_5_Bits B;
} Ifx_GTM_DPLL_CTRL_5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_DLA_Bits B;
} Ifx_GTM_DPLL_DLA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_DT_S_Bits B;
} Ifx_GTM_DPLL_DT_S;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_DT_S_ACT_Bits B;
} Ifx_GTM_DPLL_DT_S_ACT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_DT_T_ACT_Bits B;
} Ifx_GTM_DPLL_DT_T_ACT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_DTA_Bits B;
} Ifx_GTM_DPLL_DTA;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_EDT_S_Bits B;
} Ifx_GTM_DPLL_EDT_S;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_EDT_T_Bits B;
} Ifx_GTM_DPLL_EDT_T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_EIRQ_EN_Bits B;
} Ifx_GTM_DPLL_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_ID_PMTR_Bits B;
} Ifx_GTM_DPLL_ID_PMTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_INC_CNT1_Bits B;
} Ifx_GTM_DPLL_INC_CNT1;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_INC_CNT2_Bits B;
} Ifx_GTM_DPLL_INC_CNT2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_IRQ_EN_Bits B;
} Ifx_GTM_DPLL_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_IRQ_FORCINT_Bits B;
} Ifx_GTM_DPLL_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_IRQ_MODE_Bits B;
} Ifx_GTM_DPLL_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_IRQ_NOTIFY_Bits B;
} Ifx_GTM_DPLL_IRQ_NOTIFY;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_MEDT_S_Bits B;
} Ifx_GTM_DPLL_MEDT_S;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_MEDT_T_Bits B;
} Ifx_GTM_DPLL_MEDT_T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_MLS1_Bits B;
} Ifx_GTM_DPLL_MLS1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_MLS2_Bits B;
} Ifx_GTM_DPLL_MLS2;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_MPVAL1_Bits B;
} Ifx_GTM_DPLL_MPVAL1;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_MPVAL2_Bits B;
} Ifx_GTM_DPLL_MPVAL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NA_Bits B;
} Ifx_GTM_DPLL_NA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NMB_S_Bits B;
} Ifx_GTM_DPLL_NMB_S;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NMB_S_TAR_Bits B;
} Ifx_GTM_DPLL_NMB_S_TAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits B;
} Ifx_GTM_DPLL_NMB_S_TAR_OLD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NMB_T_Bits B;
} Ifx_GTM_DPLL_NMB_T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NMB_T_TAR_Bits B;
} Ifx_GTM_DPLL_NMB_T_TAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits B;
} Ifx_GTM_DPLL_NMB_T_TAR_OLD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NTI_CNT_Bits B;
} Ifx_GTM_DPLL_NTI_CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NUSC_Bits B;
} Ifx_GTM_DPLL_NUSC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_NUTC_Bits B;
} Ifx_GTM_DPLL_NUTC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_OSW_Bits B;
} Ifx_GTM_DPLL_OSW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PDT_T_Bits B;
} Ifx_GTM_DPLL_PDT_T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PSA_Bits B;
} Ifx_GTM_DPLL_PSA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PSAC_Bits B;
} Ifx_GTM_DPLL_PSAC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PSSC_Bits B;
} Ifx_GTM_DPLL_PSSC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PSSM_0_Bits B;
} Ifx_GTM_DPLL_PSSM_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PSSM_1_Bits B;
} Ifx_GTM_DPLL_PSSM_1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PSTC_Bits B;
} Ifx_GTM_DPLL_PSTC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PSTM_0_Bits B;
} Ifx_GTM_DPLL_PSTM_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PSTM_1_Bits B;
} Ifx_GTM_DPLL_PSTM_1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_PVT_Bits B;
} Ifx_GTM_DPLL_PVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_RAM_INI_Bits B;
} Ifx_GTM_DPLL_RAM_INI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_RCDT_SX_Bits B;
} Ifx_GTM_DPLL_RCDT_SX;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_RCDT_SX_NOM_Bits B;
} Ifx_GTM_DPLL_RCDT_SX_NOM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_RCDT_TX_Bits B;
} Ifx_GTM_DPLL_RCDT_TX;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_RCDT_TX_NOM_Bits B;
} Ifx_GTM_DPLL_RCDT_TX_NOM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_RDT_S_Bits B;
} Ifx_GTM_DPLL_RDT_S;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_RDT_S_ACT_Bits B;
} Ifx_GTM_DPLL_RDT_S_ACT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_RDT_T_ACT_Bits B;
} Ifx_GTM_DPLL_RDT_T_ACT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_SLR_Bits B;
} Ifx_GTM_DPLL_SLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_STATUS_Bits B;
} Ifx_GTM_DPLL_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TBU_TS0_S_Bits B;
} Ifx_GTM_DPLL_TBU_TS0_S;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TBU_TS0_T_Bits B;
} Ifx_GTM_DPLL_TBU_TS0_T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_THMA_Bits B;
} Ifx_GTM_DPLL_THMA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_THMI_Bits B;
} Ifx_GTM_DPLL_THMI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_THVAL_Bits B;
} Ifx_GTM_DPLL_THVAL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TLR_Bits B;
} Ifx_GTM_DPLL_TLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TOV_Bits B;
} Ifx_GTM_DPLL_TOV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TOV_S_Bits B;
} Ifx_GTM_DPLL_TOV_S;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TS_FTV_S_Bits B;
} Ifx_GTM_DPLL_TS_FTV_S;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TS_FTV_T_Bits B;
} Ifx_GTM_DPLL_TS_FTV_T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TS_S_0_Bits B;
} Ifx_GTM_DPLL_TS_S_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TS_S_1_Bits B;
} Ifx_GTM_DPLL_TS_S_1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TS_T_0_Bits B;
} Ifx_GTM_DPLL_TS_T_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TS_T_1_Bits B;
} Ifx_GTM_DPLL_TS_T_1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TSAC_Bits B;
} Ifx_GTM_DPLL_TSAC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DPLL_TSF_S_Bits B;
} Ifx_GTM_DPLL_TSF_S;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DXINCON_Bits B;
} Ifx_GTM_DXINCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DXOUTCON_Bits B;
} Ifx_GTM_DXOUTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_EIRQ_EN_Bits B;
} Ifx_GTM_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_F2A_ENABLE_Bits B;
} Ifx_GTM_F2A_ENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO_Bits B;
} Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_F2A_STR_CH_STR_CFG_Bits B;
} Ifx_GTM_F2A_STR_CH_STR_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_CTRL_Bits B;
} Ifx_GTM_FIFO_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_EIRQ_EN_Bits B;
} Ifx_GTM_FIFO_CH_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_END_ADDR_Bits B;
} Ifx_GTM_FIFO_CH_END_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_FILL_LEVEL_Bits B;
} Ifx_GTM_FIFO_CH_FILL_LEVEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_IRQ_EN_Bits B;
} Ifx_GTM_FIFO_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_FIFO_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_IRQ_MODE_Bits B;
} Ifx_GTM_FIFO_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_FIFO_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_LOWER_WM_Bits B;
} Ifx_GTM_FIFO_CH_LOWER_WM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_RD_PTR_Bits B;
} Ifx_GTM_FIFO_CH_RD_PTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_START_ADDR_Bits B;
} Ifx_GTM_FIFO_CH_START_ADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_STATUS_Bits B;
} Ifx_GTM_FIFO_CH_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_UPPER_WM_Bits B;
} Ifx_GTM_FIFO_CH_UPPER_WM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_FIFO_CH_WR_PTR_Bits B;
} Ifx_GTM_FIFO_CH_WR_PTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_0_Bits B;
} Ifx_GTM_ICM_IRQG_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_1_Bits B;
} Ifx_GTM_ICM_IRQG_1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_10_Bits B;
} Ifx_GTM_ICM_IRQG_10;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_11_Bits B;
} Ifx_GTM_ICM_IRQG_11;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_2_Bits B;
} Ifx_GTM_ICM_IRQG_2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_3_Bits B;
} Ifx_GTM_ICM_IRQG_3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_4_Bits B;
} Ifx_GTM_ICM_IRQG_4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_5_Bits B;
} Ifx_GTM_ICM_IRQG_5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_6_Bits B;
} Ifx_GTM_ICM_IRQG_6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_7_Bits B;
} Ifx_GTM_ICM_IRQG_7;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_8_Bits B;
} Ifx_GTM_ICM_IRQG_8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_9_Bits B;
} Ifx_GTM_ICM_IRQG_9;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI0_Bits B;
} Ifx_GTM_ICM_IRQG_CEI0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI1_Bits B;
} Ifx_GTM_ICM_IRQG_CEI1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI2_Bits B;
} Ifx_GTM_ICM_IRQG_CEI2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI3_Bits B;
} Ifx_GTM_ICM_IRQG_CEI3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI4_Bits B;
} Ifx_GTM_ICM_IRQG_CEI4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_MEI_Bits B;
} Ifx_GTM_ICM_IRQG_MEI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_DSADC_INSEL_Bits B;
} Ifx_GTM_INOUTSEL_DSADC_INSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_DSADC_OUTSEL0_Bits B;
} Ifx_GTM_INOUTSEL_DSADC_OUTSEL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_DSADC_OUTSEL1_Bits B;
} Ifx_GTM_INOUTSEL_DSADC_OUTSEL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_PSI5_OUTSEL0_Bits B;
} Ifx_GTM_INOUTSEL_PSI5_OUTSEL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_PSI5S_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_PSI5S_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_T_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_T_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_TIM_INSEL_Bits B;
} Ifx_GTM_INOUTSEL_TIM_INSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_EN_Bits B;
} Ifx_GTM_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_FORCINT_Bits B;
} Ifx_GTM_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_MODE_Bits B;
} Ifx_GTM_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_NOTIFY_Bits B;
} Ifx_GTM_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST0_Bits B;
} Ifx_GTM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST1_Bits B;
} Ifx_GTM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRSTCLR_Bits B;
} Ifx_GTM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MAP_CTRL_Bits B;
} Ifx_GTM_MAP_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCFG_CTRL_Bits B;
} Ifx_GTM_MCFG_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH0_CTRG_Bits B;
} Ifx_GTM_MCS_CH0_CTRG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH0_STRG_Bits B;
} Ifx_GTM_MCS_CH0_STRG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_ACB_Bits B;
} Ifx_GTM_MCS_CH_ACB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_CTRL_Bits B;
} Ifx_GTM_MCS_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_EIRQ_EN_Bits B;
} Ifx_GTM_MCS_CH_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_IRQ_EN_Bits B;
} Ifx_GTM_MCS_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_MCS_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_IRQ_MODE_Bits B;
} Ifx_GTM_MCS_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_MCS_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_PC_Bits B;
} Ifx_GTM_MCS_CH_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_R0_Bits B;
} Ifx_GTM_MCS_CH_R0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_R1_Bits B;
} Ifx_GTM_MCS_CH_R1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_R2_Bits B;
} Ifx_GTM_MCS_CH_R2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_R3_Bits B;
} Ifx_GTM_MCS_CH_R3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_R4_Bits B;
} Ifx_GTM_MCS_CH_R4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_R5_Bits B;
} Ifx_GTM_MCS_CH_R5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_R6_Bits B;
} Ifx_GTM_MCS_CH_R6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CH_R7_Bits B;
} Ifx_GTM_MCS_CH_R7;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_CTRL_Bits B;
} Ifx_GTM_MCS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_ERR_Bits B;
} Ifx_GTM_MCS_ERR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCS_RST_Bits B;
} Ifx_GTM_MCS_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCSINTCLR_Bits B;
} Ifx_GTM_MCSINTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MCSINTSTAT_Bits B;
} Ifx_GTM_MCSINTSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MON_ACTIVITY_0_Bits B;
} Ifx_GTM_MON_ACTIVITY_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MON_ACTIVITY_1_Bits B;
} Ifx_GTM_MON_ACTIVITY_1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MON_STATUS_Bits B;
} Ifx_GTM_MON_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MSCIN_INHCON_Bits B;
} Ifx_GTM_MSCIN_INHCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MSCIN_INLCON_Bits B;
} Ifx_GTM_MSCIN_INLCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MSCSET_CON0_Bits B;
} Ifx_GTM_MSCSET_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MSCSET_CON1_Bits B;
} Ifx_GTM_MSCSET_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MSCSET_CON2_Bits B;
} Ifx_GTM_MSCSET_CON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_MSCSET_CON3_Bits B;
} Ifx_GTM_MSCSET_CON3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OCS_Bits B;
} Ifx_GTM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ODA_Bits B;
} Ifx_GTM_ODA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU0T_Bits B;
} Ifx_GTM_OTBU0T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU1T_Bits B;
} Ifx_GTM_OTBU1T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU2T_Bits B;
} Ifx_GTM_OTBU2T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSC0_Bits B;
} Ifx_GTM_OTSC0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSC1_Bits B;
} Ifx_GTM_OTSC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSS_Bits B;
} Ifx_GTM_OTSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_REV_Bits B;
} Ifx_GTM_REV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_RST_Bits B;
} Ifx_GTM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_CMP_Bits B;
} Ifx_GTM_SPE_CMP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_CNT_Bits B;
} Ifx_GTM_SPE_CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_CTRL_STAT_Bits B;
} Ifx_GTM_SPE_CTRL_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_EIRQ_EN_Bits B;
} Ifx_GTM_SPE_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_IRQ_EN_Bits B;
} Ifx_GTM_SPE_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_IRQ_FORCINT_Bits B;
} Ifx_GTM_SPE_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_IRQ_MODE_Bits B;
} Ifx_GTM_SPE_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_IRQ_NOTIFY_Bits B;
} Ifx_GTM_SPE_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_OUT_CTRL_Bits B;
} Ifx_GTM_SPE_OUT_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_OUT_PAT_Bits B;
} Ifx_GTM_SPE_OUT_PAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_SPE_PAT_Bits B;
} Ifx_GTM_SPE_PAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_BASE_Bits B;
} Ifx_GTM_TBU_CH0_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_CTRL_Bits B;
} Ifx_GTM_TBU_CH0_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_BASE_Bits B;
} Ifx_GTM_TBU_CH1_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_CTRL_Bits B;
} Ifx_GTM_TBU_CH1_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_BASE_Bits B;
} Ifx_GTM_TBU_CH2_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_CTRL_Bits B;
} Ifx_GTM_TBU_CH2_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CHEN_Bits B;
} Ifx_GTM_TBU_CHEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_AUX_IN_SRC_Bits B;
} Ifx_GTM_TIM_AUX_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNT_Bits B;
} Ifx_GTM_TIM_CH_CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNTS_Bits B;
} Ifx_GTM_TIM_CH_CNTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CTRL_Bits B;
} Ifx_GTM_TIM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECNT_Bits B;
} Ifx_GTM_TIM_CH_ECNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECTRL_Bits B;
} Ifx_GTM_TIM_CH_ECTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_EIRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_FE_Bits B;
} Ifx_GTM_TIM_CH_FLT_FE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_RE_Bits B;
} Ifx_GTM_TIM_CH_FLT_RE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR0_Bits B;
} Ifx_GTM_TIM_CH_GPR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR1_Bits B;
} Ifx_GTM_TIM_CH_GPR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TIM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TIM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUC_Bits B;
} Ifx_GTM_TIM_CH_TDUC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUV_Bits B;
} Ifx_GTM_TIM_CH_TDUV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_IN_SRC_Bits B;
} Ifx_GTM_TIM_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_RST_Bits B;
} Ifx_GTM_TIM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM0_Bits B;
} Ifx_GTM_TOM_CH_CM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM1_Bits B;
} Ifx_GTM_TOM_CH_CM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CN0_Bits B;
} Ifx_GTM_TOM_CH_CN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CTRL_Bits B;
} Ifx_GTM_TOM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TOM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TOM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TOM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR0_Bits B;
} Ifx_GTM_TOM_CH_SR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR1_Bits B;
} Ifx_GTM_TOM_CH_SR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_STAT_Bits B;
} Ifx_GTM_TOM_CH_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC0_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC0_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC1_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC1_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TRIGOUT_Bits B;
} Ifx_GTM_TRIGOUT;
# 7548 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_AFD_CH
{
    Ifx_GTM_AFD_CH_BUF_ACC BUF_ACC;
    unsigned char reserved_4[12];
} Ifx_GTM_AFD_CH;


typedef volatile struct _Ifx_GTM_ATOM_AGC
{
    Ifx_GTM_ATOM_AGC_GLB_CTRL GLB_CTRL;
    Ifx_GTM_ATOM_AGC_ENDIS_CTRL ENDIS_CTRL;
    Ifx_GTM_ATOM_AGC_ENDIS_STAT ENDIS_STAT;
    Ifx_GTM_ATOM_AGC_ACT_TB ACT_TB;
    Ifx_GTM_ATOM_AGC_OUTEN_CTRL OUTEN_CTRL;
    Ifx_GTM_ATOM_AGC_OUTEN_STAT OUTEN_STAT;
    Ifx_GTM_ATOM_AGC_FUPD_CTRL FUPD_CTRL;
    Ifx_GTM_ATOM_AGC_INT_TRIG INT_TRIG;
    unsigned char reserved_20[32];
} Ifx_GTM_ATOM_AGC;


typedef volatile struct _Ifx_GTM_ATOM_CH
{
    Ifx_GTM_ATOM_CH_RDADDR RDADDR;
    union
    {
        Ifx_GTM_ATOM_CH_CTRL CTRL;
        Ifx_GTM_ATOM_CH_SOMC SOMC;
        Ifx_GTM_ATOM_CH_SOMI SOMI;
        Ifx_GTM_ATOM_CH_SOMP SOMP;
        Ifx_GTM_ATOM_CH_SOMS SOMS;
    };

    Ifx_GTM_ATOM_CH_SR0 SR0;
    Ifx_GTM_ATOM_CH_SR1 SR1;
    Ifx_GTM_ATOM_CH_CM0 CM0;
    Ifx_GTM_ATOM_CH_CM1 CM1;
    Ifx_GTM_ATOM_CH_CN0 CN0;
    Ifx_GTM_ATOM_CH_STAT STAT;
    Ifx_GTM_ATOM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_ATOM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_ATOM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_ATOM_CH_IRQ_MODE IRQ_MODE;
    unsigned char reserved_30[16];
} Ifx_GTM_ATOM_CH;


typedef volatile struct _Ifx_GTM_CMU_CLK0_5
{
    Ifx_GTM_CMU_CLK0_5_CTRL CTRL;
} Ifx_GTM_CMU_CLK0_5;


typedef volatile struct _Ifx_GTM_CMU_CLK_6
{
    Ifx_GTM_CMU_CLK_6_CTRL CTRL;
} Ifx_GTM_CMU_CLK_6;


typedef volatile struct _Ifx_GTM_CMU_CLK_7
{
    Ifx_GTM_CMU_CLK_7_CTRL CTRL;
} Ifx_GTM_CMU_CLK_7;


typedef volatile struct _Ifx_GTM_CMU_ECLK
{
    Ifx_GTM_CMU_ECLK_NUM NUM;
    Ifx_GTM_CMU_ECLK_DEN DEN;
} Ifx_GTM_CMU_ECLK;


typedef volatile struct _Ifx_GTM_CMU_FXCLK
{
    Ifx_GTM_CMU_FXCLK_CTRL CTRL;
} Ifx_GTM_CMU_FXCLK;


typedef volatile struct _Ifx_GTM_DPLL_TS
{
    Ifx_GTM_DPLL_TS_T_0 T_0;
    Ifx_GTM_DPLL_TS_T_1 T_1;
    Ifx_GTM_DPLL_TS_FTV_T FTV_T;
    unsigned char reserved_C[4];
    Ifx_GTM_DPLL_TS_S_0 S_0;
    Ifx_GTM_DPLL_TS_S_1 S_1;
    Ifx_GTM_DPLL_TS_FTV_S FTV_S;
} Ifx_GTM_DPLL_TS;


typedef volatile struct _Ifx_GTM_F2A_RD_CH
{
    Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO ARU_RD_FIFO;
} Ifx_GTM_F2A_RD_CH;


typedef volatile struct _Ifx_GTM_F2A_STR_CH
{
    Ifx_GTM_F2A_STR_CH_STR_CFG STR_CFG;
} Ifx_GTM_F2A_STR_CH;


typedef volatile struct _Ifx_GTM_FIFO_CH
{
    Ifx_GTM_FIFO_CH_CTRL CTRL;
    Ifx_GTM_FIFO_CH_END_ADDR END_ADDR;
    Ifx_GTM_FIFO_CH_START_ADDR START_ADDR;
    Ifx_GTM_FIFO_CH_UPPER_WM UPPER_WM;
    Ifx_GTM_FIFO_CH_LOWER_WM LOWER_WM;
    Ifx_GTM_FIFO_CH_STATUS STATUS;
    Ifx_GTM_FIFO_CH_FILL_LEVEL FILL_LEVEL;
    Ifx_GTM_FIFO_CH_WR_PTR WR_PTR;
    Ifx_GTM_FIFO_CH_RD_PTR RD_PTR;
    Ifx_GTM_FIFO_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_FIFO_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_FIFO_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_FIFO_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_FIFO_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_38[8];
} Ifx_GTM_FIFO_CH;


typedef volatile struct _Ifx_GTM_INOUTSEL_CAN
{
    Ifx_GTM_INOUTSEL_CAN_OUTSEL OUTSEL;
} Ifx_GTM_INOUTSEL_CAN;


typedef volatile struct _Ifx_GTM_INOUTSEL_DSADC
{
    Ifx_GTM_INOUTSEL_DSADC_INSEL INSEL[3];
    Ifx_GTM_INOUTSEL_DSADC_OUTSEL0 OUTSEL00;
    Ifx_GTM_INOUTSEL_DSADC_OUTSEL1 OUTSEL01;
    Ifx_GTM_INOUTSEL_DSADC_OUTSEL0 OUTSEL10;
    Ifx_GTM_INOUTSEL_DSADC_OUTSEL1 OUTSEL11;
} Ifx_GTM_INOUTSEL_DSADC;


typedef volatile struct _Ifx_GTM_INOUTSEL_PSI5
{
    Ifx_GTM_INOUTSEL_PSI5_OUTSEL0 OUTSEL0;
} Ifx_GTM_INOUTSEL_PSI5;


typedef volatile struct _Ifx_GTM_INOUTSEL_PSI5S
{
    Ifx_GTM_INOUTSEL_PSI5S_OUTSEL OUTSEL;
} Ifx_GTM_INOUTSEL_PSI5S;


typedef volatile struct _Ifx_GTM_INOUTSEL_T
{
    Ifx_GTM_INOUTSEL_T_OUTSEL OUTSEL[17];
} Ifx_GTM_INOUTSEL_T;


typedef volatile struct _Ifx_GTM_INOUTSEL_TIM
{
    Ifx_GTM_INOUTSEL_TIM_INSEL INSEL;
} Ifx_GTM_INOUTSEL_TIM;


typedef volatile struct _Ifx_GTM_MCS_CH
{
    Ifx_GTM_MCS_CH_R0 R0;
    Ifx_GTM_MCS_CH_R1 R1;
    Ifx_GTM_MCS_CH_R2 R2;
    Ifx_GTM_MCS_CH_R3 R3;
    Ifx_GTM_MCS_CH_R4 R4;
    Ifx_GTM_MCS_CH_R5 R5;
    Ifx_GTM_MCS_CH_R6 R6;
    Ifx_GTM_MCS_CH_R7 R7;
    Ifx_GTM_MCS_CH_CTRL CTRL;
    Ifx_GTM_MCS_CH_ACB ACB;
    unsigned char reserved_28[24];
    Ifx_GTM_MCS_CH_PC PC;
    Ifx_GTM_MCS_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_MCS_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_MCS_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_MCS_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_MCS_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_58[40];
} Ifx_GTM_MCS_CH;


typedef volatile struct _Ifx_GTM_MCS_CH0
{
    Ifx_GTM_MCS_CH_R0 R0;
    Ifx_GTM_MCS_CH_R1 R1;
    Ifx_GTM_MCS_CH_R2 R2;
    Ifx_GTM_MCS_CH_R3 R3;
    Ifx_GTM_MCS_CH_R4 R4;
    Ifx_GTM_MCS_CH_R5 R5;
    Ifx_GTM_MCS_CH_R6 R6;
    Ifx_GTM_MCS_CH_R7 R7;
    Ifx_GTM_MCS_CH_CTRL CTRL;
    Ifx_GTM_MCS_CH_ACB ACB;
    Ifx_GTM_MCS_CH0_CTRG CTRG;
    Ifx_GTM_MCS_CH0_STRG STRG;
    unsigned char reserved_30[16];
    Ifx_GTM_MCS_CH_PC PC;
    Ifx_GTM_MCS_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_MCS_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_MCS_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_MCS_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_MCS_CH_EIRQ_EN EIRQ_EN;
} Ifx_GTM_MCS_CH0;


typedef volatile struct _Ifx_GTM_TIM_CH
{
    Ifx_GTM_TIM_CH_GPR0 GPR0;
    Ifx_GTM_TIM_CH_GPR1 GPR1;
    Ifx_GTM_TIM_CH_CNT CNT;
    Ifx_GTM_TIM_CH_ECNT ECNT;
    Ifx_GTM_TIM_CH_CNTS CNTS;
    Ifx_GTM_TIM_CH_TDUC TDUC;
    Ifx_GTM_TIM_CH_TDUV TDUV;
    Ifx_GTM_TIM_CH_FLT_RE FLT_RE;
    Ifx_GTM_TIM_CH_FLT_FE FLT_FE;
    Ifx_GTM_TIM_CH_CTRL CTRL;
    Ifx_GTM_TIM_CH_ECTRL ECTRL;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TIM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TIM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TIM_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_TIM_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_40[56];
} Ifx_GTM_TIM_CH;


typedef volatile struct _Ifx_GTM_TOM_CH
{
    Ifx_GTM_TOM_CH_CTRL CTRL;
    Ifx_GTM_TOM_CH_SR0 SR0;
    Ifx_GTM_TOM_CH_SR1 SR1;
    Ifx_GTM_TOM_CH_CM0 CM0;
    Ifx_GTM_TOM_CH_CM1 CM1;
    Ifx_GTM_TOM_CH_CN0 CN0;
    Ifx_GTM_TOM_CH_STAT STAT;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TOM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TOM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TOM_CH_IRQ_MODE IRQ_MODE;
    unsigned char reserved_2C[4];
} Ifx_GTM_TOM_CH;
# 7806 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_AFD
{
    Ifx_GTM_AFD_CH CH[8];
} Ifx_GTM_AFD;


typedef volatile struct _Ifx_GTM_ARU
{
    Ifx_GTM_ARU_ARU_ACCESS ARU_ACCESS;
    Ifx_GTM_ARU_DATA_H DATA_H;
    Ifx_GTM_ARU_DATA_L DATA_L;
    Ifx_GTM_ARU_DBG_ACCESS0 DBG_ACCESS0;
    Ifx_GTM_ARU_DBG_DATA0_H DBG_DATA0_H;
    Ifx_GTM_ARU_DBG_DATA0_L DBG_DATA0_L;
    Ifx_GTM_ARU_DBG_ACCESS1 DBG_ACCESS1;
    Ifx_GTM_ARU_DBG_DATA1_H DBG_DATA1_H;
    Ifx_GTM_ARU_DBG_DATA1_L DBG_DATA1_L;
    Ifx_GTM_ARU_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_ARU_IRQ_EN IRQ_EN;
    Ifx_GTM_ARU_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_ARU_IRQ_MODE IRQ_MODE;
} Ifx_GTM_ARU;


typedef volatile struct _Ifx_GTM_ATOM
{
    Ifx_GTM_ATOM_CH CH0;
    Ifx_GTM_ATOM_AGC AGC;
    Ifx_GTM_ATOM_CH CH1;
    unsigned char reserved_C0[64];
    Ifx_GTM_ATOM_CH CH2;
    unsigned char reserved_140[64];
    Ifx_GTM_ATOM_CH CH3;
    unsigned char reserved_1C0[64];
    Ifx_GTM_ATOM_CH CH4;
    unsigned char reserved_240[64];
    Ifx_GTM_ATOM_CH CH5;
    unsigned char reserved_2C0[64];
    Ifx_GTM_ATOM_CH CH6;
    unsigned char reserved_340[64];
    Ifx_GTM_ATOM_CH CH7;
    unsigned char reserved_3C0[1088];
} Ifx_GTM_ATOM;


typedef volatile struct _Ifx_GTM_BRC
{
    Ifx_GTM_BRC_SRC0_ADDR SRC0_ADDR;
    Ifx_GTM_BRC_SRC0_DEST SRC0_DEST;
    Ifx_GTM_BRC_SRC1_ADDR SRC1_ADDR;
    Ifx_GTM_BRC_SRC1_DEST SRC1_DEST;
    Ifx_GTM_BRC_SRC2_ADDR SRC2_ADDR;
    Ifx_GTM_BRC_SRC2_DEST SRC2_DEST;
    Ifx_GTM_BRC_SRC3_ADDR SRC3_ADDR;
    Ifx_GTM_BRC_SRC3_DEST SRC3_DEST;
    Ifx_GTM_BRC_SRC4_ADDR SRC4_ADDR;
    Ifx_GTM_BRC_SRC4_DEST SRC4_DEST;
    Ifx_GTM_BRC_SRC5_ADDR SRC5_ADDR;
    Ifx_GTM_BRC_SRC5_DEST SRC5_DEST;
    Ifx_GTM_BRC_SRC6_ADDR SRC6_ADDR;
    Ifx_GTM_BRC_SRC6_DEST SRC6_DEST;
    Ifx_GTM_BRC_SRC7_ADDR SRC7_ADDR;
    Ifx_GTM_BRC_SRC7_DEST SRC7_DEST;
    Ifx_GTM_BRC_SRC8_ADDR SRC8_ADDR;
    Ifx_GTM_BRC_SRC8_DEST SRC8_DEST;
    Ifx_GTM_BRC_SRC9_ADDR SRC9_ADDR;
    Ifx_GTM_BRC_SRC9_DEST SRC9_DEST;
    Ifx_GTM_BRC_SRC10_ADDR SRC10_ADDR;
    Ifx_GTM_BRC_SRC10_DEST SRC10_DEST;
    Ifx_GTM_BRC_SRC11_ADDR SRC11_ADDR;
    Ifx_GTM_BRC_SRC11_DEST SRC11_DEST;
    Ifx_GTM_BRC_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_BRC_IRQ_EN IRQ_EN;
    Ifx_GTM_BRC_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_BRC_IRQ_MODE IRQ_MODE;
    Ifx_GTM_BRC_RST RST;
    Ifx_GTM_BRC_EIRQ_EN EIRQ_EN;
} Ifx_GTM_BRC;


typedef volatile struct _Ifx_GTM_BRIDGE
{
    Ifx_GTM_BRIDGE_MODE MODE;
    Ifx_GTM_BRIDGE_PTR1 PTR1;
    Ifx_GTM_BRIDGE_PTR2 PTR2;
} Ifx_GTM_BRIDGE;


typedef volatile struct _Ifx_GTM_CMP
{
    Ifx_GTM_CMP_EN EN;
    Ifx_GTM_CMP_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_CMP_IRQ_EN IRQ_EN;
    Ifx_GTM_CMP_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_CMP_IRQ_MODE IRQ_MODE;
    Ifx_GTM_CMP_EIRQ_EN EIRQ_EN;
} Ifx_GTM_CMP;


typedef volatile struct _Ifx_GTM_CMU
{
    Ifx_GTM_CMU_CLK_EN CLK_EN;
    Ifx_GTM_CMU_GCLK_NUM GCLK_NUM;
    Ifx_GTM_CMU_GCLK_DEN GCLK_DEN;
    Ifx_GTM_CMU_CLK0_5 CLK0_5[6];
    Ifx_GTM_CMU_CLK_6 CLK_6;
    Ifx_GTM_CMU_CLK_7 CLK_7;
    Ifx_GTM_CMU_ECLK ECLK[3];
    Ifx_GTM_CMU_FXCLK FXCLK;
} Ifx_GTM_CMU;


typedef volatile struct _Ifx_GTM_DPLL
{
    Ifx_GTM_DPLL_CTRL_0 CTRL_0;
    Ifx_GTM_DPLL_CTRL_1 CTRL_1;
    Ifx_GTM_DPLL_CTRL_2 CTRL_2;
    Ifx_GTM_DPLL_CTRL_3 CTRL_3;
    Ifx_GTM_DPLL_CTRL_4 CTRL_4;
    Ifx_GTM_DPLL_CTRL_5 CTRL_5;
    Ifx_GTM_DPLL_ACT_STA ACT_STA;
    Ifx_GTM_DPLL_OSW OSW;
    Ifx_GTM_DPLL_AOSV_2 AOSV_2;
    Ifx_GTM_DPLL_APT APT;
    Ifx_GTM_DPLL_APS APS;
    Ifx_GTM_DPLL_APT_2C APT_2C;
    Ifx_GTM_DPLL_APS_1C3 APS_1C3;
    Ifx_GTM_DPLL_NUTC NUTC;
    Ifx_GTM_DPLL_NUSC NUSC;
    Ifx_GTM_DPLL_NTI_CNT NTI_CNT;
    Ifx_GTM_DPLL_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_DPLL_IRQ_EN IRQ_EN;
    Ifx_GTM_DPLL_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_DPLL_IRQ_MODE IRQ_MODE;
    Ifx_GTM_DPLL_EIRQ_EN EIRQ_EN;
    unsigned char reserved_54[92];
    Ifx_GTM_DPLL_INC_CNT1 INC_CNT1;
    Ifx_GTM_DPLL_INC_CNT2 INC_CNT2;
    Ifx_GTM_DPLL_APT_SYNC APT_SYNC;
    Ifx_GTM_DPLL_APS_SYNC APS_SYNC;
    Ifx_GTM_DPLL_TBU_TS0_T TBU_TS0_T;
    Ifx_GTM_DPLL_TBU_TS0_S TBU_TS0_S;
    Ifx_GTM_DPLL_ADD_IN_LD1 ADD_IN_LD1;
    Ifx_GTM_DPLL_ADD_IN_LD2 ADD_IN_LD2;
    unsigned char reserved_D0[44];
    Ifx_GTM_DPLL_STATUS STATUS;
    Ifx_GTM_DPLL_ID_PMTR ID_PMTR[32];
    unsigned char reserved_180[96];
    Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER CTRL_0_SHADOW_TRIGGER;
    Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE CTRL_0_SHADOW_STATE;
    Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER CTRL_1_SHADOW_TRIGGER;
    Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE CRTL_1_SHADOW_STATE;
    unsigned char reserved_1F0[12];
    Ifx_GTM_DPLL_RAM_INI RAM_INI;
    Ifx_GTM_DPLL_PSA PSA[32];
    Ifx_GTM_DPLL_DLA DLA[32];
    Ifx_GTM_DPLL_NA NA[32];
    Ifx_GTM_DPLL_DTA DTA[32];
    Ifx_GTM_DPLL_TS TS;
    unsigned char reserved_41C[4];
    Ifx_GTM_DPLL_THMI THMI;
    Ifx_GTM_DPLL_THMA THMA;
    Ifx_GTM_DPLL_THVAL THVAL;
    unsigned char reserved_42C[4];
    Ifx_GTM_DPLL_TOV TOV;
    Ifx_GTM_DPLL_TOV_S TOV_S;
    Ifx_GTM_DPLL_ADD_IN_CAL1 ADD_IN_CAL1;
    Ifx_GTM_DPLL_ADD_IN_CAL2 ADD_IN_CAL2;
    Ifx_GTM_DPLL_MPVAL1 MPVAL1;
    Ifx_GTM_DPLL_MPVAL2 MPVAL2;
    Ifx_GTM_DPLL_NMB_T_TAR NMB_T_TAR;
    Ifx_GTM_DPLL_NMB_T_TAR_OLD NMB_T_TAR_OLD;
    Ifx_GTM_DPLL_NMB_S_TAR NMB_S_TAR;
    Ifx_GTM_DPLL_NMB_S_TAR_OLD NMB_S_TAR_OLD;
    unsigned char reserved_458[8];
    Ifx_GTM_DPLL_RCDT_TX RCDT_TX;
    Ifx_GTM_DPLL_RCDT_SX RCDT_SX;
    Ifx_GTM_DPLL_RCDT_TX_NOM RCDT_TX_NOM;
    Ifx_GTM_DPLL_RCDT_SX_NOM RCDT_SX_NOM;
    Ifx_GTM_DPLL_RDT_T_ACT RDT_T_ACT;
    Ifx_GTM_DPLL_RDT_S_ACT RDT_S_ACT;
    Ifx_GTM_DPLL_DT_T_ACT DT_T_ACT;
    Ifx_GTM_DPLL_DT_S_ACT DT_S_ACT;
    Ifx_GTM_DPLL_EDT_T EDT_T;
    Ifx_GTM_DPLL_MEDT_T MEDT_T;
    Ifx_GTM_DPLL_EDT_S EDT_S;
    Ifx_GTM_DPLL_MEDT_S MEDT_S;
    Ifx_GTM_DPLL_CDT_TX CDT_TX;
    Ifx_GTM_DPLL_CDT_SX CDT_SX;
    Ifx_GTM_DPLL_CDT_TX_NOM CDT_TX_NOM;
    Ifx_GTM_DPLL_CDT_SX_NOM CDT_SX_NOM;
    Ifx_GTM_DPLL_TLR TLR;
    Ifx_GTM_DPLL_SLR SLR;
    unsigned char reserved_4A8[88];
    Ifx_GTM_DPLL_PDT_T PDT_T[32];
    unsigned char reserved_580[64];
    Ifx_GTM_DPLL_MLS1 MLS1;
    Ifx_GTM_DPLL_MLS2 MLS2;
    Ifx_GTM_DPLL_CNT_NUM1 CNT_NUM1;
    Ifx_GTM_DPLL_CNT_NUM2 CNT_NUM2;
    Ifx_GTM_DPLL_PVT PVT;
    unsigned char reserved_5D4[12];
    Ifx_GTM_DPLL_PSTC PSTC;
    Ifx_GTM_DPLL_PSSC PSSC;
    Ifx_GTM_DPLL_PSTM_0 PSTM_0;
    Ifx_GTM_DPLL_PSTM_1 PSTM_1;
    Ifx_GTM_DPLL_PSSM_0 PSSM_0;
    Ifx_GTM_DPLL_PSSM_1 PSSM_1;
    Ifx_GTM_DPLL_NMB_T NMB_T;
    Ifx_GTM_DPLL_NMB_S NMB_S;
    Ifx_GTM_DPLL_RDT_S RDT_S[64];
    Ifx_GTM_DPLL_TSF_S TSF_S[64];
    Ifx_GTM_DPLL_ADT_S ADT_S[64];
    Ifx_GTM_DPLL_DT_S DT_S[64];
    unsigned char reserved_A00[1024];
    Ifx_GTM_DPLL_TSAC TSAC[32];
    Ifx_GTM_DPLL_PSAC PSAC[32];
    Ifx_GTM_DPLL_ACB ACB[8];
} Ifx_GTM_DPLL;


typedef volatile struct _Ifx_GTM_F2A
{
    Ifx_GTM_F2A_RD_CH RD_CH[8];
    Ifx_GTM_F2A_STR_CH STR_CH[8];
    Ifx_GTM_F2A_ENABLE ENABLE;
} Ifx_GTM_F2A;


typedef volatile struct _Ifx_GTM_FIFO
{
    Ifx_GTM_FIFO_CH CH[8];
} Ifx_GTM_FIFO;


typedef volatile struct _Ifx_GTM_ICM
{
    Ifx_GTM_ICM_IRQG_0 IRQG_0;
    Ifx_GTM_ICM_IRQG_1 IRQG_1;
    Ifx_GTM_ICM_IRQG_2 IRQG_2;
    Ifx_GTM_ICM_IRQG_3 IRQG_3;
    Ifx_GTM_ICM_IRQG_4 IRQG_4;
    Ifx_GTM_ICM_IRQG_5 IRQG_5;
    Ifx_GTM_ICM_IRQG_6 IRQG_6;
    Ifx_GTM_ICM_IRQG_7 IRQG_7;
    Ifx_GTM_ICM_IRQG_8 IRQG_8;
    Ifx_GTM_ICM_IRQG_9 IRQG_9;
    Ifx_GTM_ICM_IRQG_10 IRQG_10;
    Ifx_GTM_ICM_IRQG_11 IRQG_11;
    Ifx_GTM_ICM_IRQG_MEI IRQG_MEI;
    Ifx_GTM_ICM_IRQG_CEI0 IRQG_CEI0;
    Ifx_GTM_ICM_IRQG_CEI1 IRQG_CEI1;
    Ifx_GTM_ICM_IRQG_CEI2 IRQG_CEI2;
    Ifx_GTM_ICM_IRQG_CEI3 IRQG_CEI3;
    Ifx_GTM_ICM_IRQG_CEI4 IRQG_CEI4;
} Ifx_GTM_ICM;


typedef volatile struct _Ifx_GTM_INOUTSEL
{
    Ifx_GTM_INOUTSEL_TIM TIM[6];
    unsigned char reserved_18[8];
    Ifx_GTM_INOUTSEL_T T;
    unsigned char reserved_64[8];
    Ifx_GTM_INOUTSEL_DSADC DSADC;
    unsigned char reserved_88[8];
    Ifx_GTM_INOUTSEL_CAN CAN;
    Ifx_GTM_INOUTSEL_PSI5 PSI5;
    Ifx_GTM_INOUTSEL_PSI5S PSI5S;
} Ifx_GTM_INOUTSEL;


typedef volatile struct _Ifx_GTM_MCS
{
    Ifx_GTM_MCS_CH0 CH0;
    unsigned char reserved_58[28];
    Ifx_GTM_MCS_CTRL CTRL;
    Ifx_GTM_MCS_RST RST;
    Ifx_GTM_MCS_ERR ERR;
    Ifx_GTM_MCS_CH CH1;
    Ifx_GTM_MCS_CH CH2;
    Ifx_GTM_MCS_CH CH3;
    Ifx_GTM_MCS_CH CH4;
    Ifx_GTM_MCS_CH CH5;
    Ifx_GTM_MCS_CH CH6;
    Ifx_GTM_MCS_CH CH7;
    unsigned char reserved_400[3072];
} Ifx_GTM_MCS;


typedef volatile struct _Ifx_GTM_MON
{
    Ifx_GTM_MON_STATUS STATUS;
    Ifx_GTM_MON_ACTIVITY_0 ACTIVITY_0;
    Ifx_GTM_MON_ACTIVITY_1 ACTIVITY_1;
} Ifx_GTM_MON;


typedef volatile struct _Ifx_GTM_MSCIN
{
    Ifx_GTM_MSCIN_INLCON INLCON;
    Ifx_GTM_MSCIN_INHCON INHCON;
} Ifx_GTM_MSCIN;


typedef volatile struct _Ifx_GTM_MSCSET
{
    Ifx_GTM_MSCSET_CON0 CON0;
    Ifx_GTM_MSCSET_CON1 CON1;
    Ifx_GTM_MSCSET_CON2 CON2;
    Ifx_GTM_MSCSET_CON3 CON3;
} Ifx_GTM_MSCSET;


typedef volatile struct _Ifx_GTM_SPE
{
    Ifx_GTM_SPE_CTRL_STAT CTRL_STAT;
    Ifx_GTM_SPE_PAT PAT;
    Ifx_GTM_SPE_OUT_PAT OUT_PAT[8];
    Ifx_GTM_SPE_OUT_CTRL OUT_CTRL;
    Ifx_GTM_SPE_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_SPE_IRQ_EN IRQ_EN;
    Ifx_GTM_SPE_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_SPE_IRQ_MODE IRQ_MODE;
    Ifx_GTM_SPE_EIRQ_EN EIRQ_EN;
    Ifx_GTM_SPE_CNT CNT;
    Ifx_GTM_SPE_CMP CMP;
    unsigned char reserved_48[56];
} Ifx_GTM_SPE;


typedef volatile struct _Ifx_GTM_TBU
{
    Ifx_GTM_TBU_CHEN CHEN;
    Ifx_GTM_TBU_CH0_CTRL CH0_CTRL;
    Ifx_GTM_TBU_CH0_BASE CH0_BASE;
    Ifx_GTM_TBU_CH1_CTRL CH1_CTRL;
    Ifx_GTM_TBU_CH1_BASE CH1_BASE;
    Ifx_GTM_TBU_CH2_CTRL CH2_CTRL;
    Ifx_GTM_TBU_CH2_BASE CH2_BASE;
} Ifx_GTM_TBU;


typedef volatile struct _Ifx_GTM_TIM
{
    Ifx_GTM_TIM_CH CH0;
    Ifx_GTM_TIM_IN_SRC IN_SRC;
    Ifx_GTM_TIM_RST RST;
    Ifx_GTM_TIM_CH CH1;
    unsigned char reserved_F8[8];
    Ifx_GTM_TIM_CH CH2;
    unsigned char reserved_178[8];
    Ifx_GTM_TIM_CH CH3;
    unsigned char reserved_1F8[8];
    Ifx_GTM_TIM_CH CH4;
    unsigned char reserved_278[8];
    Ifx_GTM_TIM_CH CH5;
    unsigned char reserved_2F8[8];
    Ifx_GTM_TIM_CH CH6;
    unsigned char reserved_378[8];
    Ifx_GTM_TIM_CH CH7;
    unsigned char reserved_3F8[1032];
} Ifx_GTM_TIM;


typedef volatile struct _Ifx_GTM_TOM
{
    Ifx_GTM_TOM_CH CH0;
    Ifx_GTM_TOM_TGC0_GLB_CTRL TGC0_GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB TGC0_ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL TGC0_FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG TGC0_INT_TRIG;
    Ifx_GTM_TOM_CH CH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL TGC0_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT TGC0_ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL TGC0_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT TGC0_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH2;
    unsigned char reserved_B0[16];
    Ifx_GTM_TOM_CH CH3;
    unsigned char reserved_F0[16];
    Ifx_GTM_TOM_CH CH4;
    unsigned char reserved_130[16];
    Ifx_GTM_TOM_CH CH5;
    unsigned char reserved_170[16];
    Ifx_GTM_TOM_CH CH6;
    unsigned char reserved_1B0[16];
    Ifx_GTM_TOM_CH CH7;
    unsigned char reserved_1F0[16];
    Ifx_GTM_TOM_CH CH8;
    Ifx_GTM_TOM_TGC1_GLB_CTRL TGC1_GLB_CTRL;
    Ifx_GTM_TOM_TGC1_ACT_TB TGC1_ACT_TB;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL TGC1_FUPD_CTRL;
    Ifx_GTM_TOM_TGC1_INT_TRIG TGC1_INT_TRIG;
    Ifx_GTM_TOM_CH CH9;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL TGC1_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT TGC1_ENDIS_STAT;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL TGC1_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT TGC1_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH10;
    unsigned char reserved_2B0[16];
    Ifx_GTM_TOM_CH CH11;
    unsigned char reserved_2F0[16];
    Ifx_GTM_TOM_CH CH12;
    unsigned char reserved_330[16];
    Ifx_GTM_TOM_CH CH13;
    unsigned char reserved_370[16];
    Ifx_GTM_TOM_CH CH14;
    unsigned char reserved_3B0[16];
    Ifx_GTM_TOM_CH CH15;
    unsigned char reserved_3F0[1040];
} Ifx_GTM_TOM;
# 8230 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM
{
    Ifx_GTM_REV REV;
    Ifx_GTM_RST RST;
    Ifx_GTM_CTRL CTRL;
    Ifx_GTM_AEI_ADDR_XPT AEI_ADDR_XPT;
    Ifx_GTM_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_IRQ_EN IRQ_EN;
    Ifx_GTM_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_IRQ_MODE IRQ_MODE;
    Ifx_GTM_EIRQ_EN EIRQ_EN;
    unsigned char reserved_24[12];
    Ifx_GTM_BRIDGE BRIDGE;
    unsigned char reserved_3C[4];
    Ifx_GTM_TIM_AUX_IN_SRC TIM_AUX_IN_SRC[6];
    unsigned char reserved_58[168];
    Ifx_GTM_TBU TBU;
    unsigned char reserved_11C[100];
    Ifx_GTM_MON MON;
    unsigned char reserved_18C[116];
    Ifx_GTM_CMP CMP;
    unsigned char reserved_218[104];
    Ifx_GTM_ARU ARU;
    unsigned char reserved_2B4[76];
    Ifx_GTM_CMU CMU;
    unsigned char reserved_348[184];
    Ifx_GTM_BRC BRC;
    unsigned char reserved_478[392];
    Ifx_GTM_ICM ICM;
    unsigned char reserved_648[440];
    Ifx_GTM_SPE SPE[4];
    unsigned char reserved_A00[1280];
    Ifx_GTM_MAP_CTRL MAP_CTRL;
    unsigned char reserved_F04[60];
    Ifx_GTM_MCFG_CTRL MCFG_CTRL;
    unsigned char reserved_F44[188];
    Ifx_GTM_TIM TIM[6];
    unsigned char reserved_4000[16384];
    Ifx_GTM_TOM TOM[5];
    unsigned char reserved_A800[10240];
    Ifx_GTM_ATOM ATOM[9];
    unsigned char reserved_11800[26624];
    Ifx_GTM_F2A F2A0;
    unsigned char reserved_18044[60];
    Ifx_GTM_AFD AFD0;
    unsigned char reserved_18100[768];
    Ifx_GTM_FIFO FIFO0;
    unsigned char reserved_18600[14848];
    Ifx_GTM_F2A F2A1;
    unsigned char reserved_1C044[956];
    Ifx_GTM_FIFO FIFO1;
    unsigned char reserved_1C600[47616];
    Ifx_GTM_DPLL DPLL;
    unsigned char reserved_28F20[28896];
    Ifx_GTM_MCS MCS[6];
    unsigned char reserved_36000[433408];
    Ifx_GTM_CLC CLC;
    unsigned char reserved_9FD04[12];
    Ifx_GTM_INOUTSEL INOUTSEL;
    unsigned char reserved_9FDAC[4];
    Ifx_GTM_ADCTRIG0OUT0 ADCTRIG0OUT0;
    Ifx_GTM_ADCTRIG0OUT1 ADCTRIG0OUT1;
    Ifx_GTM_ADCTRIG1OUT0 ADCTRIG1OUT0;
    Ifx_GTM_ADCTRIG1OUT1 ADCTRIG1OUT1;
    unsigned char reserved_9FDC0[4];
    Ifx_GTM_OTBU0T OTBU0T;
    Ifx_GTM_OTBU1T OTBU1T;
    Ifx_GTM_OTBU2T OTBU2T;
    Ifx_GTM_OTSS OTSS;
    Ifx_GTM_OTSC0 OTSC0;
    Ifx_GTM_OTSC1 OTSC1;
    Ifx_GTM_ODA ODA;
    unsigned char reserved_9FDE0[8];
    Ifx_GTM_OCS OCS;
    Ifx_GTM_KRSTCLR KRSTCLR;
    Ifx_GTM_KRST1 KRST1;
    Ifx_GTM_KRST0 KRST0;
    Ifx_GTM_ACCEN1 ACCEN1;
    Ifx_GTM_ACCEN0 ACCEN0;
    Ifx_GTM_DXOUTCON DXOUTCON;
    Ifx_GTM_TRIGOUT TRIGOUT0[6];
    unsigned char reserved_9FE1C[40];
    Ifx_GTM_TRIGOUT TRIGOUT1[6];
    unsigned char reserved_9FE5C[20];
    Ifx_GTM_MCSINTSTAT MCSINTSTAT;
    Ifx_GTM_MCSINTCLR MCSINTCLR;
    unsigned char reserved_9FE78[24];
    Ifx_GTM_DXINCON DXINCON;
    Ifx_GTM_DATAIN DATAIN0[6];
    unsigned char reserved_9FEAC[40];
    Ifx_GTM_DATAIN DATAIN1[6];
    unsigned char reserved_9FEEC[20];
    Ifx_GTM_MSCSET MSCSET_1S[6];
    Ifx_GTM_MSCIN MSCIN[3];
    unsigned char reserved_9FF78[136];
} Ifx_GTM;
# 37 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_reg.h" 2
# 32 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxGtm_PinMap.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxGtm_cfg.h" 1
# 182 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxGtm_cfg.h"
typedef volatile struct IfxGtm_Tom_TGC Ifx_GTM_TOM_TGC;
# 192 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxGtm_cfg.h"
typedef enum
{
    IfxGtm_Atom_0,
    IfxGtm_Atom_1,
    IfxGtm_Atom_2,
    IfxGtm_Atom_3,
    IfxGtm_Atom_4,
    IfxGtm_Atom_5,
    IfxGtm_Atom_6,
    IfxGtm_Atom_7,
    IfxGtm_Atom_8
} IfxGtm_Atom;



typedef enum
{
    IfxGtm_Atom_Ch_none = -1,
    IfxGtm_Atom_Ch_0,
    IfxGtm_Atom_Ch_1,
    IfxGtm_Atom_Ch_2,
    IfxGtm_Atom_Ch_3,
    IfxGtm_Atom_Ch_4,
    IfxGtm_Atom_Ch_5,
    IfxGtm_Atom_Ch_6,
    IfxGtm_Atom_Ch_7
} IfxGtm_Atom_Ch;



typedef enum
{
    IfxGtm_Dpll_SubInc_1 = 0,
    IfxGtm_Dpll_SubInc_2
} IfxGtm_Dpll_SubInc;



typedef enum
{
    IfxGtm_FeatureControl_disabled = 0,
    IfxGtm_FeatureControl_disable = 1,
    IfxGtm_FeatureControl_enable = 2,
    IfxGtm_FeatureControl_enabled = 3
} IfxGtm_FeatureControl;



typedef enum
{
    IfxGtm_Tim_0,
    IfxGtm_Tim_1,
    IfxGtm_Tim_2,
    IfxGtm_Tim_3,
    IfxGtm_Tim_4,
    IfxGtm_Tim_5
} IfxGtm_Tim;



typedef enum
{
    IfxGtm_Tim_Ch_0,
    IfxGtm_Tim_Ch_1,
    IfxGtm_Tim_Ch_2,
    IfxGtm_Tim_Ch_3,
    IfxGtm_Tim_Ch_4,
    IfxGtm_Tim_Ch_5,
    IfxGtm_Tim_Ch_6,
    IfxGtm_Tim_Ch_7
} IfxGtm_Tim_Ch;



typedef enum
{
    IfxGtm_Tom_0,
    IfxGtm_Tom_1,
    IfxGtm_Tom_2,
    IfxGtm_Tom_3,
    IfxGtm_Tom_4
} IfxGtm_Tom;



typedef enum
{
    IfxGtm_Tom_Ch_none = -1,
    IfxGtm_Tom_Ch_0,
    IfxGtm_Tom_Ch_1,
    IfxGtm_Tom_Ch_2,
    IfxGtm_Tom_Ch_3,
    IfxGtm_Tom_Ch_4,
    IfxGtm_Tom_Ch_5,
    IfxGtm_Tom_Ch_6,
    IfxGtm_Tom_Ch_7,
    IfxGtm_Tom_Ch_8,
    IfxGtm_Tom_Ch_9,
    IfxGtm_Tom_Ch_10,
    IfxGtm_Tom_Ch_11,
    IfxGtm_Tom_Ch_12,
    IfxGtm_Tom_Ch_13,
    IfxGtm_Tom_Ch_14,
    IfxGtm_Tom_Ch_15
} IfxGtm_Tom_Ch;



typedef enum
{
    IfxGtm_Tom_Tgc_0,
    IfxGtm_Tom_Tgc_1
} IfxGtm_Tom_Tgc;
# 316 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxGtm_cfg.h"
struct IfxGtm_Tom_TGC
{
    Ifx_GTM_TOM_TGC0_GLB_CTRL GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG INT_TRIG;
    Ifx_GTM_TOM_CH xxxCH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT OUTEN_STAT;
};
# 33 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxGtm_PinMap.h" 2

# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h" 1
# 44 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm.h" 1
# 47 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm.h"
typedef enum
{
    IfxGtm_IrqMode_level = 0,
    IfxGtm_IrqMode_pulse = 1,
    IfxGtm_IrqMode_pulseNotify = 2,
    IfxGtm_IrqMode_singlePulse = 3
} IfxGtm_IrqMode;



typedef enum
{
    IfxGtm_SuspendMode_none = 0,
    IfxGtm_SuspendMode_hard = 1,
    IfxGtm_SuspendMode_soft = 2
} IfxGtm_SuspendMode;
# 77 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm.h"
static inline __attribute__ ((always_inline)) boolean IfxGtm_isEnabled(Ifx_GTM *gtm);







static inline __attribute__ ((always_inline)) boolean IfxGtm_isModuleSuspended(Ifx_GTM *gtm);







static inline __attribute__ ((always_inline)) void IfxGtm_setSuspendMode(Ifx_GTM *gtm, IfxGtm_SuspendMode mode);
# 103 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm.h"
extern void IfxGtm_disable(Ifx_GTM *gtm);





extern void IfxGtm_enable(Ifx_GTM *gtm);
# 121 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm.h"
extern float32 IfxGtm_getSysClkFrequency(void);





static inline __attribute__ ((always_inline)) boolean IfxGtm_isEnabled(Ifx_GTM *gtm)
{
    return gtm->CLC.B.DISS == 0;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_isModuleSuspended(Ifx_GTM *gtm)
{
    Ifx_GTM_OCS ocs;


    ocs.U = gtm->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxGtm_setSuspendMode(Ifx_GTM *gtm, IfxGtm_SuspendMode mode)
{
    Ifx_GTM_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;

    gtm->OCS.U = ocs.U;
}
# 45 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tbu.h" 1
# 49 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tbu.h"
typedef enum
{
    IfxGtm_Tbu_Ts_0,
    IfxGtm_Tbu_Ts_1,
    IfxGtm_Tbu_Ts_2
} IfxGtm_Tbu_Ts;
# 70 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tbu.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tbu_enableChannel(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel);
# 81 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tbu.h"
extern float32 IfxGtm_Tbu_getClockFrequency(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel);







static inline __attribute__ ((always_inline)) void IfxGtm_Tbu_enableChannel(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel)
{
    uint32 shift = channel * 2;

    __ldmst_c(&gtm->TBU.CHEN.U, (3U << shift), (IfxGtm_FeatureControl_enable << shift));
}
# 46 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h" 2

# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Cmu.h" 1
# 47 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Cmu.h"
typedef enum
{
    IfxGtm_Cmu_Clk_0 = 0,
    IfxGtm_Cmu_Clk_1,
    IfxGtm_Cmu_Clk_2,
    IfxGtm_Cmu_Clk_3,
    IfxGtm_Cmu_Clk_4,
    IfxGtm_Cmu_Clk_5,
    IfxGtm_Cmu_Clk_6,
    IfxGtm_Cmu_Clk_7
} IfxGtm_Cmu_Clk;

typedef enum
{
    IfxGtm_Cmu_Eclk_0 = 0,
    IfxGtm_Cmu_Eclk_1,
    IfxGtm_Cmu_Eclk_2
} IfxGtm_Cmu_Eclk;

typedef enum
{
    IfxGtm_Cmu_Fxclk_0 = 0,
    IfxGtm_Cmu_Fxclk_1,
    IfxGtm_Cmu_Fxclk_2,
    IfxGtm_Cmu_Fxclk_3,
    IfxGtm_Cmu_Fxclk_4
} IfxGtm_Cmu_Fxclk;



typedef enum
{
    IfxGtm_Cmu_Tim_Filter_Clk_0,
    IfxGtm_Cmu_Tim_Filter_Clk_1,
    IfxGtm_Cmu_Tim_Filter_Clk_6,
    IfxGtm_Cmu_Tim_Filter_Clk_7
} IfxGtm_Cmu_Tim_Filter_Clk;
# 102 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Cmu.h"
extern void IfxGtm_Cmu_enableClocks(Ifx_GTM *gtm, uint32 clkMask);







extern float32 IfxGtm_Cmu_getClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, boolean assumeEnabled);







extern float32 IfxGtm_Cmu_getEclkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex, boolean assumeEnabled);







extern float32 IfxGtm_Cmu_getFxClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Fxclk clkIndex, boolean assumeEnabled);





extern float32 IfxGtm_Cmu_getGclkFrequency(Ifx_GTM *gtm);






extern float32 IfxGtm_Cmu_getModuleFrequency(Ifx_GTM *gtm);






extern boolean IfxGtm_Cmu_isClkClockEnabled(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex);






extern boolean IfxGtm_Cmu_isEclkClockEnabled(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex);





extern boolean IfxGtm_Cmu_isFxClockEnabled(Ifx_GTM *gtm);
# 168 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Cmu.h"
extern void IfxGtm_Cmu_selectClkInput(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, boolean useGlobal);







extern void IfxGtm_Cmu_setClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, float32 frequency);







extern void IfxGtm_Cmu_setEclkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex, float32 frequency);






extern void IfxGtm_Cmu_setGclkFrequency(Ifx_GTM *gtm, float32 frequency);
# 48 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 49 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h" 2
# 58 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
typedef enum
{
    IfxGtm_Atom_Ch_OutputTrigger_forward = 0,
    IfxGtm_Atom_Ch_OutputTrigger_generate = 1
} IfxGtm_Atom_Ch_OutputTrigger;



typedef enum
{
    IfxGtm_Atom_Ch_ResetEvent_onCm0 = 0,
    IfxGtm_Atom_Ch_ResetEvent_onTrigger = 1
} IfxGtm_Atom_Ch_ResetEvent;



typedef enum
{
    IfxGtm_Atom_Mode_outputImmediate,
    IfxGtm_Atom_Mode_outputCompare,
    IfxGtm_Atom_Mode_outputPwm,
    IfxGtm_Atom_Mode_outputSerial
} IfxGtm_Atom_Mode;





typedef enum
{
    IfxGtm_Atom_AruInput_disabled = 0,
    IfxGtm_Atom_AruInput_enabled = 1
} IfxGtm_Atom_AruInput;



typedef enum
{
    IfxGtm_Atom_SomcControl_compareBoth = 0,
    IfxGtm_Atom_SomcControl_compareBoth1 = 1,
    IfxGtm_Atom_SomcControl_ccu0Ts0 = 2,
    IfxGtm_Atom_SomcControl_ccu1Ts12 = 3,
    IfxGtm_Atom_SomcControl_ccu0ccu1Ts0 = 4,
    IfxGtm_Atom_SomcControl_ccu0ccu1Ts12 = 5,
    IfxGtm_Atom_SomcControl_ccu0Ts0ccu1Ts12 = 6,
    IfxGtm_Atom_SomcControl_cancelCompare = 7
} IfxGtm_Atom_SomcControl;



typedef enum
{
    IfxGtm_Atom_SomcSignalLevelControl_noChange = 0,
    IfxGtm_Atom_SomcSignalLevelControl_sl0out1 = 1,
    IfxGtm_Atom_SomcSignalLevelControl_sl0out0 = 2,
    IfxGtm_Atom_SomcSignalLevelControl_toggle = 3
} IfxGtm_Atom_SomcSignalLevelControl;
# 128 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
static inline __attribute__ ((always_inline)) Ifx_GTM_ATOM_CH *IfxGtm_Atom_Ch_getChannelPointer(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);
# 137 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Atom_Ch_setCompareShadow(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 shadowZero, uint32 shadowOne);
# 148 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Ch_clearOneNotification(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern void IfxGtm_Atom_Ch_clearZeroNotification(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);
# 166 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Ch_configurePwmMode(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, IfxGtm_Cmu_Clk clock, Ifx_ActiveState activeState, IfxGtm_Atom_Ch_ResetEvent resetEvent, IfxGtm_Atom_Ch_OutputTrigger trigger);







extern float32 IfxGtm_Atom_Ch_getClockFrequency(Ifx_GTM *gtm, Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern IfxGtm_Cmu_Clk IfxGtm_Atom_Ch_getClockSource(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern uint32 IfxGtm_Atom_Ch_getCompareOne(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern volatile uint32 *IfxGtm_Atom_Ch_getCompareOnePointer(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern uint32 IfxGtm_Atom_Ch_getCompareZero(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern volatile uint32 *IfxGtm_Atom_Ch_getCompareZeroPointer(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern boolean IfxGtm_Atom_Ch_getOutputLevel(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);







extern volatile Ifx_SRC_SRCR *IfxGtm_Atom_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Atom atom, IfxGtm_Atom_Ch channel);






extern volatile uint32 *IfxGtm_Atom_Ch_getTimerPointer(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern boolean IfxGtm_Atom_Ch_isOneNotification(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern boolean IfxGtm_Atom_Ch_isZeroNotification(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern void IfxGtm_Atom_Ch_raiseInterruptOne(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);






extern void IfxGtm_Atom_Ch_raiseInterruptZero(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);







extern void IfxGtm_Atom_Ch_setClockSource(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, IfxGtm_Cmu_Clk clock);
# 276 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Ch_setCompare(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 compareZero, uint32 compareOne);







extern void IfxGtm_Atom_Ch_setCompareOne(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 compareOne);







extern void IfxGtm_Atom_Ch_setCompareOneShadow(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 shadowOne);







extern void IfxGtm_Atom_Ch_setCompareZero(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 compareZero);







extern void IfxGtm_Atom_Ch_setCompareZeroShadow(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 shadowZero);







extern void IfxGtm_Atom_Ch_setCounterValue(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 value);







extern void IfxGtm_Atom_Ch_setMode(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, IfxGtm_Atom_Mode mode);
# 334 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Ch_setNotification(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, IfxGtm_IrqMode mode, boolean interruptOnCompareZero, boolean interruptOnCompareOne);







extern void IfxGtm_Atom_Ch_setOneShotMode(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, boolean enabled);







extern void IfxGtm_Atom_Ch_setResetSource(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, IfxGtm_Atom_Ch_ResetEvent event);







extern void IfxGtm_Atom_Ch_setSignalLevel(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, Ifx_ActiveState activeState);







extern void IfxGtm_Atom_Ch_setTriggerOutput(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, IfxGtm_Atom_Ch_OutputTrigger trigger);






extern uint32 IfxGtm_Atom_Ch_getCounterValue(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel);
# 389 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Atom_Agc_setChannelsUpdate(Ifx_GTM_ATOM_AGC *agc, uint32 value);
# 401 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern uint32 IfxGtm_Atom_Agc_buildFeature(uint16 enableMask, uint16 disableMask, uint8 bitfieldOffset);







extern uint32 IfxGtm_Atom_Agc_buildFeatureForChannel(IfxGtm_Atom_Ch channel, boolean enabled, uint8 bitfieldOffset);
# 418 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Agc_enableChannel(Ifx_GTM_ATOM_AGC *agc, IfxGtm_Atom_Ch channel, boolean enabled, boolean immediate);
# 427 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Agc_enableChannelOutput(Ifx_GTM_ATOM_AGC *agc, IfxGtm_Atom_Ch channel, boolean enabled, boolean immediate);







extern void IfxGtm_Atom_Agc_enableChannelUpdate(Ifx_GTM_ATOM_AGC *agc, IfxGtm_Atom_Ch channel, boolean enabled);
# 444 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Agc_enableChannels(Ifx_GTM_ATOM_AGC *agc, uint16 enableMask, uint16 disableMask, boolean immediate);
# 453 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Agc_enableChannelsOutput(Ifx_GTM_ATOM_AGC *agc, uint16 enableMask, uint16 disableMask, boolean immediate);







extern void IfxGtm_Atom_Agc_enableChannelsTrigger(Ifx_GTM_ATOM_AGC *agc, uint16 enableMask, uint16 disableMask);







extern void IfxGtm_Atom_Agc_enableChannelsUpdate(Ifx_GTM_ATOM_AGC *agc, uint16 enableMask, uint16 disableMask);






extern void IfxGtm_Atom_Agc_enableTimeTrigger(Ifx_GTM_ATOM_AGC *agc, boolean enabled);






extern void IfxGtm_Atom_Agc_resetChannels(Ifx_GTM_ATOM_AGC *agc, uint32 resetMask);
# 492 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Agc_setChannelForceUpdate(Ifx_GTM_ATOM_AGC *agc, IfxGtm_Atom_Ch channel, boolean enabled, boolean resetEnabled);
# 502 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Agc_setChannelsForceUpdate(Ifx_GTM_ATOM_AGC *agc, uint16 enableMask, uint16 disableMask, uint16 resetEnableMask, uint16 resetDisableMask);







extern void IfxGtm_Atom_Agc_setTimeTrigger(Ifx_GTM_ATOM_AGC *agc, IfxGtm_Tbu_Ts base, uint32 value);





extern void IfxGtm_Atom_Agc_trigger(Ifx_GTM_ATOM_AGC *agc);
# 530 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Atom.h"
extern void IfxGtm_Atom_Ch_setAruInput(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, boolean enabled);







extern void IfxGtm_Atom_Ch_setSomcControl(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, IfxGtm_Atom_SomcControl control);







extern void IfxGtm_Atom_Ch_setSomcSignalLevelControl(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, IfxGtm_Atom_SomcSignalLevelControl ctrl);







extern void IfxGtm_Atom_Ch_setAruReadAddress0(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 address);







extern void IfxGtm_Atom_Ch_setAruReadAddress1(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 address);





static inline __attribute__ ((always_inline)) Ifx_GTM_ATOM_CH *IfxGtm_Atom_Ch_getChannelPointer(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel)
{
    return (Ifx_GTM_ATOM_CH *)((uint32)&atom->CH0.RDADDR.U + 0x80 * channel);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Atom_Ch_setCompareShadow(Ifx_GTM_ATOM *atom, IfxGtm_Atom_Ch channel, uint32 shadowZero, uint32 shadowOne)
{
    Ifx_GTM_ATOM_CH *atomCh = IfxGtm_Atom_Ch_getChannelPointer(atom, channel);

    atomCh->SR0.U = shadowZero;
    atomCh->SR1.U = shadowOne;
}


static inline __attribute__ ((always_inline)) void IfxGtm_Atom_Agc_setChannelsUpdate(Ifx_GTM_ATOM_AGC *agc, uint32 value)
{
    agc->GLB_CTRL.U = value;
}
# 35 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxGtm_PinMap.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h" 1
# 64 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
typedef enum
{
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0 = 0,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk1 = 1,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk2 = 2,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk3 = 3,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk4 = 4,
    IfxGtm_Tom_Ch_ClkSrc_noClock = 5
} IfxGtm_Tom_Ch_ClkSrc;



typedef enum
{
    IfxGtm_Tom_Ch_OutputTrigger_forward = 0,
    IfxGtm_Tom_Ch_OutputTrigger_generate = 1
} IfxGtm_Tom_Ch_OutputTrigger;



typedef enum
{
    IfxGtm_Tom_Ch_ResetEvent_onCm0 = 0,
    IfxGtm_Tom_Ch_ResetEvent_onTrigger = 1
} IfxGtm_Tom_Ch_ResetEvent;
# 104 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
static inline __attribute__ ((always_inline)) Ifx_GTM_TOM_CH *IfxGtm_Tom_Ch_getChannelPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);
# 115 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_clearOneNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_clearZeroNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern float32 IfxGtm_Tom_Ch_getClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern IfxGtm_Tom_Ch_ClkSrc IfxGtm_Tom_Ch_getClockSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern uint32 IfxGtm_Tom_Ch_getCompareOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern volatile uint32 *IfxGtm_Tom_Ch_getCompareOnePointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern uint32 IfxGtm_Tom_Ch_getCompareZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern volatile uint32 *IfxGtm_Tom_Ch_getCompareZeroPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_getOutputLevel(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern volatile Ifx_SRC_SRCR *IfxGtm_Tom_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tom tom, IfxGtm_Tom_Ch channel);






extern Ifx_GTM_TOM_TGC *IfxGtm_Tom_Ch_getTgcPointer(Ifx_GTM_TOM *tom, uint32 tgcIndex);






extern volatile uint32 *IfxGtm_Tom_Ch_getTimerPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_isOneNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_isZeroNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_raiseInterruptOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_raiseInterruptZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern void IfxGtm_Tom_Ch_setClockSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_ClkSrc clock);
# 239 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setCompare(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareZero, uint32 compareOne);







extern void IfxGtm_Tom_Ch_setCompareOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareOne);







extern void IfxGtm_Tom_Ch_setCompareOneShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowOne);
# 264 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setCompareShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowZero, uint32 shadowOne);







extern void IfxGtm_Tom_Ch_setCompareZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareZero);







extern void IfxGtm_Tom_Ch_setCompareZeroShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowZero);







extern void IfxGtm_Tom_Ch_setCounterValue(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 value);







extern void IfxGtm_Tom_Ch_setGatedCounter(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, boolean enabled);
# 306 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_IrqMode mode, boolean interruptOnCompareZero, boolean interruptOnCompareOne);







extern void IfxGtm_Tom_Ch_setOneShotMode(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, boolean enabled);







extern void IfxGtm_Tom_Ch_setPcm(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, boolean enabled);







extern void IfxGtm_Tom_Ch_setResetSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_ResetEvent event);







extern void IfxGtm_Tom_Ch_setSignalLevel(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, Ifx_ActiveState activeState);







extern void IfxGtm_Tom_Ch_setSpe(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, boolean enabled);







extern void IfxGtm_Tom_Ch_setTriggerOutput(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_OutputTrigger trigger);
# 370 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tom_Tgc_writeGlobalControl(Ifx_GTM_TOM_TGC *tgc, uint32 control);
# 382 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern uint32 IfxGtm_Tom_Tgc_buildFeature(uint16 enableMask, uint16 disableMask, uint8 bitfieldOffset);







extern uint32 IfxGtm_Tom_Tgc_buildFeatureForChannel(IfxGtm_Tom_Ch channel, boolean enabled, uint8 bitfieldOffset);
# 399 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannel(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean immediate);
# 408 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannelOutput(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean immediate);







extern void IfxGtm_Tom_Tgc_enableChannelUpdate(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled);
# 425 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannels(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, boolean immediate);
# 434 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannelsOutput(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, boolean immediate);







extern void IfxGtm_Tom_Tgc_enableChannelsTrigger(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask);







extern void IfxGtm_Tom_Tgc_enableChannelsUpdate(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask);






extern void IfxGtm_Tom_Tgc_enableTimeTrigger(Ifx_GTM_TOM_TGC *tgc, boolean enabled);






extern void IfxGtm_Tom_Tgc_resetChannels(Ifx_GTM_TOM_TGC *tgc, uint32 resetMask);
# 473 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_setChannelForceUpdate(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean resetEnabled);
# 483 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_setChannelsForceUpdate(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, uint16 resetEnableMask, uint16 resetDisableMask);







extern void IfxGtm_Tom_Tgc_setTimeTrigger(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tbu_Ts base, uint32 value);





extern void IfxGtm_Tom_Tgc_trigger(Ifx_GTM_TOM_TGC *tgc);







static inline __attribute__ ((always_inline)) Ifx_GTM_TOM_CH *IfxGtm_Tom_Ch_getChannelPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel)
{
    return (Ifx_GTM_TOM_CH *)((uint32)&tom->CH0.CTRL.U + 0x40 * channel);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tom_Tgc_writeGlobalControl(Ifx_GTM_TOM_TGC *tgc, uint32 control)
{
    tgc->GLB_CTRL.U = control;
}
# 36 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxGtm_PinMap.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tim.h" 1
# 45 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tim.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxGtm_bf.h" 1
# 46 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tim.h" 2







typedef enum
{
    IfxGtm_Tim_CntsSel_cntReg = 0,
    IfxGtm_Tim_CntsSel_tbuTs0
} IfxGtm_Tim_CntsSel;



typedef enum
{
    IfxGtm_Tim_FilterCounter_upDown = 0,
    IfxGtm_Tim_FilterCounter_hold
} IfxGtm_Tim_FilterCounter;



typedef enum
{
    IfxGtm_Tim_FilterMode_immediateEdgePropagation = 0,
    IfxGtm_Tim_FilterMode_individualDeglitchTime
} IfxGtm_Tim_FilterMode;

typedef enum
{
    IfxGtm_Tim_GprSel_tbuTs0 = 0,
    IfxGtm_Tim_GprSel_tbuTs1,
    IfxGtm_Tim_GprSel_tbuTs2,
    IfxGtm_Tim_GprSel_cnts
} IfxGtm_Tim_GprSel;

typedef enum
{
    IfxGtm_Tim_Input_currentChannel = 0,
    IfxGtm_Tim_Input_adjacentChannel
} IfxGtm_Tim_Input;

typedef enum
{
    IfxGtm_Tim_Mode_pwmMeasurement = 0,
    IfxGtm_Tim_Mode_pulseIntegration,
    IfxGtm_Tim_Mode_inputEvent,
    IfxGtm_Tim_Mode_inputPrescaler,
    IfxGtm_Tim_Mode_bitCompression
} IfxGtm_Tim_Mode;



typedef enum
{
    IfxGtm_Tim_Timeout_disabled,
    IfxGtm_Tim_Timeout_risingEdge,
    IfxGtm_Tim_Timeout_fallingEdge,
    IfxGtm_Tim_Timeout_bothEdge
} IfxGtm_Tim_Timeout;
# 121 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tim.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearCntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearDataLostEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearEcntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearGlitchEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearNewValueEvent(Ifx_GTM_TIM_CH *channel);







static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxGtm_Tim_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tim tim, IfxGtm_Tim_Ch channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isCntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isDataLostEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isEcntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isGlitchEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isNewValueEvent(Ifx_GTM_TIM_CH *channel);






static inline __attribute__ ((always_inline)) Ifx_GTM_TIM_CH *IfxGtm_Tim_getChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel);






static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_resetChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel);
# 208 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tim.h"
extern float32 IfxGtm_Tim_Ch_getCaptureClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Clk IfxGtm_Tim_Ch_getCaptureClockSource(Ifx_GTM_TIM_CH *channel);






extern float32 IfxGtm_Tim_Ch_getFilterClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Tim_Filter_Clk IfxGtm_Tim_Ch_getFilterClockSource(Ifx_GTM_TIM_CH *channel);






extern float32 IfxGtm_Tim_Ch_getTimeoutClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Clk IfxGtm_Tim_Ch_getTimeoutClockSource(Ifx_GTM_TIM_CH *channel);
# 250 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Tim.h"
extern void IfxGtm_Tim_Ch_setChannelNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnNewVal, boolean irqOnCntOverflow, boolean irqOnEcntOverflow, boolean irqOnDatalost);






extern void IfxGtm_Tim_Ch_setClockSource(Ifx_GTM_TIM_CH *channel, IfxGtm_Cmu_Clk clock);






extern void IfxGtm_Tim_Ch_setFilterNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnGlitch);






extern void IfxGtm_Tim_Ch_setNotificationMode(Ifx_GTM_TIM_CH *channel, IfxGtm_IrqMode mode);






extern void IfxGtm_Tim_Ch_setTimeoutNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnTimeout);







static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearCntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (2u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearDataLostEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (3u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearEcntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (1u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearGlitchEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (5u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearNewValueEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (0u);
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxGtm_Tim_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tim tim, IfxGtm_Tim_Ch channel)
{
    return &(*(Ifx_SRC*)0xF0038000u).GTM.GTM[0].TIM[tim][channel];
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isCntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.CNTOFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isDataLostEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.GPROFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isEcntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.ECNTOFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isGlitchEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.GLITCHDET == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isNewValueEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.NEWVAL == 1;
}


static inline __attribute__ ((always_inline)) Ifx_GTM_TIM_CH *IfxGtm_Tim_getChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel)
{
    return (Ifx_GTM_TIM_CH *)((uint32)&tim->CH0.GPR0.U + ((uint32)&tim->CH1 - (uint32)&tim->CH0) * channel);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_resetChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel)
{
    tim->RST.U |= (uint32)1 << (uint32)channel;
}
# 37 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxGtm_PinMap.h" 2





typedef enum
{
    IfxGtm_ChXSel_a,
    IfxGtm_ChXSel_b,
    IfxGtm_ChXSel_c,
    IfxGtm_ChXSel_d,

    IfxGtm_ChXSel_e,
    IfxGtm_ChXSel_f,
    IfxGtm_ChXSel_g,
    IfxGtm_ChXSel_h,

    IfxGtm_ChXSel_i,
    IfxGtm_ChXSel_j,
    IfxGtm_ChXSel_k,
    IfxGtm_ChXSel_l,

    IfxGtm_ChXSel_m,
    IfxGtm_ChXSel_n,
    IfxGtm_ChXSel_o,
    IfxGtm_ChXSel_p
} IfxGtm_ChXSel;


typedef enum
{
    IfxGtm_ToutSel_a,
    IfxGtm_ToutSel_b,
    IfxGtm_ToutSel_c,
    IfxGtm_ToutSel_d,
    IfxGtm_ToutSel_e
} IfxGtm_ToutSel;


typedef const struct
{
    IfxGtm_Tim tim;
    IfxGtm_Tim_Ch channel;
    IfxPort_Pin pin;
    IfxGtm_ChXSel select;
} IfxGtm_Tim_TinMap;


typedef const struct
{
    IfxGtm_Atom atom;
    IfxGtm_Atom_Ch channel;
    IfxGtm_ToutSel toutSel;
    uint32 toutn;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxGtm_Atom_ToutMap;


typedef IfxGtm_Atom_ToutMap *IfxGtm_Atom_ToutMapP;


typedef const struct
{
    IfxGtm_Tom tom;
    IfxGtm_Tom_Ch channel;
    IfxGtm_ToutSel toutSel;
    uint32 toutn;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxGtm_Tom_ToutMap;


typedef const struct
{
    Ifx_GTM* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxGtm_Clk_Out;


typedef IfxGtm_Tom_ToutMap *IfxGtm_Tom_ToutMapP;

extern void IfxGtm_PinMap_setTimTin(IfxGtm_Tim_TinMap *config, IfxPort_InputMode inputMode);
extern void IfxGtm_PinMap_setAtomTout(IfxGtm_Atom_ToutMap *config, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
extern void IfxGtm_PinMap_setTomTout(IfxGtm_Tom_ToutMap *config, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);

extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT0_P02_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT48_P22_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT53_P21_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT85_P14_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT8_P02_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT9_P00_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT10_P00_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT11_P00_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT1_P02_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT31_P33_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT47_P22_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT54_P21_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT84_P14_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT12_P00_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT2_P02_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT33_P33_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT46_P23_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT55_P21_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT83_P14_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT13_P00_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT38_P32_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT3_P02_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT49_P22_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT56_P21_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT60_P20_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT82_P14_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT14_P00_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT39_P32_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT4_P02_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT50_P22_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT57_P21_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT61_P20_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT81_P14_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT15_P00_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT23_P33_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT40_P32_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT41_P23_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT58_P21_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT5_P02_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT106_P10_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT16_P00_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT24_P33_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT42_P23_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT59_P20_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT6_P02_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT17_P00_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT25_P33_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT45_P23_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT64_P20_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT7_P02_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT0_P02_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT109_P10_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT68_P20_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT76_P15_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT77_P15_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT87_P14_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT8_P02_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT9_P00_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT103_P10_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT10_P00_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT11_P00_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT1_P02_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT31_P33_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT69_P20_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT78_P15_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT79_P15_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT86_P14_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT104_P10_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT107_P10_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT12_P00_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT2_P02_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT33_P33_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT70_P20_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT80_P14_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT105_P10_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT108_P10_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT13_P00_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT38_P32_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT3_P02_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT60_P20_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT71_P15_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT102_P10_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT14_P00_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT39_P32_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT4_P02_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT61_P20_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT72_P15_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT110_P10_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT15_P00_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT23_P33_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT40_P32_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT41_P23_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT5_P02_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT65_P20_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT73_P15_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT16_P00_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT24_P33_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT42_P23_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT66_P20_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT6_P02_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT74_P15_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT17_P00_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT25_P33_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT45_P23_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT67_P20_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT75_P15_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT7_P02_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_0_TOUT18_P00_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_0_TOUT26_P33_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_0_TOUT32_P33_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_0_TOUT94_P13_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_1_TOUT19_P00_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_1_TOUT27_P33_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_1_TOUT43_P23_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_1_TOUT95_P11_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT20_P00_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT28_P33_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT44_P23_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT88_P14_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT96_P11_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_3_TOUT21_P00_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_3_TOUT29_P33_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_3_TOUT89_P14_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_3_TOUT97_P11_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT22_P33_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT30_P33_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT34_P33_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT51_P21_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT90_P14_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT98_P11_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT138_P23_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT35_P33_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT52_P21_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT91_P13_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT99_P11_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT100_P11_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT139_P23_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT36_P32_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT62_P20_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT92_P13_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_7_TOUT101_P11_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_7_TOUT140_P32_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_7_TOUT63_P20_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM2_7_TOUT93_P13_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_0_TOUT18_P00_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_0_TOUT26_P33_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_0_TOUT32_P33_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_0_TOUT94_P13_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT111_P01_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT19_P00_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT27_P33_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT43_P23_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT95_P11_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT112_P01_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT20_P00_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT28_P33_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT44_P23_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT88_P14_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT96_P11_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT113_P01_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT21_P00_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT29_P33_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT89_P14_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT97_P11_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT114_P01_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT22_P33_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT30_P33_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT34_P33_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT51_P21_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT90_P14_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT98_P11_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT115_P01_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT35_P33_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT52_P21_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT91_P13_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT99_P11_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_6_TOUT100_P11_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_6_TOUT36_P32_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_6_TOUT62_P20_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_6_TOUT92_P13_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_7_TOUT101_P11_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_7_TOUT63_P20_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM3_7_TOUT93_P13_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT109_P10_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT48_P22_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT53_P21_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT68_P20_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT76_P15_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT77_P15_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT85_P14_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT87_P14_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT103_P10_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT47_P22_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT54_P21_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT69_P20_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT78_P15_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT79_P15_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT84_P14_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT86_P14_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT104_P10_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT107_P10_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT46_P23_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT55_P21_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT70_P20_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT80_P14_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT83_P14_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT105_P10_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT108_P10_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT49_P22_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT56_P21_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT71_P15_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT82_P14_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT102_P10_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT50_P22_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT57_P21_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT72_P15_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT81_P14_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT110_P10_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT116_P02_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT58_P21_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT65_P20_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT73_P15_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT106_P10_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT117_P02_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT59_P20_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT66_P20_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT74_P15_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_7_TOUT118_P02_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_7_TOUT64_P20_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_7_TOUT67_P20_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM4_7_TOUT75_P15_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_0_TOUT119_P11_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_0_TOUT155_P01_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_0_TOUT174_P31_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_0_TOUT206_P25_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_0_TOUT249_P13_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_1_TOUT120_P11_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_1_TOUT156_P01_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_1_TOUT175_P31_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_1_TOUT207_P25_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_1_TOUT242_P15_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_1_TOUT265_P10_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_2_TOUT121_P11_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_2_TOUT157_P01_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_2_TOUT176_P31_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_2_TOUT208_P25_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_2_TOUT243_P15_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_2_TOUT266_P10_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_3_TOUT122_P11_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_3_TOUT165_P01_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_3_TOUT177_P31_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_3_TOUT209_P25_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_3_TOUT244_P15_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_3_TOUT267_P10_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_4_TOUT123_P11_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_4_TOUT158_P01_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_4_TOUT178_P31_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_4_TOUT210_P25_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_4_TOUT245_P15_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_4_TOUT268_P10_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_5_TOUT124_P11_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_5_TOUT159_P01_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_5_TOUT179_P31_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_5_TOUT211_P25_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_5_TOUT246_P15_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_5_TOUT269_P10_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_6_TOUT125_P11_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_6_TOUT160_P01_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_6_TOUT180_P31_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_6_TOUT212_P25_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_6_TOUT212_P26_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_6_TOUT247_P15_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_6_TOUT270_P10_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_7_TOUT126_P11_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_7_TOUT161_P01_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_7_TOUT181_P31_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_7_TOUT213_P25_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM5_7_TOUT248_P13_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_0_TOUT127_P11_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_0_TOUT141_P32_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_0_TOUT155_P01_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_0_TOUT182_P31_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_0_TOUT214_P25_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_0_TOUT250_P13_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_1_TOUT128_P12_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_1_TOUT142_P32_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_1_TOUT156_P01_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_1_TOUT183_P31_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_1_TOUT215_P25_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_1_TOUT251_P13_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_1_TOUT258_P14_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_2_TOUT129_P12_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_2_TOUT143_P33_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_2_TOUT157_P01_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_2_TOUT184_P31_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_2_TOUT216_P25_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_2_TOUT252_P13_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_2_TOUT259_P14_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_3_TOUT144_P33_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_3_TOUT165_P01_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_3_TOUT185_P31_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_3_TOUT217_P25_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_3_TOUT253_P13_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_3_TOUT260_P14_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_4_TOUT158_P01_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_4_TOUT186_P31_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_4_TOUT218_P25_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_4_TOUT254_P13_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_4_TOUT261_P14_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_5_TOUT146_P34_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_5_TOUT159_P01_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_5_TOUT187_P31_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_5_TOUT219_P25_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_5_TOUT255_P13_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_5_TOUT262_P13_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_6_TOUT147_P34_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_6_TOUT160_P01_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_6_TOUT188_P31_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_6_TOUT220_P25_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_6_TOUT256_P13_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_6_TOUT263_P14_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_7_TOUT148_P34_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_7_TOUT161_P01_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_7_TOUT189_P31_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_7_TOUT221_P25_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM6_7_TOUT264_P13_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_0_TOUT149_P34_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_0_TOUT162_P01_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_0_TOUT190_P30_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_0_TOUT222_P24_0_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_0_TOUT249_P13_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_1_TOUT150_P34_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_1_TOUT163_P01_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_1_TOUT191_P30_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_1_TOUT223_P24_1_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_1_TOUT242_P15_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_1_TOUT265_P10_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_2_TOUT164_P01_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_2_TOUT192_P30_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_2_TOUT224_P24_2_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_2_TOUT243_P15_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_2_TOUT266_P10_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_3_TOUT166_P00_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_3_TOUT193_P30_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_3_TOUT225_P24_3_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_3_TOUT244_P15_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_3_TOUT267_P10_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_4_TOUT167_P00_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_4_TOUT194_P30_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_4_TOUT226_P24_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_4_TOUT245_P15_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_4_TOUT268_P10_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_5_TOUT168_P00_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_5_TOUT195_P30_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_5_TOUT227_P24_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_5_TOUT246_P15_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_5_TOUT269_P10_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_6_TOUT151_P02_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_6_TOUT153_P02_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_6_TOUT196_P30_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_6_TOUT228_P24_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_6_TOUT247_P15_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_6_TOUT270_P10_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_7_TOUT152_P02_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_7_TOUT154_P02_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_7_TOUT197_P30_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_7_TOUT229_P24_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM7_7_TOUT248_P13_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_0_TOUT162_P01_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_0_TOUT198_P30_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_0_TOUT230_P24_8_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_0_TOUT250_P13_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_1_TOUT163_P01_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_1_TOUT199_P30_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_1_TOUT231_P24_9_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_1_TOUT251_P13_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_1_TOUT258_P14_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_2_TOUT164_P01_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_2_TOUT200_P30_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_2_TOUT232_P24_10_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_2_TOUT252_P13_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_2_TOUT259_P14_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_3_TOUT166_P00_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_3_TOUT201_P30_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_3_TOUT233_P24_11_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_3_TOUT253_P13_4_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_3_TOUT260_P14_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_4_TOUT167_P00_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_4_TOUT202_P30_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_4_TOUT234_P24_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_4_TOUT254_P13_5_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_4_TOUT261_P14_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_5_TOUT168_P00_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_5_TOUT203_P30_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_5_TOUT235_P24_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_5_TOUT255_P13_6_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_5_TOUT262_P13_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_6_TOUT151_P02_12_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_6_TOUT153_P02_13_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_6_TOUT204_P30_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_6_TOUT236_P24_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_6_TOUT256_P13_7_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_6_TOUT263_P14_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_7_TOUT152_P02_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_7_TOUT154_P02_14_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_7_TOUT205_P30_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_7_TOUT237_P24_15_OUT;
extern IfxGtm_Atom_ToutMap IfxGtm_ATOM8_7_TOUT264_P13_15_OUT;
extern IfxGtm_Clk_Out IfxGtm_CLK0_P23_1_OUT;
extern IfxGtm_Clk_Out IfxGtm_CLK1_P32_4_OUT;
extern IfxGtm_Clk_Out IfxGtm_CLK2_P11_12_OUT;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN0_P02_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN109_P10_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN18_P00_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN249_P13_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN26_P33_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN32_P33_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN48_P22_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN53_P21_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN77_P15_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN85_P14_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN87_P14_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN103_P10_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN19_P00_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN1_P02_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN265_P10_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN27_P33_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN31_P33_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN47_P22_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN54_P21_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN78_P15_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN86_P14_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN104_P10_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN107_P10_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN116_P02_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN20_P00_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN266_P10_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN28_P33_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN2_P02_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN33_P33_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN46_P23_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN55_P21_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN79_P15_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN105_P10_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN108_P10_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN117_P02_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN21_P00_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN267_P10_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN29_P33_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN38_P32_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN3_P02_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN49_P22_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN56_P21_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN80_P14_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN102_P10_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN22_P33_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN268_P10_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN30_P33_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN39_P32_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN4_P02_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN50_P22_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN57_P21_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN81_P14_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN110_P10_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN111_P01_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN23_P33_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN269_P10_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN40_P32_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN41_P23_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN58_P21_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN5_P02_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN82_P14_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN106_P10_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN112_P01_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN24_P33_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN270_P10_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN42_P23_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN43_P23_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN59_P20_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN6_P02_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN83_P14_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN118_P02_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN127_P11_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN25_P33_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN44_P23_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN45_P23_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN64_P20_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN7_P02_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN84_P14_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN0_P02_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN109_P10_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN18_P00_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN26_P33_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN32_P33_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN48_P22_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN53_P21_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN77_P15_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN85_P14_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN87_P14_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN103_P10_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN19_P00_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN1_P02_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN27_P33_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN31_P33_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN47_P22_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN54_P21_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN78_P15_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN86_P14_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN104_P10_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN107_P10_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN138_P23_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN20_P00_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN28_P33_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN2_P02_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN33_P33_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN46_P23_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN55_P21_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN79_P15_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN105_P10_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN108_P10_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN139_P23_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN21_P00_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN29_P33_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN38_P32_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN3_P02_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN49_P22_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN56_P21_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN80_P14_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN102_P10_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN22_P33_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN30_P33_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN39_P32_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN4_P02_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN50_P22_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN57_P21_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN81_P14_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN110_P10_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN23_P33_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN40_P32_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN41_P23_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN58_P21_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN5_P02_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN82_P14_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN106_P10_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN24_P33_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN42_P23_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN43_P23_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN59_P20_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN6_P02_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN83_P14_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN25_P33_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN44_P23_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN45_P23_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN64_P20_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN7_P02_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN84_P14_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN119_P11_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN143_P33_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN174_P31_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN34_P33_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN68_P20_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN76_P15_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN8_P02_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN94_P13_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN9_P00_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN10_P00_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN11_P00_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN120_P11_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN144_P33_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN175_P31_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN242_P15_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN35_P33_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN69_P20_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN95_P11_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN121_P11_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN12_P00_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN176_P31_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN243_P15_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN36_P32_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN70_P20_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN88_P14_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN96_P11_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN113_P01_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN122_P11_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN13_P00_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN146_P34_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN177_P31_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN244_P15_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN60_P20_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN71_P15_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN89_P14_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN97_P11_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN123_P11_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN147_P34_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN14_P00_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN178_P31_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN245_P15_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN51_P21_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN61_P20_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN72_P15_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN90_P14_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN98_P11_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN114_P01_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN124_P11_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN148_P34_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN15_P00_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN179_P31_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN246_P15_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN52_P21_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN65_P20_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN73_P15_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN91_P13_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN99_P11_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN100_P11_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN125_P11_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN149_P34_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN16_P00_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN180_P31_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN247_P15_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN62_P20_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN66_P20_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN74_P15_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN92_P13_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN101_P11_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN115_P01_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN126_P11_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN150_P34_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN17_P00_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN181_P31_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN248_P13_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN63_P20_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN67_P20_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN75_P15_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN93_P13_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN128_P12_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN130_P22_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN206_P25_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN250_P13_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN34_P33_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN68_P20_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN76_P15_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN8_P02_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN94_P13_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN9_P00_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN10_P00_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN11_P00_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN129_P12_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN131_P22_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN207_P25_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN251_P13_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN258_P14_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN35_P33_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN69_P20_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN95_P11_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN12_P00_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN132_P22_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN208_P25_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN252_P13_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN259_P14_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN36_P32_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN70_P20_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN88_P14_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN96_P11_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN133_P22_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN13_P00_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN209_P25_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN253_P13_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN260_P14_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN60_P20_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN71_P15_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN89_P14_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN97_P11_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN134_P22_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN14_P00_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN210_P25_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN254_P13_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN261_P14_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN51_P21_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN61_P20_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN72_P15_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN90_P14_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN98_P11_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN135_P22_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN140_P32_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN15_P00_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN211_P25_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN255_P13_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN262_P13_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN52_P21_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN65_P20_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN73_P15_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN91_P13_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN99_P11_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN100_P11_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN136_P22_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN141_P32_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN16_P00_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN212_P26_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN256_P13_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN263_P14_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN62_P20_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN66_P20_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN74_P15_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN92_P13_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN101_P11_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN137_P22_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN142_P32_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN17_P00_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN213_P25_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN264_P13_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN63_P20_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN67_P20_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN75_P15_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN93_P13_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN119_P11_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN128_P12_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN151_P02_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN158_P01_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN167_P00_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN190_P30_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN214_P25_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN222_P24_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_0_TIN249_P13_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN120_P11_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN129_P12_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN152_P02_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN159_P01_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN168_P00_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN191_P30_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN215_P25_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN223_P24_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN242_P15_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_1_TIN265_P10_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN116_P02_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN121_P11_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN138_P23_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN153_P02_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN160_P01_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN192_P30_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN216_P25_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN224_P24_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN243_P15_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_2_TIN266_P10_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN117_P02_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN122_P11_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN139_P23_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN154_P02_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN161_P01_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN193_P30_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN217_P25_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN225_P24_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN244_P15_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_3_TIN267_P10_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN118_P02_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN123_P11_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN155_P01_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN162_P01_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN194_P30_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN218_P25_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN226_P24_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN245_P15_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_4_TIN268_P10_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN111_P01_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN124_P11_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN156_P01_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN163_P01_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN195_P30_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN219_P25_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN227_P24_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN246_P15_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_5_TIN269_P10_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN112_P01_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN125_P11_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN157_P01_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN164_P01_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN196_P30_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN220_P25_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN228_P24_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN247_P15_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_6_TIN270_P10_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_7_TIN126_P11_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_7_TIN127_P11_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_7_TIN165_P01_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_7_TIN166_P00_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_7_TIN197_P30_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_7_TIN221_P25_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_7_TIN229_P24_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM4_7_TIN248_P13_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_0_TIN143_P33_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_0_TIN151_P02_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_0_TIN158_P01_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_0_TIN167_P00_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_0_TIN182_P31_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_0_TIN198_P30_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_0_TIN230_P24_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_0_TIN250_P13_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN144_P33_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN152_P02_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN159_P01_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN168_P00_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN183_P31_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN199_P30_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN231_P24_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN251_P13_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_1_TIN258_P14_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_2_TIN153_P02_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_2_TIN160_P01_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_2_TIN184_P31_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_2_TIN200_P30_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_2_TIN232_P24_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_2_TIN252_P13_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_2_TIN259_P14_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN113_P01_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN146_P34_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN154_P02_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN161_P01_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN185_P31_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN201_P30_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN233_P24_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN253_P13_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_3_TIN260_P14_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_4_TIN147_P34_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_4_TIN155_P01_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_4_TIN162_P01_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_4_TIN186_P31_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_4_TIN202_P30_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_4_TIN234_P24_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_4_TIN254_P13_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_4_TIN261_P14_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN114_P01_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN140_P32_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN148_P34_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN156_P01_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN163_P01_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN187_P31_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN203_P30_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN235_P24_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN255_P13_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_5_TIN262_P13_13_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN114_P01_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN141_P32_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN149_P34_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN157_P01_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN164_P01_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN188_P31_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN204_P30_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN236_P24_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN256_P13_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_6_TIN263_P14_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN115_P01_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN142_P32_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN150_P34_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN165_P01_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN166_P00_14_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN189_P31_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN205_P30_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN237_P24_15_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM5_7_TIN264_P13_15_IN;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT109_P10_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT18_P00_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT26_P33_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT77_P15_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT85_P14_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT87_P14_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT41_P23_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT46_P23_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT43_P23_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT44_P23_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT101_P11_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT17_P00_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT42_P23_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT103_P10_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT19_P00_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT78_P15_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT86_P14_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT104_P10_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT107_P10_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT20_P00_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT33_P33_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT79_P15_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT88_P14_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT105_P10_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT108_P10_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT21_P00_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT38_P32_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT89_P14_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT102_P10_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT22_P33_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT39_P32_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT57_P21_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT90_P14_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT110_P10_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT23_P33_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT40_P32_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT58_P21_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT106_P10_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT24_P33_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT42_P23_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT59_P20_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT83_P14_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT25_P33_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT45_P23_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT84_P14_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT93_P13_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT51_P21_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT1_P02_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT47_P22_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT52_P21_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT18_P00_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT26_P33_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT77_P15_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT85_P14_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT143_P33_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT266_P10_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT62_P20_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT144_P33_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT267_P10_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT60_P20_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT63_P20_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT268_P10_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT34_P33_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT61_P20_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT146_P34_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT269_P10_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT35_P33_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT147_P34_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT270_P10_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT36_P32_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT148_P34_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT150_P34_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT19_P00_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT242_P15_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT78_P15_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT86_P14_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT20_P00_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT243_P15_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT33_P33_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT79_P15_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT21_P00_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT244_P15_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT38_P32_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT22_P33_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT245_P15_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT39_P32_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT72_P15_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT23_P33_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT246_P15_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT40_P32_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT41_P23_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT247_P15_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT24_P33_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT43_P23_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT83_P14_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT17_P00_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT248_P13_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT25_P33_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT44_P23_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT45_P23_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT75_P15_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT84_P14_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT128_P12_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT141_P32_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT249_P13_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT129_P12_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT142_P32_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT1_P02_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT265_P10_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT119_P11_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT250_P13_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT87_P14_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT104_P10_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT107_P10_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT133_P22_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT260_P14_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT62_P20_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT105_P10_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT108_P10_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT134_P22_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT261_P14_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT63_P20_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT102_P10_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT135_P22_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT262_P13_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT34_P33_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT72_P15_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT110_P10_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT136_P22_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT263_P14_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT35_P33_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT137_P22_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT264_P13_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT36_P32_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_15_TOUT149_P34_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_15_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_15_TOUT75_P15_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT120_P11_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT251_P13_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT47_P22_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT121_P11_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT252_P13_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT46_P23_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT88_P14_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT122_P11_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT253_P13_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT60_P20_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT89_P14_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT123_P11_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT254_P13_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT57_P21_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT61_P20_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT90_P14_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT124_P11_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT255_P13_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT58_P21_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT106_P10_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT125_P11_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT256_P13_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT59_P20_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT101_P11_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT126_P11_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT130_P22_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT93_P13_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT109_P10_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT127_P11_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT131_P22_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT258_P14_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT51_P21_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT103_P10_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT132_P22_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT259_P14_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT52_P21_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_0_TOUT155_P01_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_0_TOUT174_P31_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_0_TOUT206_P25_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_10_TOUT164_P01_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_10_TOUT184_P31_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_10_TOUT216_P25_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_10_TOUT266_P10_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_11_TOUT166_P00_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_11_TOUT185_P31_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_11_TOUT217_P25_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_11_TOUT267_P10_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_12_TOUT167_P00_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_12_TOUT186_P31_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_12_TOUT218_P25_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_12_TOUT268_P10_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_13_TOUT138_P23_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_13_TOUT168_P00_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_13_TOUT187_P31_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_13_TOUT219_P25_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_13_TOUT269_P10_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_14_TOUT139_P23_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_14_TOUT151_P02_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_14_TOUT153_P02_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_14_TOUT188_P31_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_14_TOUT220_P25_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_14_TOUT270_P10_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_15_TOUT140_P32_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_15_TOUT152_P02_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_15_TOUT154_P02_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_15_TOUT189_P31_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_15_TOUT221_P25_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_1_TOUT111_P01_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_1_TOUT156_P01_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_1_TOUT175_P31_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_1_TOUT207_P25_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_1_TOUT242_P15_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_2_TOUT112_P01_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_2_TOUT157_P01_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_2_TOUT176_P31_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_2_TOUT208_P25_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_2_TOUT243_P15_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_3_TOUT113_P01_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_3_TOUT165_P01_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_3_TOUT177_P31_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_3_TOUT209_P25_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_3_TOUT244_P15_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_4_TOUT114_P01_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_4_TOUT158_P01_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_4_TOUT178_P31_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_4_TOUT210_P25_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_4_TOUT245_P15_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_5_TOUT115_P01_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_5_TOUT159_P01_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_5_TOUT179_P31_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_5_TOUT211_P25_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_5_TOUT246_P15_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_6_TOUT160_P01_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_6_TOUT180_P31_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_6_TOUT212_P25_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_6_TOUT212_P26_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_6_TOUT247_P15_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_7_TOUT161_P01_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_7_TOUT181_P31_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_7_TOUT213_P25_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_7_TOUT248_P13_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_8_TOUT162_P01_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_8_TOUT182_P31_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_8_TOUT214_P25_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_8_TOUT249_P13_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_9_TOUT163_P01_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_9_TOUT183_P31_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_9_TOUT215_P25_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM3_9_TOUT265_P10_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_0_TOUT155_P01_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_0_TOUT190_P30_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_0_TOUT222_P24_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_0_TOUT250_P13_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_10_TOUT164_P01_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_10_TOUT200_P30_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_10_TOUT232_P24_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_10_TOUT260_P14_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_11_TOUT166_P00_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_11_TOUT201_P30_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_11_TOUT233_P24_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_11_TOUT261_P14_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_12_TOUT167_P00_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_12_TOUT202_P30_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_12_TOUT234_P24_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_12_TOUT262_P13_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_13_TOUT168_P00_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_13_TOUT203_P30_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_13_TOUT235_P24_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_13_TOUT263_P14_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_14_TOUT151_P02_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_14_TOUT153_P02_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_14_TOUT204_P30_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_14_TOUT236_P24_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_14_TOUT264_P13_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_15_TOUT152_P02_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_15_TOUT154_P02_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_15_TOUT205_P30_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_15_TOUT237_P24_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_1_TOUT156_P01_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_1_TOUT191_P30_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_1_TOUT223_P24_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_1_TOUT251_P13_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_2_TOUT157_P01_15_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_2_TOUT192_P30_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_2_TOUT224_P24_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_2_TOUT252_P13_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_3_TOUT165_P01_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_3_TOUT193_P30_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_3_TOUT225_P24_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_3_TOUT253_P13_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_4_TOUT158_P01_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_4_TOUT194_P30_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_4_TOUT226_P24_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_4_TOUT254_P13_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_5_TOUT116_P02_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_5_TOUT159_P01_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_5_TOUT195_P30_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_5_TOUT227_P24_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_5_TOUT255_P13_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_6_TOUT117_P02_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_6_TOUT160_P01_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_6_TOUT196_P30_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_6_TOUT228_P24_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_6_TOUT256_P13_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_7_TOUT118_P02_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_7_TOUT161_P01_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_7_TOUT197_P30_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_7_TOUT229_P24_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_8_TOUT162_P01_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_8_TOUT198_P30_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_8_TOUT230_P24_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_8_TOUT258_P14_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_9_TOUT163_P01_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_9_TOUT199_P30_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_9_TOUT231_P24_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM4_9_TOUT259_P14_14_OUT;
# 107 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h" 2

# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Std/IfxGtm_Cmu.h" 1
# 109 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h" 2
# 119 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h"
typedef struct
{
    boolean ccu0Enabled;
    boolean ccu1Enabled;
    IfxGtm_IrqMode mode;
    IfxSrc_Tos isrProvider;
    Ifx_Priority isrPriority;
} IfxGtm_Tom_Pwm_Interrupt;





typedef struct
{
    IfxGtm_Tom_ToutMap *outputPin;
    IfxPort_OutputMode outputMode;
    IfxPort_PadDriver padDriver;
} IfxGtm_Tom_Pwm_pin;





typedef struct
{
    Ifx_GTM *gtm;
    IfxGtm_Tom tom;
    IfxGtm_Tom_Ch tomChannel;
    IfxGtm_Tom_Ch_ClkSrc clock;
    uint32 period;
    uint32 dutyCycle;
    Ifx_ActiveState signalLevel;
    boolean oneShotModeEnabled;
    boolean synchronousUpdateEnabled;
    IfxGtm_Tom_Pwm_Interrupt interrupt;
    IfxGtm_Tom_Pwm_pin pin;
    boolean immediateStartEnabled;
} IfxGtm_Tom_Pwm_Config;



typedef struct
{
    Ifx_GTM *gtm;
    IfxGtm_Tom tomIndex;
    IfxGtm_Tom_Ch tomChannel;
    Ifx_GTM_TOM *tom;
    Ifx_GTM_TOM_TGC *tgc[2];
} IfxGtm_Tom_Pwm_Driver;
# 184 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h"
extern boolean IfxGtm_Tom_Pwm_init(IfxGtm_Tom_Pwm_Driver *driver, const IfxGtm_Tom_Pwm_Config *config);






extern void IfxGtm_Tom_Pwm_initConfig(IfxGtm_Tom_Pwm_Config *config, Ifx_GTM *gtm);
# 204 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h"
extern void IfxGtm_Tom_Pwm_start(IfxGtm_Tom_Pwm_Driver *driver, boolean immediate);






extern void IfxGtm_Tom_Pwm_stop(IfxGtm_Tom_Pwm_Driver *driver, boolean immediate);
# 14 "0_Src/AppSw/Tricore/PWM/PWM_config.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h" 1
# 119 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h" 1
# 54 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef enum
{
    IfxStdIf_Timer_Output_disabled,
    IfxStdIf_Timer_Output_enabled







} IfxStdIf_Timer_OutputEvent;


typedef enum
{
    IfxStdIf_Timer_CountDir_up,
    IfxStdIf_Timer_CountDir_upAndDown,
    IfxStdIf_Timer_CountDir_down
} IfxStdIf_Timer_CountDir;


typedef struct IfxStdIf_Timer_ IfxStdIf_Timer;





typedef float32 (*IfxStdIf_Timer_GetFrequency)(IfxStdIf_InterfaceDriver driver);





typedef Ifx_TimerValue (*IfxStdIf_Timer_GetPeriod)(IfxStdIf_InterfaceDriver driver);





typedef float32 (*IfxStdIf_Timer_GetResolution)(IfxStdIf_InterfaceDriver driver);





typedef Ifx_TimerValue (*IfxStdIf_Timer_GetTrigger)(IfxStdIf_InterfaceDriver driver);







typedef boolean (*IfxStdIf_Timer_SetFrequency)(IfxStdIf_InterfaceDriver driver, float32 frequency);





typedef void (*IfxStdIf_Timer_UpdateInputFrequency)(IfxStdIf_InterfaceDriver driver);
# 135 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_ApplyUpdate)(IfxStdIf_InterfaceDriver driver);
# 152 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_DisableUpdate)(IfxStdIf_InterfaceDriver driver);





typedef float32 (*IfxStdIf_Timer_GetInputFrequency)(IfxStdIf_InterfaceDriver driver);
# 167 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_Run)(IfxStdIf_InterfaceDriver driver);
# 177 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef boolean (*IfxStdIf_Timer_SetPeriod)(IfxStdIf_InterfaceDriver driver, Ifx_TimerValue period);
# 186 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_SetSingleMode)(IfxStdIf_InterfaceDriver driver, boolean enabled);
# 198 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_SetTrigger)(IfxStdIf_InterfaceDriver driver, Ifx_TimerValue triggerPoint);





typedef void (*IfxStdIf_Timer_Stop)(IfxStdIf_InterfaceDriver driver);





typedef boolean (*IfxStdIf_Timer_AckTimerIrq)(IfxStdIf_InterfaceDriver driver);





typedef boolean (*IfxStdIf_Timer_AckTriggerIrq)(IfxStdIf_InterfaceDriver driver);



struct IfxStdIf_Timer_
{
    IfxStdIf_InterfaceDriver driver;
    IfxStdIf_Timer_GetFrequency getFrequency;
    IfxStdIf_Timer_GetPeriod getPeriod;
    IfxStdIf_Timer_GetResolution getResolution;
    IfxStdIf_Timer_GetTrigger getTrigger;
    IfxStdIf_Timer_SetFrequency setFrequency;
    IfxStdIf_Timer_UpdateInputFrequency updateInputFrequency;
    IfxStdIf_Timer_ApplyUpdate applyUpdate;
    IfxStdIf_Timer_DisableUpdate disableUpdate;
    IfxStdIf_Timer_GetInputFrequency getInputFrequency;
    IfxStdIf_Timer_Run run;
    IfxStdIf_Timer_SetPeriod setPeriod;
    IfxStdIf_Timer_SetSingleMode setSingleMode;
    IfxStdIf_Timer_SetTrigger setTrigger;
    IfxStdIf_Timer_Stop stop;
    IfxStdIf_Timer_AckTimerIrq ackTimerIrq;
    IfxStdIf_Timer_AckTriggerIrq ackTriggerIrq;
};


typedef struct
{
    boolean enabled;
    Ifx_TimerValue triggerPoint;
    Ifx_Priority isrPriority;
    IfxSrc_Tos isrProvider;
    IfxPort_OutputMode outputMode;
    IfxPort_PadDriver outputDriver;
    boolean risingEdgeAtPeriod;
    boolean outputEnabled;
} IfxStdIf_Timer_TrigConfig;


typedef struct
{
    float32 frequency;
    Ifx_Priority isrPriority;
    IfxSrc_Tos isrProvider;
    float32 minResolution;
    IfxStdIf_Timer_TrigConfig trigger;
    IfxStdIf_Timer_CountDir countDir;
    float32 startOffset;
} IfxStdIf_Timer_Config;







static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_getFrequency(IfxStdIf_Timer *stdIf)
{
    return stdIf->getFrequency(stdIf->driver);
}





static inline __attribute__ ((always_inline)) Ifx_TimerValue IfxStdIf_Timer_getPeriod(IfxStdIf_Timer *stdIf)
{
    return stdIf->getPeriod(stdIf->driver);
}





static inline __attribute__ ((always_inline)) Ifx_TimerValue IfxStdIf_Timer_getTrigger(IfxStdIf_Timer *stdIf)
{
    return stdIf->getTrigger(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_getResolution(IfxStdIf_Timer *stdIf)
{
    return stdIf->getResolution(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Timer_setFrequency(IfxStdIf_Timer *stdIf, float32 frequency)
{
    return stdIf->setFrequency(stdIf->driver, frequency);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_updateInputFrequency(IfxStdIf_Timer *stdIf)
{
    stdIf->updateInputFrequency(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_applyUpdate(IfxStdIf_Timer *stdIf)
{
    stdIf->applyUpdate(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_disableUpdate(IfxStdIf_Timer *stdIf)
{
    stdIf->disableUpdate(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_getInputFrequency(IfxStdIf_Timer *stdIf)
{
    return stdIf->getInputFrequency(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_run(IfxStdIf_Timer *stdIf)
{
    stdIf->run(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Timer_setPeriod(IfxStdIf_Timer *stdIf, Ifx_TimerValue period)
{
    return stdIf->setPeriod(stdIf->driver, period);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_setSingleMode(IfxStdIf_Timer *stdIf, boolean enabled)
{
    stdIf->setSingleMode(stdIf->driver, enabled);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_setTrigger(IfxStdIf_Timer *stdIf, Ifx_TimerValue triggerPoint)
{
    stdIf->setTrigger(stdIf->driver, triggerPoint);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_stop(IfxStdIf_Timer *stdIf)
{
    stdIf->stop(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Timer_ackTimerIrq(IfxStdIf_Timer *stdIf)
{
    return stdIf->ackTimerIrq(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Timer_ackTriggerIrq(IfxStdIf_Timer *stdIf)
{
    return stdIf->ackTriggerIrq(stdIf->driver);
}







static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_tickToS(float32 clockFreq, Ifx_TimerValue ticks)
{
    return ticks / clockFreq;
}







static inline __attribute__ ((always_inline)) Ifx_TimerValue IfxStdIf_Timer_sToTick(float32 clockFreq, float32 seconds)
{
    return seconds * clockFreq;
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_getPeriodSecond(IfxStdIf_Timer *stdIf)
{
    return IfxStdIf_Timer_tickToS(IfxStdIf_Timer_getInputFrequency(stdIf), stdIf->getPeriod(stdIf->driver));
}
# 451 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
extern void IfxStdIf_Timer_initConfig(IfxStdIf_Timer_Config *config);







extern void IfxStdIf_Timer_initStdIf(IfxStdIf_Timer *stdIf, IfxStdIf_InterfaceDriver driver);
# 120 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h" 2
# 129 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
typedef struct
{
    Ifx_TimerValue period;
    boolean triggerEnabled;
    float32 clockFreq;
    IfxStdIf_Timer_CountDir countDir;
} IfxGtm_Tom_Timer_Base;







typedef struct
{
    IfxGtm_Tom_Timer_Base base;
    Ifx_GTM *gtm;
    Ifx_GTM_TOM *tom;
    Ifx_GTM_TOM_TGC *tgc[2];
    IfxGtm_Tom tomIndex;
    IfxGtm_Tom_Ch timerChannel;
    IfxGtm_Tom_Ch triggerChannel;
    uint16 channelsMask[2];
    Ifx_TimerValue offset;
    uint32 tgcGlobalControlDisableUpdate[2];
    uint32 tgcGlobalControlApplyUpdate[2];
} IfxGtm_Tom_Timer;



typedef struct
{
    IfxStdIf_Timer_Config base;
    Ifx_GTM *gtm;
    IfxGtm_Tom tom;
    IfxGtm_Tom_Ch timerChannel;
    IfxGtm_Tom_ToutMap *triggerOut;
    IfxGtm_Tom_Ch_ClkSrc clock;
    IfxGtm_IrqMode irqModeTimer;
    IfxGtm_IrqMode irqModeTrigger;
} IfxGtm_Tom_Timer_Config;
# 185 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
extern Ifx_TimerValue IfxGtm_Tom_Timer_getOffset(IfxGtm_Tom_Timer *driver);





extern volatile uint32 *IfxGtm_Tom_Timer_getPointer(IfxGtm_Tom_Timer *driver);





extern volatile uint32 *IfxGtm_Tom_Timer_getTriggerPointer(IfxGtm_Tom_Timer *driver);






extern boolean IfxGtm_Tom_Timer_init(IfxGtm_Tom_Timer *driver, const IfxGtm_Tom_Timer_Config *config);






extern void IfxGtm_Tom_Timer_initConfig(IfxGtm_Tom_Timer_Config *config, Ifx_GTM *gtm);
# 227 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
extern boolean IfxGtm_Tom_Timer_acknowledgeTimerIrq(IfxGtm_Tom_Timer *driver);






extern boolean IfxGtm_Tom_Timer_acknowledgeTriggerIrq(IfxGtm_Tom_Timer *driver);
# 243 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
extern void IfxGtm_Tom_Timer_addToChannelMask(IfxGtm_Tom_Timer *driver, IfxGtm_Tom_Ch channel);







extern void IfxGtm_Tom_Timer_applyUpdate(IfxGtm_Tom_Timer *driver);







extern void IfxGtm_Tom_Timer_disableUpdate(IfxGtm_Tom_Timer *driver);






extern float32 IfxGtm_Tom_Timer_getFrequency(IfxGtm_Tom_Timer *driver);





extern float32 IfxGtm_Tom_Timer_getInputFrequency(IfxGtm_Tom_Timer *driver);






extern Ifx_TimerValue IfxGtm_Tom_Timer_getPeriod(IfxGtm_Tom_Timer *driver);






extern float32 IfxGtm_Tom_Timer_getResolution(IfxGtm_Tom_Timer *driver);





extern Ifx_TimerValue IfxGtm_Tom_Timer_getTrigger(IfxGtm_Tom_Timer *driver);






extern void IfxGtm_Tom_Timer_run(IfxGtm_Tom_Timer *driver);







extern boolean IfxGtm_Tom_Timer_setFrequency(IfxGtm_Tom_Timer *driver, float32 frequency);







extern boolean IfxGtm_Tom_Timer_setPeriod(IfxGtm_Tom_Timer *driver, Ifx_TimerValue period);







extern void IfxGtm_Tom_Timer_setSingleMode(IfxGtm_Tom_Timer *driver, boolean enabled);







extern void IfxGtm_Tom_Timer_setTrigger(IfxGtm_Tom_Timer *driver, Ifx_TimerValue triggerPoint);






extern boolean IfxGtm_Tom_Timer_stdIfTimerInit(IfxStdIf_Timer *stdif, IfxGtm_Tom_Timer *driver);






extern void IfxGtm_Tom_Timer_stop(IfxGtm_Tom_Timer *driver);






extern void IfxGtm_Tom_Timer_updateInputFrequency(IfxGtm_Tom_Timer *driver);
# 15 "0_Src/AppSw/Tricore/PWM/PWM_config.h" 2
# 1 "0_Src/AppSw/CpuGeneric/Config/Config_PWM.h" 1
# 16 "0_Src/AppSw/Tricore/PWM/PWM_config.h" 2




void ClockConfig();
void PWM_init(IfxGtm_Tom_ToutMap Output, IfxGtm_Tom_Timer *Timer, float32 frequency);
void PWM_setDuty(IfxGtm_Tom_Timer Timer, uint8 DutyCycle);

typedef struct
{
    IfxGtm_Tom_Timer PWM1_Bridge;
    IfxGtm_Tom_Timer PWM2_Bridge;
    IfxGtm_Tom_Timer PWM1_Servo;
    IfxGtm_Tom_Timer PWM2_Servo;
    IfxGtm_Tom_Timer Beeper;
}PWM_Timers;
# 15 "0_Src/AppSw/Tricore/Motors/Motors.h" 2

# 1 "0_Src/AppSw/Tricore/Serial/serial.h" 1
# 17 "0_Src/AppSw/Tricore/Motors/Motors.h" 2







 void STM_INTERRUPT_CORRECTION();


 void timer_compare(Ifx_Priority PRIORITY, IfxStm_CompareConfig CompareConfig, Ifx_STM *stm);


 void Forward_1();


 void Backward_1();


 void Motors_initialization();


 void Motors_stop();


 void Right();


 void Left();


 void F_RightCurb();


 void F_LeftCurb();


 void B_RightCurb();


 void B_LeftCurb();


 typedef struct
 {
  float acceleration;
  float stable;
  float deceleration;
 }P_coefficient;
# 24 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2

# 1 "0_Src/AppSw/Tricore/Encoders/Encoders_config.h" 1
# 20 "0_Src/AppSw/Tricore/Encoders/Encoders_config.h"
# 1 "0_Src/AppSw/CpuGeneric/Config/Config_ISR.h" 1
# 21 "0_Src/AppSw/Tricore/Encoders/Encoders_config.h" 2


void Encoders_config();
void ISR_ENCODER_L();
void ISR_ENCODER_R();
# 26 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2
# 1 "0_Src/AppSw/Tricore/Servomotor/servomotor.h" 1
# 18 "0_Src/AppSw/Tricore/Servomotor/servomotor.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxPort_pinMap.h" 1
# 37 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxPort_pinMap.h"
extern IfxPort_Pin IfxPort_P00_0;
extern IfxPort_Pin IfxPort_P00_1;
extern IfxPort_Pin IfxPort_P00_10;
extern IfxPort_Pin IfxPort_P00_11;
extern IfxPort_Pin IfxPort_P00_12;
extern IfxPort_Pin IfxPort_P00_13;
extern IfxPort_Pin IfxPort_P00_14;
extern IfxPort_Pin IfxPort_P00_15;
extern IfxPort_Pin IfxPort_P00_2;
extern IfxPort_Pin IfxPort_P00_3;
extern IfxPort_Pin IfxPort_P00_4;
extern IfxPort_Pin IfxPort_P00_5;
extern IfxPort_Pin IfxPort_P00_6;
extern IfxPort_Pin IfxPort_P00_7;
extern IfxPort_Pin IfxPort_P00_8;
extern IfxPort_Pin IfxPort_P00_9;
extern IfxPort_Pin IfxPort_P01_0;
extern IfxPort_Pin IfxPort_P01_1;
extern IfxPort_Pin IfxPort_P01_10;
extern IfxPort_Pin IfxPort_P01_11;
extern IfxPort_Pin IfxPort_P01_12;
extern IfxPort_Pin IfxPort_P01_13;
extern IfxPort_Pin IfxPort_P01_14;
extern IfxPort_Pin IfxPort_P01_15;
extern IfxPort_Pin IfxPort_P01_2;
extern IfxPort_Pin IfxPort_P01_3;
extern IfxPort_Pin IfxPort_P01_4;
extern IfxPort_Pin IfxPort_P01_5;
extern IfxPort_Pin IfxPort_P01_6;
extern IfxPort_Pin IfxPort_P01_7;
extern IfxPort_Pin IfxPort_P01_8;
extern IfxPort_Pin IfxPort_P01_9;
extern IfxPort_Pin IfxPort_P02_0;
extern IfxPort_Pin IfxPort_P02_1;
extern IfxPort_Pin IfxPort_P02_10;
extern IfxPort_Pin IfxPort_P02_11;
extern IfxPort_Pin IfxPort_P02_12;
extern IfxPort_Pin IfxPort_P02_13;
extern IfxPort_Pin IfxPort_P02_14;
extern IfxPort_Pin IfxPort_P02_15;
extern IfxPort_Pin IfxPort_P02_2;
extern IfxPort_Pin IfxPort_P02_3;
extern IfxPort_Pin IfxPort_P02_4;
extern IfxPort_Pin IfxPort_P02_5;
extern IfxPort_Pin IfxPort_P02_6;
extern IfxPort_Pin IfxPort_P02_7;
extern IfxPort_Pin IfxPort_P02_8;
extern IfxPort_Pin IfxPort_P02_9;
extern IfxPort_Pin IfxPort_P10_0;
extern IfxPort_Pin IfxPort_P10_1;
extern IfxPort_Pin IfxPort_P10_10;
extern IfxPort_Pin IfxPort_P10_11;
extern IfxPort_Pin IfxPort_P10_13;
extern IfxPort_Pin IfxPort_P10_14;
extern IfxPort_Pin IfxPort_P10_15;
extern IfxPort_Pin IfxPort_P10_2;
extern IfxPort_Pin IfxPort_P10_3;
extern IfxPort_Pin IfxPort_P10_4;
extern IfxPort_Pin IfxPort_P10_5;
extern IfxPort_Pin IfxPort_P10_6;
extern IfxPort_Pin IfxPort_P10_7;
extern IfxPort_Pin IfxPort_P10_8;
extern IfxPort_Pin IfxPort_P10_9;
extern IfxPort_Pin IfxPort_P11_0;
extern IfxPort_Pin IfxPort_P11_1;
extern IfxPort_Pin IfxPort_P11_10;
extern IfxPort_Pin IfxPort_P11_11;
extern IfxPort_Pin IfxPort_P11_12;
extern IfxPort_Pin IfxPort_P11_13;
extern IfxPort_Pin IfxPort_P11_14;
extern IfxPort_Pin IfxPort_P11_15;
extern IfxPort_Pin IfxPort_P11_2;
extern IfxPort_Pin IfxPort_P11_3;
extern IfxPort_Pin IfxPort_P11_4;
extern IfxPort_Pin IfxPort_P11_5;
extern IfxPort_Pin IfxPort_P11_6;
extern IfxPort_Pin IfxPort_P11_7;
extern IfxPort_Pin IfxPort_P11_8;
extern IfxPort_Pin IfxPort_P11_9;
extern IfxPort_Pin IfxPort_P12_0;
extern IfxPort_Pin IfxPort_P12_1;
extern IfxPort_Pin IfxPort_P13_0;
extern IfxPort_Pin IfxPort_P13_1;
extern IfxPort_Pin IfxPort_P13_10;
extern IfxPort_Pin IfxPort_P13_11;
extern IfxPort_Pin IfxPort_P13_12;
extern IfxPort_Pin IfxPort_P13_13;
extern IfxPort_Pin IfxPort_P13_14;
extern IfxPort_Pin IfxPort_P13_15;
extern IfxPort_Pin IfxPort_P13_2;
extern IfxPort_Pin IfxPort_P13_3;
extern IfxPort_Pin IfxPort_P13_4;
extern IfxPort_Pin IfxPort_P13_5;
extern IfxPort_Pin IfxPort_P13_6;
extern IfxPort_Pin IfxPort_P13_7;
extern IfxPort_Pin IfxPort_P13_9;
extern IfxPort_Pin IfxPort_P14_0;
extern IfxPort_Pin IfxPort_P14_1;
extern IfxPort_Pin IfxPort_P14_10;
extern IfxPort_Pin IfxPort_P14_11;
extern IfxPort_Pin IfxPort_P14_12;
extern IfxPort_Pin IfxPort_P14_13;
extern IfxPort_Pin IfxPort_P14_14;
extern IfxPort_Pin IfxPort_P14_15;
extern IfxPort_Pin IfxPort_P14_2;
extern IfxPort_Pin IfxPort_P14_3;
extern IfxPort_Pin IfxPort_P14_4;
extern IfxPort_Pin IfxPort_P14_5;
extern IfxPort_Pin IfxPort_P14_6;
extern IfxPort_Pin IfxPort_P14_7;
extern IfxPort_Pin IfxPort_P14_8;
extern IfxPort_Pin IfxPort_P14_9;
extern IfxPort_Pin IfxPort_P15_0;
extern IfxPort_Pin IfxPort_P15_1;
extern IfxPort_Pin IfxPort_P15_10;
extern IfxPort_Pin IfxPort_P15_11;
extern IfxPort_Pin IfxPort_P15_12;
extern IfxPort_Pin IfxPort_P15_13;
extern IfxPort_Pin IfxPort_P15_14;
extern IfxPort_Pin IfxPort_P15_15;
extern IfxPort_Pin IfxPort_P15_2;
extern IfxPort_Pin IfxPort_P15_3;
extern IfxPort_Pin IfxPort_P15_4;
extern IfxPort_Pin IfxPort_P15_5;
extern IfxPort_Pin IfxPort_P15_6;
extern IfxPort_Pin IfxPort_P15_7;
extern IfxPort_Pin IfxPort_P15_8;
extern IfxPort_Pin IfxPort_P20_0;
extern IfxPort_Pin IfxPort_P20_1;
extern IfxPort_Pin IfxPort_P20_10;
extern IfxPort_Pin IfxPort_P20_11;
extern IfxPort_Pin IfxPort_P20_12;
extern IfxPort_Pin IfxPort_P20_13;
extern IfxPort_Pin IfxPort_P20_14;
extern IfxPort_Pin IfxPort_P20_3;
extern IfxPort_Pin IfxPort_P20_6;
extern IfxPort_Pin IfxPort_P20_7;
extern IfxPort_Pin IfxPort_P20_8;
extern IfxPort_Pin IfxPort_P20_9;
extern IfxPort_Pin IfxPort_P21_0;
extern IfxPort_Pin IfxPort_P21_1;
extern IfxPort_Pin IfxPort_P21_2;
extern IfxPort_Pin IfxPort_P21_3;
extern IfxPort_Pin IfxPort_P21_4;
extern IfxPort_Pin IfxPort_P21_5;
extern IfxPort_Pin IfxPort_P21_6;
extern IfxPort_Pin IfxPort_P21_7;
extern IfxPort_Pin IfxPort_P22_0;
extern IfxPort_Pin IfxPort_P22_1;
extern IfxPort_Pin IfxPort_P22_10;
extern IfxPort_Pin IfxPort_P22_11;
extern IfxPort_Pin IfxPort_P22_2;
extern IfxPort_Pin IfxPort_P22_3;
extern IfxPort_Pin IfxPort_P22_4;
extern IfxPort_Pin IfxPort_P22_5;
extern IfxPort_Pin IfxPort_P22_6;
extern IfxPort_Pin IfxPort_P22_7;
extern IfxPort_Pin IfxPort_P22_8;
extern IfxPort_Pin IfxPort_P22_9;
extern IfxPort_Pin IfxPort_P23_0;
extern IfxPort_Pin IfxPort_P23_1;
extern IfxPort_Pin IfxPort_P23_2;
extern IfxPort_Pin IfxPort_P23_3;
extern IfxPort_Pin IfxPort_P23_4;
extern IfxPort_Pin IfxPort_P23_5;
extern IfxPort_Pin IfxPort_P23_6;
extern IfxPort_Pin IfxPort_P23_7;
extern IfxPort_Pin IfxPort_P24_0;
extern IfxPort_Pin IfxPort_P24_1;
extern IfxPort_Pin IfxPort_P24_10;
extern IfxPort_Pin IfxPort_P24_11;
extern IfxPort_Pin IfxPort_P24_12;
extern IfxPort_Pin IfxPort_P24_13;
extern IfxPort_Pin IfxPort_P24_14;
extern IfxPort_Pin IfxPort_P24_15;
extern IfxPort_Pin IfxPort_P24_2;
extern IfxPort_Pin IfxPort_P24_3;
extern IfxPort_Pin IfxPort_P24_4;
extern IfxPort_Pin IfxPort_P24_5;
extern IfxPort_Pin IfxPort_P24_6;
extern IfxPort_Pin IfxPort_P24_7;
extern IfxPort_Pin IfxPort_P24_8;
extern IfxPort_Pin IfxPort_P24_9;
extern IfxPort_Pin IfxPort_P25_0;
extern IfxPort_Pin IfxPort_P25_1;
extern IfxPort_Pin IfxPort_P25_10;
extern IfxPort_Pin IfxPort_P25_11;
extern IfxPort_Pin IfxPort_P25_12;
extern IfxPort_Pin IfxPort_P25_13;
extern IfxPort_Pin IfxPort_P25_14;
extern IfxPort_Pin IfxPort_P25_15;
extern IfxPort_Pin IfxPort_P25_2;
extern IfxPort_Pin IfxPort_P25_3;
extern IfxPort_Pin IfxPort_P25_4;
extern IfxPort_Pin IfxPort_P25_5;
extern IfxPort_Pin IfxPort_P25_6;
extern IfxPort_Pin IfxPort_P25_7;
extern IfxPort_Pin IfxPort_P25_8;
extern IfxPort_Pin IfxPort_P25_9;
extern IfxPort_Pin IfxPort_P26_0;
extern IfxPort_Pin IfxPort_P30_0;
extern IfxPort_Pin IfxPort_P30_1;
extern IfxPort_Pin IfxPort_P30_10;
extern IfxPort_Pin IfxPort_P30_11;
extern IfxPort_Pin IfxPort_P30_12;
extern IfxPort_Pin IfxPort_P30_13;
extern IfxPort_Pin IfxPort_P30_14;
extern IfxPort_Pin IfxPort_P30_15;
extern IfxPort_Pin IfxPort_P30_2;
extern IfxPort_Pin IfxPort_P30_3;
extern IfxPort_Pin IfxPort_P30_4;
extern IfxPort_Pin IfxPort_P30_5;
extern IfxPort_Pin IfxPort_P30_6;
extern IfxPort_Pin IfxPort_P30_7;
extern IfxPort_Pin IfxPort_P30_8;
extern IfxPort_Pin IfxPort_P30_9;
extern IfxPort_Pin IfxPort_P31_0;
extern IfxPort_Pin IfxPort_P31_1;
extern IfxPort_Pin IfxPort_P31_10;
extern IfxPort_Pin IfxPort_P31_11;
extern IfxPort_Pin IfxPort_P31_12;
extern IfxPort_Pin IfxPort_P31_13;
extern IfxPort_Pin IfxPort_P31_14;
extern IfxPort_Pin IfxPort_P31_15;
extern IfxPort_Pin IfxPort_P31_2;
extern IfxPort_Pin IfxPort_P31_3;
extern IfxPort_Pin IfxPort_P31_4;
extern IfxPort_Pin IfxPort_P31_5;
extern IfxPort_Pin IfxPort_P31_6;
extern IfxPort_Pin IfxPort_P31_7;
extern IfxPort_Pin IfxPort_P31_8;
extern IfxPort_Pin IfxPort_P31_9;
extern IfxPort_Pin IfxPort_P32_0;
extern IfxPort_Pin IfxPort_P32_2;
extern IfxPort_Pin IfxPort_P32_3;
extern IfxPort_Pin IfxPort_P32_4;
extern IfxPort_Pin IfxPort_P32_5;
extern IfxPort_Pin IfxPort_P32_6;
extern IfxPort_Pin IfxPort_P32_7;
extern IfxPort_Pin IfxPort_P33_0;
extern IfxPort_Pin IfxPort_P33_1;
extern IfxPort_Pin IfxPort_P33_10;
extern IfxPort_Pin IfxPort_P33_11;
extern IfxPort_Pin IfxPort_P33_12;
extern IfxPort_Pin IfxPort_P33_13;
extern IfxPort_Pin IfxPort_P33_14;
extern IfxPort_Pin IfxPort_P33_15;
extern IfxPort_Pin IfxPort_P33_2;
extern IfxPort_Pin IfxPort_P33_3;
extern IfxPort_Pin IfxPort_P33_4;
extern IfxPort_Pin IfxPort_P33_5;
extern IfxPort_Pin IfxPort_P33_6;
extern IfxPort_Pin IfxPort_P33_7;
extern IfxPort_Pin IfxPort_P33_8;
extern IfxPort_Pin IfxPort_P33_9;
extern IfxPort_Pin IfxPort_P34_1;
extern IfxPort_Pin IfxPort_P34_2;
extern IfxPort_Pin IfxPort_P34_3;
extern IfxPort_Pin IfxPort_P34_4;
extern IfxPort_Pin IfxPort_P34_5;
extern IfxPort_Pin IfxPort_P40_0;
extern IfxPort_Pin IfxPort_P40_1;
extern IfxPort_Pin IfxPort_P40_10;
extern IfxPort_Pin IfxPort_P40_11;
extern IfxPort_Pin IfxPort_P40_12;
extern IfxPort_Pin IfxPort_P40_13;
extern IfxPort_Pin IfxPort_P40_14;
extern IfxPort_Pin IfxPort_P40_2;
extern IfxPort_Pin IfxPort_P40_3;
extern IfxPort_Pin IfxPort_P40_4;
extern IfxPort_Pin IfxPort_P40_5;
extern IfxPort_Pin IfxPort_P40_6;
extern IfxPort_Pin IfxPort_P40_7;
extern IfxPort_Pin IfxPort_P40_8;
extern IfxPort_Pin IfxPort_P40_9;







extern const IfxPort_Pin *IfxPort_Pin_pinTable[41][16];
# 19 "0_Src/AppSw/Tricore/Servomotor/servomotor.h" 2

# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h" 1
# 21 "0_Src/AppSw/Tricore/Servomotor/servomotor.h" 2
# 1 "0_Src/AppSw/CpuGeneric/Config/Config_ISR.h" 1
# 22 "0_Src/AppSw/Tricore/Servomotor/servomotor.h" 2
# 30 "0_Src/AppSw/Tricore/Servomotor/servomotor.h"
void config_servomotor(void);


void move_servo(unsigned char angle);


void sweep_servo_config(void);



void sweep_servo(void);




void SERVO_ISR_CONFIG(void);




void STM_INTERRUPT_SERVO(void);
# 27 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2

# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Atom/Timer/IfxGtm_Atom_Timer.h" 1
# 86 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Atom/Timer/IfxGtm_Atom_Timer.h"
typedef struct
{
    Ifx_TimerValue period;
    boolean triggerEnabled;
    float32 clockFreq;
    IfxStdIf_Timer_CountDir countDir;
} IfxGtm_Atom_Timer_Base;







typedef struct
{
    IfxGtm_Atom_Timer_Base base;
    Ifx_GTM *gtm;
    Ifx_GTM_ATOM *atom;
    Ifx_GTM_ATOM_AGC *agc;
    IfxGtm_Atom atomIndex;
    IfxGtm_Atom_Ch timerChannel;
    IfxGtm_Atom_Ch triggerChannel;
    uint16 channelsMask;
    Ifx_TimerValue offset;
    uint32 agcDisableUpdate;
    uint32 agcApplyUpdate;
} IfxGtm_Atom_Timer;



typedef struct
{
    IfxStdIf_Timer_Config base;
    Ifx_GTM *gtm;
    IfxGtm_Atom atom;
    IfxGtm_Atom_Ch timerChannel;
    IfxGtm_Atom_ToutMap *triggerOut;
    IfxGtm_Cmu_Clk clock;
    IfxGtm_IrqMode irqModeTimer;
    IfxGtm_IrqMode irqModeTrigger;
} IfxGtm_Atom_Timer_Config;
# 143 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Atom/Timer/IfxGtm_Atom_Timer.h"
extern boolean IfxGtm_Atom_Timer_acknowledgeTimerIrq(IfxGtm_Atom_Timer *driver);






extern boolean IfxGtm_Atom_Timer_acknowledgeTriggerIrq(IfxGtm_Atom_Timer *driver);
# 159 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Atom/Timer/IfxGtm_Atom_Timer.h"
extern void IfxGtm_Atom_Timer_addToChannelMask(IfxGtm_Atom_Timer *driver, IfxGtm_Atom_Ch channel);






extern void IfxGtm_Atom_Timer_applyUpdate(IfxGtm_Atom_Timer *driver);






extern void IfxGtm_Atom_Timer_disableUpdate(IfxGtm_Atom_Timer *driver);






extern float32 IfxGtm_Atom_Timer_getFrequency(IfxGtm_Atom_Timer *driver);






extern float32 IfxGtm_Atom_Timer_getInputFrequency(IfxGtm_Atom_Timer *driver);






extern Ifx_TimerValue IfxGtm_Atom_Timer_getPeriod(IfxGtm_Atom_Timer *driver);






extern float32 IfxGtm_Atom_Timer_getResolution(IfxGtm_Atom_Timer *driver);





extern Ifx_TimerValue IfxGtm_Atom_Timer_getTrigger(IfxGtm_Atom_Timer *driver);






extern void IfxGtm_Atom_Timer_run(IfxGtm_Atom_Timer *driver);







extern boolean IfxGtm_Atom_Timer_setFrequency(IfxGtm_Atom_Timer *driver, float32 frequency);







extern boolean IfxGtm_Atom_Timer_setPeriod(IfxGtm_Atom_Timer *driver, Ifx_TimerValue period);







extern void IfxGtm_Atom_Timer_setSingleMode(IfxGtm_Atom_Timer *driver, boolean enabled);







extern void IfxGtm_Atom_Timer_setTrigger(IfxGtm_Atom_Timer *driver, Ifx_TimerValue triggerPoint);






extern boolean IfxGtm_Atom_Timer_stdIfTimerInit(IfxStdIf_Timer *stdif, IfxGtm_Atom_Timer *driver);






extern void IfxGtm_Atom_Timer_stop(IfxGtm_Atom_Timer *driver);






extern void IfxGtm_Atom_Timer_updateInputFrequency(IfxGtm_Atom_Timer *driver);
# 283 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Atom/Timer/IfxGtm_Atom_Timer.h"
extern Ifx_TimerValue IfxGtm_Atom_Timer_getOffset(IfxGtm_Atom_Timer *driver);





extern volatile uint32 *IfxGtm_Atom_Timer_getPointer(IfxGtm_Atom_Timer *driver);





extern volatile uint32 *IfxGtm_Atom_Timer_getTriggerPointer(IfxGtm_Atom_Timer *driver);






extern boolean IfxGtm_Atom_Timer_init(IfxGtm_Atom_Timer *driver, const IfxGtm_Atom_Timer_Config *config);






extern void IfxGtm_Atom_Timer_initConfig(IfxGtm_Atom_Timer_Config *config, Ifx_GTM *gtm);
# 29 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2
# 1 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h" 1
# 14 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h"
# 1 "0_Src/AppSw/Tricore/Encoders/Encoders_config.h" 1
# 20 "0_Src/AppSw/Tricore/Encoders/Encoders_config.h"
# 1 "0_Src/AppSw/CpuGeneric/Config/Config_ISR.h" 1
# 21 "0_Src/AppSw/Tricore/Encoders/Encoders_config.h" 2


void Encoders_config();
void ISR_ENCODER_L();
void ISR_ENCODER_R();
# 15 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h" 2
# 1 "0_Src/AppSw/Tricore/Main/Cpu0_main.h" 1
# 16 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Gtm/Atom/Timer/IfxGtm_Atom_Timer.h" 1
# 17 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h" 2

# 1 "0_Src/AppSw/Tricore/Servomotor/servomotor.h" 1
# 21 "0_Src/AppSw/Tricore/Servomotor/servomotor.h"
# 1 "0_Src/AppSw/CpuGeneric/Config/Config_ISR.h" 1
# 22 "0_Src/AppSw/Tricore/Servomotor/servomotor.h" 2
# 30 "0_Src/AppSw/Tricore/Servomotor/servomotor.h"
void config_servomotor(void);


void move_servo(unsigned char angle);


void sweep_servo_config(void);



void sweep_servo(void);




void SERVO_ISR_CONFIG(void);




void STM_INTERRUPT_SERVO(void);
# 19 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h" 2

# 1 "0_Src/AppSw/CpuGeneric/Config/Config_ISR.h" 1
# 21 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h" 2

# 1 "0_Src/AppSw/Tricore/Tft_Screen/Tft.h" 1
# 16 "0_Src/AppSw/Tricore/Tft_Screen/Tft.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_regdef.h"
typedef struct _Ifx_QSPI_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_QSPI_ACCEN0_Bits;


typedef struct _Ifx_QSPI_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_QSPI_ACCEN1_Bits;


typedef struct _Ifx_QSPI_BACON_Bits
{
    unsigned int LAST:1;
    unsigned int IPRE:3;
    unsigned int IDLE:3;
    unsigned int LPRE:3;
    unsigned int LEAD:3;
    unsigned int TPRE:3;
    unsigned int TRAIL:3;
    unsigned int PARTYP:1;
    unsigned int UINT:1;
    unsigned int MSB:1;
    unsigned int BYTE:1;
    unsigned int DL:5;
    unsigned int CS:4;
} Ifx_QSPI_BACON_Bits;


typedef struct _Ifx_QSPI_BACONENTRY_Bits
{
    unsigned int E:32;
} Ifx_QSPI_BACONENTRY_Bits;


typedef struct _Ifx_QSPI_CAPCON_Bits
{
    unsigned int CAP:15;
    unsigned int OVF:1;
    unsigned int EDGECON:2;
    unsigned int INS:2;
    unsigned int EN:1;
    unsigned int reserved_21:7;
    unsigned int CAPC:1;
    unsigned int CAPS:1;
    unsigned int CAPF:1;
    unsigned int CAPSEL:1;
} Ifx_QSPI_CAPCON_Bits;


typedef struct _Ifx_QSPI_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_QSPI_CLC_Bits;


typedef struct _Ifx_QSPI_DATAENTRY_Bits
{
    unsigned int E:32;
} Ifx_QSPI_DATAENTRY_Bits;


typedef struct _Ifx_QSPI_ECON_Bits
{
    unsigned int Q:6;
    unsigned int A:2;
    unsigned int B:2;
    unsigned int C:2;
    unsigned int CPH:1;
    unsigned int CPOL:1;
    unsigned int PAREN:1;
    unsigned int reserved_15:15;
    unsigned int BE:2;
} Ifx_QSPI_ECON_Bits;


typedef struct _Ifx_QSPI_FLAGSCLEAR_Bits
{
    unsigned int ERRORCLEARS:9;
    unsigned int TXC:1;
    unsigned int RXC:1;
    unsigned int PT1C:1;
    unsigned int PT2C:1;
    unsigned int reserved_13:2;
    unsigned int USRC:1;
    unsigned int reserved_16:16;
} Ifx_QSPI_FLAGSCLEAR_Bits;


typedef struct _Ifx_QSPI_GLOBALCON1_Bits
{
    unsigned int ERRORENS:9;
    unsigned int TXEN:1;
    unsigned int RXEN:1;
    unsigned int PT1EN:1;
    unsigned int PT2EN:1;
    unsigned int reserved_13:2;
    unsigned int USREN:1;
    unsigned int TXFIFOINT:2;
    unsigned int RXFIFOINT:2;
    unsigned int PT1:3;
    unsigned int PT2:3;
    unsigned int TXFM:2;
    unsigned int RXFM:2;
    unsigned int reserved_30:2;
} Ifx_QSPI_GLOBALCON1_Bits;


typedef struct _Ifx_QSPI_GLOBALCON_Bits
{
    unsigned int TQ:8;
    unsigned int reserved_8:1;
    unsigned int SI:1;
    unsigned int EXPECT:4;
    unsigned int LB:1;
    unsigned int DEL0:1;
    unsigned int STROBE:5;
    unsigned int SRF:1;
    unsigned int STIP:1;
    unsigned int reserved_23:1;
    unsigned int EN:1;
    unsigned int MS:2;
    unsigned int AREN:1;
    unsigned int RESETS:4;
} Ifx_QSPI_GLOBALCON_Bits;


typedef struct _Ifx_QSPI_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_QSPI_ID_Bits;


typedef struct _Ifx_QSPI_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_QSPI_KRST0_Bits;


typedef struct _Ifx_QSPI_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_QSPI_KRST1_Bits;


typedef struct _Ifx_QSPI_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_QSPI_KRSTCLR_Bits;


typedef struct _Ifx_QSPI_MIXENTRY_Bits
{
    unsigned int E:32;
} Ifx_QSPI_MIXENTRY_Bits;


typedef struct _Ifx_QSPI_OCS_Bits
{
    unsigned int reserved_0:24;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_QSPI_OCS_Bits;


typedef struct _Ifx_QSPI_PISEL_Bits
{
    unsigned int MRIS:3;
    unsigned int reserved_3:1;
    unsigned int SRIS:3;
    unsigned int reserved_7:1;
    unsigned int SCIS:3;
    unsigned int reserved_11:1;
    unsigned int SLSIS:3;
    unsigned int reserved_15:17;
} Ifx_QSPI_PISEL_Bits;


typedef struct _Ifx_QSPI_RXEXIT_Bits
{
    unsigned int E:32;
} Ifx_QSPI_RXEXIT_Bits;


typedef struct _Ifx_QSPI_RXEXITD_Bits
{
    unsigned int E:32;
} Ifx_QSPI_RXEXITD_Bits;


typedef struct _Ifx_QSPI_SSOC_Bits
{
    unsigned int AOL:16;
    unsigned int OEN:16;
} Ifx_QSPI_SSOC_Bits;


typedef struct _Ifx_QSPI_STATUS1_Bits
{
    unsigned int BITCOUNT:8;
    unsigned int reserved_8:20;
    unsigned int BRDEN:1;
    unsigned int BRD:1;
    unsigned int SPDEN:1;
    unsigned int SPD:1;
} Ifx_QSPI_STATUS1_Bits;


typedef struct _Ifx_QSPI_STATUS_Bits
{
    unsigned int ERRORFLAGS:9;
    unsigned int TXF:1;
    unsigned int RXF:1;
    unsigned int PT1F:1;
    unsigned int PT2F:1;
    unsigned int reserved_13:2;
    unsigned int USRF:1;
    unsigned int TXFIFOLEVEL:3;
    unsigned int RXFIFOLEVEL:3;
    unsigned int SLAVESEL:4;
    unsigned int RPV:1;
    unsigned int TPV:1;
    unsigned int PHASE:4;
} Ifx_QSPI_STATUS_Bits;


typedef struct _Ifx_QSPI_XXLCON_Bits
{
    unsigned int XDL:16;
    unsigned int BYTECOUNT:16;
} Ifx_QSPI_XXLCON_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ACCEN0_Bits B;
} Ifx_QSPI_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ACCEN1_Bits B;
} Ifx_QSPI_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_BACON_Bits B;
} Ifx_QSPI_BACON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_BACONENTRY_Bits B;
} Ifx_QSPI_BACONENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_CAPCON_Bits B;
} Ifx_QSPI_CAPCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_CLC_Bits B;
} Ifx_QSPI_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_DATAENTRY_Bits B;
} Ifx_QSPI_DATAENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ECON_Bits B;
} Ifx_QSPI_ECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_FLAGSCLEAR_Bits B;
} Ifx_QSPI_FLAGSCLEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_GLOBALCON_Bits B;
} Ifx_QSPI_GLOBALCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_GLOBALCON1_Bits B;
} Ifx_QSPI_GLOBALCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ID_Bits B;
} Ifx_QSPI_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRST0_Bits B;
} Ifx_QSPI_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRST1_Bits B;
} Ifx_QSPI_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRSTCLR_Bits B;
} Ifx_QSPI_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_MIXENTRY_Bits B;
} Ifx_QSPI_MIXENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_OCS_Bits B;
} Ifx_QSPI_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_PISEL_Bits B;
} Ifx_QSPI_PISEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_RXEXIT_Bits B;
} Ifx_QSPI_RXEXIT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_RXEXITD_Bits B;
} Ifx_QSPI_RXEXITD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_SSOC_Bits B;
} Ifx_QSPI_SSOC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_STATUS_Bits B;
} Ifx_QSPI_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_STATUS1_Bits B;
} Ifx_QSPI_STATUS1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_XXLCON_Bits B;
} Ifx_QSPI_XXLCON;
# 527 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_regdef.h"
typedef volatile struct _Ifx_QSPI
{
    Ifx_QSPI_CLC CLC;
    Ifx_QSPI_PISEL PISEL;
    Ifx_QSPI_ID ID;
    unsigned char reserved_C[4];
    Ifx_QSPI_GLOBALCON GLOBALCON;
    Ifx_QSPI_GLOBALCON1 GLOBALCON1;
    Ifx_QSPI_BACON BACON;
    unsigned char reserved_1C[4];
    Ifx_QSPI_ECON ECON[8];
    Ifx_QSPI_STATUS STATUS;
    Ifx_QSPI_STATUS1 STATUS1;
    Ifx_QSPI_SSOC SSOC;
    unsigned char reserved_4C[8];
    Ifx_QSPI_FLAGSCLEAR FLAGSCLEAR;
    Ifx_QSPI_XXLCON XXLCON;
    Ifx_QSPI_MIXENTRY MIXENTRY;
    Ifx_QSPI_BACONENTRY BACONENTRY;
    Ifx_QSPI_DATAENTRY DATAENTRY[8];
    unsigned char reserved_84[12];
    Ifx_QSPI_RXEXIT RXEXIT;
    Ifx_QSPI_RXEXITD RXEXITD;
    unsigned char reserved_98[8];
    Ifx_QSPI_CAPCON CAPCON;
    unsigned char reserved_A4[68];
    Ifx_QSPI_OCS OCS;
    Ifx_QSPI_KRSTCLR KRSTCLR;
    Ifx_QSPI_KRST1 KRST1;
    Ifx_QSPI_KRST0 KRST0;
    Ifx_QSPI_ACCEN1 ACCEN1;
    Ifx_QSPI_ACCEN0 ACCEN0;
} Ifx_QSPI;
# 17 "0_Src/AppSw/Tricore/Tft_Screen/Tft.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_reg.h" 1
# 51 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_regdef.h" 1
# 52 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_reg.h" 2
# 18 "0_Src/AppSw/Tricore/Tft_Screen/Tft.h" 2


# 1 "0_Src/AppSw/Tricore/Tft_Screen/IFX_logo.h" 1
# 14 "0_Src/AppSw/Tricore/Tft_Screen/IFX_logo.h"
static const unsigned short ifxlogo[] =
{
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe, 0xff7d, 0xf73c,
 0xfefc, 0xf6fc, 0xfebc, 0xf6ba, 0xf67b, 0xfebb, 0xf67b, 0xfebb,
 0xf6fb, 0xfefc, 0xf73c, 0xff3d, 0xf77e, 0xffbe, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xfffe, 0xff3d, 0xf6bb, 0xf5f9, 0xf576, 0xf474, 0xebb2,
 0xeb30, 0xeaae, 0xe22d, 0xe1ab, 0xe12a, 0xe0e9, 0xe0e9, 0xe0a9,
 0xd8a8, 0xe068, 0xe067, 0xd827, 0xe067, 0xd827, 0xd867, 0xe027,
 0xd868, 0xe0a8, 0xe067, 0xe0e9, 0xe0e9, 0xe129, 0xe16b, 0xe1ec,
 0xea6e, 0xeb2f, 0xebb2, 0xf475, 0xf577, 0xf5f9, 0xfefc, 0xff7e,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xfffe, 0xf6fc, 0xf5f8, 0xf4b5, 0xeb71,
 0xe26e, 0xe16b, 0xe0e9, 0xd867, 0xe026, 0xd825, 0xd825, 0xd825,
 0xd825, 0xd825, 0xd825, 0xd826, 0xe026, 0xd826, 0xe026, 0xd826,
 0xe026, 0xe026, 0xd827, 0xe026, 0xd826, 0xe026, 0xe026, 0xd826,
 0xe026, 0xd826, 0xe027, 0xd826, 0xe026, 0xd826, 0xe026, 0xe026,
 0xd826, 0xd825, 0xe025, 0xd825, 0xd825, 0xd826, 0xe067, 0xe0e9,
 0xe1ab, 0xeaaf, 0xebf2, 0xf537, 0xf67a, 0xff7d, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xfefc,
 0xf577, 0xec33, 0xea6e, 0xe12a, 0xe067, 0xd826, 0xd825, 0xd825,
 0xd825, 0xe026, 0xd826, 0xe026, 0xe027, 0xd827, 0xe027, 0xd826,
 0xe026, 0xd826, 0xe026, 0xd826, 0xe025, 0xd825, 0xd825, 0xd825,
 0xd825, 0xd825, 0xd825, 0xd825, 0xe026, 0xd825, 0xd825, 0xd826,
 0xe025, 0xd825, 0xd825, 0xd825, 0xd825, 0xd825, 0xd825, 0xd825,
 0xd825, 0xe025, 0xd825, 0xd825, 0xe026, 0xd825, 0xd826, 0xd825,
 0xe026, 0xd825, 0xd825, 0xe025, 0xd827, 0xe0a8, 0xe1ec, 0xeb70,
 0xf4f6, 0xfe7b, 0xffbe, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xf6fc, 0xf537, 0xeb30, 0xe1ab, 0xd867,
 0xe026, 0xd825, 0xd825, 0xd826, 0xe026, 0xe026, 0xd827, 0xe027,
 0xd826, 0xe026, 0xd825, 0xd826, 0xd825, 0xd825, 0xe025, 0xd826,
 0xe067, 0xd8a9, 0xe12a, 0xe1ab, 0xe22d, 0xe2ae, 0xeb30, 0xeb71,
 0xebf2, 0xec33, 0xf474, 0xec74, 0xf4f5, 0xecf6, 0xf4f5, 0xf4f6,
 0xecf5, 0xf4f6, 0xf4b5, 0xec74, 0xf474, 0xec33, 0xebf2, 0xeb71,
 0xeb30, 0xe2af, 0xea2d, 0xe1ec, 0xe16b, 0xe0e9, 0xd868, 0xe067,
 0xd826, 0xe025, 0xd825, 0xd825, 0xd825, 0xe025, 0xd825, 0xd825,
 0xd825, 0xd826, 0xe12a, 0xeaef, 0xf4b4, 0xf67b, 0xffbe, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe,
 0xf63a, 0xf3f2, 0xe1ab, 0xe067, 0xd825, 0xd825, 0xe026, 0xd826,
 0xe027, 0xd826, 0xe027, 0xd826, 0xd826, 0xd826, 0xd825, 0xe025,
 0xd827, 0xe0e9, 0xe1ab, 0xeaae, 0xebb2, 0xecb4, 0xf578, 0xf639,
 0xfefc, 0xff7d, 0xffbe, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe, 0xffbe, 0xff3d, 0xf67a,
 0xf5f9, 0xf536, 0xec74, 0xeb71, 0xe26e, 0xe1ab, 0xe0e9, 0xd827,
 0xe026, 0xd825, 0xd824, 0xd825, 0xd825, 0xe066, 0xe16b, 0xeb71,
 0xf5b8, 0xff7d, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xfe3a, 0xebb1, 0xe16a,
 0xd826, 0xd825, 0xd826, 0xe026, 0xd827, 0xe026, 0xd827, 0xe026,
 0xd825, 0xd825, 0xe026, 0xd867, 0xe12a, 0xeaae, 0xebf2, 0xf577,
 0xf67b, 0xff7d, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xff3d, 0xf6bb,
 0xf577, 0xec74, 0xeaef, 0xe1ab, 0xe0a8, 0xd826, 0xd824, 0xd824,
 0xd825, 0xe0e9, 0xeb30, 0xf5b8, 0xffbe, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xfefc, 0xec73, 0xe16b, 0xd826, 0xd825, 0xd826,
 0xe026, 0xd827, 0xe026, 0xd827, 0xe026, 0xd825, 0xd825, 0xe067,
 0xe1ac, 0xeb71, 0xf536, 0xf6bb, 0xffbe, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xff3d, 0xf639, 0xf4b5, 0xe2ef,
 0xe12a, 0xe026, 0xd824, 0xd824, 0xe0e9, 0xebb1, 0xf67a, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xf63a, 0xeaef, 0xe068, 0xd825, 0xd826, 0xe026, 0xd827, 0xe026,
 0xe027, 0xd826, 0xd825, 0xd826, 0xe0e9, 0xe2ef, 0xf4f6, 0xf6fb,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffbe, 0xf6bb, 0xf4f6, 0xe2ef, 0xe0a8, 0xe025, 0xd825, 0xe1ac,
 0xf536, 0xffbe, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xf5f8, 0xea2d,
 0xd826, 0xd825, 0xe026, 0xd827, 0xe026, 0xe027, 0xd827, 0xd825,
 0xd825, 0xe0a9, 0xeaef, 0xf5b8, 0xff7d, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe, 0xf639, 0xebb2, 0xe16a,
 0xd825, 0xe0a8, 0xec33, 0xff7d, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xf67a, 0xea6d, 0xd826, 0xd826,
 0xe026, 0xd827, 0xd826, 0xe027, 0xd827, 0xd825, 0xd826, 0xe9ec,
 0xecf6, 0xff7d, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffbf,
 0xf67a, 0xeb71, 0xd8a8, 0xe068, 0xebb2, 0xff3d, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xff3d, 0xeb30, 0xd827, 0xd825, 0xe027, 0xd826,
 0xd827, 0xe026, 0xe026, 0xd825, 0xe067, 0xeaef, 0xf67a, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffbe, 0xf577, 0xe1ec, 0xe0e9, 0xec33, 0xffbe,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xf537, 0xe0e9, 0xd825, 0xd826, 0xe026, 0xd827, 0xe026,
 0xe027, 0xd825, 0xd867, 0xeb30, 0xf6bb, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xf67a, 0xeaef, 0xe1ab,
 0xf537, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe,
 0xeb30, 0xd825, 0xe026, 0xd826, 0xe027, 0xd826, 0xe027, 0xd826,
 0xd825, 0xea6d, 0xf67b, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xf67b,
 0xeb2f, 0xeb30, 0xf6fc, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xfefc, 0xe1ab,
 0xd825, 0xe027, 0xd826, 0xe027, 0xd826, 0xe027, 0xd825, 0xd8e9,
 0xf577, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xf5f9, 0xeb30, 0xf536, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xf67a, 0xe0e9, 0xd825,
 0xd826, 0xd827, 0xd826, 0xe027, 0xd826, 0xd825, 0xeaae, 0xff3d,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffbe, 0xecb5, 0xf433, 0xff7e, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xf67a, 0xe0e9, 0xe026, 0xd826,
 0xe027, 0xe027, 0xe026, 0xd826, 0xe026, 0xec33, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xf67a, 0xec33, 0xfefc, 0xffff,
 0xffff, 0xffff, 0xffff, 0xf6fc, 0xe0e9, 0xd825, 0xe026, 0xd827,
 0xd826, 0xd827, 0xd826, 0xe067, 0xed36, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xe77e, 0xcefd, 0xcf3d, 0xefbe, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xdf3e,
 0xbebc, 0xcefd, 0xf7bf, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xff3d, 0xecb5, 0xffbe,
 0xffff, 0xffff, 0xffbe, 0xe9ec, 0xd825, 0xd827, 0xe027, 0xd826,
 0xe027, 0xe026, 0xd826, 0xf536, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xd73d, 0x33f7, 0x3c37, 0x33f7, 0xdf3d, 0xffff, 0xffff,
 0xf7bf, 0x5478, 0x33f6, 0x2bf7, 0xae3b, 0xffff, 0xffff, 0xffff,
 0x5cf8, 0x33f6, 0x2bf6, 0x9dfb, 0xffff, 0xffff, 0xffff, 0xdf7e,
 0x3c37, 0x33f7, 0x33f6, 0xcefd, 0xffff, 0xffff, 0xffff, 0xffff,
 0xcefd, 0x33f7, 0x3bf6, 0x33f7, 0xcefd, 0xffff, 0xffff, 0xffff,
 0x7d79, 0x2bf7, 0x33f6, 0x7d7a, 0xffff, 0xffff, 0xffff, 0x857a,
 0x2bf6, 0x33f7, 0x7539, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xd73d, 0x54b8, 0x0b35, 0x02f4, 0x02f5, 0x1b75, 0x6cf9, 0xe77e,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xdf3e, 0x4c77, 0x0b35,
 0x02f4, 0x02f4, 0x1b76, 0x8dba, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0x7d7a, 0x33f6, 0x2bb6, 0x7d79, 0xffff, 0xffff, 0xffff,
 0x8dba, 0x2bf7, 0x33f6, 0x6d39, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe, 0xffff,
 0xffff, 0xffff, 0xebf3, 0xd825, 0xe027, 0xd826, 0xe027, 0xd826,
 0xd827, 0xd825, 0xf4b5, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x02f4, 0x02b4, 0x02f4, 0xcefd, 0xffff, 0xffff,
 0xefbe, 0x1b75, 0x02b4, 0x02b3, 0x8dba, 0xffff, 0xffff, 0xffff,
 0x33f6, 0x0274, 0x0273, 0x7d7a, 0xffff, 0xffff, 0xffff, 0xd6fd,
 0x02f4, 0x02b4, 0x02b4, 0xb6bc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebc, 0x02b4, 0x02f4, 0x02b4, 0xbebc, 0xffff, 0xffff, 0xffff,
 0x5477, 0x02b3, 0x0273, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f9,
 0x0273, 0x02b3, 0x5477, 0xffff, 0xffff, 0xffff, 0xffff, 0xcefd,
 0x1335, 0x02b4, 0x02f4, 0x02f4, 0x02f4, 0x02b4, 0x02b4, 0x23b5,
 0xc6fd, 0xffff, 0xffff, 0xffff, 0xdf3d, 0x1bb5, 0x02b4, 0x02f4,
 0x02b4, 0x02f4, 0x02f4, 0x02b4, 0x7539, 0xffff, 0xffff, 0xffff,
 0xffff, 0x5cb8, 0x02b4, 0x02b3, 0x5478, 0xffff, 0xffff, 0xffff,
 0x6cf8, 0x0273, 0x02b4, 0x4437, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xf6bc, 0xd8a7, 0xe026, 0xd826, 0xe027, 0xd826, 0xe027,
 0xd825, 0xeb30, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xd73d, 0x02f4, 0x02f4, 0x02f5, 0xcefd, 0xffff, 0xffff,
 0xf7be, 0x1b76, 0x02f4, 0x02b4, 0x8dbb, 0xffff, 0xffff, 0xffff,
 0x33f7, 0x02f4, 0x02b3, 0x857a, 0xffff, 0xffff, 0xffff, 0xd73e,
 0x0b34, 0x02f5, 0x02f4, 0xb67c, 0xffff, 0xffff, 0xffff, 0xffff,
 0xc6bd, 0x02f4, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff,
 0x5cb8, 0x02b4, 0x02f4, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f8,
 0x02b4, 0x02f4, 0x4c78, 0xffff, 0xffff, 0xffff, 0xf7bf, 0x33f6,
 0x02b4, 0x02f4, 0x02b4, 0x1375, 0x1b76, 0x0af4, 0x02f4, 0x0274,
 0x857a, 0xffff, 0xffff, 0xffff, 0x5478, 0x02b4, 0x02f5, 0x02f4,
 0x23b6, 0x1b75, 0x02f4, 0x02f4, 0x02f4, 0xb67c, 0xffff, 0xffff,
 0xffff, 0x5cf8, 0x02b3, 0x02b4, 0x54b8, 0xffff, 0xffff, 0xffff,
 0x6d39, 0x02b4, 0x02b4, 0x4c77, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xeb70, 0xd825, 0xd827, 0xe027, 0xd826, 0xe027, 0xd826,
 0xe129, 0xff3d, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x0335, 0x02f4, 0x02f4, 0xd73d, 0xffff, 0xffff,
 0xefbe, 0x23b6, 0x02f4, 0x02b4, 0x8dfa, 0xffff, 0xffff, 0xffff,
 0x33f6, 0x02f4, 0x02b4, 0x7dba, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x02f5, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebc, 0x02f4, 0x02f5, 0x02f4, 0xc6bd, 0xffff, 0xffff, 0xffff,
 0x54b8, 0x02b4, 0x02b4, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f8,
 0x02f4, 0x02b4, 0x4c77, 0xffff, 0xffff, 0xffff, 0x9e3b, 0x02b4,
 0x02f4, 0x02f4, 0x6cf9, 0xefbe, 0xf7bf, 0xbebc, 0x2bf6, 0x1b75,
 0xefbe, 0xffff, 0xffff, 0xcefd, 0x02f4, 0x02f4, 0x02f4, 0x64f8,
 0xffff, 0xdf3e, 0x1b75, 0x02f4, 0x02b4, 0x4437, 0xffff, 0xffff,
 0xffff, 0x5cb8, 0x02b4, 0x02f4, 0x5c78, 0xffff, 0xffff, 0xffff,
 0x6d39, 0x02b3, 0x02f4, 0x4c78, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xff3d, 0xe0a8, 0xd826, 0xe026, 0xd827, 0xe026, 0xd827, 0xd825,
 0xf4b5, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x0334, 0x02f4, 0x02f5, 0xcefd, 0xffff, 0xffff,
 0xefbf, 0x1b75, 0x02f4, 0x02b4, 0x95ba, 0xffff, 0xffff, 0xffff,
 0x33f7, 0x02f4, 0x02b4, 0x857a, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0b35, 0x02f4, 0x02f4, 0xb67c, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebd, 0x02f4, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff,
 0x5cb8, 0x02b4, 0x02f4, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f9,
 0x02b4, 0x02b4, 0x5478, 0xffff, 0xffff, 0xffff, 0x5477, 0x02b4,
 0x02f4, 0x33f6, 0xf7ff, 0xffff, 0xffff, 0xffff, 0xe77e, 0xbebc,
 0xffff, 0xffff, 0xffff, 0x85ba, 0x02b4, 0x02f4, 0x0b35, 0xdf3e,
 0xffff, 0xffff, 0x85ba, 0x02b4, 0x02f5, 0x0b35, 0xd73d, 0xffff,
 0xffff, 0x5cf8, 0x02b4, 0x02b4, 0x54b8, 0xffff, 0xffff, 0xffff,
 0x6d39, 0x02b4, 0x02b4, 0x4437, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xf577, 0xd825, 0xe027, 0xd826, 0xe027, 0xd827, 0xe025, 0xe12a,
 0xffbe, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcf3d, 0x02f5, 0x02f4, 0x0334, 0xcefd, 0xffff, 0xffff,
 0xefbe, 0x2376, 0x02f4, 0x02b4, 0x8dfa, 0xffff, 0xffff, 0xffff,
 0x33f6, 0x02f4, 0x02b4, 0x7d79, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0af5, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebd, 0x02f4, 0x02f4, 0x02f4, 0xc6bd, 0xffff, 0xffff, 0xffff,
 0x54b8, 0x02b4, 0x02b4, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f8,
 0x02b4, 0x02b4, 0x4cb7, 0xffff, 0xffff, 0xefbe, 0x1b76, 0x02f4,
 0x02b4, 0x7d7a, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0x4c77, 0x02b4, 0x02f4, 0x3bf7, 0xffff,
 0xffff, 0xffff, 0xbebc, 0x02f4, 0x02f4, 0x02f4, 0xae3b, 0xffff,
 0xffff, 0x5cb8, 0x02b4, 0x02f4, 0x54b8, 0xffff, 0xffff, 0xffff,
 0x6cf9, 0x02b4, 0x02f4, 0x4c77, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xebb2, 0xd825, 0xe027, 0xd826, 0xe027, 0xd826, 0xd825, 0xebb2,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xd6fd, 0x02f4, 0x02f4, 0x02f5, 0xcefd, 0xffff, 0xffff,
 0xf7be, 0x1b76, 0x02f4, 0x02b4, 0x8dba, 0xffff, 0xffff, 0xffff,
 0x33f7, 0x02f4, 0x02b4, 0x857a, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0335, 0x02f5, 0x02f4, 0xb67c, 0xffff, 0xffff, 0xffff, 0xffff,
 0xc6bc, 0x02f4, 0x02f5, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff,
 0x5cb8, 0x02f4, 0x02b4, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f9,
 0x02f3, 0x02b4, 0x4c78, 0xffff, 0xffff, 0xd73d, 0x0b35, 0x02f5,
 0x02b4, 0xa63b, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0x2bb7, 0x02f4, 0x02b4, 0x54b8, 0xffff,
 0xffff, 0xffff, 0xdf3d, 0x0b35, 0x02f4, 0x02b4, 0x7d7a, 0xffff,
 0xffff, 0x5cf8, 0x02b4, 0x02b4, 0x54b8, 0xffff, 0xffff, 0xffff,
 0x6d38, 0x02b4, 0x02b4, 0x4c77, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xe26e, 0xe025, 0xd827, 0xe027, 0xd826, 0xe027, 0xd826, 0xf5f9,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x0335, 0x02f4, 0x02f4, 0xd73d, 0xffff, 0xffff,
 0xefbe, 0x23b6, 0x02f4, 0x02b4, 0x95fa, 0xffff, 0xffff, 0xffff,
 0x33f6, 0x02f4, 0x02b4, 0x7d7a, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0af5, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebd, 0x02f4, 0x02f4, 0x02f4, 0xc6bd, 0xffff, 0xffff, 0xffff,
 0x54b8, 0x02b4, 0x02b3, 0x5cf8, 0xffff, 0xffff, 0xffff, 0x64f9,
 0x02b4, 0x02b4, 0x54b7, 0xffff, 0xffff, 0xc6fd, 0x02f4, 0x02f4,
 0x02f4, 0x753a, 0xc6bc, 0xb67c, 0xb6bc, 0xb67c, 0xb67c, 0xb67c,
 0xbebc, 0xffff, 0xf7bf, 0x1b75, 0x02f4, 0x02b4, 0x64f8, 0xffff,
 0xffff, 0xffff, 0xe77e, 0x0b35, 0x02f4, 0x02b4, 0x6cf9, 0xffff,
 0xffff, 0x5cb8, 0x02b4, 0x02f4, 0x5cb8, 0xffff, 0xffff, 0xffff,
 0x6d39, 0x02b4, 0x02b4, 0x4477, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xea2d, 0xd825, 0xd826, 0xe027, 0xd826, 0xe026, 0xe068, 0xf73c,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcf3d, 0x02f4, 0x02f5, 0x02f4, 0xcefd, 0xffff, 0xffff,
 0xefbf, 0x1b75, 0x02f4, 0x02b4, 0x8dbb, 0xffff, 0xffff, 0xffff,
 0x33f7, 0x02f4, 0x02f4, 0x8579, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0b35, 0x02f4, 0x02b4, 0xb6bc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebc, 0x02f4, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff,
 0x5c78, 0x02f4, 0x02b4, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f8,
 0x02f4, 0x02b4, 0x4c78, 0xffff, 0xffff, 0xbebc, 0x02b4, 0x0334,
 0x02f5, 0x02f4, 0x02f4, 0x02f4, 0x02b4, 0x02f4, 0x02f4, 0x02b4,
 0x2bb6, 0xf7ff, 0xf7be, 0x1b75, 0x02f4, 0x02b4, 0x64f8, 0xffff,
 0xffff, 0xffff, 0xefbf, 0x1375, 0x02f4, 0x02b4, 0x5cf8, 0xffff,
 0xffff, 0x5cf8, 0x02b3, 0x02b4, 0x54b8, 0xffff, 0xffff, 0xffff,
 0x6d39, 0x02b4, 0x02b4, 0x4c77, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xe26d, 0xe026, 0xd827, 0xe026, 0xd827, 0xd826, 0xe16a, 0xffbe,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x0335, 0x02f4, 0x02f4, 0xcf3d, 0xffff, 0xffff,
 0xefbe, 0x2376, 0x02f4, 0x02b4, 0x8dfa, 0xffff, 0xffff, 0xffff,
 0x33f6, 0x02b4, 0x02b4, 0x7d7a, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x02f5, 0x02f4, 0x02f4, 0xbe7c, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebd, 0x02f4, 0x02f5, 0x02f4, 0xc6bd, 0xffff, 0xffff, 0xffff,
 0x54b8, 0x02b4, 0x02b4, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f8,
 0x02b4, 0x02b4, 0x54b7, 0xffff, 0xffff, 0xbebc, 0x02f4, 0x02f5,
 0x02f4, 0x02f4, 0x02b4, 0x02b4, 0x02b3, 0x02f4, 0x02f5, 0x02f4,
 0x2bf6, 0xffff, 0xefbf, 0x1375, 0x02f4, 0x02b4, 0x64f9, 0xffff,
 0xffff, 0xffff, 0xe77e, 0x1b75, 0x02f4, 0x02b4, 0x64f8, 0xffff,
 0xffff, 0x5cb8, 0x02b4, 0x02f4, 0x5cb8, 0xffff, 0xffff, 0xffff,
 0x6cf8, 0x02b4, 0x02f4, 0x4c77, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xeb30, 0xd825, 0xe026, 0xd827, 0xe026, 0xd826, 0xe12a, 0xffbe,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xd6fd, 0x0334, 0x02f4, 0x02f5, 0xcefd, 0xffff, 0xffff,
 0xefbe, 0x2376, 0x02f4, 0x02b4, 0x95ba, 0xffff, 0xffff, 0xffff,
 0x33f7, 0x02f4, 0x02b4, 0x857a, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0b35, 0x02f5, 0x02f4, 0xb6bc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xc6bc, 0x02f4, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff,
 0x5cb8, 0x02f4, 0x02b4, 0x5cb8, 0xffff, 0xffff, 0xffff, 0x64f9,
 0x02b4, 0x02f4, 0x4c78, 0xffff, 0xffff, 0xcefd, 0x02f4, 0x02f4,
 0x02f4, 0x4c78, 0x7d79, 0x7539, 0x7d7a, 0x33f6, 0x02f4, 0x02b4,
 0x33f7, 0xffff, 0xf7be, 0x23b6, 0x02f4, 0x02b4, 0x5cf8, 0xffff,
 0xffff, 0xffff, 0xe77e, 0x0b35, 0x02f4, 0x02b4, 0x6d39, 0xffff,
 0xffff, 0x5cf8, 0x02b4, 0x02b4, 0x54b8, 0xffff, 0xffff, 0xffff,
 0x6d39, 0x02b4, 0x02b4, 0x4437, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xec74, 0xd825, 0xe027, 0xd826, 0xe027, 0xd826, 0xe0a8, 0xfefc,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcf3d, 0x02f5, 0x02f4, 0x0334, 0xd6fd, 0xffff, 0xffff,
 0xefbe, 0x1bb6, 0x02f4, 0x02b4, 0x8dba, 0xffff, 0xffff, 0xffff,
 0x33f6, 0x02f4, 0x02b4, 0x7dba, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0af5, 0x02f4, 0x02f4, 0xbe7c, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebd, 0x02f4, 0x02f5, 0x02f4, 0xc6bd, 0xffff, 0xffff, 0xffff,
 0x54b8, 0x02b4, 0x02b4, 0x5cf8, 0xffff, 0xffff, 0xffff, 0x64f8,
 0x02b4, 0x02b4, 0x4c77, 0xffff, 0xffff, 0xdf3e, 0x0b35, 0x02f4,
 0x02b4, 0xa63b, 0xffff, 0xffff, 0xffff, 0x7539, 0x02b4, 0x02f4,
 0x4c77, 0xffff, 0xffff, 0x3c37, 0x02b4, 0x02b4, 0x4c77, 0xffff,
 0xffff, 0xffff, 0xd73d, 0x0af5, 0x02f4, 0x02b4, 0x8dbb, 0xffff,
 0xffff, 0x5cf8, 0x02b4, 0x02b4, 0x5cb8, 0xffff, 0xffff, 0xffff,
 0x6d39, 0x02b4, 0x02f4, 0x4c77, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xf67a, 0xe027, 0xd826, 0xe027, 0xd826, 0xe027, 0xd826, 0xf577,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x02f4, 0x02f4, 0x02f5, 0xcefd, 0xffff, 0xffff,
 0xf7be, 0x1b76, 0x02f4, 0x02b4, 0x8dba, 0xffff, 0xffff, 0xf7ff,
 0x2bb6, 0x02f4, 0x02b4, 0x8579, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0335, 0x02f4, 0x02f4, 0xb67c, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebc, 0x02f4, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff,
 0x5cb8, 0x02f4, 0x02b4, 0x54b8, 0xffff, 0xffff, 0xffff, 0x64f8,
 0x02b4, 0x02f4, 0x4c78, 0xffff, 0xffff, 0xf7ff, 0x2bb6, 0x02f4,
 0x02b4, 0x7d7a, 0xffff, 0xffff, 0xffff, 0x5cf8, 0x02b4, 0x02b4,
 0x6cf9, 0xffff, 0xffff, 0x6cf8, 0x02b4, 0x02f4, 0x23b6, 0xf7be,
 0xffff, 0xffff, 0xae7c, 0x02f4, 0x02f4, 0x02f4, 0xbebc, 0xffff,
 0xffff, 0x5cb8, 0x02b4, 0x02f4, 0x4c78, 0xffff, 0xffff, 0xffff,
 0x64f9, 0x02b4, 0x02b4, 0x4c77, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xe1ac, 0xe025, 0xd826, 0xe027, 0xd826, 0xd825, 0xeaaf,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x0335, 0x02f4, 0x02f4, 0xcf3d, 0xffff, 0xffff,
 0xefbe, 0x2376, 0x02f4, 0x02f4, 0x1b76, 0xb6bc, 0xffff, 0xd73d,
 0x0b35, 0x02f4, 0x02b4, 0x7d7a, 0xffff, 0xffff, 0xffff, 0xd73d,
 0x0b35, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xbebd, 0x02f4, 0x02f5, 0x02f4, 0xc6bc, 0xffff, 0xffff, 0xffff,
 0x54b8, 0x02b4, 0x02f4, 0x02f4, 0x95ba, 0xffff, 0xf7bf, 0x33f7,
 0x02f4, 0x02b4, 0x5477, 0xffff, 0xffff, 0xffff, 0x6cf8, 0x02b4,
 0x02f4, 0x3c37, 0xffff, 0xffff, 0xf7bf, 0x2bb6, 0x02f4, 0x02b4,
 0x9e3b, 0xffff, 0xffff, 0xb67c, 0x02f4, 0x02f4, 0x02f4, 0xb67c,
 0xffff, 0xffff, 0x54b8, 0x02b4, 0x02f4, 0x2376, 0xefbe, 0xffff,
 0xffff, 0x4c77, 0x02b4, 0x02f4, 0x0334, 0x8dbb, 0xffff, 0xf7ff,
 0x33f6, 0x02f4, 0x02b4, 0x4c77, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xf536, 0xd825, 0xd827, 0xe026, 0xd827, 0xe026, 0xd867,
 0xf67a, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xd73d, 0x02f4, 0x02f4, 0x02f5, 0xcefd, 0xffff, 0xffff,
 0xe77e, 0x1375, 0x02f4, 0x02f4, 0x02f4, 0x0af4, 0x3c37, 0x2376,
 0x02f4, 0x0334, 0x02b4, 0x9dfb, 0xffff, 0xffff, 0xd6fd, 0x3c37,
 0x02f5, 0x02f4, 0x02f4, 0x3c37, 0x4c78, 0x7539, 0xffff, 0xffff,
 0xc6bc, 0x02f4, 0x02f4, 0x02f4, 0xbebd, 0xffff, 0xffff, 0xffff,
 0x4437, 0x02f4, 0x02f5, 0x02f4, 0x02f4, 0x33f7, 0x33f6, 0x0334,
 0x02f5, 0x02b4, 0x54b8, 0xffff, 0xffff, 0xffff, 0xc6fd, 0x02f4,
 0x02f4, 0x02f4, 0x7d7a, 0xcefd, 0x6d39, 0x02f4, 0x02f4, 0x1b75,
 0xe77e, 0xffff, 0xffff, 0xf7bf, 0x33f6, 0x02b4, 0x02f4, 0x1b76,
 0x8dba, 0x64f8, 0x02f4, 0x02f4, 0x02b4, 0x7539, 0xffff, 0xffff,
 0xffff, 0x4437, 0x02f4, 0x02f5, 0x02f4, 0x02b4, 0x33f6, 0x33f6,
 0x02f5, 0x02f4, 0x02b4, 0x54b8, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffbe, 0xe1ec, 0xd825, 0xe027, 0xd826, 0xe027, 0xd825,
 0xea2d, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x0335, 0x02f4, 0x02f4, 0xd73d, 0xffff, 0xffff,
 0xcefd, 0x02f4, 0x02f4, 0x02f5, 0x0b35, 0x02b4, 0x02f4, 0x02f4,
 0x02f5, 0x02f4, 0x02f4, 0xcefd, 0xffff, 0xffff, 0xb67c, 0x02b3,
 0x02f4, 0x0335, 0x02f4, 0x02b4, 0x02b3, 0x1335, 0xe77e, 0xffff,
 0xbebd, 0x02f4, 0x02f4, 0x02f4, 0xc6bc, 0xffff, 0xffff, 0xf7bf,
 0x23b6, 0x02f4, 0x02f4, 0x0b35, 0x02b4, 0x02f4, 0x02b4, 0x02f4,
 0x02f4, 0x02b4, 0x95fa, 0xffff, 0xffff, 0xffff, 0xffff, 0x64f8,
 0x02b4, 0x02f4, 0x02b4, 0x02f4, 0x02b4, 0x02f4, 0x02b4, 0x857a,
 0xffff, 0xffff, 0xffff, 0xffff, 0xae7c, 0x02b4, 0x02f4, 0x02f4,
 0x02b4, 0x02f4, 0x02f4, 0x02b4, 0x2bb6, 0xefbe, 0xffff, 0xffff,
 0xffff, 0x23b6, 0x02b4, 0x02f4, 0x1335, 0x02f4, 0x02b4, 0x02f4,
 0x02f4, 0x02f4, 0x02b4, 0x95fa, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xf5f9, 0xe026, 0xd826, 0xe027, 0xd826, 0xe027,
 0xd826, 0xec33, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x0334, 0x02f5, 0x02f4, 0xcefd, 0xffff, 0xffff,
 0xb67c, 0x0b35, 0x02b4, 0x1335, 0xbebc, 0x4437, 0x02f4, 0x02b3,
 0x02b4, 0x02b4, 0x7d79, 0xffff, 0xffff, 0xffff, 0xbebc, 0x02f4,
 0x02f5, 0x02f4, 0x02f5, 0x02f4, 0x02f5, 0x02f4, 0xbebc, 0xffff,
 0xbebc, 0x02f4, 0x02b4, 0x02b4, 0xbebc, 0xffff, 0xffff, 0xe77e,
 0x23b6, 0x02b4, 0x0273, 0xa63b, 0x6d39, 0x02f4, 0x02b4, 0x02b4,
 0x02b4, 0x4c77, 0xf7bf, 0xffff, 0xffff, 0xffff, 0xffff, 0xf7bf,
 0x5cb8, 0x02b4, 0x02b3, 0x02b4, 0x02b4, 0x02f4, 0x6cf9, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x95fb, 0x0af4, 0x02b4,
 0x02b4, 0x02b4, 0x02b4, 0x2bb6, 0xd73d, 0xffff, 0xffff, 0xffff,
 0xe77e, 0x23b6, 0x02b4, 0x02b4, 0x9e3b, 0x7539, 0x02f4, 0x02b4,
 0x02b4, 0x02b4, 0x4c77, 0xf7bf, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xebf3, 0xd825, 0xe026, 0xd827, 0xe026,
 0xd826, 0xe026, 0xf536, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcf3d, 0x02f5, 0x02f4, 0x0334, 0xcefd, 0xffff, 0xffff,
 0xffff, 0xe77e, 0xa63b, 0x8dba, 0xffff, 0xf7ff, 0xbe7c, 0x7d7a,
 0x7d79, 0xc6bd, 0xffff, 0xffff, 0xffff, 0xffff, 0xf7bf, 0xa63b,
 0x0335, 0x02f4, 0x02f4, 0x95fb, 0xd73d, 0xcefd, 0xef7e, 0xffff,
 0xf7bf, 0xcefd, 0xae3b, 0x85ba, 0xdf3e, 0xffff, 0xffff, 0xffff,
 0xefbe, 0xbebc, 0x7d7a, 0xe77e, 0xffff, 0xcefd, 0x8dba, 0x7d79,
 0xae3c, 0xf7fe, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xb67c, 0x6d39, 0x54b8, 0x7539, 0xbebc, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xd73d, 0x7d7a,
 0x5cb8, 0x64f8, 0x9e3b, 0xf7bf, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xefbe, 0xbebc, 0x7d7a, 0xe77e, 0xffff, 0xcefd, 0x8dba,
 0x7d79, 0xae3c, 0xf7ff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xeaae, 0xd825, 0xe027, 0xd826,
 0xd827, 0xe026, 0xd866, 0xf577, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x02f4, 0x02f4, 0x02f5, 0xcefd, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xcefd,
 0x02f4, 0x02f4, 0x02b4, 0xbebc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe, 0xe22c, 0xd825, 0xe027,
 0xe026, 0xd827, 0xd826, 0xe026, 0xecb5, 0xffff, 0xffff, 0xffff,
 0xffff, 0xcefd, 0x02f4, 0x02b4, 0x02b3, 0xd6fd, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xc6fd,
 0x02f4, 0x02f4, 0x02f4, 0xbebc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xb67b, 0x7d79, 0xbebc, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xff7e, 0xe26d, 0xd825,
 0xd826, 0xe027, 0xd827, 0xe026, 0xd825, 0xeb71, 0xffbe, 0xffff,
 0xffff, 0xefbe, 0xb67c, 0x8dba, 0x6cf9, 0xdf7e, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xd6fd,
 0x0335, 0x02f4, 0x02b4, 0x9dfb, 0xffff, 0xffff, 0xffff, 0xffff,
 0x9e3b, 0x02b4, 0x02b4, 0x02b4, 0xae7c, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe, 0xeaf0,
 0xd825, 0xd826, 0xe026, 0xd827, 0xe026, 0xd825, 0xe1ec, 0xfe7a,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xefbe,
 0x2376, 0x02f4, 0x02f4, 0x33f7, 0xbebc, 0x95bb, 0xc6fc, 0xffff,
 0x4437, 0x02b4, 0x0335, 0x02b3, 0x5cb8, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xf474, 0xd867, 0xe025, 0xd827, 0xe026, 0xd827, 0xe026, 0xd826,
 0xf5b8, 0xffff, 0xef7e, 0xd73d, 0xefbe, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0x64f9, 0x02b3, 0x02f5, 0x02f4, 0x02f4, 0x02b3, 0x64f9, 0xffff,
 0x7539, 0x0273, 0x02f4, 0x0273, 0x7d7a, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xf639, 0xe16b, 0xd825, 0xe026, 0xd826, 0xd825, 0xea2d,
 0xf7be, 0x7579, 0x1335, 0x0334, 0x1b76, 0x95fa, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xdf3d, 0x2bb6, 0x02b3, 0x02b4, 0x02b4, 0x0274, 0x2375, 0xf7bf,
 0xefbe, 0x5cb8, 0x23b6, 0x64f9, 0xf7be, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffbe, 0xebb2, 0xe067, 0xd825, 0xe027, 0xfebb,
 0x75bb, 0x0273, 0x02f4, 0x02f5, 0x02b4, 0x02b4, 0x9e3b, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xdf7e, 0x7539, 0x3c37, 0x3c37, 0x64f8, 0xbebc, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xf6bb, 0xe22c, 0xe1ec, 0xe77e,
 0x1b75, 0x02f4, 0x02f5, 0x02f4, 0x0334, 0x02b4, 0x3bf6, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffbf, 0xfefc, 0xd73d,
 0x0af5, 0x02f4, 0x0335, 0x02f4, 0x02f5, 0x02f4, 0x23b6, 0xf77e,
 0xf5f8, 0xffbe, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xf7be,
 0x23b6, 0x02f4, 0x02f4, 0x02f5, 0x0334, 0x02b4, 0x4c78, 0xf6fc,
 0xe067, 0xe12a, 0xebf3, 0xfebb, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0x9dfb, 0x02b4, 0x02b4, 0x02f4, 0x02b4, 0x0af4, 0xbf3e, 0xfcb4,
 0xe025, 0xd826, 0xd825, 0xd867, 0xe9ec, 0xecb4, 0xfefc, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xa63b, 0x3c37, 0x2375, 0x4c77, 0xbefd, 0xff3d, 0xe129,
 0xd825, 0xe025, 0xd826, 0xe026, 0xd825, 0xd826, 0xe067, 0xe22d,
 0xf4b5, 0xfefc, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xf7ff, 0xffff, 0xffff, 0xffff, 0xf6fc,
 0xf4f6, 0xe26e, 0xe0e9, 0xd826, 0xe025, 0xd825, 0xd826, 0xe025,
 0xd825, 0xd867, 0xe9ec, 0xec73, 0xf63a, 0xffbe, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xff7d, 0xf5b8, 0xebb2, 0xe1ec, 0xe067, 0xd826,
 0xd825, 0xe025, 0xd825, 0xd825, 0xe026, 0xe12a, 0xeaef, 0xf4b5,
 0xf67a, 0xff7e, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xfefc, 0xf5b8,
 0xebf2, 0xe26e, 0xe12a, 0xe067, 0xd826, 0xd824, 0xd824, 0xd824,
 0xd826, 0xe0a8, 0xe22d, 0xebb2, 0xf536, 0xf67b, 0xff7d, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffbe, 0xf6fc, 0xf5f8, 0xf4b5, 0xeb71, 0xe26d,
 0xe16b, 0xe0a8, 0xd826, 0xd825, 0xd824, 0xd825, 0xe067, 0xe12a,
 0xe26d, 0xeb71, 0xec74, 0xf578, 0xf679, 0xfefc, 0xff3d, 0xffbe,
 0xffbf, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xff7d, 0xfefc, 0xf63a, 0xf5b8, 0xf4f5, 0xec34, 0xebb1,
 0xeaef, 0xe26e, 0xea6d, 0xe22d, 0xea2d, 0xe26e, 0xeaef, 0xeb71,
 0xebf2, 0xf474, 0xecf6, 0xf5b7, 0xf5f9, 0xf63a, 0xf6fc, 0xffbe,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffbe,
 0xffbe, 0xffbe, 0xffbe, 0xffbf, 0xffbe, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
};
# 21 "0_Src/AppSw/Tricore/Tft_Screen/Tft.h" 2

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 1 3 4
# 40 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 23 "0_Src/AppSw/Tricore/Tft_Screen/Tft.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 1 3
# 10 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 1 3
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\newlib.h" 1 3
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\config.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\config.h" 2 3
# 17 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 2 3
# 11 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 1 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 1 3
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_types.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 1 3
# 26 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_types.h" 2 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 353 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__fardata__));
extern struct _reent *const _global_impure_ptr __attribute__((__fardata__));

void _reclaim_reent (struct _reent *);
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);
# 100 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\string.h" 1 3
# 101 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3


# 24 "0_Src/AppSw/Tricore/Tft_Screen/Tft.h" 2

void qspi0_init();

int usr_vsprintf(char *dest, const char *fmt, va_list ap);
int usr_sprintf(char *buf, char const *fmt, ...);

void GLCD_clear(unsigned short color);
void GLCD_init(void);
void GLCD_displayChar(unsigned int ln, unsigned int col, unsigned char c);
void GLCD_displayStringLn(unsigned int ln, const char *s);

extern void lock_wdtcon (void);
extern void unlock_wdtcon (void);
void GLCD_bitmap(unsigned int x, unsigned int y, unsigned int w, unsigned int h, const void *bitmap);
# 23 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h" 2
# 1 "0_Src/AppSw/Tricore/VADC/VADC.h" 1
# 12 "0_Src/AppSw/Tricore/VADC/VADC.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h" 1
# 53 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxVadc_cfg.h" 1
# 99 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxVadc_cfg.h"
typedef enum
{
    IfxVadc_GroupId_0,
    IfxVadc_GroupId_1,
    IfxVadc_GroupId_2,
    IfxVadc_GroupId_3,
    IfxVadc_GroupId_4,
    IfxVadc_GroupId_5,
    IfxVadc_GroupId_6,
    IfxVadc_GroupId_7,
    IfxVadc_GroupId_8,
    IfxVadc_GroupId_9,
    IfxVadc_GroupId_10,
    IfxVadc_GroupId_global0,
    IfxVadc_GroupId_global1
} IfxVadc_GroupId;






extern const uint32 IfxVadc_cfg_srcAddresses[((11) *4) + ((2) * 4) ];
# 54 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxVadc_PinMap.h" 1
# 31 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxVadc_PinMap.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_regdef.h" 1
# 49 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_regdef.h"
typedef struct _Ifx_VADC_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_VADC_ACCEN0_Bits;


typedef struct _Ifx_VADC_ACCPROT0_Bits
{
    unsigned int APC0:1;
    unsigned int APC1:1;
    unsigned int APC2:1;
    unsigned int APC3:1;
    unsigned int APC4:1;
    unsigned int APC5:1;
    unsigned int APC6:1;
    unsigned int APC7:1;
    unsigned int APC8:1;
    unsigned int APC9:1;
    unsigned int APC10:1;
    unsigned int reserved_11:4;
    unsigned int APEM:1;
    unsigned int API0:1;
    unsigned int API1:1;
    unsigned int API2:1;
    unsigned int API3:1;
    unsigned int API4:1;
    unsigned int API5:1;
    unsigned int API6:1;
    unsigned int API7:1;
    unsigned int API8:1;
    unsigned int API9:1;
    unsigned int API10:1;
    unsigned int reserved_27:4;
    unsigned int APGC:1;
} Ifx_VADC_ACCPROT0_Bits;


typedef struct _Ifx_VADC_ACCPROT1_Bits
{
    unsigned int APS0:1;
    unsigned int APS1:1;
    unsigned int APS2:1;
    unsigned int APS3:1;
    unsigned int APS4:1;
    unsigned int APS5:1;
    unsigned int APS6:1;
    unsigned int APS7:1;
    unsigned int APS8:1;
    unsigned int APS9:1;
    unsigned int APS10:1;
    unsigned int reserved_11:4;
    unsigned int APTF:1;
    unsigned int APR0:1;
    unsigned int APR1:1;
    unsigned int APR2:1;
    unsigned int APR3:1;
    unsigned int APR4:1;
    unsigned int APR5:1;
    unsigned int APR6:1;
    unsigned int APR7:1;
    unsigned int APR8:1;
    unsigned int APR9:1;
    unsigned int APR10:1;
    unsigned int reserved_27:5;
} Ifx_VADC_ACCPROT1_Bits;


typedef struct _Ifx_VADC_BRSCTRL_Bits
{
    unsigned int SRCRESREG:4;
    unsigned int reserved_4:4;
    unsigned int XTSEL:4;
    unsigned int XTLVL:1;
    unsigned int XTMODE:2;
    unsigned int XTWC:1;
    unsigned int GTSEL:4;
    unsigned int GTLVL:1;
    unsigned int reserved_21:2;
    unsigned int GTWC:1;
    unsigned int reserved_24:8;
} Ifx_VADC_BRSCTRL_Bits;


typedef struct _Ifx_VADC_BRSMR_Bits
{
    unsigned int ENGT:2;
    unsigned int ENTR:1;
    unsigned int ENSI:1;
    unsigned int SCAN:1;
    unsigned int LDM:1;
    unsigned int reserved_6:1;
    unsigned int REQGT:1;
    unsigned int CLRPND:1;
    unsigned int LDEV:1;
    unsigned int reserved_10:6;
    unsigned int RPTDIS:1;
    unsigned int reserved_17:15;
} Ifx_VADC_BRSMR_Bits;


typedef struct _Ifx_VADC_BRSPND_Bits
{
    unsigned int CHPNDGy:32;
} Ifx_VADC_BRSPND_Bits;


typedef struct _Ifx_VADC_BRSSEL_Bits
{
    unsigned int CHSELGy:32;
} Ifx_VADC_BRSSEL_Bits;


typedef struct _Ifx_VADC_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_VADC_CLC_Bits;


typedef struct _Ifx_VADC_EMUXSEL_Bits
{
    unsigned int EMUXGRP0:4;
    unsigned int EMUXGRP1:4;
    unsigned int reserved_8:24;
} Ifx_VADC_EMUXSEL_Bits;


typedef struct _Ifx_VADC_G_ALIAS_Bits
{
    unsigned int ALIAS0:5;
    unsigned int reserved_5:3;
    unsigned int ALIAS1:5;
    unsigned int reserved_13:19;
} Ifx_VADC_G_ALIAS_Bits;


typedef struct _Ifx_VADC_G_ARBCFG_Bits
{
    unsigned int ANONC:2;
    unsigned int reserved_2:2;
    unsigned int ARBRND:2;
    unsigned int reserved_6:1;
    unsigned int ARBM:1;
    unsigned int reserved_8:8;
    unsigned int ANONS:2;
    unsigned int CSRC:2;
    unsigned int CHNR:5;
    unsigned int SYNRUN:1;
    unsigned int reserved_26:2;
    unsigned int CAL:1;
    unsigned int CALS:1;
    unsigned int BUSY:1;
    unsigned int SAMPLE:1;
} Ifx_VADC_G_ARBCFG_Bits;


typedef struct _Ifx_VADC_G_ARBPR_Bits
{
    unsigned int PRIO0:2;
    unsigned int reserved_2:1;
    unsigned int CSM0:1;
    unsigned int PRIO1:2;
    unsigned int reserved_6:1;
    unsigned int CSM1:1;
    unsigned int PRIO2:2;
    unsigned int reserved_10:1;
    unsigned int CSM2:1;
    unsigned int reserved_12:12;
    unsigned int ASEN0:1;
    unsigned int ASEN1:1;
    unsigned int ASEN2:1;
    unsigned int reserved_27:5;
} Ifx_VADC_G_ARBPR_Bits;


typedef struct _Ifx_VADC_G_ASCTRL_Bits
{
    unsigned int SRCRESREG:4;
    unsigned int reserved_4:4;
    unsigned int XTSEL:4;
    unsigned int XTLVL:1;
    unsigned int XTMODE:2;
    unsigned int XTWC:1;
    unsigned int GTSEL:4;
    unsigned int GTLVL:1;
    unsigned int reserved_21:2;
    unsigned int GTWC:1;
    unsigned int reserved_24:4;
    unsigned int TMEN:1;
    unsigned int reserved_29:2;
    unsigned int TMWC:1;
} Ifx_VADC_G_ASCTRL_Bits;


typedef struct _Ifx_VADC_G_ASMR_Bits
{
    unsigned int ENGT:2;
    unsigned int ENTR:1;
    unsigned int ENSI:1;
    unsigned int SCAN:1;
    unsigned int LDM:1;
    unsigned int reserved_6:1;
    unsigned int REQGT:1;
    unsigned int CLRPND:1;
    unsigned int LDEV:1;
    unsigned int reserved_10:6;
    unsigned int RPTDIS:1;
    unsigned int reserved_17:15;
} Ifx_VADC_G_ASMR_Bits;


typedef struct _Ifx_VADC_G_ASPND_Bits
{
    unsigned int CHPND:32;
} Ifx_VADC_G_ASPND_Bits;


typedef struct _Ifx_VADC_G_ASSEL_Bits
{
    unsigned int CHSEL:32;
} Ifx_VADC_G_ASSEL_Bits;


typedef struct _Ifx_VADC_G_BFL_Bits
{
    unsigned int BFL0:1;
    unsigned int BFL1:1;
    unsigned int BFL2:1;
    unsigned int BFL3:1;
    unsigned int reserved_4:4;
    unsigned int BFA0:1;
    unsigned int BFA1:1;
    unsigned int BFA2:1;
    unsigned int BFA3:1;
    unsigned int reserved_12:4;
    unsigned int BFI0:1;
    unsigned int BFI1:1;
    unsigned int BFI2:1;
    unsigned int BFI3:1;
    unsigned int reserved_20:12;
} Ifx_VADC_G_BFL_Bits;


typedef struct _Ifx_VADC_G_BFLC_Bits
{
    unsigned int BFM0:4;
    unsigned int BFM1:4;
    unsigned int BFM2:4;
    unsigned int BFM3:4;
    unsigned int reserved_16:16;
} Ifx_VADC_G_BFLC_Bits;


typedef struct _Ifx_VADC_G_BFLNP_Bits
{
    unsigned int BFL0NP:4;
    unsigned int BFL1NP:4;
    unsigned int BFL2NP:4;
    unsigned int BFL3NP:4;
    unsigned int reserved_16:16;
} Ifx_VADC_G_BFLNP_Bits;


typedef struct _Ifx_VADC_G_BFLS_Bits
{
    unsigned int BFC0:1;
    unsigned int BFC1:1;
    unsigned int BFC2:1;
    unsigned int BFC3:1;
    unsigned int reserved_4:12;
    unsigned int BFS0:1;
    unsigned int BFS1:1;
    unsigned int BFS2:1;
    unsigned int BFS3:1;
    unsigned int reserved_20:12;
} Ifx_VADC_G_BFLS_Bits;


typedef struct _Ifx_VADC_G_BOUND_Bits
{
    unsigned int BOUNDARY0:12;
    unsigned int reserved_12:4;
    unsigned int BOUNDARY1:12;
    unsigned int reserved_28:4;
} Ifx_VADC_G_BOUND_Bits;


typedef struct _Ifx_VADC_G_CEFCLR_Bits
{
    unsigned int CEV0:1;
    unsigned int CEV1:1;
    unsigned int CEV2:1;
    unsigned int CEV3:1;
    unsigned int CEV4:1;
    unsigned int CEV5:1;
    unsigned int CEV6:1;
    unsigned int CEV7:1;
    unsigned int reserved_8:24;
} Ifx_VADC_G_CEFCLR_Bits;


typedef struct _Ifx_VADC_G_CEFLAG_Bits
{
    unsigned int CEV0:1;
    unsigned int CEV1:1;
    unsigned int CEV2:1;
    unsigned int CEV3:1;
    unsigned int CEV4:1;
    unsigned int CEV5:1;
    unsigned int CEV6:1;
    unsigned int CEV7:1;
    unsigned int reserved_8:24;
} Ifx_VADC_G_CEFLAG_Bits;


typedef struct _Ifx_VADC_G_CEVNP0_Bits
{
    unsigned int CEV0NP:4;
    unsigned int CEV1NP:4;
    unsigned int CEV2NP:4;
    unsigned int CEV3NP:4;
    unsigned int CEV4NP:4;
    unsigned int CEV5NP:4;
    unsigned int CEV6NP:4;
    unsigned int CEV7NP:4;
} Ifx_VADC_G_CEVNP0_Bits;


typedef struct _Ifx_VADC_G_CHASS_Bits
{
    unsigned int ASSCH0:1;
    unsigned int ASSCH1:1;
    unsigned int ASSCH2:1;
    unsigned int ASSCH3:1;
    unsigned int ASSCH4:1;
    unsigned int ASSCH5:1;
    unsigned int ASSCH6:1;
    unsigned int ASSCH7:1;
    unsigned int ASSCH8:1;
    unsigned int ASSCH9:1;
    unsigned int ASSCH10:1;
    unsigned int ASSCH11:1;
    unsigned int ASSCH12:1;
    unsigned int ASSCH13:1;
    unsigned int ASSCH14:1;
    unsigned int ASSCH15:1;
    unsigned int ASSCH16:1;
    unsigned int ASSCH17:1;
    unsigned int ASSCH18:1;
    unsigned int ASSCH19:1;
    unsigned int ASSCH20:1;
    unsigned int ASSCH21:1;
    unsigned int ASSCH22:1;
    unsigned int ASSCH23:1;
    unsigned int ASSCH24:1;
    unsigned int ASSCH25:1;
    unsigned int ASSCH26:1;
    unsigned int ASSCH27:1;
    unsigned int ASSCH28:1;
    unsigned int ASSCH29:1;
    unsigned int ASSCH30:1;
    unsigned int ASSCH31:1;
} Ifx_VADC_G_CHASS_Bits;


typedef struct _Ifx_VADC_G_CHCTR_Bits
{
    unsigned int ICLSEL:2;
    unsigned int reserved_2:2;
    unsigned int BNDSELL:2;
    unsigned int BNDSELU:2;
    unsigned int CHEVMODE:2;
    unsigned int SYNC:1;
    unsigned int REFSEL:1;
    unsigned int BNDSELX:4;
    unsigned int RESREG:4;
    unsigned int RESTBS:1;
    unsigned int RESPOS:1;
    unsigned int reserved_22:6;
    unsigned int BWDCH:2;
    unsigned int BWDEN:1;
    unsigned int reserved_31:1;
} Ifx_VADC_G_CHCTR_Bits;


typedef struct _Ifx_VADC_G_EMUXCTR_Bits
{
    unsigned int EMUXSET:3;
    unsigned int reserved_3:5;
    unsigned int EMUXACT:3;
    unsigned int reserved_11:5;
    unsigned int EMUXCH:10;
    unsigned int EMUXMODE:2;
    unsigned int EMXCOD:1;
    unsigned int EMXST:1;
    unsigned int EMXCSS:1;
    unsigned int EMXWC:1;
} Ifx_VADC_G_EMUXCTR_Bits;


typedef struct _Ifx_VADC_G_Q0R0_Bits
{
    unsigned int REQCHNR:5;
    unsigned int RF:1;
    unsigned int ENSI:1;
    unsigned int EXTR:1;
    unsigned int V:1;
    unsigned int reserved_9:23;
} Ifx_VADC_G_Q0R0_Bits;


typedef struct _Ifx_VADC_G_QBUR0_Bits
{
    unsigned int REQCHNR:5;
    unsigned int RF:1;
    unsigned int ENSI:1;
    unsigned int EXTR:1;
    unsigned int V:1;
    unsigned int reserved_9:23;
} Ifx_VADC_G_QBUR0_Bits;


typedef struct _Ifx_VADC_G_QCTRL0_Bits
{
    unsigned int SRCRESREG:4;
    unsigned int reserved_4:4;
    unsigned int XTSEL:4;
    unsigned int XTLVL:1;
    unsigned int XTMODE:2;
    unsigned int XTWC:1;
    unsigned int GTSEL:4;
    unsigned int GTLVL:1;
    unsigned int reserved_21:2;
    unsigned int GTWC:1;
    unsigned int reserved_24:4;
    unsigned int TMEN:1;
    unsigned int reserved_29:2;
    unsigned int TMWC:1;
} Ifx_VADC_G_QCTRL0_Bits;


typedef struct _Ifx_VADC_G_QINR0_Bits
{
    unsigned int REQCHNR:5;
    unsigned int RF:1;
    unsigned int ENSI:1;
    unsigned int EXTR:1;
    unsigned int reserved_8:24;
} Ifx_VADC_G_QINR0_Bits;


typedef struct _Ifx_VADC_G_QMR0_Bits
{
    unsigned int ENGT:2;
    unsigned int ENTR:1;
    unsigned int reserved_3:5;
    unsigned int CLRV:1;
    unsigned int TREV:1;
    unsigned int FLUSH:1;
    unsigned int CEV:1;
    unsigned int reserved_12:4;
    unsigned int RPTDIS:1;
    unsigned int reserved_17:15;
} Ifx_VADC_G_QMR0_Bits;


typedef struct _Ifx_VADC_G_QSR0_Bits
{
    unsigned int FILL:4;
    unsigned int reserved_4:1;
    unsigned int EMPTY:1;
    unsigned int reserved_6:1;
    unsigned int REQGT:1;
    unsigned int EV:1;
    unsigned int reserved_9:23;
} Ifx_VADC_G_QSR0_Bits;


typedef struct _Ifx_VADC_G_RCR_Bits
{
    unsigned int reserved_0:16;
    unsigned int DRCTR:4;
    unsigned int DMM:2;
    unsigned int reserved_22:2;
    unsigned int WFR:1;
    unsigned int FEN:2;
    unsigned int reserved_27:4;
    unsigned int SRGEN:1;
} Ifx_VADC_G_RCR_Bits;


typedef struct _Ifx_VADC_G_REFCLR_Bits
{
    unsigned int REV0:1;
    unsigned int REV1:1;
    unsigned int REV2:1;
    unsigned int REV3:1;
    unsigned int REV4:1;
    unsigned int REV5:1;
    unsigned int REV6:1;
    unsigned int REV7:1;
    unsigned int REV8:1;
    unsigned int REV9:1;
    unsigned int REV10:1;
    unsigned int REV11:1;
    unsigned int REV12:1;
    unsigned int REV13:1;
    unsigned int REV14:1;
    unsigned int REV15:1;
    unsigned int reserved_16:16;
} Ifx_VADC_G_REFCLR_Bits;


typedef struct _Ifx_VADC_G_REFLAG_Bits
{
    unsigned int REV0:1;
    unsigned int REV1:1;
    unsigned int REV2:1;
    unsigned int REV3:1;
    unsigned int REV4:1;
    unsigned int REV5:1;
    unsigned int REV6:1;
    unsigned int REV7:1;
    unsigned int REV8:1;
    unsigned int REV9:1;
    unsigned int REV10:1;
    unsigned int REV11:1;
    unsigned int REV12:1;
    unsigned int REV13:1;
    unsigned int REV14:1;
    unsigned int REV15:1;
    unsigned int reserved_16:16;
} Ifx_VADC_G_REFLAG_Bits;


typedef struct _Ifx_VADC_G_RES_Bits
{
    unsigned int RESULT:16;
    unsigned int DRC:4;
    unsigned int CHNR:5;
    unsigned int EMUX:3;
    unsigned int CRS:2;
    unsigned int FCR:1;
    unsigned int VF:1;
} Ifx_VADC_G_RES_Bits;


typedef struct _Ifx_VADC_G_RESD_Bits
{
    unsigned int RESULT:16;
    unsigned int DRC:4;
    unsigned int CHNR:5;
    unsigned int EMUX:3;
    unsigned int CRS:2;
    unsigned int FCR:1;
    unsigned int VF:1;
} Ifx_VADC_G_RESD_Bits;


typedef struct _Ifx_VADC_G_REVNP0_Bits
{
    unsigned int REV0NP:4;
    unsigned int REV1NP:4;
    unsigned int REV2NP:4;
    unsigned int REV3NP:4;
    unsigned int REV4NP:4;
    unsigned int REV5NP:4;
    unsigned int REV6NP:4;
    unsigned int REV7NP:4;
} Ifx_VADC_G_REVNP0_Bits;


typedef struct _Ifx_VADC_G_REVNP1_Bits
{
    unsigned int REV8NP:4;
    unsigned int REV9NP:4;
    unsigned int REV10NP:4;
    unsigned int REV11NP:4;
    unsigned int REV12NP:4;
    unsigned int REV13NP:4;
    unsigned int REV14NP:4;
    unsigned int REV15NP:4;
} Ifx_VADC_G_REVNP1_Bits;


typedef struct _Ifx_VADC_G_RRASS_Bits
{
    unsigned int ASSRR0:1;
    unsigned int ASSRR1:1;
    unsigned int ASSRR2:1;
    unsigned int ASSRR3:1;
    unsigned int ASSRR4:1;
    unsigned int ASSRR5:1;
    unsigned int ASSRR6:1;
    unsigned int ASSRR7:1;
    unsigned int ASSRR8:1;
    unsigned int ASSRR9:1;
    unsigned int ASSRR10:1;
    unsigned int ASSRR11:1;
    unsigned int ASSRR12:1;
    unsigned int ASSRR13:1;
    unsigned int ASSRR14:1;
    unsigned int ASSRR15:1;
    unsigned int reserved_16:16;
} Ifx_VADC_G_RRASS_Bits;


typedef struct _Ifx_VADC_G_SEFCLR_Bits
{
    unsigned int SEV0:1;
    unsigned int SEV1:1;
    unsigned int reserved_2:30;
} Ifx_VADC_G_SEFCLR_Bits;


typedef struct _Ifx_VADC_G_SEFLAG_Bits
{
    unsigned int SEV0:1;
    unsigned int SEV1:1;
    unsigned int reserved_2:30;
} Ifx_VADC_G_SEFLAG_Bits;


typedef struct _Ifx_VADC_G_SEVNP_Bits
{
    unsigned int SEV0NP:4;
    unsigned int SEV1NP:4;
    unsigned int reserved_8:24;
} Ifx_VADC_G_SEVNP_Bits;


typedef struct _Ifx_VADC_G_SRACT_Bits
{
    unsigned int AGSR0:1;
    unsigned int AGSR1:1;
    unsigned int AGSR2:1;
    unsigned int AGSR3:1;
    unsigned int reserved_4:4;
    unsigned int ASSR0:1;
    unsigned int ASSR1:1;
    unsigned int ASSR2:1;
    unsigned int ASSR3:1;
    unsigned int reserved_12:20;
} Ifx_VADC_G_SRACT_Bits;


typedef struct _Ifx_VADC_G_SYNCTR_Bits
{
    unsigned int STSEL:2;
    unsigned int reserved_2:2;
    unsigned int EVALR1:1;
    unsigned int EVALR2:1;
    unsigned int EVALR3:1;
    unsigned int reserved_7:25;
} Ifx_VADC_G_SYNCTR_Bits;


typedef struct _Ifx_VADC_G_VFR_Bits
{
    unsigned int VF0:1;
    unsigned int VF1:1;
    unsigned int VF2:1;
    unsigned int VF3:1;
    unsigned int VF4:1;
    unsigned int VF5:1;
    unsigned int VF6:1;
    unsigned int VF7:1;
    unsigned int VF8:1;
    unsigned int VF9:1;
    unsigned int VF10:1;
    unsigned int VF11:1;
    unsigned int VF12:1;
    unsigned int VF13:1;
    unsigned int VF14:1;
    unsigned int VF15:1;
    unsigned int reserved_16:16;
} Ifx_VADC_G_VFR_Bits;


typedef struct _Ifx_VADC_GLOBBOUND_Bits
{
    unsigned int BOUNDARY0:12;
    unsigned int reserved_12:4;
    unsigned int BOUNDARY1:12;
    unsigned int reserved_28:4;
} Ifx_VADC_GLOBBOUND_Bits;


typedef struct _Ifx_VADC_GLOBCFG_Bits
{
    unsigned int DIVA:5;
    unsigned int reserved_5:2;
    unsigned int DCMSB:1;
    unsigned int DIVD:2;
    unsigned int reserved_10:2;
    unsigned int REFPC:1;
    unsigned int reserved_13:1;
    unsigned int LOSUP:1;
    unsigned int DIVWC:1;
    unsigned int DPCAL0:1;
    unsigned int DPCAL1:1;
    unsigned int DPCAL2:1;
    unsigned int DPCAL3:1;
    unsigned int DPCAL4:1;
    unsigned int DPCAL5:1;
    unsigned int DPCAL6:1;
    unsigned int DPCAL7:1;
    unsigned int DPCAL8:1;
    unsigned int DPCAL9:1;
    unsigned int DPCAL10:1;
    unsigned int reserved_27:4;
    unsigned int SUCAL:1;
} Ifx_VADC_GLOBCFG_Bits;


typedef struct _Ifx_VADC_GLOBEFLAG_Bits
{
    unsigned int SEVGLB:1;
    unsigned int reserved_1:7;
    unsigned int REVGLB:1;
    unsigned int reserved_9:7;
    unsigned int SEVGLBCLR:1;
    unsigned int reserved_17:7;
    unsigned int REVGLBCLR:1;
    unsigned int reserved_25:7;
} Ifx_VADC_GLOBEFLAG_Bits;


typedef struct _Ifx_VADC_GLOBEVNP_Bits
{
    unsigned int SEV0NP:4;
    unsigned int reserved_4:12;
    unsigned int REV0NP:4;
    unsigned int reserved_20:12;
} Ifx_VADC_GLOBEVNP_Bits;


typedef struct _Ifx_VADC_GLOBRCR_Bits
{
    unsigned int reserved_0:16;
    unsigned int DRCTR:4;
    unsigned int reserved_20:4;
    unsigned int WFR:1;
    unsigned int reserved_25:6;
    unsigned int SRGEN:1;
} Ifx_VADC_GLOBRCR_Bits;


typedef struct _Ifx_VADC_GLOBRES_Bits
{
    unsigned int RESULT:16;
    unsigned int GNR:4;
    unsigned int CHNR:5;
    unsigned int EMUX:3;
    unsigned int CRS:2;
    unsigned int FCR:1;
    unsigned int VF:1;
} Ifx_VADC_GLOBRES_Bits;


typedef struct _Ifx_VADC_GLOBRESD_Bits
{
    unsigned int RESULT:16;
    unsigned int GNR:4;
    unsigned int CHNR:5;
    unsigned int EMUX:3;
    unsigned int CRS:2;
    unsigned int FCR:1;
    unsigned int VF:1;
} Ifx_VADC_GLOBRESD_Bits;


typedef struct _Ifx_VADC_GLOBTF_Bits
{
    unsigned int CDCH:4;
    unsigned int CDGR:4;
    unsigned int CDEN:1;
    unsigned int CDSEL:2;
    unsigned int reserved_11:4;
    unsigned int CDWC:1;
    unsigned int PDD:1;
    unsigned int MDPD:1;
    unsigned int MDPU:1;
    unsigned int reserved_19:4;
    unsigned int MDWC:1;
    unsigned int reserved_24:8;
} Ifx_VADC_GLOBTF_Bits;


typedef struct _Ifx_VADC_ICLASS_Bits
{
    unsigned int STCS:5;
    unsigned int reserved_5:3;
    unsigned int CMS:3;
    unsigned int reserved_11:5;
    unsigned int STCE:5;
    unsigned int reserved_21:3;
    unsigned int CME:3;
    unsigned int reserved_27:5;
} Ifx_VADC_ICLASS_Bits;


typedef struct _Ifx_VADC_ID_Bits
{
    unsigned int MOD_REV:8;
    unsigned int MOD_TYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_VADC_ID_Bits;


typedef struct _Ifx_VADC_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_VADC_KRST0_Bits;


typedef struct _Ifx_VADC_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_VADC_KRST1_Bits;


typedef struct _Ifx_VADC_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_VADC_KRSTCLR_Bits;


typedef struct _Ifx_VADC_OCS_Bits
{
    unsigned int TGS:2;
    unsigned int TGB:1;
    unsigned int TG_P:1;
    unsigned int reserved_4:20;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_VADC_OCS_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCEN0_Bits B;
} Ifx_VADC_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCPROT0_Bits B;
} Ifx_VADC_ACCPROT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCPROT1_Bits B;
} Ifx_VADC_ACCPROT1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSCTRL_Bits B;
} Ifx_VADC_BRSCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSMR_Bits B;
} Ifx_VADC_BRSMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSPND_Bits B;
} Ifx_VADC_BRSPND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSSEL_Bits B;
} Ifx_VADC_BRSSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_CLC_Bits B;
} Ifx_VADC_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_EMUXSEL_Bits B;
} Ifx_VADC_EMUXSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ALIAS_Bits B;
} Ifx_VADC_G_ALIAS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ARBCFG_Bits B;
} Ifx_VADC_G_ARBCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ARBPR_Bits B;
} Ifx_VADC_G_ARBPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASCTRL_Bits B;
} Ifx_VADC_G_ASCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASMR_Bits B;
} Ifx_VADC_G_ASMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASPND_Bits B;
} Ifx_VADC_G_ASPND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASSEL_Bits B;
} Ifx_VADC_G_ASSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFL_Bits B;
} Ifx_VADC_G_BFL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLC_Bits B;
} Ifx_VADC_G_BFLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLNP_Bits B;
} Ifx_VADC_G_BFLNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLS_Bits B;
} Ifx_VADC_G_BFLS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BOUND_Bits B;
} Ifx_VADC_G_BOUND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEFCLR_Bits B;
} Ifx_VADC_G_CEFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEFLAG_Bits B;
} Ifx_VADC_G_CEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEVNP0_Bits B;
} Ifx_VADC_G_CEVNP0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CHASS_Bits B;
} Ifx_VADC_G_CHASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CHCTR_Bits B;
} Ifx_VADC_G_CHCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_EMUXCTR_Bits B;
} Ifx_VADC_G_EMUXCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_Q0R0_Bits B;
} Ifx_VADC_G_Q0R0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QBUR0_Bits B;
} Ifx_VADC_G_QBUR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QCTRL0_Bits B;
} Ifx_VADC_G_QCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QINR0_Bits B;
} Ifx_VADC_G_QINR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QMR0_Bits B;
} Ifx_VADC_G_QMR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QSR0_Bits B;
} Ifx_VADC_G_QSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RCR_Bits B;
} Ifx_VADC_G_RCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REFCLR_Bits B;
} Ifx_VADC_G_REFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REFLAG_Bits B;
} Ifx_VADC_G_REFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RES_Bits B;
} Ifx_VADC_G_RES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RESD_Bits B;
} Ifx_VADC_G_RESD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REVNP0_Bits B;
} Ifx_VADC_G_REVNP0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REVNP1_Bits B;
} Ifx_VADC_G_REVNP1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RRASS_Bits B;
} Ifx_VADC_G_RRASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEFCLR_Bits B;
} Ifx_VADC_G_SEFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEFLAG_Bits B;
} Ifx_VADC_G_SEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEVNP_Bits B;
} Ifx_VADC_G_SEVNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SRACT_Bits B;
} Ifx_VADC_G_SRACT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SYNCTR_Bits B;
} Ifx_VADC_G_SYNCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_VFR_Bits B;
} Ifx_VADC_G_VFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBBOUND_Bits B;
} Ifx_VADC_GLOBBOUND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBCFG_Bits B;
} Ifx_VADC_GLOBCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBEFLAG_Bits B;
} Ifx_VADC_GLOBEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBEVNP_Bits B;
} Ifx_VADC_GLOBEVNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRCR_Bits B;
} Ifx_VADC_GLOBRCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRES_Bits B;
} Ifx_VADC_GLOBRES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRESD_Bits B;
} Ifx_VADC_GLOBRESD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBTF_Bits B;
} Ifx_VADC_GLOBTF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ICLASS_Bits B;
} Ifx_VADC_ICLASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ID_Bits B;
} Ifx_VADC_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRST0_Bits B;
} Ifx_VADC_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRST1_Bits B;
} Ifx_VADC_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRSTCLR_Bits B;
} Ifx_VADC_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_OCS_Bits B;
} Ifx_VADC_OCS;
# 1429 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_regdef.h"
typedef volatile struct _Ifx_VADC_G
{
    Ifx_VADC_G_ARBCFG ARBCFG;
    Ifx_VADC_G_ARBPR ARBPR;
    Ifx_VADC_G_CHASS CHASS;
    Ifx_VADC_G_RRASS RRASS;
    unsigned char reserved_10[16];
    Ifx_VADC_ICLASS ICLASS[2];
    unsigned char reserved_28[8];
    Ifx_VADC_G_ALIAS ALIAS;
    unsigned char reserved_34[4];
    Ifx_VADC_G_BOUND BOUND;
    unsigned char reserved_3C[4];
    Ifx_VADC_G_SYNCTR SYNCTR;
    unsigned char reserved_44[4];
    Ifx_VADC_G_BFL BFL;
    Ifx_VADC_G_BFLS BFLS;
    Ifx_VADC_G_BFLC BFLC;
    Ifx_VADC_G_BFLNP BFLNP;
    unsigned char reserved_58[40];
    Ifx_VADC_G_QCTRL0 QCTRL0;
    Ifx_VADC_G_QMR0 QMR0;
    Ifx_VADC_G_QSR0 QSR0;
    Ifx_VADC_G_Q0R0 Q0R0;
    union
    {
        Ifx_VADC_G_QBUR0 QBUR0;
        Ifx_VADC_G_QINR0 QINR0;
    };

    unsigned char reserved_94[12];
    Ifx_VADC_G_ASCTRL ASCTRL;
    Ifx_VADC_G_ASMR ASMR;
    Ifx_VADC_G_ASSEL ASSEL;
    Ifx_VADC_G_ASPND ASPND;
    unsigned char reserved_B0[80];
    Ifx_VADC_G_CEFLAG CEFLAG;
    Ifx_VADC_G_REFLAG REFLAG;
    Ifx_VADC_G_SEFLAG SEFLAG;
    unsigned char reserved_10C[4];
    Ifx_VADC_G_CEFCLR CEFCLR;
    Ifx_VADC_G_REFCLR REFCLR;
    Ifx_VADC_G_SEFCLR SEFCLR;
    unsigned char reserved_11C[4];
    Ifx_VADC_G_CEVNP0 CEVNP0;
    unsigned char reserved_124[12];
    Ifx_VADC_G_REVNP0 REVNP0;
    Ifx_VADC_G_REVNP1 REVNP1;
    unsigned char reserved_138[8];
    Ifx_VADC_G_SEVNP SEVNP;
    unsigned char reserved_144[4];
    Ifx_VADC_G_SRACT SRACT;
    unsigned char reserved_14C[36];
    Ifx_VADC_G_EMUXCTR EMUXCTR;
    unsigned char reserved_174[4];
    Ifx_VADC_G_VFR VFR;
    unsigned char reserved_17C[4];
    Ifx_VADC_G_CHCTR CHCTR[8];
    unsigned char reserved_1A0[96];
    Ifx_VADC_G_RCR RCR[16];
    unsigned char reserved_240[64];
    Ifx_VADC_G_RES RES[16];
    unsigned char reserved_2C0[64];
    Ifx_VADC_G_RESD RESD[16];
    unsigned char reserved_340[192];
} Ifx_VADC_G;
# 1507 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_regdef.h"
typedef volatile struct _Ifx_VADC
{
    Ifx_VADC_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_VADC_ID ID;
    unsigned char reserved_C[28];
    Ifx_VADC_OCS OCS;
    Ifx_VADC_KRSTCLR KRSTCLR;
    Ifx_VADC_KRST1 KRST1;
    Ifx_VADC_KRST0 KRST0;
    unsigned char reserved_38[4];
    Ifx_VADC_ACCEN0 ACCEN0;
    unsigned char reserved_40[64];
    Ifx_VADC_GLOBCFG GLOBCFG;
    unsigned char reserved_84[4];
    Ifx_VADC_ACCPROT0 ACCPROT0;
    Ifx_VADC_ACCPROT1 ACCPROT1;
    unsigned char reserved_90[16];
    Ifx_VADC_ICLASS GLOBICLASS[2];
    unsigned char reserved_A8[16];
    Ifx_VADC_GLOBBOUND GLOBBOUND;
    unsigned char reserved_BC[36];
    Ifx_VADC_GLOBEFLAG GLOBEFLAG;
    unsigned char reserved_E4[92];
    Ifx_VADC_GLOBEVNP GLOBEVNP;
    unsigned char reserved_144[28];
    Ifx_VADC_GLOBTF GLOBTF;
    unsigned char reserved_164[28];
    Ifx_VADC_BRSSEL BRSSEL[11];
    unsigned char reserved_1AC[20];
    Ifx_VADC_BRSPND BRSPND[11];
    unsigned char reserved_1EC[20];
    Ifx_VADC_BRSCTRL BRSCTRL;
    Ifx_VADC_BRSMR BRSMR;
    unsigned char reserved_208[120];
    Ifx_VADC_GLOBRCR GLOBRCR;
    unsigned char reserved_284[124];
    Ifx_VADC_GLOBRES GLOBRES;
    unsigned char reserved_304[124];
    Ifx_VADC_GLOBRESD GLOBRESD;
    unsigned char reserved_384[108];
    Ifx_VADC_EMUXSEL EMUXSEL;
    unsigned char reserved_3F4[140];
    Ifx_VADC_G G[11];
    unsigned char reserved_3080[3968];
} Ifx_VADC;
# 37 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_reg.h" 2
# 32 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxVadc_PinMap.h" 2







typedef const struct
{
    Ifx_VADC* module;
    IfxVadc_GroupId groupId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxVadc_GxBfl_Out;


typedef const struct
{
    Ifx_VADC* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxVadc_Emux_Out;


typedef const struct
{
    Ifx_VADC* module;
    IfxVadc_GroupId groupId;
    IfxPort_Pin pin;
    uint8 channelId;
} IfxVadc_Vadcg_In;

extern IfxVadc_Emux_Out IfxVadc_EMUX00_P02_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX00_P33_3_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX01_P02_7_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX01_P33_2_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX02_P02_8_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX02_P33_1_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX10_P00_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX10_P33_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX11_P00_7_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX11_P33_5_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX12_P00_8_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX12_P33_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL0_P33_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL1_P33_5_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P33_6_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P33_7_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G2BFL0_P33_0_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G2BFL1_P33_1_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G2BFL2_P33_2_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G2BFL3_P33_3_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G4BFL0_P00_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G4BFL1_P00_5_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G4BFL2_P00_6_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G4BFL3_P00_7_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G6BFL0_P10_0_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G6BFL1_P10_1_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G6BFL2_P10_2_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G6BFL3_P10_3_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G7BFL0_P10_6_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G7BFL1_P10_7_OUT;
extern IfxVadc_Vadcg_In IfxVadc_G0_0_AN0_IN;
extern IfxVadc_Vadcg_In IfxVadc_G0_1_AN1_IN;
extern IfxVadc_Vadcg_In IfxVadc_G0_2_AN2_IN;
extern IfxVadc_Vadcg_In IfxVadc_G0_3_AN3_IN;
extern IfxVadc_Vadcg_In IfxVadc_G0_4_AN4_IN;
extern IfxVadc_Vadcg_In IfxVadc_G0_5_AN5_IN;
extern IfxVadc_Vadcg_In IfxVadc_G0_6_AN6_IN;
extern IfxVadc_Vadcg_In IfxVadc_G0_7_AN7_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_0_AN64_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_1_AN65_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_2_AN66_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_3_AN67_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_3_P40_10_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_4_AN68_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_4_P40_11_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_5_AN69_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_5_P40_12_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_6_AN70_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_6_P40_13_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_7_AN71_IN;
extern IfxVadc_Vadcg_In IfxVadc_G10_7_P40_14_IN;
extern IfxVadc_Vadcg_In IfxVadc_G1_0_AN8_IN;
extern IfxVadc_Vadcg_In IfxVadc_G1_1_AN9_IN;
extern IfxVadc_Vadcg_In IfxVadc_G1_2_AN10_IN;
extern IfxVadc_Vadcg_In IfxVadc_G1_3_AN11_IN;
extern IfxVadc_Vadcg_In IfxVadc_G1_4_AN12_IN;
extern IfxVadc_Vadcg_In IfxVadc_G1_5_AN13_IN;
extern IfxVadc_Vadcg_In IfxVadc_G1_6_AN14_IN;
extern IfxVadc_Vadcg_In IfxVadc_G1_7_AN15_IN;
extern IfxVadc_Vadcg_In IfxVadc_G2_0_AN16_IN;
extern IfxVadc_Vadcg_In IfxVadc_G2_1_AN17_IN;
extern IfxVadc_Vadcg_In IfxVadc_G2_2_AN18_IN;
extern IfxVadc_Vadcg_In IfxVadc_G2_3_AN19_IN;
extern IfxVadc_Vadcg_In IfxVadc_G2_4_AN20_IN;
extern IfxVadc_Vadcg_In IfxVadc_G2_5_AN21_IN;
extern IfxVadc_Vadcg_In IfxVadc_G2_6_AN22_IN;
extern IfxVadc_Vadcg_In IfxVadc_G2_7_AN23_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_0_AN24_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_0_P40_0_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_1_AN25_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_1_P40_1_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_2_AN26_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_2_P40_2_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_3_AN27_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_3_P40_3_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_4_AN28_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_5_AN29_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_6_AN30_IN;
extern IfxVadc_Vadcg_In IfxVadc_G3_7_AN31_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_0_AN32_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_0_P40_4_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_1_AN33_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_1_P40_5_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_2_AN34_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_3_AN35_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_4_AN36_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_4_P40_6_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_5_AN37_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_5_P40_7_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_6_AN38_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_6_P40_8_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_7_AN39_IN;
extern IfxVadc_Vadcg_In IfxVadc_G4_7_P40_9_IN;
extern IfxVadc_Vadcg_In IfxVadc_G5_0_AN40_IN;
extern IfxVadc_Vadcg_In IfxVadc_G5_1_AN41_IN;
extern IfxVadc_Vadcg_In IfxVadc_G5_2_AN42_IN;
extern IfxVadc_Vadcg_In IfxVadc_G5_3_AN43_IN;
extern IfxVadc_Vadcg_In IfxVadc_G5_4_AN44_IN;
extern IfxVadc_Vadcg_In IfxVadc_G5_5_AN45_IN;
extern IfxVadc_Vadcg_In IfxVadc_G5_6_AN46_IN;
extern IfxVadc_Vadcg_In IfxVadc_G5_7_AN47_IN;
extern IfxVadc_Vadcg_In IfxVadc_G6_0_P00_12_IN;
extern IfxVadc_Vadcg_In IfxVadc_G6_1_P00_11_IN;
extern IfxVadc_Vadcg_In IfxVadc_G6_2_P00_10_IN;
extern IfxVadc_Vadcg_In IfxVadc_G6_3_P00_9_IN;
extern IfxVadc_Vadcg_In IfxVadc_G6_4_P00_8_IN;
extern IfxVadc_Vadcg_In IfxVadc_G6_5_P00_7_IN;
extern IfxVadc_Vadcg_In IfxVadc_G7_0_P00_6_IN;
extern IfxVadc_Vadcg_In IfxVadc_G7_1_P00_5_IN;
extern IfxVadc_Vadcg_In IfxVadc_G7_2_P00_4_IN;
extern IfxVadc_Vadcg_In IfxVadc_G7_3_P00_3_IN;
extern IfxVadc_Vadcg_In IfxVadc_G7_4_P00_2_IN;
extern IfxVadc_Vadcg_In IfxVadc_G7_5_P00_1_IN;
extern IfxVadc_Vadcg_In IfxVadc_G8_0_AN48_IN;
extern IfxVadc_Vadcg_In IfxVadc_G8_1_AN49_IN;
extern IfxVadc_Vadcg_In IfxVadc_G8_2_AN50_IN;
extern IfxVadc_Vadcg_In IfxVadc_G8_3_AN51_IN;
extern IfxVadc_Vadcg_In IfxVadc_G8_4_AN52_IN;
extern IfxVadc_Vadcg_In IfxVadc_G8_5_AN53_IN;
extern IfxVadc_Vadcg_In IfxVadc_G8_6_AN54_IN;
extern IfxVadc_Vadcg_In IfxVadc_G8_7_AN55_IN;
extern IfxVadc_Vadcg_In IfxVadc_G9_0_AN56_IN;
extern IfxVadc_Vadcg_In IfxVadc_G9_1_AN57_IN;
extern IfxVadc_Vadcg_In IfxVadc_G9_2_AN58_IN;
extern IfxVadc_Vadcg_In IfxVadc_G9_3_AN59_IN;
extern IfxVadc_Vadcg_In IfxVadc_G9_4_AN60_IN;
extern IfxVadc_Vadcg_In IfxVadc_G9_5_AN61_IN;
extern IfxVadc_Vadcg_In IfxVadc_G9_6_AN62_IN;
extern IfxVadc_Vadcg_In IfxVadc_G9_7_AN63_IN;
# 203 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxVadc_PinMap.h"
extern const IfxVadc_Emux_Out *IfxVadc_Emux_Out_pinTable[1][12];


extern const IfxVadc_GxBfl_Out *IfxVadc_GxBfl_Out_pinTable[1][11][4];


extern const IfxVadc_Vadcg_In *IfxVadc_Vadcg_In_pinTable[1][11][8];
# 55 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxVadc_bf.h" 1
# 56 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h" 2



# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCcu6_reg.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCcu6_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCcu6_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCcu6_regdef.h"
typedef struct _Ifx_CCU6_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_CCU6_ACCEN0_Bits;


typedef struct _Ifx_CCU6_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_CCU6_ACCEN1_Bits;


typedef struct _Ifx_CCU6_CC60R_Bits
{
    unsigned int CCV:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_CC60R_Bits;


typedef struct _Ifx_CCU6_CC60SR_Bits
{
    unsigned int CCS:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_CC60SR_Bits;


typedef struct _Ifx_CCU6_CC61R_Bits
{
    unsigned int CCV:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_CC61R_Bits;


typedef struct _Ifx_CCU6_CC61SR_Bits
{
    unsigned int CCS:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_CC61SR_Bits;


typedef struct _Ifx_CCU6_CC62R_Bits
{
    unsigned int CCV:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_CC62R_Bits;


typedef struct _Ifx_CCU6_CC62SR_Bits
{
    unsigned int CCS:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_CC62SR_Bits;


typedef struct _Ifx_CCU6_CC63R_Bits
{
    unsigned int CCV:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_CC63R_Bits;


typedef struct _Ifx_CCU6_CC63SR_Bits
{
    unsigned int CCS:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_CC63SR_Bits;


typedef struct _Ifx_CCU6_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_CCU6_CLC_Bits;


typedef struct _Ifx_CCU6_CMPMODIF_Bits
{
    unsigned int MCC60S:1;
    unsigned int MCC61S:1;
    unsigned int MCC62S:1;
    unsigned int reserved_3:3;
    unsigned int MCC63S:1;
    unsigned int reserved_7:1;
    unsigned int MCC60R:1;
    unsigned int MCC61R:1;
    unsigned int MCC62R:1;
    unsigned int reserved_11:3;
    unsigned int MCC63R:1;
    unsigned int reserved_15:17;
} Ifx_CCU6_CMPMODIF_Bits;


typedef struct _Ifx_CCU6_CMPSTAT_Bits
{
    unsigned int CC60ST:1;
    unsigned int CC61ST:1;
    unsigned int CC62ST:1;
    unsigned int CCPOS60:1;
    unsigned int CCPOS61:1;
    unsigned int CCPOS62:1;
    unsigned int CC63ST:1;
    unsigned int reserved_7:1;
    unsigned int CC60PS:1;
    unsigned int COUT60PS:1;
    unsigned int CC61PS:1;
    unsigned int COUT61PS:1;
    unsigned int CC62PS:1;
    unsigned int COUT62PS:1;
    unsigned int COUT63PS:1;
    unsigned int T13IM:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_CMPSTAT_Bits;


typedef struct _Ifx_CCU6_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODNUMBER:8;
    unsigned int reserved_16:16;
} Ifx_CCU6_ID_Bits;


typedef struct _Ifx_CCU6_IEN_Bits
{
    unsigned int ENCC60R:1;
    unsigned int ENCC60F:1;
    unsigned int ENCC61R:1;
    unsigned int ENCC61F:1;
    unsigned int ENCC62R:1;
    unsigned int ENCC62F:1;
    unsigned int ENT12OM:1;
    unsigned int ENT12PM:1;
    unsigned int ENT13CM:1;
    unsigned int ENT13PM:1;
    unsigned int ENTRPF:1;
    unsigned int reserved_11:1;
    unsigned int ENCHE:1;
    unsigned int ENWHE:1;
    unsigned int ENIDLE:1;
    unsigned int ENSTR:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_IEN_Bits;


typedef struct _Ifx_CCU6_IMON_Bits
{
    unsigned int LBE:1;
    unsigned int CCPOS0I:1;
    unsigned int CCPOS1I:1;
    unsigned int CCPOS2I:1;
    unsigned int CC60INI:1;
    unsigned int CC61INI:1;
    unsigned int CC62INI:1;
    unsigned int CTRAPI:1;
    unsigned int T12HRI:1;
    unsigned int T13HRI:1;
    unsigned int reserved_10:22;
} Ifx_CCU6_IMON_Bits;


typedef struct _Ifx_CCU6_INP_Bits
{
    unsigned int INPCC60:2;
    unsigned int INPCC61:2;
    unsigned int INPCC62:2;
    unsigned int INPCHE:2;
    unsigned int INPERR:2;
    unsigned int INPT12:2;
    unsigned int INPT13:2;
    unsigned int reserved_14:18;
} Ifx_CCU6_INP_Bits;


typedef struct _Ifx_CCU6_IS_Bits
{
    unsigned int ICC60R:1;
    unsigned int ICC60F:1;
    unsigned int ICC61R:1;
    unsigned int ICC61F:1;
    unsigned int ICC62R:1;
    unsigned int ICC62F:1;
    unsigned int T12OM:1;
    unsigned int T12PM:1;
    unsigned int T13CM:1;
    unsigned int T13PM:1;
    unsigned int TRPF:1;
    unsigned int TRPS:1;
    unsigned int CHE:1;
    unsigned int WHE:1;
    unsigned int IDLE:1;
    unsigned int STR:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_IS_Bits;


typedef struct _Ifx_CCU6_ISR_Bits
{
    unsigned int RCC60R:1;
    unsigned int RCC60F:1;
    unsigned int RCC61R:1;
    unsigned int RCC61F:1;
    unsigned int RCC62R:1;
    unsigned int RCC62F:1;
    unsigned int RT12OM:1;
    unsigned int RT12PM:1;
    unsigned int RT13CM:1;
    unsigned int RT13PM:1;
    unsigned int RTRPF:1;
    unsigned int reserved_11:1;
    unsigned int RCHE:1;
    unsigned int RWHE:1;
    unsigned int RIDLE:1;
    unsigned int RSTR:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_ISR_Bits;


typedef struct _Ifx_CCU6_ISS_Bits
{
    unsigned int SCC60R:1;
    unsigned int SCC60F:1;
    unsigned int SCC61R:1;
    unsigned int SCC61F:1;
    unsigned int SCC62R:1;
    unsigned int SCC62F:1;
    unsigned int ST12OM:1;
    unsigned int ST12PM:1;
    unsigned int ST13CM:1;
    unsigned int ST13PM:1;
    unsigned int STRPF:1;
    unsigned int SWHC:1;
    unsigned int SCHE:1;
    unsigned int SWHE:1;
    unsigned int SIDLE:1;
    unsigned int SSTR:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_ISS_Bits;


typedef struct _Ifx_CCU6_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_CCU6_KRST0_Bits;


typedef struct _Ifx_CCU6_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_CCU6_KRST1_Bits;


typedef struct _Ifx_CCU6_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_CCU6_KRSTCLR_Bits;


typedef struct _Ifx_CCU6_KSCSR_Bits
{
    unsigned int SB0:1;
    unsigned int SB1:1;
    unsigned int SB2:1;
    unsigned int SB3:1;
    unsigned int reserved_4:28;
} Ifx_CCU6_KSCSR_Bits;


typedef struct _Ifx_CCU6_LI_Bits
{
    unsigned int reserved_0:1;
    unsigned int CCPOS0EN:1;
    unsigned int CCPOS1EN:1;
    unsigned int CCPOS2EN:1;
    unsigned int CC60INEN:1;
    unsigned int CC61INEN:1;
    unsigned int CC62INEN:1;
    unsigned int CTRAPEN:1;
    unsigned int T12HREN:1;
    unsigned int T13HREN:1;
    unsigned int reserved_10:3;
    unsigned int LBEEN:1;
    unsigned int INPLBE:2;
    unsigned int reserved_16:16;
} Ifx_CCU6_LI_Bits;


typedef struct _Ifx_CCU6_MCFG_Bits
{
    unsigned int T12:1;
    unsigned int T13:1;
    unsigned int MCM:1;
    unsigned int reserved_3:29;
} Ifx_CCU6_MCFG_Bits;


typedef struct _Ifx_CCU6_MCMCTR_Bits
{
    unsigned int SWSEL:3;
    unsigned int reserved_3:1;
    unsigned int SWSYN:2;
    unsigned int reserved_6:2;
    unsigned int STE12U:1;
    unsigned int STE12D:1;
    unsigned int STE13U:1;
    unsigned int reserved_11:21;
} Ifx_CCU6_MCMCTR_Bits;


typedef struct _Ifx_CCU6_MCMOUT_Bits
{
    unsigned int MCMP:6;
    unsigned int R:1;
    unsigned int reserved_7:1;
    unsigned int EXPH:3;
    unsigned int CURH:3;
    unsigned int reserved_14:18;
} Ifx_CCU6_MCMOUT_Bits;


typedef struct _Ifx_CCU6_MCMOUTS_Bits
{
    unsigned int MCMPS:6;
    unsigned int reserved_6:1;
    unsigned int STRMCM:1;
    unsigned int EXPHS:3;
    unsigned int CURHS:3;
    unsigned int reserved_14:1;
    unsigned int STRHP:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_MCMOUTS_Bits;


typedef struct _Ifx_CCU6_MODCTR_Bits
{
    unsigned int T12MODEN:6;
    unsigned int reserved_6:1;
    unsigned int MCMEN:1;
    unsigned int T13MODEN:6;
    unsigned int reserved_14:1;
    unsigned int ECT13O:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_MODCTR_Bits;


typedef struct _Ifx_CCU6_MOSEL_Bits
{
    unsigned int TRIG0SEL:3;
    unsigned int TRIG1SEL:3;
    unsigned int TRIG2SEL:3;
    unsigned int reserved_9:23;
} Ifx_CCU6_MOSEL_Bits;


typedef struct _Ifx_CCU6_OCS_Bits
{
    unsigned int TGS:2;
    unsigned int TGB:1;
    unsigned int TG_P:1;
    unsigned int reserved_4:20;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_CCU6_OCS_Bits;


typedef struct _Ifx_CCU6_PISEL0_Bits
{
    unsigned int ISCC60:2;
    unsigned int ISCC61:2;
    unsigned int ISCC62:2;
    unsigned int ISTRP:2;
    unsigned int ISPOS0:2;
    unsigned int ISPOS1:2;
    unsigned int ISPOS2:2;
    unsigned int IST12HR:2;
    unsigned int reserved_16:16;
} Ifx_CCU6_PISEL0_Bits;


typedef struct _Ifx_CCU6_PISEL2_Bits
{
    unsigned int IST13HR:2;
    unsigned int ISCNT12:2;
    unsigned int ISCNT13:2;
    unsigned int T12EXT:1;
    unsigned int T13EXT:1;
    unsigned int reserved_8:24;
} Ifx_CCU6_PISEL2_Bits;


typedef struct _Ifx_CCU6_PSLR_Bits
{
    unsigned int PSL:6;
    unsigned int reserved_6:1;
    unsigned int PSL63:1;
    unsigned int reserved_8:24;
} Ifx_CCU6_PSLR_Bits;


typedef struct _Ifx_CCU6_T12_Bits
{
    unsigned int T12CV:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_T12_Bits;


typedef struct _Ifx_CCU6_T12DTC_Bits
{
    unsigned int DTM:8;
    unsigned int DTE0:1;
    unsigned int DTE1:1;
    unsigned int DTE2:1;
    unsigned int reserved_11:1;
    unsigned int DTR0:1;
    unsigned int DTR1:1;
    unsigned int DTR2:1;
    unsigned int reserved_15:17;
} Ifx_CCU6_T12DTC_Bits;


typedef struct _Ifx_CCU6_T12MSEL_Bits
{
    unsigned int MSEL60:4;
    unsigned int MSEL61:4;
    unsigned int MSEL62:4;
    unsigned int HSYNC:3;
    unsigned int DBYP:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_T12MSEL_Bits;


typedef struct _Ifx_CCU6_T12PR_Bits
{
    unsigned int T12PV:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_T12PR_Bits;


typedef struct _Ifx_CCU6_T13_Bits
{
    unsigned int T13CV:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_T13_Bits;


typedef struct _Ifx_CCU6_T13PR_Bits
{
    unsigned int T13PV:16;
    unsigned int reserved_16:16;
} Ifx_CCU6_T13PR_Bits;


typedef struct _Ifx_CCU6_TCTR0_Bits
{
    unsigned int T12CLK:3;
    unsigned int T12PRE:1;
    unsigned int T12R:1;
    unsigned int STE12:1;
    unsigned int CDIR:1;
    unsigned int CTM:1;
    unsigned int T13CLK:3;
    unsigned int T13PRE:1;
    unsigned int T13R:1;
    unsigned int STE13:1;
    unsigned int reserved_14:18;
} Ifx_CCU6_TCTR0_Bits;


typedef struct _Ifx_CCU6_TCTR2_Bits
{
    unsigned int T12SSC:1;
    unsigned int T13SSC:1;
    unsigned int T13TEC:3;
    unsigned int T13TED:2;
    unsigned int reserved_7:1;
    unsigned int T12RSEL:2;
    unsigned int T13RSEL:2;
    unsigned int reserved_12:20;
} Ifx_CCU6_TCTR2_Bits;


typedef struct _Ifx_CCU6_TCTR4_Bits
{
    unsigned int T12RR:1;
    unsigned int T12RS:1;
    unsigned int T12RES:1;
    unsigned int DTRES:1;
    unsigned int reserved_4:1;
    unsigned int T12CNT:1;
    unsigned int T12STR:1;
    unsigned int T12STD:1;
    unsigned int T13RR:1;
    unsigned int T13RS:1;
    unsigned int T13RES:1;
    unsigned int reserved_11:2;
    unsigned int T13CNT:1;
    unsigned int T13STR:1;
    unsigned int T13STD:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_TCTR4_Bits;


typedef struct _Ifx_CCU6_TRPCTR_Bits
{
    unsigned int TRPM0:1;
    unsigned int TRPM1:1;
    unsigned int TRPM2:1;
    unsigned int reserved_3:5;
    unsigned int TRPEN:6;
    unsigned int TRPEN13:1;
    unsigned int TRPPEN:1;
    unsigned int reserved_16:16;
} Ifx_CCU6_TRPCTR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ACCEN0_Bits B;
} Ifx_CCU6_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ACCEN1_Bits B;
} Ifx_CCU6_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC60R_Bits B;
} Ifx_CCU6_CC60R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC60SR_Bits B;
} Ifx_CCU6_CC60SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC61R_Bits B;
} Ifx_CCU6_CC61R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC61SR_Bits B;
} Ifx_CCU6_CC61SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC62R_Bits B;
} Ifx_CCU6_CC62R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC62SR_Bits B;
} Ifx_CCU6_CC62SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC63R_Bits B;
} Ifx_CCU6_CC63R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC63SR_Bits B;
} Ifx_CCU6_CC63SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CLC_Bits B;
} Ifx_CCU6_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CMPMODIF_Bits B;
} Ifx_CCU6_CMPMODIF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CMPSTAT_Bits B;
} Ifx_CCU6_CMPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ID_Bits B;
} Ifx_CCU6_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IEN_Bits B;
} Ifx_CCU6_IEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IMON_Bits B;
} Ifx_CCU6_IMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_INP_Bits B;
} Ifx_CCU6_INP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IS_Bits B;
} Ifx_CCU6_IS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ISR_Bits B;
} Ifx_CCU6_ISR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ISS_Bits B;
} Ifx_CCU6_ISS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRST0_Bits B;
} Ifx_CCU6_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRST1_Bits B;
} Ifx_CCU6_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRSTCLR_Bits B;
} Ifx_CCU6_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KSCSR_Bits B;
} Ifx_CCU6_KSCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_LI_Bits B;
} Ifx_CCU6_LI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCFG_Bits B;
} Ifx_CCU6_MCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMCTR_Bits B;
} Ifx_CCU6_MCMCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMOUT_Bits B;
} Ifx_CCU6_MCMOUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMOUTS_Bits B;
} Ifx_CCU6_MCMOUTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MODCTR_Bits B;
} Ifx_CCU6_MODCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MOSEL_Bits B;
} Ifx_CCU6_MOSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_OCS_Bits B;
} Ifx_CCU6_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PISEL0_Bits B;
} Ifx_CCU6_PISEL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PISEL2_Bits B;
} Ifx_CCU6_PISEL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PSLR_Bits B;
} Ifx_CCU6_PSLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12_Bits B;
} Ifx_CCU6_T12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12DTC_Bits B;
} Ifx_CCU6_T12DTC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12MSEL_Bits B;
} Ifx_CCU6_T12MSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12PR_Bits B;
} Ifx_CCU6_T12PR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T13_Bits B;
} Ifx_CCU6_T13;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T13PR_Bits B;
} Ifx_CCU6_T13PR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR0_Bits B;
} Ifx_CCU6_TCTR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR2_Bits B;
} Ifx_CCU6_TCTR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR4_Bits B;
} Ifx_CCU6_TCTR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TRPCTR_Bits B;
} Ifx_CCU6_TRPCTR;
# 972 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCcu6_regdef.h"
typedef volatile struct _Ifx_CCU6
{
    Ifx_CCU6_CLC CLC;
    Ifx_CCU6_MCFG MCFG;
    Ifx_CCU6_ID ID;
    Ifx_CCU6_MOSEL MOSEL;
    Ifx_CCU6_PISEL0 PISEL0;
    Ifx_CCU6_PISEL2 PISEL2;
    unsigned char reserved_18[4];
    Ifx_CCU6_KSCSR KSCSR;
    Ifx_CCU6_T12 T12;
    Ifx_CCU6_T12PR T12PR;
    Ifx_CCU6_T12DTC T12DTC;
    unsigned char reserved_2C[4];
    Ifx_CCU6_CC60R CC60R;
    Ifx_CCU6_CC61R CC61R;
    Ifx_CCU6_CC62R CC62R;
    unsigned char reserved_3C[4];
    Ifx_CCU6_CC60SR CC60SR;
    Ifx_CCU6_CC61SR CC61SR;
    Ifx_CCU6_CC62SR CC62SR;
    unsigned char reserved_4C[4];
    Ifx_CCU6_T13 T13;
    Ifx_CCU6_T13PR T13PR;
    Ifx_CCU6_CC63R CC63R;
    Ifx_CCU6_CC63SR CC63SR;
    Ifx_CCU6_CMPSTAT CMPSTAT;
    Ifx_CCU6_CMPMODIF CMPMODIF;
    Ifx_CCU6_T12MSEL T12MSEL;
    unsigned char reserved_6C[4];
    Ifx_CCU6_TCTR0 TCTR0;
    Ifx_CCU6_TCTR2 TCTR2;
    Ifx_CCU6_TCTR4 TCTR4;
    unsigned char reserved_7C[4];
    Ifx_CCU6_MODCTR MODCTR;
    Ifx_CCU6_TRPCTR TRPCTR;
    Ifx_CCU6_PSLR PSLR;
    Ifx_CCU6_MCMOUTS MCMOUTS;
    Ifx_CCU6_MCMOUT MCMOUT;
    Ifx_CCU6_MCMCTR MCMCTR;
    Ifx_CCU6_IMON IMON;
    Ifx_CCU6_LI LI;
    Ifx_CCU6_IS IS;
    Ifx_CCU6_ISS ISS;
    Ifx_CCU6_ISR ISR;
    Ifx_CCU6_INP INP;
    Ifx_CCU6_IEN IEN;
    unsigned char reserved_B4[52];
    Ifx_CCU6_OCS OCS;
    Ifx_CCU6_KRSTCLR KRSTCLR;
    Ifx_CCU6_KRST1 KRST1;
    Ifx_CCU6_KRST0 KRST0;
    Ifx_CCU6_ACCEN1 ACCEN1;
    Ifx_CCU6_ACCEN0 ACCEN0;
} Ifx_CCU6;
# 40 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCcu6_reg.h" 2
# 60 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxCcu6_bf.h" 1
# 61 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h" 2
# 70 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
typedef enum
{
    IfxVadc_AnalogConverterMode_off = 0,
    IfxVadc_AnalogConverterMode_slowStandby = 1,
    IfxVadc_AnalogConverterMode_fastStandby = 2,
    IfxVadc_AnalogConverterMode_normalOperation = 3
} IfxVadc_AnalogConverterMode;



typedef enum
{
    IfxVadc_ArbitrationRounds_4_slots = 0,
    IfxVadc_ArbitrationRounds_8_slots = 1,
    IfxVadc_ArbitrationRounds_16_slots = 2,
    IfxVadc_ArbitrationRounds_20_slots = 3
} IfxVadc_ArbitrationRounds;



typedef enum
{
    IfxVadc_BoundaryExtension_standard = 0,
    IfxVadc_BoundaryExtension_fastCompareResult1 = 1,
    IfxVadc_BoundaryExtension_fastCompareResult2 = 2,
    IfxVadc_BoundaryExtension_fastCompareResult3 = 3,
    IfxVadc_BoundaryExtension_fastCompareResult4 = 4,
    IfxVadc_BoundaryExtension_fastCompareResult5 = 5,
    IfxVadc_BoundaryExtension_fastCompareResult6 = 6,
    IfxVadc_BoundaryExtension_fastCompareResult7 = 7,
    IfxVadc_BoundaryExtension_fastCompareResult8 = 8,
    IfxVadc_BoundaryExtension_fastCompareResult9 = 9,
    IfxVadc_BoundaryExtension_fastCompareResult10 = 10,
    IfxVadc_BoundaryExtension_fastCompareResult11 = 11,
    IfxVadc_BoundaryExtension_fastCompareResult12 = 12,
    IfxVadc_BoundaryExtension_fastCompareResult13 = 13,
    IfxVadc_BoundaryExtension_fastCompareResult14 = 14,
    IfxVadc_BoundaryExtension_fastCompareResult15 = 15
} IfxVadc_BoundaryExtension;



typedef enum
{
    IfxVadc_BoundarySelection_group0 = 0,
    IfxVadc_BoundarySelection_group1 = 1,
    IfxVadc_BoundarySelection_global0 = 2,
    IfxVadc_BoundarySelection_global1 = 3
} IfxVadc_BoundarySelection;



typedef enum
{
    IfxVadc_ChannelId_none = -1,
    IfxVadc_ChannelId_0 = 0,
    IfxVadc_ChannelId_1 = 1,
    IfxVadc_ChannelId_2 = 2,
    IfxVadc_ChannelId_3 = 3,
    IfxVadc_ChannelId_4 = 4,
    IfxVadc_ChannelId_5 = 5,
    IfxVadc_ChannelId_6 = 6,
    IfxVadc_ChannelId_7 = 7
} IfxVadc_ChannelId;



typedef enum
{
    IfxVadc_ChannelReference_standard = 0,
    IfxVadc_ChannelReference_channel0 = 1
} IfxVadc_ChannelReference;



typedef enum
{
    IfxVadc_ChannelResolution_12bit = 0,
    IfxVadc_ChannelResolution_10bit = 1,
    IfxVadc_ChannelResolution_8bit = 2,
    IfxVadc_ChannelResolution_10bitFast = 5
} IfxVadc_ChannelResolution;



typedef enum
{
    IfxVadc_ChannelResult_0 = 0,
    IfxVadc_ChannelResult_1,
    IfxVadc_ChannelResult_2,
    IfxVadc_ChannelResult_3,
    IfxVadc_ChannelResult_4,
    IfxVadc_ChannelResult_5,
    IfxVadc_ChannelResult_6,
    IfxVadc_ChannelResult_7,
    IfxVadc_ChannelResult_8,
    IfxVadc_ChannelResult_9,
    IfxVadc_ChannelResult_10,
    IfxVadc_ChannelResult_11,
    IfxVadc_ChannelResult_12,
    IfxVadc_ChannelResult_13,
    IfxVadc_ChannelResult_14,
    IfxVadc_ChannelResult_15
} IfxVadc_ChannelResult;




typedef enum
{
    IfxVadc_ChannelSelectionStyle_channelNumber = 0,
    IfxVadc_ChannelSelectionStyle_binary = 1

} IfxVadc_ChannelSelectionStyle;



typedef enum
{
    IfxVadc_ConversionType_Compatible = 0
} IfxVadc_ConversionType;




typedef enum
{
    IfxVadc_EmuxCodingScheme_binary = 0,
    IfxVadc_EmuxCodingScheme_gray = 1
} IfxVadc_EmuxCodingScheme;



typedef enum
{
    IfxVadc_EmuxInterface_0 = 0,
    IfxVadc_EmuxInterface_1 = 1
} IfxVadc_EmuxInterface;




typedef enum
{
    IfxVadc_EmuxSampleTimeControl_settingChanges = 0,
    IfxVadc_EmuxSampleTimeControl_always = 1
} IfxVadc_EmuxSampleTimeControl;




typedef enum
{
    IfxVadc_EmuxSelectValue_0 = 0,
    IfxVadc_EmuxSelectValue_1,
    IfxVadc_EmuxSelectValue_2,
    IfxVadc_EmuxSelectValue_3,
    IfxVadc_EmuxSelectValue_4,
    IfxVadc_EmuxSelectValue_5,
    IfxVadc_EmuxSelectValue_6,
    IfxVadc_EmuxSelectValue_7
} IfxVadc_EmuxSelectValue;




typedef enum
{
    IfxVadc_ExternalMultiplexerMode_softwareControl = 0,
    IfxVadc_ExternalMultiplexerMode_steady = 1,
    IfxVadc_ExternalMultiplexerMode_singleStep = 2,
    IfxVadc_ExternalMultiplexerMode_sequence = 3
} IfxVadc_ExternalMultiplexerMode;



typedef enum
{
    IfxVadc_FifoMode_seperateResultRegister = 0,
    IfxVadc_FifoMode_fifoStructure = 1,
    IfxVadc_FifoMode_maximumMode = 2,
    IfxVadc_FifoMode_minimumMode = 3
} IfxVadc_FifoMode;



typedef enum
{
    IfxVadc_GatingMode_disabled = 0,
    IfxVadc_GatingMode_always = 1,
    IfxVadc_GatingMode_gatingHigh = 2,
    IfxVadc_GatingMode_gatingLow = 3
} IfxVadc_GatingMode;



typedef enum
{
    IfxVadc_GatingSource_0 = 0,
    IfxVadc_GatingSource_1,
    IfxVadc_GatingSource_2,
    IfxVadc_GatingSource_3,
    IfxVadc_GatingSource_4,
    IfxVadc_GatingSource_5,
    IfxVadc_GatingSource_6,
    IfxVadc_GatingSource_7,
    IfxVadc_GatingSource_8,
    IfxVadc_GatingSource_9,
    IfxVadc_GatingSource_10,
    IfxVadc_GatingSource_11,
    IfxVadc_GatingSource_12,
    IfxVadc_GatingSource_13,
    IfxVadc_GatingSource_14,
    IfxVadc_GatingSource_15
} IfxVadc_GatingSource;



typedef enum
{
    IfxVadc_InputClasses_group0 = 0,
    IfxVadc_InputClasses_group1 = 1,
    IfxVadc_InputClasses_global0 = 2,
    IfxVadc_InputClasses_global1 = 3
} IfxVadc_InputClasses;



typedef enum
{
    IfxVadc_LimitCheck_noCheck = 0,
    IfxVadc_LimitCheck_eventIfInArea = 1,
    IfxVadc_LimitCheck_eventIfOutsideArea = 2,
    IfxVadc_LimitCheck_always = 3
} IfxVadc_LimitCheck;



typedef enum
{
    IfxVadc_LowSupplyVoltageSelect_5V = 0,
    IfxVadc_LowSupplyVoltageSelect_3V = 1
} IfxVadc_LowSupplyVoltageSelect;



typedef enum
{
    IfxVadc_Protection_channelControl0 = 0,
    IfxVadc_Protection_channelControl1 = 1,
    IfxVadc_Protection_channelControl2 = 2,
    IfxVadc_Protection_channelControl3 = 3,
    IfxVadc_Protection_channelControl4 = 4,
    IfxVadc_Protection_channelControl5 = 5,
    IfxVadc_Protection_channelControl6 = 6,
    IfxVadc_Protection_channelControl7 = 7,
    IfxVadc_Protection_channelControl8 = 8,
    IfxVadc_Protection_channelControl9 = 9,
    IfxVadc_Protection_channelControl10 = 10,
    IfxVadc_Protection_channelControl11 = 11,
    IfxVadc_Protection_channelControl12 = 12,
    IfxVadc_Protection_channelControl13 = 13,
    IfxVadc_Protection_channelControl14 = 14,
    IfxVadc_Protection_externalMultiplexer = 15,
    IfxVadc_Protection_initGroup0 = 16,
    IfxVadc_Protection_initGroup1 = 17,
    IfxVadc_Protection_initGroup2 = 18,
    IfxVadc_Protection_initGroup3 = 19,
    IfxVadc_Protection_initGroup4 = 20,
    IfxVadc_Protection_initGroup5 = 21,
    IfxVadc_Protection_initGroup6 = 22,
    IfxVadc_Protection_initGroup7 = 23,
    IfxVadc_Protection_initGroup8 = 24,
    IfxVadc_Protection_initGroup9 = 25,
    IfxVadc_Protection_initGroup10 = 26,
    IfxVadc_Protection_initGroup11 = 27,
    IfxVadc_Protection_initGroup12 = 28,
    IfxVadc_Protection_initGroup13 = 29,
    IfxVadc_Protection_initGroup14 = 30,
    IfxVadc_Protection_globalConfig = 31,
    IfxVadc_Protection_serviceGroup0 = 32,
    IfxVadc_Protection_serviceGroup1 = 33,
    IfxVadc_Protection_serviceGroup2 = 34,
    IfxVadc_Protection_serviceGroup3 = 35,
    IfxVadc_Protection_serviceGroup4 = 36,
    IfxVadc_Protection_serviceGroup5 = 37,
    IfxVadc_Protection_serviceGroup6 = 38,
    IfxVadc_Protection_serviceGroup7 = 39,
    IfxVadc_Protection_serviceGroup8 = 40,
    IfxVadc_Protection_serviceGroup9 = 41,
    IfxVadc_Protection_serviceGroup10 = 42,
    IfxVadc_Protection_serviceGroup11 = 43,
    IfxVadc_Protection_serviceGroup12 = 44,
    IfxVadc_Protection_serviceGroup13 = 45,
    IfxVadc_Protection_serviceGroup14 = 46,
    IfxVadc_Protection_testFunction = 47,
    IfxVadc_Protection_resultRegisterGroup0 = 48,
    IfxVadc_Protection_resultRegisterGroup1 = 49,
    IfxVadc_Protection_resultRegisterGroup2 = 50,
    IfxVadc_Protection_resultRegisterGroup3 = 51,
    IfxVadc_Protection_resultRegisterGroup4 = 52,
    IfxVadc_Protection_resultRegisterGroup5 = 53,
    IfxVadc_Protection_resultRegisterGroup6 = 54,
    IfxVadc_Protection_resultRegisterGroup7 = 55,
    IfxVadc_Protection_resultRegisterGroup8 = 56,
    IfxVadc_Protection_resultRegisterGroup9 = 57,
    IfxVadc_Protection_resultRegisterGroup10 = 58,
    IfxVadc_Protection_resultRegisterGroup11 = 59,
    IfxVadc_Protection_resultRegisterGroup12 = 60,
    IfxVadc_Protection_resultRegisterGroup13 = 61,
    IfxVadc_Protection_resultRegisterGroup14 = 62
} IfxVadc_Protection;



typedef enum
{
    IfxVadc_RequestSlotPriority_lowest = 0,
    IfxVadc_RequestSlotPriority_low = 1,
    IfxVadc_RequestSlotPriority_high = 2,
    IfxVadc_RequestSlotPriority_highest = 3
} IfxVadc_RequestSlotPriority;



typedef enum
{
    IfxVadc_RequestSlotStartMode_waitForStart = 0,
    IfxVadc_RequestSlotStartMode_cancelInjectRepeat = 1
} IfxVadc_RequestSlotStartMode;



typedef enum
{
    IfxVadc_RequestSource_queue = 0,
    IfxVadc_RequestSource_scan = 1,
    IfxVadc_RequestSource_background = 2
} IfxVadc_RequestSource;




typedef enum
{
    IfxVadc_SleepMode_enable = 0,
    IfxVadc_SleepMode_disable = 1
} IfxVadc_SleepMode;



typedef enum
{
    IfxVadc_SrcNr_group0 = 0,
    IfxVadc_SrcNr_group1 = 1,
    IfxVadc_SrcNr_group2 = 2,
    IfxVadc_SrcNr_group3 = 3,
    IfxVadc_SrcNr_shared0 = 4,
    IfxVadc_SrcNr_shared1 = 5,
    IfxVadc_SrcNr_shared2 = 6,
    IfxVadc_SrcNr_shared3 = 7
} IfxVadc_SrcNr;





typedef enum
{
    IfxVadc_Status_noError = 0,
    IfxVadc_Status_notInitialised = 1,
    IfxVadc_Status_invalidGroup = 2,
    IfxVadc_Status_invalidChannel = 3,
    IfxVadc_Status_queueFull = 4,
    IfxVadc_Status_noAccess = 5,
    IfxVadc_Status_channelsStillPending = 6
} IfxVadc_Status;



typedef enum
{
    IfxVadc_TriggerMode_noExternalTrigger = 0,
    IfxVadc_TriggerMode_uponFallingEdge = 1,
    IfxVadc_TriggerMode_uponRisingEdge = 2,
    IfxVadc_TriggerMode_uponAnyEdge = 3
} IfxVadc_TriggerMode;



typedef enum
{
    IfxVadc_TriggerSource_0 = 0,
    IfxVadc_TriggerSource_1,
    IfxVadc_TriggerSource_2,
    IfxVadc_TriggerSource_3,
    IfxVadc_TriggerSource_4,
    IfxVadc_TriggerSource_5,
    IfxVadc_TriggerSource_6,
    IfxVadc_TriggerSource_7,
    IfxVadc_TriggerSource_8,
    IfxVadc_TriggerSource_9,
    IfxVadc_TriggerSource_10,
    IfxVadc_TriggerSource_11,
    IfxVadc_TriggerSource_12,
    IfxVadc_TriggerSource_13,
    IfxVadc_TriggerSource_14,
    IfxVadc_TriggerSource_15
} IfxVadc_TriggerSource;
# 495 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadMode(Ifx_VADC_G *group, uint32 resultIdx, boolean waitForRead);






static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadModeForGlobalResultRegister(Ifx_VADC *vadc, boolean waitForRead);





static inline __attribute__ ((always_inline)) void IfxVadc_enableBackgroundScanSlotExternalTrigger(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getBackgroundScanGatingMode(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getBackgroundScanGatingSource(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getBackgroundScanSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getBackgroundScanSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getBackgroundScanTriggerInput(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getBackgroundScanTriggerMode(Ifx_VADC *vadc);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum);
# 581 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_getGlobalResult(Ifx_VADC *vadc);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency);
# 625 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_getGroupResult(Ifx_VADC_G *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults);
# 659 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_getResult(Ifx_VADC_G *group, uint32 resultIdx);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoBackgroundScanEnabled(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestBackgroundScanSlotEnabled(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAutoBackgroundScan(Ifx_VADC *vadc, boolean autoBackgroundScanEnable);
# 709 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScan(Ifx_VADC *vadc, IfxVadc_GroupId groupId, uint32 channels, uint32 mask);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotGatingConfig(Ifx_VADC *vadc, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotTriggerConfig(Ifx_VADC *vadc, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);
# 734 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_startBackgroundScan(Ifx_VADC *vadc);






static inline __attribute__ ((always_inline)) Ifx_VADC_G_RESD IfxVadc_getDebugResult(Ifx_VADC_G *group, uint32 resultIdx);
# 751 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getBackgroundScanStatus(Ifx_VADC *vadc);
# 788 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern Ifx_VADC_G_RES IfxVadc_getResultBasedOnRequestSource(Ifx_VADC *vadc, Ifx_VADC_G *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType);
# 803 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_disableScanSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_enableScanSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getScanSlotGatingMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getScanSlotGatingSource(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getScanSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getScanSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getScanSlotTriggerInput(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getScanSlotTriggerMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoScanEnabled(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestScanSlotEnabled(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAutoScan(Ifx_VADC_G *vadcG, boolean autoscanEnable);







static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotTriggerConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);
# 889 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_startScan(Ifx_VADC_G *group);
# 899 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getScanStatus(Ifx_VADC_G *group);
# 925 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_setScan(Ifx_VADC_G *group, uint32 channels, uint32 mask);
# 954 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_addToQueue(Ifx_VADC_G *group, IfxVadc_ChannelId channel, uint32 options);






static inline __attribute__ ((always_inline)) void IfxVadc_clearQueue(Ifx_VADC_G *vadcG, boolean flushQueue);





static inline __attribute__ ((always_inline)) void IfxVadc_disableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_enableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getQueueSlotGatingMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getQueueSlotGatingSource(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getQueueSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getQueueSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getQueueSlotTriggerInput(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getQueueSlotTriggerMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestQueueSlotEnabled(Ifx_VADC_G *vadcG);







static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotTriggerOperatingConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);





static inline __attribute__ ((always_inline)) void IfxVadc_startQueue(Ifx_VADC_G *group);
# 1053 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getQueueStatus(Ifx_VADC_G *group);
# 1070 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_initEmuxPin(const IfxVadc_Emux_Out *emux, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxVadc_initGxBflPin(const IfxVadc_GxBfl_Out *gxBfl, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
# 1094 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) uint32 IfxVadc_calculateSampleTime(float32 analogFrequency, float32 sampleTime);
# 1104 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern float32 IfxVadc_getAdcAnalogFrequency(Ifx_VADC *vadc);





extern float32 IfxVadc_getAdcDigitalFrequency(Ifx_VADC *vadc);
# 1125 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_clearAllResultRequests(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_ArbitrationRounds IfxVadc_getArbiterRoundLength(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP0 IfxVadc_getChannelResultServiceRequestNodePointer0(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP1 IfxVadc_getChannelResultServiceRequestNodePointer1(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP0 IfxVadc_getChannelServiceRequestNodePointer0(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) uint8 IfxVadc_getMasterIndex(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_resetGroup(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAnalogConvertControl(Ifx_VADC_G *vadcG, IfxVadc_AnalogConverterMode analogConverterMode);






static inline __attribute__ ((always_inline)) void IfxVadc_setArbitrationRoundLength(Ifx_VADC_G *vadcG, IfxVadc_ArbitrationRounds arbiterRoundLength);







static inline __attribute__ ((always_inline)) void IfxVadc_setGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1192 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);






static inline __attribute__ ((always_inline)) void IfxVadc_setMasterIndex(Ifx_VADC_G *vadcG, uint8 masterIndex);
# 1213 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_setArbiterPriority(Ifx_VADC_G *vadcG, boolean slotEnable, IfxVadc_RequestSlotPriority prio, IfxVadc_RequestSlotStartMode mode, IfxVadc_RequestSource slot);
# 1228 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_disableModule(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) void IfxVadc_enableModule(Ifx_VADC *vadc);






static inline __attribute__ ((always_inline)) uint8 IfxVadc_getAdcCalibrationActiveState(Ifx_VADC *vadc, uint8 adcCalGroupNum);





static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBCFG IfxVadc_getGlobalConfigValue(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) boolean IfxVadc_getStartupCalibration(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) void IfxVadc_initiateStartupCalibration(Ifx_VADC *vadc);







static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1276 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);






static inline __attribute__ ((always_inline)) void IfxVadc_setSleepMode(Ifx_VADC *vadc, IfxVadc_SleepMode mode);
# 1294 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_disableAccess(Ifx_VADC *vadc, IfxVadc_Protection protectionSet);







extern void IfxVadc_disablePostCalibration(Ifx_VADC *vadc, IfxVadc_GroupId group, boolean disable);






extern void IfxVadc_enableAccess(Ifx_VADC *vadc, IfxVadc_Protection protectionSet);






extern void IfxVadc_enableGroupSync(Ifx_VADC *vadc, uint32 ccu6Num);




extern float32 IfxVadc_getAdcModuleFrequency(void);






extern volatile Ifx_SRC_SRCR *IfxVadc_getSrcAddress(IfxVadc_GroupId group, IfxVadc_SrcNr index);






extern void IfxVadc_initialiseAdcArbiterClock(Ifx_VADC *vadc, uint32 arbiterClockDivider);






extern void IfxVadc_initialiseAdcConverterClock(Ifx_VADC *vadc, uint32 converterClockDivider);






extern uint32 IfxVadc_initializeFAdcD(Ifx_VADC *vadc, uint32 fAdcD);






extern uint32 IfxVadc_initializeFAdcI(Ifx_VADC *vadc, uint32 fAdcI);






extern boolean IfxVadc_isPostCalibration(Ifx_VADC *vadc, IfxVadc_GroupId group);





extern void IfxVadc_resetKernel(Ifx_VADC *vadc);






extern void IfxVadc_selectPowerSupplyVoltage(Ifx_VADC *vadc, IfxVadc_LowSupplyVoltageSelect supplyVoltage);





extern void IfxVadc_startupCalibration(Ifx_VADC *vadc);
# 1398 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_clearChannelRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelId);







static inline __attribute__ ((always_inline)) void IfxVadc_enableFifoMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister, IfxVadc_FifoMode fifoMode);






static inline __attribute__ ((always_inline)) void IfxVadc_enableServiceRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHASS IfxVadc_getAssignedChannels(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHCTR IfxVadc_getChannelControlConfig(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);






static inline __attribute__ ((always_inline)) IfxVadc_InputClasses IfxVadc_getChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency);






static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundResultTarget(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean globalResultUsage);







static inline __attribute__ ((always_inline)) void IfxVadc_setBoundaryMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundaryExtension boundaryMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_InputClasses inputClass);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelLimitCheckMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_LimitCheck limitCheck);






static inline __attribute__ ((always_inline)) void IfxVadc_setGroupPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);







static inline __attribute__ ((always_inline)) void IfxVadc_setLowerBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection lowerBoundary);







static inline __attribute__ ((always_inline)) void IfxVadc_setReferenceInput(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelReference reference);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultPosition(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean rightAlignedStorage);







static inline __attribute__ ((always_inline)) void IfxVadc_setSyncRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean synchonize);







static inline __attribute__ ((always_inline)) void IfxVadc_setUpperBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection upperBoundary);







static inline __attribute__ ((always_inline)) void IfxVadc_storeGroupResult(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelResult resultRegister);
# 1581 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern float32 IfxVadc_getChannelConversionTime(Ifx_VADC *vadc, IfxVadc_GroupId group, IfxVadc_InputClasses inputClass, float32 analogFrequency, float32 moduleFrequency, IfxVadc_ConversionType conversionMode);
# 1597 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1637 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1654 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupSampletime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxInterfaceForGroup(Ifx_VADC *vadc, IfxVadc_EmuxInterface emuxInterface, IfxVadc_GroupId group);
# 1679 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_configExternalMultiplexerMode(Ifx_VADC *vadc, Ifx_VADC_G *vadcG, IfxVadc_ExternalMultiplexerMode mode, uint8 channels, IfxVadc_EmuxSelectValue startChannel, IfxVadc_EmuxCodingScheme code, IfxVadc_EmuxSampleTimeControl sampleTimeControl, IfxVadc_ChannelSelectionStyle channelSelectionStyle);







static inline __attribute__ ((always_inline)) void IfxVadc_addToQueue(Ifx_VADC_G *group, IfxVadc_ChannelId channel, uint32 options)
{
    group->QINR0.U = channel | options;
}


static inline __attribute__ ((always_inline)) uint32 IfxVadc_calculateSampleTime(float32 analogFrequency, float32 sampleTime)
{
    uint32 ticks;

    ticks = (uint32)(sampleTime * analogFrequency) - 2;

    if (ticks > 31)
    {
        ticks = (ticks / 16) + 15;
    }

    ticks = __minu(ticks, 0xFFu);

    return ticks;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearAllResultRequests(Ifx_VADC_G *vadcG)
{
    vadcG->REFCLR.U = 0x0000FFFFu;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearChannelRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelId)
{
    vadcG->CEFCLR.U = 1 << channelId;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearQueue(Ifx_VADC_G *vadcG, boolean flushQueue)
{
    vadcG->QMR0.B.FLUSH = flushQueue;
}


static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadMode(Ifx_VADC_G *group, uint32 resultIdx, boolean waitForRead)
{
    group->RCR[resultIdx].B.WFR = waitForRead;
}


static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadModeForGlobalResultRegister(Ifx_VADC *vadc, boolean waitForRead)
{
    vadc->GLOBRCR.B.WFR = waitForRead;
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableModule(Ifx_VADC *vadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.B.DISR = 1;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->QMR0.B.ENTR = 0;
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableScanSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->ASMR.B.ENTR = 0;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableBackgroundScanSlotExternalTrigger(Ifx_VADC *vadc)
{
    vadc->BRSMR.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableFifoMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister, IfxVadc_FifoMode fifoMode)
{
    vadcG->RCR[resultRegister].B.FEN = fifoMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableModule(Ifx_VADC *vadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.U = 0x00000000;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->QMR0.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableScanSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->ASMR.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableServiceRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister)
{
    vadcG->RCR[resultRegister].B.SRGEN = 1;
}


static inline __attribute__ ((always_inline)) uint8 IfxVadc_getAdcCalibrationActiveState(Ifx_VADC *vadc, uint8 adcCalGroupNum)
{
    uint8 status;
    status = vadc->G[adcCalGroupNum].ARBCFG.B.CAL;
    return status;
}


static inline __attribute__ ((always_inline)) IfxVadc_ArbitrationRounds IfxVadc_getArbiterRoundLength(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_ArbitrationRounds)vadcG->ARBCFG.B.ARBRND;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHASS IfxVadc_getAssignedChannels(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_CHASS assignChannels;
    assignChannels.U = vadcG->CHASS.U;
    return assignChannels;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getBackgroundScanGatingMode(Ifx_VADC *vadc)
{
    return (IfxVadc_GatingMode)vadc->BRSMR.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getBackgroundScanGatingSource(Ifx_VADC *vadc)
{
    return (IfxVadc_GatingSource)vadc->BRSCTRL.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getBackgroundScanSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO2;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getBackgroundScanSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM2;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getBackgroundScanTriggerInput(Ifx_VADC *vadc)
{
    return (IfxVadc_TriggerSource)vadc->BRSCTRL.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getBackgroundScanTriggerMode(Ifx_VADC *vadc)
{
    return (IfxVadc_TriggerMode)vadc->BRSCTRL.B.XTMODE;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHCTR IfxVadc_getChannelControlConfig(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    Ifx_VADC_G_CHCTR tempChctr;
    tempChctr.U = vadcG->CHCTR[channelIndex].U;
    return tempChctr;
}


static inline __attribute__ ((always_inline)) IfxVadc_InputClasses IfxVadc_getChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    return (IfxVadc_InputClasses)vadcG->CHCTR[channelIndex].B.ICLSEL;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP0 IfxVadc_getChannelResultServiceRequestNodePointer0(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_REVNP0 resultServiceRequestNodePtr0;
    resultServiceRequestNodePtr0.U = vadcG->REVNP0.U;
    return resultServiceRequestNodePtr0;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP1 IfxVadc_getChannelResultServiceRequestNodePointer1(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_REVNP1 resultServiceRequestNodePtr1;
    resultServiceRequestNodePtr1.U = vadcG->REVNP1.U;
    return resultServiceRequestNodePtr1;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP0 IfxVadc_getChannelServiceRequestNodePointer0(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_CEVNP0 serviceRequestNodePtr;
    serviceRequestNodePtr.U = vadcG->CEVNP0.U;
    return serviceRequestNodePtr;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadc->GLOBICLASS[inputClassNum].B.CME;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency)
{
    return (float32)((2) + vadc->GLOBICLASS[inputClassNum].B.STCE) / analogFrequency;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadcG->ICLASS[inputClassNum].B.CME;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency)
{
    return (float32)((2) + vadcG->ICLASS[inputClassNum].B.STCE) / analogFrequency;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBCFG IfxVadc_getGlobalConfigValue(Ifx_VADC *vadc)
{
    Ifx_VADC_GLOBCFG globCfg;
    globCfg.U = vadc->GLOBCFG.U;
    return globCfg;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadc->GLOBICLASS[inputClassNum].B.CMS;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_getGlobalResult(Ifx_VADC *vadc)
{
    Ifx_VADC_GLOBRES tmpGlobalResult;

    tmpGlobalResult.U = vadc->GLOBRES.U;

    return tmpGlobalResult;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency)
{
    uint32 sampleTime = vadc->GLOBICLASS[inputClassNum].B.STCS;

    if (sampleTime > 16)
    {
        sampleTime = (sampleTime - 15) * 16;
    }

    return (float32)((2) + sampleTime) / analogFrequency;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadcG->ICLASS[inputClassNum].B.CMS;
}


static inline __attribute__ ((always_inline)) void IfxVadc_getGroupResult(Ifx_VADC_G *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults)
{
    uint32 idx;

    for (idx = 0; idx < numResults; idx++)
    {
        results[idx].U = group->RES[resultOffset + idx].U;
    }
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency)
{
    uint32 sampleTime = vadcG->ICLASS[inputClassNum].B.STCS;

    if (sampleTime > 16)
    {
        sampleTime = (sampleTime - 15) * 16;
    }

    return (float32)((2) + sampleTime) / analogFrequency;
}


static inline __attribute__ ((always_inline)) uint8 IfxVadc_getMasterIndex(Ifx_VADC_G *vadcG)
{
    uint8 masterIndex = 0;
    masterIndex = vadcG->SYNCTR.B.STSEL;
    return masterIndex;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getQueueSlotGatingMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingMode)vadcG->QMR0.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getQueueSlotGatingSource(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingSource)vadcG->QCTRL0.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getQueueSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO0;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getQueueSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM0;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getQueueSlotTriggerInput(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerSource)vadcG->QCTRL0.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getQueueSlotTriggerMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerMode)vadcG->QCTRL0.B.XTMODE;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_getResult(Ifx_VADC_G *group, uint32 resultIdx)
{
    Ifx_VADC_G_RES tmpResult;

    tmpResult.U = group->RES[resultIdx].U;

    return tmpResult;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getScanSlotGatingMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingMode)vadcG->ASMR.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getScanSlotGatingSource(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingSource)vadcG->ASCTRL.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getScanSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO1;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getScanSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM1;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getScanSlotTriggerInput(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerSource)vadcG->ASCTRL.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getScanSlotTriggerMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerMode)vadcG->ASCTRL.B.XTMODE;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_getStartupCalibration(Ifx_VADC *vadc)
{
    return (boolean)vadc->GLOBCFG.B.SUCAL;
}


static inline __attribute__ ((always_inline)) void IfxVadc_initEmuxPin(const IfxVadc_Emux_Out *emux, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(emux->pin.port, emux->pin.pinIndex, outputMode, emux->select);
    IfxPort_setPinPadDriver(emux->pin.port, emux->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxVadc_initGxBflPin(const IfxVadc_GxBfl_Out *gxBfl, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(gxBfl->pin.port, gxBfl->pin.pinIndex, outputMode, gxBfl->select);
    IfxPort_setPinPadDriver(gxBfl->pin.port, gxBfl->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxVadc_initiateStartupCalibration(Ifx_VADC *vadc)
{
    vadc->GLOBCFG.B.SUCAL = 1;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoBackgroundScanEnabled(Ifx_VADC *vadc)
{
    return (boolean)vadc->BRSMR.B.SCAN;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoScanEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ASMR.B.SCAN;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestBackgroundScanSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN2;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestQueueSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN0;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestScanSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_resetGroup(Ifx_VADC_G *vadcG)
{
    vadcG->ARBCFG.B.ANONC = IfxVadc_AnalogConverterMode_off;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAnalogConvertControl(Ifx_VADC_G *vadcG, IfxVadc_AnalogConverterMode analogConverterMode)
{
    vadcG->ARBCFG.B.ANONC = analogConverterMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setArbitrationRoundLength(Ifx_VADC_G *vadcG, IfxVadc_ArbitrationRounds arbiterRoundLength)
{
    vadcG->ARBCFG.B.ARBRND = arbiterRoundLength;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAutoBackgroundScan(Ifx_VADC *vadc, boolean autoBackgroundScanEnable)
{
    vadc->BRSMR.B.SCAN = autoBackgroundScanEnable;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAutoScan(Ifx_VADC_G *vadcG, boolean autoscanEnable)
{
    vadcG->ASMR.B.SCAN = autoscanEnable;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    vadcG->CHASS.U &= ~(1 << channelIndex);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundResultTarget(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean globalResultUsage)
{
    vadcG->CHCTR[channelIndex].B.RESTBS = globalResultUsage;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScan(Ifx_VADC *vadc, IfxVadc_GroupId groupId, uint32 channels, uint32 mask)
{
    channels = (vadc->BRSSEL[groupId].U & ~mask) | channels;
    vadc->BRSSEL[groupId].U = channels;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotGatingConfig(Ifx_VADC *vadc, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_BRSCTRL brsctrl;
    brsctrl.U = vadc->BRSCTRL.U;
    brsctrl.B.GTWC = 1;
    brsctrl.B.GTSEL = gatingSource;
    vadc->BRSCTRL.U = brsctrl.U;
    vadc->BRSMR.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotTriggerConfig(Ifx_VADC *vadc, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_BRSCTRL brsctrl;
    brsctrl.U = vadc->BRSCTRL.U;
    brsctrl.B.XTWC = 1;
    brsctrl.B.XTMODE = triggerMode;
    brsctrl.B.XTSEL = triggerSource;
    vadc->BRSCTRL.U = brsctrl.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBoundaryMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundaryExtension boundaryMode)
{
    vadcG->CHCTR[channelIndex].B.BNDSELX = boundaryMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel)
{
    vadcG->CEVNP0.U &= ~((0xfu) << (channel * 4));
    vadcG->CEVNP0.U |= (channelSrcNr << (channel * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_InputClasses inputClass)
{
    vadcG->CHCTR[channelIndex].B.ICLSEL = inputClass;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelLimitCheckMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_LimitCheck limitCheck)
{
    vadcG->CHCTR[channelIndex].B.CHEVMODE = limitCheck;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadc->GLOBICLASS[inputClassNum].B.CME = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadc->GLOBICLASS[inputClassNum].B.STCE = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadcG->ICLASS[inputClassNum].B.CME = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupSampletime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadcG->ICLASS[inputClassNum].B.STCE = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxInterfaceForGroup(Ifx_VADC *vadc, IfxVadc_EmuxInterface emuxInterface, IfxVadc_GroupId group)
{
    if (emuxInterface == IfxVadc_EmuxInterface_0)
    {
        vadc->EMUXSEL.B.EMUXGRP0 = group;
    }
    else
    {
        vadc->EMUXSEL.B.EMUXGRP1 = group;
    }
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadc->GLOBICLASS[inputClassNum].B.CMS = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadc->GLOBICLASS[inputClassNum].B.STCS = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    vadcG->CHASS.U |= (1 << channelIndex);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadcG->ICLASS[inputClassNum].B.CMS = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadcG->ICLASS[inputClassNum].B.STCS = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setLowerBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection lowerBoundary)
{
    vadcG->CHCTR[channelIndex].B.BNDSELL = lowerBoundary;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setMasterIndex(Ifx_VADC_G *vadcG, uint8 masterIndex)
{
    vadcG->SYNCTR.B.STSEL = (masterIndex % 4);
    vadcG->SYNCTR.U |= (0x00000008U << (masterIndex % 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_G_QCTRL0 qctrl0;
    qctrl0.U = vadcG->QCTRL0.U;
    qctrl0.B.GTWC = 1;
    qctrl0.B.GTSEL = gatingSource;
    vadcG->QCTRL0.U = qctrl0.U;
    vadcG->QMR0.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotTriggerOperatingConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_G_QCTRL0 qctrl0;
    qctrl0.U = vadcG->QCTRL0.U;
    qctrl0.B.XTWC = 1;
    qctrl0.B.XTMODE = triggerMode;
    qctrl0.B.XTSEL = triggerSource;
    vadcG->QCTRL0.U = qctrl0.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setReferenceInput(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelReference reference)
{
    vadcG->CHCTR[channelIndex].B.REFSEL = reference;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister)
{
    vadcG->REVNP0.U &= ~((0xfu) << (resultRegister * 4));
    vadcG->REVNP0.U |= (resultSrcNr << (resultRegister * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister)
{
    vadcG->REVNP1.U &= ~((0xfu) << ((resultRegister - IfxVadc_ChannelResult_8) * 4));
    vadcG->REVNP1.U |= (resultSrcNr << ((resultRegister - IfxVadc_ChannelResult_8) * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultPosition(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean rightAlignedStorage)
{
    vadcG->CHCTR[channelIndex].B.RESPOS = rightAlignedStorage;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_G_ASCTRL asctrl;
    asctrl.U = vadcG->ASCTRL.U;
    asctrl.B.GTWC = 1;
    asctrl.B.GTSEL = gatingSource;
    vadcG->ASCTRL.U = asctrl.U;
    vadcG->ASMR.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotTriggerConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_G_ASCTRL asctrl;
    asctrl.U = vadcG->ASCTRL.U;
    asctrl.B.XTWC = 1;
    asctrl.B.XTMODE = triggerMode;
    asctrl.B.XTSEL = triggerSource;
    vadcG->ASCTRL.U = asctrl.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setSleepMode(Ifx_VADC *vadc, IfxVadc_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setSyncRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean synchonize)
{
    vadcG->CHCTR[channelIndex].B.SYNC = synchonize;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setUpperBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection upperBoundary)
{
    vadcG->CHCTR[channelIndex].B.BNDSELU = upperBoundary;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startBackgroundScan(Ifx_VADC *vadc)
{
    vadc->BRSMR.B.LDEV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startQueue(Ifx_VADC_G *group)
{
    group->QMR0.B.TREV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startScan(Ifx_VADC_G *group)
{
    group->ASMR.B.LDEV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_storeGroupResult(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelResult resultRegister)
{
    vadcG->CHCTR[channelIndex].B.RESREG = resultRegister;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RESD IfxVadc_getDebugResult(Ifx_VADC_G *group, uint32 resultIdx)
{
    Ifx_VADC_G_RESD tmpResult;

    tmpResult.U = group->RESD[resultIdx].U;

    return tmpResult;
}
# 13 "0_Src/AppSw/Tricore/VADC/VADC.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h" 1
# 343 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Std/IfxVadc.h" 1
# 344 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h" 2






typedef uint8 IfxVadc_Adc_SYNCTR_STSEL;
# 360 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
typedef struct
{
    Ifx_VADC *vadc;
} IfxVadc_Adc;



typedef struct
{
    IfxVadc_GatingSource gatingSource;
    IfxVadc_TriggerSource triggerSource;
    IfxVadc_GatingMode gatingMode;
    IfxVadc_TriggerMode triggerMode;
} IfxVadc_Adc_GatingTriggerConfig;







typedef struct
{
    IfxVadc_ArbitrationRounds arbiterRoundLength;
    boolean requestSlotQueueEnabled;
    boolean requestSlotScanEnabled;
    boolean requestSlotBackgroundScanEnabled;
} IfxVadc_Adc_ArbiterConfig;



typedef struct
{
    boolean autoBackgroundScanEnabled;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_BackgroundScanConfig;



typedef struct
{
    float32 sampleTime;
    IfxVadc_ChannelResolution resolution;
} IfxVadc_Adc_ClassConfig;



typedef struct
{
    IfxVadc_Adc module;
    Ifx_VADC_G *group;
    IfxVadc_GroupId groupId;
} IfxVadc_Adc_Group;



typedef struct
{
    boolean flushQueueAfterInit;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_QueueConfig;



typedef struct
{
    boolean autoscanEnabled;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_ScanConfig;



typedef struct
{
    IfxVadc_Emux_Out *pins[3];
    IfxPort_OutputMode outputMode;
    IfxPort_PadDriver padDriver;
} IfxVadc_Adc_EmuxPinConfig;





typedef struct
{
    IfxVadc_ChannelId channel;
    IfxVadc_ChannelResult resultreg;
    const IfxVadc_Adc_Group *group;
} IfxVadc_Adc_Channel;



typedef struct
{
    boolean globalResultUsage;
    boolean synchonize;
    boolean backgroundChannel;
    boolean rightAlignedStorage;
    Ifx_Priority resultPriority;
    Ifx_Priority channelPriority;
    IfxSrc_Tos resultServProvider;
    IfxSrc_Tos channelServProvider;
    IfxVadc_SrcNr resultSrcNr;
    IfxVadc_SrcNr channelSrcNr;
    IfxVadc_ChannelId channelId;
    IfxVadc_InputClasses inputClass;
    IfxVadc_ChannelReference reference;
    IfxVadc_ChannelResult resultRegister;
    IfxVadc_BoundarySelection lowerBoundary;
    IfxVadc_BoundarySelection upperBoundary;
    IfxVadc_BoundaryExtension boundaryMode;
    IfxVadc_LimitCheck limitCheck;
    const IfxVadc_Adc_Group *group;
} IfxVadc_Adc_ChannelConfig;



typedef struct
{
    Ifx_VADC *vadc;
    IfxVadc_Adc_ClassConfig globalInputClass[(2)];
    float32 digitalFrequency;
    float32 analogFrequency;
    float32 moduleFrequency;
    boolean startupCalibration;


    IfxVadc_LowSupplyVoltageSelect supplyVoltage;
} IfxVadc_Adc_Config;



typedef struct
{
    Ifx_VADC *vadc;
    IfxVadc_ExternalMultiplexerMode mode;
    IfxVadc_EmuxSelectValue startChannel;

    IfxVadc_EmuxCodingScheme code;
    IfxVadc_EmuxSampleTimeControl sampleTimeControl;
    IfxVadc_GroupId groupId;
    uint8 channels;
    IfxVadc_EmuxInterface emuxInterface;
    IfxVadc_Adc_EmuxPinConfig emuxOutPinConfig;
    IfxVadc_ChannelSelectionStyle channelSelectionStyle;
} IfxVadc_Adc_EmuxControl;



typedef struct
{
    const IfxVadc_Adc *module;
    IfxVadc_GroupId groupId;
    IfxVadc_GroupId master;
    IfxVadc_Adc_ClassConfig inputClass[(2)];
    IfxVadc_Adc_ScanConfig scanRequest;
    IfxVadc_Adc_QueueConfig queueRequest;
    IfxVadc_Adc_BackgroundScanConfig backgroundScanRequest;
    boolean disablePostCalibration;
    IfxVadc_Adc_ArbiterConfig arbiter;
} IfxVadc_Adc_GroupConfig;
# 544 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_deInitModule(IfxVadc_Adc *vadc);
# 554 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getModuleConfig(IfxVadc_Adc *vadc, IfxVadc_Adc_Config *config);
# 622 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResultBasedOnRequestSource(IfxVadc_Adc_Group *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType);
# 632 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_disableModule(Ifx_VADC *vadc);
# 642 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initModule(IfxVadc_Adc *vadc, const IfxVadc_Adc_Config *config);
# 652 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initModuleConfig(IfxVadc_Adc_Config *config, Ifx_VADC *vadc);
# 693 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G *IfxVadc_Adc_getGroupRegsFromGroup(const IfxVadc_Adc_Group *group);
# 780 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getGroupResult(IfxVadc_Adc_Group *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults);





static inline __attribute__ ((always_inline)) Ifx_VADC *IfxVadc_Adc_getVadcFromGroup(const IfxVadc_Adc_Group *group);
# 799 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_deInitGroup(IfxVadc_Adc_Group *group);
# 809 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_getGroupConfig(IfxVadc_Adc_Group *group, IfxVadc_Adc_GroupConfig *config);
# 819 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initGroup(IfxVadc_Adc_Group *group, const IfxVadc_Adc_GroupConfig *config);
# 829 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initGroupConfig(IfxVadc_Adc_GroupConfig *config, IfxVadc_Adc *vadc);
# 848 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadMode(IfxVadc_Adc_Channel *channel, boolean waitForRead);
# 857 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResult(IfxVadc_Adc_Channel *channel);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_RESD IfxVadc_Adc_getDebugResult(IfxVadc_Adc_Channel *channel);
# 877 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_getChannelConfig(IfxVadc_Adc_Channel *channel, IfxVadc_Adc_ChannelConfig *config);






extern float32 IfxVadc_Adc_getChannelConversionTime(IfxVadc_Adc_Channel *channel, IfxVadc_ConversionType conversionMode);
# 894 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initChannel(IfxVadc_Adc_Channel *channel, const IfxVadc_Adc_ChannelConfig *config);
# 904 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initChannelConfig(IfxVadc_Adc_ChannelConfig *config, const IfxVadc_Adc_Group *group);
# 923 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadModeForGlobalResultRegister(IfxVadc_Adc *vadc, boolean waitForRead);





static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getBackgroundScanStatus(IfxVadc_Adc *vadc);
# 1018 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_Adc_getGlobalResult(IfxVadc_Adc *vadc);
# 1030 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setBackgroundScan(IfxVadc_Adc *vadc, IfxVadc_Adc_Group *group, uint32 channels, uint32 mask);
# 1039 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startBackgroundScan(IfxVadc_Adc *vadc);
# 1057 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getScanStatus(IfxVadc_Adc_Group *group);
# 1068 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setScan(IfxVadc_Adc_Group *group, uint32 channels, uint32 mask);
# 1077 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startScan(IfxVadc_Adc_Group *group);
# 1099 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_addToQueue(IfxVadc_Adc_Channel *channel, uint32 options);
# 1108 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_clearQueue(IfxVadc_Adc_Group *group);
# 1117 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getQueueStatus(IfxVadc_Adc_Group *group);
# 1126 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startQueue(IfxVadc_Adc_Group *group);
# 1142 "0_Src/BaseSw/iLLD/TC29B/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initExternalMultiplexerModeConfig(IfxVadc_Adc_EmuxControl *emuxConfig, Ifx_VADC *vadc);






extern void IfxVadc_Adc_initExternalMultiplexerMode(Ifx_VADC *vadc, const IfxVadc_Adc_EmuxControl *emuxControl);







static inline __attribute__ ((always_inline)) void IfxVadc_Adc_addToQueue(IfxVadc_Adc_Channel *channel, uint32 options)
{
    IfxVadc_addToQueue(channel->group->group, channel->channel, options);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_clearQueue(IfxVadc_Adc_Group *group)
{
    IfxVadc_clearQueue(group->group, 1);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadMode(IfxVadc_Adc_Channel *channel, boolean waitForRead)
{
    IfxVadc_configureWaitForReadMode(channel->group->group, channel->resultreg, waitForRead);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadModeForGlobalResultRegister(IfxVadc_Adc *vadc, boolean waitForRead)
{
    IfxVadc_configureWaitForReadModeForGlobalResultRegister(vadc->vadc, waitForRead);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_deInitModule(IfxVadc_Adc *vadc)
{
    Ifx_VADC *vadcSFR = vadc->vadc;

    IfxVadc_resetKernel(vadcSFR);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getBackgroundScanStatus(IfxVadc_Adc *vadc)
{
    return IfxVadc_getBackgroundScanStatus(vadc->vadc);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_Adc_getGlobalResult(IfxVadc_Adc *vadc)
{
    return IfxVadc_getGlobalResult(vadc->vadc);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G *IfxVadc_Adc_getGroupRegsFromGroup(const IfxVadc_Adc_Group *group)
{
    return group->group;
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getGroupResult(IfxVadc_Adc_Group *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults)
{
    IfxVadc_getGroupResult(group->group, results, resultOffset, numResults);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getModuleConfig(IfxVadc_Adc *vadc, IfxVadc_Adc_Config *config)
{
    config->vadc = vadc->vadc;
    config->analogFrequency = IfxVadc_getAdcAnalogFrequency(vadc->vadc);
    config->digitalFrequency = IfxVadc_getAdcDigitalFrequency(vadc->vadc);
    config->globalInputClass[0].resolution = IfxVadc_getGlobalResolution(vadc->vadc, 0);
    config->globalInputClass[1].resolution = IfxVadc_getGlobalResolution(vadc->vadc, 1);
    config->globalInputClass[0].sampleTime = IfxVadc_getGlobalSampleTime(vadc->vadc, 0, config->analogFrequency);
    config->globalInputClass[1].sampleTime = IfxVadc_getGlobalSampleTime(vadc->vadc, 1, config->analogFrequency);
    config->moduleFrequency = IfxVadc_getAdcModuleFrequency();
    config->startupCalibration = IfxVadc_getStartupCalibration(vadc->vadc);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getQueueStatus(IfxVadc_Adc_Group *group)
{
    return IfxVadc_getQueueStatus(group->group);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResult(IfxVadc_Adc_Channel *channel)
{
    return IfxVadc_getResult(channel->group->group, channel->resultreg);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResultBasedOnRequestSource(IfxVadc_Adc_Group *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType)
{
    return IfxVadc_getResultBasedOnRequestSource(group->module.vadc, group->group, channel, sourceType);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getScanStatus(IfxVadc_Adc_Group *group)
{
    return IfxVadc_getScanStatus(group->group);
}


static inline __attribute__ ((always_inline)) Ifx_VADC *IfxVadc_Adc_getVadcFromGroup(const IfxVadc_Adc_Group *group)
{
    return group->module.vadc;
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setBackgroundScan(IfxVadc_Adc *vadc, IfxVadc_Adc_Group *group, uint32 channels, uint32 mask)
{
    IfxVadc_setBackgroundScan(vadc->vadc, group->groupId, channels, mask);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setScan(IfxVadc_Adc_Group *group, uint32 channels, uint32 mask)
{
    IfxVadc_setScan(group->group, channels, mask);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startBackgroundScan(IfxVadc_Adc *vadc)
{
    IfxVadc_startBackgroundScan(vadc->vadc);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startQueue(IfxVadc_Adc_Group *group)
{
    IfxVadc_startQueue(group->group);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startScan(IfxVadc_Adc_Group *group)
{
    IfxVadc_startScan(group->group);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RESD IfxVadc_Adc_getDebugResult(IfxVadc_Adc_Channel *channel)
{
    return IfxVadc_getDebugResult(channel->group->group, channel->resultreg);
}
# 14 "0_Src/AppSw/Tricore/VADC/VADC.h" 2



typedef struct
{
    IfxVadc_Adc vadc;
    IfxVadc_Adc_Group adcGroup;
} App_VadcAutoScan;

extern App_VadcAutoScan g_VadcAutoScan;

extern void VadcAutoScanDemo_init(void);
extern void VadcAutoScanDemo_run(void);
# 24 "0_Src/AppSw/Tricore/Timer/GTM_ISR.h" 2


void ISR_SensorFeedback(void);
void ISR_SensorFeedBack_Config(void);

void ISR_ObstacleAvoidance_Config(void);
void ISR_ObstacleAvoidance(void);
# 30 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2



# 1 "0_Src/AppSw/Tricore/Ultrasonic_sensor/ultrasonic_sensor.h" 1
# 17 "0_Src/AppSw/Tricore/Ultrasonic_sensor/ultrasonic_sensor.h"
# 1 "0_Src/AppSw/CpuGeneric/Config/Config_ISR.h" 1
# 18 "0_Src/AppSw/Tricore/Ultrasonic_sensor/ultrasonic_sensor.h" 2

# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h" 1
# 20 "0_Src/AppSw/Tricore/Ultrasonic_sensor/ultrasonic_sensor.h" 2


void configUltrasonicSensor(void);


void sendTrig(IfxPort_Pin port_pin);


void isrGetDistance(void);


float64 returnDistance(void);
# 34 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2

# 1 "0_Src/AppSw/Tricore/Beeper/Beeper.h" 1
# 16 "0_Src/AppSw/Tricore/Beeper/Beeper.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 1 3
# 10 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 11 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 2 3




# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\stdlib.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 2 3
# 27 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *))



                                                         ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);
# 111 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size) ;



void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);
# 198 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);



extern long double strtold (const char *, char **);
extern long double wcstold (const wchar_t *, wchar_t **);



# 17 "0_Src/AppSw/Tricore/Beeper/Beeper.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 1 3
# 34 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 35 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 1 3
# 69 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 70 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\types.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 92 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned short ino_t;
# 162 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\features.h" 1 3
# 262 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 47 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\stdio.h" 1 3
# 66 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3
# 175 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 246 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 361 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 519 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3

# 18 "0_Src/AppSw/Tricore/Beeper/Beeper.h" 2

void beep(uint16 Freq_beep);
# 36 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2





# 1 "0_Src/AppSw/Tricore/ResetReason/Reset_reason.h" 1
# 26 "0_Src/AppSw/Tricore/ResetReason/Reset_reason.h"
typedef enum
{
 Standby_Reg = 0,
 Cold_PORST = 1,
 Warm_PORST = 2,
 STM = 3,
 Software = 4,
 SMU = 5,
 ESR = 6,
 wrong = -1

}reset_reason_type;


void get_Reset_Reason(void);
void reset_Stat(void);
# 42 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 2

void command(char);
void command_Mode2(char recv);

void Obstacle_detection();
void Tft_screen_config();
# 9 "0_Src/AppSw/Tricore/Serial/serial.h" 2






void serial_config(void);
void serial_send(uint8 data);
uint8 serial_recv(void);
void serial_sendBytes(uint8 *data, Ifx_SizeT count);
void serial_rcvBytes(uint8 *data, Ifx_SizeT count);
void serial_print(char *str);
# 8 "0_Src/AppSw/Tricore/Serial/serial.c" 2



static IfxAsclin_Asc serialDriver;

static uint8 ascTxBuffer[64 + sizeof(Ifx_Fifo) + 8];
static uint8 ascRxBuffer[64 + sizeof(Ifx_Fifo) + 8];

__asm__ (".ifndef .intr.entry.include                        \n" ".altmacro                                           \n" ".macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code \n" "	.pushsection .\\intEntryLabel,\"ax\",@progbits   \n" "	__\\intEntryLabel :                              \n" "		svlcx                                        \n" "		movh.a  %a14, hi:\\name                      \n" "		lea     %a14, [%a14]lo:\\name                \n" "		ji      %a14                                 \n" "	.popsection                                      \n" ".endm                                               \n" ".macro .int_entry.1 prio,vectabNum,u,name           \n" ".int_entry.2 intvec_tc\\vectabNum\\u\\prio,(name) # build the unique name \n" ".endm                                               \n" "                                                    \n" ".macro .intr.entry name,vectabNum,prio              \n" ".int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number \n" ".endm                                               \n" ".intr.entry.include:                                \n" ".endif                                              \n" ".intr.entry ""serialTxISR"",""0"",""6" );extern void __attribute__ ((interrupt_handler)) serialTxISR(); void serialTxISR (void);
__asm__ (".ifndef .intr.entry.include                        \n" ".altmacro                                           \n" ".macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code \n" "	.pushsection .\\intEntryLabel,\"ax\",@progbits   \n" "	__\\intEntryLabel :                              \n" "		svlcx                                        \n" "		movh.a  %a14, hi:\\name                      \n" "		lea     %a14, [%a14]lo:\\name                \n" "		ji      %a14                                 \n" "	.popsection                                      \n" ".endm                                               \n" ".macro .int_entry.1 prio,vectabNum,u,name           \n" ".int_entry.2 intvec_tc\\vectabNum\\u\\prio,(name) # build the unique name \n" ".endm                                               \n" "                                                    \n" ".macro .intr.entry name,vectabNum,prio              \n" ".int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number \n" ".endm                                               \n" ".intr.entry.include:                                \n" ".endif                                              \n" ".intr.entry ""serialRxISR"",""0"",""5" );extern void __attribute__ ((interrupt_handler)) serialRxISR(); void serialRxISR (void);
__asm__ (".ifndef .intr.entry.include                        \n" ".altmacro                                           \n" ".macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code \n" "	.pushsection .\\intEntryLabel,\"ax\",@progbits   \n" "	__\\intEntryLabel :                              \n" "		svlcx                                        \n" "		movh.a  %a14, hi:\\name                      \n" "		lea     %a14, [%a14]lo:\\name                \n" "		ji      %a14                                 \n" "	.popsection                                      \n" ".endm                                               \n" ".macro .int_entry.1 prio,vectabNum,u,name           \n" ".int_entry.2 intvec_tc\\vectabNum\\u\\prio,(name) # build the unique name \n" ".endm                                               \n" "                                                    \n" ".macro .intr.entry name,vectabNum,prio              \n" ".int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number \n" ".endm                                               \n" ".intr.entry.include:                                \n" ".endif                                              \n" ".intr.entry ""serialErISR"",""0"",""7" );extern void __attribute__ ((interrupt_handler)) serialErISR(); void serialErISR (void);

extern volatile uint8 command_movement;
extern int ModeSelector;
int Mode2_flag = 0;
int Mode1_flag = 0;
int Servo_Enable = 0;
extern IfxGtm_Atom_Timer timerObstacleAvoidance;



char message='0';






void serial_config() {

 IfxAsclin_Asc_Config ascConfig;


 IfxAsclin_Asc_initModuleConfig(&ascConfig, IfxAsclin0_RXB_P15_3_IN.module);


 ascConfig.baudrate.prescaler = 1;
 ascConfig.baudrate.baudrate = 9600;


 ascConfig.interrupt.txPriority = 6;
 ascConfig.interrupt.rxPriority = 5;
 ascConfig.interrupt.erPriority = 7;
 ascConfig.interrupt.typeOfService = IfxCpu_Irq_getTos(IfxCpu_getCoreIndex());


 ascConfig.txBuffer = &ascTxBuffer;
 ascConfig.txBufferSize = 64;

 ascConfig.rxBuffer = &ascRxBuffer;
 ascConfig.rxBufferSize = 64;


 const IfxAsclin_Asc_Pins pins = {
  ((void *)0), IfxPort_InputMode_pullUp,
  &IfxAsclin0_RXB_P15_3_IN, IfxPort_InputMode_pullUp,
  ((void *)0), IfxPort_OutputMode_pushPull,
  &IfxAsclin0_TX_P15_2_OUT, IfxPort_OutputMode_pushPull,
  IfxPort_PadDriver_cmosAutomotiveSpeed4
 };
 ascConfig.pins = &pins;


 IfxAsclin_Asc_initModule(&serialDriver, &ascConfig);
}





void serial_send(uint8 data) {
 IfxAsclin_Asc_blockingWrite(&serialDriver, data);
}





uint8 serial_recv() {
  return IfxAsclin_Asc_blockingRead(&serialDriver);
}

void serial_sendBytes(uint8 *data, Ifx_SizeT count) {
    IfxAsclin_Asc_write(&serialDriver, data, &count, ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL));
}

void serial_rcvBytes(uint8 *data, Ifx_SizeT count) {
 IfxAsclin_Asc_read(&serialDriver, data, &count, ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL));
}






void serialTxISR() {
    IfxAsclin_Asc_isrTransmit(&serialDriver);
}






void serialRxISR() {
 message=(char)(*(volatile Ifx_ASCLIN_RXDATA*)0xF0000648u).U;
 if(message == '1')
 {
  if(Mode2_flag == 1)
  {
   IfxGtm_Atom_Timer_stop(&timerObstacleAvoidance);
   Servo_Enable = 0;
   Motors_stop();
   Mode2_flag = 0;
  }
  ModeSelector = 1;
  GLCD_displayStringLn(((((240 / 24) - (5)) * 24) - 1), "Mode 1 Selected    ");

 }
 else if(message == '2')
 {
  if (Mode1_flag == 1)
  {
   if(command_movement != 0)
   {
    Motors_stop();
   }
   Mode1_flag = 0;
  }

  ModeSelector = 2;
  GLCD_displayStringLn(((((240 / 24) - (5)) * 24) - 1), "Mode 2 Selected    ");
 }

 if (ModeSelector == 1)
 {
  Mode1_flag = 1;
  command(message);

 }
 else if(ModeSelector == 2)
 {
  Mode2_flag = 1;
  command_Mode2(message);
 }
}

void serialErISR() {
    IfxAsclin_Asc_isrError(&serialDriver);
}
