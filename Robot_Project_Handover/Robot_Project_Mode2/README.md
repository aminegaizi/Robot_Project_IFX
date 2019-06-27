README Robot Project Mode 2

##Background information on Mode 2

In the mode 2 of the robot project, the goal was to make the robot detect and avoid obstacles autonomously. The autonomous mode would be activated wirelessly via Bluetooth.
Therefore, the main modules that were implemented (in addition to those of the mode 1): Ultrasonic sensor, Servomotor, obstacle avoidance algorithm. 

Here is the project that was presented at Embedded World 2019:

- Robot_Project_Mode2: Folder containing the code that was flashed to the AURIX for embedded world 2019
	Import the project on BIFACES and Build it 
	Flash the project on the AURIX™ with UDE or any debugger

- To find the GUI go to the RobotGUI_EW2 folder, follow the instructions in the README 

##How to get started:

	Once you have generated your exectuable file for the GUI and you have flashed the program in the AURIX

	- Power supply the robot 
	- Open the GUI executable (it will automatically connect to the HC-05 module as long as it was previously paired with the computer and you chose the right COM PORT before generating the exe file, if you computer is not paired with the HC-05, take a look at the readme of Mode 1)
	- Control the robot wirelessly via the GUI 
		* Select Mode 1 by clicking on F1, "Mode 1 Selected" should appear on the tft screen of the application kit. 
			Now you can wirelessly control the robot with the Forward, Backward, Right and Left commands (look at the Keyboard keys associated with commands in the GUI)

		* Select Mode 2 by clicking on F2, "Mode 2 Selected" should appear on the tft screen of the application kit. 
			Mode 2 is the "Autonomous mode" where the servomotor is sweeping and the Ultrasonic Sensor is looking for obstacles, when it detects an obstacle, it turns to the right.
			To launch the Mode 2 click on F3, "Mode 2: ON" should appear on the screen, and the robot will go forward until it detects an obstacle
			To stop Mode 2, click on Esc, "Mode 2: OFF" should appear on the screen , and the robot will stop

	If you want to go back to mode 1, click on F1 again. 

	-You can also control the robot via a serial console. Follow the steps indicated in the readme of mode 1 (baudrate is still 9600). The commands are the following: 
		*'1' to select mode 1, then: forward 'w', backward 's', right 'd', left 'a', foward curb to the right 'r', forward curb to the left 'e', backward curb to the right 'd', backward curb to the left 'f'. To stop the robot click on 'q'
		*'2' to select mode 2, to launch mode 2 click on 'v', to stop the robot click on 'q'. 

	-To control the robot with the Android App, follow the steps indicated in the readme for the mode 1. To enable the mode 2, click on the button Mode 2, which will change the background (and select mode 2 on the robot). 
	You will now have a button instead of a Joystick. Click on 'ON' and 'OFF' to trigger and stop the mode 2.


##Side Note:
If you do a Power On Reset (PORST), the GUI and the Android App do not detect it. That means that the GUI/App might show that you are in mode 1 or 2 even if on the Robot's side, neither mode is selected yet (in doubt look at the tft display). 


##Known Bugs: 
Same as in README for mode 1. 

_Code reviewed and tested on June 21st by Amine Gaizi.
README written on June 21st by Amine Gaizi._ 