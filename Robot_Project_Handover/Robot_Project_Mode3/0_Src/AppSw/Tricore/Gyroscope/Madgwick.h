/*
 * Madgwick.h
 *
 *  Created on: 10.01.2019
 *      Author: nicolle
 */

#ifndef MADGWICK_H_
#define MADGWICK_H_

#include <math.h>
#include "Gyroscope_i2c.h"
//#define sampleFreqDef   100.0f
//#define betaDef	0.1f            // 2 * proportional gain

void Madgwick_init();
void Madgwick_update(float,float,float,float,float,float,float,float,float);

void Madgwick_update2(float gx, float gy, float gz, float ax, float ay, float az, float mx, float my, float mz);

void Madgwick_updateIMU(float, float, float, float, float, float);
void computeAngles();
float Madgwick_invSqrt(float);
float Madgwick_getRoll();
float Madgwick_getPitch();
float Madgwick_getYaw();
void Madgwick_begin(float);
float Madgwick_getRollRadians();
float Madgwick_getPitchRadians();
float Madgwick_getYawRadians();



#endif /* MADGWICK_H_ */
