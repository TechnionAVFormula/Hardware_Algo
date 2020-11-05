import Maneger as maneger
import Faulhaber_Comunicator as faulhaber
from Maneger import components
import Faulhaber_Parser as parser
from Faulhaber_Parser import commands
import numpy as np
Message = [b'\x00',b'\x00'] #just a bunch of zeros to initialize
# Statusword = 0b0000
# Position = 0
# Velocity = 0
# Torque = 0

Actual_values = {#add more keys if want to know more value types
commands.statusword : 0b00, #statuse word
commands.get_position : 0,  #actual position
commands.get_velosity : 0,  #actual velocity
commands.get_torque : 0     #actual tourque
}

def disect_messege(Message,Actual_values):#move to somewere else?
    Actual_values[Message[0][2:3]] = Message[1] #might need conversion to int here too Also maybe the id part is reversed!!!!!
    return
def set_New_Setpoint(setpoint,relative = False):
    maneger.send('Stearing',parser.position_setpoint(components['Stearing'][1],setpoint,relative))
    maneger.send('Stearing',parser.enable(components['Stearing'][1]))