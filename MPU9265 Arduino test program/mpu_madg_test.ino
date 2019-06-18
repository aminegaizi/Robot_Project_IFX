#include <TimerOne.h>

#include <Wire.h>
#include <MadgwickAHRS.h>

//#define DUE

#ifdef DUE
#include <DueTimer.h>
#endif

#define    MPU9250_ADDRESS            0x68
#define    MAG_ADDRESS                0x0C

#define    GYRO_FULL_SCALE_250_DPS    0x00  
#define    GYRO_FULL_SCALE_500_DPS    0x08
#define    GYRO_FULL_SCALE_1000_DPS   0x10
#define    GYRO_FULL_SCALE_2000_DPS   0x18

#define    ACC_FULL_SCALE_2_G        0x00  
#define    ACC_FULL_SCALE_4_G        0x08
#define    ACC_FULL_SCALE_8_G        0x10
#define    ACC_FULL_SCALE_16_G       0x18

Madgwick filter;
unsigned long microsPerReading, microsPrevious;
float accelScale, gyroScale;

// This function read Nbytes bytes from I2C device at address Address. 
// Put read bytes starting at register Register in the Data array. 
void I2Cread(uint8_t Address, uint8_t Register, uint8_t Nbytes, uint8_t* Data)
{
  // Set register address
  Wire.beginTransmission(Address);
  Wire.write(Register);
  Wire.endTransmission();
  
  // Read Nbytes
  Wire.requestFrom(Address, Nbytes); 
  uint8_t index=0;
  while (Wire.available())
    Data[index++]=Wire.read();
}


// Write a byte (Data) in device (Address) at register (Register)
void I2CwriteByte(uint8_t Address, uint8_t Register, uint8_t Data)
{
  // Set register address
  Wire.beginTransmission(Address);
  Wire.write(Register);
  Wire.write(Data);
  Wire.endTransmission();
}



// Initial time
long int ti;
volatile bool intFlag=false;

void setup() {
  // Arduino initializations
  Wire.begin();
  Serial.begin(115200);
  Serial.println ("Serial init ok");

  // Set accelerometers low pass filter at 5Hz
  I2CwriteByte(MPU9250_ADDRESS,29,0x06);
  // Set gyroscope low pass filter at 5Hz
  I2CwriteByte(MPU9250_ADDRESS,26,0x06);
 
  
  // Configure gyroscope range
  I2CwriteByte(MPU9250_ADDRESS,27,GYRO_FULL_SCALE_250_DPS);
  // Configure accelerometers range
  I2CwriteByte(MPU9250_ADDRESS,28,ACC_FULL_SCALE_2_G);
  // Set by pass mode for the magnetometers
  I2CwriteByte(MPU9250_ADDRESS,0x37,0x02);
  
  // Request continuous magnetometer measurements in 16 bits
  I2CwriteByte(MAG_ADDRESS,0x0A,0x16);

  uint8_t Data[2];
  I2Cread(MPU9250_ADDRESS, 0x75, 0x02, Data);
  Serial.println(int16_t(Data[1]<<8 | Data[0]));
  //Serial.println(int16_t(Data[1]<<8 | Data[0]) == 115 ? "connection success" : "connection failed");
  Serial.println(int16_t(Data[1]<<8 | Data[0]) == 112 ? "connection success" : "connection failed");
  pinMode(13, OUTPUT);
  
#ifdef DUE
  Timer3.attachInterrupt(callback).setFrequency(100).start();
#else
  Timer1.initialize(10000);         // initialize timer1, and set a 1/2 second period
  Timer1.attachInterrupt(callback);  // attaches callback() as a timer overflow interrupt
#endif
  
  
  
  // Store initial time
  ti=millis();
  
  filter.begin(100);

  // initialize variables to pace updates to correct rate
  microsPerReading = 1000000 / 25;
  microsPrevious = micros();
}

// Counter
long int cpt=0;

void callback()
{ 
  intFlag=true;
  digitalWrite(13, digitalRead(13) ^ 1);
}

void loop() {
  float roll, pitch, heading;
  unsigned long microsNow;

  float ax, ay, az;
  float gx, gy, gz;
  float mx, my, mz;
  float q0,q1,q2,q3;

  // check if it's time to read data and update the filter
  while (!intFlag);
  intFlag=false;

  uint8_t Buf[14];
  I2Cread(MPU9250_ADDRESS,0x3B,14,Buf);
  
  // Create 16 bits values from 8 bits data
  
  // Accelerometer
  int16_t aix=-(Buf[0]<<8 | Buf[1])  + 1606  -1315;
  int16_t aiy=-(Buf[2]<<8 | Buf[3])  + 731   +65;
  int16_t aiz=(Buf[4]<<8 | Buf[5])   - 4877  ;

  // Gyroscope
  int16_t gix=-(Buf[8]<<8 | Buf[9])    - 54  +4;
  int16_t giy=-(Buf[10]<<8 | Buf[11])  + 93  -36;
  int16_t giz=(Buf[12]<<8 | Buf[13])   - 113;

  // _____________________
  // :::  Magnetometer ::: 

  
  // Read register Status 1 and wait for the DRDY: Data Ready
  
  uint8_t ST1;
  do
  {
    I2Cread(MAG_ADDRESS,0x02,1,&ST1);
  }
  while (!(ST1&0x01));

  // Read magnetometer data  
  uint8_t Mag[7];  
  I2Cread(MAG_ADDRESS,0x03,7,Mag);
  

  // Create 16 bits values from 8 bits data
  
  // Magnetometer
  int16_t mix=-(Mag[3]<<8 | Mag[2])  + 438;
  int16_t miy=-(Mag[1]<<8 | Mag[0])  - 45;
  int16_t miz=-(Mag[5]<<8 | Mag[4])  - 195;

  ax = convertRawAcceleration(aix);
  ay = convertRawAcceleration(aiy);
  az = convertRawAcceleration(aiz);
  gx = convertRawGyro(gix);
  gy = convertRawGyro(giy);
  gz = convertRawGyro(giz);
  mx = convertRawMagneto(mix);
  my = convertRawMagneto(miy);
  mz = convertRawMagneto(miz);
  

  // update the filter, which computes orientation
  filter.update(gx, gy, gz, ax, ay, az, mx, my, mz);
  /*q0=filter.getq0();
  q1=filter.getq1();
  q2=filter.getq2();
  q3=filter.getq3();*/
  

  // print the heading, pitch and roll
  roll = filter.getRoll();
  pitch = filter.getPitch();
  heading = filter.getYaw();
  Serial.print("Orientation: ");
  Serial.print(heading);
  Serial.print(" ");
  Serial.print(pitch);
  Serial.print(" ");
  Serial.println(roll);

  //Serial.print(" ");
  
  /*Serial.print(ax); Serial.print(" ; ");
  Serial.print(ay); Serial.print(" ; ");
  Serial.print(az); Serial.print(" ; ");
  Serial.print(gx); Serial.print(" ; ");
  Serial.print(gy); Serial.print(" ; ");
  Serial.print(gz); Serial.print(" ; ");
  Serial.print (mx,DEC); 
  Serial.print (" ; ");
  Serial.print (my,DEC);
  Serial.print (" ; ");
  Serial.println (mz,DEC);*/
  
  /*Serial.print(q0); Serial.print(" ; ");
  Serial.print(q1); Serial.print(" ; ");
  Serial.print(q2); Serial.print(" ; ");
  Serial.println(q3);*/
  
  //delay(5000);
}

float convertRawAcceleration(int aRaw) {
  // since we are using 2G range
  // -2g maps to a raw value of -32768
  // +2g maps to a raw value of 32767
  
  float a = (aRaw * 2.0) / 32768.0;
  return a;
}

float convertRawGyro(int gRaw) {
  // since we are using 250 degrees/seconds range
  // -250 maps to a raw value of -32768
  // +250 maps to a raw value of 32767
  
  float g = (gRaw * 250.0) / 32768.0;
  return g;
}

float convertRawMagneto(int mRaw) {
  // since we are using 250 degrees/seconds range
  // -250 maps to a raw value of -32768
  // +250 maps to a raw value of 32767
  
  float m = (mRaw * 4800.0) / 32768.0;
  return m;
}
