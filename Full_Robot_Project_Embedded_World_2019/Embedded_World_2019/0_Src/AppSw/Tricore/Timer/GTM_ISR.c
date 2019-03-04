/*
 * GTM_ISR.c
 *
 *  Created on: 29.11.2018
 *      Author: Gaizi
 */

#include "GTM_ISR.h"

extern volatile uint64 distance_obstacle;


IfxGtm_Atom_Timer timerCurrentMeasurement;

IfxGtm_Atom_Timer timerObstacleAvoidance;


float current = 0;

extern float I;
float energy = 0;

IFX_INTERRUPT(ISR_CurrentMeasurement, 0, PRIORITY_ISR_CURRENT_MEASUREMENT);
IFX_INTERRUPT(ISR_ObstacleAvoidance, 0, PRIORITY_ISR_OBSTACLE_AVOIDANCE);

/*
 * function ISR_CurrentMeasurement
 * GTM Interrupt Service Routine to display updated the values of Current Measurement and Energy consumption
 */
void ISR_CurrentMeasurement(void)
{
    IfxCpu_enableInterrupts();

    char ADCValue[20];
    char ENERGYValue[20];

    VadcAutoScanDemo_run();

	current = I; // A
	sprintf(ADCValue, "I = %0.2f A", current);
	GLCD_displayStringLn(LINE3, ADCValue);

	energy += 8.0*current*(0.1/3600); // W.h
	sprintf(ENERGYValue, "E = %0.4f W.h", energy);
	GLCD_displayStringLn(LINE4, ENERGYValue);

	IfxGtm_Atom_Timer_acknowledgeTimerIrq(&timerCurrentMeasurement);
}

/*
 * Configuration of GTM interrupt for Current Measurement
 */
void ISR_CurrentMeasurement_Config(void)
{
       /* GTM ATOM configuration */
        IfxGtm_Atom_Timer_Config timerConfig;
        IfxGtm_Atom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency       = 10; //Frequency Value
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
 * function ISR_ObstacleAvoidance
 * GTM Interrupt Service Routine to detect and avoid obstacles
 */
void ISR_ObstacleAvoidance(void)
{
    IfxCpu_enableInterrupts();
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
    IfxGtm_Atom_Timer_acknowledgeTimerIrq(&timerObstacleAvoidance);
}

/*
 * Configuration of GTM interrupt for Obstacle Avoidance
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

