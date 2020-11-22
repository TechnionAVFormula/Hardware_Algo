EV2.2.1EV2.3.1לשאול בשיחה עם באר שבע:
1. precharge - קשור לטעינת הסוללה או לבטיחות סגירת המפסק? המלצה? סיבוכים ?
2. LV supply - כמה הספק מקסימלי הם הגיעו ברכב לא אוטונומי? 
3. איפה יש קטלוג של BMS - tame-power לא מומלץ - https://tyva-moduloo.com/modular-lithium-battery-unit-systems-and-solutions/lithium-ion-battery-management-system-bms-tyva/ לבדוק

http://www.melasta.com/cells/ סוללות

## Electrical System
### Grounding
Electrically conductive parts (EV3.1.1):
- Resistance below 300mΩ to LVS ground (measured with a current of 1A) for:
    1. parts within 100 mm of any TS component.
    2. the driver harness mounting points.
    3. the seat mounting points.

Parts of the vehicle which may become electrically conductive (EV3.1.2):
- Resistance below 300mΩ to LVS ground for:
    1. within 100 mm of any TS component.
>  The rotating part of the wheels does not need to be grounded (EV3.1.3).

### Overcurrent Protection
General:
- All electrical systems must have appropriate overcurrent protection (EV3.2.1)
- The continuous current rating of the overcurrent protection must not be greater than the
continuous current rating of any electrical component, for example wire, busbar or other
conductor that it protects (EV3.2.2)
- All overcurrent protection devices must be rated for the highest voltage in the systems they
protect. All devices used must be rated for DC (EV3.2.4).
- The overcurrent protection must be designed for the expected surrounding temperature range
but at least for 0◦C to 85◦C (EV3.2.6).

Fuses:
- All used fuses must have an interrupt current rating which is higher than the theoretical short
circuit current of the system that it protects (EV3.2.3).

TS related:
- All overcurrent protection devices which are part of the TS must not rely on programmable
logic. The overcurrent protection function of unmodiﬁed commercially available motor
controllers/inverters for the motor outputs may rely on programmable logic (EV3.2.5).
- The TS high current path through the accumulator(s) must be fused (EV3.2.7).

### Galvanic Isolation
Two electric circuits are deﬁned as galvanically isolated, if all of the
following are true (EV1.2.1):
- the resistance between both circuits is less then 500 Ω/V, related to the maximum TS voltage
of the vehicle, at a test voltage of maximum TS voltage or 250 V, whichever is higher.
- the withstand voltage between both circuits is higher than three times the maximum
TS voltage or 750 V, whichever is higher.

### Rules Reference
EV3.1.1 Electrically conductive parts of the vehicle (e.g. parts made of steel, (anodized) aluminum,
any other metal parts, etc.)
• within 100 mm of any TS component
• the driver harness mounting points
• the seat mounting points
must have a resistance below 300 mΩ(measured with a current of 1 A) to LVS ground.
EV3.1.2 Parts of the vehicle which may become electrically conductive (e.g. completely coated metal
parts, carbon ﬁber parts, etc.) within 100 mm of any TS component must have a resistance
below 5 Ωto LVS ground.
EV3.1.3 The rotating part of the wheels does not need to be grounded.

EV3.2.1 All electrical systems must have appropriate overcurrent protection.
EV3.2.2 The continuous current rating of the overcurrent protection must not be greater than the
continuous current rating of any electrical component, for example wire, busbar or other
conductor that it protects.
I.e. if multiple pins of a connector are used to carry currents in parallel, each pin must be
appropriately protected.
EV3.2.3 All used fuses must have an interrupt current rating which is higher than the theoretical short
circuit current of the system that it protects.
EV3.2.4 All overcurrent protection devices must be rated for the highest voltage in the systems they
protect. All devices used must be rated for DC.
EV3.2.5 All overcurrent protection devices which are part of the TS must not rely on programmable
logic. The overcurrent protection function of unmodiﬁed commercially available motor
controllers/inverters for the motor outputs may rely on programmable logic.
EV3.2.6 The overcurrent protection must be designed for the expected surrounding temperature range
but at least for 0 ◦C to 85 ◦C
EV3.2.7 The TS high current path through the accumulator(s) must be fused.

EV1.2.1 Galvanic Isolation – two electric circuits are deﬁned as galvanically isolated, if all of the
following are true:
• the resistance between both circuits is ≥500 Ω/V, related to the maximum TS voltage
of the vehicle, at a test voltage of maximum TS voltage or 250 V, whichever is higher.
• the withstand voltage between both circuits is higher than three times the maximum
TS voltage or 750 V, whichever is higher.



## Tractive System
The Tractive System contains every part that is electrically connected to the motor(s) and TS
accumulators (EV1.1.1).

### Properties
- Output Power Limitation - 80kW (EV2.2.1).
- Maximum Voltage (between any two electrical connections) - 600VDC (EV4.1.1).
- Overcurrent protection:
    - All overcurrent protection devices in the TS must not rely on programmable logic except of an unmodiﬁed commercially available motor controllers/inverters (EV3.2.5).
    - The TS high current path through the accumulator(s) must be fused (EV3.2.7).

### General
- All components in the TS must be rated for the maximum TS voltage (EV4.1.2).
- The TS area of a PCB, see EV4.3.5, is considered as one component. Every input connected to the TS must be rated to the maximum TS voltage (EV4.1.2).
- All components must be rated for the maximum possible temperature which may occur
during usage (EV4.1.3).
- All connections from a TS component to external devices, such as laptops must include galvanic isolation (EV4.3.7).

### Labeling
- Every housing or enclosure containing parts of the TS system, must be labeled with (a)
reasonably sized sticker(s) according to “ISO 7010-W012” (triangle with black lightning
bolt on yellow background). The sticker must also contain the text “High Voltage” if the
voltage is more than 60 VDC or 25 VAC (EV4.2.1).


### Inspection
IN4.1.1 The insulation resistance between the TS and LVS ground will be measured. Vehicles with
a maximum TS voltage less than or equal to 250 V will be probed with 250 V and vehicles
with a maximum TS voltage greater than 250 V with 500 V.

### Rules Reference
EV1.1.1 Tractive System (TS) – every part that is electrically connected to the motor(s) and TS
accumulators.

EV2.2.1 The TS power at the outlet of the TS accumulator container must not exceed 80 kW.
EV2.2.2 Regenerating energy is allowed and unrestricted.

EV3.2.5 All overcurrent protection devices which are part of the TS must not rely on programmable
logic. The overcurrent protection function of unmodiﬁed commercially available motor
controllers/inverters for the motor outputs may rely on programmable logic.
EV3.2.6 The overcurrent protection must be designed for the expected surrounding temperature range
but at least for 0 ◦C to 85 ◦C
EV3.2.7 The TS high current path through the accumulator(s) must be fused

EV4.1.1 The maximum permitted voltage that may occur between any two electrical connections is
600 VDC and for motor controller/inverters internal low power control signals 630 VDC.
EV4.1.2 All components in the TS must be rated for the maximum TS voltage.
The TS area of a PCB, see EV4.3.5, is considered as one component. Every input connected
to the TS must be rated to the maximum TS voltage.
EV4.1.3 All components must be rated for the maximum possible temperature which may occur
during usage.

EV4.2.1 Every housing or enclosure containing parts of the TS system, must be labeled with (a)
reasonably sized sticker(s) according to “ISO 7010-W012” (triangle with black lightning
bolt on yellow background). The sticker must also contain the text “High Voltage” if the
voltage is more than 60 VDC or 25 VAC.

IN4.1.1 The insulation resistance between the TS and LVS ground will be measured. Vehicles with
a maximum TS voltage less than or equal to 250 V will be probed with 250 V and vehicles
with a maximum TS voltage greater than 250 V with 500 V.


## Motor
Wheels must not be spun in reverse (EV2.2.3).

### Rules Reference
EV2.1.1 Only electric motors are allowed.
EV2.1.2 Motor attachments must follow T10.
EV2.1.3 Motor casings must follow T7.3.
EV2.1.4 The motor(s) must be connected to the accumulator through a motor controller.

EV2.2.3 Wheels must not be spun in reverse.


## Brake Pedal Plausibility Check
That check make sure that the motor does not get power when an hard brake is occurs. 
> **TODO** we need to figure the threshold for hard braking according to T11.6.5. For now we assume it 30bar in the brake pressure sensor.
If hard brake occurs, the motor torque will change to 0Nm if one of the following condition happen in the same time for more then 500ms (EV2.3.1):
- signals pedal travel equivalent to ≥25 % desired motor torque.
    > **TODO** we need to figure the equivalent percentage of the pedal. 
- motor power is greater then 5kW.

It stop forcing the 0Nm only when two condition are fulfilled (regardless thee brake condition): 
1. signals pedal travel is less then 5%.
2. motor torque is 0Nm.   

### Rules Reference
T11.6.5 To detect hard braking, a brake system pressure sensor must be used. The threshold must be
chosen such that there are no locked wheels and the brake pressure is ≤ 30bar.

T11.8.3 Pedal travel is deﬁned as percentage of travel from fully released position to a fully applied
position where 0 % is fully released and 100 % is fully applied.

EV2.3.1 The commanded motor torque must be 0 Nm if hard braking, see T11.6.5, and the APPS, see
T11.8, signals pedal travel equivalent to ≥25 % desired motor torque or ≥5 kW, whichever
is lower, at the same time for more than 500 ms.
EV2.3.2 The commanded motor torque must remain at 0 Nm until the APPS signals less than 5 %
pedal travel and 0 Nm desired motor torque, regardless of whether the brakes are still actuated
or not.



## Low Voltage System

### Insulation
- The entire TS and LVS must be galvanically isolated.
- TS and LVS circuits must be physically segregated such that they are not running through the same conduit or connector, except for interlock circuit connections (EV4.3.2).
- Where both TS and LVS are present within an enclosure, they must be separated by insulating
barriers made of moisture resistant, UL recognized or equivalent insulating materials, rated
for 150 ◦C or higher (e.g. Nomex based electrical insulation), or maintain the following
spacing through air, or over a surface (similar to those deﬁned in UL1741) (EV4.3.3):
    - Voltage Spacing: U <100 VDC -> 10 mm
    - Voltage Spacing: 100 VDC < U <200 VDC -> 20 mm
    - Voltage Spacing: U >200 VDC -> 30 mm
- Components and cables capable of movement must be positively restrained to maintain
spacing (EV4.3.4 ).
- If TS and LVS are on the same PCB they must be on separate well deﬁned areas of the board (EV4.3.5):
    - the areas must meet the spacing requirements:
        | Voltage | Over Surface | Through Air (Cut in board) | Conformal Coating |
        |:-----:|:----------:|:------------------------:|:---------------:|
        | 0 VDC to 50 VDC | 1.6 mm | 1.6 mm | 1.0 mm |
        | 50 VDC to 150 VDC | 6.4 mm | 3.2 mm | 2.0 mm |
        | 150 VDC to 300 VDC | 9.5 mm | 6.4 mm | 3.0 mm |
        | 300 VDC to 600 VDC | 12.7 mm | 9.5 mm | 4.0 mm |

    - each area clearly marked with “TS” or “LV”. 
    - The outline of the area required for spacing must be marked.
    > “Conformal coating” is referring to a coating insulator, solder resist is not a coating.

    > If integrated circuits are used such as opto-couplers which are rated for the respective maximum TS voltage, see EV1.2.1, but do not fulﬁll the required spacing, then they may still be used and the given spacing does not apply for this integrated circuit.


### Rules Reference

## in competition notes
EV4.3.6 Teams must be prepared to demonstrate spacing on team-built equipment. For inaccessiblecircuitry, fully assembled spare boards must be available.