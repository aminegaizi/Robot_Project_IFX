/*
 * Config_ISR.h
 *
 *  Created on: 19.11.2018
 *      Author: Gaizi
 *      All the ISR priorities are defined here
 */

//---Encoders Priorities--
#define PRIORITY_ISR_LEFT_ENCODER 1
#define PRIORITY_ISR_RIGHT_ENCODER 2

//---Motors Priorities---
#define PRIORITY_ISR_ENSLAVEMENT 3

//---SPI bluetooth priorities---
#define PRIORITY_ISR_SERIAL_RX		4
#define PRIORITY_ISR_SERIAL_TX		5
#define PRIORITY_ISR_SERIAL_ER		6

//---Servomotor priority
#define PRIORITY_ISR_SERVOMOTOR 7

//---Ultrasonic sensor priority
#define PRIORITY_ISR_ULTRASONIC 8

//---UART bluetooth priorities (Raspberry communication)
#define ISR_PRIORITY_SERIAL_TX		9
#define ISR_PRIORITY_SERIAL_RX		10
#define ISR_PRIORITY_SERIAL_ER		11

//--GTM Timer interrupt: Current Measurement, Obstacle Avoidance, Gyroscope
#define PRIORITY_ISR_GYRO 12

#define PRIORITY_ISR_CURRENT_MEASUREMENT 15

#define PRIORITY_ISR_OBSTACLE_AVOIDANCE 16

