/*
 * Enslavement.h
 *
 *  Created on: 16.04.2019
 *      Author: Gaizi
 */

#ifndef ENSLAVEMENT_H_
#define ENSLAVEMENT_H_


#include "position.h"
#include "Motors.h"
#include "PWM_config.h"
#include "Config_PWM.h"
#include "Beeper.h"

int Distance_Command();
float Angular_Command();
void Commande_Motors();

enum{
	Aurix_State_WAIT,
	Aurix_State_ROTATION,
	Aurix_State_FORWARD,
};

#endif /* 0_SRC_APPSW_TRICORE_ENSLAVEMENT_ENSLAVEMENT_H_ */
