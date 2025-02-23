/*
 * GTM_ISR.c
 *
 *  Created on: 29.11.2018
 *      Author: Gaizi
 */

#include "GTM_ISR.h"

extern volatile float64 distance_obstacle;

IfxGtm_Atom_Timer timerSensorFeedback;
IfxGtm_Atom_Timer timerObstacleAvoidance;

float current = 0;

extern float I;

float energy = 0;

IFX_INTERRUPT(ISR_SensorFeedback, 0, PRIORITY_ISR_SENSOR_FEEDBACK);
IFX_INTERRUPT(ISR_ObstacleAvoidance, 0, PRIORITY_ISR_OBSTACLE_AVOIDANCE);


/*
 * void ISR_SensorFeedback(void)
 * Interrupt Service Routine in charge of displaying the data given by the analog current sensor
 *
 */
void ISR_SensorFeedback(void)
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

    IfxGtm_Atom_Timer_acknowledgeTimerIrq(&timerSensorFeedback);
}

/*
 * void ISR_SensorFeedBack_Config(void)
 * Configuration of GTM Timer interrupt for handling the current sensor feedback
 * Frequency 13Hz
 */
void ISR_SensorFeedBack_Config(void)
{
       /* GTM TOM configuration */
        IfxGtm_Atom_Timer_Config timerConfig;
        IfxGtm_Atom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency       = 13; //Here you can change the frequency
        timerConfig.base.isrPriority     = PRIORITY_ISR_SENSOR_FEEDBACK;
        timerConfig.base.isrProvider     = IfxSrc_Tos_cpu0; //Interrupt handled by Cpu0
        timerConfig.base.minResolution   = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.base.trigger.enabled = FALSE;
        timerConfig.atom                 = IfxGtm_Atom_1; //Timer GTM Atom1 used
        timerConfig.timerChannel         = IfxGtm_Atom_Ch_0;
        timerConfig.clock                = IfxGtm_Cmu_Clk_0;
        IfxGtm_Atom_Timer_init(&timerSensorFeedback, &timerConfig);

        IfxGtm_Atom_Timer_run(&timerSensorFeedback);
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
    if (distance_obstacle != 0 && distance_obstacle >= 4e3)
    {
    	Forward_1();
    }
    else if(distance_obstacle != 0 && distance_obstacle<= 4e3)
    {
    	Right();
    }
    IfxGtm_Atom_Timer_acknowledgeTimerIrq(&timerObstacleAvoidance);
}

/*
 * void ISR_SensorFeedBack_Config(void)
 * Configuration of GTM Timer interrupt for handling the current sensor feedback
 * Frequency 50Hz
 */
void ISR_ObstacleAvoidance_Config(void)
{
       /* GTM TOM configuration */
        IfxGtm_Atom_Timer_Config timerConfig;
        IfxGtm_Atom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency       = 50; //Here you can change the frequency
        timerConfig.base.isrPriority     = PRIORITY_ISR_OBSTACLE_AVOIDANCE;
        timerConfig.base.isrProvider     = IfxSrc_Tos_cpu0; //Interrupt handled by Cpu0
        timerConfig.base.minResolution   = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.base.trigger.enabled = FALSE;
        timerConfig.atom                 = IfxGtm_Atom_2; //Timer GTM Atom2 used
        timerConfig.timerChannel         = IfxGtm_Atom_Ch_0;
        timerConfig.clock                = IfxGtm_Cmu_Clk_0;
        IfxGtm_Atom_Timer_init(&timerObstacleAvoidance, &timerConfig);

        IfxGtm_Atom_Timer_run(&timerObstacleAvoidance);
}

