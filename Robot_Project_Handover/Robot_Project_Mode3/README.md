README Robot Project Mode 3

##Background information on Mode 3

 For the mode 3 of the robot project, the goal is to put the robot in a environment with obstacles and symbols on the floor ('S' for Start, '1' to '5' and 'E' for End). 
 The robot has to detect all the numbers, and go over all the positions of the symbols in order. 

 We decided to approach the mode 3 this way: 
 With the mode 2, we know we can detect obstacles in front of the robot, and avoid collisions. At first we did not focus on the obsacle part for mode 3.
 
 The first thing was to detect the symbols and save their location. A CNN capable of detecting the symbols and computing their position relative to the robot was developped (more info on wiki). 
 At the same time, we implemented an algorithm to compute the location of the robot in real time using odometry. Then, we implemented an advanced control algorithm that drives the robot to a location, taking in input the (X,Y) coordinates of the location. 

The CNN, the odometry and the control algorithm are functional. These are the first functionnal versions of all three of these. These are not the perfect versions of all of them, rather a functioning prototype that should be better. Example:  for the control algorithm, there is currently a constant value used for the integrate correction. A dynamic integrate correction should be implemented using the past errors of the enslavement with a correcty calibrated integrate coefficient. 

One thing to look out for is the precision of the robot. While testing, it is inevitable that sometimes the robot will not be very precise. This is due to the lack of precision from the sensors, and external factors. Also, there is absolutely no thought put into the mechanics of this robot. Usually the precision comes from the mechanics. In our case, we try to make up for this with powerful algorithms.

One example if you put the robot on a carpet, the resistance from the floor is big, if the batteries are low the robot might struggle to move. The ideal conditions are when the robot has batteries full, and is put on the lab flooring (this is where we ran our tests).

To go through the symbols, we started on working on the following idea: 

Our sensors are not very precise. Instead of saving the position of each symbol, we can divide the environment in zones. We would save the information that a particular number is in a particular zone. When we want to go to a symbol, the robot can go to the location of a particular zone and wait for the CNN to redetect the symbol. This would give us a more precise input parameter for the control algorithm. We were not able to finish this. Guidelines can be found in the comments of the code.

Also we did not start working on an advanced obstacle avoidance algorithm.  


##How to test the current progress of Mode 3:

	 - Power supply the raspberry and launch the CNN (instructions in wiki)
	 - Put the robot on the floor, turn on the power supply
	 - After about 10 secs, "READY" should appear on the tft screen of the application kit. This means that the gyroscope is calibrated (nothing will happen before the READY sign appears)
	 - Put a symbol on the floor (make sure it is in the viewing angle of the camera)
	 - The CNN should detect the symbol, send its location to the robot. The control algorithm should take over and drive the robot to that location
	 - Place another symbol in the viewing angle of the camera, the robot will go to that location, etc. 

##What should be implemented next: 

Now that this is functional, to achieve mode 3, there are a couple of things to work on. 
The first thing is the mapping. By knowing the width and length of the map, the robot should divide the map in a particular number of zones. 
On start up, the robot should cover all the map with the camera to detect all the symbols (if the length/width of the map are unknown, put the robot close to an edge and wait for the ultrasonic sensor to detect the other edge to get the value). 
When a location of a symbol (relative to the robot) is received, its zone number should be determined and saved. 

When all the zones of all the symbols are saved, the robot should to go to the zones of the symbols (in order).

One other aspect that can be implemented, is and advanced obstacle avoidance algorithm. At the moment we can detect obstacles and avoid collision. 
One first major flaw of our detection is that the sensor does not see small obstacles on the floor that can block the wheels. This type of situation can be detected when there is a peak in current consumption (look at the value of the current sensor). The idea would be to analyze the current consumption and handle this situations by going backwards or such when a peak is detected. 
Afterwards, an advanced obstacle avoidance algorithm could be implemented. There are a lot of research papers that explain ways to do this on internet.  

##How to improve the code

In the current version of the project, almost everything is implemented in Cpu0 (except for a couple of interrupts). 
It would be better to divide the sensor implementations in all the Cpus. 


##Side Note:
In this mode, we intend on using the bluetooth communication to give information on the map to the GUI.

We kept everything we used in mode 2 in the code for mode 3. Although most of it is not in used, it could be used if you need to, or if you have an idea based on what was implemented on modre 2. Example: Mode switch between mode 1 and 2 in the serial.c file

##Known bugs: 
None to this day

#Good luck :) 


_Code reviewed and tested on June 21st by Amine Gaizi.
README written on June 24th by Amine Gaizi._  
