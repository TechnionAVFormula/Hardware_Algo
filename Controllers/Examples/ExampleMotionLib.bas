'--------------------------------------------
'Author      : Dr. Fritz Faulhaber GmbH & Co. KG
'Date        : 12.09.2018
'--------------------------------------------
'Description:  
'  Motion library example program for
'  Motion Controllers of the family MC V3.x.
'--------------------------------------------
#INCLUDE "MotionParameters.bi"                         
#INCLUDE "MotionFunctions.bi"
                              
#DEFINE PosA 0             
#DEFINE PosB 10000     
                                 
SETOBJ ModesOfOperation = OpModePP
                  
Enable()
 
DO                                  
   MoveAbs(PosA,0)
   WaitPos()
   DELAY 1000
   MoveAbs(PosB,0)
   WaitPos()
   DELAY 100
LOOP
                  
END    


