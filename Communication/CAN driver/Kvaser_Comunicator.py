from canlib import canlib, Frame
ch = None
emptyFrame = Frame(0,0)
def Init(channel=0):
    global ch 
    ch = canlib.openChannel(channel, canlib.Open.ACCEPT_VIRTUAL)
    ch.setBusOutputControl(canlib.canDRIVER_NORMAL)
    ch.setBusParams(canlib.canBITRATE_1M)
    ch.busOn()

def send(messege):
    frame = Frame(messege[0],messege[1])
    ch.write(frame)
def read():
    return ch.read()

#send messeges using canlib librareys