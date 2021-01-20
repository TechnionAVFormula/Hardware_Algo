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
$Comp
L Timer:LMC555xM U2
U 1 1 601B893B
P 2650 2950
F 0 "U2" H 2650 3531 50  0000 C CNN
F 1 "LMC555xM" H 2650 3440 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3500 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmc555.pdf" H 3500 2550 50  0001 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 601B9F77
P 3600 2800
F 0 "R1" H 3670 2846 50  0000 L CNN
F 1 "R" H 3670 2755 50  0000 L CNN
F 2 "" V 3530 2800 50  0001 C CNN
F 3 "~" H 3600 2800 50  0001 C CNN
	1    3600 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 601BA2EE
P 3600 3100
F 0 "R2" H 3670 3146 50  0000 L CNN
F 1 "R" H 3670 3055 50  0000 L CNN
F 2 "" V 3530 3100 50  0001 C CNN
F 3 "~" H 3600 3100 50  0001 C CNN
	1    3600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3350 2650 3550
Wire Wire Line
	2650 3550 3600 3550
$Comp
L Device:C C1
U 1 1 601BC1A0
P 3600 3400
F 0 "C1" H 3715 3446 50  0000 L CNN
F 1 "C" H 3715 3355 50  0000 L CNN
F 2 "" H 3638 3250 50  0001 C CNN
F 3 "~" H 3600 3400 50  0001 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3300 3150 3300
Wire Wire Line
	3150 3300 3150 3150
Wire Wire Line
	3600 2950 3150 2950
Connection ~ 3600 2950
Wire Wire Line
	3600 2650 3600 2250
Wire Wire Line
	2150 3150 1850 3150
Wire Wire Line
	1850 3150 1850 2250
Wire Wire Line
	1850 2250 2650 2250
Connection ~ 2650 2250
Wire Wire Line
	2650 2250 3600 2250
Wire Wire Line
	3150 2750 3150 2400
Wire Wire Line
	3150 2400 4500 2400
Wire Wire Line
	2150 2950 2050 2950
Wire Wire Line
	2050 2950 2050 3550
$Comp
L Device:C C2
U 1 1 601BD8BF
P 2450 3550
F 0 "C2" V 2198 3550 50  0000 C CNN
F 1 "10nF" V 2289 3550 50  0000 C CNN
F 2 "" H 2488 3400 50  0001 C CNN
F 3 "~" H 2450 3550 50  0001 C CNN
	1    2450 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 3550 2300 3550
Wire Wire Line
	2600 3550 2650 3550
Connection ~ 2650 3550
Wire Wire Line
	2150 2750 1650 2750
Wire Wire Line
	1650 2750 1650 3850
Wire Wire Line
	1650 3850 3150 3850
Wire Wire Line
	3150 3850 3150 3300
Connection ~ 3150 3300
$Comp
L power:GND #PWR0101
U 1 1 601BF0FC
P 2650 3550
F 0 "#PWR0101" H 2650 3300 50  0001 C CNN
F 1 "GND" H 2655 3377 50  0000 C CNN
F 2 "" H 2650 3550 50  0001 C CNN
F 3 "" H 2650 3550 50  0001 C CNN
	1    2650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2550 2650 2250
$Comp
L Device:R R3
U 1 1 601C0525
P 4650 2400
F 0 "R3" V 4443 2400 50  0000 C CNN
F 1 "1K" V 4534 2400 50  0000 C CNN
F 2 "" V 4580 2400 50  0001 C CNN
F 3 "~" H 4650 2400 50  0001 C CNN
	1    4650 2400
	0    1    1    0   
$EndComp
$Comp
L 74xGxx:74AHC1G08 U5
U 1 1 601C5C7E
P 5650 2350
F 0 "U5" H 5625 2617 50  0000 C CNN
F 1 "74AHC1G08" H 5625 2526 50  0000 C CNN
F 2 "" H 5650 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5650 2350 50  0001 C CNN
	1    5650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2400 4800 2400
$Comp
L 74xx:74LS04 U4
U 1 1 601C86B7
P 5150 3950
F 0 "U4" V 5104 4130 50  0000 L CNN
F 1 "74LS04" V 5195 4130 50  0000 L CNN
F 2 "" H 5150 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5150 3950 50  0001 C CNN
	1    5150 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 1850 5200 1850
Wire Wire Line
	5150 1850 5150 2300
Wire Wire Line
	5350 2300 5150 2300
Connection ~ 5150 2300
Wire Wire Line
	5150 2300 5150 3650
Wire Wire Line
	5150 4250 5150 4450
Text GLabel 5200 1850 2    50   Input ~ 0
LED_picker
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5FFF831A
P 6750 4450
F 0 "Q2" H 6941 4496 50  0000 L CNN
F 1 "BC547" H 6941 4405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 4375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6750 4450 50  0001 L CNN
	1    6750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5FFF8320
P 6400 4450
F 0 "R8" V 6193 4450 50  0000 C CNN
F 1 "2.2K" V 6284 4450 50  0000 C CNN
F 2 "" V 6330 4450 50  0001 C CNN
F 3 "~" H 6400 4450 50  0001 C CNN
	1    6400 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FFF8326
P 6850 3650
F 0 "R10" H 6780 3604 50  0000 R CNN
F 1 "560" H 6780 3695 50  0000 R CNN
F 2 "" V 6780 3650 50  0001 C CNN
F 3 "~" H 6850 3650 50  0001 C CNN
	1    6850 3650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FFF832C
P 6850 4650
F 0 "#PWR0103" H 6850 4400 50  0001 C CNN
F 1 "GND" H 6855 4477 50  0000 C CNN
F 2 "" H 6850 4650 50  0001 C CNN
F 3 "" H 6850 4650 50  0001 C CNN
	1    6850 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5FFF8332
P 6850 3500
F 0 "#PWR0104" H 6850 3350 50  0001 C CNN
F 1 "+5V" H 6865 3673 50  0000 C CNN
F 2 "" H 6850 3500 50  0001 C CNN
F 3 "" H 6850 3500 50  0001 C CNN
	1    6850 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5FFF8338
P 6850 4050
F 0 "D2" V 6889 3932 50  0000 R CNN
F 1 "LED" V 6798 3932 50  0000 R CNN
F 2 "" H 6850 4050 50  0001 C CNN
F 3 "~" H 6850 4050 50  0001 C CNN
	1    6850 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 4200 6850 4250
Wire Wire Line
	6850 3800 6850 3900
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5FFFABFB
P 6750 2350
F 0 "Q1" H 6941 2396 50  0000 L CNN
F 1 "BC547" H 6941 2305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 2275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6750 2350 50  0001 L CNN
	1    6750 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FFFAC01
P 6400 2350
F 0 "R7" V 6193 2350 50  0000 C CNN
F 1 "2.2K" V 6284 2350 50  0000 C CNN
F 2 "" V 6330 2350 50  0001 C CNN
F 3 "~" H 6400 2350 50  0001 C CNN
	1    6400 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5FFFAC07
P 6850 1550
F 0 "R9" H 6780 1504 50  0000 R CNN
F 1 "560" H 6780 1595 50  0000 R CNN
F 2 "" V 6780 1550 50  0001 C CNN
F 3 "~" H 6850 1550 50  0001 C CNN
	1    6850 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FFFAC0D
P 6850 2550
F 0 "#PWR0105" H 6850 2300 50  0001 C CNN
F 1 "GND" H 6855 2377 50  0000 C CNN
F 2 "" H 6850 2550 50  0001 C CNN
F 3 "" H 6850 2550 50  0001 C CNN
	1    6850 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5FFFAC13
P 6850 1400
F 0 "#PWR0106" H 6850 1250 50  0001 C CNN
F 1 "+5V" H 6865 1573 50  0000 C CNN
F 2 "" H 6850 1400 50  0001 C CNN
F 3 "" H 6850 1400 50  0001 C CNN
	1    6850 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FFFAC19
P 6850 1950
F 0 "D1" V 6889 1832 50  0000 R CNN
F 1 "LED" V 6798 1832 50  0000 R CNN
F 2 "" H 6850 1950 50  0001 C CNN
F 3 "~" H 6850 1950 50  0001 C CNN
	1    6850 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 2100 6850 2150
Wire Wire Line
	6850 1700 6850 1800
Wire Wire Line
	5900 2350 6250 2350
$Comp
L power:+5V #PWR0108
U 1 1 600041E5
P 2650 2250
F 0 "#PWR0108" H 2650 2100 50  0001 C CNN
F 1 "+5V" H 2665 2423 50  0000 C CNN
F 2 "" H 2650 2250 50  0001 C CNN
F 3 "" H 2650 2250 50  0001 C CNN
	1    2650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6650 5950 7300
Wire Wire Line
	4650 6650 4500 6650
Wire Wire Line
	4150 6650 4150 7000
Wire Wire Line
	4950 6950 4950 7350
Wire Wire Line
	4500 7350 4950 7350
Wire Wire Line
	4950 7350 5450 7350
Connection ~ 4950 7350
$Comp
L power:GND #PWR0109
U 1 1 6001F23C
P 4950 7350
F 0 "#PWR0109" H 4950 7100 50  0001 C CNN
F 1 "GND" H 4955 7177 50  0000 C CNN
F 2 "" H 4950 7350 50  0001 C CNN
F 3 "" H 4950 7350 50  0001 C CNN
	1    4950 7350
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C5
U 1 1 6001F242
P 4500 7100
F 0 "C5" H 4678 7146 50  0000 L CNN
F 1 "333nF" H 4678 7055 50  0000 L CNN
F 2 "" H 4500 7100 50  0001 C CNN
F 3 "~" H 4500 7100 50  0001 C CNN
	1    4500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6850 4500 6650
Connection ~ 4500 6650
Wire Wire Line
	4500 6650 4150 6650
Wire Wire Line
	5450 6850 5450 6650
Wire Wire Line
	5250 6650 5450 6650
Connection ~ 5450 6650
Wire Wire Line
	5450 6650 5950 6650
$Comp
L Regulator_Linear:L7805 U3
U 1 1 6001F24F
P 4950 6650
F 0 "U3" H 4950 6892 50  0000 C CNN
F 1 "L7805" H 4950 6801 50  0000 C CNN
F 2 "" H 4975 6500 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4950 6600 50  0001 C CNN
	1    4950 6650
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C6
U 1 1 6001F255
P 5450 7100
F 0 "C6" H 5628 7146 50  0000 L CNN
F 1 "100nF" H 5628 7055 50  0000 L CNN
F 2 "" H 5450 7100 50  0001 C CNN
F 3 "~" H 5450 7100 50  0001 C CNN
	1    5450 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 6001F25B
P 4150 7150
F 0 "F1" H 4210 7196 50  0000 L CNN
F 1 "Fuse" H 4210 7105 50  0000 L CNN
F 2 "" V 4080 7150 50  0001 C CNN
F 3 "~" H 4150 7150 50  0001 C CNN
	1    4150 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0110
U 1 1 6001F261
P 4150 7300
F 0 "#PWR0110" H 4150 7150 50  0001 C CNN
F 1 "+12V" H 4165 7473 50  0000 C CNN
F 2 "" H 4150 7300 50  0001 C CNN
F 3 "" H 4150 7300 50  0001 C CNN
	1    4150 7300
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 6001F267
P 5950 7300
F 0 "#PWR0111" H 5950 7150 50  0001 C CNN
F 1 "+5V" H 5965 7473 50  0000 C CNN
F 2 "" H 5950 7300 50  0001 C CNN
F 3 "" H 5950 7300 50  0001 C CNN
	1    5950 7300
	-1   0    0    1   
$EndComp
Text Notes 1400 1850 0    50   ~ 0
Time High (T1)  0.693 × (R1+R2) × C1   Seconds\nTime Low (T2)   0.693 × R2 × C1   Seconds\nTime Period (T)    0.693 × (R1+2×R2) × C1  Seconds\nFrequency (F)    1.44 / (R1+2×R2) × C1    Hertz (Hz)\nDuty Cycle     (T1/T)×100    Percentage (%)
Wire Wire Line
	5150 4450 6250 4450
$EndSCHEMATC