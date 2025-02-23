/**
 * \file IfxFft_Fft.c
 * \brief FFT FFT details
 *
 * \version iLLD_1_0_1_7_0
 * \copyright Copyright (c) 2016 Infineon Technologies AG. All rights reserved.
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxFft_Fft.h"

/******************************************************************************/
/*----------------------------------Macros------------------------------------*/
/******************************************************************************/

#define IFXFFT_FFT_DATA_TRANSFER           (*((volatile uint64 *)IFXFFT_DATA_SPACE))

#define IFXFFT_FFT_WINDOW_TRANSFER         (*((volatile uint64 *)IFXFFT_WINDOW_SPACE))

#define IFXFFT_FFT_DMADISCARDCHANNELID_OPT (IFXFFT_FFT_DMA_CHANNEL_BASE + 2)

#define IFXFFT_FFT_DMAOUTPUTCHANNELID_OPT  (IFXFFT_FFT_DMA_CHANNEL_BASE + 1)

#define IFXFFT_FFT_DMAINPUTCHANNELID_OPT   (IFXFFT_FFT_DMA_CHANNEL_BASE)

#define IFXFFT_FFT_DMADISCARDCHANNELID     (dmaDiscard->channelId)

#define IFXFFT_FFT_DMAOUTPUTCHANNELID      (dmaOutput->channelId)

#define IFXFFT_FFT_DMAINPUTCHANNELID       (dmaInput->channelId)

#define IFXFFT_FFT_MOVE_BTR4               1

#define IFXFFT_FFT_MOVE_SIZE               IfxDma_ChannelMoveSize_256bit

#define IFXFFT_FFT_MOVE_DIV                4

#define IFXFFT_FFT_ISALIGNED(address) ((Ifx_AlignOn256((uint32)address) == (uint32)address))

/** \addtogroup IfxLld_Fft_Fft_ModuleFunctions
 * \{ */

/******************************************************************************/
/*-----------------------Private Function Prototypes--------------------------*/
/******************************************************************************/

/** \brief Configures the CSR register
 * \param config Configuration structure for the FFT job
 * \return Desired value to write into the Ifx_FFT.CSR register
 */
IFX_STATIC uint32 IfxFft_Fft_calcCSR(const IfxFft_Fft_JobConfig *config);

/** \} */

/** \addtogroup IfxLld_Fft_Fft_TransformFuntions
 * \{ */

/******************************************************************************/
/*-----------------------Private Function Prototypes--------------------------*/
/******************************************************************************/

/** \brief Unloads output data from the FFT engine
 * \param job FFT job handle
 * \return None
 */
IFX_STATIC void IfxFft_Fft_unloadOutput(IfxFft_Fft_Job *job);

/** \brief Loads input data into the FFT engine
 * \param job FFT job handle
 * \return None
 */
IFX_STATIC void IfxFft_Fft_loadInput(IfxFft_Fft_Job *job);

/** \} */

/******************************************************************************/
/*-----------------------Private Function Prototypes--------------------------*/
/******************************************************************************/

/** \brief Calculates the input counters and output counters
 * \param job job FFT job
 * \param jobConfig jobConfig Pointer to the job configuration
 * \return None
 */
IFX_STATIC void IfxFft_Fft_calcCounters(IfxFft_Fft_Job *job, const IfxFft_Fft_JobConfig *jobConfig);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

IFX_STATIC uint64 IfxFft_Fft_dummy256[IFXFFT_FFT_MOVE_DIV];

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

IFX_STATIC uint32 IfxFft_Fft_calcCSR(const IfxFft_Fft_JobConfig *config)
{
    uint32 csr =
        (config->fftLength << IFX_FFT_CSR_LENGTH_OFF) |
        (config->inputFormat << IFX_FFT_CSR_IN_FMT_OFF) |
        (config->outputFormat << IFX_FFT_CSR_OUT_FMT_OFF) |
        (config->operation << IFX_FFT_CSR_IFFT_OFF) |
        ((config->useWindowFunction ? 0U : 1U) << IFX_FFT_CSR_WIN_BYP_OFF);
    return csr;
}


void IfxFft_Fft_cloneAndLinkJobs(IfxFft_Fft_Job *originalJob, IfxFft_Fft_Job *newJob)
{
    *newJob              = *originalJob;
    originalJob->nextJob = newJob;
}


IFX_STATIC void IfxFft_Fft_unloadOutput(IfxFft_Fft_Job *job)
{
#if IFXFFT_FFT_DMA_SUPPORT
#if IFXFFT_FFT_HW_EXEC
    volatile Ifx_SRC_SRCR *srcr;
    sint16                 discardCount;

#if !IFXFFT_FFT_OPTIMIZED
    IfxDma_Dma_Channel    *dmaOutput  = &(job->fft->outputDmaChannel);
    IfxDma_Dma_Channel    *dmaDiscard = &(job->fft->discardDmaChannel);
    Ifx_DMA               *dmaSFR     = dmaOutput->dma;
#else
    Ifx_DMA               *dmaSFR     = (&MODULE_DMA);
#endif
#if IFXFFT_FFT_OPTIMIZED
    IfxDma_setChannelDestinationAddress(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID_OPT, job->outputPtr);
    IfxDma_setChannelTransferCount(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID_OPT, job->count64.output);
#else
    IfxDma_setChannelDestinationAddress(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID, job->outputPtr);
    IfxDma_setChannelTransferCount(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID, job->count64.output);
#endif
    discardCount = (job->count64.result - job->count64.output);

    if (discardCount > 0)
    {
#if IFXFFT_FFT_OPTIMIZED
        IfxDma_setChannelDestinationAddress(dmaSFR, IFXFFT_FFT_DMADISCARDCHANNELID_OPT, IfxFft_Fft_dummy256);
        IfxDma_setChannelTransferCount(dmaSFR, IFXFFT_FFT_DMADISCARDCHANNELID_OPT, discardCount);
#else
        IfxDma_setChannelDestinationAddress(dmaSFR, IFXFFT_FFT_DMADISCARDCHANNELID, IfxFft_Fft_dummy256);
        IfxDma_setChannelTransferCount(dmaSFR, IFXFFT_FFT_DMADISCARDCHANNELID, discardCount);
#endif

#if IFXFFT_FFT_OPTIMIZED
        srcr    = IfxDma_getSrcPointer(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID_OPT);
#else
        srcr    = IfxDma_getSrcPointer(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID);
#endif
        srcr->B = job->fft->srcrOutDis;
    }
    else
    {
#if IFXFFT_FFT_OPTIMIZED
        srcr    = IfxDma_getSrcPointer(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID_OPT);
#else
        srcr    = IfxDma_getSrcPointer(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID);
#endif
        srcr->B = job->fft->srcrOutEnd;
    }

#if IFXFFT_FFT_OPTIMIZED
    IfxDma_startChannelTransaction(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID_OPT);
#else
    IfxDma_startChannelTransaction(dmaSFR, IFXFFT_FFT_DMAOUTPUTCHANNELID);
#endif
#endif

#else
    sint16  i;
    uint64 *output64;

    output64 = job->outputPtr;

    for (i = 0; i < job->count64.output; i++)
    {
        *(output64++) = IFXFFT_FFT_DATA_TRANSFER;
    }

    for ( ; i < job->count64.result; i++)
    {
        volatile uint64 dummy64 = IFXFFT_FFT_DATA_TRANSFER;

        if (dummy64) // avoid warning message (unused variable)
        {}
    }

#endif
}


void IfxFft_Fft_initJob(IfxFft_Fft_Job *job, const IfxFft_Fft_JobConfig *jobConfig)
{
    // take over FFT handle
    job->fft     = jobConfig->fft;
    job->nextJob = NULL_PTR;

    // engine control
    job->csr.U     = IfxFft_Fft_calcCSR(jobConfig);
    job->inputPtr  = jobConfig->inputPtr;
    job->outputPtr = jobConfig->outputPtr;

    // move counters
    IfxFft_Fft_calcCounters(job, jobConfig);

    // config check
    uint16 fftLength = IfxFft_getLengthFromCode(jobConfig->fftLength);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, fftLength <= IFXFFT_MAX_LENGTH);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, jobConfig->inputLength > 0);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, jobConfig->outputLength > 0);
#if IFXFFT_FFT_DMA_SUPPORT
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, fftLength == jobConfig->inputLength);
#else
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, fftLength >= jobConfig->inputLength);
#endif
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, fftLength >= jobConfig->outputLength);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, IFXFFT_FFT_ISALIGNED(jobConfig->outputLength));
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, IFXFFT_FFT_ISALIGNED(job->inputPtr));
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, IFXFFT_FFT_ISALIGNED(job->outputPtr));
}


void IfxFft_Fft_initJobConfig(IfxFft_Fft_JobConfig *config, IfxFft_Fft *fft)
{
    config->fft               = fft;
    config->inputLength       = 256;
    config->outputLength      = 256;
    config->fftLength         = IfxFft_Length_256;
    config->inputFormat       = IfxFft_Input_realSInt32;
    config->outputFormat      = IfxFft_Output_complexSInt32;
    config->operation         = IfxFft_Operation_fft;
    config->useWindowFunction = FALSE;
    config->inputPtr          = NULL_PTR;
    config->outputPtr         = NULL_PTR;
}


void IfxFft_Fft_initModule(IfxFft_Fft *fft, const IfxFft_Fft_Config *config)
{
#if !IFXFFT_FFT_OPTIMIZED
    Ifx_FFT *fftSFR = config->fft;
    Ifx_LMU *lmuSFR = config->lmu;

    fft->fft = fftSFR;
    fft->lmu = lmuSFR;
#else
    Ifx_FFT *fftSFR = (&MODULE_FFT);
    Ifx_LMU *lmuSFR = (&MODULE_LMU);
#endif
#if IFXFFT_FFT_DMA_SUPPORT

    fft->inputIdx = 0;
    fft->job[0]   = 0;
    fft->job[1]   = 0;
#endif

    if (IfxFft_isModuleEnabled(fftSFR) == FALSE)
    {
        IfxFft_enableModule(fftSFR, lmuSFR);
    }

#if IFXFFT_FFT_DMA_SUPPORT
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->outputPriority > 0);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->inputPriority > 0);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->intraPriority > 0);

    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->inputDmaChannelId != IfxDma_ChannelId_none);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->outputDmaChannelId != IfxDma_ChannelId_none);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->discardDmaChannelId != IfxDma_ChannelId_none);

    IfxFft_Fft_initDma(fft, config);
#else
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->typeOfService != IfxSrc_Tos_dma);

    if (config->outputPriority > 0)
    {
        volatile Ifx_SRC_SRCR *srcr;
        // FFT DONE as ISR output
        srcr = IfxFft_getSrcPointerDone(fftSFR);
        IfxSrc_init(srcr, config->typeOfService, config->outputPriority);
        IfxSrc_enable(srcr);
    }

#endif
}


void IfxFft_Fft_initModuleConfig(IfxFft_Fft_Config *config, Ifx_FFT *fft, Ifx_LMU *lmu)
{
#if !IFXFFT_FFT_OPTIMIZED
    config->fft = fft;
    config->lmu = lmu;
#endif

#if IFXFFT_FFT_DMA_SUPPORT
#if IFXFFT_FFT_OPTIMIZED
    config->inputDmaChannelId   = IFXFFT_FFT_DMA_CHANNEL_BASE;
    config->outputDmaChannelId  = IFXFFT_FFT_DMA_CHANNEL_BASE + 1;
    config->discardDmaChannelId = IFXFFT_FFT_DMA_CHANNEL_BASE + 2;
#else
    config->fft                 = fft;
    config->lmu                 = lmu;
    config->inputDmaChannelId   = IfxDma_ChannelId_none;
    config->outputDmaChannelId  = IfxDma_ChannelId_none;
    config->discardDmaChannelId = IfxDma_ChannelId_none;
#endif
#endif
    config->inputPriority  = 0;
    config->outputPriority = 0;
    config->typeOfService  = IfxSrc_Tos_cpu0;
}


void IfxFft_Fft_initWindow(IfxFft_Fft *fft, const uint64 *windowData)
{
    int           i;
    const uint64 *ptr = windowData;

#if !IFXFFT_FFT_OPTIMIZED
    Ifx_FFT      *fftSFR = fft->fft;
#else
    Ifx_FFT      *fftSFR = (&MODULE_FFT);
#endif

    /*IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, MODULE_LMU.MEMCON.B.FFTPFT == 0);*/
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, !IfxFft_isEngineBusy(fftSFR));
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, IfxFft_isReadyForStart(fftSFR));

    uint64 *wmem = (uint64 *)IFXFFT_WINDOW_SPACE;

    for (i = 0; i < (IFXFFT_MAX_WINDOW_LENGTH / (sizeof(uint64) / sizeof(uint16))); i++)
    {
        *(wmem++) = *(ptr++);
    }
}


void IfxFft_Fft_isrInput(IfxFft_Fft *fft)
{
#if IFXFFT_FFT_DMA_SUPPORT

#if IFXFFT_FFT_PIPELINED
    IfxFft_Fft_Job *inputJob = fft->job[0];

    if (fft->inputIdx == 0)
    {
        if (inputJob != NULL_PTR)
        {
            IfxFft_Fft_startJob(inputJob);
        }
    }
    else
    {
        if (fft->flags & IFXFFT_FFT_FLAG_DONE)
        {
            fft->flags  = 0;
            IfxFft_Fft_unloadOutput(fft->job[1]);
            fft->job[1] = fft->job[1]->nextJob;
        }
        else
        {
            if (fft->inputIdx > fft->intraIdx)
            {
                fft->flags = IFXFFT_FFT_FLAG_INPUT;
            }
        }
    }

    if (fft->inputIdx == IFXFFT_FFT_NUM_JOBS)
    {
        __debug();
    }

    fft->inputIdx++;

#endif
#endif
}


void IfxFft_Fft_isrOutput(IfxFft_Fft *fft)
{
#if IFXFFT_FFT_PIPELINED
    IfxFft_Fft_Job *outputJob = fft->job[1];

    if (outputJob != NULL_PTR)
    {
        if (outputJob->nextJob != NULL_PTR)
        {
            IfxFft_Fft_Job *inputJob = fft->job[0];

            if (inputJob != NULL_PTR)
            {
                IfxFft_Fft_startJob(inputJob);
            }
            else
            {
                if (fft->flags & IFXFFT_FFT_FLAG_DONE)
                {
                    fft->flags  = 0;
                    IfxFft_Fft_unloadOutput(outputJob);
                    fft->job[1] = outputJob->nextJob;
                }
                else
                {
                    fft->flags = IFXFFT_FFT_FLAG_INPUT;
                }
            }
        }
        else
        {
            if (fft->flags & IFXFFT_FFT_FLAG_DONE)
            {
                fft->flags  = 0;
                IfxFft_Fft_unloadOutput(outputJob);
                fft->job[1] = outputJob->nextJob;
            }
            else
            {
                fft->flags = IFXFFT_FFT_FLAG_INPUT;
            }
        }
    }

#else
    IfxFft_Fft_Job *outputJob = fft->job[0];

#if !IFXFFT_FFT_DMA_SUPPORT
    IfxFft_Fft_unloadOutput(outputJob);
#endif

    if (outputJob->nextJob != NULL_PTR)
    {
        boolean result = IfxFft_Fft_startJob(outputJob->nextJob);
        IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, result);
    }
    else
    {
        fft->job[0] = NULL_PTR;
    }

#endif
}


IFX_STATIC void IfxFft_Fft_loadInput(IfxFft_Fft_Job *job)
{
#if IFXFFT_FFT_DMA_SUPPORT

#if !IFXFFT_FFT_OPTIMIZED
    IfxDma_Dma_Channel *dmaInput = &job->fft->inputDmaChannel;
    Ifx_DMA            *dmaSFR   = dmaInput->dma;
#else
    Ifx_DMA            *dmaSFR   = (&MODULE_DMA);
#endif
#if IFXFFT_FFT_HW_EXEC
#if IFXFFT_FFT_OPTIMIZED
    IfxDma_setChannelSourceAddress(dmaSFR, IFXFFT_FFT_DMAINPUTCHANNELID_OPT, job->inputPtr);
    IfxDma_setChannelTransferCount(dmaSFR, IFXFFT_FFT_DMAINPUTCHANNELID_OPT, job->count64.input);
    IfxDma_startChannelTransaction(dmaSFR, IFXFFT_FFT_DMAINPUTCHANNELID_OPT);
#else
    IfxDma_setChannelSourceAddress(dmaSFR, IFXFFT_FFT_DMAINPUTCHANNELID, job->inputPtr);
    IfxDma_setChannelTransferCount(dmaSFR, IFXFFT_FFT_DMAINPUTCHANNELID, job->count64.input);
    IfxDma_startChannelTransaction(dmaSFR, IFXFFT_FFT_DMAINPUTCHANNELID);
#endif
#endif
#else
    sint16        i;
    const uint64 *input64 = job->inputPtr;

    for (i = 0; i < job->count64.input; i++)
    {
        IFXFFT_FFT_DATA_TRANSFER = *(input64++);
    }

    for ( ; i < job->count64.expect; i++)
    {
        IFXFFT_FFT_DATA_TRANSFER = (uint64)0ULL;
    }

#endif
}


void IfxFft_Fft_modifyDataPointers(IfxFft_Fft_Job *job, const void *inputPtr, void *outputPtr)
{
    job->inputPtr  = inputPtr;
    job->outputPtr = outputPtr;
}


boolean IfxFft_Fft_startJob(IfxFft_Fft_Job *job)
{
    IfxFft_Fft *fft    = job->fft;
#if !IFXFFT_FFT_OPTIMIZED
    Ifx_FFT    *fftSFR = fft->fft;
#else
    Ifx_FFT    *fftSFR = (&MODULE_FFT);
#endif
    boolean     result = IfxFft_isReadyForStart(fftSFR);

    if (result != FALSE)
    {
        IfxFft_Fft_triggerEngine(fftSFR, job->csr.U);
#if IFXFFT_FFT_PIPELINED

        if (fft->job[1] == NULL_PTR)
        {
            fft->inputIdx = 0;
            fft->intraIdx = 0;
            fft->job[1]   = job;
            fft->flags    = 0;
        }

#endif
        IfxFft_Fft_loadInput(job);

#if IFXFFT_FFT_PIPELINED
        fft->job[0] = job->nextJob;
#else
        fft->job[0] = job;
#endif
    }

    return result;
}


IFX_STATIC void IfxFft_Fft_calcCounters(IfxFft_Fft_Job *job, const IfxFft_Fft_JobConfig *jobConfig)
{
    uint16 shift;

    /* input counters */
    if (jobConfig->inputFormat == IfxFft_Input_complexSInt32)
    {
        shift = 0;
    }
    else if (jobConfig->inputFormat == IfxFft_Input_realSInt16)
    {
        shift = 2;
    }
    else
    {
        shift = 1;
    }

    uint16 fftLength = IfxFft_getLengthFromCode(jobConfig->fftLength);
#if IFXFFT_FFT_DMA_SUPPORT
    job->count64.input  = (jobConfig->inputLength >> shift) / IFXFFT_FFT_MOVE_DIV;
    job->count64.expect = (fftLength >> shift) / IFXFFT_FFT_MOVE_DIV;
#else
    job->count64.input  = jobConfig->inputLength >> shift;
    job->count64.expect = fftLength >> shift;
#endif
    /* output counters */
    shift               = (jobConfig->outputFormat == IfxFft_Output_complexSInt32) ? 0 : 1;
#if IFXFFT_FFT_DMA_SUPPORT
    job->count64.result = (fftLength >> shift) / IFXFFT_FFT_MOVE_DIV;
    job->count64.output = (jobConfig->outputLength >> shift) / IFXFFT_FFT_MOVE_DIV;
#else
    job->count64.result = fftLength >> shift;
    job->count64.output = jobConfig->outputLength >> shift;
#endif
}


void IfxFft_Fft_isrIntra(IfxFft_Fft *fft)
{
#if IFXFFT_FFT_DMA_SUPPORT

# if IFXFFT_FFT_PIPELINED

    if (fft->intraIdx == 0)
    {
        fft->flags  = 0;
        IfxFft_Fft_unloadOutput(fft->job[1]);
        fft->job[1] = fft->job[1]->nextJob;
    }
    else
    {
        if (fft->flags & IFXFFT_FFT_FLAG_INPUT)
        {
            fft->flags  = 0;
            IfxFft_Fft_unloadOutput(fft->job[1]);
            fft->job[1] = fft->job[1]->nextJob;
        }
        else
        {
            fft->flags = IFXFFT_FFT_FLAG_DONE;
        }
    }

    fft->intraIdx++;
# else
    IfxFft_Fft_unloadOutput(fft->job[0]);
# endif
#endif
}


void IfxFft_Fft_initDma(IfxFft_Fft *fft, const IfxFft_Fft_Config *config)
{
#if IFXFFT_FFT_DMA_SUPPORT
#if !IFXFFT_FFT_OPTIMIZED
    Ifx_DMA                 *dmaSFR            = &MODULE_DMA;
    Ifx_FFT                 *fftSFR            = config->fft;
    IfxDma_Dma_Channel      *inputDmaChannel   = &fft->inputDmaChannel;
    IfxDma_Dma_Channel      *discardDmaChannel = &fft->discardDmaChannel;
    IfxDma_Dma_Channel      *outputDmaChannel  = &fft->outputDmaChannel;
#else
    Ifx_FFT                 *fftSFR            = (&MODULE_FFT);
    Ifx_DMA                 *dmaSFR            = (&MODULE_DMA);
    IfxDma_Dma_Channel       dmaChannel;
    IfxDma_Dma_Channel      *inputDmaChannel   = &dmaChannel;
    IfxDma_Dma_Channel      *discardDmaChannel = &dmaChannel;
    IfxDma_Dma_Channel      *outputDmaChannel  = &dmaChannel;
#endif

    IfxDma_Dma               dma;
    IfxDma_Dma_createModuleHandle(&dma, dmaSFR);

    IfxDma_Dma_ChannelConfig dmaCfg;
    IfxDma_Dma_initChannelConfig(&dmaCfg, &dma);

    dmaCfg.requestMode                     = IfxDma_ChannelRequestMode_completeTransactionPerRequest;
    dmaCfg.operationMode                   = IfxDma_ChannelOperationMode_continuous;
    dmaCfg.moveSize                        = IFXFFT_FFT_MOVE_SIZE;
    dmaCfg.sourceAddressCircularRange      = IfxDma_ChannelIncrementCircular_none;
    dmaCfg.destinationAddressCircularRange = IfxDma_ChannelIncrementCircular_none;

    {
        /* output channel */
        dmaCfg.channelId               = config->outputDmaChannelId;
        dmaCfg.hardwareRequestEnabled  = FALSE; // will be triggered via software
        dmaCfg.channelInterruptEnabled = TRUE;  // trigger interrupt after transaction

        // source address is fixed; use circular mode to stay at this address for each move
        dmaCfg.sourceAddress               = IFXFFT_DATA_SPACE;
        dmaCfg.sourceCircularBufferEnabled = TRUE;

        // destination address and transfer count will be configured during runtime
        dmaCfg.destinationAddress               = 0;
        dmaCfg.destinationCircularBufferEnabled = FALSE;
        dmaCfg.transferCount                    = 0;

        IfxDma_Dma_initChannel(outputDmaChannel, &dmaCfg);
    }
    {
        /* discard channel, reuse most configuration of output channel */
        dmaCfg.channelId              = config->discardDmaChannelId;
        dmaCfg.hardwareRequestEnabled = TRUE;  // will be triggered via output DMA channel
        IfxDma_Dma_initChannel(discardDmaChannel, &dmaCfg);
    }
    {
        /* input channel */
        IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->inputDmaChannelId != config->outputDmaChannelId);
        dmaCfg.channelId               = config->inputDmaChannelId;
        dmaCfg.hardwareRequestEnabled  = FALSE; // will be triggered via software
#if IFXFFT_FFT_PIPELINED
        dmaCfg.channelInterruptEnabled = TRUE;  // trigger interrupt after transaction
#else
        dmaCfg.channelInterruptEnabled = FALSE; // no interrupt at end of transaction
#endif
        // source address and transfer count will be configured during runtime
        dmaCfg.sourceAddress               = 0;
        dmaCfg.sourceCircularBufferEnabled = FALSE;
        dmaCfg.transferCount               = 0;

        // destination address is fixed; use circular mode to stay at this address for each move
        dmaCfg.destinationAddress               = IFXFFT_DATA_SPACE;
        dmaCfg.destinationCircularBufferEnabled = TRUE;

        IfxDma_Dma_initChannel(inputDmaChannel, &dmaCfg);
    }

    {
        volatile Ifx_SRC_SRCR *srcr;
#if IFXFFT_FFT_PIPELINED
        //Route DMA input SRC to CPU as ISR input
        srcr = IfxDma_getSrcPointer(dmaSFR, config->inputDmaChannelId);
        IfxSrc_init(srcr, config->typeOfService, config->inputPriority);
        IfxSrc_enable(srcr);
#endif
        //Route FFT DONE SRC to CPU as ISR midjob
        srcr = IfxFft_getSrcPointerDone(fftSFR);
        IfxSrc_init(srcr, config->typeOfService, config->intraPriority);
        IfxSrc_enable(srcr);

        //Route output DMA request to discard DMA
        srcr = IfxDma_getSrcPointer(dmaSFR, config->outputDmaChannelId);
        IfxSrc_init(srcr, IfxSrc_Tos_dma, (Ifx_Priority)config->discardDmaChannelId);
        IfxSrc_enable(srcr);
        fft->srcrOutDis = srcr->B;

        //Route DMA discard interrupt to CPU as ISR output
        srcr = IfxDma_getSrcPointer(dmaSFR, config->discardDmaChannelId);
        IfxSrc_init(srcr, config->typeOfService, config->outputPriority);
        IfxSrc_enable(srcr);
        fft->srcrOutEnd = srcr->B;
    }
#endif
}
