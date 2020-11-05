import Faulhaber_Parser
import Faulhaber_Comunicator

def test(function, value, module, number):
    if(function == value):
        print(module,"test", number,"passed")
    else:
        print(module,"test", number,"failed")
#faulhaber_comunicator tests
test(Faulhaber_Comunicator.wakeup(8),[[0, [1, 8]], [520, [6, 0]]],"foulhaber_comunicator",1)
#add error for negative values 

#faulhaber_parser tests
test(Faulhaber_Parser.shutdown(3),[515, [6, 0]],"foulhaber_parser",1)
test(Faulhaber_Parser.enable(3),[515, 110],"foulhaber_parser",2)
test(Faulhaber_Parser.create_Controlword(Faulhaber_Parser.states.enable_opration,True),126,"foulhaber_parser",3)
test(Faulhaber_Parser.create_Controlword(Faulhaber_Parser.states.enable_opration,False),110,"foulhaber_parser",4)
test(Faulhaber_Parser.create_Controlword(Faulhaber_Parser.states.enable_opration,True,False,False),30,"foulhaber_parser",5)
test(Faulhaber_Parser.create_Controlword(Faulhaber_Parser.states.enable_opration,False,False,True),46,"foulhaber_parser",6)
test(Faulhaber_Parser.position_setpoint(3,1577),[771, 1703],"foulhaber_parser",7)
test(Faulhaber_Parser.position_setpoint(3,1577,False),[771, 1639],"foulhaber_parser",8)
test(Faulhaber_Parser.position_setpoint(3,1577,False,Faulhaber_Parser.commands.set_position,False),[771, 1623],"foulhaber_parser",9)
test(Faulhaber_Parser.position_setpoint(3,1577,True,Faulhaber_Parser.commands.set_position,False),[771, 1687],"foulhaber_parser",10)
test(Faulhaber_Parser.int_To_Bytearray(5000),'\x88\x13\x00\x00',"foulhaber_parser",11)