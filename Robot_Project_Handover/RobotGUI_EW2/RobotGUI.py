##
##import sys
##from PyQt4 import QtGui  

##app=QtGui.QApplication(sys.argv)
##window=QtGui.QWidget()
##window.show()

#!/usr/bin/env python


#distBackward

from msvcrt import getch
from PyQt4 import QtCore, QtGui, QtSvg #Lirary used to generate the window
import sys, time, threading, random #various usefull libraries
import serial#used to communicate with the Bluetooth module
import string
import threading# used to create multiple thread
import math
import keyboard
import winreg as reg
from itertools import count
import atexit
import pygame

alphabet="abcdefghijklmnopqrstuvwxyz" #"alphabet" if picking letters and numbers is necessary
numbers="-0123456789"

def com_port1():
    com_port = ''
    key = reg.OpenKey(reg.HKEY_LOCAL_MACHINE, 'HARDWARE\\DEVICEMAP\\SERIALCOMM')
    counter = 0
    for i in count():
        try: 
            device, port = reg.EnumValue(key, i)[:2]
            if 'BthModem0' in device:
                com_port = port
            counter+=1            
        except WindowsError:
            break
    
    return com_port

class Window(QtGui.QWidget):# main window
    
    valueChanged = QtCore.pyqtSignal(int)
    
    ser=serial.Serial('COM3')#for Linux, has to be changed on Windows
    #ser.bauderate=115200
    ser.close()#Makes sure no other application uses the bluetooth module
    ser.open()#Initiate the comminucation with the Bluetooth module
    def __init__(self, parent=None):
	
	#This the main window, in it, we add the different parts of the GUI (those parts are added with "grid.addWidget()" )
	#with grid being the layout of the main window, there can be "sub-grid" within the differnet parts of the GUI.
        self.stateMode1=0
        self.stateMode2=0
        self.statePrevMode1=1
        self.statePrevMode2=0
        
        super(Window, self).__init__(parent)#create the window
        grid = QtGui.QGridLayout()#creates a grid to organise the layout of the main window
        
        label = QtGui.QLabel("Infineon")
        pixmap = QtGui.QPixmap('logo.png')
        label.setPixmap(pixmap)
        
        #grid.addWidget(self.commands())#adds command part of the GUI
        grid.addWidget(self.mode1(),1,0)
        grid.addWidget(self.mode2(),1,1)
        #grid.addWidget(self.feedbackPos(),0,1)
        grid.addWidget(label,0,0)
        grid.addWidget(self.choiceModes(),0,1)
        
        #grid.addWidget(self.feedback())#adds feedback part of the GUI 
        #grid.addWidget(self.packetLoad())#adds log  part of the GUI
        self.st=0
        self.span=0.01
        #testThreading()
        self.setLayout(grid)#creates the Layout 
        #threading.Thread(target=self.testThreading).start()#creates the serial port polling thread 
        #threading.Thread(target = self.KeyCheck).start()
        self.setWindowTitle("Robot_project_IFX")#Window title
        self.resize(800, 600)#size of the window
        #self.setWindowIcon(QtGui.QIcon(QtSvg('logo.eps')))#icon of the window (on the upper left hand corner)
        #self.testThreading()
        #self.KeyCheck()
        
    def choiceModes(self):
        groupBox = QtGui.QGroupBox("Modes")#Creation of the groupBox
        vbox = QtGui.QGridLayout()
        self.Mode1 = QtGui.QRadioButton("Mode 1 [F1]")
        self.Mode2 = QtGui.QRadioButton("Mode 2 [F2]")
        #self.Mode1.setChecked(True)
        #self.Mode1.clicked.connect(self.validBegin)
        #self.Mode2.clicked.connect(self.validBegin)
        vbox.addWidget(self.Mode1,0,0)
        
        vbox.addWidget(self.Mode2,0,1)
        groupBox.setLayout(vbox)#associate the Layout to the groupbox
        return groupBox
        
    def mode2(self):#definition of the command part of the GUI, (no argument, returns a QtGui.QGroupBox)
        groupBox = QtGui.QGroupBox("Mode 2")#Creation of the groupBox
        #print(self.groupBoxMode2.isChecked)
        vbox = QtGui.QGridLayout()
        validBegin = QtGui.QPushButton("Begin [F3]")#creates a button "Valid"
        validBegin.clicked.connect(self.validBegin)
        validStop = QtGui.QPushButton("Stop [esc]")#creates a button "Valid"
        validStop.clicked.connect(self.validStop)
        
        vbox.addWidget(validBegin)
        
        vbox.addWidget(validStop)
        groupBox.setLayout(vbox)#associate the Layout to the groupbox
        return groupBox
    def mode1(self):#definition of the command part of the GUI, (no argument, returns a QtGui.QGroupBox)
        groupBox = QtGui.QGroupBox("Mode 1")#Creation of the groupBox
        vbox = QtGui.QGridLayout()
        vbox.addWidget(self.commands())
        groupBox.setLayout(vbox)#associate the Layout to the groupbox
        return groupBox
    def keyPressEvent(self, e):
        #print(e.key())
        if e.key()==16777264:
            #print("Mode1")
            self.Mode1.setChecked(True)
            self.ser.write(str.encode('1'))
        elif e.key()==16777265:
            #print("Mode2")
            self.Mode2.setChecked(True)
            self.ser.write(str.encode('2'))
        elif e.key()==16777266:
            self.validBegin()
        elif e.key()==16777216:
            print("Motors stopped")
            self.stopMotors()
        elif (e.key()==16777275 or e.key()==16777274 or e.key()==16777273 or e.key()==16777272)and(self.Mode1.isChecked()==False):
            print("Please select \"Mode 1\" to enter this functionality")
        
        elif self.Mode1.isChecked():
            if e.key()==16777275:
                print("Right")
                self.validTurnRight()
            elif e.key()==16777274:
                print("Down")
                self.validBackward()
            elif e.key()==16777273:
                print("Up")
                self.validForward()
            elif e.key()==16777272:
                print("Left")
                self.validTurnLeft()
        
         
        #if e.key() == QtCore.Qt.UpArrow:
            #self.close()

    def KeyCheck(self):
        #print(self.st)
        
        base = getch()
        sub=' '
        if ord(base) != 97 and ord(base)!= 100 and ord(base)!= 115 and ord(base)!= 119:
            sub = getch()
        if self.st==0:
            
            #global Break_KeyCheck
            #Break_KeyCheck = True
            #print('a')
            #while Break_KeyCheck:
            
            #base = getch()
            #sub=' '
            #if ord(base) != 97 and ord(base)!= 100 and ord(base)!= 115 and ord(base)!= 119:
                #sub = getch()
            #key=ord(sub)
            key=''
            #print(ord(base))
            #print(ord(sub))
            if ord(sub) == 72 or ord(base) == 119:
                key = 'UP_KEY'
                self.validForward()
                print(key)
                #break#break!
            elif ord(sub) == 77 or ord(base) == 100:
                key = 'RIGHT_KEY'
                self.validTurnRight()
                print(key)
                #break
            elif ord(sub) == 80 or ord(base) == 115:
                key = 'DOWN_KEY'
                self.validBackward()
                print(key)
                #break
            elif ord(sub) == 75 or ord(base) == 97:
                key = 'LEFT_KEY'
                self.validTurnLeft()
                print(key)
                #break
            #if key != '':
                #print(key)
                    
            threading.Timer(self.span, self.KeyCheck).start()
        #print("boucle infinie !")
            
    def feedback(self):#definition of the feedback part of the GUI, (no argument, returns a QtGui.QGroupBox)
        groupBox = QtGui.QGroupBox("Robot feedback: ")#Creation of the groupBox
        vbox = QtGui.QGridLayout()#creates the layout of the groupbox
        
        #The text of the following labels are to change with the feedback from robot's sensors, therefore are declared as "self"
        self.distObst = QtGui.QLabel("N/A")
        self.REnc = QtGui.QLabel("N/A")
        self.LEnc = QtGui.QLabel("N/A")
        self.REncCm = QtGui.QLabel("N/A")
        self.LEncCm = QtGui.QLabel("N/A")
        
        #The text of the following labels is static
        labelDistObst = QtGui.QLabel("Distance from obstacle:")
        labelREnc = QtGui.QLabel("Right Encoder:")
        labelLEnc = QtGui.QLabel("Left Encoder:")
        
        labelCm = QtGui.QLabel("mm")
        labelCmL = QtGui.QLabel("cm")
        labelCmR = QtGui.QLabel("cm")
        labelTics = QtGui.QLabel("tics->")
        labelLTics = QtGui.QLabel("tics->")
        
        
        #The following lines are adding the widgets previously created to the layout
        vbox.addWidget(labelDistObst,4,0)
        vbox.addWidget(self.distObst,4,1)
        vbox.addWidget(labelCm,4,2)
        
        vbox.addWidget(labelREnc,5,0)
        vbox.addWidget(self.REnc,5,1)
        vbox.addWidget(labelTics,5,2)
        vbox.addWidget(self.REncCm,5,3)
        vbox.addWidget(labelCmR,5,4)
        
        vbox.addWidget(labelLEnc,6,0)
        vbox.addWidget(self.LEnc,6,1)
        vbox.addWidget(labelLTics,6,2)
        vbox.addWidget(self.LEncCm,6,3)
        vbox.addWidget(labelCmL,6,4)
        
        groupBox.setLayout(vbox)#associate the Layout to the groupbox

        return groupBox
    
    def commands(self):#definition of the command part of the GUI, (no argument, returns a QtGui.QGroupBox)
        groupBox = QtGui.QGroupBox("Commands")#Creation of the groupBox
        vbox = QtGui.QGridLayout()
        
        #The text of the following labels is static
##        labelForward = QtGui.QLabel("Forward                              ")
##        labelBackward = QtGui.QLabel("Backward          ")
##        labelTurnLeft = QtGui.QLabel("Turn left          ")
##        labelTurnRight = QtGui.QLabel("Turn rigth          ")
        
        #labelXPosition = QtGui.QLabel("Position on X:")
        #labelYPosition = QtGui.QLabel("Position on Y:")
        #labelAnglePosition = QtGui.QLabel("Orientation:")
##        labelTurnRight = QtGui.QLabel("Turn right")
        
        ##the following widgets are empty fileds waiting to be filled by the user
###        self.distForward= QtGui.QLineEdit()
###        self.distBackward= QtGui.QLineEdit()
###        self.angleL= QtGui.QLineEdit()
###        self.angleR= QtGui.QLineEdit()

        #self.XPos = QtGui.QLabel("N/A")
        #self.YPos = QtGui.QLabel("N/A")
        #self.AnglePos = QtGui.QLabel("N/A")
        
        ##The text of the following labels is static
        ##labelForwardCm = QtGui.QLabel("cm				")
        ##labelBackwardCm = QtGui.QLabel("cm				")
        ##labelTurnRightDeg = QtGui.QLabel("degres				")
        ##labelTurnLeftDeg = QtGui.QLabel("degres				")
        
        #labelXPosCm = QtGui.QLabel("cm")
        #labelYPosCm = QtGui.QLabel("cm")
        #labelAngleDeg = QtGui.QLabel("degres")
###        picture = QtGui.QLabel(Window)
 ###       picture.setPixmap(QtGui.QPixmap(os.getcwd() + "/Logo.png"))
###      labelTurnLeftDeg = QtGui.QLabel("degres")
	
        #the followings lines are creating the buttons trigering commands for he robot
        validForwardButton = QtGui.QPushButton("          Forward               [F10]")#creates a button "Valid"
        validForwardButton.clicked.connect(self.validForward)#connects the previously created button to the function self.validForward (no arguments for the function self.validForward)
        
        validBackawardButton = QtGui.QPushButton("          Backward             [F11]")
        validBackawardButton.clicked.connect(self.validBackward)
        
        validTurnLeftButton = QtGui.QPushButton("          Left                       [F9]")
        validTurnLeftButton.clicked.connect(self.validTurnLeft)
        
        validTurnRightButton = QtGui.QPushButton("          Right                    [F12]")
        validTurnRightButton.clicked.connect(self.validTurnRight)
        
        validStopButton = QtGui.QPushButton("          STOP MOTORS     [esc]")
        validStopButton.clicked.connect(self.stopMotors)

##        validInitButton = QtGui.QPushButton("          Reset Sensors          ")
##        validInitButton.clicked.connect(self.ResetSensors)
        
        #The following lines are adding the objects previously created 
        #vbox.addWidget(labelXPosition,0,0)
        #vbox.addWidget(self.XPos,0,1)
        #vbox.addWidget(labelXPosCm,0,2)
        vbox.addWidget(validForwardButton,0,3)
        
        #vbox.addWidget(labelYPosition,1,0)
        #vbox.addWidget(self.YPos,1,1)
        #vbox.addWidget(labelYPosCm,1,2)
        vbox.addWidget(validBackawardButton,1,3)
        
        #vbox.addWidget(labelAnglePosition,2,0)  
        #vbox.addWidget(self.AnglePos,2,1)
        #vbox.addWidget(labelAngleDeg,2,2)
        vbox.addWidget(validTurnRightButton,2,3)
        
##        vbox.addWidget(picture,3,0)
##        vbox.addWidget(self.angleL,3,1)
##        vbox.addWidget(labelTurnLeftDeg,3,2)
##        vbox.addWidget(validInitButton,3,2)
        vbox.addWidget(validTurnLeftButton,3,3)
        
        vbox.addWidget(validStopButton,4,3)
        
        groupBox.setLayout(vbox)#associate the Layout to the groupbox

        return groupBox
    #the following functions: stop.motors, validForward, 
    def feedbackPos(self):
        groupBox = QtGui.QGroupBox("Feedback")#Creation of the groupBox
        vbox = QtGui.QGridLayout()
        
        labelXPosition = QtGui.QLabel("Position on X:")
        labelYPosition = QtGui.QLabel("Position on Y:")
        labelAnglePosition = QtGui.QLabel("Orientation:")
        self.XPos = QtGui.QLabel("N/A")
        self.YPos = QtGui.QLabel("N/A")
        self.AnglePos = QtGui.QLabel("N/A")
        labelXPosCm = QtGui.QLabel("cm")
        labelYPosCm = QtGui.QLabel("cm")
        labelAngleDeg = QtGui.QLabel("degres")
        
        vbox.addWidget(labelXPosition,0,0)
        vbox.addWidget(self.XPos,0,1)
        vbox.addWidget(labelXPosCm,0,2)
        
        vbox.addWidget(labelYPosition,1,0)
        vbox.addWidget(self.YPos,1,1)
        vbox.addWidget(labelYPosCm,1,2)
        
        vbox.addWidget(labelAnglePosition,2,0)
        vbox.addWidget(self.AnglePos,2,1)
        vbox.addWidget(labelAngleDeg,2,2)
        groupBox.setLayout(vbox)#associate the Layout to the groupbox
        return groupBox
    def stopMotors(self):
      self.ser.write(str.encode('q'))
      #self.Keyboard()
      #self.st=1
    def Keyboard(self):
        pygame.init()
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                #st=1
                pygame.quit()
                sys.exit()
            if event.type==2:
                truc = pygame.key.name(event.key)

                if truc == "left":
                    print("left")
                    ser.write(str.encode('a'))
                elif truc == "right":
                    print("right")
                    ser.write(str.encode('d'))
                elif truc == "up":
                    print("up")
                    ser.write(str.encode('w'))
                elif truc == "down":
                    print("down")
                    ser.write(str.encode('s'))
                elif truc=="t":#fr r
                    print("Forward right curb")
                    ser.write(str.encode('r'))
                elif truc=="r":#fl e
                    print("Forward left curb")
                    ser.write(str.encode('e'))
                elif truc=="g":#br f
                    print("Backward right curb")
                    ser.write(str.encode('f'))
                elif truc=="f":#bl g
                    print("Backward left curb")
                    ser.write(str.encode('g'))
    def sendMode1(self):
        ser.write(str.encode('1'))
    def validBegin(self):
      #message=self.distForward.text()
      if self.Mode2.isChecked():
        print("Begin mode 2")
        self.ser.write(str.encode('v'))
      else:
        print("Please select \"Mode 2\" to enter this functionality")
    def validStop(self):
      #message=self.distForward.text()
      self.ser.write(str.encode('q'))
      
    def validForward(self):
      #message=self.distForward.text()
      if self.Mode1.isChecked():
        self.ser.write(str.encode('w'))
      else:
        print("Please select \"Mode 1\" to enter this functionality")
    def validBackward(self):
      #message=self.distBackward.text()
      if self.Mode1.isChecked():
        self.ser.write(str.encode('s'))
      else:
        print("Please select \"Mode 1\" to enter this functionality")
    def validTurnLeft(self):
      #message=self.angleL.text()
      if self.Mode1.isChecked():
        self.ser.write(str.encode('a'))
      else:
        print("Please select \"Mode 1\" to enter this functionality")
    def validTurnRight(self):
      #message=self.angleR.text()
      if self.Mode1.isChecked():
        self.ser.write(str.encode('d'))
      else:
        print("Please select \"Mode 1\" to enter this functionality")
    def ResetSensors(self):
      self.ser.write(str.encode('i'))
      
    #def updateDist(self, message):
      #self.distObst.setText(message)
      #self.payload.setText("Forward")
    def updateLEnc(self, message):
      self.LEnc.setText(message)
      messageCm=math.pi*6.5*(float(message))/40
      self.LEncCm.setText(str(round(messageCm,2)))
      
    def updateREnc(self, message):
      self.REnc.setText(message)
      messageCm=math.pi*6.5*(float(message))/40
      self.REncCm.setText(str(round(messageCm,2)))

    def updateXpos(self, message):
        self.XPos.setText(message)

    def updateYpos(self, message):
        self.YPos.setText(message)

    def updateAnglePos(self, message):
        self.AnglePos.setText(message)
      
    def testThreading(self):
      if self.st==0:
        self.stateMode1=self.Mode1.isChecked()
        if (self.statePrevMode1!=self.stateMode1):
            if self.Mode1.isChecked():
                print("Mode1")
                self.ser.write(str.encode('1'))
            else:
                print("Mode2")
                self.ser.write(str.encode('2'))
            self.statePrevMode1=self.stateMode1
            
            
        #threading.Timer(self.span, self.testThreading).start()
      #while 1:
        message=''
        tagOk=self.ser.read(1)
        tag=tagOk.decode('utf8')
        #print(self.st)
        if str(tag) in alphabet:
            message=tag
            #print(message)
            tag=self.ser.read(1).decode('utf8')
            while str(tag) in numbers:#problem for the next packet, as of right now, half of all packets will be eliminated
                message=message+tag
                tag=self.ser.read(1).decode('utf8')
                #type(message)
                #print(message)
            #if message[0]=='a':
                #self.updateDist(message[1:])
            #if message[0]=='b':
                #self.updateLEnc(message[1:])
            #if message[0]=='c':
                #self.updateREnc(message[1:])   
            if message[0]=='x':
                print(message[1:])
                self.updateXpos(message[1:])
            if message[0]=='y':
                print(message[1:])
                self.updateYpos(message[1:])
            if message[0]=='t':
                print(message[1:])
                self.updateAnglePos(message[1:])
        threading.Timer(self.span, self.testThreading).start()
            
	#parseMessage(message)
	#threading.Thread(target=testThreading).start()
	#def parseMessage(self, message)
	#for i in range(0, len(message))
	# for j in range(0, len(alphabet))
	    
    def packetLoad(self):
        groupBox = QtGui.QGroupBox("Log: ")
        
        self.payload = QtGui.QTextEdit()
        vbox = QtGui.QGridLayout()
        
        
        vbox.addWidget(self.payload, 0,0,1,10)
        groupBox.setLayout(vbox)

        return groupBox
      
	#threading.Timer(span, self.recurrentSend).start() #recurrent action
    def AtExit(self):
        self.st=1
        self.stopMotors
        print("Motor stopped on exit of the application")
        print("All threads sucessfully closed :)")

def appExec():
    app = QtGui.QApplication(sys.argv)
  # and so on until we reach:
    app.setWindowIcon(QtGui.QIcon('Logo.png'))
    #print(type(app))
    clock = Window()
    clock.show()
    #threading.Timer(clock.span, clock.testThreading).start()
    #threading.Timer(clock.span, clock.KeyCheck).start()
    #threading.Timer(clock.span, clock.Keyboard).start()
    #clock.KeyCheck()
    #clock.testThreading()
    #clock.KeyCheck()
    app.exec_()
    clock.AtExit()

if __name__ == '__main__':

    sys.exit(appExec())
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
