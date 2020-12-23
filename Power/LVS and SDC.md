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
- 

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

## Fuses and wiring
### Rules limitations
- Must not use orange wiring or conduit (T 11.1.4)
- Negative pole must be connected to the chassis for grounding (T 11.1.5)\

## Packaging, location and marking.

