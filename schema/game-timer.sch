EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:game-timer-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date "14 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L POWER_GND #17
U 1 1 52F13E15
P 9650 7900
F 0 "#17" V 9600 7850 60  0001 C CNN
F 1 "POWER_GND" V 9700 7850 60  0001 C CNN
F 2 "" H 9650 7900 60  0001 C CNN
F 3 "" H 9650 7900 60  0001 C CNN
	1    9650 7900
	1    0    0    -1  
$EndComp
$Comp
L BAT GB1
U 1 1 52F13DFB
P 9400 2000
F 0 "GB1" H 9425 1875 60  0000 L CNN
F 1 "3V" H 9425 1675 60  0000 L CNN
F 2 "" H 9400 2000 60  0001 C CNN
F 3 "" H 9400 2000 60  0001 C CNN
	1    9400 2000
	1    0    0    -1  
$EndComp
$Comp
L SA_1-2_CL SA1
U 1 1 52F13A0C
P 9400 1550
F 0 "SA1" V 9400 1450 59  0000 C CNN
F 1 "SA_1-2_CL" H 9400 1450 60  0001 C CNN
F 2 "" H 9400 1550 60  0001 C CNN
F 3 "" H 9400 1550 60  0001 C CNN
	1    9400 1550
	0    -1   -1   0   
$EndComp
$Comp
L TR_NPN_BCE VT3
U 1 1 52F4AC00
P 9200 7600
F 0 "VT3" H 9600 7850 60  0000 R CNN
F 1 "КТ315" H 9600 7400 60  0000 R CNN
F 2 "" H 9200 7600 60  0000 C CNN
F 3 "" H 9200 7600 60  0000 C CNN
	1    9200 7600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 52F4AC56
P 8950 7600
F 0 "R3" V 9030 7600 50  0000 C CNN
F 1 "1к" V 8950 7600 50  0000 C CNN
F 2 "" H 8950 7600 60  0000 C CNN
F 3 "" H 8950 7600 60  0000 C CNN
	1    8950 7600
	0    -1   -1   0   
$EndComp
$Comp
L POWER_GND #2
U 1 1 52F4D89D
P 9400 2750
F 0 "#2" V 9350 2700 60  0001 C CNN
F 1 "POWER_GND" V 9450 2700 60  0001 C CNN
F 2 "" H 9400 2750 60  0001 C CNN
F 3 "" H 9400 2750 60  0001 C CNN
	1    9400 2750
	1    0    0    -1  
$EndComp
$Comp
L POWER_VCC #~1
U 1 1 52F4D8A9
P 9400 1150
F 0 "#~1" V 9200 900 60  0001 C CNN
F 1 "POWER_VCC" H 9550 1050 60  0001 C CNN
F 2 "" H 9400 1150 60  0000 C CNN
F 3 "" H 9400 1150 60  0000 C CNN
	1    9400 1150
	0    -1   -1   0   
$EndComp
$Comp
L ATMEGA8515-P IC1
U 1 1 57E36FD6
P 2450 3800
F 0 "IC1" H 1650 5630 50  0000 L BNN
F 1 "ATMEGA8515-P" H 2650 1900 50  0000 L BNN
F 2 "DIL40" H 1750 1950 50  0001 C CNN
F 3 "" H 2450 3800 60  0001 C CNN
	1    2450 3800
	1    0    0    -1  
$EndComp
$Comp
L SPST SW1
U 1 1 57E38886
P 4600 1250
F 0 "SW1" H 4600 1350 70  0000 C CNN
F 1 "Старт" H 4600 1150 70  0000 C CNN
F 2 "" H 4600 1250 60  0000 C CNN
F 3 "" H 4600 1250 60  0000 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L SPST SW2
U 1 1 57E38928
P 4600 1600
F 0 "SW2" H 4600 1700 70  0000 C CNN
F 1 "Сброс" H 4600 1500 70  0000 C CNN
F 2 "" H 4600 1600 60  0000 C CNN
F 3 "" H 4600 1600 60  0000 C CNN
	1    4600 1600
	1    0    0    -1  
$EndComp
$Comp
L SPST SW7
U 1 1 57E38AFE
P 4800 4000
F 0 "SW7" H 4800 4100 70  0000 C CNN
F 1 "Игрок1" H 4800 3900 70  0000 C CNN
F 2 "" H 4800 4000 60  0000 C CNN
F 3 "" H 4800 4000 60  0000 C CNN
	1    4800 4000
	1    0    0    -1  
$EndComp
$Comp
L SPST SW8
U 1 1 57E3AD44
P 4800 4350
F 0 "SW8" H 4800 4450 70  0000 C CNN
F 1 "Игрок1" H 4800 4250 70  0000 C CNN
F 2 "" H 4800 4350 60  0000 C CNN
F 3 "" H 4800 4350 60  0000 C CNN
	1    4800 4350
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 57E3BE95
P 9650 7100
F 0 "D5" H 9650 7200 50  0000 C CNN
F 1 "Игрок3" H 9650 7000 50  0000 C CNN
F 2 "" H 9650 7100 60  0000 C CNN
F 3 "" H 9650 7100 60  0000 C CNN
	1    9650 7100
	0    1    1    0   
$EndComp
$Comp
L POWER_VCC #~7
U 1 1 57E3C0F4
P 9650 6900
F 0 "#~7" V 9450 6650 60  0001 C CNN
F 1 "POWER_VCC" H 9800 6800 60  0001 C CNN
F 2 "" H 9650 6900 60  0000 C CNN
F 3 "" H 9650 6900 60  0000 C CNN
	1    9650 6900
	0    -1   -1   0   
$EndComp
$Comp
L POWER_GND #18
U 1 1 57E3D3A2
P 10900 7900
F 0 "#18" V 10850 7850 60  0001 C CNN
F 1 "POWER_GND" V 10950 7850 60  0001 C CNN
F 2 "" H 10900 7900 60  0001 C CNN
F 3 "" H 10900 7900 60  0001 C CNN
	1    10900 7900
	1    0    0    -1  
$EndComp
$Comp
L TR_NPN_BCE VT9
U 1 1 57E3D3A8
P 10450 7600
F 0 "VT9" H 10850 7850 60  0000 R CNN
F 1 "КТ315" H 10850 7400 60  0000 R CNN
F 2 "" H 10450 7600 60  0000 C CNN
F 3 "" H 10450 7600 60  0000 C CNN
	1    10450 7600
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 57E3D3AE
P 10200 7600
F 0 "R9" V 10280 7600 50  0000 C CNN
F 1 "1к" V 10200 7600 50  0000 C CNN
F 2 "" H 10200 7600 60  0000 C CNN
F 3 "" H 10200 7600 60  0000 C CNN
	1    10200 7600
	0    -1   -1   0   
$EndComp
$Comp
L LED D6
U 1 1 57E3D3B4
P 10900 7100
F 0 "D6" H 10900 7200 50  0000 C CNN
F 1 "Игрок4" H 10900 7000 50  0000 C CNN
F 2 "" H 10900 7100 60  0000 C CNN
F 3 "" H 10900 7100 60  0000 C CNN
	1    10900 7100
	0    1    1    0   
$EndComp
$Comp
L POWER_VCC #~8
U 1 1 57E3D3BA
P 10900 6900
F 0 "#~8" V 10700 6650 60  0001 C CNN
F 1 "POWER_VCC" H 11050 6800 60  0001 C CNN
F 2 "" H 10900 6900 60  0000 C CNN
F 3 "" H 10900 6900 60  0000 C CNN
	1    10900 6900
	0    -1   -1   0   
$EndComp
$Comp
L POWER_GND #16
U 1 1 57E3D58A
P 8350 7900
F 0 "#16" V 8300 7850 60  0001 C CNN
F 1 "POWER_GND" V 8400 7850 60  0001 C CNN
F 2 "" H 8350 7900 60  0001 C CNN
F 3 "" H 8350 7900 60  0001 C CNN
	1    8350 7900
	1    0    0    -1  
$EndComp
$Comp
L TR_NPN_BCE VT8
U 1 1 57E3D590
P 7900 7600
F 0 "VT8" H 8300 7850 60  0000 R CNN
F 1 "КТ315" H 8300 7400 60  0000 R CNN
F 2 "" H 7900 7600 60  0000 C CNN
F 3 "" H 7900 7600 60  0000 C CNN
	1    7900 7600
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 57E3D596
P 7650 7600
F 0 "R8" V 7730 7600 50  0000 C CNN
F 1 "1к" V 7650 7600 50  0000 C CNN
F 2 "" H 7650 7600 60  0000 C CNN
F 3 "" H 7650 7600 60  0000 C CNN
	1    7650 7600
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 57E3D59C
P 8350 7100
F 0 "D4" H 8350 7200 50  0000 C CNN
F 1 "Игрок2" H 8350 7000 50  0000 C CNN
F 2 "" H 8350 7100 60  0000 C CNN
F 3 "" H 8350 7100 60  0000 C CNN
	1    8350 7100
	0    1    1    0   
$EndComp
$Comp
L POWER_VCC #~5
U 1 1 57E3D5A2
P 8350 6900
F 0 "#~5" V 8150 6650 60  0001 C CNN
F 1 "POWER_VCC" H 8500 6800 60  0001 C CNN
F 2 "" H 8350 6900 60  0000 C CNN
F 3 "" H 8350 6900 60  0000 C CNN
	1    8350 6900
	0    -1   -1   0   
$EndComp
$Comp
L POWER_GND #15
U 1 1 57E3D8BA
P 7150 7950
F 0 "#15" V 7100 7900 60  0001 C CNN
F 1 "POWER_GND" V 7200 7900 60  0001 C CNN
F 2 "" H 7150 7950 60  0001 C CNN
F 3 "" H 7150 7950 60  0001 C CNN
	1    7150 7950
	1    0    0    -1  
$EndComp
$Comp
L TR_NPN_BCE VT7
U 1 1 57E3D8C0
P 6700 7650
F 0 "VT7" H 7100 7900 60  0000 R CNN
F 1 "КТ315" H 7100 7450 60  0000 R CNN
F 2 "" H 6700 7650 60  0000 C CNN
F 3 "" H 6700 7650 60  0000 C CNN
	1    6700 7650
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 57E3D8C6
P 6450 7650
F 0 "R7" V 6530 7650 50  0000 C CNN
F 1 "1к" V 6450 7650 50  0000 C CNN
F 2 "" H 6450 7650 60  0000 C CNN
F 3 "" H 6450 7650 60  0000 C CNN
	1    6450 7650
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 57E3D8CC
P 7150 7150
F 0 "D3" H 7150 7250 50  0000 C CNN
F 1 "Игрок1" H 7150 7050 50  0000 C CNN
F 2 "" H 7150 7150 60  0000 C CNN
F 3 "" H 7150 7150 60  0000 C CNN
	1    7150 7150
	0    1    1    0   
$EndComp
$Comp
L POWER_VCC #~4
U 1 1 57E3D8D2
P 7150 6950
F 0 "#~4" V 6950 6700 60  0001 C CNN
F 1 "POWER_VCC" H 7300 6850 60  0001 C CNN
F 2 "" H 7150 6950 60  0000 C CNN
F 3 "" H 7150 6950 60  0000 C CNN
	1    7150 6950
	0    -1   -1   0   
$EndComp
$Comp
L POWER_GND #10
U 1 1 57E3D9EC
P 5850 7950
F 0 "#10" V 5800 7900 60  0001 C CNN
F 1 "POWER_GND" V 5900 7900 60  0001 C CNN
F 2 "" H 5850 7950 60  0001 C CNN
F 3 "" H 5850 7950 60  0001 C CNN
	1    5850 7950
	1    0    0    -1  
$EndComp
$Comp
L TR_NPN_BCE VT6
U 1 1 57E3D9F2
P 5400 7650
F 0 "VT6" H 5800 7900 60  0000 R CNN
F 1 "КТ315" H 5800 7450 60  0000 R CNN
F 2 "" H 5400 7650 60  0000 C CNN
F 3 "" H 5400 7650 60  0000 C CNN
	1    5400 7650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 57E3D9F8
P 5150 7650
F 0 "R6" V 5230 7650 50  0000 C CNN
F 1 "1к" V 5150 7650 50  0000 C CNN
F 2 "" H 5150 7650 60  0000 C CNN
F 3 "" H 5150 7650 60  0000 C CNN
	1    5150 7650
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 57E3D9FE
P 5850 7150
F 0 "D2" H 5850 7250 50  0000 C CNN
F 1 "Фальшстарт" H 5850 7050 50  0000 C CNN
F 2 "" H 5850 7150 60  0000 C CNN
F 3 "" H 5850 7150 60  0000 C CNN
	1    5850 7150
	0    1    1    0   
$EndComp
$Comp
L POWER_VCC #~3
U 1 1 57E3DA04
P 5850 6950
F 0 "#~3" V 5650 6700 60  0001 C CNN
F 1 "POWER_VCC" H 6000 6850 60  0001 C CNN
F 2 "" H 5850 6950 60  0000 C CNN
F 3 "" H 5850 6950 60  0000 C CNN
	1    5850 6950
	0    -1   -1   0   
$EndComp
$Comp
L POWER_GND #3
U 1 1 57E3DA9D
P 4550 7950
F 0 "#3" V 4500 7900 60  0001 C CNN
F 1 "POWER_GND" V 4600 7900 60  0001 C CNN
F 2 "" H 4550 7950 60  0001 C CNN
F 3 "" H 4550 7950 60  0001 C CNN
	1    4550 7950
	1    0    0    -1  
$EndComp
$Comp
L TR_NPN_BCE VT5
U 1 1 57E3DAA3
P 4100 7650
F 0 "VT5" H 4500 7900 60  0000 R CNN
F 1 "КТ315" H 4500 7450 60  0000 R CNN
F 2 "" H 4100 7650 60  0000 C CNN
F 3 "" H 4100 7650 60  0000 C CNN
	1    4100 7650
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 57E3DAA9
P 3850 7650
F 0 "R5" V 3930 7650 50  0000 C CNN
F 1 "1к" V 3850 7650 50  0000 C CNN
F 2 "" H 3850 7650 60  0000 C CNN
F 3 "" H 3850 7650 60  0000 C CNN
	1    3850 7650
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 57E3DAAF
P 4550 7150
F 0 "D1" H 4550 7250 50  0000 C CNN
F 1 "Таймер" H 4550 7050 50  0000 C CNN
F 2 "" H 4550 7150 60  0000 C CNN
F 3 "" H 4550 7150 60  0000 C CNN
	1    4550 7150
	0    1    1    0   
$EndComp
$Comp
L POWER_VCC #~2
U 1 1 57E3DAB5
P 4550 6950
F 0 "#~2" V 4350 6700 60  0001 C CNN
F 1 "POWER_VCC" H 4700 6850 60  0001 C CNN
F 2 "" H 4550 6950 60  0000 C CNN
F 3 "" H 4550 6950 60  0000 C CNN
	1    4550 6950
	0    -1   -1   0   
$EndComp
$Comp
L SPST SW9
U 1 1 57E3DCB1
P 4800 4750
F 0 "SW9" H 4800 4850 70  0000 C CNN
F 1 "Игрок3" H 4800 4650 70  0000 C CNN
F 2 "" H 4800 4750 60  0000 C CNN
F 3 "" H 4800 4750 60  0000 C CNN
	1    4800 4750
	1    0    0    -1  
$EndComp
$Comp
L SPST SW10
U 1 1 57E3DD2A
P 4800 5150
F 0 "SW10" H 4800 5250 70  0000 C CNN
F 1 "Игрок4" H 4800 5050 70  0000 C CNN
F 2 "" H 4800 5150 60  0000 C CNN
F 3 "" H 4800 5150 60  0000 C CNN
	1    4800 5150
	1    0    0    -1  
$EndComp
$Comp
L SPST SW3
U 1 1 57E3E133
P 4600 2150
F 0 "SW3" H 4600 2250 70  0000 C CNN
F 1 "Время1" H 4600 2050 70  0000 C CNN
F 2 "" H 4600 2150 60  0000 C CNN
F 3 "" H 4600 2150 60  0000 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
$Comp
L SPST SW4
U 1 1 57E3E139
P 4600 2500
F 0 "SW4" H 4600 2600 70  0000 C CNN
F 1 "Время2" H 4600 2400 70  0000 C CNN
F 2 "" H 4600 2500 60  0000 C CNN
F 3 "" H 4600 2500 60  0000 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
$Comp
L SPST SW5
U 1 1 57E3E13F
P 4600 2900
F 0 "SW5" H 4600 3000 70  0000 C CNN
F 1 "Время3" H 4600 2800 70  0000 C CNN
F 2 "" H 4600 2900 60  0000 C CNN
F 3 "" H 4600 2900 60  0000 C CNN
	1    4600 2900
	1    0    0    -1  
$EndComp
$Comp
L SPST SW6
U 1 1 57E3E145
P 4600 3250
F 0 "SW6" H 4600 3350 70  0000 C CNN
F 1 "Время4" H 4600 3150 70  0000 C CNN
F 2 "" H 4600 3250 60  0000 C CNN
F 3 "" H 4600 3250 60  0000 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1100 9400 1350
Connection ~ 9400 1200
Wire Wire Line
	9400 2000 9400 1750
Wire Wire Line
	9400 2450 9400 2750
Wire Wire Line
	8550 1200 9400 1200
Wire Wire Line
	8550 1200 8550 1550
Entry Wire Line
	3450 2800 3550 2700
Entry Wire Line
	3450 2700 3550 2600
Entry Wire Line
	3450 2600 3550 2500
Entry Wire Line
	3450 2500 3550 2400
Entry Wire Line
	3450 2400 3550 2300
Entry Wire Line
	3450 2300 3550 2200
Entry Wire Line
	3450 2200 3550 2100
Entry Wire Line
	3450 4500 3550 4400
Entry Wire Line
	3450 4400 3550 4300
Entry Wire Line
	3450 4300 3550 4200
Entry Wire Line
	3450 4200 3550 4100
Entry Wire Line
	3450 4100 3550 4000
Entry Wire Line
	3450 4000 3550 3900
Wire Bus Line
	3550 4400 3550 3900
Entry Wire Line
	4100 1350 4200 1250
Entry Wire Line
	4100 1700 4200 1600
Entry Wire Line
	4100 2250 4200 2150
Entry Wire Line
	4100 2600 4200 2500
Entry Wire Line
	4100 3000 4200 2900
Entry Wire Line
	4100 3350 4200 3250
Wire Bus Line
	4100 1350 4100 3500
$Comp
L POWER_GND #9
U 1 1 57E416F3
P 5000 3250
F 0 "#9" V 4950 3200 60  0001 C CNN
F 1 "POWER_GND" V 5050 3200 60  0001 C CNN
F 2 "" H 5000 3250 60  0001 C CNN
F 3 "" H 5000 3250 60  0001 C CNN
	1    5000 3250
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #8
U 1 1 57E41A16
P 5000 2900
F 0 "#8" V 4950 2850 60  0001 C CNN
F 1 "POWER_GND" V 5050 2850 60  0001 C CNN
F 2 "" H 5000 2900 60  0001 C CNN
F 3 "" H 5000 2900 60  0001 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #7
U 1 1 57E41A8D
P 5000 2500
F 0 "#7" V 4950 2450 60  0001 C CNN
F 1 "POWER_GND" V 5050 2450 60  0001 C CNN
F 2 "" H 5000 2500 60  0001 C CNN
F 3 "" H 5000 2500 60  0001 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #6
U 1 1 57E41B80
P 5000 2150
F 0 "#6" V 4950 2100 60  0001 C CNN
F 1 "POWER_GND" V 5050 2100 60  0001 C CNN
F 2 "" H 5000 2150 60  0001 C CNN
F 3 "" H 5000 2150 60  0001 C CNN
	1    5000 2150
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #5
U 1 1 57E41C87
P 5000 1600
F 0 "#5" V 4950 1550 60  0001 C CNN
F 1 "POWER_GND" V 5050 1550 60  0001 C CNN
F 2 "" H 5000 1600 60  0001 C CNN
F 3 "" H 5000 1600 60  0001 C CNN
	1    5000 1600
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #4
U 1 1 57E41CFE
P 5000 1250
F 0 "#4" V 4950 1200 60  0001 C CNN
F 1 "POWER_GND" V 5050 1200 60  0001 C CNN
F 2 "" H 5000 1250 60  0001 C CNN
F 3 "" H 5000 1250 60  0001 C CNN
	1    5000 1250
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #11
U 1 1 57E4277E
P 5200 4000
F 0 "#11" V 5150 3950 60  0001 C CNN
F 1 "POWER_GND" V 5250 3950 60  0001 C CNN
F 2 "" H 5200 4000 60  0001 C CNN
F 3 "" H 5200 4000 60  0001 C CNN
	1    5200 4000
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #12
U 1 1 57E427F5
P 5200 4350
F 0 "#12" V 5150 4300 60  0001 C CNN
F 1 "POWER_GND" V 5250 4300 60  0001 C CNN
F 2 "" H 5200 4350 60  0001 C CNN
F 3 "" H 5200 4350 60  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #13
U 1 1 57E428E6
P 5200 4750
F 0 "#13" V 5150 4700 60  0001 C CNN
F 1 "POWER_GND" V 5250 4700 60  0001 C CNN
F 2 "" H 5200 4750 60  0001 C CNN
F 3 "" H 5200 4750 60  0001 C CNN
	1    5200 4750
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #14
U 1 1 57E4295D
P 5200 5150
F 0 "#14" V 5150 5100 60  0001 C CNN
F 1 "POWER_GND" V 5250 5100 60  0001 C CNN
F 2 "" H 5200 5150 60  0001 C CNN
F 3 "" H 5200 5150 60  0001 C CNN
	1    5200 5150
	1    0    0    -1  
$EndComp
Entry Wire Line
	4300 4100 4400 4000
Entry Wire Line
	4300 4450 4400 4350
Entry Wire Line
	4300 4850 4400 4750
Entry Wire Line
	4300 5250 4400 5150
$Comp
L SPEAKER SP1
U 1 1 57E43CD7
P 8850 1650
F 0 "SP1" H 8750 1900 70  0000 C CNN
F 1 "SPEAKER" H 8750 1400 70  0000 C CNN
F 2 "" H 8850 1650 60  0000 C CNN
F 3 "" H 8850 1650 60  0000 C CNN
	1    8850 1650
	1    0    0    -1  
$EndComp
$Comp
L POWER_GND #1
U 1 1 57E4408A
P 8550 2350
F 0 "#1" V 8500 2300 60  0001 C CNN
F 1 "POWER_GND" V 8600 2300 60  0001 C CNN
F 2 "" H 8550 2350 60  0001 C CNN
F 3 "" H 8550 2350 60  0001 C CNN
	1    8550 2350
	1    0    0    -1  
$EndComp
$Comp
L TR_NPN_BCE VT4
U 1 1 57E44090
P 8100 2050
F 0 "VT4" H 8500 2300 60  0000 R CNN
F 1 "КТ315" H 8500 1850 60  0000 R CNN
F 2 "" H 8100 2050 60  0000 C CNN
F 3 "" H 8100 2050 60  0000 C CNN
	1    8100 2050
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 57E44096
P 7850 2050
F 0 "R4" V 7930 2050 50  0000 C CNN
F 1 "1к" V 7850 2050 50  0000 C CNN
F 2 "" H 7850 2050 60  0000 C CNN
F 3 "" H 7850 2050 60  0000 C CNN
	1    7850 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 7650 3600 6250
Wire Wire Line
	3600 6250 1200 6250
Wire Wire Line
	1200 6250 1200 4900
Wire Wire Line
	1200 4900 1450 4900
Wire Wire Line
	1450 5000 1450 6100
Wire Wire Line
	1450 6100 4900 6100
Wire Wire Line
	4900 6100 4900 7650
Wire Bus Line
	4000 4100 4300 4100
Wire Bus Line
	4300 4100 4300 5250
Entry Wire Line
	3450 4800 3550 4700
Entry Wire Line
	3450 4900 3550 4800
Entry Wire Line
	3450 5000 3550 4900
Entry Wire Line
	3450 5100 3550 5000
Wire Bus Line
	3550 4700 3550 5850
Wire Bus Line
	3550 5850 10050 5850
Entry Wire Line
	6200 5950 6300 5850
Wire Wire Line
	6200 7650 6200 5950
Wire Wire Line
	7400 7600 7400 5950
Wire Wire Line
	8700 7600 8700 5950
Wire Wire Line
	9950 7600 9950 5950
Entry Wire Line
	7400 5950 7500 5850
Entry Wire Line
	8700 5950 8800 5850
Entry Wire Line
	9950 5950 10050 5850
Wire Bus Line
	3550 900  3550 2700
Wire Wire Line
	3700 600  3700 2900
Wire Wire Line
	3700 2900 3550 2900
Wire Wire Line
	7600 2050 7600 600 
Wire Wire Line
	7600 600  3700 600 
$Comp
L 7SEGMENTS AFF?
U 1 1 57E4C46D
P 8000 3200
F 0 "AFF?" H 8000 3750 60  0000 C CNN
F 1 "7SEGMENTS" H 8000 2750 60  0000 C CNN
F 2 "" H 8000 3200 60  0001 C CNN
F 3 "" H 8000 3200 60  0001 C CNN
	1    8000 3200
	1    0    0    -1  
$EndComp
$Comp
L ULN2003 U?
U 1 1 57E4D074
P 6700 4600
F 0 "U?" H 6700 4700 70  0000 C CNN
F 1 "ULN2003" H 6700 4500 70  0000 C CNN
F 2 "" H 6700 4600 60  0001 C CNN
F 3 "" H 6700 4600 60  0001 C CNN
	1    6700 4600
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF?
U 1 1 57E4D07A
P 7950 4600
F 0 "AFF?" H 7950 5150 60  0000 C CNN
F 1 "7SEGMENTS" H 7950 4150 60  0000 C CNN
F 2 "" H 7950 4600 60  0001 C CNN
F 3 "" H 7950 4600 60  0001 C CNN
	1    7950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5200 3900 5200
Wire Wire Line
	3450 5300 3900 5300
Wire Wire Line
	3450 5400 3900 5400
Wire Wire Line
	3450 5500 3900 5500
Entry Wire Line
	3900 5200 4000 5100
Entry Wire Line
	3900 5300 4000 5200
Entry Wire Line
	3900 5400 4000 5300
Entry Wire Line
	3900 5500 4000 5400
Wire Bus Line
	4000 4100 4000 5400
Entry Wire Line
	3450 3000 3550 2900
$Comp
L ULN2003 U?
U 1 1 57E4C312
P 6750 3200
F 0 "U?" H 6750 3300 70  0000 C CNN
F 1 "ULN2003" H 6750 3100 70  0000 C CNN
F 2 "" H 6750 3200 60  0001 C CNN
F 3 "" H 6750 3200 60  0001 C CNN
	1    6750 3200
	1    0    0    -1  
$EndComp
Entry Wire Line
	6000 2900 6100 2800
Entry Wire Line
	6000 3000 6100 2900
Entry Wire Line
	6000 3100 6100 3000
Entry Wire Line
	6000 3200 6100 3100
Entry Wire Line
	6000 3300 6100 3200
Entry Wire Line
	6000 3400 6100 3300
Entry Wire Line
	6000 3500 6100 3400
Entry Wire Line
	5950 4300 6050 4200
Entry Wire Line
	5950 4400 6050 4300
Entry Wire Line
	5950 4500 6050 4400
Entry Wire Line
	5950 4600 6050 4500
Entry Wire Line
	5950 4700 6050 4600
Entry Wire Line
	5950 4800 6050 4700
Entry Wire Line
	5950 4900 6050 4800
Entry Wire Line
	3450 3100 3550 3000
Entry Wire Line
	3450 3200 3550 3100
Entry Wire Line
	3450 3300 3550 3200
Entry Wire Line
	3450 3400 3550 3300
Entry Wire Line
	3450 3500 3550 3400
Entry Wire Line
	3450 3600 3550 3500
Entry Wire Line
	3450 3700 3550 3600
Wire Bus Line
	5950 4900 5950 3650
Wire Bus Line
	5950 3650 3550 3650
Wire Bus Line
	3550 3650 3550 3000
Wire Bus Line
	6000 3500 6000 900 
Wire Bus Line
	6000 900  3550 900 
Wire Bus Line
	3550 3900 4100 3900
Wire Bus Line
	4100 3900 4100 3450
$Comp
L POWER_VCC U?
U 1 1 57E515A6
P 9100 3350
F 0 "U?" V 9150 3400 60  0001 C CNN
F 1 "POWER_VCC" H 9250 3250 60  0001 C CNN
F 2 "" H 9100 3350 60  0000 C CNN
F 3 "" H 9100 3350 60  0000 C CNN
	1    9100 3350
	1    0    0    -1  
$EndComp
Text Notes 9100 3250 0    60   ~ 0
12V
Text Notes 9450 1050 0    60   ~ 0
5V
Wire Wire Line
	8600 2750 9100 2750
Wire Wire Line
	9100 2750 9100 4150
Wire Wire Line
	9100 4150 8550 4150
Connection ~ 9100 3350
$EndSCHEMATC
