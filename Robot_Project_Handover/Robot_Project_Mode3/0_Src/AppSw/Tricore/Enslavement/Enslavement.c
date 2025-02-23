/*
 * Enslavement.c
 *
 *  Created on: 16.04.2019
 *      Author: Gaizi
 */

#include "Enslavement.h"

extern PWM_Timers Timers;

uint8 Coef_Dist = 1;
uint8 Coef_Angle = 5;
uint8 I_cst = 35;
uint8 I_cst_angle = 35;
extern error Error;
extern current_position Current_position;
extern float Yaw_initvalue;
extern YawPitchRoll YPR;

int Dist = 0; //Dist and Angle are declared global to debug more easily (Watchview of the debugger)
float Angle = 0; //The 1st idea was to have them local to the Command functions, and only use the return --> could be done when these values are not needed for debugging anymore
float PWM_R = 0, PWM_L = 0;

uint32 FSM_AurixSTATE = Aurix_State_WAIT;
//extern boolean Gyro_stable;
extern boolean enable_read;



/*
 * int Distance_Command()
 * Generates the PWM command to correct the linear error (look at wiki page for more detail regarding the error and the enslavement)
 */
int Distance_Command()
{
	Dist = Coef_Dist * Error.linear;

	return Dist;
}

/*
 * float Angular_Command()
 * Generates the PWM command to correct the angular error (look at wiki page for more detail regarding the error and the enslavement)
 */
float Angular_Command()
{
	Angle = Coef_Angle * Error.angular;

	return Angle;
}


/*
 * void Commande_Motors()
 * Function in charge of the enslavement, acts as a state machine
 * At first we calibrate the gyroscope, then we correct the angular error, then we correct both errors (linear + angular)
 * Finally we go into a state to wait for next instructions
 *
 * work in progress: At the moment we reset the initial position of the robot at the end of each movement ( Yaw_initvalue is changed and Current position set to 0)
 * The goal is to navigate with absolute positioning, not relative positioning
 * 		One first easy fix would be to duplicate the positioning variables to have one that resets at the end of every movement, and one that hold the absolute value
 */
void Commande_Motors()
{
	switch(FSM_AurixSTATE)
	{
		case Aurix_State_WAIT:
			Yaw_initvalue = YPR.yaw; // Update the new value of the Angle
			//Gyro_stable = FALSE;

			break;
		case Aurix_State_ROTATION:

			if(Error.angular <= -0.15)
			{//TURN RIGHT
				Right();
				PWM_R = I_cst_angle + abs(Angular_Command());
				PWM_L = I_cst_angle + abs(Angular_Command());

				PWM_setDuty(Timers.PWM1_Bridge, PWM_R);
				PWM_setDuty(Timers.PWM2_Bridge, PWM_L);
			}
			else if(Error.angular >= 0.15)
			{//TURN LEFT
				Left();
				PWM_R = I_cst_angle + abs(Angular_Command());
				PWM_L = I_cst_angle + abs(Angular_Command());

				if(PWM_R > 80)
				{
					PWM_R = 80;
				}
				if(PWM_L > 80)
				{
					PWM_L = 80;
				}

				PWM_setDuty(Timers.PWM1_Bridge, PWM_R);
				PWM_setDuty(Timers.PWM2_Bridge, PWM_L);
			}
			else if (Error.angular >= -0.15 && Error.angular <= 0.15)
			{//Angle position is achieved
				FSM_AurixSTATE = Aurix_State_FORWARD;
			}
			break;

		case Aurix_State_FORWARD:

			Forward_1();
			PWM_R = I_cst + Distance_Command() + Angular_Command();
			PWM_L = I_cst + Distance_Command() - Angular_Command();

			PWM_setDuty(Timers.PWM1_Bridge, PWM_R);
			PWM_setDuty(Timers.PWM2_Bridge, PWM_L);

			if(Error.linear < 5.0f) // The robot has reached the target position
			{
				Motors_stop();
				Save_Object_Position();

				//Set the Error back to 0
				Current_position.x = 0;
				Current_position.y = 0;

				Yaw_initvalue = YPR.yaw; // Update the new value of the Angle

				// RESET flags of the state machine
				enable_read = TRUE; //Read data from the Raspberry

				FSM_AurixSTATE = Aurix_State_WAIT;
			}
			break;
		default:
			FSM_AurixSTATE = Aurix_State_WAIT;
			break;
	}
}



