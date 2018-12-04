/*
 * Gyroscope_i2c.h
 *
 *  Created on: 19.10.2018
 *      Author: nicolle
 */
#ifndef GYRO_H_
#define GYRO_H_
/******************************************************************************/
/*-----------------------------------Include-----------------------------------*/
/******************************************************************************/
#include "IfxI2c_I2c.h"
#include "IfxI2c_regdef.h"
#include "IfxPort.h"
#include "IfxScuCcu.h"
#include "IfxScuWdt.h"
#include "IfxScuWdt.h"
#include "IfxStm.h"
#include <stdio.h>
#include <math.h>
/******************************************************************************/
/*-----------------------------------Define-----------------------------------*/
/******************************************************************************/
#define I2C_BUFFER_SIZE 32   /**< \brief Tx/Rx Buffer size */
#define MPU9250_ADDRESS            0x68
#define MAG_ADDRESS                0x0C
#define GYRO_ADDRESS			   0x43
#define ACCEL_ADDRESS			   0x3B
#define MAG_REG_ADDRESS			   0x03

//----------------------------------Sensitivity----------------------------------

#define BITS_FS_250DPS              0x00
#define BITS_FS_500DPS              0x08
#define BITS_FS_1000DPS             0x10
#define BITS_FS_2000DPS             0x18
#define BITS_FS_2G                  0x00
#define BITS_FS_4G                  0x08
#define BITS_FS_8G                  0x10
#define BITS_FS_16G                 0x18
#define BITS_14bits_ADC				0x06
#define BITS_16bits_ADC				0x16

#define Acc_scale_2g       ((float)16384.0f) // LSB/g
#define Acc_scale_4g       ((float)8192.0f) // LSB/g
#define Acc_scale_8g       ((float)4096.0f) // LSB/g
#define Acc_scale_16g      ((float)2048.0f) // LSB/g

#define Gyro_scale_250dps   ((float)131.0f) // LSB/dps
#define Gyro_scale_500dps   ((float)65.5f) // LSB/dps
#define Gyro_scale_1000dps  ((float)32.8f) // LSB/dps
#define Gyro_scale_2000dps  ((float)16.4f) // LSB/dps

#define Mag_Scale_14bits ((float)1.7067f) //LSB/uT
#define Mag_Scale_16bits ((float)6.8267f) //LSB/uT

#define Temp_Scale ((float)333.87) //LSB/C°
#define Temp_Offset (float)21.0	   //C°
/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

typedef struct
{
    volatile uint8 i2cTxBuffer[I2C_BUFFER_SIZE];                  /**< \brief I2c Transmit buffer */
    volatile uint8 i2cRxBuffer[I2C_BUFFER_SIZE];                  /**< \brief I2c receive buffer */
} AppI2C_Buffer;

/** \brief I2cCpu global data */
typedef struct
{
    AppI2C_Buffer i2cBuffer;                       /**< \brief I2c buffer */
    struct
    {
    	IfxI2c_I2c               i2cHandle;            /**< \brief I2c handle */
    	IfxI2c_I2c_Device        i2cDev_Gyro_Accel;            /**< \brief I2c Device handle to RTC  */
    	IfxI2c_I2c_Device        i2cDev_Mag;
    }drivers;
} App_I2C;

typedef struct
{
	volatile float gyro_x;
	volatile float gyro_y;
	volatile float gyro_z;
} Gyro;

typedef struct
{
	volatile float acc_x;
	volatile float acc_y;
	volatile float acc_z;
} Acc;

typedef struct
{
	volatile float mag_x;
	volatile float mag_y;
	volatile float mag_z;
} Mag;

typedef struct
{
	volatile float grav_x;
	volatile float grav_y;
	volatile float grav_z;
} Gravity;

typedef struct
{
	Gyro Gyroscope;
	Acc Acceleration;
	Mag Magnetometer;
	volatile float gyro_scale_factor;
	volatile float acc_scale_factor;
	volatile float mag_scale_factor;
	volatile float temp_scale_factor;
} MPU_9265;

typedef struct
{
	Gravity Gravity;
	volatile float yaw;
	volatile float pitch;
	volatile float roll;
	volatile float yaw_offset;
	volatile float pitch_offset;
	volatile float roll_offset;
} YawPitchRoll;


void Init_gyro(void);
void Init_I2C(void);
void Init_MPU9265(void);
void Init_MPU9250(uint8,uint8);
void Init_Mag_AK8963(uint8);
void Read_I2C_Register(IfxI2c_I2c_Device *,uint8,int);
void GetAccel();

#endif //GYRO_H_
