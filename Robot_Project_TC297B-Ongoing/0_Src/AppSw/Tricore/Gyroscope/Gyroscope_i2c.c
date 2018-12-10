/*
 * Gyroscope_i2c.c
 *
 *  Created on: 19.10.2018
 *      Author: nicolle

 	10/12/2018 Guilaume Nicolle : Finish I2C and get Yaw/Pitch/Roll

   This program is used to get back and process data from the MPU92/65 to determine the Yaw/Pitch/Roll of the robot.

   Inspired from demo I2C, Technical_Support\Users\JeanninM\_for_Sidoine\motors_MPU.zip\motors\0_Src\0_AppSw\Tricore\Motors\mpu or \Madgwick,
   https://bitbucket.org/cinqlair/mpu9250/src/0b38d94e630291eeff31fb0c1897425f64cb0c31/arduino/mpuarduino.ino?at=master&fileviewer=file-view-default
   https://gist.github.com/shoebahmedadeel/0d8ca4eaa65664492cf1db2ab3a9e572

   for dovcumentation see : - Register Map :https://www.invensense.com/wp-content/uploads/2015/02/RM-MPU-9250A-00-v1.6.pdf
   							- Datasheet : https://www.invensense.com/wp-content/uploads/2015/02/PS-MPU-9250A-01-v1.1.pdf
 */

#include "Gyroscope_i2c.h"


/******************************************************************************/
/*-----------------------------Global Variables--------------------------------*/
/******************************************************************************/



App_I2C I2C_Masters_Slaves;//Structure fir the I2C communication

MPU_9265 Mpu; //Contains all data from the MPU92/65
YawPitchRoll YPR;//Contains Yaw/Pitch/Roll

volatile uint8 Data[32];//Used for  the read of the data

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
    i2cConfig.baudrate = 400000; // 400 kHz baudrate
    // initialize module
    IfxI2c_I2c_initModule(&I2C_Masters_Slaves.drivers.i2cHandle, &i2cConfig);

    //Init devices config
    {
    	// create device config
    	IfxI2c_I2c_deviceConfig i2cDeviceConfig;
    	// fill structure with default values and i2c Master
    	IfxI2c_I2c_initDeviceConfig(&i2cDeviceConfig, &I2C_Masters_Slaves.drivers.i2cHandle);
    	// set device specific values.
    	// configure Slave address as 8-bit value. in case of 7 bit address left shift it by 1.
    	i2cDeviceConfig.deviceAddress = MPU9250_ADDRESS<<1; // slave address of the MPU92/50(gyroscope+accelerometer)
    	// initialize the i2c device handle
    	IfxI2c_I2c_initDevice(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel, &i2cDeviceConfig); //(device to configure, device config)

    	i2cDeviceConfig.deviceAddress = MAG_ADDRESS<<1; // slave address of the AK8963(magnetometer)
    	// initialize the i2c device handle
    	IfxI2c_I2c_initDevice(&I2C_Masters_Slaves.drivers.i2cDev_Mag, &i2cDeviceConfig);

    }


    I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0;//intiatilisation to zero
    I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0] = 0;

    IfxCpu_restoreInterrupts(interruptState);

  //return (0);
}
void Init_MPU9250(uint8 scale_gyro,uint8 scale_acc){

	//Wehave to initalise also the gyroscope. Here we gave him the scale for the gyroscope and the accelerometer

	switch (scale_gyro){ //Choose of the divider LSB/dps according to the scale factor
		      case (uint8) BITS_FS_250DPS:   Mpu.gyro_scale_factor = Gyro_scale_250dps;  break;
		      case (uint8) BITS_FS_500DPS:   Mpu.gyro_scale_factor = Gyro_scale_500dps; break;
		      case (uint8) BITS_FS_1000DPS:  Mpu.gyro_scale_factor = Gyro_scale_1000dps; break;
		      case (uint8) BITS_FS_2000DPS:  Mpu.gyro_scale_factor = Gyro_scale_2000dps; break;
		      default: Mpu.gyro_scale_factor = Gyro_scale_250dps;break;
	}

	switch (scale_acc){ //Choose of the divider LSB/g according to the scale factor
			      case BITS_FS_2G:   Mpu.acc_scale_factor = Acc_scale_2g;  break;
			      case BITS_FS_4G:   Mpu.acc_scale_factor = Acc_scale_4g; break;
			      case BITS_FS_8G:   Mpu.acc_scale_factor = Acc_scale_8g; break;
			      case BITS_FS_16G:  Mpu.acc_scale_factor = Acc_scale_16g; break;
			      default: Mpu.acc_scale_factor = Acc_scale_2g; break;
	}
	//initialisation of the dps scale 
	//To write with I2C communication you have to choose first the destination , the slave address here it  0x68
	//Then we write in the first byte the register adddress where you want to write and inside the next bytes the value
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x1B; //Register address
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = scale_gyro;//Value
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);//(Device I2C, pointer of the tx table so tx[0], number of bytes you want to write here 2 (tx[0] and tx[1]))

	//initialisation of the g scale 
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x1C;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = scale_acc;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	// Set by pass mode for the magnetometers
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x37;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = 0x02;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);


}

void Init_Mag_AK8963(uint8 Adc_type){

	//Choose in which number of bits the data are sent here 16 bits
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

	Init_MPU9250(BITS_FS_500DPS,BITS_FS_2G);//initialisation of the MPU92/50 (gyroscope+accelerometer)
	Init_Mag_AK8963(BITS_16bits_ADC);//initialisation of the AK8963 (magnetometer)
}


void Read_I2C_Register(IfxI2c_I2c_Device * Device_I2C,uint8 Register_Address,int Number_Received)
{
	//With this function we tried to make a general read function
		int i;

		for(i=0;i<=sizeof(I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer);i++)//Reinitialise the tx to 0
		{
			I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[i]=0;
			I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[i]=0;
		}
		I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = Register_Address;     //Register we want to read

		// write data to device as soon as it is ready
		while(IfxI2c_I2c_write(Device_I2C, &I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0], 1) == IfxI2c_I2c_Status_nak);

		// read the time registers
		while(IfxI2c_I2c_read(Device_I2C, &I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0], Number_Received) == IfxI2c_I2c_Status_nak);//(Device I2C, pointer of the rx table so rx[0], number of bytes you want to read)

}

void GetGyro()
{
	//Here we get the gyroscope value and store it inside the Mpu structure
	int i;
	sint16 bit_data;
	float data[3];
	for(i = 0; i < 3; i++) {
			Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,GYRO_ADDRESS+2*i,2);//Read the gyroscope values for x,y,z axis. Values are composed of two 8 bits registers.
	        bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];//Convert into a 16 bits signed table
	        data[i] = (float)bit_data;//store value inside a table
	    }

	// Store the value inside the Mpu structure
	Mpu.Gyroscope.gyro_x=data[0]/Mpu.gyro_scale_factor;//LSB/(LSB/dps)
	Mpu.Gyroscope.gyro_y=data[1]/Mpu.gyro_scale_factor;
	Mpu.Gyroscope.gyro_z=data[2]/Mpu.gyro_scale_factor;

}

void GetAccel()
{	
	//Here we get the accelerometer value and store it inside the Mpu structure
	int i;
	sint16 bit_data;
	float data[3];
	for(i = 0; i < 3; i++) {
			Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,ACCEL_ADDRESS+2*i,2);//Read the accelreometer values for x,y,z axis.
	        bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];//Convert into a 16 bits signed table
	        data[i] = (float)bit_data;//store value inside a table
	    }

	// Store the value inside the Mpu structure
	Mpu.Acceleration.acc_x=data[0]/Mpu.acc_scale_factor;//LSB/(LSB/g)
	Mpu.Acceleration.acc_y=data[1]/Mpu.acc_scale_factor;
	Mpu.Acceleration.acc_z=data[2]/Mpu.acc_scale_factor;

}

void GetMag()
{	
	//Here we get the magnetometer value and store it inside the Mpu structure
	int i;
	sint16 bit_data;
	float data[3];
	for(i = 0; i < 3; i++) {
			Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Mag,MAG_REG_ADDRESS+2*i,2);//Read the magnetoometer values for x,y,z axis.
			bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];//Convert into a 16 bits signed table
			data[i] = (float)bit_data;//store value inside a table
		}

	// Store the value inside the Mpu structure
	Mpu.Magnetometer.mag_x=(data[0]*0.000001)/Mpu.mag_scale_factor;//LSB/(LSB/uT)
	Mpu.Magnetometer.mag_y=(data[1]*0.000001)/Mpu.mag_scale_factor;
	Mpu.Magnetometer.mag_z=(data[2]*0.000001)/Mpu.mag_scale_factor;

}
void GetYawPitchRoll()
{
	//Here we calculate the Yaw/Pitch/Roll
	volatile float pitch=0;
	volatile float yaw=0;
	volatile float roll=0;

	GetAccel();//Get back the accelerometer value
	GetMag();//Get back the magnetometer value

	volatile float accelx=Mpu.Acceleration.acc_x/57.3;//Go to rad
	volatile float accely=Mpu.Acceleration.acc_y/57.3;
	volatile float accelz=Mpu.Acceleration.acc_y/57.3;

	Faccelx=accelx * 0.5 + (Faccelx * (1.0 - 0.5));//Filtered the value to suppress high frequencies
	Faccely=accely * 0.5 + (Faccely * (1.0 - 0.5));
	Faccelz=accelz * 0.5 + (Faccelz * (1.0 - 0.5));


	pitch=atan2(Faccely,(sqrt((Faccelx*Faccelx)+(Faccelz*Faccelz))));
	roll=atan2(-Faccelx,(sqrt((Faccely*Faccely)+(Faccelz*Faccelz))));
	//roll  = atan2(-Faccely, Faccelz);

	float Yh = (Mpu.Magnetometer.mag_y * cos(roll)) + (Mpu.Magnetometer.mag_z * sin(roll));
	float Xh = (Mpu.Magnetometer.mag_x * cos(pitch))+(Mpu.Magnetometer.mag_y * sin(roll)*sin(pitch)) + (Mpu.Magnetometer.mag_z * sin(roll) * sin(pitch));

	yaw =  atan2(-Yh, Xh);


	YPR.roll = roll*57.3;//Go to degree
	YPR.pitch = pitch*57.3;
	YPR.yaw = yaw*57.3;
}
void Init_gyro(void)
{
	Init_I2C();//Initialisation of the I2C communcitation
	Init_MPU9265();//Initialisation of the device
}
