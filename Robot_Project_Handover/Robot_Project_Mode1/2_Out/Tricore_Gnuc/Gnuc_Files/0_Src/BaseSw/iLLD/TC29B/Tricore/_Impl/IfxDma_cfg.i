# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxDma_cfg.c"
# 1 "C:\\Robot_Project_Handover\\Robot_Project_Mode1//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxDma_cfg.c"
# 29 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxDma_cfg.c"
# 1 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxDma_cfg.h" 1
# 39 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxDma_cfg.h"
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
# 40 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxDma_cfg.h" 2
# 85 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxDma_cfg.h"
typedef enum
{
    IfxDma_ChannelId_none = -1,
    IfxDma_ChannelId_0 = 0,
    IfxDma_ChannelId_1,
    IfxDma_ChannelId_2,
    IfxDma_ChannelId_3,
    IfxDma_ChannelId_4,
    IfxDma_ChannelId_5,
    IfxDma_ChannelId_6,
    IfxDma_ChannelId_7,
    IfxDma_ChannelId_8,
    IfxDma_ChannelId_9,
    IfxDma_ChannelId_10,
    IfxDma_ChannelId_11,
    IfxDma_ChannelId_12,
    IfxDma_ChannelId_13,
    IfxDma_ChannelId_14,
    IfxDma_ChannelId_15,
    IfxDma_ChannelId_16,
    IfxDma_ChannelId_17,
    IfxDma_ChannelId_18,
    IfxDma_ChannelId_19,
    IfxDma_ChannelId_20,
    IfxDma_ChannelId_21,
    IfxDma_ChannelId_22,
    IfxDma_ChannelId_23,
    IfxDma_ChannelId_24,
    IfxDma_ChannelId_25,
    IfxDma_ChannelId_26,
    IfxDma_ChannelId_27,
    IfxDma_ChannelId_28,
    IfxDma_ChannelId_29,
    IfxDma_ChannelId_30,
    IfxDma_ChannelId_31,
    IfxDma_ChannelId_32,
    IfxDma_ChannelId_33,
    IfxDma_ChannelId_34,
    IfxDma_ChannelId_35,
    IfxDma_ChannelId_36,
    IfxDma_ChannelId_37,
    IfxDma_ChannelId_38,
    IfxDma_ChannelId_39,
    IfxDma_ChannelId_40,
    IfxDma_ChannelId_41,
    IfxDma_ChannelId_42,
    IfxDma_ChannelId_43,
    IfxDma_ChannelId_44,
    IfxDma_ChannelId_45,
    IfxDma_ChannelId_46,
    IfxDma_ChannelId_47,
    IfxDma_ChannelId_48,
    IfxDma_ChannelId_49,
    IfxDma_ChannelId_50,
    IfxDma_ChannelId_51,
    IfxDma_ChannelId_52,
    IfxDma_ChannelId_53,
    IfxDma_ChannelId_54,
    IfxDma_ChannelId_55,
    IfxDma_ChannelId_56,
    IfxDma_ChannelId_57,
    IfxDma_ChannelId_58,
    IfxDma_ChannelId_59,
    IfxDma_ChannelId_60,
    IfxDma_ChannelId_61,
    IfxDma_ChannelId_62,
    IfxDma_ChannelId_63,
    IfxDma_ChannelId_64,
    IfxDma_ChannelId_65,
    IfxDma_ChannelId_66,
    IfxDma_ChannelId_67,
    IfxDma_ChannelId_68,
    IfxDma_ChannelId_69,
    IfxDma_ChannelId_70,
    IfxDma_ChannelId_71,
    IfxDma_ChannelId_72,
    IfxDma_ChannelId_73,
    IfxDma_ChannelId_74,
    IfxDma_ChannelId_75,
    IfxDma_ChannelId_76,
    IfxDma_ChannelId_77,
    IfxDma_ChannelId_78,
    IfxDma_ChannelId_79,
    IfxDma_ChannelId_80,
    IfxDma_ChannelId_81,
    IfxDma_ChannelId_82,
    IfxDma_ChannelId_83,
    IfxDma_ChannelId_84,
    IfxDma_ChannelId_85,
    IfxDma_ChannelId_86,
    IfxDma_ChannelId_87,
    IfxDma_ChannelId_88,
    IfxDma_ChannelId_89,
    IfxDma_ChannelId_90,
    IfxDma_ChannelId_91,
    IfxDma_ChannelId_92,
    IfxDma_ChannelId_93,
    IfxDma_ChannelId_94,
    IfxDma_ChannelId_95,
    IfxDma_ChannelId_96,
    IfxDma_ChannelId_97,
    IfxDma_ChannelId_98,
    IfxDma_ChannelId_99,
    IfxDma_ChannelId_100,
    IfxDma_ChannelId_101,
    IfxDma_ChannelId_102,
    IfxDma_ChannelId_103,
    IfxDma_ChannelId_104,
    IfxDma_ChannelId_105,
    IfxDma_ChannelId_106,
    IfxDma_ChannelId_107,
    IfxDma_ChannelId_108,
    IfxDma_ChannelId_109,
    IfxDma_ChannelId_110,
    IfxDma_ChannelId_111,
    IfxDma_ChannelId_112,
    IfxDma_ChannelId_113,
    IfxDma_ChannelId_114,
    IfxDma_ChannelId_115,
    IfxDma_ChannelId_116,
    IfxDma_ChannelId_117,
    IfxDma_ChannelId_118,
    IfxDma_ChannelId_119,
    IfxDma_ChannelId_120,
    IfxDma_ChannelId_121,
    IfxDma_ChannelId_122,
    IfxDma_ChannelId_123,
    IfxDma_ChannelId_124,
    IfxDma_ChannelId_125,
    IfxDma_ChannelId_126,
    IfxDma_ChannelId_127
} IfxDma_ChannelId;
# 29 "0_Src/BaseSw/iLLD/TC29B/Tricore/_Impl/IfxDma_cfg.c" 2
