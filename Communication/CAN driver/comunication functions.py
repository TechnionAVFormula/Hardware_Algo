#comunication functions
from canlib import canlib, Frame
import numpy as np
import time

# function codes
class FunctionCodes:
    TPDO1 = 0b0011
    RPDO1 = 0b0100
    TPDO2 = 0b0101
    RPDO2 = 0b0110
    TPDO3 = 0b0111
    RPDO3 = 0b1000
    TPDO4 = 0b1001
    RPDO4 = 0b1010

# identifier for node id=0
class BaseIdentifiers:
    TPDO1 = 384  #status
    RPDO1 = 512  #controlword
    TPDO2 = 640  #controlword, actual position
    RPDO2 = 768  #statuesword, target posistion
    TPDO3 = 896  #controlword, actual velosity
    RPDO3 = 1024 #statuesword, target velosity
    TPDO4 = 1152 #controlword, actual torque
    RPDO4 = 1280 #statuesword, target torque

class commands:
    statusword   = 384
    controlword  = 512
    get_position = 640
    set_position = 768
    get_velosity = 896
    set_velosity = 1024
    get_torque   = 1152
    set_torque   = 1280
    

class states:
    shutdown = 0b0110 
    switch_on = 0b1110
    disable_voltage = 0b0000 
    quick_stop = 0b0100 
    disable_oparation =0b1110 
    enable_opration = 0b1110
    fault_reset = 0b0000

#pp = [136,19,0,0] # set position 5000
ch = None
def initialization(channel=0):
    ch = canlib.openChannel(channel)
    ch.setBusOutputControl(canlib.canDRIVER_NORMAL)
    ch.setBusParams(canlib.canBITRATE_1M)
    ch.busOn()

def wakeupMOtorController(id):
    # CAN state -> operetional id=0,cs=1,nod_id=1
    ch.write_raw(0,[1,id])
    # PDO1: controlword -> shotdown (to ready to switch on)
    ch.write_raw(commands.controlword+id,[6,0])

def int_To_Bytearray(number): #converts int to 32bit byte array to use as setpoint
    number.to_bytes(4, byteorder='little', signed=True)
    return number

def create_Controlword(state, start, relative = True, imidiate = True):#state is bit 0,1,2,3 start is bit 4 ,relative is bit 6, imidiate is bit 5, bit 7 is reset fault errors
    word = state+start*(2**4)+imidiate*(2**5)+relative*(2**6)
    word.to_bytes(2,byteorder='little')
    return word

def PDOFrame(divice_id, setpoint, relative = True, comand = commands.set_position):
    controlword = create_Controlword(states.enable_opration,True,relative)
    frame = Frame(comand+divice_id,controlword+int_To_Bytearray(setpoint))
    return frame

def send_setpoint(divice_id,frame,rising_edge = True):
    ch.write(frame)
    if(rising_edge):
        controlword = create_Controlword(states.enable_opration,False)
        #time.sleep(0.005) #if need to delay before changin the control word
        ch.write_raw(commands.controlword+divice_id,controlword) 

#frame = Frame(0,bytearray(b'\x01\x00'))
#frame = Frame(0,[1,3,3])
#ch.write(frame)
#for i in range(9):
#    controlword = [127,0] # move immidiatly and relative
#    ch.write_raw(768+1,controlword + pp)
#    ch.write_raw(512+1,[111,0])
#    time.sleep(2)

