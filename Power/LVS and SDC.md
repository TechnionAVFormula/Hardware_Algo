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
- LV Batteries
- Master Switches and Power controls
- Shutdown Circuit (SDC)
- Fuses and wiring
- Packaging, location and marking.

## LV Batteries
 LV batteries are all batteries connected to the LVS (T11.7.1).

## Rules limitation
#### General
- Must have a rigid and sturdy casing (T11.7.3).
- Ungrounded terminals must be insulated (T11.7.4).
- Must be protected from short circuits, not more than 100 mm from ungrounded terminals (T11.7.6).
- Battery packs based on lithium chemistry (except LiFePO4) (T11.7.7):
    - Must include overcurrent protection that trips at or below the maximum discharge current of the cells.
    - Must include overtemperature protection of at least 30 % of the cells, meeting EV5.8.3. The allowed temperature range is specs limit or 60◦C, the smallest.
    - Must include voltage protection of all cells that trips when any cell leaves the allowed voltage range.
    - Overtemperature for more than 1 s or overvoltage for more then 500ms must result in disconnecting the battery.
    - Must have a ﬁre retardant casing, see T1.2.1.
    - It must be possible to display all cell voltages and measured temperatures.

#### location & installation
- Must be securely attached to the chassis (T11.7.2).
- Must be located within the rollover protection envelope defined in T1.1.16 (T11.7.2).
- Wet-cell battery  can be located in the driver compartment if enclosed in a non-conductive, water proof and acid resistant container (T11.7.3).



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
The SDC is safety circuit which driving the AIRs (include pre-charge circuitry) and the EBS valves relay. The circuit goal is to prevent power from going to the motor and triggering the EBS in case of critical failure of any system on the car (EV6.1.1).

### Rules limitations

#### General 
- The shutdown buttons, the BOTS, the TSMS and all interlocks must not act through any power stage (EV6.1.10).
- It must be possible to demonstrate that all features of the shutdown circuit function correctly (This includes all interlocks) (EV6.1.8).
-  Every system that is required to or is able to open the SDC must:
    - Have its own non-programmable power stage to achieve this.
    - Be able to carry the SDC current through its power stages.
    - Design such that a failure cannot result in electrical power being fed back into the electrical SDC.

#### Parts Order
- All parts of the shutdown circuit deﬁned in EV6.1.2 (parts 1-5,8,9,11) must be on the high-side connection of the AIR coils and the pre-charge circuitry (EV6.1.3).
- The TSMS must be the last switch before the AIRs (except for pre-charge circuitry and hardwired interlocks) (EV6.1.4). 

#### Functionality
- When the SDC is opened (EV6.1.5):
    - All AIRs must be opened.
    - The TS voltage must drop to below 60V DC and 25V ACRMS in less then 5 seconds.
    - All accumulator current ﬂow must stop immediately.
- AIRs opening can be delayed in maximum of 250ms (can be used to reduce the current before opening), but  <!-- one more condition to understand --> (EV6.1.5). 
- If the shutdown circuit is opened by the AMS or the IMD, it has to be latched open by a non-programmable logic that can only be manually reset by a person at the vehicle who is not the driver (EV6.1.6).
- Fail, power loss or disconnecting of any circuit which is a part of the SDC must result in SDC opened (EV6.1.7).


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
The BSPD role is to make sure that the motor does not preform acceleration while hard braking is occurs. That situation can be caused by hardware, software (DV), failure or human mistake. This is achieve by opening The SDC when the situation is detected (T11.6.1).

Possible issue scenarios:
- Driver preforms hard press both pedals simultaneously.
- Driver or AS preforms hard braking while an HW/SW failure cause the motor to accelerate.
- AS preforms Hard barking and acceleration simultaneously.

Rules limitations:
- Hard braking detection (T11.6.5) - brake oil pressure sensor must be used. The threshold must fulfill: 
    - Below 30 Bar.
    - No locked wheel.
- Acceleration detection (T11.6.6) - DC circuit current sensor must be used. The threshold must fulfill:
    - Equivalent of ≤5 kW for maximum TS voltage.
- Trigger condition (T11.6.2) - hard barking and acceleration persist form more then 500ms.

- SDC must remain open until (T11.6.1):
    - LVMS is turn off.
    - The opening condition is no longer present for more than 10 seconds.

- Must be a standalone non-programable circuit with a minimum dependencies (T11.6.1 , T11.6.4).
- Must directly supply from the LVMS (T11.6.3).
- Supply and sensor inputs must not be routed through any other devices before entering the BSPD. 
- Each sensor signal wire must have separate connector for technical inspection (T11.6.7).
- The BSPD and its sensors must not be installed inside the TS accumulator (T1.6.10).

> **FAQ from FSG site** - Case of Two Brake circuit:
>> **Question**:
    Rule T11.6.5. states that in BSPD, to detect hard braking, a brakesystempressure sensor must be used. Can you please clarify whether asinglepressure sensor is sufficient, or do we need to use signals fromtwoseparate pressure sensors measuring brake pressure on front wheels andonrear wheels independently?
>> **Answer**:	
    One pressure sensor is enough. You have to install the sensor in the brake circuit which reaches the threshold value first. 


Solution:
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

