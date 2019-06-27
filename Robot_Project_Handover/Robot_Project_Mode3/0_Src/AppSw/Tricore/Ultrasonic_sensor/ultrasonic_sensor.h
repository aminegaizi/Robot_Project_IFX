/*
 * ultrasonic_sensor.h
 *
 *  Created on: 10.09.2018
 *      Author: Bourgogn
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


#include "IfxSrc_reg.h"
#include "IfxSrc_regdef.h"
#include <Scu/Std/IfxScuEru.h>
#include "IfxCpu_Irq.h"

/*configure an external interrupt for the echo signal coming from the sensor
on the P20.9 pin, using ERU3
*/
void configUltrasonicSensor(void);

//create a 10us high state signal on the port_pin pin
void sendTrig(IfxPort_Pin port_pin);

/*interrupt service request when echo signal detected
change setting of edge detection depending on the state before
get t0 on the rising edge and tf on the falling edge
*/
void isrGetDistance(void);

/*return the distance measured by the sensor
 * divide by 1000 to get the equivalent in cm
 * INPUT:none
 * OUTPUT: float64 distance
 */
float64 returnDistance(void);
