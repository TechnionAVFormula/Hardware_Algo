## Rules requirements
Indicators:
- TS OFF - light up if the TS is deactivated (EV4.10.9).
- IMD - red indicator - light up if the IMD opens the shutdown circuit (EV6.3.7).
- AMS - red indicator -  light up if the AMS opens the shutdown circuit (EV5.8.8).
- EBS - red indicator -  light up if the EBS detects a failure ().

TSoff (EV4.10.10), AMS, IMD and EBS (DV2.1.1) are SCS signals:
- Safe state defined as the indicators must light up if there is a failure in the indicator circuit or in its system (T11.9.4).
- Signal failures that must result in a safe state are (T11.9.2):
    - Open circuit or short circuit to ground of the indicator cable.
    - Data corruption, lost or delay of the CANbus messages. 
        > Maximum allowed delay of messages is 500ms (T11.9.3).
- Indicators must be illuminated for 1 s to 3 s for visible check after power cycling the LVMS.

## Additional requirement
Indicators:
- B-LOW - yellow indicator - Battery low warning <!-- see how to define low battery -->
- TEMP - yellow indicator - engine or inverter temperature warning <!-- see how to define temperature threshold-->
- BOOST - blue indicator - light up if boost is available.

*** solution:
MoTec or microcontroller light up the TS OOF,EBS,IMD,AMS indicators. turn on signal via CAN.
To complete SCS requirement consider the following solution:
> "The indicators should be active low and pulled low. For example if there is a broken connection the LED illuminates. This would also cover short to GND." 
(from https://www.reddit.com/r/FSAE/comments/gled9i/scs_for_indicators_rule/)