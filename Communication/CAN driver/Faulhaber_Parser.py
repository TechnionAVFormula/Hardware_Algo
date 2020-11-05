import numpy as np
#translate location to faulhaber style
#translate controll words to faulhaber style
#wake up 
# make sure to 
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

def operasional(id):
    return [0,[1,id]]

def shutdown(id):
    return [commands.controlword+id,[6,0]]

def enable(id):
    controlword = create_Controlword(states.enable_opration,False)
    return [commands.controlword+id,controlword]

def create_Controlword(state, start, relative = True, imidiate = True):#state is bit 0,1,2,3 start is bit 4 ,relative is bit 6, imidiate is bit 5, bit 7 is reset fault errors
    word = state+start*(2**4)+imidiate*(2**5)+relative*(2**6)
    return word.to_bytes(2,byteorder='little')

def position_setpoint(id, setpoint, relative = True, comand = commands.set_position,imidiate = True):
    controlword = create_Controlword(states.enable_opration,imidiate,relative)
    frame = [comand+id,controlword+int_To_Bytearray(setpoint)]
    return frame

def int_To_Bytearray(number, size = 4): #converts int to 32bit byte array to use as setpoint
    word = number.to_bytes(size, byteorder='little', signed=True)
    return word

# def read_position():
#     return

# print("operasional", operasional(3))
# print("sut down", shutdown(3))
# print("enable", enable(3))
# print("create_Controlword", create_Controlword(states.enable_opration,True))
# print("create_Controlword", create_Controlword(states.enable_opration,False))
# print("create_Controlword", create_Controlword(states.enable_opration,True,False,False))
# print("create_Controlword", create_Controlword(states.enable_opration,False,False,True))
# print("position_setpoint", position_setpoint(3,1577))
# print("position_setpoint", position_setpoint(3,1577,False))
# print("position_setpoint", position_setpoint(3,1577,False,commands.set_position,False))
# print("position_setpoint", position_setpoint(3,1577,True,commands.set_position,False))
#print("int_To_Bytearray", int_To_Bytearray(5000))