

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


