/*
 * Mapping.c
 *
 *  Created on: 06.05.2019
 *      Author: Gaizi
 *
 *    The idea to map the environment is following:
 *    The resoution of the sensors do not allow us to have a good precision in Odometry. Therefore, if we save the position of a symbol, go to another place at the opposite and try to come
 *    back, it is very likely that the robot will not come to the correct position.
 *    We thought about dividing the environment in zones. Let's say we want to divide the full map in 6 zones, we could be able to know in which zone each symbol is.
 *    In order to go back to the position of the symbol, we would actually make the robot go towards the center of the zone so that the raspberry can detect the symbol again and send a
 *    precise command to the robot.
 *
 *    The following functions are an attempt to divide the environment in zones and to process the positions of the symbols to assign a zone to each one of them.
 *    None of the functions of this file are completely functionnal or completely tested. we started working on the mapping very late, and prefered to correctly document everything
 *    that was previously functional rather than having functional but not maintainable or understable code.
 *
 *    Good luck :)
 */

#include "Mapping.h"


extern current_position Current_position;
extern desired_position Desired_position;


uint8 Rows = 2;
uint8 Columns = 2;

uint8 length = 200; //Length and width of the map
uint8 width = 200;


/*
 * uint8 ZoneDivider()
 * Work in progress, not fully tested yet
 *
 * The idea was to divide the envrionment in zone, this function should be able to adapt to a different number of rows, columns, width and length (of the map)
 * It is not the case yet, the number of the zone is not calculated
 *
 */
uint8 ZoneDivider()
{
	uint8 Zone = 0;
	if(Current_position.x <(width/Columns))
	{
		if(Current_position.y > (length/Rows))
		{
			Zone = 4;
		}
		else if (Current_position.y <= (length/Rows))
		{
			Zone = 2;
		}
	}
	else if (Current_position.x >= (width/Columns))
	{
		if(Current_position.y > (length/Rows))
		{
			Zone = 3;
		}
		else if (Current_position.y <= (length/Rows))
		{
			Zone = 1;
		}
	}

	return Zone;
}

/*
 * void GoToZone(uint8 Zone)
 * Work in progress, not fully tested yet
 *
 * Since the zones are divided in a symetrical way, by knowing the number of the zone we should be able to calculate its coordinates in the map
 * Then, we can send this position as instruction to the enslavement.
 *
 */
void GoToZone(uint8 Zone)
{
	uint8 c =0, r=0; //c for column and r for row
	switch(Zone){
		case 1:
			r = 1, c = 1;
			break;
		case 2:
			r = 1, c = 2;
			break;
		case 3:
			r = 2, c = 1;
			break;
		case 4:
			r = 2,c = 2;
			break;
		default:
			break;
	}

	Desired_position.x = c*((width/Columns)/2);
	Desired_position.y = r*((length/Rows)/2);
}
