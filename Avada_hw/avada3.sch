EESchema Schematic File Version 2
LIBS:Transistors_kl
LIBS:Connectors_kl
LIBS:display_kl
LIBS:pcb_details
LIBS:Power_kl
LIBS:st_kl
LIBS:Tittar_kl
LIBS:power
LIBS:OpAmp_kl
LIBS:avada3-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date "22 mar 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED_RAD D1
U 1 1 50CC977D
P 13050 3150
F 0 "D1" H 13200 3290 50  0000 C CNN
F 1 "LED_RAD" H 12970 3290 50  0000 C CNN
F 2 "" H 13050 3150 60  0001 C CNN
F 3 "" H 13050 3150 60  0001 C CNN
	1    13050 3150
	0    -1   1    0   
$EndComp
Wire Wire Line
	7350 2800 7450 2800
Wire Wire Line
	7450 2700 7350 2700
Wire Wire Line
	1750 1600 1650 1600
Wire Wire Line
	1800 1850 1800 1800
Wire Wire Line
	1800 1800 1650 1800
Wire Wire Line
	1650 1700 1800 1700
Wire Wire Line
	1650 1500 1750 1500
Wire Wire Line
	4400 4200 4400 4300
Connection ~ 3700 3450
Wire Wire Line
	4850 3450 3600 3450
Wire Wire Line
	3150 3250 4850 3250
Wire Wire Line
	4850 1400 4350 1400
Wire Wire Line
	8450 9450 8450 9650
Connection ~ 8450 10200
Wire Wire Line
	8450 10150 8450 10250
Wire Wire Line
	8450 10750 8450 10850
Wire Wire Line
	7900 10200 8450 10200
Wire Wire Line
	7350 2200 7500 2200
Connection ~ 5700 4150
Wire Wire Line
	5700 4050 5700 4150
Connection ~ 5900 4150
Wire Wire Line
	5900 4150 5900 4050
Wire Wire Line
	5600 4300 5600 4050
Wire Wire Line
	3950 4200 3950 4300
Wire Wire Line
	3200 4200 3200 4300
Connection ~ 3950 3450
Connection ~ 3200 3250
Wire Wire Line
	3450 3800 3450 3350
Wire Wire Line
	3950 3800 3950 3450
Wire Wire Line
	3200 3800 3200 3250
Connection ~ 3450 3350
Wire Wire Line
	3450 4200 3450 4300
Wire Wire Line
	5600 4150 6050 4150
Wire Wire Line
	6050 4150 6050 4050
Connection ~ 5600 4150
Wire Wire Line
	5800 4150 5800 4050
Connection ~ 5800 4150
Wire Wire Line
	4800 4200 4800 4300
Wire Wire Line
	4800 3800 4800 3750
Connection ~ 4800 3750
Wire Wire Line
	4850 3750 4750 3750
Wire Wire Line
	4350 3600 4850 3600
Wire Wire Line
	3700 4200 3700 4300
Wire Wire Line
	3700 3450 3700 3800
Wire Wire Line
	3400 3350 4850 3350
Wire Wire Line
	4400 3800 4400 3600
Connection ~ 4400 3600
Wire Wire Line
	15250 9450 15250 10400
Wire Wire Line
	15250 9950 15150 9950
Text Label 7450 2800 0    60   ~ 0
SWCLK
Text Label 7450 2700 0    60   ~ 0
SWDIO
Text Notes 1100 1200 0    60   ~ 0
Programming
Text Label 1750 1600 0    60   ~ 0
SWDIO
Text Label 1750 1500 0    60   ~ 0
SWCLK
$Comp
L ST_SWD XL2
U 1 1 50C07760
P 1300 1650
F 0 "XL2" H 1150 1950 60  0000 C CNN
F 1 "ST_SWD" H 1500 1950 60  0000 C CNN
F 2 "" H 1300 1650 60  0001 C CNN
F 3 "" H 1300 1650 60  0001 C CNN
	1    1300 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 50C0775F
P 1800 1850
F 0 "#PWR01" H 1890 1830 30  0001 C CNN
F 1 "GND" H 1800 1770 30  0001 C CNN
F 2 "" H 1800 1850 60  0001 C CNN
F 3 "" H 1800 1850 60  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 50C0775E
P 1800 1700
F 0 "#PWR02" H 1800 1660 30  0001 C CNN
F 1 "+3.3V" H 1880 1730 30  0000 C CNN
F 2 "" H 1800 1700 60  0001 C CNN
F 3 "" H 1800 1700 60  0001 C CNN
	1    1800 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 50BFAA6C
P 15250 10400
F 0 "#PWR03" H 15340 10380 30  0001 C CNN
F 1 "GND" H 15250 10320 30  0001 C CNN
F 2 "" H 15250 10400 60  0001 C CNN
F 3 "" H 15250 10400 60  0001 C CNN
	1    15250 10400
	1    0    0    -1  
$EndComp
$Comp
L HOLE_METALLED HOLE3
U 1 1 50BFAA5E
P 14850 9950
F 0 "HOLE3" H 14350 9900 60  0000 C CNN
F 1 "HOLE_METALLED" H 14300 10000 60  0000 C CNN
F 2 "" H 14850 9950 60  0001 C CNN
F 3 "" H 14850 9950 60  0001 C CNN
	1    14850 9950
	1    0    0    -1  
$EndComp
NoConn ~ 7350 1900
NoConn ~ 7350 2000
NoConn ~ 7350 2100
NoConn ~ 7350 2500
NoConn ~ 7350 2600
NoConn ~ 7350 2900
NoConn ~ 7350 3400
NoConn ~ 7350 3500
NoConn ~ 4850 1800
NoConn ~ 4850 1700
NoConn ~ 4850 1600
Text Label 7500 1700 0    60   ~ 0
GreenEn
$Comp
L GND #PWR04
U 1 1 50BB610C
P 4400 4300
F 0 "#PWR04" H 4490 4280 30  0001 C CNN
F 1 "GND" H 4400 4220 30  0001 C CNN
F 2 "" H 4400 4300 60  0001 C CNN
F 3 "" H 4400 4300 60  0001 C CNN
	1    4400 4300
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 50BB6097
P 4400 4000
F 0 "C5" H 4300 3900 50  0000 L CNN
F 1 "0.1u" H 4300 4100 50  0000 L CNN
F 2 "CAP_0603" V 4500 3850 28  0000 C BNN
F 3 "" H 4400 4000 60  0001 C CNN
	1    4400 4000
	-1   0    0    1   
$EndComp
$Comp
L STM32F100C4 DD1
U 1 1 50BB4D9C
P 6100 2600
F 0 "DD1" H 5350 3950 60  0000 C CNN
F 1 "STM32F100C4" H 6000 3950 60  0000 C CNN
F 2 "" H 6100 2600 60  0001 C CNN
F 3 "" H 6100 2600 60  0001 C CNN
	1    6100 2600
	1    0    0    -1  
$EndComp
Text Notes 4400 1250 0    60   ~ 0
Battery\nmeter
NoConn ~ 7350 3300
$Comp
L GND #PWR05
U 1 1 50BB4D81
P 4800 4300
F 0 "#PWR05" H 4890 4280 30  0001 C CNN
F 1 "GND" H 4800 4220 30  0001 C CNN
F 2 "" H 4800 4300 60  0001 C CNN
F 3 "" H 4800 4300 60  0001 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 50BB4D80
P 4800 4000
F 0 "C7" H 4750 4100 50  0000 L CNN
F 1 "1u" H 4750 3900 50  0000 L CNN
F 2 "" H 4800 4000 60  0001 C CNN
F 3 "" H 4800 4000 60  0001 C CNN
	1    4800 4000
	1    0    0    -1  
$EndComp
NoConn ~ 4850 3100
$Comp
L C C4
U 1 1 50BB4D7E
P 3950 4000
F 0 "C4" H 3900 4100 50  0000 L CNN
F 1 "4.7u" H 3900 3900 50  0000 L CNN
F 2 "" H 3950 4000 60  0001 C CNN
F 3 "" H 3950 4000 60  0001 C CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 50BB4D7D
P 3450 4000
F 0 "C2" H 3400 4100 50  0000 L CNN
F 1 "0.1u" H 3400 3900 50  0000 L CNN
F 2 "" H 3450 4000 60  0001 C CNN
F 3 "" H 3450 4000 60  0001 C CNN
	1    3450 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 50BB4D7B
P 3950 4300
F 0 "#PWR06" H 4040 4280 30  0001 C CNN
F 1 "GND" H 3950 4220 30  0001 C CNN
F 2 "" H 3950 4300 60  0001 C CNN
F 3 "" H 3950 4300 60  0001 C CNN
	1    3950 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 50BB4D7A
P 3450 4300
F 0 "#PWR07" H 3540 4280 30  0001 C CNN
F 1 "GND" H 3450 4220 30  0001 C CNN
F 2 "" H 3450 4300 60  0001 C CNN
F 3 "" H 3450 4300 60  0001 C CNN
	1    3450 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 50BB4D79
P 3200 4300
F 0 "#PWR08" H 3290 4280 30  0001 C CNN
F 1 "GND" H 3200 4220 30  0001 C CNN
F 2 "" H 3200 4300 60  0001 C CNN
F 3 "" H 3200 4300 60  0001 C CNN
	1    3200 4300
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 50BB4D78
P 3200 4000
F 0 "C1" H 3150 4100 50  0000 L CNN
F 1 "0.1u" H 3150 3900 50  0000 L CNN
F 2 "" H 3200 4000 60  0001 C CNN
F 3 "" H 3200 4000 60  0001 C CNN
	1    3200 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 50BB4D77
P 5600 4300
F 0 "#PWR09" H 5600 4300 30  0001 C CNN
F 1 "GND" H 5600 4230 30  0001 C CNN
F 2 "" H 5600 4300 60  0001 C CNN
F 3 "" H 5600 4300 60  0001 C CNN
	1    5600 4300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 50BB4D74
P 3150 3250
F 0 "#PWR010" H 3150 3210 30  0001 C CNN
F 1 "+3.3V" H 3230 3280 30  0000 C CNN
F 2 "" H 3150 3250 60  0001 C CNN
F 3 "" H 3150 3250 60  0001 C CNN
	1    3150 3250
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 50BB4D73
P 3400 3350
F 0 "#PWR011" H 3400 3310 30  0001 C CNN
F 1 "+3.3V" H 3480 3380 30  0000 C CNN
F 2 "" H 3400 3350 60  0001 C CNN
F 3 "" H 3400 3350 60  0001 C CNN
	1    3400 3350
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 50BB4D72
P 3600 3450
F 0 "#PWR012" H 3600 3410 30  0001 C CNN
F 1 "+3.3V" H 3680 3480 30  0000 C CNN
F 2 "" H 3600 3450 60  0001 C CNN
F 3 "" H 3600 3450 60  0001 C CNN
	1    3600 3450
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 50BB4D71
P 4750 3750
F 0 "#PWR013" H 4750 3710 30  0001 C CNN
F 1 "+3.3V" H 4830 3780 30  0000 C CNN
F 2 "" H 4750 3750 60  0001 C CNN
F 3 "" H 4750 3750 60  0001 C CNN
	1    4750 3750
	-1   0    0    1   
$EndComp
NoConn ~ 7350 3150
Text Label 7900 10200 0    60   ~ 0
UBat/2
$Comp
L +BATT #PWR014
U 1 1 50BB4D37
P 8450 9450
F 0 "#PWR014" H 8450 9400 20  0001 C CNN
F 1 "+BATT" H 8450 9550 30  0000 C CNN
F 2 "" H 8450 9450 60  0001 C CNN
F 3 "" H 8450 9450 60  0001 C CNN
	1    8450 9450
	0    1    -1   0   
$EndComp
$Comp
L R R4
U 1 1 50BB4D36
P 8450 9900
F 0 "R4" V 8530 9900 50  0000 C CNN
F 1 "390k" V 8450 9900 50  0000 C CNN
F 2 "" H 8450 9900 60  0001 C CNN
F 3 "" H 8450 9900 60  0001 C CNN
	1    8450 9900
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 50BB4D35
P 8450 10500
F 0 "R5" V 8530 10500 50  0000 C CNN
F 1 "390k" V 8450 10500 50  0000 C CNN
F 2 "" H 8450 10500 60  0001 C CNN
F 3 "" H 8450 10500 60  0001 C CNN
	1    8450 10500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 50BB4D34
P 8450 10850
F 0 "#PWR015" H 8540 10830 30  0001 C CNN
F 1 "GND" H 8450 10770 30  0001 C CNN
F 2 "" H 8450 10850 60  0001 C CNN
F 3 "" H 8450 10850 60  0001 C CNN
	1    8450 10850
	-1   0    0    -1  
$EndComp
Text Notes 8300 9150 0    60   ~ 0
Battery\nmeter
Text Label 4350 1400 2    60   ~ 0
UBat/2
$Comp
L +3.3V #PWR016
U 1 1 50BB4D19
P 4350 3600
F 0 "#PWR016" H 4350 3560 30  0001 C CNN
F 1 "+3.3V" H 4430 3630 30  0000 C CNN
F 2 "" H 4350 3600 60  0001 C CNN
F 3 "" H 4350 3600 60  0001 C CNN
	1    4350 3600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR017
U 1 1 50BB4D17
P 3700 4300
F 0 "#PWR017" H 3790 4280 30  0001 C CNN
F 1 "GND" H 3700 4220 30  0001 C CNN
F 2 "" H 3700 4300 60  0001 C CNN
F 3 "" H 3700 4300 60  0001 C CNN
	1    3700 4300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 50BB4D16
P 3700 4000
F 0 "C3" H 3650 4100 50  0000 L CNN
F 1 "0.1u" H 3650 3900 50  0000 L CNN
F 2 "" H 3700 4000 60  0001 C CNN
F 3 "" H 3700 4000 60  0001 C CNN
	1    3700 4000
	1    0    0    -1  
$EndComp
NoConn ~ 7350 3050
NoConn ~ 4850 2300
$Comp
L HOLE_METALLED HOLE2
U 1 1 532C4F58
P 14850 9700
F 0 "HOLE2" H 14350 9650 60  0000 C CNN
F 1 "HOLE_METALLED" H 14300 9750 60  0000 C CNN
F 2 "" H 14850 9700 60  0001 C CNN
F 3 "" H 14850 9700 60  0001 C CNN
	1    14850 9700
	1    0    0    -1  
$EndComp
$Comp
L HOLE_METALLED HOLE1
U 1 1 532C4F5E
P 14850 9450
F 0 "HOLE1" H 14350 9400 60  0000 C CNN
F 1 "HOLE_METALLED" H 14300 9500 60  0000 C CNN
F 2 "" H 14850 9450 60  0001 C CNN
F 3 "" H 14850 9450 60  0001 C CNN
	1    14850 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	15150 9450 15250 9450
Connection ~ 15250 9950
Wire Wire Line
	15150 9700 15250 9700
Connection ~ 15250 9700
$Comp
L C C14
U 1 1 532C560F
P 11700 1700
F 0 "C14" H 11600 1600 50  0000 L CNN
F 1 "0.1u" H 11600 1800 50  0000 L CNN
F 2 "CAP_0603" V 11800 1550 28  0000 C BNN
F 3 "" H 11700 1700 60  0000 C CNN
	1    11700 1700
	1    0    0    -1  
$EndComp
$Comp
L CP C13
U 1 1 532C5615
P 11450 1700
F 0 "C13" H 11350 1600 50  0000 L CNN
F 1 "1000u" H 11300 1850 50  0000 L CNN
F 2 "" H 11450 1700 60  0000 C CNN
F 3 "" H 11450 1700 60  0000 C CNN
	1    11450 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 532C561B
P 11700 2000
F 0 "#PWR018" H 11790 1980 30  0001 C CNN
F 1 "GND" H 11700 1920 30  0001 C CNN
F 2 "" H 11700 2000 60  0000 C CNN
F 3 "" H 11700 2000 60  0000 C CNN
	1    11700 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 532C5621
P 11450 2000
F 0 "#PWR019" H 11540 1980 30  0001 C CNN
F 1 "GND" H 11450 1920 30  0001 C CNN
F 2 "" H 11450 2000 60  0000 C CNN
F 3 "" H 11450 2000 60  0000 C CNN
	1    11450 2000
	1    0    0    -1  
$EndComp
Text Label 13050 3500 0    60   ~ 0
LED_C
Text Label 10300 3400 0    61   ~ 0
DAC
$Comp
L GENERIC_8PIN DA2
U 1 1 532C562B
P 11850 4100
F 0 "DA2" H 11900 4300 60  0000 C CNN
F 1 "MAX4453" H 12050 4400 50  0000 C CNN
F 2 "" H 11850 4100 60  0000 C CNN
F 3 "" H 11850 4100 60  0000 C CNN
	1    11850 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 532C5631
P 11750 4500
F 0 "#PWR020" H 11840 4480 30  0001 C CNN
F 1 "GND" H 11750 4420 30  0001 C CNN
F 2 "" H 11750 4500 60  0000 C CNN
F 3 "" H 11750 4500 60  0000 C CNN
	1    11750 4500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR021
U 1 1 532C5637
P 11750 3700
F 0 "#PWR021" H 11750 3660 30  0001 C CNN
F 1 "+3.3V" H 11830 3730 30  0000 C CNN
F 2 "" H 11750 3700 60  0000 C CNN
F 3 "" H 11750 3700 60  0000 C CNN
	1    11750 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 532C563D
P 13050 4950
F 0 "R10" V 13130 4800 50  0000 C CNN
F 1 "0.1R" V 13050 4950 50  0000 C CNN
F 2 "RES_0805" V 13130 5050 28  0000 C CNN
F 3 "" H 13050 4950 60  0000 C CNN
	1    13050 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 532C5643
P 13050 5300
F 0 "#PWR022" H 13140 5280 30  0001 C CNN
F 1 "GND" H 13050 5220 30  0001 C CNN
F 2 "" H 13050 5300 60  0000 C CNN
F 3 "" H 13050 5300 60  0000 C CNN
	1    13050 5300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR023
U 1 1 532C5661
P 11450 1300
F 0 "#PWR023" H 11450 1260 30  0001 C CNN
F 1 "+BATT" H 11530 1330 30  0000 C CNN
F 2 "" H 11450 1300 60  0000 C CNN
F 3 "" H 11450 1300 60  0000 C CNN
	1    11450 1300
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 532C5667
P 11100 3700
F 0 "R6" V 11180 3550 50  0000 C CNN
F 1 "20k" V 11100 3700 50  0000 C CNN
F 2 "RES_0603" V 11180 3800 28  0000 C CNN
F 3 "" H 11100 3700 60  0000 C CNN
	1    11100 3700
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 532C566D
P 11100 4300
F 0 "R7" V 11180 4150 50  0000 C CNN
F 1 "1k" V 11100 4300 50  0000 C CNN
F 2 "RES_0603" V 11180 4400 28  0000 C CNN
F 3 "" H 11100 4300 60  0000 C CNN
	1    11100 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 532C5673
P 11100 4600
F 0 "#PWR024" H 11190 4580 30  0001 C CNN
F 1 "GND" H 11100 4520 30  0001 C CNN
F 2 "" H 11100 4600 60  0000 C CNN
F 3 "" H 11100 4600 60  0000 C CNN
	1    11100 4600
	1    0    0    -1  
$EndComp
Text Notes 11550 3050 0    79   Italic 0
Stabilizer
Text Label 12500 4600 0    60   ~ 0
CURR_SNS
$Comp
L C C11
U 1 1 532C5693
P 10500 4250
F 0 "C11" H 10400 4150 50  0000 L CNN
F 1 "0.1u" H 10400 4350 50  0000 L CNN
F 2 "CAP_0603" V 10600 4100 28  0000 C BNN
F 3 "~" H 10500 4250 60  0000 C CNN
	1    10500 4250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR025
U 1 1 532C5699
P 10500 3900
F 0 "#PWR025" H 10500 3860 30  0001 C CNN
F 1 "+3.3V" H 10580 3930 30  0000 C CNN
F 2 "" H 10500 3900 60  0000 C CNN
F 3 "" H 10500 3900 60  0000 C CNN
	1    10500 3900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR026
U 1 1 532C569F
P 10500 4600
F 0 "#PWR026" H 10590 4580 30  0001 C CNN
F 1 "GND" H 10500 4520 30  0001 C CNN
F 2 "" H 10500 4600 60  0000 C CNN
F 3 "" H 10500 4600 60  0000 C CNN
	1    10500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 1900 11450 2000
Wire Wire Line
	11700 1900 11700 2000
Wire Wire Line
	10550 3400 10300 3400
Wire Wire Line
	11550 4200 11400 4200
Wire Wire Line
	11400 4200 11400 4600
Wire Wire Line
	11750 4350 11750 4500
Wire Wire Line
	11750 3700 11750 3850
Wire Wire Line
	11400 4600 13050 4600
Connection ~ 13050 4600
Wire Wire Line
	11100 3950 11100 4050
Wire Wire Line
	11100 4000 11550 4000
Connection ~ 11100 4000
Wire Wire Line
	11100 4550 11100 4600
Wire Wire Line
	11450 1300 11450 1500
Wire Wire Line
	11700 1500 11700 1400
Connection ~ 11700 1400
Wire Wire Line
	10500 3900 10500 4050
Wire Wire Line
	10500 4450 10500 4600
$Comp
L C C12
U 1 1 532C56DA
P 10750 3400
F 0 "C12" V 10950 3300 50  0000 L CNN
F 1 "10uF" V 10850 3450 50  0000 L CNN
F 2 "CAP_0603" V 10850 3250 28  0000 C BNN
F 3 "~" H 10750 3400 60  0000 C CNN
	1    10750 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10950 3400 11100 3400
NoConn ~ 13250 3150
$Comp
L BUZZER BZ1
U 1 1 532C5EBC
P 14350 7000
F 0 "BZ1" H 14550 7100 60  0000 C CNN
F 1 "BUZZER" H 14650 6900 60  0000 C CNN
F 2 "" H 14350 7000 60  0001 C CNN
F 3 "" H 14350 7000 60  0001 C CNN
	1    14350 7000
	0    -1   1    0   
$EndComp
Text Label 13600 7000 0    60   ~ 0
BuzzerOut
Text Label 12300 7350 0    60   ~ 0
Buzzer
$Comp
L R R9
U 1 1 532C5EC4
P 13000 7350
F 0 "R9" V 13080 7350 50  0000 C CNN
F 1 "1k" V 13000 7350 50  0000 C CNN
F 2 "" H 13000 7350 60  0001 C CNN
F 3 "" H 13000 7350 60  0001 C CNN
	1    13000 7350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR027
U 1 1 532C5ECA
P 13700 7650
F 0 "#PWR027" H 13790 7630 30  0001 C CNN
F 1 "GND" H 13700 7570 30  0001 C CNN
F 2 "" H 13700 7650 60  0001 C CNN
F 3 "" H 13700 7650 60  0001 C CNN
	1    13700 7650
	1    0    0    -1  
$EndComp
$Comp
L NPN Q5
U 1 1 532C5ED0
P 13650 7350
F 0 "Q5" H 13850 7400 60  0000 C CNN
F 1 "MMBT2222" H 14000 7300 60  0000 C CNN
F 2 "" H 13650 7350 60  0001 C CNN
F 3 "" H 13650 7350 60  0001 C CNN
	1    13650 7350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR028
U 1 1 532C5ED6
P 14850 7000
F 0 "#PWR028" H 14850 6960 30  0001 C CNN
F 1 "+3.3V" H 14930 7030 30  0000 C CNN
F 2 "" H 14850 7000 60  0000 C CNN
F 3 "" H 14850 7000 60  0000 C CNN
	1    14850 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 532C5EDC
P 14700 7650
F 0 "#PWR029" H 14790 7630 30  0001 C CNN
F 1 "GND" H 14700 7570 30  0001 C CNN
F 2 "" H 14700 7650 60  0001 C CNN
F 3 "" H 14700 7650 60  0001 C CNN
	1    14700 7650
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 532C5EE2
P 14700 7350
F 0 "C15" H 14600 7250 50  0000 L CNN
F 1 "10u" H 14600 7450 50  0000 L CNN
F 2 "CAP_0603" V 14800 7200 28  0000 C BNN
F 3 "" H 14700 7350 60  0001 C CNN
	1    14700 7350
	1    0    0    -1  
$EndComp
Connection ~ 13700 7000
Wire Wire Line
	14100 7000 13600 7000
Wire Wire Line
	13700 7150 13700 7000
Wire Wire Line
	12300 7350 12750 7350
Wire Wire Line
	14600 7000 14850 7000
Wire Wire Line
	13250 7350 13450 7350
Wire Wire Line
	13700 7550 13700 7650
Wire Wire Line
	14700 7550 14700 7650
Wire Wire Line
	14700 7150 14700 7000
Connection ~ 14700 7000
Text Label 7500 2200 0    60   ~ 0
Buzzer
Text Notes 1200 2700 0    60   Italic 12
Debug port
$Comp
L GND #PWR030
U 1 1 532C652E
P 1450 3300
F 0 "#PWR030" H 1540 3280 30  0001 C CNN
F 1 "GND" H 1450 3220 30  0001 C CNN
F 2 "" H 1450 3300 60  0001 C CNN
F 3 "" H 1450 3300 60  0001 C CNN
	1    1450 3300
	-1   0    0    -1  
$EndComp
Text Notes 1150 6750 0    60   ~ 0
Peripheral\nI2C Pull-Ups
$Comp
L R R2
U 1 1 532C6535
P 2100 6750
F 0 "R2" V 2180 6600 50  0000 C CNN
F 1 "4K7" V 2100 6750 50  0000 C CNN
F 2 "RES_0402" V 2180 6850 28  0000 C CNN
F 3 "" H 2100 6750 60  0001 C CNN
	1    2100 6750
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 532C653B
P 1900 6750
F 0 "R1" V 1980 6600 50  0000 C CNN
F 1 "4K7" V 1900 6750 50  0000 C CNN
F 2 "RES_0402" V 1980 6850 28  0000 C CNN
F 3 "" H 1900 6750 60  0001 C CNN
	1    1900 6750
	-1   0    0    1   
$EndComp
Text Label 2200 7150 0    60   ~ 0
PeriphPwr1
Text Notes 700  7300 0    60   ~ 0
Pill \nConnector
$Comp
L CONN_4 XL3
U 1 1 532C6543
P 1400 7300
F 0 "XL3" V 1350 7300 40  0000 C CNN
F 1 "CONN_4" V 1450 7300 40  0000 C CNN
F 2 "" H 1400 7300 60  0001 C CNN
F 3 "" H 1400 7300 60  0001 C CNN
	1    1400 7300
	1    0    0    -1  
$EndComp
Text Label 2200 7450 0    60   ~ 0
P_SDA
Text Label 2200 7250 0    60   ~ 0
P_SCL
$Comp
L GND #PWR031
U 1 1 532C654B
P 1750 7350
F 0 "#PWR031" H 1840 7330 30  0001 C CNN
F 1 "GND" H 1750 7270 30  0001 C CNN
F 2 "" H 1750 7350 60  0001 C CNN
F 3 "" H 1750 7350 60  0001 C CNN
	1    1750 7350
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 532C6551
P 2800 6750
F 0 "R3" V 2880 6600 50  0000 C CNN
F 1 "150" V 2800 6750 50  0000 C CNN
F 2 "RES_0402" V 2880 6850 28  0000 C CNN
F 3 "" H 2800 6750 60  0001 C CNN
	1    2800 6750
	-1   0    0    1   
$EndComp
Text Label 2950 6450 0    60   ~ 0
PeriphPwr
Text Notes 1500 6250 0    60   Italic 12
Pill
Text Label 1700 3050 0    60   ~ 0
UART_TX
Text Label 1700 2950 0    60   ~ 0
UART_RX
$Comp
L CONN_3 XL1
U 1 1 532C655B
P 1250 3050
F 0 "XL1" V 1200 3050 40  0000 C CNN
F 1 "CONN_3" V 1300 3050 40  0000 C CNN
F 2 "~" H 1250 3050 60  0000 C CNN
F 3 "~" H 1250 3050 60  0000 C CNN
	1    1250 3050
	1    0    0    1   
$EndComp
Wire Wire Line
	1450 3150 1450 3300
Wire Wire Line
	1450 2950 1700 2950
Connection ~ 2800 6450
Wire Wire Line
	2800 6500 2800 6450
Connection ~ 2100 7450
Wire Wire Line
	2200 7450 1600 7450
Wire Wire Line
	2100 7450 2100 7000
Wire Wire Line
	1600 7150 2800 7150
Wire Wire Line
	1900 6500 1900 6450
Wire Wire Line
	1750 7350 1600 7350
Wire Wire Line
	2100 6500 2100 6450
Connection ~ 2100 6450
Wire Wire Line
	1900 7250 1900 7000
Wire Wire Line
	2200 7250 1600 7250
Connection ~ 1900 7250
Wire Wire Line
	1900 6450 2950 6450
Wire Wire Line
	2800 7150 2800 7000
Wire Wire Line
	1700 3050 1450 3050
Text Label 4350 2000 0    60   ~ 0
P_SCL
Text Label 4350 2100 0    60   ~ 0
P_SDA
Text Label 4350 1900 0    60   ~ 0
PeriphPwr
Wire Wire Line
	4850 2000 4350 2000
Wire Wire Line
	4850 2100 4350 2100
Wire Wire Line
	4350 1900 4850 1900
Text Label 7550 2300 0    60   ~ 0
UART_TX
Text Label 7550 2400 0    60   ~ 0
UART_RX
Wire Wire Line
	7350 2300 7550 2300
Wire Wire Line
	7550 2400 7350 2400
$Comp
L BAT B1
U 1 1 532C7D48
P 1950 10250
F 0 "B1" H 1950 10600 60  0000 C CNN
F 1 "BAT" H 1950 10700 60  0000 C CNN
F 2 "" H 1950 10250 60  0001 C CNN
F 3 "" H 1950 10250 60  0001 C CNN
	1    1950 10250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 532C7D4E
P 1950 10550
F 0 "#PWR032" H 2040 10530 30  0001 C CNN
F 1 "GND" H 1950 10470 30  0001 C CNN
F 2 "" H 1950 10550 60  0001 C CNN
F 3 "" H 1950 10550 60  0001 C CNN
	1    1950 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 10550 1950 10500
$Comp
L BAT B2
U 1 1 532C7D55
P 2450 10250
F 0 "B2" H 2450 10600 60  0000 C CNN
F 1 "BAT" H 2450 10700 60  0000 C CNN
F 2 "" H 2450 10250 60  0001 C CNN
F 3 "" H 2450 10250 60  0001 C CNN
	1    2450 10250
	1    0    0    -1  
$EndComp
$Comp
L BAT B3
U 1 1 532C7D5B
P 2950 10250
F 0 "B3" H 2950 10600 60  0000 C CNN
F 1 "BAT" H 2950 10700 60  0000 C CNN
F 2 "" H 2950 10250 60  0001 C CNN
F 3 "" H 2950 10250 60  0001 C CNN
	1    2950 10250
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 532C7D61
P 4600 10300
F 0 "C6" H 4650 10400 50  0000 L CNN
F 1 "0.1u" H 4550 10200 50  0000 L CNN
F 2 "" H 4600 10300 60  0001 C CNN
F 3 "" H 4600 10300 60  0001 C CNN
	1    4600 10300
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 532C7D67
P 4850 10300
F 0 "C8" H 4900 10400 50  0000 L CNN
F 1 "10u" H 4850 10200 50  0000 L CNN
F 2 "" H 4850 10300 60  0001 C CNN
F 3 "" H 4850 10300 60  0001 C CNN
	1    4850 10300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 532C7D6D
P 4600 10600
F 0 "#PWR033" H 4690 10580 30  0001 C CNN
F 1 "GND" H 4600 10520 30  0001 C CNN
F 2 "" H 4600 10600 60  0001 C CNN
F 3 "" H 4600 10600 60  0001 C CNN
	1    4600 10600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 532C7D73
P 4850 10600
F 0 "#PWR034" H 4940 10580 30  0001 C CNN
F 1 "GND" H 4850 10520 30  0001 C CNN
F 2 "" H 4850 10600 60  0001 C CNN
F 3 "" H 4850 10600 60  0001 C CNN
	1    4850 10600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 532C7D79
P 6550 10600
F 0 "#PWR035" H 6640 10580 30  0001 C CNN
F 1 "GND" H 6550 10520 30  0001 C CNN
F 2 "" H 6550 10600 60  0001 C CNN
F 3 "" H 6550 10600 60  0001 C CNN
	1    6550 10600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 532C7D7F
P 6300 10600
F 0 "#PWR036" H 6390 10580 30  0001 C CNN
F 1 "GND" H 6300 10520 30  0001 C CNN
F 2 "" H 6300 10600 60  0001 C CNN
F 3 "" H 6300 10600 60  0001 C CNN
	1    6300 10600
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 532C7D85
P 6550 10300
F 0 "C10" H 6600 10400 50  0000 L CNN
F 1 "10u" H 6550 10200 50  0000 L CNN
F 2 "" H 6550 10300 60  0001 C CNN
F 3 "" H 6550 10300 60  0001 C CNN
	1    6550 10300
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 532C7D8B
P 6300 10300
F 0 "C9" H 6350 10400 50  0000 L CNN
F 1 "0.1u" H 6250 10200 50  0000 L CNN
F 2 "" H 6300 10300 60  0001 C CNN
F 3 "" H 6300 10300 60  0001 C CNN
	1    6300 10300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR037
U 1 1 532C7D91
P 4600 9900
F 0 "#PWR037" H 4600 9860 30  0001 C CNN
F 1 "+BATT" H 4680 9930 30  0000 C CNN
F 2 "" H 4600 9900 60  0001 C CNN
F 3 "" H 4600 9900 60  0001 C CNN
	1    4600 9900
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR038
U 1 1 532C7D97
P 6650 10050
F 0 "#PWR038" H 6650 10010 30  0001 C CNN
F 1 "+3.3V" H 6730 10080 30  0000 C CNN
F 2 "" H 6650 10050 60  0001 C CNN
F 3 "" H 6650 10050 60  0001 C CNN
	1    6650 10050
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG039
U 1 1 532C7D9D
P 4850 9950
F 0 "#FLG039" H 4850 10220 30  0001 C CNN
F 1 "PWR_FLAG" H 4850 10180 30  0000 C CNN
F 2 "" H 4850 9950 60  0001 C CNN
F 3 "" H 4850 9950 60  0001 C CNN
	1    4850 9950
	1    0    0    -1  
$EndComp
NoConn ~ 4100 9950
Text Label 3050 10050 0    60   ~ 0
BAT_IN
$Comp
L NCP583SQ DA1
U 1 1 532C7DAB
P 5600 10150
F 0 "DA1" H 5450 10500 60  0000 C CNN
F 1 "NCP583SQ" H 5600 10400 60  0000 C CNN
F 2 "~" H 5600 10150 60  0000 C CNN
F 3 "~" H 5600 10150 60  0000 C CNN
	1    5600 10150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 532C7DB1
P 6000 10600
F 0 "#PWR040" H 6090 10580 30  0001 C CNN
F 1 "GND" H 6000 10520 30  0001 C CNN
F 2 "" H 6000 10600 60  0001 C CNN
F 3 "" H 6000 10600 60  0001 C CNN
	1    6000 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 10050 6650 10050
Wire Wire Line
	6000 10250 6000 10600
Connection ~ 5150 10050
Wire Wire Line
	5150 10250 5200 10250
Wire Wire Line
	4100 10050 5200 10050
Wire Wire Line
	2950 10050 3500 10050
Wire Wire Line
	6550 10050 6550 10100
Wire Wire Line
	4600 9900 4600 10100
Connection ~ 6550 10050
Wire Wire Line
	4850 10500 4850 10600
Connection ~ 4600 10050
Wire Wire Line
	4850 9950 4850 10100
Wire Wire Line
	4600 10500 4600 10600
Connection ~ 4850 10050
Wire Wire Line
	6300 10500 6300 10600
Wire Wire Line
	6550 10500 6550 10600
Wire Wire Line
	6300 10050 6300 10100
Connection ~ 6300 10050
Wire Wire Line
	5150 10250 5150 10050
Wire Wire Line
	2950 10500 2700 10500
Wire Wire Line
	2700 10500 2700 10050
Wire Wire Line
	2700 10050 2450 10050
Wire Wire Line
	2450 10500 2200 10500
Wire Wire Line
	2200 10500 2200 10050
Wire Wire Line
	2200 10050 1950 10050
Text Label 7500 1800 0    61   ~ 0
DAC
Wire Wire Line
	7500 1800 7350 1800
Wire Wire Line
	7500 1700 7350 1700
$Comp
L IRLMS1503 Q2
U 1 1 532C8538
P 12650 4050
F 0 "Q2" V 12550 4250 60  0000 C CNN
F 1 "IRLMS1503" V 12650 4450 60  0000 C CNN
F 2 "~" H 12650 4050 60  0000 C CNN
F 3 "~" H 12650 4050 60  0000 C CNN
	1    12650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 5200 13050 5300
Wire Wire Line
	13050 3900 13000 3900
Wire Wire Line
	13050 3350 13050 3900
Wire Wire Line
	13000 3600 13050 3600
Connection ~ 13050 3600
Wire Wire Line
	13000 3700 13050 3700
Connection ~ 13050 3700
Wire Wire Line
	13000 3800 13050 3800
Connection ~ 13050 3800
Wire Wire Line
	12250 4100 12150 4100
Text Label 13050 2850 0    60   ~ 0
LED_A
$Comp
L 2N7002 Q3
U 1 1 532C8B50
P 13300 4050
F 0 "Q3" H 12850 4150 60  0000 C CNN
F 1 "N_Ch_SOT23" H 12750 4050 60  0000 C CNN
F 2 "~" H 13300 4050 60  0000 C CNN
F 3 "~" H 13300 4050 60  0000 C CNN
	1    13300 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13250 3850 13050 3850
Connection ~ 13050 3850
Wire Wire Line
	13000 4250 13250 4250
Connection ~ 13050 4250
Wire Wire Line
	12200 4100 12200 4350
Wire Wire Line
	12200 4350 13500 4350
Wire Wire Line
	13500 4350 13500 4000
Connection ~ 12200 4100
Text Notes 13500 3550 0    60   ~ 0
Choose\none of two\npackages
$Comp
L IRLMS6702 Q1
U 1 1 532C8D4C
P 12650 2100
F 0 "Q1" H 12550 1700 60  0000 C CNN
F 1 "IRLMS6702" H 12700 1800 60  0000 C CNN
F 2 "~" H 12650 2100 60  0000 C CNN
F 3 "~" H 12650 2100 60  0000 C CNN
	1    12650 2100
	1    0    0    1   
$EndComp
$Comp
L IRLML6302 Q4
U 1 1 532C8D6F
P 13600 2100
F 0 "Q4" H 13200 2250 60  0000 C CNN
F 1 "IRLML9303" H 13000 2100 60  0000 C CNN
F 2 "~" H 13600 2100 60  0000 C CNN
F 3 "~" H 13600 2100 60  0000 C CNN
	1    13600 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13000 1800 13000 1950
Wire Wire Line
	13000 2250 13050 2250
Wire Wire Line
	13050 2250 13050 2950
Wire Wire Line
	13000 2550 13050 2550
Connection ~ 13050 2550
Wire Wire Line
	13000 2450 13550 2450
Connection ~ 13050 2450
Wire Wire Line
	13000 2350 13050 2350
Connection ~ 13050 2350
Connection ~ 13050 2300
Wire Wire Line
	11350 2650 13800 2650
Wire Wire Line
	13800 2650 13800 2050
$Comp
L FUSE0R F1
U 1 1 532C923E
P 13200 2100
F 0 "F1" V 13130 2100 50  0000 C CNN
F 1 "FUSE0R" V 13200 2100 50  0000 C CNN
F 2 "~" H 13200 2100 60  0000 C CNN
F 3 "~" H 13200 2100 60  0000 C CNN
	1    13200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 1800 13550 1800
Wire Wire Line
	13550 1800 13550 1900
Connection ~ 13200 1800
Wire Wire Line
	13550 2450 13550 2300
Wire Wire Line
	13200 2350 13200 2450
Connection ~ 13200 2450
Connection ~ 11450 1400
$Comp
L R R8
U 1 1 532C9682
P 12150 1700
F 0 "R8" V 12230 1550 50  0000 C CNN
F 1 "1k" V 12150 1700 50  0000 C CNN
F 2 "RES_0603" V 12230 1800 28  0000 C CNN
F 3 "~" H 12150 1700 60  0000 C CNN
	1    12150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 1450 12150 1400
Connection ~ 12150 1400
Text Notes 11700 1250 0    60   ~ 0
Place R and use OpenDrain output\nif transistor does not close properly
Text Label 11350 2650 0    60   ~ 0
GreenEn
Wire Wire Line
	11450 1400 13200 1400
Wire Wire Line
	13200 1400 13200 1850
Wire Wire Line
	12150 1950 12150 2650
Connection ~ 12150 2650
Wire Wire Line
	12250 2050 12150 2050
Connection ~ 12150 2050
Text Notes 13700 1600 0    60   ~ 0
Choose\none of two\npackages
Wire Wire Line
	13000 4200 13000 4250
Wire Wire Line
	13050 4250 13050 4700
NoConn ~ 7350 1500
NoConn ~ 7350 1600
NoConn ~ 4850 1500
NoConn ~ 4850 2400
NoConn ~ 4850 2200
NoConn ~ 4850 2500
NoConn ~ 4850 2600
NoConn ~ 4850 2700
NoConn ~ 4850 2800
NoConn ~ 4850 2900
$Comp
L BUTTON_H SW2
U 1 1 532D53AF
P 8100 1400
F 0 "SW2" H 7900 1550 50  0000 C CNN
F 1 "BUTTON_H" H 8200 1550 50  0000 C CNN
F 2 "~" H 8100 1400 60  0000 C CNN
F 3 "~" H 8100 1400 60  0000 C CNN
	1    8100 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 532D53BE
P 8400 1600
F 0 "#PWR041" H 8490 1580 30  0001 C CNN
F 1 "GND" H 8400 1520 30  0001 C CNN
F 2 "" H 8400 1600 60  0000 C CNN
F 3 "" H 8400 1600 60  0000 C CNN
	1    8400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1400 7350 1400
Wire Wire Line
	8100 1400 8100 1500
Wire Wire Line
	8100 1500 8400 1500
Wire Wire Line
	8400 1400 8400 1600
Connection ~ 8400 1500
$Comp
L SWITCH_H SW1
U 1 1 532D6925
P 3850 10050
F 0 "SW1" H 3600 10300 60  0000 C CNN
F 1 "SWITCH_H" H 3950 10300 60  0000 C CNN
F 2 "~" H 3850 10050 60  0000 C CNN
F 3 "~" H 3850 10050 60  0000 C CNN
	1    3850 10050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 532D6932
P 3800 10350
F 0 "#PWR042" H 3890 10330 30  0001 C CNN
F 1 "GND" H 3800 10270 30  0001 C CNN
F 2 "" H 3800 10350 60  0001 C CNN
F 3 "" H 3800 10350 60  0001 C CNN
	1    3800 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 10250 3800 10350
Wire Wire Line
	11100 3400 11100 3450
$EndSCHEMATC
