import Kvaser_Comunicator as kvaser
import Faulhaber_Comunicator as faulhaber
import Faulhaber_Parser as parser

#motor controller types
FAULHABER = 1
TENSSY = 0
#device Ids
STEARING_ID = 1
EBS_ID = 2
BRAKE_ID = 3
DASHBOARD_ID = 4
MOTEC_ID = 5

#types Can comunicators
KVASER = 0  
NVIDIA = 1
#current used comunicator
CURRENT_COMPUTER = KVASER
#checklist
did_init = False
did_wakeup_stearing = False
did_wakeup_EBS = False
did_wakeup_break = False
did_wakeup_dashboard= False
did_wakeup_MoTec= False
#motor controller per system
components = {
    'Stearing':[FAULHABER,STEARING_ID,did_wakeup_stearing],
    'EBS':[FAULHABER,EBS_ID,did_wakeup_EBS],
    'Brake':[FAULHABER,BRAKE_ID,did_wakeup_EBS],
    'Dashboard':[TENSSY,DASHBOARD_ID,did_wakeup_dashboard],
    'MoTec':[TENSSY,MOTEC_ID,did_wakeup_MoTec]
}
#funcitons
def initilization():
    if(CURRENT_COMPUTER == KVASER):
        kvaser.Init()
    else:
        #Nvidia_Comunicator.init
        return
    did_init = True

def wakeup(identity):
    if(did_init == False):
        initilization()
    if(components[identity][0] == FAULHABER):
        if(components[identity][2] == False): 
            wake_frames = faulhaber.wakeup(components[identity][0])
            if(CURRENT_COMPUTER == KVASER):
                kvaser.send(wake_frames[0])
                kvaser.send(wake_frames[1])
            components[identity][2] = True

def send(identity,frame,computer = CURRENT_COMPUTER):
    if(did_init == False):
        initilization()
    if(components[identity][2] == False):
        wakeup(identity)
    if(computer == KVASER):
        kvaser.send(frame)
#tenssy stuff in here
#if i recive from stearing use faulhaber if i recive from otehr thing use tensy
#pass on request to correct motorcontroller
#call kvaer or nvidia 
#call init and make sure that init has happend before sending stuff