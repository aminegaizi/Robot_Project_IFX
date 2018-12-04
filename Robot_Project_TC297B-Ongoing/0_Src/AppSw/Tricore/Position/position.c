/*
 * position.c
 *
 *  Created on: 06.11.2018
 *      Author: Gaizi
 */

#include "position.h"

volatile float theta = 0;
volatile float x = 0;
volatile float y = 0;
volatile float degree_angle = 0;

volatile float Encoder_Values[LEN][WID];
volatile float Position_Values[LEN][WID];
extern volatile uint32 interruptLeft_counter;
extern volatile uint32 interruptRight_counter;
volatile int iterator = 0;

old_position Old_position = {0.0f, 0.0f, 0.0f};
current_position Current_position = {0.0f, 0.0f, 0.0f};
delta Delta = {0.0f, 0.0f};
desired_position Desired_position = {0.0f, 0.0f, 0.0f};
error Error = {0.0f, 0.0f};
delta_ref Delta_ref = {0.0f, 0.0f};


void position_data()
{
	Encoder_Values[iterator][0] = interruptLeft_counter; //Saving the number of counts sent by the right encoder
	Encoder_Values[iterator][1] = interruptRight_counter; //Saving the number of counts sent by the left encoder

	iterator++; //iterator to parcour the array

	update_position();
	Find_error();

	Position_Values[iterator-1][0] = Current_position.x;
	Position_Values[iterator-1][1] = Current_position.y;
	interruptLeft_counter+=1;
	interruptRight_counter+=1;
}

void init_array()
{
	int i =0 ,j = 0;
	for (i=0;i<LEN;i++)
	{
		for(j=0; j<2; j++)
		{
			Encoder_Values[i][j] = 0;
			Position_Values[i][j] = 0;
		}
	}
}
/*
 * This function updates the Robot's position using odometry with the data sent by the encoders
 */
void update_position()
{

	Delta.Position = (Encoder_Values[iterator-1][0] + Encoder_Values[iterator-1][1])*CM/2; //Change in position
	Delta.Angle = (Encoder_Values[iterator-1][0] - Encoder_Values[iterator-1][1])*CM/(RADIUS); //Change in orientation

	Old_position.x = Current_position.x; //Saving the old position to increment the new position on X axis(Temporary)
	Old_position.y = Current_position.y; //Saving the old position to increment the new position on X axis(Temporary)
	Old_position.theta = Current_position.theta; //Saving the old orientation to increment the new one

	Current_position.x = Old_position.x + Delta.Position*cosf(Current_position.theta + (Delta.Angle/2)); //Updating the position on X axis
	Current_position.y = Old_position.y + Delta.Position*sinf(Current_position.theta + (Delta.Angle/2)); //Updating the position on Y axis
	Current_position.theta = Old_position.theta + Delta.Angle; //Updating the angle of orientation

	if (Current_position.theta <= -2*M_PI) //Modulo - 2*pi
	{ //if the angle is less than -2*pi we can keep the modulo
		Current_position.theta = fmod(Current_position.theta, 2*M_PI);
	}
	if (Current_position.theta >= 2*M_PI) //Modulo 2*pi
	{ //if the angle is less than 2*pi we can keep the modulo
		Current_position.theta = fmod(Current_position.theta, 2*M_PI);
	}
	degree_angle = (Current_position.theta * 360)/(2*M_PI); //Conversion from rad to degrees
}
/*
 * This function finds the error in orientation and position
 */
void Find_error()
{
	Delta_ref.dx = (Desired_position.x - Current_position.x); //Difference between desired position and current position in X axis
	Delta_ref.dy = (Desired_position.y - Current_position.y); //Difference between desired position and current position in Y axis

	Error.angular = atan2f(Delta_ref.dy,Delta_ref.dx) - Current_position.theta; //Value of the error in orientation
	Error.linear = sqrt(powf(Delta_ref.dx,2)+powf(Delta_ref.dy, 2))*cosf(atan2f(Delta_ref.dy,Delta_ref.dx)-Current_position.theta); //Value of the error in position
}

