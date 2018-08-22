#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include "IfxPort.h"
#include <Stm/Std/IfxStm.h>

void StartRightMotor();
void StartLeftMotor();
void StopLeftMotor();
void StopRightMotor();
void GoAhead(int Time);
void PWM(Ifx_P *port, uint8 pin, int period, float duty_cycle, int total_time);
