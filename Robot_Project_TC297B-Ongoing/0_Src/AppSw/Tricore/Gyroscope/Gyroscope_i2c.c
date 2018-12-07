/*
 * Gyroscope_i2c.c
 *
 *  Created on: 19.10.2018
 *      Author: nicolle
 */

#include "Gyroscope_i2c.h"


/******************************************************************************/
/*-----------------------------Global Variables--------------------------------*/
/******************************************************************************/



App_I2C I2C_Masters_Slaves;

MPU_9265 Mpu;
YawPitchRoll YPR;

IfxStm_CompareConfig Timerconfig;
IFX_INTERRUPT(STM_INTERRUPT, 0, 4);
extern Ifx_STM *stm0;

volatile float frequency;

volatile uint8 Data[32];

volatile Ifx_SizeT size;

volatile float Faccelx=0;
volatile float Faccely=0;
volatile float Faccelz=0;





void Init_I2C (void)
{
    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    // create config structure
    IfxI2c_I2c_Config i2cConfig;
    // fill structure with default values and Module address
    IfxI2c_I2c_initConfig(&i2cConfig, &MODULE_I2C0);
    // configure pins
    const IfxI2c_Pins pins = {&IfxI2c0_SCL_P02_5_INOUT, &IfxI2c0_SDA_P02_4_INOUT,IfxPort_PadDriver_ttlSpeed1};
    i2cConfig.pins = &pins;
    i2cConfig.baudrate = 400000; // 400 kHz
    // initialize module
    IfxI2c_I2c_initModule(&I2C_Masters_Slaves.drivers.i2cHandle, &i2cConfig);

    {
    	// create device config
    	IfxI2c_I2c_deviceConfig i2cDeviceConfig;
    	// fill structure with default values and i2c Handler
    	IfxI2c_I2c_initDeviceConfig(&i2cDeviceConfig, &I2C_Masters_Slaves.drivers.i2cHandle);
    	// set device specific values.
    	// configure Slave address as 8-bit value. in case of 7 bit address left shift it by 1.
    	// E.g in case of EEPROM,slave address is 7 bit represented as 0x50, after left shifting it by 1, it will be 0xa0
    	i2cDeviceConfig.deviceAddress = MPU9250_ADDRESS<<1; // device / slave address, RTCC and SRA;
    	// initialize the i2c device handle
    	IfxI2c_I2c_initDevice(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel, &i2cDeviceConfig);

    	i2cDeviceConfig.deviceAddress = MAG_ADDRESS<<1; // device / slave address, RTCC and SRA;
    	// initialize the i2c device handle
    	IfxI2c_I2c_initDevice(&I2C_Masters_Slaves.drivers.i2cDev_Mag, &i2cDeviceConfig);

    }


    I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0;
    I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0] = 0;

    IfxCpu_restoreInterrupts(interruptState);

  //return (0);
}
void Init_MPU9250(uint8 scale_gyro,uint8 scale_acc){

	//uint8 scale_gyro2=scale_gyro;
	//uint8 scale_acc2=scale_acc;

	switch (scale_gyro){
		      case (uint8) BITS_FS_250DPS:   Mpu.gyro_scale_factor = Gyro_scale_250dps;  break;
		      case (uint8) BITS_FS_500DPS:   Mpu.gyro_scale_factor = Gyro_scale_500dps; break;
		      case (uint8) BITS_FS_1000DPS:  Mpu.gyro_scale_factor = Gyro_scale_1000dps; break;
		      case (uint8) BITS_FS_2000DPS:  Mpu.gyro_scale_factor = Gyro_scale_2000dps; break;
		      default: Mpu.gyro_scale_factor = Gyro_scale_250dps;break;
	}

	switch (scale_acc){
			      case BITS_FS_2G:   Mpu.acc_scale_factor = Acc_scale_2g;  break;
			      case BITS_FS_4G:   Mpu.acc_scale_factor = Acc_scale_4g; break;
			      case BITS_FS_8G:   Mpu.acc_scale_factor = Acc_scale_8g; break;
			      case BITS_FS_16G:  Mpu.acc_scale_factor = Acc_scale_16g; break;
			      default: Mpu.acc_scale_factor = Acc_scale_2g; break;
	}
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x1B;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = scale_gyro;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x1C;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = scale_acc;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x37;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = 0x02;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);


}

void Init_Mag_AK8963(uint8 Adc_type){

	//uint8 Adc_type2=Adc_type;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x0A;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = Adc_type;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Mag,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	switch (Adc_type){
		      case BITS_14bits_ADC:   Mpu.mag_scale_factor = Mag_Scale_14bits;  break;
		      case BITS_16bits_ADC:   Mpu.mag_scale_factor = Mag_Scale_16bits; break;
	}

	Mpu.temp_scale_factor=Temp_Scale;
}

void Init_MPU9265(){

	Init_MPU9250(BITS_FS_500DPS,BITS_FS_2G);
	Init_Mag_AK8963(BITS_16bits_ADC);
	YPR.yaw_offset=0;
	YPR.pitch_offset=0;
	YPR.roll_offset=0;
}

void timer_compare()
{
       frequency = IfxStm_getFrequency(stm0);
       boolean interruptState = IfxCpu_disableInterrupts();

       IfxStm_initCompareConfig(&Timerconfig);
       Timerconfig.triggerPriority = 4;
       Timerconfig.typeOfService = IfxSrc_Tos_cpu0;
       Timerconfig.ticks = frequency;
       IfxStm_initCompare(stm0, &Timerconfig);
       IfxStm_enableComparatorInterrupt(stm0, Timerconfig.comparator);
       IfxCpu_restoreInterrupts(interruptState);
}


void Read_I2C_Register(IfxI2c_I2c_Device * Device_I2C,uint8 Register_Address,int Number_Received)
{

		int i;

		for(i=0;i<=sizeof(I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer);i++)
		{
			I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[i]=0;
			I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[i]=0;
		}
		I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = Register_Address;     //address of SECONDS register

		// write data to device as soon as it is ready
		while(IfxI2c_I2c_write(Device_I2C, &I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0], 1) == IfxI2c_I2c_Status_nak);

		// read the time registers
		while(IfxI2c_I2c_read(Device_I2C, &I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0], Number_Received) == IfxI2c_I2c_Status_nak);

}

void GetGyro()
{
	int i;
	sint16 bit_data;
	float data[3];
	for(i = 0; i < 3; i++) {
			Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,GYRO_ADDRESS+2*i,2);
	        bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];
	        data[i] = (float)bit_data;
	    }

	Mpu.Gyroscope.gyro_x=data[0]/Mpu.gyro_scale_factor;
	Mpu.Gyroscope.gyro_y=data[1]/Mpu.gyro_scale_factor;
	Mpu.Gyroscope.gyro_z=data[2]/Mpu.gyro_scale_factor;

}

void GetAccel()
{
	int i;
	sint16 bit_data;
	float data[3];
	for(i = 0; i < 3; i++) {
			Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,ACCEL_ADDRESS+2*i,2);
	        bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];
	        data[i] = (float)bit_data;
	    }

	Mpu.Acceleration.acc_x=data[0]/Mpu.acc_scale_factor;
	Mpu.Acceleration.acc_y=data[1]/Mpu.acc_scale_factor;
	Mpu.Acceleration.acc_z=data[2]/Mpu.acc_scale_factor;

}

void GetMag()
{
	int i;
	sint16 bit_data;
	float data[3];
	for(i = 0; i < 3; i++) {
			Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Mag,MAG_REG_ADDRESS+2*i,2);
			bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];
			data[i] = (float)bit_data;
		}

	Mpu.Magnetometer.mag_x=(data[0]*0,000001)/Mpu.mag_scale_factor;
	Mpu.Magnetometer.mag_y=(data[1]*0,000001)/Mpu.mag_scale_factor;
	Mpu.Magnetometer.mag_z=(data[2]*0,000001)/Mpu.mag_scale_factor;

}

void GetTemp()
{
	sint16 bit_data;
	float data[1];

	Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Mag,MAG_REG_ADDRESS,2);
	bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];
	data[0] = (float)bit_data;

	//Mpu.Quaternion.temp=((data[0]-Temp_Offset)/Mpu.temp_scale_factor)+Temp_Offset;
}
void GetQuaternion()
{
	GetMag();
	GetTemp();
}

void GetGravity()
{
	float x= Mpu.Magnetometer.mag_x;
	float y= Mpu.Magnetometer.mag_y;
	float z= Mpu.Magnetometer.mag_z;

//	YPR.Gravity.grav_x=2*(x*z-w*y);
//	YPR.Gravity.grav_y=2*(w*x+y*z);
//	YPR.Gravity.grav_z=w*w-x*x -y*y+z*z;
}
void GetYawPitchRoll()
{

	volatile float pitch=0;
	volatile float yaw=0;
	volatile float roll=0;

	GetAccel();
	GetMag();

	volatile float accelx=Mpu.Acceleration.acc_x/57.3;
	volatile float accely=Mpu.Acceleration.acc_y/57.3;
	volatile float accelz=Mpu.Acceleration.acc_y/57.3;

	Faccelx=accelx * 0.5 + (Faccelx * (1.0 - 0.5));
	Faccely=accely * 0.5 + (Faccely * (1.0 - 0.5));
	Faccelz=accelz * 0.5 + (Faccelz * (1.0 - 0.5));


	pitch=atan2(Faccely,(sqrt((Faccelx*Faccelx)+(Faccelz*Faccelz))));
	roll=atan2(-Faccelx,(sqrt((Faccely*Faccely)+(Faccelz*Faccelz))));
	//roll  = atan2(-Faccely, Faccelz);

	//pitch=atan2(gyroy,(sqrt((gyrox*gyrox)+(gyroz*gyroz))));
		//roll=atan2(-Fgyrox,(sqrt((Fgyroy*Fgyroy)+(Fgyroz*Fgyroz))));
	//roll  = atan2(-gyroy, gyroz);


	float Yh = (Mpu.Magnetometer.mag_y * cos(roll)) + (Mpu.Magnetometer.mag_z * sin(roll));
	float Xh = (Mpu.Magnetometer.mag_x * cos(pitch))+(Mpu.Magnetometer.mag_y * sin(roll)*sin(pitch)) + (Mpu.Magnetometer.mag_z * sin(roll) * sin(pitch));

	yaw =  atan2(-Yh, Xh);


	YPR.roll = roll*57.3;
	YPR.pitch = pitch*57.3;
	YPR.yaw = yaw*57.3;
}
void STM_INTERRUPT()
{
//


	   GetYawPitchRoll();
       IfxStm_clearCompareFlag(stm0, Timerconfig.comparator);
//       I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x3B;     //address of SECONDS register
//
//       // write data to device as soon as it is ready
//       while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel, &I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0], 1) == IfxI2c_I2c_Status_nak);
//
//       // read the time registers
//       while(IfxI2c_I2c_read(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel, &I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0], 2) == IfxI2c_I2c_Status_nak);
//

       IfxPort_togglePin(&MODULE_P13, 2);
       IfxStm_increaseCompare(stm0, Timerconfig.comparator, frequency/2);
}

void Demo(void)
{
	timer_compare();
	Init_I2C();
	Init_MPU9265();
	IfxPort_setPinMode(&MODULE_P13, 2,IfxPort_Mode_outputPushPullGeneral);
	while(1)
	{}

}
