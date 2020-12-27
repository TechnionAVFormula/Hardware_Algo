# Low Voltage System (LVS) and Shutdown Circuit (SDC)

The LVS includes every electrical part that is not part of the TS. It is a low voltage system and limited to maximum voltage of 60V DC or 25V ACRMS. 

### System Goals:
1. Powering up all LV systems and devices.
    - Supply the correct voltage and power.
    - Design wiring with proper technics to reduce noises.
    - Converting the supply voltage if needed.
2. Protecting the systems and devices from electric faults.
    - Fuses and protection devices.
    - Insulation from HV system.
3. Safety and Powertrain.
    - Ensuring safe power on and power off of he vehicle.
    - Designing the Shutdown Circuit (SDC).
    - Master Switches and emergency shutdown button.

### System Parts:
- Master Switches and Power controls
- Shutdown Circuit (SDC)
- Fuses and wiring
- Packaging, location and marking.

## Master Switches and Power controls
### Rules limitations

#### Master switches type (T11.2.1):
- Rotary switch
- Direct acting (must not act through a relay or logic)
- Red handle 
- Min handle width - 50mm
- Removable handle - removable only in open position ("OFF" position)
- "ON" position must be in the horizontal position (T11.2.3)  

### Functionality
- LVMS must completely disable the power to LVS.
<!-- - 3 master switchs LVMS ASMS TSMS -->

#### Location and installation (T11.2.2):
- Right side of the vehicle.
- Easy to actuate from outside the car.
- Near main hoop (exact location in T11.2.2)
- Master switches must be mounted next to each other (T11.2.5)
- Must be rigidly mounted to the vehicle (T11.2.4)

#### Marking:
- "ON" and "OFF" position must be clearly marked (T 11.2.3).
- LVMS marking:
    - Red, >50mm diameter circular and high contrast background area - the switch in the middle (T11.3.2)
    - Marked with "LV"  and symbol showing a red spark in a white edged blue triangle (T11.3.3)

### Additional requirement
- ASMS switch off all AS acting devices (actuators, valves, ...) but not switch off controllers. Additional one pole switches will give better control (via relays) on the power to AS devices.  
- We have two LV power rail (12V and 24V) and LVMS must disable both of them. A normally open relay on the 24V rail which controlled by the LVMS output will be responsible for disable the 24V rail as the LVMS switched off. In the same concept, another normally open relay will control the AS 24V supply.
- LED indicator for each Master switch witch turn green when it is safe to turn the switch to "ON"/"OFF" position and turn red otherwise.
    - ASMS and LVMS must not turn off before the EBS cylinder valve is manually closed.  

<img src="./Power Control Diagram.jpg" width="500"/>

## Shutdown Circuit (SDC)
### Rules limitations
<!-- TODO -->

### SDC Components
SDC components can be divided to three groups by their placement on the vehicle:
- SDC HV - components which locate in the accumulator or connect directly to the HV system.
    > Components 3,4,10,12,13.
- SDC main - components which locate in the Power Control box.
    > Components 1,2,7,11,14. 
- SDC loop - components which locate on the SDC loop that goes to the front of the vehicle.
    > Components 5,6,8,9. 

Components list:    
1. LVMS - Low Voltage Master Switch
2. BSPD - Brake System Plausibility Device
3. IMD - Insulation Monitoring Device
4. AMS - Accumulator Management System
5. Shutdown Buttons
6. AS Latch - Autonomous System Latch (controlled by EBS)
7. RES - Remote Emergency System
8. Inertia Switch
9. BOTS - Brake Over-Travel Switch
10. HVD interlock - High Voltage Disconnect interlock
11. TSMS - Tractive System 
12. AIR coils - Accumulator Isolation Relay coils
13. Activation Logic
14. EBS Relay coils

<!-- TODO give link to component that already explained in another place -->

#### BSPD
https://drive.google.com/drive/folders/1gjJoZ_BcHyBW0HmJ54d6dFaPKRN08jeu

#### Shutdown Buttons
The Shutdown buttons are three emergency switches that cause the vehicle to stop by opening the SDC as one of them is pushed in (T11.4.1, T11.4.2)

Rules limitations:
- Switches type can be push-pull or push-rotate (T11.4.2)
- Location (exact location in T11.4.3, T11.4.4):
    - Two on both sides of the vehicle and behind the driver's compartment. Must be easy reachable from outside the vehicle.
    - One in the cockpit and reachable for belted-in driver. We placed it on the dashboard.
    - All buttons must be rigidly mounted to the vehicle (T11.4.6)
- Marking (T11.4.5)

#### Inertia Switch
The Inertia Switch is an emergency switch that cause the vehicle to stop by opening the SDC as an collusion or impact occurs (T11.5.1)

Rules limitations:
- The SDC must stay open (switch latch) until the Inertia Switch is **manually** reset (T11.5.1). 
- Must not include any semiconductor components (T11.5.3 ).
- Location (T11.5.4):
    - Must be rigidly attached to the vehicle.
    - must be possible to demount the device for shaking test.
- Max trigger value (T11.5.2):
    - Omnidirectional peak acceleration of 8g for a half sine test pulse of maximum 50ms length.
    - Omnidirectional peak acceleration of 13g for a half sine test pulse of maximum 20ms length.

As recommended in rule T11.5.2, we will use the Sensata Resettable Crash Sensor which meet the rules requirements (see graph in th dustsheet). 
Specs:
- Max current: 10A
- 360° responsive
- Shock calibration ranges available between 8g and 30g
- Manually resettable
- Can close another circuit when trigger

<!-- TODO add link to datasheet that in _docs folder -->
<!-- TODO find supliier -->

#### BOTS
The BOTS is a switch which open the SDC if the service brake pedal travel farther then it expected because a fault in the service brake system (T6.2.1 ).

Rules limitations:
- Must be designed so that the driver cannot reset it (T6.2.2 ).
- Switch type must be SPST (two-position switch, push-pull or ﬂip type). It may consist a several series switches (T6.2.3 ).
- For multiple circuit brake system, failure in on of them must result in SDC open by opening The BOTS.

<!-- TODO talk with Tav about:
- make sure that the switch i fount is the one the are using. 
- make sure that there is no need in two switches system (not like th old car)
- link https://www.digikey.com/en/products/detail/apem-inc/4631A22UU/1280325
 -->

 The BOTS switch is normally close types since <!--TODO why? is it because it a switch and not a system-->.Thats meet Figure 20 (EV6.1).

## Fuses and wiring
### Rules limitations
- Must not use orange wiring or conduit (T 11.1.4)
- Negative pole must be connected to the chassis for grounding (T 11.1.5)

## Packaging, location and marking.

