'--------------------------------------------
'Author: Menashe Schwob - Technion FormulaAV 2020
'Date: 30/01/2020
'--------------------------------------------
'Description: Turn by random angle - angle transform ratio is preset.
'--------------------------------------------
#INCLUDE "MotionParameters.bi"   'right mouse click opens the file
#INCLUDE "MotionFunctions.bi"   'right mouse click opens the file    
                          
#DEFINE ANGLE_RATIO = 360; 'this case, 360 degree in motorcase is 1 whell degree                            
 
SETOBJ ModesOfOperation = OpModePP                                                          
DIM movAngle = 20            
                          
Enable()   
                                                              
DO             
   DELAY 2000             
   MoveRel(360, 0)  
LOOP                       
                        
END
