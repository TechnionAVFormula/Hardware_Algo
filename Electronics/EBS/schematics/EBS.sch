EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "EBS schmatics 2020"
Date "2020-03-19"
Rev "Version 1"
Comp "The Technion – Israel Institute of Technology"
Comment1 "#555"
Comment2 "Formula Technion Driverless"
Comment3 "Schematics of EBS SDC logic and supervisor CPU"
Comment4 ""
$EndDescr
$Sheet
S 3150 2000 2350 1050
U 5E736F97
F0 "SDC_logic" 50
F1 "SDC_logic.sch" 50
F2 "AS_close_SDC" I R 5500 2150 50 
F3 "TS_activation_button_manual" I L 3150 2150 50 
F4 "TS_activation_button_autonomous" I L 3150 2300 50 
F5 "AS_driving_mode" I R 5500 2300 50 
F6 "SDC_is_ready" I R 5500 2600 50 
F7 "watchdog" I R 5500 2450 50 
F8 "SDC_latch_in" I L 3150 2600 50 
F9 "SDC_latch_out" I L 3150 2750 50 
$EndSheet
$Sheet
S 6600 2000 1950 2100
U 5E736EA7
F0 "Suervisor_CPU" 50
F1 "Suervisor_CPU.sch" 50
F2 "CAN_H" I L 6600 3500 50 
F3 "CAN_L" I L 6600 3650 50 
F4 "EBS_valve_1_in" I R 8550 2150 50 
F5 "EBS_valve_2_in" I R 8550 2450 50 
F6 "BP1" I R 8550 2850 50 
F7 "BP2" I R 8550 3000 50 
F8 "BP3" I R 8550 3150 50 
F9 "BP4" I R 8550 3300 50 
F10 "BP5" I R 8550 3450 50 
F11 "BP6" I R 8550 3600 50 
F12 "AS_close_SDC" I L 6600 2150 50 
F13 "SDC_is_ready" I L 6600 2600 50 
F14 "watchdog" I L 6600 2450 50 
F15 "AS_driving_mode" I L 6600 2300 50 
F16 "EBS_failure_LED" I R 8550 3850 50 
F17 "EBS_valves_power" I L 6600 3850 50 
F18 "EBS_valve_1_out" I R 8550 2300 50 
F19 "EBS_valve_2_out" I R 8550 2600 50 
$EndSheet
Wire Wire Line
	5500 2150 6600 2150
Wire Wire Line
	6600 2300 5500 2300
Wire Wire Line
	5500 2450 6600 2450
Wire Wire Line
	6600 2600 5500 2600
$Comp
L Connector_Generic_MountingPin:Conn_01x10_MountingPin J5
U 1 1 5EA92337
P 9950 2700
F 0 "J5" H 10038 2614 50  0000 L CNN
F 1 "EBS_valves_connector" H 10038 2523 50  0000 L CNN
F 2 "" H 9950 2700 50  0001 C CNN
F 3 "~" H 9950 2700 50  0001 C CNN
	1    9950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2150 9650 2150
Wire Wire Line
	8550 2300 9550 2300
Wire Wire Line
	9550 2300 9550 2400
Wire Wire Line
	9550 2400 9750 2400
Wire Wire Line
	8550 2450 9450 2450
Wire Wire Line
	9650 2300 9750 2300
Wire Wire Line
	9650 2150 9650 2300
Wire Wire Line
	8550 2600 9750 2600
Wire Wire Line
	9750 2500 9450 2500
Wire Wire Line
	9450 2500 9450 2450
Wire Wire Line
	9750 3200 9650 3200
Wire Wire Line
	9650 3200 9650 3600
Wire Wire Line
	9650 3600 8550 3600
Wire Wire Line
	9750 3100 9550 3100
Wire Wire Line
	9550 3100 9550 3450
Wire Wire Line
	9550 3450 8550 3450
Wire Wire Line
	9750 3000 9450 3000
Wire Wire Line
	9450 3000 9450 3300
Wire Wire Line
	9450 3300 8550 3300
Wire Wire Line
	8550 3150 9350 3150
Wire Wire Line
	9350 3150 9350 2900
Wire Wire Line
	9350 2900 9750 2900
Wire Wire Line
	9750 2800 9250 2800
Wire Wire Line
	9250 2800 9250 3000
Wire Wire Line
	9250 3000 8550 3000
Wire Wire Line
	8550 2850 9150 2850
Wire Wire Line
	9150 2850 9150 2700
Wire Wire Line
	9150 2700 9750 2700
Wire Wire Line
	8550 3850 8900 3850
Text GLabel 9050 3850 2    47   Input ~ 0
EBS_failure_LED_dashboard
Text GLabel 9050 4100 2    47   Input ~ 0
EBS_failure_LED_ASSI
Wire Wire Line
	9050 4100 8900 4100
Wire Wire Line
	8900 4100 8900 3850
Connection ~ 8900 3850
Wire Wire Line
	8900 3850 9050 3850
$Comp
L Connector_Generic_MountingPin:Conn_01x03_MountingPin J1
U 1 1 5EAA0616
P 1750 2300
F 0 "J1" H 1838 2172 50  0000 L CNN
F 1 "EBS_dashboard_connector" H 1838 2263 50  0000 L CNN
F 2 "" H 1750 2300 50  0001 C CNN
F 3 "~" H 1750 2300 50  0001 C CNN
	1    1750 2300
	-1   0    0    1   
$EndComp
Text GLabel 1950 2400 2    47   Output ~ 0
EBS_failure_LED_dashboard
Wire Wire Line
	1950 2200 2600 2200
Wire Wire Line
	2600 2200 2600 2150
Wire Wire Line
	2600 2150 3150 2150
Wire Wire Line
	3150 2300 1950 2300
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5EAAE064
P 5900 3600
F 0 "J3" H 5818 3275 50  0000 C CNN
F 1 "EBS_CAN_connector" H 5818 3366 50  0000 C CNN
F 2 "" H 5900 3600 50  0001 C CNN
F 3 "~" H 5900 3600 50  0001 C CNN
	1    5900 3600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5EAAECDF
P 5900 4100
F 0 "J4" H 5900 4250 50  0000 C CNN
F 1 "EBSS_valves_poer_connector" H 6500 4100 50  0000 C CNN
F 2 "" H 5900 4100 50  0001 C CNN
F 3 "~" H 5900 4100 50  0001 C CNN
	1    5900 4100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5EAAD7A2
P 1750 2750
F 0 "J2" H 1900 2650 50  0000 C CNN
F 1 "SDC_latch_connector" H 2250 2750 50  0000 C CNN
F 2 "" H 1750 2750 50  0001 C CNN
F 3 "~" H 1750 2750 50  0001 C CNN
	1    1750 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 2750 3150 2750
Wire Wire Line
	3150 2600 2500 2600
Wire Wire Line
	2500 2600 2500 2650
Wire Wire Line
	2500 2650 1950 2650
Wire Wire Line
	6100 3500 6600 3500
Wire Wire Line
	6600 3650 6350 3650
Wire Wire Line
	6350 3650 6350 3600
Wire Wire Line
	6350 3600 6100 3600
Wire Wire Line
	6600 3850 6400 3850
Wire Wire Line
	6400 3850 6400 4100
Wire Wire Line
	6400 4100 6100 4100
$EndSCHEMATC
