EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "OpenLCR Measurement Circuitry"
Date ""
Rev "Rev 1"
Comp "BrandtTech"
Comment1 "Drafted by Ryan Brandt"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX680CPA_:MAX680CPA+ U2
U 1 1 6250FB8A
P 2000 3850
F 0 "U2" H 2000 4620 50  0000 C CNN
F 1 "MAX680CPA+" H 2000 4529 50  0000 C CNN
F 2 "DIP794W47P254L991H457Q8" H 2000 3850 50  0001 L BNN
F 3 "" H 2000 3850 50  0001 L BNN
F 4 "PDIP-8 Maxim" H 2000 3850 50  0001 L BNN "PACKAGE"
F 5 "Maxim Integrated" H 2000 3850 50  0001 L BNN "MF"
F 6 "Unavailable" H 2000 3850 50  0001 L BNN "AVAILABILITY"
F 7 "MAX680CPA+" H 2000 3850 50  0001 L BNN "MP"
F 8 "None" H 2000 3850 50  0001 L BNN "PRICE"
F 9 "DC-DC converter; Uin: 5V; Uout: -10VDC; Uout2: 10VDC; DIP" H 2000 3850 50  0001 L BNN "DESCRIPTION"
	1    2000 3850
	1    0    0    -1  
$EndComp
$Comp
L LiPoCharger_Booster:LiPoChargeBoost U1
U 1 1 62518618
P 3000 2400
F 0 "U1" H 3000 2725 50  0000 C CNN
F 1 "LiPoChargeBoost" H 3000 2634 50  0000 C CNN
F 2 "" H 3000 2700 50  0001 C CNN
F 3 "" H 3000 2700 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2400 2150 2400
Wire Wire Line
	2150 2400 2150 1750
Wire Wire Line
	2400 2500 2250 2500
Wire Wire Line
	2250 2500 2250 1750
Text Notes 1850 1700 0    50   ~ 0
To uUSB connector
Text Notes 650  2600 0    50   ~ 0
Lithium-Polymer Battery\n3.7V-4.2V, 2500mAh\nContains internal\nprotection circuitry
$Comp
L Device:Battery_Cell BT1
U 1 1 62515AE1
P 1650 2500
F 0 "BT1" H 1768 2596 50  0000 L CNN
F 1 "Battery_Cell" H 1768 2505 50  0000 L CNN
F 2 "" V 1650 2560 50  0001 C CNN
F 3 "~" V 1650 2560 50  0001 C CNN
	1    1650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2300 2400 2300
Wire Wire Line
	2250 2500 2250 2600
Wire Wire Line
	2250 2600 1650 2600
Connection ~ 2250 2500
Wire Wire Line
	3600 2300 4150 2300
$Comp
L MAX680CPA_:MAX680CPA+ U3
U 1 1 6251CE4F
P 2000 5300
F 0 "U3" H 2000 6070 50  0000 C CNN
F 1 "MAX680CPA+" H 2000 5979 50  0000 C CNN
F 2 "DIP794W47P254L991H457Q8" H 2000 5300 50  0001 L BNN
F 3 "" H 2000 5300 50  0001 L BNN
F 4 "PDIP-8 Maxim" H 2000 5300 50  0001 L BNN "PACKAGE"
F 5 "Maxim Integrated" H 2000 5300 50  0001 L BNN "MF"
F 6 "Unavailable" H 2000 5300 50  0001 L BNN "AVAILABILITY"
F 7 "MAX680CPA+" H 2000 5300 50  0001 L BNN "MP"
F 8 "None" H 2000 5300 50  0001 L BNN "PRICE"
F 9 "DC-DC converter; Uin: 5V; Uout: -10VDC; Uout2: 10VDC; DIP" H 2000 5300 50  0001 L BNN "DESCRIPTION"
	1    2000 5300
	1    0    0    -1  
$EndComp
$Comp
L MAX680CPA_:MAX680CPA+ U4
U 1 1 6251D7F3
P 2000 6800
F 0 "U4" H 2000 7570 50  0000 C CNN
F 1 "MAX680CPA+" H 2000 7479 50  0000 C CNN
F 2 "DIP794W47P254L991H457Q8" H 2000 6800 50  0001 L BNN
F 3 "" H 2000 6800 50  0001 L BNN
F 4 "PDIP-8 Maxim" H 2000 6800 50  0001 L BNN "PACKAGE"
F 5 "Maxim Integrated" H 2000 6800 50  0001 L BNN "MF"
F 6 "Unavailable" H 2000 6800 50  0001 L BNN "AVAILABILITY"
F 7 "MAX680CPA+" H 2000 6800 50  0001 L BNN "MP"
F 8 "None" H 2000 6800 50  0001 L BNN "PRICE"
F 9 "DC-DC converter; Uin: 5V; Uout: -10VDC; Uout2: 10VDC; DIP" H 2000 6800 50  0001 L BNN "DESCRIPTION"
	1    2000 6800
	1    0    0    -1  
$EndComp
Text Label 3750 2300 0    50   ~ 0
VBATT
Text Label 3750 2400 0    50   ~ 0
5V
Text Label 3750 2500 0    50   ~ 0
GND
$Comp
L power:+5V #PWR03
U 1 1 6251E328
P 4300 2400
F 0 "#PWR03" H 4300 2250 50  0001 C CNN
F 1 "+5V" H 4315 2573 50  0000 C CNN
F 2 "" H 4300 2400 50  0001 C CNN
F 3 "" H 4300 2400 50  0001 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6251ED8F
P 4300 2500
F 0 "#PWR04" H 4300 2250 50  0001 C CNN
F 1 "GND" H 4305 2327 50  0000 C CNN
F 2 "" H 4300 2500 50  0001 C CNN
F 3 "" H 4300 2500 50  0001 C CNN
	1    4300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2400 4300 2400
Wire Wire Line
	3600 2500 4300 2500
$Comp
L power:GND #PWR09
U 1 1 6251F89D
P 2850 4250
F 0 "#PWR09" H 2850 4000 50  0001 C CNN
F 1 "GND" H 2855 4077 50  0000 C CNN
F 2 "" H 2850 4250 50  0001 C CNN
F 3 "" H 2850 4250 50  0001 C CNN
	1    2850 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 625204F9
P 2850 5700
F 0 "#PWR011" H 2850 5450 50  0001 C CNN
F 1 "GND" H 2855 5527 50  0000 C CNN
F 2 "" H 2850 5700 50  0001 C CNN
F 3 "" H 2850 5700 50  0001 C CNN
	1    2850 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 625209A4
P 2850 7200
F 0 "#PWR013" H 2850 6950 50  0001 C CNN
F 1 "GND" H 2855 7027 50  0000 C CNN
F 2 "" H 2850 7200 50  0001 C CNN
F 3 "" H 2850 7200 50  0001 C CNN
	1    2850 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 62520C44
P 2850 6400
F 0 "#PWR012" H 2850 6250 50  0001 C CNN
F 1 "+5V" H 2865 6573 50  0000 C CNN
F 2 "" H 2850 6400 50  0001 C CNN
F 3 "" H 2850 6400 50  0001 C CNN
	1    2850 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 62521D7D
P 2850 4900
F 0 "#PWR010" H 2850 4750 50  0001 C CNN
F 1 "+5V" H 2865 5073 50  0000 C CNN
F 2 "" H 2850 4900 50  0001 C CNN
F 3 "" H 2850 4900 50  0001 C CNN
	1    2850 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 62521EFB
P 2850 3450
F 0 "#PWR06" H 2850 3300 50  0001 C CNN
F 1 "+5V" H 2865 3623 50  0000 C CNN
F 2 "" H 2850 3450 50  0001 C CNN
F 3 "" H 2850 3450 50  0001 C CNN
	1    2850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3450 2700 3450
Wire Wire Line
	2850 4250 2700 4250
Wire Wire Line
	2850 4900 2700 4900
Wire Wire Line
	2850 5700 2700 5700
Wire Wire Line
	2850 6400 2700 6400
Wire Wire Line
	2850 7200 2700 7200
Wire Wire Line
	2700 4800 2700 4600
Wire Wire Line
	2700 4600 3100 4600
Wire Wire Line
	2700 3350 2700 3150
Wire Wire Line
	2700 3150 3100 3150
Wire Wire Line
	2700 6300 2700 6100
Wire Wire Line
	2700 6100 3100 6100
Wire Wire Line
	3100 6100 3100 4600
Wire Wire Line
	3100 4600 3100 3150
Connection ~ 3100 4600
Wire Wire Line
	3100 3150 3500 3150
Connection ~ 3100 3150
Text Label 3250 3150 0    50   ~ 0
+10V
Wire Wire Line
	2700 4150 3200 4150
Wire Wire Line
	2700 7100 3200 7100
Wire Wire Line
	3200 7100 3200 5600
Connection ~ 3200 4150
Wire Wire Line
	3200 4150 3500 4150
Wire Wire Line
	2700 5600 3200 5600
Connection ~ 3200 5600
Wire Wire Line
	3200 5600 3200 4150
Text Label 3250 4150 0    50   ~ 0
-10V
$Comp
L power:GND #PWR07
U 1 1 62527CB2
P 3200 3650
F 0 "#PWR07" H 3200 3400 50  0001 C CNN
F 1 "GND" H 3205 3477 50  0000 C CNN
F 2 "" H 3200 3650 50  0001 C CNN
F 3 "" H 3200 3650 50  0001 C CNN
	1    3200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3650 3500 3650
$Comp
L Device:CP C1
U 1 1 6252898D
P 3500 3400
F 0 "C1" H 3618 3446 50  0000 L CNN
F 1 "10u" H 3618 3355 50  0000 L CNN
F 2 "" H 3538 3250 50  0001 C CNN
F 3 "~" H 3500 3400 50  0001 C CNN
	1    3500 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 6252958A
P 3500 3900
F 0 "C3" H 3618 3946 50  0000 L CNN
F 1 "10u" H 3618 3855 50  0000 L CNN
F 2 "" H 3538 3750 50  0001 C CNN
F 3 "~" H 3500 3900 50  0001 C CNN
	1    3500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4150 3500 4050
Wire Wire Line
	3500 3750 3500 3650
Wire Wire Line
	3500 3550 3500 3650
Connection ~ 3500 3650
Wire Wire Line
	3500 3250 3500 3150
$Comp
L Device:CP C2
U 1 1 6252C5D6
P 1150 3700
F 0 "C2" H 950 3750 50  0000 L CNN
F 1 "10u" H 900 3650 50  0000 L CNN
F 2 "" H 1188 3550 50  0001 C CNN
F 3 "~" H 1150 3700 50  0001 C CNN
	1    1150 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 625314A6
P 950 4000
F 0 "C4" H 750 4050 50  0000 L CNN
F 1 "10u" H 700 3950 50  0000 L CNN
F 2 "" H 988 3850 50  0001 C CNN
F 3 "~" H 950 4000 50  0001 C CNN
	1    950  4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3550 1300 3550
Wire Wire Line
	1300 3550 1300 3650
Wire Wire Line
	1150 3850 1300 3850
Wire Wire Line
	1300 3850 1300 3750
Wire Wire Line
	950  3850 1100 3850
Wire Wire Line
	1100 3850 1100 3950
Wire Wire Line
	1100 3950 1300 3950
Wire Wire Line
	950  4150 1100 4150
Wire Wire Line
	1100 4150 1100 4050
Wire Wire Line
	1100 4050 1300 4050
$Comp
L Device:CP C5
U 1 1 62535813
P 1150 5150
F 0 "C5" H 950 5200 50  0000 L CNN
F 1 "10u" H 900 5100 50  0000 L CNN
F 2 "" H 1188 5000 50  0001 C CNN
F 3 "~" H 1150 5150 50  0001 C CNN
	1    1150 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 62535819
P 950 5450
F 0 "C6" H 750 5500 50  0000 L CNN
F 1 "10u" H 700 5400 50  0000 L CNN
F 2 "" H 988 5300 50  0001 C CNN
F 3 "~" H 950 5450 50  0001 C CNN
	1    950  5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5000 1300 5000
Wire Wire Line
	1150 5300 1300 5300
Wire Wire Line
	950  5300 1100 5300
Wire Wire Line
	1100 5300 1100 5400
Wire Wire Line
	1100 5400 1300 5400
Wire Wire Line
	950  5600 1100 5600
Wire Wire Line
	1100 5600 1100 5500
Wire Wire Line
	1100 5500 1300 5500
$Comp
L Device:CP C7
U 1 1 62537749
P 1150 6650
F 0 "C7" H 950 6700 50  0000 L CNN
F 1 "10u" H 900 6600 50  0000 L CNN
F 2 "" H 1188 6500 50  0001 C CNN
F 3 "~" H 1150 6650 50  0001 C CNN
	1    1150 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 6253774F
P 950 6950
F 0 "C8" H 750 7000 50  0000 L CNN
F 1 "10u" H 700 6900 50  0000 L CNN
F 2 "" H 988 6800 50  0001 C CNN
F 3 "~" H 950 6950 50  0001 C CNN
	1    950  6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6500 1300 6500
Wire Wire Line
	1150 6800 1300 6800
Wire Wire Line
	950  6800 1100 6800
Wire Wire Line
	1100 6800 1100 6900
Wire Wire Line
	1100 6900 1300 6900
Wire Wire Line
	950  7100 1100 7100
Wire Wire Line
	1100 7100 1100 7000
Wire Wire Line
	1100 7000 1300 7000
Wire Wire Line
	1300 6800 1300 6700
Wire Wire Line
	1300 6600 1300 6500
Wire Wire Line
	1300 5300 1300 5200
Wire Wire Line
	1300 5100 1300 5000
Text Notes 650  7600 0    50   ~ 0
The MAX680 is a switched capacitor charge pump DC/DC converter.\nIt produces 2Vcc and -2Vcc.  I use three in parallel to reduce voltage droop under load.
Text Notes 700  1450 0    157  ~ 31
Voltage Regulation,\nConversion, and\nCharging Control
Wire Notes Line width 39
	500  500  500  7750
Wire Notes Line width 39
	4550 7750 4550 500 
Wire Notes Line width 39
	500  7750 4550 7750
Wire Wire Line
	3500 1600 4000 1600
Text Label 3650 1600 0    50   ~ 0
3.3V
Text Notes 3200 1900 0    50   ~ 0
Note:  3.3V is generated by a\nlinear regulator on the Teensy \n4.1 board derived from 5V.
$Comp
L power:+3.3V #PWR01
U 1 1 6259A3DF
P 4000 1600
F 0 "#PWR01" H 4000 1450 50  0001 C CNN
F 1 "+3.3V" H 4015 1773 50  0000 C CNN
F 2 "" H 4000 1600 50  0001 C CNN
F 3 "" H 4000 1600 50  0001 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
$Sheet
S 4700 1050 6350 1700
U 625D4E84
F0 "Measurement Circuit" 50
F1 "MeasurementCircuit.sch" 50
$EndSheet
Text Notes 4700 850  0    157  ~ 31
Measurement Circuit
Wire Notes Line width 39
	11150 2900 4550 2900
Wire Notes Line width 39
	11150 500  11150 2900
Wire Notes Line width 39
	500  500  11150 500 
$Comp
L power:+10V #PWR05
U 1 1 625FFB3F
P 3500 3150
F 0 "#PWR05" H 3500 3000 50  0001 C CNN
F 1 "+10V" H 3515 3323 50  0000 C CNN
F 2 "" H 3500 3150 50  0001 C CNN
F 3 "" H 3500 3150 50  0001 C CNN
	1    3500 3150
	1    0    0    -1  
$EndComp
Connection ~ 3500 3150
$Comp
L power:-10V #PWR08
U 1 1 6260017C
P 3500 4150
F 0 "#PWR08" H 3500 4250 50  0001 C CNN
F 1 "-10V" H 3515 4323 50  0000 C CNN
F 2 "" H 3500 4150 50  0001 C CNN
F 3 "" H 3500 4150 50  0001 C CNN
	1    3500 4150
	-1   0    0    1   
$EndComp
Connection ~ 3500 4150
$Comp
L power:+BATT #PWR02
U 1 1 626C0E5D
P 4150 2300
F 0 "#PWR02" H 4150 2150 50  0001 C CNN
F 1 "+BATT" H 4165 2473 50  0000 C CNN
F 2 "" H 4150 2300 50  0001 C CNN
F 3 "" H 4150 2300 50  0001 C CNN
	1    4150 2300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
