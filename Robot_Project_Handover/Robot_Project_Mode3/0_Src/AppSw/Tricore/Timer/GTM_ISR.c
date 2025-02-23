/*
 * GTM_ISR.c
 *
 *  Created on: 29.11.2018
 *      Author: Gaizi
 */

#include "GTM_ISR.h"

extern volatile uint64 distance_obstacle;

IfxGtm_Atom_Timer timerCurrentMeasurement;
IfxGtm_Atom_Timer timerGyro;
IfxGtm_Atom_Timer timerObstacleAvoidance;

extern float I;

float energy = 0;
extern YawPitchRoll YPR;
float Yaw_initvalue = 0;
uint8 Yaw_Absinit = 0;
boolean Gyro_stable = FALSE;

IFX_INTERRUPT(ISR_CurrentMeasurement, 0, PRIORITY_ISR_CURRENT_MEASUREMENT);
IFX_INTERRUPT(ISR_ObstacleAvoidance, 0, PRIORITY_ISR_OBSTACLE_AVOIDANCE);
IFX_INTERRUPT(ISR_Gyro, 0, PRIORITY_ISR_GYRO);

/*
 * void ISR_CurrentMeasurement(void)
 * GTM Interrupt Service Routine to display updated the values of Current Measurement and Energy consumption
 * Gyroscope calibration verification is done here
 * Odometry and Error calculation for the enslavement are also done here
 *
 * Interrupt frequency: 10Hz
 */
void ISR_CurrentMeasurement(void)
{
    IfxCpu_enableInterrupts();

    char DisplayTemp[20];
    VadcAutoScanDemo_run(); //ADC data fetching and calculation of the current consumption with the current sensor

	snprintf(DisplayTemp, 20,  "I = %0.2f A", I);
	GLCD_displayStringLn(LINE3, DisplayTemp); //Display the current consumption on the screen

	energy += 8.0*I*(0.1/3600); // W.h
	snprintf(DisplayTemp, 20,  "E = %0.4f W.h", energy);
	GLCD_displayStringLn(LINE4, DisplayTemp); //Display the energy concumed from the moment the robot was turned on

	if(!Gyro_stable) //Verification that the gyroscope is calibrated, setting the Gyro_stable flag (used in enslavement)
	{
		if(Yaw_initvalue-0.01 < YPR.yaw && YPR.yaw < Yaw_initvalue+0.01)
		{
			Gyro_stable = TRUE;
			GLCD_displayStringLn(LINE0, "READY");

		}
		else
		{
			Yaw_initvalue =  YPR.yaw;
			Yaw_Absinit = YPR.yaw;
		}

	}
	beep();
	position_data();
	Find_error();

	IfxGtm_Atom_Timer_acknowledgeTimerIrq(&timerCurrentMeasurement); //next interrupt in 100ms
}

/*
 * void ISR_CurrentMeasurement_Config(void)
 * Configuration of GTM interrupt for Current Measurement
 */
void ISR_CurrentMeasurement_Config(void)
{
       /* GTM ATOM configuration */
        IfxGtm_Atom_Timer_Config timerConfig;
        IfxGtm_Atom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency       = 10; //Frequency Value 10Hz
        timerConfig.base.isrPriority     = PRIORITY_ISR_CURRENT_MEASUREMENT; //Interrupt Priority
        timerConfig.base.isrProvider     = IfxSrc_Tos_cpu0; //Interrupts handled by Cpu0
        timerConfig.base.minResolution   = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.base.trigger.enabled = FALSE;
        timerConfig.atom                 = IfxGtm_Atom_1; //GTM ATOM 1 channel 0 clk 0
        timerConfig.timerChannel         = IfxGtm_Atom_Ch_0;
        timerConfig.clock                = IfxGtm_Cmu_Clk_0;
        IfxGtm_Atom_Timer_init(&timerCurrentMeasurement, &timerConfig);

        IfxGtm_Atom_Timer_run(&timerCurrentMeasurement);
}

/*
 * void ISR_ObstacleAvoidance(void)
 * Interrupt Service Routine in charge of the obstacle avoidance (collision avoidance)
 * If distance_obstacle != 0 (means that the ultrasonic sensor is correcty configured, look at the wiki page)
 * Or if obstacle is detected less than 40 cm away, the robot turns to the right until no obstacle is detected
 */
void ISR_ObstacleAvoidance(void)
{
    IfxCpu_enableInterrupts();
    volatile float64 temp = 0;
	temp = returnDistance(); //Get Ultrasonic Sensor result

	if(temp < 1e+06) //check for absurd results
	{
		distance_obstacle = temp; //If result is not absurd, distance obstacle takes the value the detection
	}

    if (distance_obstacle != 0 && distance_obstacle >= 4e3) //If Ultrasonic sensor is working (Value != 0) and there is no obstacle up to 40cm away from the Robot
    {
    	Forward_1();	//Go Forward
    }
    else if(distance_obstacle != 0 && distance_obstacle<= 4e3 && distance_obstacle>= 4e2) //If Ultrasonic sensor is working (Value != 0) and there is an obstacle up to 40cm away from the Robot
    {
    	Right(); //Turn right
    }
	sendTrig(IfxPort_P14_4); //next detection
    IfxGtm_Atom_Timer_acknowledgeTimerIrq(&timerObstacleAvoidance); //next interrupt in 10ms
}

/*
 * void ISR_SensorFeedBack_Config(void)
 * Configuration of GTM Timer interrupt for handling the current sensor feedback
 * Frequency 100Hz
 */
void ISR_ObstacleAvoidance_Config(void)
{
       /* GTM TOM configuration */
        IfxGtm_Atom_Timer_Config timerConfig;
        IfxGtm_Atom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency       = 100;
        timerConfig.base.isrPriority     = PRIORITY_ISR_OBSTACLE_AVOIDANCE;
        timerConfig.base.isrProvider     = IfxSrc_Tos_cpu0;
        timerConfig.base.minResolution   = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.base.trigger.enabled = FALSE;
        timerConfig.atom                 = IfxGtm_Atom_2;
        timerConfig.timerChannel         = IfxGtm_Atom_Ch_0;
        timerConfig.clock                = IfxGtm_Cmu_Clk_0;
        IfxGtm_Atom_Timer_init(&timerObstacleAvoidance, &timerConfig);

        IfxGtm_Atom_Timer_run(&timerObstacleAvoidance);
}

/*
 * void ISR_Gyro_Config(void)
 * Configuration of GTM Timer interrupt for handling the gyroscope's data processing (Madgwick's algorithm)
 * Frequency 100Hz
 */
void ISR_Gyro_Config(void)
{
       /* GTM TOM configuration */
        IfxGtm_Atom_Timer_Config timerConfig;
        IfxGtm_Atom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency       = 100;
        timerConfig.base.isrPriority     = PRIORITY_ISR_GYRO;
        timerConfig.base.isrProvider     = IfxSrc_Tos_cpu0;
        timerConfig.base.minResolution   = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.base.trigger.enabled = FALSE;
        timerConfig.atom                 = IfxGtm_Atom_3;
        timerConfig.timerChannel         = IfxGtm_Atom_Ch_0;
        timerConfig.clock                = IfxGtm_Cmu_Clk_0;
        IfxGtm_Atom_Timer_init(&timerGyro, &timerConfig);

        IfxGtm_Atom_Timer_run(&timerGyro);
}


/*
 * void ISR_Gyro(void)
 * Interrupt Service Routine in charge of the gyroscope's data processing
 *
 * Frequency 100Hz
 */
void ISR_Gyro(void)
{
    IfxCpu_enableInterrupts();
	GetYawPitchRoll();
    IfxGtm_Atom_Timer_acknowledgeTimerIrq(&timerGyro); //next interrupt in 10ms
}
