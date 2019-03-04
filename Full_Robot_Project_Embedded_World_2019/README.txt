This is the archive with everything that was used for the demonstration at Embedded World 2019

- RobotGUI_EW2: Folder containing all the python file and executable used for the GUI. Make sure to read the Adapt_COM_port.docx file before doing anything
	With this folder you should be able to generate the GUI as an exe file to control wirelessly the robot via bluetooth

- Embedded_World_2019: Folder containing the code that was flashed to the AURIX for embedded world 2019
	Import the project on BIFACES and Build it 
	Flash the project on the AURIX with UDE or any debugger

Once you have generated your exectuable file for the GUI and you have flashed the program in the AURIX

- Power supply the robot 
- Open the GUI executable (it will automatically connect to the HC-05 module as long as it is paired with the computer and you chose the right COM PORT before generating the exe file)
- Control the robot wirelessly via the GUI 
	* Select Mode 1 by clicking on F1, "Mode 1 Selected" should appear on the screen
		Now you can wirelessly control the robot with the Forward, Backward, Right and Left commands (look at the Keyboard keys associated with commands)

	* Select Mode 2 by clicking on F2, "Mode 2 Selected" should appear on the screen
		Mode 2 is the "Autonomous mode" where the servomotor is sweeping and the Ultrasonic Sensor is looking for obstacles, when it detects an obstacle, it turns to the right
		To launch the Mode 2 click on F3, "Mode 2: ON" should appear on the screen, and the robot will go forward until it detects an obstacle
		To stop Mode 2, click on Esc, "Mode 2: OFF" should appear on the screen , and the robot will stop

If you want to go back to mode 1, click on F1 again. 

Please note that if you do a Power On Reset, the GUI does not detect it. That means that the GUI might show that you are in mode 1 or 2 even if on the Robot's side, neither mode is selected yet. 
 