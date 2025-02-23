/**
 * \file IfxFft_Fft.h
 * \brief FFT FFT details
 * \ingroup IfxLld_Fft
 *
 * \version iLLD_1_0_1_7_0
 * \copyright Copyright (c) 2017 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * \defgroup IfxLld_Fft_Fft_Usage How to use the FFT driver?
 * \ingroup IfxLld_Fft
 *
 * The FFT interface driver provides a default FFT configuration for calculating forward and inverse FFTs of lengths 8 to 1024 (powers of 2 only) of real or complex input operands.
 *
 * In the following sections it will be described, how to integrate the driver into the application framework.
 *
 * \section IfxLld_Fft_Fft_Preparation Preparation
 * \subsection IfxLld_Fft_Fft_Include Include Files
 *
 * Include following header file into your C code:
 *
 * \code
 *     #include <Fft/Fft/IfxFft_Fft.h>
 * \endcode
 *
 * \subsection IfxLld_Fft_Fft_Variables Variables
 *
 * Declare the FFT handle, FFT job handle and the input output locations as global variables in your C code:
 *
 * \code
 *     // FFT window length
 *     #define FFT_LENGTH 512
 *
 *     // source waveform (must be 256bit aligned!)
 *     __attribute__ ((aligned(256))) sint32 fftIn[FFT_LENGTH] = {
 *     #include "sinewave.inc"
 *     };
 *
 *     // FFT result (must be 256bit aligned!)
 *     __attribute__ ((aligned(256))) sint32 fftOut[FFT_LENGTH*2];
 *
 *     // used globally
 *     IfxFft_Fft fft;
 *     IfxFft_Fft_Job fftJob;
 *
 *     volatile uint32 fftInterruptCounter;
 * \endcode
 *
 * \subsection IfxLld_Fft_Fft_Interrupt Interrupt Handler Installation
 *
 * See also \ref IfxLld_Cpu_Irq_Usage
 *
 * Define priorities for the Interrrupt handlers. This is normally done in the Ifx_IntPrioDef.h file:
 * \code
 *     // priorities are normally defined in Ifx_IntPrioDef.h
 *     #define ISR_PRIORITY_FFT_OUTPUT 1
 *     #define ISR_PRIORITY_FFT_INPUT  2
 *     #define ISR_PRIORITY_FFT_INTRA  3
 * \endcode
 *
 * Add the interrupt service routines to your C code. They have to call the FFT interrupt handlers by passing the fftJob handle:
 * \code
 *     IFX_INTERRUPT(ISR_Fft_intra, 0, ISR_PRIORITY_FFT_INTRA)
 *     {
 *         IfxFft_Fft_isrIntra(&fft);
 *     }
 *
 *     IFX_INTERRUPT(ISR_Fft_input, 0, ISR_PRIORITY_FFT_INPUT)
 *     {
 *         IfxFft_Fft_isrInput(&fft);
 *     }
 *
 *     IFX_INTERRUPT(ISR_Fft_output, 0, ISR_PRIORITY_FFT_output)
 *     {
 *         ++fftInterruptCounter;
 *
 *         IfxFft_Fft_isrOutput(&fft);
 *
 *         // do the next transform:
 *         while (IfxFft_Fft_startJob(&fftJob) == FALSE) {}
 *     }
 * \endcode
 *
 * Finally install the interrupt handlers in your initialisation function:
 * \code
 *     // install interrupt handlers
 *     IfxCpu_Irq_installInterruptHandler(&ISR_Fft_input, ISR_PRIORITY_FFT_INPUT);
 *     IfxCpu_Irq_installInterruptHandler(&ISR_Fft_output, ISR_PRIORITY_FFT_OUTPUT);
 *     IfxCpu_enableInterrupts();
 * \endcode
 *
 * \subsection IfxLld_Fft_Fft_InitModule Module Initialisation
 *
 * The module initialisation can be done in the same function. Here an example:
 * \code
 *     // create module config
 *     IfxFft_Fft_Config fftConfig;
 *     IfxFft_Fft_initModuleConfig(&fftConfig, &MODULE_FFT, &MODULE_LMU);
 *
 *     // configure interrupts
 *     fftConfig.inputPriority = ISR_PRIORITY_FFT_INPUT;
 *     fftConfig.intraPriority = ISR_PRIORITY_FFT_INTRA;
 *     fftConfig.outputPriority = ISR_PRIORITY_FFT_OUTPUT;
 *     fftConfig.typeOfService = IfxCpu_Irq_getTos(IfxCpu_getCoreIndex());
 *
 *     // use DMA channels for input/output transfers
 *     fftConfig.inputDmaChannelId = IfxDma_ChannelId_4;
 *     fftConfig.outputDmaChannelId = IfxDma_ChannelId_5;
 *     fftConfig.discardDmaChannelId = IfxDma_ChannelId_6;
 *
 *     // initialize module
 *     // IfxFft_Fft fft; // defined globally
 *     IfxFft_Fft_initModule(&fft, &fftConfig);
 * \endcode
 *
 * \subsection IfxLld_Fft_Fft_InitJob Job Initialisation
 *
 * The FFT job initialisation can also be done in the same function. Here an example:
 * \code
 *     // create FFT job config
 *     IfxFft_Fft_JobConfig fftJobConfig;
 *     IfxFft_Fft_initJobConfig(&fftJobConfig, &fft);
 *
 *     // customize job
 *     fftJobConfig.fftLength = IfxFft_Length_512;
 *
 *     fftJobConfig.inputFormat = IfxFft_Input_realSInt32;
 *     fftJobConfig.inputPtr = (void *)IFXCPU_GLB_ADDR_DSPR(IfxCpu_getCoreId(), (uint32)fftIn);
 *     fftJobConfig.inputLength = FFT_LENGTH;
 *
 *     fftJobConfig.outputFormat = IfxFft_Output_complexSInt32;
 *     fftJobConfig.outputPtr = (void *)IFXCPU_GLB_ADDR_DSPR(IfxCpu_getCoreId(), (uint32)fftOut);
 *     fftJobConfig.outputLength = FFT_LENGTH;
 *
 *     // initialize FFT job
 *     // IfxFft_Fft_Job fftJob; // defined globally
 *     IfxFft_Fft_initJob(&fftJob, &fftJobConfig);
 * \endcode
 *
 * The FFT is ready for use now!
 *
 *
 * \section IfxLld_Fft_Fft_TransformFunctions Transform Functions
 *
 * The FFT driver provides simple function to perform the transforms.
 *
 * This means: you only have to start the FFT job with pre configured job handle and the transform will be done automatically by the FFT engine and an interrupt will be raised, indicating the end of treansform(DONE).
 *
 * \code
 *     // start job until return TRUE.
 *     while (IfxFft_Fft_startJob(&fftJob) == FALSE) {}
 *
 *     // wait for 3 interrupts
 *     while( fftInterruptCounter < 3 );
 * \endcode
 *
 * \defgroup IfxLld_Fft_Fft FFT
 * \ingroup IfxLld_Fft
 * \defgroup IfxLld_Fft_Fft_DataStructures Data Structures
 * \ingroup IfxLld_Fft_Fft
 * \defgroup IfxLld_Fft_Fft_ModuleFunctions Module Functions
 * \ingroup IfxLld_Fft_Fft
 * \defgroup IfxLld_Fft_Fft_InterruptFunctions Interrupt Functions
 * \ingroup IfxLld_Fft_Fft
 * \defgroup IfxLld_Fft_Fft_TransformFuntions Transform Funtions
 * \ingroup IfxLld_Fft_Fft
 */

#ifndef IFXFFT_FFT_H
#define IFXFFT_FFT_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_Utilities/Ifx_Assert.h"
#include "IfxFft_bf.h"
#include "Fft/Std/IfxFft.h"
#include "Dma/Dma/IfxDma_Dma.h"
#include "Scu/Std/IfxScuWdt.h"
#include "Cpu/Std/IfxCpu.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define IFXFFT_FFT_FLAG_INPUT (1)

#define IFXFFT_FFT_FLAG_DONE  (2)

#define IFXFFT_FFT_HW_EXEC    (1)

/******************************************************************************/
/*------------------------------Type Definitions------------------------------*/
/******************************************************************************/

typedef struct IfxFft_Fft_Job_s IfxFft_Fft_Job;

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Fft_Fft_DataStructures
 * \{ */
/** \brief Module handle
 */
typedef struct
{
    Ifx_FFT           *fft;                     /**< \brief Pointer to FFT registers. Used when (IFXFFT_FFT_OPTIMIZED == 0) */
    Ifx_LMU           *lmu;                     /**< \brief Pointer to LMU registers.Used when (IFXFFT_FFT_OPTIMIZED == 0) */
    IfxDma_Dma_Channel inputDmaChannel;         /**< \brief Input DMA channel. Used when (IFXFFT_FFT_DMA_SUPPORT != 0) && (IFXFFT_FFT_OPTIMIZED == 0) */
    IfxDma_Dma_Channel outputDmaChannel;        /**< \brief Output DMA channel.Used when (IFXFFT_FFT_DMA_SUPPORT != 0) && (IFXFFT_FFT_OPTIMIZED == 0) */
    IfxDma_Dma_Channel discardDmaChannel;       /**< \brief Discard DMA channel. Used when (IFXFFT_FFT_DMA_SUPPORT != 0) && (IFXFFT_FFT_OPTIMIZED == 0) */
    uint32             flags;                   /**< \brief Driver flags. Used when (IFXFFT_FFT_DMA_SUPPORT != 0) */
    uint32             inputIdx;                /**< \brief Input interrupt index. Used when (IFXFFT_FFT_DMA_SUPPORT != 0) */
    uint32             intraIdx;                /**< \brief Intra interrupt index. Used when (IFXFFT_FFT_DMA_SUPPORT != 0) */
    Ifx_SRC_SRCR_Bits  srcrOutDis;              /**< \brief Cache of discard DMA channel. Used when (IFXFFT_FFT_DMA_SUPPORT != 0) */
    Ifx_SRC_SRCR_Bits  srcrOutEnd;              /**< \brief Cache of end of output DMA channel. Used when (IFXFFT_FFT_DMA_SUPPORT != 0) */
    IfxFft_Fft_Job    *job[2];                  /**< \brief FFT job handle */
} IfxFft_Fft;

/** \brief Structure for counters
 */
typedef struct
{
    uint16 input;        /**< \brief Input count */
    uint16 expect;       /**< \brief Padding */
    uint16 output;       /**< \brief Output count */
    uint16 result;       /**< \brief Discard */
} IfxFft_Fft_Count64;

/** \} */

/** \addtogroup IfxLld_Fft_Fft_DataStructures
 * \{ */
/** \brief Configuration structure of the module
 */
typedef struct
{
    Ifx_FFT         *fft;                       /**< \brief Pointer to FFT registers.Used when (IFXFFT_FFT_OPTIMIZED == 0) */
    Ifx_LMU         *lmu;                       /**< \brief Pointer to LMU registers.Used when (IFXFFT_FFT_OPTIMIZED == 0) */
    Ifx_Priority     inputPriority;             /**< \brief "input loading finished" interrupt priority */
    Ifx_Priority     intraPriority;             /**< \brief "intra transfer" interrupt priority */
    Ifx_Priority     outputPriority;            /**< \brief "output unloading finished" interrupt priority */
    IfxSrc_Tos       typeOfService;             /**< \brief Type of interrupt service */
    IfxDma_ChannelId inputDmaChannelId;         /**< \brief Input DMA channel.Used when (IFXFFT_FFT_DMA_SUPPORT != 0) */
    IfxDma_ChannelId outputDmaChannelId;        /**< \brief Output DMA channel.Used when (IFXFFT_FFT_DMA_SUPPORT != 0) */
    IfxDma_ChannelId discardDmaChannelId;       /**< \brief DMA channel for discarding unused samples.  Used when (IFXFFT_FFT_DMA_SUPPORT != 0) */
} IfxFft_Fft_Config;

/** \brief Configuration structure for the FFT job
 */
typedef struct
{
    IfxFft_Fft      *fft;                     /**< \brief Pointer To FFT.Used when (IFXFFT_FFT_OPTIMIZED == 0) */
    uint16           inputLength;             /**< \brief Length of the input */
    uint16           outputLength;            /**< \brief Length of the output */
    IfxFft_Length    fftLength;               /**< \brief Length of the transform */
    IfxFft_Input     inputFormat;             /**< \brief Input format */
    IfxFft_Output    outputFormat;            /**< \brief Output format */
    IfxFft_Operation operation;               /**< \brief Operation (FFT / IFFT) */
    boolean          useWindowFunction;       /**< \brief Selection to use window function */
    IFX_CONST void  *inputPtr;                /**< \brief Pointer to input data */
    void            *outputPtr;               /**< \brief Pointer to output data */
} IfxFft_Fft_JobConfig;

/** \brief FFT job handle
 */
struct IfxFft_Fft_Job_s
{
    IfxFft_Fft        *fft;             /**< \brief Pointer to FFT registers. Used when (IFXFFT_FFT_OPTIMIZED == 0) */
    Ifx_FFT_CSR        csr;             /**< \brief FFT.CSR register duplicate */
    IFX_CONST void    *inputPtr;        /**< \brief Input pointer */
    void              *outputPtr;       /**< \brief Output pointer */
    IfxFft_Fft_Count64 count64;         /**< \brief Counters */
    IfxFft_Fft_Job    *nextJob;         /**< \brief Pointer to the next job */
};

/** \} */

/** \addtogroup IfxLld_Fft_Fft_ModuleFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Initialises the module
 * \param fft Module handle
 * \param config Configuration structure of the module
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Fft_Fft_Usage
 *
 */
IFX_EXTERN void IfxFft_Fft_initModule(IfxFft_Fft *fft, const IfxFft_Fft_Config *config);

/** \brief Fills the config structure with default values
 * \param config Configuration structure of the module
 * \param fft Pointer to FFT registers
 * \param lmu Pointer to LMU registers
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Fft_Fft_Usage
 *
 */
IFX_EXTERN void IfxFft_Fft_initModuleConfig(IfxFft_Fft_Config *config, Ifx_FFT *fft, Ifx_LMU *lmu);

/** \} */

/** \addtogroup IfxLld_Fft_Fft_InterruptFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief ISR input routine
 * \param fft Module handle
 * \return None
 */
IFX_EXTERN void IfxFft_Fft_isrInput(IfxFft_Fft *fft);

/** \brief ISR output routine
 * \param fft Module handle
 * \return None
 */
IFX_EXTERN void IfxFft_Fft_isrOutput(IfxFft_Fft *fft);

/** \} */

/** \addtogroup IfxLld_Fft_Fft_TransformFuntions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Clones and links the jobs
 * \param originalJob Current (original)FFT job handle
 * \param newJob Modified (new) FFT job handle
 * \return None
 */
IFX_EXTERN void IfxFft_Fft_cloneAndLinkJobs(IfxFft_Fft_Job *originalJob, IfxFft_Fft_Job *newJob);

/** \brief Initialises the FFT job
 * \param job FFT job handle
 * \param jobConfig Configuration structure for the FFT job
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Fft_Fft_Usage
 *
 */
IFX_EXTERN void IfxFft_Fft_initJob(IfxFft_Fft_Job *job, const IfxFft_Fft_JobConfig *jobConfig);

/** \brief Fills the job configuration structure with default values
 * \param config Configuration structure for the FFT job
 * \param fft Module handle
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Fft_Fft_Usage
 *
 */
IFX_EXTERN void IfxFft_Fft_initJobConfig(IfxFft_Fft_JobConfig *config, IfxFft_Fft *fft);

/** \brief Initialises the window transfer
 * \param fft Module handle
 * \param windowData Window data
 * \return None
 */
IFX_EXTERN void IfxFft_Fft_initWindow(IfxFft_Fft *fft, const uint64 *windowData);

/** \brief Updates the input and output pointers in the FFT job handle
 * \param job FFT job handle
 * \param inputPtr Input pointer
 * \param outputPtr Output pointer
 * \return None
 */
IFX_EXTERN void IfxFft_Fft_modifyDataPointers(IfxFft_Fft_Job *job, const void *inputPtr, void *outputPtr);

/** \brief Starts the FFT job
 * \param job FFT job handle
 * \return Module's ready for start (RFS) status (true / false)
 *
 * A coding example can be found in \ref IfxLld_Fft_Fft_Usage
 *
 */
IFX_EXTERN boolean IfxFft_Fft_startJob(IfxFft_Fft_Job *job);

/** \} */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \return None
 */
IFX_INLINE void IfxFft_Fft_triggerEngine(Ifx_FFT *fft, uint32 csr);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \return None
 */
IFX_EXTERN void IfxFft_Fft_isrIntra(IfxFft_Fft *fft);

/** \brief Initialization of DMA
 * \param fft fft Module handle
 * \param config pointing to config strucuture of fft
 * \return None
 */
IFX_EXTERN void IfxFft_Fft_initDma(IfxFft_Fft *fft, const IfxFft_Fft_Config *config);

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE void IfxFft_Fft_triggerEngine(Ifx_FFT *fft, uint32 csr)
{
#if IFXFFT_FFT_HW_EXEC
    fft->CSR.U = csr | (IFX_FFT_CSR_START_MSK << IFX_FFT_CSR_START_OFF);
#endif
}


#endif /* IFXFFT_FFT_H */
