EBS Characterized Document
Mechanical related
DV 3.1.1 All specifications of the brake system from T 6 remain valid.
DV 3.1.4 The EBS may be part of the hydraulic brake system. For all components of pneumatic and hydraulic EBS actuation not covered by T 6, T 9 is applied.
DV 3.1.5 When the EBS is part of the hydraulic brake system, the manual brake actuation (by brake pedal) may be deactivated for autonomous driving.
DV 3.1.8 The use of push-in fittings is prohibited in function critical pneumatic circuits of the EBS and any other system which uses the same energy storage without proper decoupling.
DV 3.2.5 The tractive system is not considered to be a brake system
Interface related
DV 3.1.6 The EBS must be designed so that any official can easily deactivate it. All deactivation points must be in proximity to each other, easily accessible without the need for tools/removing any body parts/excessively bending into the cockpit. They must be able to be operated also when wearing gloves.
DV 3.1.7 A pictographic description of the location of the EBS release points must be clearly visible in proximity to the ASMS. The necessary steps to release the EBS must be clearly marked (e.g pictographic or with pull/push/turn arrow) at each release point. This point must be marked by a red arrow of 100 mm length (shaft width of 20 mm) with “EBS release” in white letters on it.
DV 3.2.7 A red indicator light in the cockpit that is easily visible even in bright sunlight and clearly marked with the lettering “EBS” must light up if the EBS detects a failure.
SDC and relay related
DV 3.1.2 The vehicle must be equipped with an EBS, that must be supplied by LVMS, ASMS, RES and a relay which is supplied by the SDC ([EV ONLY] parallel to the AIR, but must not be delayed/[CV ONLY] parallel to fuel pump relay).
DV 3.1.3 The EBS must only use passive systems with mechanical energy storage. Electrical powerloss at EBS must lead to a direct emergency brake maneuver (keep in mind T 11.3.1!).
T 11.3.1 An LVMS according to T 11.2 must completely disable 
• [EV ONLY] power to the LVS 
• [CV ONLY] power from the Low Voltage (LV) battery and the alternator to the LVS
DV 2.3.2 The steering system may remain active during an emergency brake maneuver while vehicle is in movement.

Functions
DV 3.2.1 Due to the safety critical character of the EBS, the system must either remain fully functional, or the vehicle must automatically transition to the safe state in case of a single failure mode.
DV 3.2.2 The safe state is the vehicle at a standstill, brakes engaged to prevent the vehicle from rolling, and an open SDC.
DV 3.2.3 To get to the safe state, the vehicle must perform an autonomous brake maneuver described in section DV 3.3 and IN 6.3.
	IN 6.3 Driverless Inspection EBS Test IN 6.3.1 The EBS performance will be tested dynamically and must demonstrate the performance described in DV 3.3. IN 6.3.2 The test will be performed in a straight line marked with cones similar to acceleration. IN 6.3.3 During the brake test, the vehicle must accelerate in autonomous mode up to at least 40 km/h within 20 m. From the point where the RES is triggered, the vehicle must come to a safe stop within a maximum distance of 10 m. IN 6.3.4 In case of wet track conditions, the stopping distance will be scaled by the officials dependent on the friction level of the track.
DV 3.2.4 An initial check has to be performed to ensure that EBS and its redundancy is able to built up brake pressure as expected, before AS transitions to “AS Ready”.
DV 3.2.6 The service brake system may be used as redundancy if two-way monitoring is ensured.
DV 2.3.2 The steering system may remain active during an emergency brake maneuver while vehicle is in movement.

Performance
DV 3.3.1 The system reaction time (the time between entering the triggered state and the start of the deceleration) must not exceed 200 ms.
DV 3.3.2 The average deceleration must be greater than 8 m/s 2 under dry track conditions.
DV 3.3.3 Whilst decelerating, the vehicle must remain in a stable driving condition (i.e. no unintended yaw movement). This can be either a controlled deceleration (steering and braking control is active) or a stable braking in a straight line with all four wheels locked.
DV 1.5.3 The SDC may only be closed by the AS, if the following conditions are fulfilled: • Manual Driving: Manual Mission is selected, the AS has checked that EBS is unavailable (No EBS actuation possible). • Autonomous Driving: Autonomous Mission is selected, ASMS is switched on and sufficient brake pressure is build up (brakes are closed).
DV 2.2.7 After switching the ASMS to the “On” position, the vehicle may not start moving and the brakes must remain closed (“AS ready” state, Figure 21) until a “Go” signal is sent via the RES (“AS driving” state, Figure 21).


Another
T 6.1.4 “Brake-by-wire” systems are prohibited. [DV ONLY] In autonomous mode, it is allowed to use “brake-by-wire”. In manual mode, T 6.1.1 applies.
T 6.1.1 The vehicle must be equipped with a hydraulic brake system that acts on all four wheels and is operated by a single control.
T 6.1.10 [EV ONLY] The first 90 % of the brake pedal travel may be used to regenerate brake energy without actuating the hydraulic brake system. The remaining brake pedal travel must directly actuate the hydraulic brake system, but brake energy regeneration may remain active.
DV 3.2.7 A red indicator light in the cockpit that is easily visible even in bright sunlight and clearly marked with the lettering “EBS” must light up if the EBS detects a failure.
