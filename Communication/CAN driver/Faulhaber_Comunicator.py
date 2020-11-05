#import Maneger as maneger
import Faulhaber_Parser as parser

#wake up
def wakeup(id):
    #use id 0 to wake the whole system 
    # CAN state -> operetional id=0,cs=1,nod_id=1
    # PDO1: controlword -> shotdown (to ready to switch on)
    return[parser.operasional(id),parser.shutdown(id)]
#send position
    #call parser to set postion 
    #check wake up
#print("the answer is:", wakeup(8))