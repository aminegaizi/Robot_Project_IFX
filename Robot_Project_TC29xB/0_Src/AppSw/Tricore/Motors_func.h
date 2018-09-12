#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include "IfxPort.h"
#include <Stm/Std/IfxStm.h>

void StartRightMotor();
void StartLeftMotor();
void StopLeftMotor();
void StopRightMotor();


void Forward(float distance);
void Backward (float distance);
void Right (float angle);
void Left (float angle);
