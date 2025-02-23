/*
 * position.c
 *
 *  Created on: 06.11.2018
 *      Author: Gaizi
 */

#include "position.h"

extern int positionRwheel;
extern int positionLwheel;

extern float Yaw_initvalue;
extern YawPitchRoll YPR;

current_position Current_position = {0.0f, 0.0f, 0.0f};
current_position Position = {0.0f, 0.0f, 0.0f}; //This instance of current_position was meant to keep the save position of the robot (look at comments on ensalvement.c and Save_Object_Position in main, we did not have enough time to continue with it.

delta Delta = {0.0f, 0.0f, 0.0f, 0.0f};
desired_position Desired_position = {0.0f, 0.0f, 0.0f};
error Error = {0.0f, 0.0f};
delta_ref Delta_ref = {0.0f, 0.0f};

float degAngle = 0;
float ThetaRef = 0;
Encoders Old_values = {0,0};
Encoders New_values = {0,0};

/*
 * void position_data()
 * see https://www.cs.princeton.edu/courses/archive/fall11/cos495/COS495-Lecture5-Odometry.pdf
 *
 * This function calculates the position of the robot in real time using odometry. Link above.
 * Here the angle variation is done using the Gyroscope's Yaw value, and not the encoders ticks
 *
 * Look at the wiki Motor control for more information
 */
void position_data()
{
	float tempAngle = 0;
	Old_values.Left = New_values.Left; //Old Encoders count values
	Old_values.Right = New_values.Right;

	tempAngle = floor(YPR.yaw - Yaw_initvalue); //Temporary angle value in degrees
	if(tempAngle < 0){
		tempAngle+=360;
	}

	New_values.Left = positionLwheel;	//New Encoder Count values
	New_values.Right = positionRwheel;

	Delta.REnc = (New_values.Right - Old_values.Right)*CM; //Conversion of encoders values in cm
	Delta.LEnc = (New_values.Left - Old_values.Left)*CM;

	Delta.Angle = (degAngle - tempAngle)*DEG_TO_RAD; //Angle variation in radians
	Delta.Position = ((Delta.REnc + Delta.LEnc))/2; //Change in position

	Current_position.x = Current_position.x + Delta.Position*cosf(Current_position.theta + (Delta.Angle/2)); //Updating the position on X axis
	Current_position.y = Current_position.y + Delta.Position*sinf(Current_position.theta + (Delta.Angle/2)); //Updating the position on Y axis

	Position.x = Position.x + Delta.Position*cosf(Position.theta + (Delta.Angle/2)); //Updating the position on X axis
	Position.y = Position.y + Delta.Position*sinf(Position.theta + (Delta.Angle/2)); //Updating the position on Y axis


	degAngle = floor(YPR.yaw - Yaw_initvalue);
	if(degAngle < 0){
		degAngle+=360;
	}
	Current_position.theta = degAngle*DEG_TO_RAD;
	Position.theta = degAngle*DEG_TO_RAD;
}

/*
 * void Find_error()
 * This function finds the error in orientation and position
 * see http://www.dca.ufrn.br/~adelardo/artigos/ICINCO04a.pdf
 *
 * All info are in the link above and the wiki
 */
void Find_error()
{
	float DeltaL = 0; //Error in position

	Delta_ref.dx = (Desired_position.x - Current_position.x); //Difference between desired position and current position in X axis
	Delta_ref.dy = (Desired_position.y - Current_position.y); //Difference between desired position and current position in Y axis


	DeltaL = sqrtf(powf(Delta_ref.dx,2)+powf(Delta_ref.dy, 2)); //Error in position
	if(Delta_ref.dy != 0)
	{ThetaRef = atan2f(Delta_ref.dy,Delta_ref.dx);}

	Error.angular = (ThetaRef - Current_position.theta); //Value of the error in orientation
	if (Error.angular < -M_PI)
	{
		Error.angular += 2*M_PI;
	}
	Error.linear = DeltaL*cosf(Error.angular); //Value of the error in position

}
