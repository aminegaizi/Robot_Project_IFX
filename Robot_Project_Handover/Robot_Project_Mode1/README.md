README Robot Project Mode 1

##Background information on Mode 1

In the mode 1 of the robot project, the goal was to establish a bluetooth communication in order to control the movements of the robot wirelessly. 
Therefore, the main modules that were implemented are: motor control, and serial communication. 

##How to get started: 

You can flash the project to the AURIX™, then power supply the robot. There are 3 ways of controlling the robot.
	1. You can control the robot using a serial console like Putty. If you have a bluetooth communication in your computer, pair it with the HC-05 module (password: 1234, the robot has to 
		be 	power supplied to turn on the bluetooth module)
		If you don't, you can use a bluetooth dongle (a very small black USB module). Plug it into your computer and proceed to pair your computer with the HC-05 module

		Open your device manager, and locate the COM port associated with the bluetooth serial communication

		Open Putty, in Connection Type, choose Serial, in Serial line write COM__ (__ is the number of the COM port, ex COM10), and in speed type 9600 (bauds)

		Click on Open. 

		Now you can control the robot. To make the robot go forward, use the key: 'w', backward: 's', to make it turn to the right: 'd', left: 'a'. 

	2. You can control the robot using the python GUI. Check the folder RobotGUI_EW2, and follow the instructions in the README. 
		Bear in mind that with this project, you can only use mode 1

	3. Android App. Before opening the App, pair your device with the HC-05 module. Open the App, click on Devices Available, click on HC-05, wait for the message "connected". 
		Start controlling the robot using the Joystick. The Joystick works this way: When you hold a position, the corresponding command is sent to the robot. If you release the joystick, it 
		will automatically go back to its initial position and sent the 'stop' command to the robot



##Side Note: 

In the project, you can see that the ultrasonic sensor and the servomotor are also implemented, but not used.
If you wish yo use them in this project, you can uncomment the code in the main taking care of initializing these modules. 


##Known bugs: 

Very rarely it happens that a character sent from the Android app is not received by the Robot. We ran many tests to try to find what was causing the problem, but we didn't.
This was at the very early stages of the Android APP (around january), then the structure of the app was completely changed and bettered. We never ran into that problem since February. 


_Code reviewed and tested on June 19th 2019 by Amine Gaizi. 
README written on June 21st by Amine Gaizi._ 