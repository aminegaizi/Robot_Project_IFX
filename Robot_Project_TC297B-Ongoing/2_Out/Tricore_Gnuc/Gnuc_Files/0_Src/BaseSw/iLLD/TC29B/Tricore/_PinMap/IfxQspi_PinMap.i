# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.c"
# 1 "C:\\Users\\Gaizi\\Desktop\\Robot_Project_IFX\\Robot_Project_TC297B-Ongoing//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.c"
# 26 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.c"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.h" 1
# 31 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_reg.h" 1
# 51 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_regdef.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_regdef.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/Ifx_TypesReg.h" 1
# 40 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_regdef.h" 2





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
# 52 "0_Src/BaseSw/Infra/Sfr/TC29B/_Reg/IfxQspi_reg.h" 2
# 32 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxQspi_cfg.h" 1
# 41 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxQspi_cfg.h"
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
# 42 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxQspi_cfg.h" 2
# 60 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxQspi_cfg.h"
typedef enum
{
    IfxQspi_Index_none = -1,
    IfxQspi_Index_0 = 0,
    IfxQspi_Index_1,
    IfxQspi_Index_2,
    IfxQspi_Index_3,
    IfxQspi_Index_4,
    IfxQspi_Index_5
} IfxQspi_Index;





extern const IfxModule_IndexMap IfxQspi_cfg_indexMap[(6)];
# 33 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.h" 2
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h" 1
# 43 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxPort_cfg.h" 1
# 40 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxPort_cfg.h"
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
# 41 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxPort_cfg.h" 2
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
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h" 1
# 46 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h"
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
# 47 "0_Src/BaseSw/iLLD/TC29B/Tricore/Scu/Std/IfxScuWdt.h" 2

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
# 45 "0_Src/BaseSw/iLLD/TC29B/Tricore/Port/Std/IfxPort.h" 2
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
# 34 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.h" 2





typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Mrst_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Mtsr_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Sclk_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Slsi_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Hsicin_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Mrst_Out;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Mtsr_Out;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Sclk_Out;


typedef const struct
{
    Ifx_QSPI* module;
    sint32 slsoNr;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Slso_Out;

extern IfxQspi_Hsicin_In IfxQspi2_HSICINA_P15_2_IN;
extern IfxQspi_Hsicin_In IfxQspi2_HSICINB_P15_3_IN;
extern IfxQspi_Hsicin_In IfxQspi3_HSICINA_P33_9_IN;
extern IfxQspi_Hsicin_In IfxQspi3_HSICINB_P33_10_IN;
extern IfxQspi_Mrst_In IfxQspi0_MRSTA_P20_12_IN;
extern IfxQspi_Mrst_In IfxQspi0_MRSTB_P22_9_IN;
extern IfxQspi_Mrst_In IfxQspi0_MRSTC_P22_6_IN;
extern IfxQspi_Mrst_In IfxQspi1_MRSTA_P10_1_IN;
extern IfxQspi_Mrst_In IfxQspi1_MRSTB_P11_3_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTA_P15_4_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTB_P15_7_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTCN_P21_2_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTCP_P21_3_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTD_P34_4_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTE_P15_2_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTA_P02_5_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTB_P10_7_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTC_P01_5_IN;
extern IfxQspi_Mrst_In IfxQspi4_MRSTA_P33_13_IN;
extern IfxQspi_Mrst_In IfxQspi4_MRSTB_P22_1_IN;
extern IfxQspi_Mrst_In IfxQspi4_MRSTCN_P21_2_IN;
extern IfxQspi_Mrst_In IfxQspi4_MRSTCP_P21_3_IN;
extern IfxQspi_Mrst_In IfxQspi4_MRSTDN_P21_0_IN;
extern IfxQspi_Mrst_In IfxQspi4_MRSTDP_P21_1_IN;
extern IfxQspi_Mrst_In IfxQspi5_MRSTA_P15_10_IN;
extern IfxQspi_Mrst_Out IfxQspi0_MRST_P20_12_OUT;
extern IfxQspi_Mrst_Out IfxQspi0_MRST_P22_6_OUT;
extern IfxQspi_Mrst_Out IfxQspi0_MRST_P22_9_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P10_1_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P10_6_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P11_3_OUT;
extern IfxQspi_Mrst_Out IfxQspi2_MRST_P15_4_OUT;
extern IfxQspi_Mrst_Out IfxQspi2_MRST_P15_7_OUT;
extern IfxQspi_Mrst_Out IfxQspi2_MRST_P34_4_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P01_5_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P02_5_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P10_7_OUT;
extern IfxQspi_Mrst_Out IfxQspi4_MRST_P22_1_OUT;
extern IfxQspi_Mrst_Out IfxQspi4_MRST_P33_13_OUT;
extern IfxQspi_Mrst_Out IfxQspi5_MRST_P15_10_OUT;
extern IfxQspi_Mtsr_In IfxQspi0_MTSRA_P20_14_IN;
extern IfxQspi_Mtsr_In IfxQspi0_MTSRB_P22_10_IN;
extern IfxQspi_Mtsr_In IfxQspi0_MTSRC_P22_5_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRA_P10_3_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRB_P11_9_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRC_P10_4_IN;
extern IfxQspi_Mtsr_In IfxQspi2_MTSRA_P15_5_IN;
extern IfxQspi_Mtsr_In IfxQspi2_MTSRB_P15_6_IN;
extern IfxQspi_Mtsr_In IfxQspi2_MTSRD_P34_5_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRA_P02_6_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRB_P10_6_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRC_P01_6_IN;
extern IfxQspi_Mtsr_In IfxQspi4_MTSRA_P33_12_IN;
extern IfxQspi_Mtsr_In IfxQspi4_MTSRB_P22_0_IN;
extern IfxQspi_Mtsr_In IfxQspi5_MTSRA_P15_14_IN;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_12_OUT;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_14_OUT;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_10_OUT;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_5_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_1_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_3_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_4_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P11_9_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSRN_P13_2_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSRP_P13_3_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_5_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P34_5_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P01_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P02_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P10_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi4_MTSRN_P22_2_OUT;
extern IfxQspi_Mtsr_Out IfxQspi4_MTSRP_P22_3_OUT;
extern IfxQspi_Mtsr_Out IfxQspi4_MTSR_P22_0_OUT;
extern IfxQspi_Mtsr_Out IfxQspi4_MTSR_P33_12_OUT;
extern IfxQspi_Mtsr_Out IfxQspi5_MTSR_P15_14_OUT;
extern IfxQspi_Sclk_In IfxQspi0_SCLKA_P20_11_IN;
extern IfxQspi_Sclk_In IfxQspi0_SCLKB_P22_8_IN;
extern IfxQspi_Sclk_In IfxQspi0_SCLKC_P22_7_IN;
extern IfxQspi_Sclk_In IfxQspi1_SCLKA_P10_2_IN;
extern IfxQspi_Sclk_In IfxQspi1_SCLKB_P11_6_IN;
extern IfxQspi_Sclk_In IfxQspi2_SCLKA_P15_3_IN;
extern IfxQspi_Sclk_In IfxQspi2_SCLKB_P15_8_IN;
extern IfxQspi_Sclk_In IfxQspi2_SCLKD_P33_14_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKA_P02_7_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKB_P10_8_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKC_P01_7_IN;
extern IfxQspi_Sclk_In IfxQspi4_SCLKA_P33_11_IN;
extern IfxQspi_Sclk_In IfxQspi4_SCLKB_P22_3_IN;
extern IfxQspi_Sclk_In IfxQspi5_SCLKA_P15_15_IN;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_11_OUT;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_13_OUT;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_7_OUT;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_8_OUT;
extern IfxQspi_Sclk_Out IfxQspi1_SCLK_P10_2_OUT;
extern IfxQspi_Sclk_Out IfxQspi1_SCLK_P11_6_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLKN_P13_0_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLKP_P13_1_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_3_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_6_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_8_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P33_14_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P33_1_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P01_7_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P02_7_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P10_8_OUT;
extern IfxQspi_Sclk_Out IfxQspi4_SCLKN_P22_0_OUT;
extern IfxQspi_Sclk_Out IfxQspi4_SCLKP_P22_1_OUT;
extern IfxQspi_Sclk_Out IfxQspi4_SCLK_P22_3_OUT;
extern IfxQspi_Sclk_Out IfxQspi4_SCLK_P33_11_OUT;
extern IfxQspi_Sclk_Out IfxQspi5_SCLK_P15_15_OUT;
extern IfxQspi_Slsi_In IfxQspi0_SLSIA_P20_13_IN;
extern IfxQspi_Slsi_In IfxQspi0_SLSIB_P20_9_IN;
extern IfxQspi_Slsi_In IfxQspi1_SLSIA_P11_10_IN;
extern IfxQspi_Slsi_In IfxQspi2_SLSIA_P15_2_IN;
extern IfxQspi_Slsi_In IfxQspi2_SLSIB_P15_1_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSIA_P02_4_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSIB_P01_3_IN;
extern IfxQspi_Slsi_In IfxQspi4_SLSIA_P33_10_IN;
extern IfxQspi_Slsi_In IfxQspi4_SLSIB_P22_2_IN;
extern IfxQspi_Slsi_In IfxQspi5_SLSIA_P15_11_IN;
extern IfxQspi_Slso_Out IfxQspi0_SLSO0_P20_8_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO10_P22_11_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO11_P23_6_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO12_P22_4_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO13_P15_0_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO1_P20_9_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO2_P20_13_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO3_P11_10_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO4_P11_11_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO5_P11_2_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO6_P20_10_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO7_P33_5_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO8_P20_6_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO9_P20_3_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO0_P20_8_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO10_P10_0_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO1_P20_9_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO2_P20_13_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO3_P11_10_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO4_P11_11_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO5_P11_2_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO6_P33_10_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO7_P33_5_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO8_P10_4_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO9_P10_5_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO0_P15_2_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO10_P33_2_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO10_P34_3_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO11_P33_15_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO11_P33_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO12_P32_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO12_P33_4_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO1_P14_2_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO2_P14_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO3_P14_3_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO4_P14_7_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO5_P15_1_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO6_P33_13_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO7_P20_10_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO8_P20_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO9_P20_3_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO0_P02_4_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO10_P01_4_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO1_P02_0_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO2_P02_1_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO3_P00_5_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO3_P02_2_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO4_P00_2_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO4_P02_3_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO5_P02_12_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO5_P02_8_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO6_P00_8_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO6_P02_15_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO7_P00_9_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO7_P02_13_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO8_P10_5_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO9_P01_3_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO0_P33_10_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO1_P33_9_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO2_P33_8_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO3_P22_2_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO4_P02_12_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO4_P23_5_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO5_P02_15_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO5_P23_4_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO6_P02_13_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO6_P23_1_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO7_P02_1_OUT;
extern IfxQspi_Slso_Out IfxQspi4_SLSO7_P33_7_OUT;
extern IfxQspi_Slso_Out IfxQspi5_SLSO0_P15_13_OUT;
extern IfxQspi_Slso_Out IfxQspi5_SLSO1_P15_12_OUT;
extern IfxQspi_Slso_Out IfxQspi5_SLSO2_P15_11_OUT;
extern IfxQspi_Slso_Out IfxQspi5_SLSO3_P15_6_OUT;
extern IfxQspi_Slso_Out IfxQspi5_SLSO4_P13_14_OUT;
extern IfxQspi_Slso_Out IfxQspi5_SLSO5_P13_9_OUT;
# 323 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.h"
extern const IfxQspi_Hsicin_In *IfxQspi_Hsicin_In_pinTable[6][2];


extern const IfxQspi_Mrst_In *IfxQspi_Mrst_In_pinTable[6][5];


extern const IfxQspi_Mrst_Out *IfxQspi_Mrst_Out_pinTable[6][3];


extern const IfxQspi_Mtsr_In *IfxQspi_Mtsr_In_pinTable[6][4];


extern const IfxQspi_Mtsr_Out *IfxQspi_Mtsr_Out_pinTable[6][5];


extern const IfxQspi_Sclk_In *IfxQspi_Sclk_In_pinTable[6][4];


extern const IfxQspi_Sclk_Out *IfxQspi_Sclk_Out_pinTable[6][7];


extern const IfxQspi_Slsi_In *IfxQspi_Slsi_In_pinTable[6][2];


extern const IfxQspi_Slso_Out *IfxQspi_Slso_Out_pinTable[6][14][2];
# 27 "0_Src/BaseSw/iLLD/TC29B/Tricore/_PinMap/IfxQspi_PinMap.c" 2

IfxQspi_Hsicin_In IfxQspi2_HSICINA_P15_2_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 2}, Ifx_RxSel_a};
IfxQspi_Hsicin_In IfxQspi2_HSICINB_P15_3_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 3}, Ifx_RxSel_b};
IfxQspi_Hsicin_In IfxQspi3_HSICINA_P33_9_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003D300u), 9}, Ifx_RxSel_a};
IfxQspi_Hsicin_In IfxQspi3_HSICINB_P33_10_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003D300u),10}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi0_MRSTA_P20_12_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),12}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi0_MRSTB_P22_9_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 9}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi0_MRSTC_P22_6_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 6}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi1_MRSTA_P10_1_IN = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 1}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi1_MRSTB_P11_3_IN = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B100u), 3}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi2_MRSTA_P15_4_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 4}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi2_MRSTB_P15_7_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 7}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi2_MRSTCN_P21_2_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003C100u), 2}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi2_MRSTCP_P21_3_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003C100u), 3}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi2_MRSTD_P34_4_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003D400u), 4}, Ifx_RxSel_d};
IfxQspi_Mrst_In IfxQspi2_MRSTE_P15_2_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 2}, Ifx_RxSel_e};
IfxQspi_Mrst_In IfxQspi3_MRSTA_P02_5_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A200u), 5}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi3_MRSTB_P10_7_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003B000u), 7}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi3_MRSTC_P01_5_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A100u), 5}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi4_MRSTA_P33_13_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003D300u),13}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi4_MRSTB_P22_1_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 1}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi4_MRSTCN_P21_2_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C100u), 2}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi4_MRSTCP_P21_3_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C100u), 3}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi4_MRSTDN_P21_0_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C100u), 0}, Ifx_RxSel_d};
IfxQspi_Mrst_In IfxQspi4_MRSTDP_P21_1_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C100u), 1}, Ifx_RxSel_d};
IfxQspi_Mrst_In IfxQspi5_MRSTA_P15_10_IN = {&(*(Ifx_QSPI*)0xF0002100u), {&(*(Ifx_P*)0xF003B500u),10}, Ifx_RxSel_a};
IfxQspi_Mrst_Out IfxQspi0_MRST_P20_12_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),12}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi0_MRST_P22_6_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Mrst_Out IfxQspi0_MRST_P22_9_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 9}, IfxPort_OutputIdx_alt4};
IfxQspi_Mrst_Out IfxQspi1_MRST_P10_1_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi1_MRST_P10_6_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 6}, IfxPort_OutputIdx_alt6};
IfxQspi_Mrst_Out IfxQspi1_MRST_P11_3_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B100u), 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi2_MRST_P15_4_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi2_MRST_P15_7_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi2_MRST_P34_4_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003D400u), 4}, IfxPort_OutputIdx_alt4};
IfxQspi_Mrst_Out IfxQspi3_MRST_P01_5_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A100u), 5}, IfxPort_OutputIdx_alt4};
IfxQspi_Mrst_Out IfxQspi3_MRST_P02_5_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A200u), 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi3_MRST_P10_7_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003B000u), 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi4_MRST_P22_1_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi4_MRST_P33_13_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003D300u),13}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi5_MRST_P15_10_OUT = {&(*(Ifx_QSPI*)0xF0002100u), {&(*(Ifx_P*)0xF003B500u),10}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_In IfxQspi0_MTSRA_P20_14_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),14}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi0_MTSRB_P22_10_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u),10}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi0_MTSRC_P22_5_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 5}, Ifx_RxSel_c};
IfxQspi_Mtsr_In IfxQspi1_MTSRA_P10_3_IN = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 3}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi1_MTSRB_P11_9_IN = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B100u), 9}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi1_MTSRC_P10_4_IN = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 4}, Ifx_RxSel_c};
IfxQspi_Mtsr_In IfxQspi2_MTSRA_P15_5_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 5}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi2_MTSRB_P15_6_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 6}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi2_MTSRD_P34_5_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003D400u), 5}, Ifx_RxSel_d};
IfxQspi_Mtsr_In IfxQspi3_MTSRA_P02_6_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A200u), 6}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi3_MTSRB_P10_6_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003B000u), 6}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi3_MTSRC_P01_6_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A100u), 6}, Ifx_RxSel_c};
IfxQspi_Mtsr_In IfxQspi4_MTSRA_P33_12_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003D300u),12}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi4_MTSRB_P22_0_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 0}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi5_MTSRA_P15_14_IN = {&(*(Ifx_QSPI*)0xF0002100u), {&(*(Ifx_P*)0xF003B500u),14}, Ifx_RxSel_a};
IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_12_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),12}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_14_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),14}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_10_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u),10}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_5_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 5}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_1_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 1}, IfxPort_OutputIdx_alt2};
IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_3_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_4_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 4}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi1_MTSR_P11_9_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B100u), 9}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSRN_P13_2_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B300u), 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSRP_P13_3_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B300u), 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_5_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_6_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSR_P34_5_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003D400u), 5}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi3_MTSR_P01_6_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A100u), 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi3_MTSR_P02_6_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A200u), 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi3_MTSR_P10_6_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003B000u), 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi4_MTSRN_P22_2_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 2}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi4_MTSRP_P22_3_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 3}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi4_MTSR_P22_0_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi4_MTSR_P33_12_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003D300u),12}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi5_MTSR_P15_14_OUT = {&(*(Ifx_QSPI*)0xF0002100u), {&(*(Ifx_P*)0xF003B500u),14}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_In IfxQspi0_SCLKA_P20_11_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),11}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi0_SCLKB_P22_8_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 8}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi0_SCLKC_P22_7_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 7}, Ifx_RxSel_c};
IfxQspi_Sclk_In IfxQspi1_SCLKA_P10_2_IN = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 2}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi1_SCLKB_P11_6_IN = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B100u), 6}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi2_SCLKA_P15_3_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 3}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi2_SCLKB_P15_8_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 8}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi2_SCLKD_P33_14_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003D300u),14}, Ifx_RxSel_d};
IfxQspi_Sclk_In IfxQspi3_SCLKA_P02_7_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A200u), 7}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi3_SCLKB_P10_8_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003B000u), 8}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi3_SCLKC_P01_7_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A100u), 7}, Ifx_RxSel_c};
IfxQspi_Sclk_In IfxQspi4_SCLKA_P33_11_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003D300u),11}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi4_SCLKB_P22_3_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 3}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi5_SCLKA_P15_15_IN = {&(*(Ifx_QSPI*)0xF0002100u), {&(*(Ifx_P*)0xF003B500u),15}, Ifx_RxSel_a};
IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_11_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),11}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_13_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),13}, IfxPort_OutputIdx_alt5};
IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_7_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 7}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_8_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C200u), 8}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi1_SCLK_P10_2_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B000u), 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi1_SCLK_P11_6_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B100u), 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLKN_P13_0_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B300u), 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLKP_P13_1_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B300u), 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_3_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_6_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 6}, IfxPort_OutputIdx_alt5};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_8_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 8}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P33_14_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003D300u),14}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P33_1_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003D300u), 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi3_SCLK_P01_7_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A100u), 7}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi3_SCLK_P02_7_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A200u), 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi3_SCLK_P10_8_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003B000u), 8}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi4_SCLKN_P22_0_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 0}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi4_SCLKP_P22_1_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 1}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi4_SCLK_P22_3_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi4_SCLK_P33_11_OUT = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003D300u),11}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi5_SCLK_P15_15_OUT = {&(*(Ifx_QSPI*)0xF0002100u), {&(*(Ifx_P*)0xF003B500u),15}, IfxPort_OutputIdx_alt3};
IfxQspi_Slsi_In IfxQspi0_SLSIA_P20_13_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u),13}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi0_SLSIB_P20_9_IN = {&(*(Ifx_QSPI*)0xF0001C00u), {&(*(Ifx_P*)0xF003C000u), 9}, Ifx_RxSel_b};
IfxQspi_Slsi_In IfxQspi1_SLSIA_P11_10_IN = {&(*(Ifx_QSPI*)0xF0001D00u), {&(*(Ifx_P*)0xF003B100u),10}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi2_SLSIA_P15_2_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 2}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi2_SLSIB_P15_1_IN = {&(*(Ifx_QSPI*)0xF0001E00u), {&(*(Ifx_P*)0xF003B500u), 1}, Ifx_RxSel_b};
IfxQspi_Slsi_In IfxQspi3_SLSIA_P02_4_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A200u), 4}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi3_SLSIB_P01_3_IN = {&(*(Ifx_QSPI*)0xF0001F00u), {&(*(Ifx_P*)0xF003A100u), 3}, Ifx_RxSel_b};
IfxQspi_Slsi_In IfxQspi4_SLSIA_P33_10_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003D300u),10}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi4_SLSIB_P22_2_IN = {&(*(Ifx_QSPI*)0xF0002000u), {&(*(Ifx_P*)0xF003C200u), 2}, Ifx_RxSel_b};
IfxQspi_Slsi_In IfxQspi5_SLSIA_P15_11_IN = {&(*(Ifx_QSPI*)0xF0002100u), {&(*(Ifx_P*)0xF003B500u),11}, Ifx_RxSel_a};
IfxQspi_Slso_Out IfxQspi0_SLSO0_P20_8_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 0, {&(*(Ifx_P*)0xF003C000u), 8}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO10_P22_11_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 10, {&(*(Ifx_P*)0xF003C200u),11}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi0_SLSO11_P23_6_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 11, {&(*(Ifx_P*)0xF003C300u), 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi0_SLSO12_P22_4_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 12, {&(*(Ifx_P*)0xF003C200u), 4}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi0_SLSO13_P15_0_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 13, {&(*(Ifx_P*)0xF003B500u), 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO1_P20_9_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 1, {&(*(Ifx_P*)0xF003C000u), 9}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO2_P20_13_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 2, {&(*(Ifx_P*)0xF003C000u),13}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO3_P11_10_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 3, {&(*(Ifx_P*)0xF003B100u),10}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO4_P11_11_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 4, {&(*(Ifx_P*)0xF003B100u),11}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO5_P11_2_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 5, {&(*(Ifx_P*)0xF003B100u), 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO6_P20_10_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 6, {&(*(Ifx_P*)0xF003C000u),10}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO7_P33_5_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 7, {&(*(Ifx_P*)0xF003D300u), 5}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi0_SLSO8_P20_6_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 8, {&(*(Ifx_P*)0xF003C000u), 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO9_P20_3_OUT = {&(*(Ifx_QSPI*)0xF0001C00u), 9, {&(*(Ifx_P*)0xF003C000u), 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi1_SLSO0_P20_8_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 0, {&(*(Ifx_P*)0xF003C000u), 8}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO10_P10_0_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 10, {&(*(Ifx_P*)0xF003B000u), 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi1_SLSO1_P20_9_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 1, {&(*(Ifx_P*)0xF003C000u), 9}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO2_P20_13_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 2, {&(*(Ifx_P*)0xF003C000u),13}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO3_P11_10_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 3, {&(*(Ifx_P*)0xF003B100u),10}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO4_P11_11_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 4, {&(*(Ifx_P*)0xF003B100u),11}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO5_P11_2_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 5, {&(*(Ifx_P*)0xF003B100u), 2}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO6_P33_10_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 6, {&(*(Ifx_P*)0xF003D300u),10}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi1_SLSO7_P33_5_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 7, {&(*(Ifx_P*)0xF003D300u), 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi1_SLSO8_P10_4_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 8, {&(*(Ifx_P*)0xF003B000u), 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi1_SLSO9_P10_5_OUT = {&(*(Ifx_QSPI*)0xF0001D00u), 9, {&(*(Ifx_P*)0xF003B000u), 5}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO0_P15_2_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 0, {&(*(Ifx_P*)0xF003B500u), 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO10_P33_2_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 10, {&(*(Ifx_P*)0xF003D300u), 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO10_P34_3_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 10, {&(*(Ifx_P*)0xF003D400u), 3}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO11_P33_15_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 11, {&(*(Ifx_P*)0xF003D300u),15}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO11_P33_6_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 11, {&(*(Ifx_P*)0xF003D300u), 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO12_P32_6_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 12, {&(*(Ifx_P*)0xF003D200u), 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO12_P33_4_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 12, {&(*(Ifx_P*)0xF003D300u), 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO1_P14_2_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 1, {&(*(Ifx_P*)0xF003B400u), 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO2_P14_6_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 2, {&(*(Ifx_P*)0xF003B400u), 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO3_P14_3_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 3, {&(*(Ifx_P*)0xF003B400u), 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO4_P14_7_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 4, {&(*(Ifx_P*)0xF003B400u), 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO5_P15_1_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 5, {&(*(Ifx_P*)0xF003B500u), 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO6_P33_13_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 6, {&(*(Ifx_P*)0xF003D300u),13}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO7_P20_10_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 7, {&(*(Ifx_P*)0xF003C000u),10}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO8_P20_6_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 8, {&(*(Ifx_P*)0xF003C000u), 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO9_P20_3_OUT = {&(*(Ifx_QSPI*)0xF0001E00u), 9, {&(*(Ifx_P*)0xF003C000u), 3}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi3_SLSO0_P02_4_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 0, {&(*(Ifx_P*)0xF003A200u), 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO10_P01_4_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 10, {&(*(Ifx_P*)0xF003A100u), 4}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi3_SLSO1_P02_0_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 1, {&(*(Ifx_P*)0xF003A200u), 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO2_P02_1_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 2, {&(*(Ifx_P*)0xF003A200u), 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO3_P00_5_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 3, {&(*(Ifx_P*)0xF003A000u), 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO3_P02_2_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 3, {&(*(Ifx_P*)0xF003A200u), 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO4_P00_2_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 4, {&(*(Ifx_P*)0xF003A000u), 2}, IfxPort_OutputIdx_alt6};
IfxQspi_Slso_Out IfxQspi3_SLSO4_P02_3_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 4, {&(*(Ifx_P*)0xF003A200u), 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO5_P02_12_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 5, {&(*(Ifx_P*)0xF003A200u),12}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO5_P02_8_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 5, {&(*(Ifx_P*)0xF003A200u), 8}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO6_P00_8_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 6, {&(*(Ifx_P*)0xF003A000u), 8}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO6_P02_15_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 6, {&(*(Ifx_P*)0xF003A200u),15}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO7_P00_9_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 7, {&(*(Ifx_P*)0xF003A000u), 9}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO7_P02_13_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 7, {&(*(Ifx_P*)0xF003A200u),13}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO8_P10_5_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 8, {&(*(Ifx_P*)0xF003B000u), 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO9_P01_3_OUT = {&(*(Ifx_QSPI*)0xF0001F00u), 9, {&(*(Ifx_P*)0xF003A100u), 3}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi4_SLSO0_P33_10_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 0, {&(*(Ifx_P*)0xF003D300u),10}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO1_P33_9_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 1, {&(*(Ifx_P*)0xF003D300u), 9}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO2_P33_8_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 2, {&(*(Ifx_P*)0xF003D300u), 8}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO3_P22_2_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 3, {&(*(Ifx_P*)0xF003C200u), 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO4_P02_12_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 4, {&(*(Ifx_P*)0xF003A200u),12}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO4_P23_5_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 4, {&(*(Ifx_P*)0xF003C300u), 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO5_P02_15_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 5, {&(*(Ifx_P*)0xF003A200u),15}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO5_P23_4_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 5, {&(*(Ifx_P*)0xF003C300u), 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO6_P02_13_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 6, {&(*(Ifx_P*)0xF003A200u),13}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO6_P23_1_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 6, {&(*(Ifx_P*)0xF003C300u), 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi4_SLSO7_P02_1_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 7, {&(*(Ifx_P*)0xF003A200u), 1}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi4_SLSO7_P33_7_OUT = {&(*(Ifx_QSPI*)0xF0002000u), 7, {&(*(Ifx_P*)0xF003D300u), 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi5_SLSO0_P15_13_OUT = {&(*(Ifx_QSPI*)0xF0002100u), 0, {&(*(Ifx_P*)0xF003B500u),13}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi5_SLSO1_P15_12_OUT = {&(*(Ifx_QSPI*)0xF0002100u), 1, {&(*(Ifx_P*)0xF003B500u),12}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi5_SLSO2_P15_11_OUT = {&(*(Ifx_QSPI*)0xF0002100u), 2, {&(*(Ifx_P*)0xF003B500u),11}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi5_SLSO3_P15_6_OUT = {&(*(Ifx_QSPI*)0xF0002100u), 3, {&(*(Ifx_P*)0xF003B500u), 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi5_SLSO4_P13_14_OUT = {&(*(Ifx_QSPI*)0xF0002100u), 4, {&(*(Ifx_P*)0xF003B300u),14}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi5_SLSO5_P13_9_OUT = {&(*(Ifx_QSPI*)0xF0002100u), 5, {&(*(Ifx_P*)0xF003B300u), 9}, IfxPort_OutputIdx_alt3};


const IfxQspi_Hsicin_In *IfxQspi_Hsicin_In_pinTable[6][2] = {
    {
        ((void *)0),
        ((void *)0)
    },
    {
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi2_HSICINA_P15_2_IN,
        &IfxQspi2_HSICINB_P15_3_IN
    },
    {
        &IfxQspi3_HSICINA_P33_9_IN,
        &IfxQspi3_HSICINB_P33_10_IN
    },
    {
        ((void *)0),
        ((void *)0)
    },
    {
        ((void *)0),
        ((void *)0)
    }
};

const IfxQspi_Mrst_In *IfxQspi_Mrst_In_pinTable[6][5] = {
    {
        &IfxQspi0_MRSTA_P20_12_IN,
        &IfxQspi0_MRSTB_P22_9_IN,
        &IfxQspi0_MRSTC_P22_6_IN,
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi1_MRSTA_P10_1_IN,
        &IfxQspi1_MRSTB_P11_3_IN,
        ((void *)0),
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi2_MRSTA_P15_4_IN,
        &IfxQspi2_MRSTB_P15_7_IN,
        &IfxQspi2_MRSTCN_P21_2_IN,
        &IfxQspi2_MRSTD_P34_4_IN,
        &IfxQspi2_MRSTE_P15_2_IN
    },
    {
        &IfxQspi3_MRSTA_P02_5_IN,
        &IfxQspi3_MRSTB_P10_7_IN,
        &IfxQspi3_MRSTC_P01_5_IN,
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi4_MRSTA_P33_13_IN,
        &IfxQspi4_MRSTB_P22_1_IN,
        &IfxQspi4_MRSTCN_P21_2_IN,
        &IfxQspi4_MRSTDN_P21_0_IN,
        ((void *)0)
    },
    {
        &IfxQspi5_MRSTA_P15_10_IN,
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0)
    }
};

const IfxQspi_Mrst_Out *IfxQspi_Mrst_Out_pinTable[6][3] = {
    {
        &IfxQspi0_MRST_P20_12_OUT,
        &IfxQspi0_MRST_P22_6_OUT,
        &IfxQspi0_MRST_P22_9_OUT
    },
    {
        &IfxQspi1_MRST_P10_1_OUT,
        &IfxQspi1_MRST_P10_6_OUT,
        &IfxQspi1_MRST_P11_3_OUT
    },
    {
        &IfxQspi2_MRST_P15_4_OUT,
        &IfxQspi2_MRST_P15_7_OUT,
        &IfxQspi2_MRST_P34_4_OUT
    },
    {
        &IfxQspi3_MRST_P01_5_OUT,
        &IfxQspi3_MRST_P02_5_OUT,
        &IfxQspi3_MRST_P10_7_OUT
    },
    {
        &IfxQspi4_MRST_P22_1_OUT,
        &IfxQspi4_MRST_P33_13_OUT,
        ((void *)0)
    },
    {
        &IfxQspi5_MRST_P15_10_OUT,
        ((void *)0),
        ((void *)0)
    }
};

const IfxQspi_Mtsr_In *IfxQspi_Mtsr_In_pinTable[6][4] = {
    {
        &IfxQspi0_MTSRA_P20_14_IN,
        &IfxQspi0_MTSRB_P22_10_IN,
        &IfxQspi0_MTSRC_P22_5_IN,
        ((void *)0)
    },
    {
        &IfxQspi1_MTSRA_P10_3_IN,
        &IfxQspi1_MTSRB_P11_9_IN,
        &IfxQspi1_MTSRC_P10_4_IN,
        ((void *)0)
    },
    {
        &IfxQspi2_MTSRA_P15_5_IN,
        &IfxQspi2_MTSRB_P15_6_IN,
        ((void *)0),
        &IfxQspi2_MTSRD_P34_5_IN
    },
    {
        &IfxQspi3_MTSRA_P02_6_IN,
        &IfxQspi3_MTSRB_P10_6_IN,
        &IfxQspi3_MTSRC_P01_6_IN,
        ((void *)0)
    },
    {
        &IfxQspi4_MTSRA_P33_12_IN,
        &IfxQspi4_MTSRB_P22_0_IN,
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi5_MTSRA_P15_14_IN,
        ((void *)0),
        ((void *)0),
        ((void *)0)
    }
};

const IfxQspi_Mtsr_Out *IfxQspi_Mtsr_Out_pinTable[6][5] = {
    {
        &IfxQspi0_MTSR_P20_12_OUT,
        &IfxQspi0_MTSR_P20_14_OUT,
        &IfxQspi0_MTSR_P22_5_OUT,
        &IfxQspi0_MTSR_P22_10_OUT,
        ((void *)0)
    },
    {
        &IfxQspi1_MTSR_P10_1_OUT,
        &IfxQspi1_MTSR_P10_3_OUT,
        &IfxQspi1_MTSR_P10_4_OUT,
        &IfxQspi1_MTSR_P11_9_OUT,
        ((void *)0)
    },
    {
        &IfxQspi2_MTSRN_P13_2_OUT,
        &IfxQspi2_MTSRP_P13_3_OUT,
        &IfxQspi2_MTSR_P15_5_OUT,
        &IfxQspi2_MTSR_P15_6_OUT,
        &IfxQspi2_MTSR_P34_5_OUT
    },
    {
        &IfxQspi3_MTSR_P01_6_OUT,
        &IfxQspi3_MTSR_P02_6_OUT,
        &IfxQspi3_MTSR_P10_6_OUT,
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi4_MTSR_P22_0_OUT,
        &IfxQspi4_MTSRN_P22_2_OUT,
        &IfxQspi4_MTSRP_P22_3_OUT,
        &IfxQspi4_MTSR_P33_12_OUT,
        ((void *)0)
    },
    {
        &IfxQspi5_MTSR_P15_14_OUT,
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0)
    }
};

const IfxQspi_Sclk_In *IfxQspi_Sclk_In_pinTable[6][4] = {
    {
        &IfxQspi0_SCLKA_P20_11_IN,
        &IfxQspi0_SCLKB_P22_8_IN,
        &IfxQspi0_SCLKC_P22_7_IN,
        ((void *)0)
    },
    {
        &IfxQspi1_SCLKA_P10_2_IN,
        &IfxQspi1_SCLKB_P11_6_IN,
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi2_SCLKA_P15_3_IN,
        &IfxQspi2_SCLKB_P15_8_IN,
        ((void *)0),
        &IfxQspi2_SCLKD_P33_14_IN
    },
    {
        &IfxQspi3_SCLKA_P02_7_IN,
        &IfxQspi3_SCLKB_P10_8_IN,
        &IfxQspi3_SCLKC_P01_7_IN,
        ((void *)0)
    },
    {
        &IfxQspi4_SCLKA_P33_11_IN,
        &IfxQspi4_SCLKB_P22_3_IN,
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi5_SCLKA_P15_15_IN,
        ((void *)0),
        ((void *)0),
        ((void *)0)
    }
};

const IfxQspi_Sclk_Out *IfxQspi_Sclk_Out_pinTable[6][7] = {
    {
        &IfxQspi0_SCLK_P20_11_OUT,
        &IfxQspi0_SCLK_P20_13_OUT,
        &IfxQspi0_SCLK_P22_7_OUT,
        &IfxQspi0_SCLK_P22_8_OUT,
        ((void *)0),
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi1_SCLK_P10_2_OUT,
        &IfxQspi1_SCLK_P11_6_OUT,
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi2_SCLKN_P13_0_OUT,
        &IfxQspi2_SCLKP_P13_1_OUT,
        &IfxQspi2_SCLK_P15_3_OUT,
        &IfxQspi2_SCLK_P15_6_OUT,
        &IfxQspi2_SCLK_P15_8_OUT,
        &IfxQspi2_SCLK_P33_1_OUT,
        &IfxQspi2_SCLK_P33_14_OUT
    },
    {
        &IfxQspi3_SCLK_P01_7_OUT,
        &IfxQspi3_SCLK_P02_7_OUT,
        &IfxQspi3_SCLK_P10_8_OUT,
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi4_SCLKN_P22_0_OUT,
        &IfxQspi4_SCLKP_P22_1_OUT,
        &IfxQspi4_SCLK_P22_3_OUT,
        &IfxQspi4_SCLK_P33_11_OUT,
        ((void *)0),
        ((void *)0),
        ((void *)0)
    },
    {
        &IfxQspi5_SCLK_P15_15_OUT,
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0)
    }
};

const IfxQspi_Slsi_In *IfxQspi_Slsi_In_pinTable[6][2] = {
    {
        &IfxQspi0_SLSIA_P20_13_IN,
        &IfxQspi0_SLSIB_P20_9_IN
    },
    {
        &IfxQspi1_SLSIA_P11_10_IN,
        ((void *)0)
    },
    {
        &IfxQspi2_SLSIA_P15_2_IN,
        &IfxQspi2_SLSIB_P15_1_IN
    },
    {
        &IfxQspi3_SLSIA_P02_4_IN,
        &IfxQspi3_SLSIB_P01_3_IN
    },
    {
        &IfxQspi4_SLSIA_P33_10_IN,
        &IfxQspi4_SLSIB_P22_2_IN
    },
    {
        &IfxQspi5_SLSIA_P15_11_IN,
        ((void *)0)
    }
};

const IfxQspi_Slso_Out *IfxQspi_Slso_Out_pinTable[6][14][2] = {
    {
        {
            &IfxQspi0_SLSO0_P20_8_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO1_P20_9_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO2_P20_13_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO3_P11_10_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO4_P11_11_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO5_P11_2_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO6_P20_10_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO7_P33_5_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO8_P20_6_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO9_P20_3_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO10_P22_11_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO11_P23_6_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO12_P22_4_OUT,
            ((void *)0)
        },
        {
            &IfxQspi0_SLSO13_P15_0_OUT,
            ((void *)0)
        }
    },
    {
        {
            &IfxQspi1_SLSO0_P20_8_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO1_P20_9_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO2_P20_13_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO3_P11_10_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO4_P11_11_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO5_P11_2_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO6_P33_10_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO7_P33_5_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO8_P10_4_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO9_P10_5_OUT,
            ((void *)0)
        },
        {
            &IfxQspi1_SLSO10_P10_0_OUT,
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        }
    },
    {
        {
            &IfxQspi2_SLSO0_P15_2_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO1_P14_2_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO2_P14_6_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO3_P14_3_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO4_P14_7_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO5_P15_1_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO6_P33_13_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO7_P20_10_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO8_P20_6_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO9_P20_3_OUT,
            ((void *)0)
        },
        {
            &IfxQspi2_SLSO10_P33_2_OUT,
            &IfxQspi2_SLSO10_P34_3_OUT
        },
        {
            &IfxQspi2_SLSO11_P33_6_OUT,
            &IfxQspi2_SLSO11_P33_15_OUT
        },
        {
            &IfxQspi2_SLSO12_P32_6_OUT,
            &IfxQspi2_SLSO12_P33_4_OUT
        },
        {
            ((void *)0),
            ((void *)0)
        }
    },
    {
        {
            &IfxQspi3_SLSO0_P02_4_OUT,
            ((void *)0)
        },
        {
            &IfxQspi3_SLSO1_P02_0_OUT,
            ((void *)0)
        },
        {
            &IfxQspi3_SLSO2_P02_1_OUT,
            ((void *)0)
        },
        {
            &IfxQspi3_SLSO3_P00_5_OUT,
            &IfxQspi3_SLSO3_P02_2_OUT
        },
        {
            &IfxQspi3_SLSO4_P00_2_OUT,
            &IfxQspi3_SLSO4_P02_3_OUT
        },
        {
            &IfxQspi3_SLSO5_P02_8_OUT,
            &IfxQspi3_SLSO5_P02_12_OUT
        },
        {
            &IfxQspi3_SLSO6_P00_8_OUT,
            &IfxQspi3_SLSO6_P02_15_OUT
        },
        {
            &IfxQspi3_SLSO7_P00_9_OUT,
            &IfxQspi3_SLSO7_P02_13_OUT
        },
        {
            &IfxQspi3_SLSO8_P10_5_OUT,
            ((void *)0)
        },
        {
            &IfxQspi3_SLSO9_P01_3_OUT,
            ((void *)0)
        },
        {
            &IfxQspi3_SLSO10_P01_4_OUT,
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        }
    },
    {
        {
            &IfxQspi4_SLSO0_P33_10_OUT,
            ((void *)0)
        },
        {
            &IfxQspi4_SLSO1_P33_9_OUT,
            ((void *)0)
        },
        {
            &IfxQspi4_SLSO2_P33_8_OUT,
            ((void *)0)
        },
        {
            &IfxQspi4_SLSO3_P22_2_OUT,
            ((void *)0)
        },
        {
            &IfxQspi4_SLSO4_P02_12_OUT,
            &IfxQspi4_SLSO4_P23_5_OUT
        },
        {
            &IfxQspi4_SLSO5_P02_15_OUT,
            &IfxQspi4_SLSO5_P23_4_OUT
        },
        {
            &IfxQspi4_SLSO6_P02_13_OUT,
            &IfxQspi4_SLSO6_P23_1_OUT
        },
        {
            &IfxQspi4_SLSO7_P02_1_OUT,
            &IfxQspi4_SLSO7_P33_7_OUT
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        }
    },
    {
        {
            &IfxQspi5_SLSO0_P15_13_OUT,
            ((void *)0)
        },
        {
            &IfxQspi5_SLSO1_P15_12_OUT,
            ((void *)0)
        },
        {
            &IfxQspi5_SLSO2_P15_11_OUT,
            ((void *)0)
        },
        {
            &IfxQspi5_SLSO3_P15_6_OUT,
            ((void *)0)
        },
        {
            &IfxQspi5_SLSO4_P13_14_OUT,
            ((void *)0)
        },
        {
            &IfxQspi5_SLSO5_P13_9_OUT,
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        },
        {
            ((void *)0),
            ((void *)0)
        }
    }
};
