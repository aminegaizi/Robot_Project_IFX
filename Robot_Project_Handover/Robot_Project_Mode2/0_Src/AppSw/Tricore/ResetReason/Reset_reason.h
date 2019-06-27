/*
 * Reset_reason.h
 *
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
 */

#ifndef RESET_REASON_H_
#define RESET_REASON_H_

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


#endif /* RESET_REASON_H_ */
