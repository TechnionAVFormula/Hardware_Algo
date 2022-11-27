EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5300 6700 5300 7300
Wire Wire Line
	4000 6700 3850 6700
Wire Wire Line
	3500 6700 3500 7300
Wire Wire Line
	4300 7000 4300 7400
Wire Wire Line
	3850 7400 4300 7400
Wire Wire Line
	4300 7400 4800 7400
Connection ~ 4300 7400
$Comp
L power:GND #PWR?
U 1 1 600A3F58
P 4300 7400
F 0 "#PWR?" H 4300 7150 50  0001 C CNN
F 1 "GND" H 4305 7227 50  0000 C CNN
F 2 "" H 4300 7400 50  0001 C CNN
F 3 "" H 4300 7400 50  0001 C CNN
	1    4300 7400
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C?
U 1 1 600A3F5E
P 3850 7150
F 0 "C?" H 4028 7196 50  0000 L CNN
F 1 "100nF" H 4028 7105 50  0000 L CNN
F 2 "" H 3850 7150 50  0001 C CNN
F 3 "~" H 3850 7150 50  0001 C CNN
	1    3850 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6900 3850 6700
Connection ~ 3850 6700
Wire Wire Line
	3850 6700 3500 6700
$Comp
L pspice:CAP C?
U 1 1 600A3F67
P 4800 7150
F 0 "C?" H 4978 7196 50  0000 L CNN
F 1 "10nF" H 4978 7105 50  0000 L CNN
F 2 "" H 4800 7150 50  0001 C CNN
F 3 "~" H 4800 7150 50  0001 C CNN
	1    4800 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6900 4800 6700
$Comp
L power:+3.3V #PWR?
U 1 1 600A3F6E
P 5300 7300
F 0 "#PWR?" H 5300 7150 50  0001 C CNN
F 1 "+3.3V" H 5315 7473 50  0000 C CNN
F 2 "" H 5300 7300 50  0001 C CNN
F 3 "" H 5300 7300 50  0001 C CNN
	1    5300 7300
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U?
U 1 1 600A3F74
P 4300 6700
F 0 "U?" H 4300 6942 50  0000 C CNN
F 1 "7408" H 4300 6851 50  0000 C CNN
F 2 "" H 4300 6900 50  0001 C CNN
F 3 "" H 4400 6450 50  0001 C CNN
	1    4300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6700 4800 6700
Connection ~ 4800 6700
Wire Wire Line
	4800 6700 5300 6700
$Comp
L power:+5V #PWR?
U 1 1 600A3F7D
P 3500 7300
F 0 "#PWR?" H 3500 7150 50  0001 C CNN
F 1 "+5V" H 3515 7473 50  0000 C CNN
F 2 "" H 3500 7300 50  0001 C CNN
F 3 "" H 3500 7300 50  0001 C CNN
	1    3500 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 6750 3000 7400
Wire Wire Line
	1700 6750 1550 6750
Wire Wire Line
	1200 6750 1200 7100
Wire Wire Line
	2000 7050 2000 7450
Wire Wire Line
	1550 7450 2000 7450
Wire Wire Line
	2000 7450 2500 7450
Connection ~ 2000 7450
$Comp
L power:GND #PWR?
U 1 1 600A3F8A
P 2000 7450
F 0 "#PWR?" H 2000 7200 50  0001 C CNN
F 1 "GND" H 2005 7277 50  0000 C CNN
F 2 "" H 2000 7450 50  0001 C CNN
F 3 "" H 2000 7450 50  0001 C CNN
	1    2000 7450
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C?
U 1 1 600A3F90
P 1550 7200
F 0 "C?" H 1728 7246 50  0000 L CNN
F 1 "333nF" H 1728 7155 50  0000 L CNN
F 2 "" H 1550 7200 50  0001 C CNN
F 3 "~" H 1550 7200 50  0001 C CNN
	1    1550 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6950 1550 6750
Connection ~ 1550 6750
Wire Wire Line
	1550 6750 1200 6750
Wire Wire Line
	2500 6950 2500 6750
$Comp
L power:+3.3V #PWR?
U 1 1 600A3F9A
P 3000 7400
F 0 "#PWR?" H 3000 7250 50  0001 C CNN
F 1 "+3.3V" H 3015 7573 50  0000 C CNN
F 2 "" H 3000 7400 50  0001 C CNN
F 3 "" H 3000 7400 50  0001 C CNN
	1    3000 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 6750 2500 6750
Connection ~ 2500 6750
Wire Wire Line
	2500 6750 3000 6750
$Comp
L Regulator_Linear:L7805 U?
U 1 1 600A3FA3
P 2000 6750
F 0 "U?" H 2000 6992 50  0000 C CNN
F 1 "7408" H 2000 6901 50  0000 C CNN
F 2 "" H 2025 6600 50  0001 L CIN
F 3 "" H 2000 6700 50  0001 C CNN
	1    2000 6750
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C?
U 1 1 600A3FA9
P 2500 7200
F 0 "C?" H 2678 7246 50  0000 L CNN
F 1 "100nF" H 2678 7155 50  0000 L CNN
F 2 "" H 2500 7200 50  0001 C CNN
F 3 "~" H 2500 7200 50  0001 C CNN
	1    2500 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 600A3FAF
P 1200 7250
F 0 "F?" H 1260 7296 50  0000 L CNN
F 1 "Fuse" H 1260 7205 50  0000 L CNN
F 2 "" V 1130 7250 50  0001 C CNN
F 3 "~" H 1200 7250 50  0001 C CNN
	1    1200 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 600A3FB5
P 1200 7400
F 0 "#PWR?" H 1200 7250 50  0001 C CNN
F 1 "+12V" H 1215 7573 50  0000 C CNN
F 2 "" H 1200 7400 50  0001 C CNN
F 3 "" H 1200 7400 50  0001 C CNN
	1    1200 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 4450 5800 4450
Wire Wire Line
	5450 3700 5450 4450
Wire Wire Line
	5000 3700 5450 3700
$Comp
L EBS_library:UCC2946 U?
U 1 1 6010AFDF
P 5350 3600
F 0 "U?" H 4625 4281 50  0000 C CNN
F 1 "UCC2946" H 4625 4190 50  0000 C CNN
F 2 "" H 4850 4050 50  0001 C CNN
F 3 "" H 4850 4050 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7408 U?
U 1 1 6010AFEA
P 6350 4550
F 0 "U?" H 6350 4966 50  0000 C CNN
F 1 "7408" H 6350 4875 50  0000 C CNN
F 2 "" H 6350 4550 50  0001 C CNN
F 3 "" H 6350 4550 50  0001 C CNN
	1    6350 4550
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74157 U?
U 1 1 6010AFF6
P 4200 5500
F 0 "U?" H 4200 6216 50  0000 C CNN
F 1 "74157" H 4200 6125 50  0000 C CNN
F 2 "" H 4200 5500 50  0001 C CNN
F 3 "" H 4200 5500 50  0001 C CNN
	1    4200 5500
	1    0    0    -1  
$EndComp
Text GLabel 6600 3950 0    50   Input ~ 0
AS_close_SDC
Text GLabel 2750 5200 0    50   Input ~ 0
AS_driving_mode
Wire Wire Line
	2750 5200 3650 5200
Text GLabel 2750 5350 0    50   Input ~ 0
TS_Activation_Button_cockpit
Wire Wire Line
	3650 5350 2750 5350
Text GLabel 2750 5450 0    50   Input ~ 0
TS_Activation_Button_external
Wire Wire Line
	3650 5450 2750 5450
Text GLabel 2850 4250 0    50   Input ~ 0
watchdog
Text GLabel 2250 4650 0    50   Input ~ 0
shutdown_circuit
Wire Wire Line
	2250 4650 5800 4650
Wire Wire Line
	2850 4250 4000 4250
Wire Wire Line
	4000 4250 4000 3750
Wire Wire Line
	4000 3750 4250 3750
Wire Wire Line
	2600 3950 3150 3950
$Comp
L power:GND #PWR?
U 1 1 6010B00A
P 4600 3950
F 0 "#PWR?" H 4600 3700 50  0001 C CNN
F 1 "GND" H 4605 3777 50  0000 C CNN
F 2 "" H 4600 3950 50  0001 C CNN
F 3 "" H 4600 3950 50  0001 C CNN
	1    4600 3950
	1    0    0    -1  
$EndComp
Connection ~ 4600 3950
$Comp
L Device:R R?
U 1 1 6010B011
P 2600 3800
F 0 "R?" H 2670 3846 50  0000 L CNN
F 1 "270K" H 2670 3755 50  0000 L CNN
F 2 "" V 2530 3800 50  0001 C CNN
F 3 "~" H 2600 3800 50  0001 C CNN
	1    2600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3650 2600 3300
Connection ~ 3150 3950
Wire Wire Line
	3150 3450 3150 3350
Wire Wire Line
	3150 3350 4250 3350
Wire Wire Line
	4250 3350 4250 3450
$Comp
L pspice:CAP Cwp?
U 1 1 6010B01C
P 3650 3700
F 0 "Cwp?" H 3828 3746 50  0000 L CNN
F 1 "4nF" H 3828 3655 50  0000 L CNN
F 2 "" H 3650 3700 50  0001 C CNN
F 3 "~" H 3650 3700 50  0001 C CNN
	1    3650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3450 4150 3450
Wire Wire Line
	4150 3450 4150 3600
Wire Wire Line
	4150 3600 4250 3600
Wire Wire Line
	4600 3100 4600 2800
$Comp
L power:+3.3V #PWR?
U 1 1 6010B026
P 4600 2750
F 0 "#PWR?" H 4600 2600 50  0001 C CNN
F 1 "+3.3V" H 4615 2923 50  0000 C CNN
F 2 "" H 4600 2750 50  0001 C CNN
F 3 "" H 4600 2750 50  0001 C CNN
	1    4600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2800 4600 2800
Connection ~ 4600 2800
Wire Wire Line
	4600 2800 4600 2750
Wire Wire Line
	2600 3300 4100 3300
$Comp
L Device:R R?
U 1 1 6010B030
P 4100 2950
F 0 "R?" H 4030 2904 50  0000 R CNN
F 1 "270K" H 4030 2995 50  0000 R CNN
F 2 "" V 4030 2950 50  0001 C CNN
F 3 "~" H 4100 2950 50  0001 C CNN
	1    4100 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 3100 4100 3300
Connection ~ 4100 3300
Wire Wire Line
	4100 3300 4250 3300
$Comp
L pspice:CAP Crp?
U 1 1 6010B039
P 3150 3700
F 0 "Crp?" H 3328 3746 50  0000 L CNN
F 1 "33nF" H 3328 3655 50  0000 L CNN
F 2 "" H 3150 3700 50  0001 C CNN
F 3 "~" H 3150 3700 50  0001 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3950 3650 3950
Connection ~ 3650 3950
Wire Wire Line
	3650 3950 4600 3950
Text Notes 2650 4050 0    50   ~ 0
TRP = 3.125 * CRP
Text Notes 3550 4050 0    50   ~ 0
TWP =  25 * CWP
Text Notes 2600 3150 0    50   ~ 0
VRESET = 1.235  * (R1 + R2) / R2
$Comp
L power:GND #PWR?
U 1 1 6010B045
P 3650 5100
F 0 "#PWR?" H 3650 4850 50  0001 C CNN
F 1 "GND" H 3655 4927 50  0000 C CNN
F 2 "" H 3650 5100 50  0001 C CNN
F 3 "" H 3650 5100 50  0001 C CNN
	1    3650 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 4550 7550 4550
Wire Wire Line
	6600 3950 7550 3950
Wire Wire Line
	7550 3950 7550 4350
Wire Wire Line
	7550 4350 7900 4350
Wire Wire Line
	4750 5400 6900 5400
$Comp
L 74xx_IEEE:7408 U?
U 1 1 60180804
P 8450 4450
F 0 "U?" H 8450 4866 50  0000 C CNN
F 1 "7408" H 8450 4775 50  0000 C CNN
F 2 "" H 8450 4450 50  0001 C CNN
F 3 "" H 8450 4450 50  0001 C CNN
	1    8450 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 601C093D
P 6350 2800
F 0 "R?" H 6280 2754 50  0000 R CNN
F 1 "10K" H 6280 2845 50  0000 R CNN
F 2 "" V 6280 2800 50  0001 C CNN
F 3 "~" H 6350 2800 50  0001 C CNN
	1    6350 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 601C0943
P 6500 2650
F 0 "R?" V 6707 2650 50  0000 C CNN
F 1 "1K" V 6616 2650 50  0000 C CNN
F 2 "" V 6430 2650 50  0001 C CNN
F 3 "~" H 6500 2650 50  0001 C CNN
	1    6500 2650
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q?
U 1 1 601C0949
P 6850 2650
F 0 "Q?" H 7054 2696 50  0000 L CNN
F 1 "IRLZ44N" H 7054 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7100 2575 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 6850 2650 50  0001 L CNN
	1    6850 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C094F
P 6950 2950
F 0 "#PWR?" H 6950 2700 50  0001 C CNN
F 1 "GND" H 6955 2777 50  0000 C CNN
F 2 "" H 6950 2950 50  0001 C CNN
F 3 "" H 6950 2950 50  0001 C CNN
	1    6950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2850 6950 2950
Wire Wire Line
	6350 2950 6950 2950
Connection ~ 6950 2950
Text GLabel 5650 2650 0    50   Input ~ 0
SDC_TO_relais
Wire Wire Line
	5650 2650 6350 2650
Connection ~ 6350 2650
$Comp
L Relay:ADW11 K?
U 1 1 601C095B
P 7750 2050
F 0 "K?" H 8180 2096 50  0000 L CNN
F 1 "ADW11" H 8180 2005 50  0000 L CNN
F 2 "Relay_THT:Relay_1P1T_NO_10x24x18.8mm_Panasonic_ADW11xxxxW_THT" H 9075 2000 50  0001 C CNN
F 3 "https://www.panasonic-electric-works.com/pew/es/downloads/ds_dw_hl_en.pdf" H 7750 2050 50  0001 C CNN
	1    7750 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601C0961
P 7550 2350
F 0 "#PWR?" H 7550 2200 50  0001 C CNN
F 1 "+5V" H 7565 2523 50  0000 C CNN
F 2 "" H 7550 2350 50  0001 C CNN
F 3 "" H 7550 2350 50  0001 C CNN
	1    7550 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 1750 7550 1750
Wire Wire Line
	6950 1750 6950 2350
$Comp
L Diode:1N4148 D?
U 1 1 601C0969
P 7150 2350
F 0 "D?" H 7150 2133 50  0000 C CNN
F 1 "1N4148" H 7150 2224 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7150 2175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7150 2350 50  0001 C CNN
	1    7150 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 2350 7550 2350
Connection ~ 7550 2350
Wire Wire Line
	7000 2350 6950 2350
Connection ~ 6950 2350
Wire Wire Line
	6950 2350 6950 2450
Text HLabel 8050 1400 1    50   Input ~ 0
SDC_latch_out
Text HLabel 7950 2350 3    50   Output ~ 0
SDC_latch_out
Wire Wire Line
	8050 1400 8050 1450
$Comp
L Isolator:4N26 U?
U 1 1 601C0977
P 9450 1550
F 0 "U?" H 9450 1875 50  0000 C CNN
F 1 "4N26" H 9450 1784 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 9250 1350 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 9450 1550 50  0001 L CNN
	1    9450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 601C097D
P 8500 1450
F 0 "R?" V 8707 1450 50  0000 C CNN
F 1 "10K" V 8616 1450 50  0000 C CNN
F 2 "" V 8430 1450 50  0001 C CNN
F 3 "~" H 8500 1450 50  0001 C CNN
	1    8500 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 1450 8350 1450
Connection ~ 8050 1450
Wire Wire Line
	8050 1450 8050 1750
Wire Wire Line
	8650 1450 8800 1450
Wire Wire Line
	9150 1750 8800 1750
Wire Wire Line
	9750 1650 9750 1800
$Comp
L power:GND #PWR?
U 1 1 601C0989
P 9750 1800
F 0 "#PWR?" H 9750 1550 50  0001 C CNN
F 1 "GND" H 9755 1627 50  0000 C CNN
F 2 "" H 9750 1800 50  0001 C CNN
F 3 "" H 9750 1800 50  0001 C CNN
	1    9750 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR?
U 1 1 601C098F
P 8750 1750
F 0 "#PWR?" H 8750 1500 50  0001 C CNN
F 1 "GND1" H 8755 1577 50  0000 C CNN
F 2 "" H 8750 1750 50  0001 C CNN
F 3 "" H 8750 1750 50  0001 C CNN
	1    8750 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601C0995
P 9950 1250
F 0 "#PWR?" H 9950 1100 50  0001 C CNN
F 1 "+5V" H 9965 1423 50  0000 C CNN
F 2 "" H 9950 1250 50  0001 C CNN
F 3 "" H 9950 1250 50  0001 C CNN
	1    9950 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 601C099B
P 8800 1600
F 0 "R?" H 8870 1646 50  0000 L CNN
F 1 "7.1K" H 8870 1555 50  0000 L CNN
F 2 "" V 8730 1600 50  0001 C CNN
F 3 "~" H 8800 1600 50  0001 C CNN
	1    8800 1600
	1    0    0    -1  
$EndComp
Connection ~ 8800 1450
Connection ~ 8800 1750
Wire Wire Line
	8800 1750 8750 1750
Wire Wire Line
	8800 1450 9150 1450
Wire Wire Line
	9150 1650 9150 1750
Connection ~ 9950 1550
Wire Wire Line
	9950 1550 10450 1550
Wire Wire Line
	9750 1550 9950 1550
$Comp
L Device:R R?
U 1 1 601C09A9
P 9950 1400
F 0 "R?" H 10020 1446 50  0000 L CNN
F 1 "10K" H 10020 1355 50  0000 L CNN
F 2 "" V 9880 1400 50  0001 C CNN
F 3 "~" H 9950 1400 50  0001 C CNN
	1    9950 1400
	1    0    0    -1  
$EndComp
Text Notes 8550 2050 0    50   ~ 0
12V to 5V Voltage Divider
Text GLabel 10450 1550 2    50   Output ~ 0
shutdown_circuit
Text GLabel 9000 4450 2    50   Output ~ 0
SDC_TO_relais
Wire Wire Line
	7550 4550 7550 5000
Wire Wire Line
	7550 5000 9000 5000
Connection ~ 7550 4550
Wire Wire Line
	7550 4550 7900 4550
Text GLabel 9000 5000 2    50   Output ~ 0
SDC_is_ready
Text GLabel 6900 5400 2    50   Output ~ 0
Driving_Button
$EndSCHEMATC