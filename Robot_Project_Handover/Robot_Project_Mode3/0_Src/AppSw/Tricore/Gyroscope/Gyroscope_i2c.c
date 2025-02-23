/*
 * Gyroscope_i2c.c
 *
 *  Created on: 19.10.2018
 *      Author: nicolle
 */

//See MPU 9265 register map at : https://www.invensense.com/wp-content/uploads/2015/02/RM-MPU-9250A-00-v1.6.pdf
//See MPU 9265 documentation at : https://www.invensense.com/wp-content/uploads/2015/02/PS-MPU-9250A-01-v1.1.pdf

#include "Gyroscope_i2c.h"



/******************************************************************************/
/*-----------------------------Global Variables--------------------------------*/
/******************************************************************************/



App_I2C I2C_Masters_Slaves;

MPU_9265 Mpu;
YawPitchRoll YPR;

volatile uint8 Data[32];

volatile Ifx_SizeT size;

int wmi;

volatile float ax, ay, az;
volatile float gx, gy, gz;
volatile float mx, my, mz;


/*
 * void Init_I2C (void)
 * I2C0 initialization at 400kHz in Master, with MPU9250 and magnetometer as Slaves
 */
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

}

/*
 * void Init_MPU9250(uint8 scale_gyro,uint8 scale_acc)
 * Initialization of the config registers of the MPU9250 (Accelerometer and Gyroscope)
 * More info regarding the registers in the wiki page
 */
void Init_MPU9250(uint8 scale_gyro,uint8 scale_acc)
{

	switch (scale_gyro){//Choose the gyro scale value 
		      case (uint8) BITS_FS_250DPS:   Mpu.gyro_scale_factor = Gyro_scale_250dps;  break;
		      case (uint8) BITS_FS_500DPS:   Mpu.gyro_scale_factor = Gyro_scale_500dps; break;
		      case (uint8) BITS_FS_1000DPS:  Mpu.gyro_scale_factor = Gyro_scale_1000dps; break;
		      case (uint8) BITS_FS_2000DPS:  Mpu.gyro_scale_factor = Gyro_scale_2000dps; break;
		      default: Mpu.gyro_scale_factor = Gyro_scale_250dps;break;
	}

	switch (scale_acc){//Choose the acc scale value 
			      case BITS_FS_2G:   Mpu.acc_scale_factor = Acc_scale_2g;  break;
			      case BITS_FS_4G:   Mpu.acc_scale_factor = Acc_scale_4g; break;
			      case BITS_FS_8G:   Mpu.acc_scale_factor = Acc_scale_8g; break;
			      case BITS_FS_16G:  Mpu.acc_scale_factor = Acc_scale_16g; break;
			      default: Mpu.acc_scale_factor = Acc_scale_2g; break;
	}
	//Write into the MPU register the gyro scale value we choose
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x1B; //Address of the register
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = scale_gyro;//Value 
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	//Write into the MPU register the acc scale value we choose
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x1C;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = scale_acc;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	//Enable the bypass mode for the magnetometer
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x37;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = 0x02;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	//Gyroscope filter at 5Hz
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x1A;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = 0x06;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	//Accelerometer filter at 5Hz
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x1D;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = 0x06;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);


}

/*
 * void Init_Mag_AK8963(uint8 Adc_type)
 * Initialization of the config register of the magnetometer
 */
void Init_Mag_AK8963(uint8 Adc_type)
{

	//Configure the number of bits for magnetometer(14/16 bits)
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = 0x0A;
	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[1] = Adc_type;
	while(IfxI2c_I2c_write(&I2C_Masters_Slaves.drivers.i2cDev_Mag,&I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0],2) == IfxI2c_I2c_Status_nak);

	switch (Adc_type){
		      case BITS_14bits_ADC:   Mpu.mag_scale_factor = Mag_Scale_14bits;  break;
		      case BITS_16bits_ADC:   Mpu.mag_scale_factor = Mag_Scale_16bits; break;
	}
}

/*
 * void Init_MPU9265()
 * Call to the register intialization functions of the sensors of the MPU9265
 */
void Init_MPU9265()
{
	Init_MPU9250(BITS_FS_250DPS,BITS_FS_2G);//Initialisation of the gyro and acc
	Init_Mag_AK8963(BITS_16bits_ADC);//Initialisation of the magnetometer
}


/*
 * void Read_Mag_Reg(IfxI2c_I2c_Device * Device_I2C,uint8 Register_Address,int Number_Received,uint8 *pointertx,uint8 *pointerrx)
 * Read Magnetomoter's data registers to get information on the current magnetic field
 */
void Read_Mag_Reg(IfxI2c_I2c_Device * Device_I2C,uint8 Register_Address,int Number_Received,uint8 *pointertx,uint8 *pointerrx)
{	
	//This function is used for reading magnetometer value. Indeed we need local table for the reading value
	int Mod;
	int Div;
	int i;

	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = Register_Address;     //address of SECONDS register

	// write the register adrress we want to read 
	// write data to device as soon as it is ready
	while(IfxI2c_I2c_write(Device_I2C, pointertx, 1) == IfxI2c_I2c_Status_nak);

	Mod=Number_Received%2;
	Div=Number_Received/2;
	//This if is for the case we have even or odd numbers
	if (Mod==0){
		for (i=0;i<Div;i++){
			while(IfxI2c_I2c_read(Device_I2C, pointerrx+2*i, 2) == IfxI2c_I2c_Status_nak);
		}
	}
	else{
		for (i=0;i<=Div;i++){
			if (i==Div){
				while(IfxI2c_I2c_read(Device_I2C, pointerrx+2*i, 1) == IfxI2c_I2c_Status_nak);
			}
			else{
				while(IfxI2c_I2c_read(Device_I2C, pointerrx+2*i, 2) == IfxI2c_I2c_Status_nak);
			}
		}

	}
}

/*
 * void Read_I2C_Register(IfxI2c_I2c_Device * Device_I2C,uint8 Register_Address,int Number_Received,uint8 *pointertx,uint8 *pointerrx)
 * Read MPU9250's data registers, information on acceleration (in g) and angular speed (deg/s)
 */
void Read_I2C_Register(IfxI2c_I2c_Device * Device_I2C,uint8 Register_Address,int Number_Received,uint8 *pointertx,uint8 *pointerrx)
{	//Read the gyro/acc value. Don't know why but doesn't work with "Read_Mag_Reg" function 

		I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0] = Register_Address;     //address of SECONDS register

		// write data to device as soon as it is ready
		while(IfxI2c_I2c_write(Device_I2C, pointertx, 1) == IfxI2c_I2c_Status_nak);

		// read the time registers
		while(IfxI2c_I2c_read(Device_I2C, pointerrx, Number_Received) == IfxI2c_I2c_Status_nak);
}


/*
 * void GetGyro()
 * Read only the gyroscope's measurements
 */
void GetGyro()
{
	//Get back the gyroscope value and make the calibration correctly
	sint16 bit_data;
	float data[3];

	int i;

	for(i=0;i<3;i++){
		 Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,GYRO_ADDRESS+2*i,2,I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer,I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer);
		 bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];//Convert into a 16 bits signed table
		 data[i] = (float)bit_data;//store value inside a table
	}

	gx=(-(data[0])-54+4-65.5)/Mpu.gyro_scale_factor;
	gy=(-(data[1])+93-36)/Mpu.gyro_scale_factor;
	gz=(data[2]-113)/Mpu.gyro_scale_factor;

	Mpu.Gyroscope.gyro_x=gx;
	Mpu.Gyroscope.gyro_y=gy;
	Mpu.Gyroscope.gyro_z=gz;
}

/*
 * void GetAccel()
 * Read only the accelerometer's measurements
 */
void GetAccel()
{	
	//Get back the accelerometer value and make the calibration correctly
	sint16 bit_data;
	float data[3];

	int i;
	for(i=0;i<3;i++){
		 Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,ACCEL_ADDRESS+2*i,2,I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer,I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer);
		 bit_data = ((sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0]<<8)|(sint16)I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1];//Convert into a 16 bits signed table
		 data[i] = (float)bit_data;//store value inside a table
	}

	ax=(-(data[0])+1606-1315)/Mpu.acc_scale_factor;
	ay=(-(data[1])+731+65)/Mpu.acc_scale_factor;
	az=(data[2]-4877)/Mpu.acc_scale_factor;

	Mpu.Acceleration.acc_x=ax;
	Mpu.Acceleration.acc_y=ay;
	Mpu.Acceleration.acc_z=az;

}

/*
 * void GetMag()
 * Read only magnetometer's measurements
 */
void GetMag()
{	
	//Get back the magnetometer value and make the calibration correctly

	sint16 bit_data;
	float data[3];

	uint8 Ans[7];
	uint8 Ansbis[1];
	uint8 size;
	uint8 ST1;

	I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer[0]=0;
	I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[1]=0;

	//We wait for the flag which allow us to read again a value
	do
	  {
		size=sizeof(Ansbis);
		Read_Mag_Reg(&I2C_Masters_Slaves.drivers.i2cDev_Mag,AK8963_ST1,size,I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer,Ansbis);
		ST1=Ansbis[0];
	    //I2Cread(MAG_ADDRESS,0x02,1,&ST1);
	  }
	  while (!(ST1&0x01));

	size=sizeof(Ans);
	Read_Mag_Reg(&I2C_Masters_Slaves.drivers.i2cDev_Mag,MAG_REG_ADDRESS,size,I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer,Ans);

	bit_data = ((sint16)Ans[1]<<8)|(sint16)Ans[0];
	data[0] = (float)bit_data;
	bit_data = ((sint16)Ans[3]<<8)|(sint16)Ans[2];
	data[1] = (float)bit_data;
	bit_data = ((sint16)Ans[5]<<8)|(sint16)Ans[4];
	data[2] = (float)bit_data;

//	mx=(-(data[1])+75.0937)/Mpu.mag_scale_factor;
//	my=(-(data[0])+75.0937)/Mpu.mag_scale_factor;
//	mz=(-(data[2])+160.42745)/Mpu.mag_scale_factor;

	mx=(-(data[1])+36.7471+51.2+102.4005-6.8267+2.0)/Mpu.mag_scale_factor;
	my=(-(data[0])-361.8151-23.89345-6.8267)/Mpu.mag_scale_factor;
	mz=(-(data[2])+40.9602+47.7869-10.24005)/Mpu.mag_scale_factor;

	Mpu.Magnetometer.mag_x=mx;
	Mpu.Magnetometer.mag_y=my;
	Mpu.Magnetometer.mag_z=mz;
}

/*
 * void GetYawPitchRoll()
 * Call to the data fetching functions and process the measurements with Madgwick algorithm
 */
void GetYawPitchRoll()
{

	Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Gyro_Accel,WHO_AM_I_MPU,0x01,I2C_Masters_Slaves.i2cBuffer.i2cTxBuffer,I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer);
	//Read_I2C_Register(&I2C_Masters_Slaves.drivers.i2cDev_Mag,WHO_AM_I_AK8963,0x01);
	wmi=I2C_Masters_Slaves.i2cBuffer.i2cRxBuffer[0];
	GetGyro();//Retrieve Gyroscope value
	GetAccel();//Retrieve Accelerometer value
	GetMag();//Retrieve Magnetometer value

	Madgwick_update(gx,gy,gz,ax,ay,az,mx,my,mz);//C Update the quaternions value

	YPR.pitch=Madgwick_getPitch();//Calculate the Pitch angle in deg
	YPR.roll=Madgwick_getRoll();//Calculate the Roll angle in deg
	YPR.yaw=Madgwick_getYaw();//Calculate the Yaw angle in deg

	IfxPort_togglePin(&MODULE_P13, 2);

}


/*
 * void Init_gyro(void)
 * Call all initializatoin functions for data fetching and data processing
 */
void Init_gyro(void)
{
	Init_I2C();
	Init_MPU9265();
	Madgwick_init();
}
