/*
 * ultrasonic_sensor.h
 *
 *  Created on: 10.09.2018
 *      Author: Bourgogne
 */

//#ifndef 0_SRC_0_APPSW_TRICORE_ULTRASONIC_SENSOR_ULTRASONIC_SENSOR_H_
//#define 0_SRC_0_APPSW_TRICORE_ULTRASONIC_SENSOR_ULTRASONIC_SENSOR_H_
//
//#endif /* 0_SRC_0_APPSW_TRICORE_ULTRASONIC_SENSOR_ULTRASONIC_SENSOR_H_ */
#include <Port/Io/IfxPort_Io.h>
#include <Stm/Std/IfxStm.h>
#include <Src/std/IfxSrc.h>
#include <IfxSrc_reg.h>
#include <_PinMap/IfxPort_pinMap.h>
#include "Config_ISR.h"
#include <Port/Io/IfxPort_Io.h>
#include "Bsp.h"


void configUltrasonicSensor(void);


void sendTrig(IfxPort_Pin port_pin);


void isrGetDistance(void);


float64 returnDistance(void);
