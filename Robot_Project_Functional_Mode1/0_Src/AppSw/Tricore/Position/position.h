/*
 * position.h
 *
 *  Created on: 06.11.2018
 *      Author: Gaizi
 */
#ifndef POSITION_H_
#define POSITION_H_

#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"

#include "IfxPort.h"
#include <Stm/Std/IfxStm.h>
#include "PWM_config.h"
#include "Encoders_config.h"
#include <math.h>

#define LEN 100
#define WID 2
#define RADIUS 12.5 //Distance between the two wheels
#define CM 0.510
#define M_PI 3.14159265358979323846

void position_data();
void init_array();
void update_position();
void Find_error();

typedef struct
	{
		float x;
		float y;
		float theta;
	}old_position;

typedef struct
	{
		float x;
		float y;
		float theta;
	}current_position;

typedef struct
{
	float Position;
	float Angle;
}delta;

typedef struct
{
	float x;
	float y;
	float theta;
}desired_position;

typedef struct
{
	float linear;
	float angular;
}error;

typedef struct
{
	float dx;
	float dy;
}delta_ref;

#endif //POSTION_H_
