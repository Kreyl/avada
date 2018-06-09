EESchema Schematic File Version 4
LIBS:avada-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
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
L power:GND #PWR01
U 1 1 55180E91
P 7800 6700
F 0 "#PWR01" H 7890 6680 30  0001 C CNN
F 1 "GND" H 7800 6620 30  0001 C CNN
F 2 "" H 7800 6700 60  0001 C CNN
F 3 "" H 7800 6700 60  0001 C CNN
	1    7800 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 55180E97
P 7550 6700
F 0 "#PWR02" H 7640 6680 30  0001 C CNN
F 1 "GND" H 7550 6620 30  0001 C CNN
F 2 "" H 7550 6700 60  0001 C CNN
F 3 "" H 7550 6700 60  0001 C CNN
	1    7550 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 55180E9D
P 7250 6700
F 0 "#PWR03" H 7340 6680 30  0001 C CNN
F 1 "GND" H 7250 6620 30  0001 C CNN
F 2 "" H 7250 6700 60  0001 C CNN
F 3 "" H 7250 6700 60  0001 C CNN
	1    7250 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 55180EA3
P 6650 6700
F 0 "#PWR04" H 6740 6680 30  0001 C CNN
F 1 "GND" H 6650 6620 30  0001 C CNN
F 2 "" H 6650 6700 60  0001 C CNN
F 3 "" H 6650 6700 60  0001 C CNN
	1    6650 6700
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C7
U 1 1 55180EBB
P 6650 6400
F 0 "C7" H 6550 6300 50  0000 L CNN
F 1 "0.1u" H 6550 6500 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 6750 6250 28  0001 C BNN
F 3 "" H 6650 6400 60  0001 C CNN
	1    6650 6400
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C9
U 1 1 55180EC2
P 7250 6400
F 0 "C9" H 7150 6300 50  0000 L CNN
F 1 "0.1u" H 7150 6500 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 7350 6250 28  0001 C BNN
F 3 "" H 7250 6400 60  0001 C CNN
	1    7250 6400
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C11
U 1 1 55180EC9
P 7800 6400
F 0 "C11" H 7700 6300 50  0000 L CNN
F 1 "1u" H 7700 6500 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 7900 6250 28  0001 C BNN
F 3 "" H 7800 6400 60  0001 C CNN
	1    7800 6400
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C10
U 1 1 55180ED0
P 7550 6400
F 0 "C10" H 7450 6300 50  0000 L CNN
F 1 "10n" H 7450 6500 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 7650 6250 28  0001 C BNN
F 3 "" H 7550 6400 60  0001 C CNN
	1    7550 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 55180ED7
P 6350 6700
F 0 "#PWR05" H 6440 6680 30  0001 C CNN
F 1 "GND" H 6350 6620 30  0001 C CNN
F 2 "" H 6350 6700 60  0001 C CNN
F 3 "" H 6350 6700 60  0001 C CNN
	1    6350 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 55180EE4
P 6950 6700
F 0 "#PWR06" H 7040 6680 30  0001 C CNN
F 1 "GND" H 6950 6620 30  0001 C CNN
F 2 "" H 6950 6700 60  0001 C CNN
F 3 "" H 6950 6700 60  0001 C CNN
	1    6950 6700
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C8
U 1 1 55180EEA
P 6950 6400
F 0 "C8" H 6850 6300 50  0000 L CNN
F 1 "0.1u" H 6850 6500 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 7050 6250 28  0001 C BNN
F 3 "" H 6950 6400 60  0001 C CNN
	1    6950 6400
	1    0    0    -1  
$EndComp
Text Label 8000 3050 0    60   ~ 0
SWCLK
Text Label 8000 2950 0    60   ~ 0
SWDIO
$Comp
L power:GND #PWR07
U 1 1 551AB282
P 6400 4550
F 0 "#PWR07" H 6490 4530 30  0001 C CNN
F 1 "GND" H 6400 4470 30  0001 C CNN
F 2 "" H 6400 4550 60  0001 C CNN
F 3 "" H 6400 4550 60  0001 C CNN
	1    6400 4550
	1    0    0    -1  
$EndComp
Text Label 8000 2550 0    60   ~ 0
UART_TX
Text Label 8000 2650 0    60   ~ 0
UART_RX
NoConn ~ 7800 3750
$Comp
L Switches:BUTTON SW1
U 1 1 55207597
P 8200 1650
F 0 "SW1" H 8000 1800 50  0000 C CNN
F 1 "IT1198" H 8300 1800 50  0000 C CNN
F 2 "BtnsSwitches:BTN_IT1198" H 8200 1650 60  0001 C CNN
F 3 "" H 8200 1650 60  0000 C CNN
	1    8200 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 55255223
P 9600 4050
F 0 "#PWR08" H 9690 4030 30  0001 C CNN
F 1 "GND" H 9600 3970 30  0001 C CNN
F 2 "" H 9600 4050 60  0000 C CNN
F 3 "" H 9600 4050 60  0000 C CNN
	1    9600 4050
	-1   0    0    -1  
$EndComp
Text Label 8600 3450 2    60   ~ 0
DS1
Text Label 8600 3550 2    60   ~ 0
DS2
Text Label 8600 3650 2    60   ~ 0
DS3
Text Label 8600 3750 2    60   ~ 0
DS4
Text Label 4800 2850 0    60   ~ 0
DS1
Text Label 4800 2950 0    60   ~ 0
DS2
Text Label 4800 3050 0    60   ~ 0
DS3
Text Label 4800 3150 0    60   ~ 0
DS4
$Comp
L Switches:SWITCH SW3
U 1 1 5528A9A9
P 9200 8950
F 0 "SW3" H 8950 9200 60  0000 C CNN
F 1 "SS-1P2T" H 9250 9200 60  0000 C CNN
F 2 "BtnsSwitches:SW_SS-1P2T_R" H 9200 8950 60  0001 C CNN
F 3 "" H 9200 8950 60  0000 C CNN
	1    9200 8950
	-1   0    0    -1  
$EndComp
Text Notes 6500 5800 0    60   ~ 0
MCU Power Filter
Text Notes 6250 5950 0    60   ~ 0
Pins   24,    36,   48,     1+9
$Comp
L power:PwrMCU #PWR09
U 1 1 5695BD53
P 8050 6100
F 0 "#PWR09" H 8050 6150 30  0001 C CNN
F 1 "PwrMCU" H 8120 6130 30  0000 C CNN
F 2 "" H 8050 6100 60  0000 C CNN
F 3 "" H 8050 6100 60  0000 C CNN
	1    8050 6100
	1    0    0    -1  
$EndComp
$Comp
L power:PwrMCU #PWR010
U 1 1 5695FD17
P 4850 4000
F 0 "#PWR010" H 4850 4050 30  0001 C CNN
F 1 "PwrMCU" H 4920 4030 30  0000 C CNN
F 2 "" H 4850 4000 60  0000 C CNN
F 3 "" H 4850 4000 60  0000 C CNN
	1    4850 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:PwrMCU #PWR011
U 1 1 569619BD
P 8600 1650
F 0 "#PWR011" H 8600 1700 30  0001 C CNN
F 1 "PwrMCU" H 8670 1680 30  0000 C CNN
F 2 "" H 8600 1650 60  0000 C CNN
F 3 "" H 8600 1650 60  0000 C CNN
	1    8600 1650
	1    0    0    -1  
$EndComp
$Comp
L Switches:DIPx6 SW2
U 1 1 56984F3E
P 9200 3600
F 0 "SW2" H 9400 3950 60  0000 C CNN
F 1 "DIPx6" H 9100 3950 60  0000 C CNN
F 2 "BtnsSwitches:DIP_SMD_1D27X6" H 9200 3600 60  0001 C CNN
F 3 "" H 9200 3600 60  0000 C CNN
	1    9200 3600
	-1   0    0    -1  
$EndComp
Text Label 8600 3850 2    60   ~ 0
DS5
Text Label 8600 3950 2    60   ~ 0
DS6
Text Label 8200 2750 0    60   ~ 0
DS5
Text Label 8200 2850 0    60   ~ 0
DS6
Text Notes 700  750  0    60   ~ 0
Programming & debug
$Comp
L power:GND #PWR012
U 1 1 57180826
P 1600 1150
F 0 "#PWR012" H 1690 1130 30  0001 C CNN
F 1 "GND" H 1600 1070 30  0001 C CNN
F 2 "" H 1600 1150 60  0001 C CNN
F 3 "" H 1600 1150 60  0001 C CNN
	1    1600 1150
	0    1    1    0   
$EndComp
Text Label 1150 1050 0    60   ~ 0
SWCLK
Text Label 1150 1250 0    60   ~ 0
SWDIO
Text Label 1300 1350 0    60   ~ 0
UART_TX
Text Label 1300 1450 0    60   ~ 0
UART_RX
$Comp
L power:PwrMCU #PWR013
U 1 1 57180830
P 1500 950
F 0 "#PWR013" H 1500 1000 30  0001 C CNN
F 1 "PwrMCU" H 1570 980 30  0000 C CNN
F 2 "" H 1500 950 60  0000 C CNN
F 3 "" H 1500 950 60  0000 C CNN
	1    1500 950 
	1    0    0    -1  
$EndComp
$Comp
L Connectors_kl:CONN_6 XL1
U 1 1 5718083C
P 850 1200
F 0 "XL1" V 800 1200 50  0000 C CNN
F 1 "CONN_6" V 900 1200 50  0000 C CNN
F 2 "Connectors:PLS-6" H 850 1200 60  0001 C CNN
F 3 "" H 850 1200 60  0000 C CNN
F 4 "6" V 850 1200 60  0001 C CNN "SolderPointsDIP"
	1    850  1200
	-1   0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C6
U 1 1 57248266
P 6350 6400
F 0 "C6" H 6250 6300 50  0000 L CNN
F 1 "10u" H 6250 6500 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 6450 6250 28  0001 C BNN
F 3 "" H 6250 6300 60  0001 C CNN
F 4 "2.5" H 6350 6400 60  0001 C CNN "Price"
F 5 "2" H 6450 6500 60  0001 C CNN "SolderPoints"
F 6 "CL10A106MQ8NNNC" H 6350 6400 60  0001 C CNN "PN"
F 7 "https://www.terraelectronica.ru/catalog.php?ID=1155&search=cl10a106mq8nnnc" H 6350 6400 60  0001 C CNN "URL"
	1    6350 6400
	1    0    0    1   
$EndComp
NoConn ~ 7800 3300
NoConn ~ 7800 3400
Text Label 14200 5650 0    60   ~ 0
BuzzerOut
Text Label 12750 5850 0    60   ~ 0
Buzzer
$Comp
L power:GND #PWR014
U 1 1 57250945
P 14050 6150
F 0 "#PWR014" H 14140 6130 30  0001 C CNN
F 1 "GND" H 14050 6070 30  0001 C CNN
F 2 "" H 14050 6150 60  0000 C CNN
F 3 "" H 14050 6150 60  0000 C CNN
	1    14050 6150
	1    0    0    -1  
$EndComp
Text Label 4700 2550 0    60   ~ 0
Buzzer
$Comp
L Tittar_kl:R R6
U 1 1 57254B87
P 13450 5850
F 0 "R6" V 13530 5700 50  0000 C CNN
F 1 "1k" V 13450 5850 50  0000 C CNN
F 2 "Resistors:RES_0603" V 13530 5950 28  0001 C CNN
F 3 "" V 13530 5700 60  0000 C CNN
F 4 "0.5" V 13630 5800 60  0001 C CNN "Price"
F 5 "2" V 13730 5900 60  0001 C CNN "SolderPoints"
	1    13450 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 7800 1750
NoConn ~ 5150 2450
$Comp
L Tittar_kl:BUZZER BZ1
U 1 1 57C421AE
P 15000 5650
F 0 "BZ1" V 14700 5750 60  0000 C CNN
F 1 "PS-9627" V 14850 5650 60  0000 C CNN
F 2 "Installation:BUZZER_HC0903" H 15000 5650 60  0001 C CNN
F 3 "" H 15000 5650 60  0000 C CNN
F 4 "http://www.quartz1.com/price/model.php?akt=7940.06" H 15000 5650 60  0001 C CNN "URL"
F 5 "10" H 15000 5650 60  0001 C CNN "Price"
	1    15000 5650
	0    -1   1    0   
$EndComp
$Comp
L Power_kl:BAT B1
U 1 1 5930AA8E
P 5850 10450
F 0 "B1" H 6078 10478 60  0000 L CNN
F 1 "LP603030" H 5950 10300 60  0000 L CNN
F 2 "Installation:EEMB603030" H 5850 10450 60  0001 C CNN
F 3 "" H 5850 10450 60  0000 C CNN
	1    5850 10450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 59308A75
P 5350 10800
F 0 "#PWR015" H 5440 10780 30  0001 C CNN
F 1 "GND" H 5350 10720 30  0001 C CNN
F 2 "" H 5350 10800 60  0001 C CNN
F 3 "" H 5350 10800 60  0001 C CNN
	1    5350 10800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 59308A7B
P 5000 10800
F 0 "#PWR016" H 5090 10780 30  0001 C CNN
F 1 "GND" H 5000 10720 30  0001 C CNN
F 2 "" H 5000 10800 60  0001 C CNN
F 3 "" H 5000 10800 60  0001 C CNN
	1    5000 10800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 59308A81
P 3350 10800
F 0 "#PWR017" H 3440 10780 30  0001 C CNN
F 1 "GND" H 3350 10720 30  0001 C CNN
F 2 "" H 3350 10800 60  0001 C CNN
F 3 "" H 3350 10800 60  0001 C CNN
	1    3350 10800
	1    0    0    -1  
$EndComp
Text Label 3600 10200 0    60   ~ 0
Charge
Text Notes 4150 9150 0    60   ~ 0
Li-Ion charger\n3k => 0.35 A
$Comp
L power:GND #PWR018
U 1 1 59308A89
P 4400 10800
F 0 "#PWR018" H 4490 10780 30  0001 C CNN
F 1 "GND" H 4400 10720 30  0001 C CNN
F 2 "" H 4400 10800 60  0001 C CNN
F 3 "" H 4400 10800 60  0001 C CNN
	1    4400 10800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 59308A8F
P 3250 9900
F 0 "#PWR019" H 3250 9860 30  0001 C CNN
F 1 "+5V" H 3330 9930 30  0000 C CNN
F 2 "" H 3250 9900 60  0001 C CNN
F 3 "" H 3250 9900 60  0001 C CNN
	1    3250 9900
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 59308A95
P 7550 9350
F 0 "#PWR020" H 7550 9310 30  0001 C CNN
F 1 "+5V" H 7630 9380 30  0000 C CNN
F 2 "" H 7550 9350 60  0000 C CNN
F 3 "" H 7550 9350 60  0000 C CNN
	1    7550 9350
	-1   0    0    -1  
$EndComp
$Comp
L Tittar_kl:D_Shottky D2
U 1 1 59308A9E
P 7950 9350
F 0 "D2" H 7950 9450 40  0000 C CNN
F 1 "PMEG2020" H 7950 9250 40  0000 C CNN
F 2 "Diodes:SOD323" H 7950 9350 60  0001 C CNN
F 3 "" H 7950 9350 60  0000 C CNN
F 4 "2.5" H 7950 9350 60  0001 C CNN "Price"
F 5 "2" H 7950 9350 60  0001 C CNN "SolderPoints"
	1    7950 9350
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR021
U 1 1 59308AA5
P 7550 9750
F 0 "#PWR021" H 7550 9710 30  0001 C CNN
F 1 "+BATT" H 7630 9780 30  0000 C CNN
F 2 "" H 7550 9750 60  0001 C CNN
F 3 "" H 7550 9750 60  0001 C CNN
	1    7550 9750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 59308AAB
P 8000 10800
F 0 "#PWR022" H 8090 10780 30  0001 C CNN
F 1 "GND" H 8000 10720 30  0001 C CNN
F 2 "" H 8000 10800 60  0001 C CNN
F 3 "" H 8000 10800 60  0001 C CNN
	1    8000 10800
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:R R3
U 1 1 59308AB1
P 8000 10450
F 0 "R3" V 8080 10450 50  0000 C CNN
F 1 "10k" V 8000 10450 50  0000 C CNN
F 2 "Resistors:RES_0603" H 8000 10450 60  0001 C CNN
F 3 "" H 8000 10450 60  0001 C CNN
	1    8000 10450
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR023
U 1 1 59308ABE
P 6150 9900
F 0 "#PWR023" H 6150 9860 30  0001 C CNN
F 1 "+BATT" H 6230 9930 30  0000 C CNN
F 2 "" H 6150 9900 60  0000 C CNN
F 3 "" H 6150 9900 60  0000 C CNN
	1    6150 9900
	1    0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG024
U 1 1 59308ACA
P 9900 9500
F 0 "#FLG024" H 9900 9770 30  0001 C CNN
F 1 "PWR_FLAG" H 9900 9700 30  0000 C CNN
F 2 "" H 9900 9500 60  0000 C CNN
F 3 "" H 9900 9500 60  0000 C CNN
	1    9900 9500
	-1   0    0    1   
$EndComp
Text Notes 5700 9700 0    60   ~ 0
Battery
Text Notes 6950 8550 0    60   ~ 0
Power
Text Notes 7700 9150 0    60   ~ 0
5v OR Battery\nauto switch
$Comp
L power:PwrUnst #PWR025
U 1 1 59308AD3
P 10800 9350
F 0 "#PWR025" H 10800 9310 30  0001 C CNN
F 1 "PwrUnst" H 10880 9380 30  0000 C CNN
F 2 "" H 10800 9350 60  0000 C CNN
F 3 "" H 10800 9350 60  0000 C CNN
	1    10800 9350
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:R R2
U 1 1 59308ADB
P 5000 10450
F 0 "R2" V 5080 10300 50  0000 C CNN
F 1 "3k" V 5000 10450 50  0000 C CNN
F 2 "Resistors:RES_0603" V 5080 10550 28  0001 C CNN
F 3 "" V 5080 10300 60  0000 C CNN
F 4 "0.5" V 5180 10400 60  0001 C CNN "Price"
F 5 "2" V 5280 10500 60  0001 C CNN "SolderPoints"
	1    5000 10450
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C2
U 1 1 59308B26
P 3350 10200
F 0 "C2" H 3250 10100 50  0000 L CNN
F 1 "10u" H 3250 10300 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 3450 10050 28  0001 C BNN
F 3 "" H 3250 10100 60  0001 C CNN
F 4 "1.5" H 3350 10200 60  0001 C CNN "Price"
F 5 "2" H 3450 10300 60  0001 C CNN "SolderPoints"
	1    3350 10200
	1    0    0    1   
$EndComp
$Comp
L Power_kl:MCP73832 DA1
U 1 1 59308B3C
P 4400 10050
F 0 "DA1" H 4150 10350 60  0000 C CNN
F 1 "MCP73832" H 4650 10350 60  0000 C CNN
F 2 "SOT:SOT23-5" H 4050 10250 60  0001 C CNN
F 3 "" H 4150 10350 60  0001 C CNN
F 4 "MCP73832T-2ACI/OT" H 4250 10450 60  0001 C CNN "PN"
F 5 "50" H 4350 10550 60  0001 C CNN "Price"
F 6 "~" H 4450 10650 60  0001 C CNN "URL"
F 7 "5" H 4550 10750 60  0001 C CNN "SolderPoints"
	1    4400 10050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 59308B43
P 5850 10800
F 0 "#PWR026" H 5940 10780 30  0001 C CNN
F 1 "GND" H 5850 10720 30  0001 C CNN
F 2 "" H 5850 10800 60  0001 C CNN
F 3 "" H 5850 10800 60  0001 C CNN
	1    5850 10800
	1    0    0    -1  
$EndComp
Text Label 10300 2300 0    60   ~ 0
LED_DAC
Text Label 10300 2550 0    60   ~ 0
LED_TIM
$Comp
L Tittar_kl:R R4
U 1 1 5930B232
P 11150 2300
F 0 "R4" V 11250 2300 50  0000 C CNN
F 1 "10k" V 11150 2300 50  0000 C CNN
F 2 "Resistors:RES_0603" V 11230 2400 28  0001 C CNN
F 3 "" V 11230 2150 60  0000 C CNN
F 4 "0.5" V 11330 2250 60  0001 C CNN "Price"
F 5 "2" V 11430 2350 60  0001 C CNN "SolderPoints"
	1    11150 2300
	0    1    -1   0   
$EndComp
$Comp
L Transistors_kl:NPN Q4
U 1 1 5930B23D
P 12550 2850
F 0 "Q4" H 12750 2900 60  0000 C CNN
F 1 "NSS20101" H 12950 2800 60  0000 C CNN
F 2 "SOT:SC89-3" H 12550 2850 60  0001 C CNN
F 3 "" H 12550 2850 60  0000 C CNN
F 4 "NSS20101JT1G" H 12550 2850 60  0001 C CNN "PN"
F 5 "https://www.terraelectronica.ru/catalog.php?ID=356&search=nss20101" H 12550 2850 60  0001 C CNN "URL"
F 6 "5" H 12550 2850 60  0001 C CNN "Price"
F 7 "3" H 12550 2850 60  0001 C CNN "SolderPoints"
	1    12550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5930B244
P 12600 3550
F 0 "#PWR027" H 12690 3530 30  0001 C CNN
F 1 "GND" H 12600 3470 30  0001 C CNN
F 2 "" H 12600 3550 60  0000 C CNN
F 3 "" H 12600 3550 60  0000 C CNN
	1    12600 3550
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:LED D3
U 1 1 5930B24E
P 12600 2050
F 0 "D3" H 12700 2190 50  0000 C CNN
F 1 "LED" H 12520 2190 50  0000 C CNN
F 2 "LEDs:LED_Diamond_Dragon" H 12600 2090 60  0001 C CNN
F 3 "" H 12700 2190 60  0001 C CNN
F 4 "4" H 12800 2290 60  0001 C CNN "Price"
F 5 "2" H 12900 2390 60  0001 C CNN "SolderPointsDIP"
	1    12600 2050
	0    1    1    0   
$EndComp
$Comp
L Tittar_kl:Fuse0R F1
U 1 1 5930B257
P 11150 2550
F 0 "F1" V 11080 2550 50  0000 C CNN
F 1 "Fuse0R" V 11150 2550 50  0000 C CNN
F 2 "Resistors:RES_0603_FUSE" V 10980 2450 60  0001 C CNN
F 3 "" V 11080 2550 60  0001 C CNN
F 4 "1" V 11180 2650 60  0001 C CNN "SolderPoints"
F 5 "0" V 11280 2750 60  0001 C CNN "Price"
	1    11150 2550
	0    1    1    0   
$EndComp
$Comp
L power:PwrUnst #PWR028
U 1 1 5930B267
P 12600 1600
F 0 "#PWR028" H 12600 1560 30  0001 C CNN
F 1 "PwrUnst" H 12680 1630 30  0000 C CNN
F 2 "" H 12600 1600 60  0000 C CNN
F 3 "" H 12600 1600 60  0000 C CNN
	1    12600 1600
	0    -1   -1   0   
$EndComp
$Comp
L Transistors_kl:NPN Q3
U 1 1 5930B271
P 11800 2550
F 0 "Q3" H 12000 2600 60  0000 C CNN
F 1 "NSS20101" H 12200 2500 60  0000 C CNN
F 2 "SOT:SC89-3" H 11800 2550 60  0001 C CNN
F 3 "" H 11800 2550 60  0000 C CNN
F 4 "NSS20101JT1G" H 11800 2550 60  0001 C CNN "PN"
F 5 "https://www.terraelectronica.ru/catalog.php?ID=356&search=nss20101" H 11800 2550 60  0001 C CNN "URL"
F 6 "5" H 11800 2550 60  0001 C CNN "Price"
F 7 "3" H 11800 2550 60  0001 C CNN "SolderPoints"
	1    11800 2550
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:R R5
U 1 1 5930B27E
P 11850 3200
F 0 "R5" H 11950 3150 50  0000 C CNN
F 1 "1k" V 11850 3200 50  0000 C CNN
F 2 "Resistors:RES_0603" V 11930 3300 28  0001 C CNN
F 3 "" V 11930 3050 60  0000 C CNN
F 4 "0.5" V 12030 3150 60  0001 C CNN "Price"
F 5 "2" V 12130 3250 60  0001 C CNN "SolderPoints"
	1    11850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5930B286
P 11850 3550
F 0 "#PWR029" H 11940 3530 30  0001 C CNN
F 1 "GND" H 11850 3470 30  0001 C CNN
F 2 "" H 11850 3550 60  0000 C CNN
F 3 "" H 11850 3550 60  0000 C CNN
	1    11850 3550
	1    0    0    -1  
$EndComp
Text Label 12100 2350 0    60   ~ 0
LED_OUT
$Comp
L Transistors_kl:P_3PIN Q1
U 1 1 59308AF1
P 7950 9800
F 0 "Q1" H 7950 9950 50  0000 C CNN
F 1 "IRLML6401" H 7550 9700 50  0000 C CNN
F 2 "SOT:SOT23-3" H 8050 9750 60  0001 C CNN
F 3 "" H 8150 9850 60  0001 C CNN
F 4 "3" H 8250 9950 60  0001 C CNN "SolderPoints"
	1    7950 9800
	-1   0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C4
U 1 1 5930E891
P 5350 10200
F 0 "C4" H 5250 10100 50  0000 L CNN
F 1 "10u" H 5250 10300 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 5450 10050 28  0001 C BNN
F 3 "" H 5250 10100 60  0001 C CNN
F 4 "1.5" H 5350 10200 60  0001 C CNN "Price"
F 5 "2" H 5450 10300 60  0001 C CNN "SolderPoints"
	1    5350 10200
	1    0    0    1   
$EndComp
$Comp
L Tittar_kl:LED D1
U 1 1 59312FCB
P 3700 9500
F 0 "D1" H 3700 9839 50  0000 C CNN
F 1 "LED" H 3700 9748 50  0000 C CNN
F 2 "LEDs:LED_0603" H 3700 9540 60  0001 C CNN
F 3 "" H 3800 9640 60  0001 C CNN
F 4 "4" H 3900 9740 60  0001 C CNN "Price"
F 5 "2" H 4000 9840 60  0001 C CNN "SolderPoints"
F 6 "Blue" H 3700 9657 50  0000 C CIN "Color"
	1    3700 9500
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:R R1
U 1 1 59314489
P 4350 9500
F 0 "R1" V 4450 9500 50  0000 C CNN
F 1 "1k" V 4350 9500 50  0000 C CNN
F 2 "Resistors:RES_0603" V 4430 9600 28  0001 C CNN
F 3 "" V 4430 9350 60  0000 C CNN
F 4 "0.5" V 4530 9450 60  0001 C CNN "Price"
F 5 "2" V 4630 9550 60  0001 C CNN "SolderPoints"
	1    4350 9500
	0    1    -1   0   
$EndComp
Text Notes 1450 9500 0    60   ~ 0
uUSB \nconnector
$Comp
L power:GND #PWR030
U 1 1 59308DD0
P 2100 10500
F 0 "#PWR030" H 2190 10480 30  0001 C CNN
F 1 "GND" H 2100 10420 30  0001 C CNN
F 2 "" H 2100 10500 60  0000 C CNN
F 3 "" H 2100 10500 60  0000 C CNN
	1    2100 10500
	1    0    0    1   
$EndComp
$Comp
L Connectors_kl:USB_MINI_B XL2
U 1 1 59308DDD
P 1450 10100
F 0 "XL2" H 1250 10550 60  0000 C CNN
F 1 "USB_Micro_B" H 1350 10450 60  0000 C CNN
F 2 "Connectors:USBmicro_MOLEX_WM17142" H 1450 10100 60  0001 C CNN
F 3 "" H 1450 10100 60  0000 C CNN
F 4 "47491-0001 MOLEX" H 1450 10100 60  0001 C CNN "PN"
F 5 "https://www.terraelectronica.ru/catalog_info.php?CODE=281706" H 1450 10100 60  0001 C CNN "URL"
F 6 "53.5" H 1450 10100 60  0001 C CNN "Price"
F 7 "11" H 1450 10100 60  0001 C CNN "SolderPoints"
	1    1450 10100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 59308DE4
P 1800 10500
F 0 "#PWR031" H 1890 10480 30  0001 C CNN
F 1 "GND" H 1800 10420 30  0001 C CNN
F 2 "" H 1800 10500 60  0000 C CNN
F 3 "" H 1800 10500 60  0000 C CNN
	1    1800 10500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR032
U 1 1 59308DEA
P 2200 9900
F 0 "#PWR032" H 2200 9860 30  0001 C CNN
F 1 "+5V" H 2280 9930 30  0000 C CNN
F 2 "" H 2200 9900 60  0000 C CNN
F 3 "" H 2200 9900 60  0000 C CNN
	1    2200 9900
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C1
U 1 1 59308E0D
P 2100 10200
F 0 "C1" H 2000 10100 50  0000 L CNN
F 1 "10n" H 2000 10300 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 2200 10050 28  0001 C BNN
F 3 "" H 2000 10100 60  0001 C CNN
F 4 "0.5" H 2100 10200 60  0001 C CNN "Price"
F 5 "2" H 2200 10300 60  0001 C CNN "SolderPoints"
F 6 "~" H 2100 10200 60  0001 C CNN "PN"
F 7 "~" H 2100 10200 60  0001 C CNN "URL"
	1    2100 10200
	1    0    0    1   
$EndComp
NoConn ~ 1650 10000
NoConn ~ 1650 10100
Text Label 4750 9500 0    60   ~ 0
Charge
Text Label 8200 9350 0    60   ~ 0
PWR_ALWAYS
$Comp
L power:PwrUnst #PWR033
U 1 1 5931DBAC
P 15500 5650
F 0 "#PWR033" H 15500 5610 30  0001 C CNN
F 1 "PwrUnst" H 15580 5680 30  0000 C CNN
F 2 "" H 15500 5650 60  0000 C CNN
F 3 "" H 15500 5650 60  0000 C CNN
	1    15500 5650
	1    0    0    -1  
$EndComp
NoConn ~ 5150 1650
NoConn ~ 5150 1750
NoConn ~ 5150 1850
NoConn ~ 5150 1950
NoConn ~ 5150 2050
NoConn ~ 5150 2150
NoConn ~ 5150 2250
NoConn ~ 5150 2350
NoConn ~ 5150 2650
NoConn ~ 5150 2750
NoConn ~ 7800 1850
NoConn ~ 7800 1950
NoConn ~ 7800 2150
NoConn ~ 7800 2350
Wire Wire Line
	7800 1650 7900 1650
Wire Wire Line
	4850 4000 5050 4000
Connection ~ 7800 6100
Wire Notes Line
	7100 6700 7100 5850
Wire Notes Line
	6800 6700 6800 5850
Wire Notes Line
	6500 6700 6500 5850
Wire Notes Line
	7400 6700 7400 5850
Connection ~ 5050 3600
Wire Wire Line
	5050 3500 5150 3500
Connection ~ 5050 3700
Wire Wire Line
	5050 3600 5150 3600
Connection ~ 5050 3850
Wire Wire Line
	5050 3700 5150 3700
Connection ~ 5050 4000
Wire Wire Line
	5050 3850 5150 3850
Wire Wire Line
	5050 3500 5050 3600
Connection ~ 7550 6100
Wire Wire Line
	7550 6200 7550 6100
Connection ~ 7250 6100
Wire Wire Line
	7250 6200 7250 6100
Connection ~ 6950 6100
Wire Wire Line
	6950 6200 6950 6100
Connection ~ 6650 6100
Wire Wire Line
	6650 6200 6650 6100
Connection ~ 6350 6100
Wire Wire Line
	6350 6200 6350 6100
Wire Wire Line
	7800 6100 7800 6200
Wire Wire Line
	5450 6100 5700 6100
Wire Wire Line
	8900 3750 8600 3750
Wire Wire Line
	8600 3650 8900 3650
Wire Wire Line
	8900 3550 8600 3550
Wire Wire Line
	8900 3450 8600 3450
Connection ~ 9600 3950
Wire Wire Line
	9500 3950 9600 3950
Connection ~ 9600 3850
Wire Wire Line
	9600 3850 9500 3850
Connection ~ 9600 3750
Wire Wire Line
	9500 3750 9600 3750
Wire Wire Line
	9600 3650 9500 3650
Wire Wire Line
	9600 3450 9600 3550
Wire Wire Line
	8600 1650 8500 1650
Connection ~ 6500 4400
Wire Wire Line
	6650 4400 6650 4300
Wire Wire Line
	6500 4400 6500 4300
Connection ~ 6300 4400
Wire Wire Line
	6300 4300 6300 4400
Connection ~ 6400 4400
Wire Wire Line
	6200 4400 6300 4400
Wire Wire Line
	6200 4300 6200 4400
Wire Wire Line
	8000 2650 7800 2650
Wire Wire Line
	7800 3050 8000 3050
Wire Wire Line
	7800 2550 8000 2550
Wire Wire Line
	7800 2950 8000 2950
Wire Wire Line
	6950 6600 6950 6700
Wire Wire Line
	6350 6600 6350 6700
Wire Wire Line
	7550 6600 7550 6700
Wire Wire Line
	7250 6600 7250 6700
Wire Wire Line
	6650 6600 6650 6700
Wire Wire Line
	7800 6600 7800 6700
Wire Wire Line
	8900 3950 8600 3950
Wire Wire Line
	8600 3850 8900 3850
Wire Wire Line
	9600 3550 9500 3550
Connection ~ 9600 3650
Wire Wire Line
	9500 3450 9600 3450
Connection ~ 9600 3550
Wire Notes Line
	500  5050 16050 5050
Wire Notes Line
	2150 500  2150 5050
Wire Notes Line
	12550 5050 12550 9950
Wire Wire Line
	1300 1350 1050 1350
Wire Wire Line
	1050 1450 1300 1450
Wire Wire Line
	1050 950  1500 950 
Wire Wire Line
	1050 1250 1150 1250
Wire Wire Line
	1150 1050 1050 1050
Wire Wire Line
	1050 1150 1600 1150
Wire Wire Line
	15250 5650 15500 5650
Wire Wire Line
	12750 5850 13200 5850
Wire Wire Line
	14050 6150 14050 6050
Wire Wire Line
	13700 5850 13800 5850
Wire Wire Line
	14050 5650 14750 5650
Wire Wire Line
	4700 2550 5150 2550
Wire Wire Line
	5350 10400 5350 10800
Wire Wire Line
	4400 10550 4400 10800
Connection ~ 3350 9900
Wire Wire Line
	5000 10700 5000 10800
Wire Wire Line
	3900 10200 3600 10200
Wire Wire Line
	4900 10200 5000 10200
Wire Wire Line
	5350 10000 5350 9900
Connection ~ 5350 9900
Wire Wire Line
	3350 9500 3350 9900
Wire Wire Line
	3350 10800 3350 10400
Wire Wire Line
	7550 9350 7650 9350
Wire Wire Line
	7550 9750 7750 9750
Wire Wire Line
	7650 9350 7650 10100
Wire Wire Line
	7650 10100 8000 10100
Wire Wire Line
	8000 10000 8000 10100
Connection ~ 7650 9350
Wire Wire Line
	8000 10700 8000 10800
Connection ~ 8000 10100
Wire Wire Line
	8250 9750 8150 9750
Connection ~ 8250 9350
Wire Wire Line
	8150 9350 8250 9350
Wire Wire Line
	3250 9900 3350 9900
Wire Wire Line
	8250 9350 8250 9750
Wire Notes Line
	7050 10950 7050 9000
Wire Wire Line
	5850 10800 5850 10700
Wire Wire Line
	10300 2300 10900 2300
Wire Wire Line
	11500 2550 11500 2300
Wire Wire Line
	11500 2300 11400 2300
Connection ~ 11500 2550
Wire Wire Line
	12600 3050 12600 3550
Wire Wire Line
	12600 2250 12600 2350
Wire Wire Line
	12600 1600 12600 1750
Wire Wire Line
	10300 2550 10900 2550
Wire Wire Line
	11400 2550 11500 2550
Wire Wire Line
	11850 2750 11850 2850
Wire Wire Line
	11850 2850 12350 2850
Wire Wire Line
	11850 2350 12600 2350
Connection ~ 12600 2350
Connection ~ 11850 2850
Wire Wire Line
	11850 3550 11850 3450
Wire Wire Line
	5850 10250 5850 9900
Connection ~ 5850 9900
Wire Wire Line
	7800 2050 8000 2050
Wire Wire Line
	3350 9500 3500 9500
Wire Wire Line
	3900 9500 4100 9500
Wire Wire Line
	1650 10200 1800 10200
Wire Wire Line
	1800 10200 1800 10300
Connection ~ 1800 10300
Wire Wire Line
	2100 10400 2100 10500
Wire Wire Line
	1800 10300 1650 10300
Wire Wire Line
	2200 9900 2100 9900
Wire Wire Line
	2100 10000 2100 9900
Connection ~ 2100 9900
Wire Wire Line
	1300 10600 1300 10700
Wire Wire Line
	1300 10700 1400 10700
Wire Wire Line
	1400 10700 1400 10600
Wire Wire Line
	1200 10600 1200 10700
Wire Wire Line
	1200 10700 1100 10700
Wire Wire Line
	1100 10700 1100 10600
Wire Wire Line
	8000 2250 7800 2250
Wire Wire Line
	4750 9500 4600 9500
Wire Wire Line
	9800 9350 9900 9350
Wire Wire Line
	9900 9500 9900 9350
Connection ~ 9900 9350
Wire Wire Line
	6400 4550 6400 4400
$Comp
L st_kl:STM32L151CxTx DD1
U 1 1 571889F4
P 6450 2850
F 0 "DD1" H 5950 4200 60  0000 C CNN
F 1 "STM32L151CxTx" H 6600 4200 60  0000 C CNN
F 2 "LQFP_TQFP:LQFP48" H 5850 4100 60  0001 C CNN
F 3 "" H 5950 4200 60  0001 C CNN
F 4 "stm32L151c8t6" H 6050 4300 60  0001 C CNN "PN"
F 5 "http://" H 6150 4400 60  0001 C CNN "URL"
F 6 "48" H 6250 4500 60  0001 C CNN "SolderPoints"
	1    6450 2850
	1    0    0    -1  
$EndComp
$Comp
L Transistors_kl:NPN Q5
U 1 1 59322F06
P 14000 5850
F 0 "Q5" H 14200 5900 60  0000 C CNN
F 1 "NSS20101" H 14400 5800 60  0000 C CNN
F 2 "SOT:SC89-3" H 14000 5850 60  0001 C CNN
F 3 "" H 14000 5850 60  0000 C CNN
F 4 "NSS20101JT1G" H 14000 5850 60  0001 C CNN "PN"
F 5 "https://www.terraelectronica.ru/catalog.php?ID=356&search=nss20101" H 14000 5850 60  0001 C CNN "URL"
F 6 "5" H 14000 5850 60  0001 C CNN "Price"
F 7 "3" H 14000 5850 60  0001 C CNN "SolderPoints"
	1    14000 5850
	1    0    0    -1  
$EndComp
$Comp
L Transistors_kl:P_3PIN Q2
U 1 1 59323A8C
P 9600 9300
F 0 "Q2" H 9600 9600 50  0000 C CNN
F 1 "IRLML6401" H 9600 9500 50  0000 C CNN
F 2 "SOT:SOT23-3" H 9700 9250 60  0001 C CNN
F 3 "" H 9800 9350 60  0001 C CNN
F 4 "3" H 9900 9450 60  0001 C CNN "SolderPoints"
	1    9600 9300
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 59324138
P 8850 8850
F 0 "#PWR034" H 8940 8830 30  0001 C CNN
F 1 "GND" H 8850 8770 30  0001 C CNN
F 2 "" H 8850 8850 60  0001 C CNN
F 3 "" H 8850 8850 60  0001 C CNN
	1    8850 8850
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 8850 8850 8850
$Comp
L power:GND #PWR035
U 1 1 59324A6D
P 10250 10150
F 0 "#PWR035" H 10340 10130 30  0001 C CNN
F 1 "GND" H 10250 10070 30  0001 C CNN
F 2 "" H 10250 10150 60  0001 C CNN
F 3 "" H 10250 10150 60  0001 C CNN
	1    10250 10150
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:CP C12
U 1 1 59324A77
P 10250 9800
F 0 "C12" H 10300 9900 50  0000 L CNN
F 1 "220u" H 10300 9700 50  0000 L CNN
F 2 "Capacitors:CAP_05xxR_horiz_HOLE" H 10200 9800 60  0001 C CNN
F 3 "" H 10300 9900 60  0001 C CNN
F 4 "7" H 10400 10000 60  0001 C CNN "Price"
F 5 "2" H 10500 10100 60  0001 C CNN "SolderPointsDIP"
F 6 "https://www.terraelectronica.ru/catalog_info.php?CODE=152975" H 10600 10200 60  0001 C CNN "URL"
F 7 "ECAP 1000/6.3V 0811 105C RD" H 10700 10300 60  0001 C CNN "PN"
	1    10250 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 10000 10250 10150
Wire Wire Line
	6150 9900 5850 9900
Wire Wire Line
	10250 9600 10250 9350
Connection ~ 10250 9350
Wire Wire Line
	8950 8950 8950 9350
Connection ~ 8950 9350
Wire Wire Line
	9550 8950 9550 9100
$Comp
L Power_kl:NCP583SQ DA2
U 1 1 59309C6B
P 5050 6200
F 0 "DA2" H 4900 6550 50  0000 C CNN
F 1 "NCP583SQ" H 5050 6450 50  0000 C CNN
F 2 "SOT:SC82AB" H 4800 6450 60  0001 C CNN
F 3 "" H 4900 6550 60  0001 C CNN
F 4 "4" H 5000 6650 60  0001 C CNN "SolderPoints"
F 5 "10" H 5050 6200 60  0001 C CNN "Price"
	1    5050 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 59309C72
P 4300 6750
F 0 "#PWR036" H 4390 6730 30  0001 C CNN
F 1 "GND" H 4300 6670 30  0001 C CNN
F 2 "" H 4300 6750 60  0001 C CNN
F 3 "" H 4300 6750 60  0001 C CNN
	1    4300 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 59309C78
P 5700 6750
F 0 "#PWR037" H 5790 6730 30  0001 C CNN
F 1 "GND" H 5700 6670 30  0001 C CNN
F 2 "" H 5700 6750 60  0001 C CNN
F 3 "" H 5700 6750 60  0001 C CNN
	1    5700 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 59309C7E
P 5450 6750
F 0 "#PWR038" H 5540 6730 30  0001 C CNN
F 1 "GND" H 5450 6670 30  0001 C CNN
F 2 "" H 5450 6750 60  0001 C CNN
F 3 "" H 5450 6750 60  0001 C CNN
	1    5450 6750
	1    0    0    -1  
$EndComp
$Comp
L power:PwrUnst #PWR039
U 1 1 59309C8A
P 4200 6100
F 0 "#PWR039" H 4200 6060 30  0001 C CNN
F 1 "PwrUnst" H 4280 6130 30  0000 C CNN
F 2 "" H 4200 6100 60  0000 C CNN
F 3 "" H 4200 6100 60  0000 C CNN
	1    4200 6100
	-1   0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C3
U 1 1 59309C92
P 4300 6400
F 0 "C3" H 4200 6300 50  0000 L CNN
F 1 "1u" H 4200 6500 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 4400 6250 28  0001 C BNN
F 3 "" H 4300 6400 60  0001 C CNN
F 4 "2" H 4300 6400 60  0001 C CNN "SolderPoints"
F 5 "1" H 4300 6400 60  0001 C CNN "Price"
	1    4300 6400
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:C C5
U 1 1 59309C9B
P 5700 6450
F 0 "C5" H 5600 6350 50  0000 L CNN
F 1 "1u" H 5600 6550 50  0000 L CNN
F 2 "Capacitors:CAP_0603" V 5800 6300 28  0001 C BNN
F 3 "" H 5700 6450 60  0001 C CNN
F 4 "2" H 5700 6450 60  0001 C CNN "SolderPoints"
F 5 "1" H 5700 6450 60  0001 C CNN "Price"
	1    5700 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6300 4550 6300
Wire Wire Line
	4200 6100 4300 6100
Wire Wire Line
	4300 6600 4300 6750
Wire Wire Line
	5700 6650 5700 6750
Wire Wire Line
	5700 6100 5700 6250
Wire Wire Line
	5450 6300 5450 6750
Wire Wire Line
	4300 6200 4300 6100
Connection ~ 4550 6100
Connection ~ 4300 6100
Connection ~ 5700 6100
Wire Wire Line
	4550 6300 4550 6100
Text Label 5850 6100 0    60   ~ 0
3V3
$Comp
L power:GND #PWR040
U 1 1 593299FE
P 10600 10150
F 0 "#PWR040" H 10690 10130 30  0001 C CNN
F 1 "GND" H 10600 10070 30  0001 C CNN
F 2 "" H 10600 10150 60  0001 C CNN
F 3 "" H 10600 10150 60  0001 C CNN
	1    10600 10150
	1    0    0    -1  
$EndComp
$Comp
L Tittar_kl:CP C13
U 1 1 59329A08
P 10600 9800
F 0 "C13" H 10650 9900 50  0000 L CNN
F 1 "220u" H 10650 9700 50  0000 L CNN
F 2 "Capacitors:CAP_05xxR_horiz_HOLE" H 10550 9800 60  0001 C CNN
F 3 "" H 10650 9900 60  0001 C CNN
F 4 "7" H 10750 10000 60  0001 C CNN "Price"
F 5 "2" H 10850 10100 60  0001 C CNN "SolderPointsDIP"
F 6 "https://www.terraelectronica.ru/catalog_info.php?CODE=152975" H 10950 10200 60  0001 C CNN "URL"
F 7 "ECAP 1000/6.3V 0811 105C RD" H 11050 10300 60  0001 C CNN "PN"
	1    10600 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 10000 10600 10150
Wire Wire Line
	10600 9600 10600 9350
Connection ~ 10600 9350
Text Label 8000 2250 0    60   ~ 0
LED_TIM
Text Label 8000 2050 0    60   ~ 0
LED_DAC
$Comp
L Tittar_kl:LED D4
U 1 1 59308A69
P 13000 2050
F 0 "D4" H 13100 2190 50  0000 C CNN
F 1 "LED" H 12920 2190 50  0000 C CNN
F 2 "LEDs:LED_RAD" H 13000 2090 60  0001 C CNN
F 3 "" H 13100 2190 60  0001 C CNN
F 4 "4" H 13200 2290 60  0001 C CNN "Price"
F 5 "2" H 13300 2390 60  0001 C CNN "SolderPointsDIP"
	1    13000 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	13000 1850 13000 1750
Wire Wire Line
	12600 1750 13000 1750
Connection ~ 12600 1750
Wire Wire Line
	13000 2350 13000 2250
Text Notes 12750 1650 0    60   ~ 0
One or another
$Comp
L Tittar_kl:LED D5
U 1 1 59309620
P 13350 2050
F 0 "D5" H 13450 2190 50  0000 C CNN
F 1 "LED" H 13270 2190 50  0000 C CNN
F 2 "LEDs:LED_XPE" H 13350 2090 60  0001 C CNN
F 3 "" H 13450 2190 60  0001 C CNN
F 4 "4" H 13550 2290 60  0001 C CNN "Price"
F 5 "2" H 13650 2390 60  0001 C CNN "SolderPointsDIP"
	1    13350 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	13350 2350 13350 2250
Connection ~ 13000 2350
Wire Wire Line
	13350 1750 13350 1850
Connection ~ 13000 1750
Wire Wire Line
	5150 2850 4800 2850
Wire Wire Line
	4800 2950 5150 2950
Wire Wire Line
	5150 3050 4800 3050
Wire Wire Line
	4800 3150 5150 3150
Wire Wire Line
	8200 2750 7800 2750
Wire Wire Line
	8200 2850 7800 2850
NoConn ~ 7800 2450
NoConn ~ 7800 3150
NoConn ~ 7800 3550
NoConn ~ 7800 3650
NoConn ~ 5150 3350
Wire Wire Line
	7800 6100 8050 6100
Wire Wire Line
	5050 3600 5050 3700
Wire Wire Line
	5050 3700 5050 3850
Wire Wire Line
	5050 3850 5050 4000
Wire Wire Line
	5050 4000 5150 4000
Wire Wire Line
	7550 6100 7800 6100
Wire Wire Line
	7250 6100 7550 6100
Wire Wire Line
	6950 6100 7250 6100
Wire Wire Line
	6650 6100 6950 6100
Wire Wire Line
	6350 6100 6650 6100
Wire Wire Line
	9600 3950 9600 4050
Wire Wire Line
	9600 3850 9600 3950
Wire Wire Line
	9600 3750 9600 3850
Wire Wire Line
	6500 4400 6650 4400
Wire Wire Line
	6300 4400 6400 4400
Wire Wire Line
	6400 4400 6400 4300
Wire Wire Line
	6400 4400 6500 4400
Wire Wire Line
	9600 3650 9600 3750
Wire Wire Line
	9600 3550 9600 3650
Wire Wire Line
	3350 9900 3350 10000
Wire Wire Line
	3350 9900 3900 9900
Wire Wire Line
	5350 9900 4900 9900
Wire Wire Line
	7650 9350 7750 9350
Wire Wire Line
	8000 10100 8000 10200
Wire Wire Line
	8250 9350 8950 9350
Wire Wire Line
	11500 2550 11600 2550
Wire Wire Line
	12600 2350 12600 2650
Wire Wire Line
	12600 2350 13000 2350
Wire Wire Line
	11850 2850 11850 2950
Wire Wire Line
	5850 9900 5350 9900
Wire Wire Line
	1800 10300 1800 10500
Wire Wire Line
	2100 9900 1650 9900
Wire Wire Line
	9900 9350 10250 9350
Wire Wire Line
	10250 9350 10600 9350
Wire Wire Line
	8950 9350 9400 9350
Wire Wire Line
	4550 6100 4650 6100
Wire Wire Line
	4300 6100 4550 6100
Wire Wire Line
	5700 6100 6350 6100
Wire Wire Line
	10600 9350 10800 9350
Wire Wire Line
	12600 1750 12600 1850
Wire Wire Line
	13000 2350 13350 2350
Wire Wire Line
	13000 1750 13350 1750
$EndSCHEMATC
