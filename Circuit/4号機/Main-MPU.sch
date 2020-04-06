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
EELAYER 25 0
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
L CONN_01X04 P1
U 1 1 59673DB1
P 7800 2800
F 0 "P1" H 7800 3050 50  0000 C CNN
F 1 "Serial" V 7900 2800 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B4B-PH-K_04x2.00mm_Straight" H 7800 2800 50  0001 C CNN
F 3 "" H 7800 2800 50  0000 C CNN
	1    7800 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P2
U 1 1 59673DD4
P 7800 3550
F 0 "P2" H 7800 3850 50  0000 C CNN
F 1 "Write" V 7900 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 7800 3550 50  0001 C CNN
F 3 "" H 7800 3550 50  0000 C CNN
	1    7800 3550
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 596740A9
P 6750 4400
F 0 "SW1" H 6900 4510 50  0000 C CNN
F 1 "SW_PUSH" H 6750 4320 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h7.3mm" H 6750 4400 50  0001 C CNN
F 3 "" H 6750 4400 50  0000 C CNN
	1    6750 4400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 596740E4
P 6450 4200
F 0 "R2" V 6530 4200 50  0000 C CNN
F 1 "1k" V 6450 4200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6380 4200 50  0001 C CNN
F 3 "" H 6450 4200 50  0000 C CNN
	1    6450 4200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 59674123
P 6450 4550
F 0 "C6" H 6460 4620 50  0000 L CNN
F 1 "1uF" H 6460 4470 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6450 4550 50  0001 C CNN
F 3 "" H 6450 4550 50  0000 C CNN
	1    6450 4550
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5967419D
P 5950 2650
F 0 "R1" V 6030 2650 50  0000 C CNN
F 1 "1k" V 5950 2650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5880 2650 50  0001 C CNN
F 3 "" H 5950 2650 50  0000 C CNN
	1    5950 2650
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR01
U 1 1 59674354
P 3400 2450
F 0 "#PWR01" H 3400 2300 50  0001 C CNN
F 1 "+5V" H 3400 2590 50  0000 C CNN
F 2 "" H 3400 2450 50  0000 C CNN
F 3 "" H 3400 2450 50  0000 C CNN
	1    3400 2450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 596745B1
P 3400 3650
F 0 "C5" H 3410 3720 50  0000 L CNN
F 1 "1uF" H 3410 3570 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3400 3650 50  0001 C CNN
F 3 "" H 3400 3650 50  0000 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
Text Label 5800 2850 2    60   ~ 0
INT
Text Label 7300 3650 0    60   ~ 0
+5V
Text Label 7300 3750 0    60   ~ 0
GND
$Comp
L Crystal Y1
U 1 1 5967543A
P 6050 3050
F 0 "Y1" H 6050 3200 50  0000 C CNN
F 1 "Crystal" H 6050 2900 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-4H_Vertical" H 6050 3050 50  0001 C CNN
F 3 "" H 6050 3050 50  0000 C CNN
	1    6050 3050
	1    0    0    -1  
$EndComp
Text Label 5800 4050 2    60   ~ 0
Rx
Text Label 7300 3550 0    60   ~ 0
Rx
Text Label 7300 3450 0    60   ~ 0
Tx
Text Label 5800 4150 2    60   ~ 0
Tx
Text Label 7300 3350 0    60   ~ 0
N_Rst
Text Label 5800 3900 2    60   ~ 0
N_Rst
$Comp
L +5V #PWR02
U 1 1 59675D4C
P 8250 2700
F 0 "#PWR02" H 8250 2550 50  0001 C CNN
F 1 "+5V" H 8250 2840 50  0000 C CNN
F 2 "" H 8250 2700 50  0000 C CNN
F 3 "" H 8250 2700 50  0000 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59675D52
P 8250 2900
F 0 "#PWR03" H 8250 2650 50  0001 C CNN
F 1 "GND" H 8250 2750 50  0000 C CNN
F 2 "" H 8250 2900 50  0000 C CNN
F 3 "" H 8250 2900 50  0000 C CNN
	1    8250 2900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 59675D58
P 8250 2800
F 0 "C1" H 8260 2870 50  0000 L CNN
F 1 "1uF" H 8260 2720 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8250 2800 50  0001 C CNN
F 3 "" H 8250 2800 50  0000 C CNN
	1    8250 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59675F97
P 6500 2650
F 0 "#PWR04" H 6500 2400 50  0001 C CNN
F 1 "GND" H 6500 2500 50  0000 C CNN
F 2 "" H 6500 2650 50  0000 C CNN
F 3 "" H 6500 2650 50  0000 C CNN
	1    6500 2650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5967601B
P 5850 3200
F 0 "C2" H 5860 3270 50  0000 L CNN
F 1 "22pF" H 5860 3120 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5850 3200 50  0001 C CNN
F 3 "" H 5850 3200 50  0000 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5967606A
P 6250 3200
F 0 "C3" H 6260 3270 50  0000 L CNN
F 1 "22pF" H 6260 3120 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6250 3200 50  0001 C CNN
F 3 "" H 6250 3200 50  0000 C CNN
	1    6250 3200
	1    0    0    -1  
$EndComp
Text Label 5800 3150 2    60   ~ 0
Xtal
Text Label 6500 3050 2    60   ~ 0
Xtal
$Comp
L GND #PWR05
U 1 1 59676ABC
P 6050 3350
F 0 "#PWR05" H 6050 3100 50  0001 C CNN
F 1 "GND" H 6050 3200 50  0000 C CNN
F 2 "" H 6050 3350 50  0000 C CNN
F 3 "" H 6050 3350 50  0000 C CNN
	1    6050 3350
	1    0    0    -1  
$EndComp
Text Label 7300 2850 0    60   ~ 0
+5V
Text Label 7300 2950 0    60   ~ 0
GND
Text Label 7300 2650 0    60   ~ 0
Tx
Text Label 7300 2750 0    60   ~ 0
Rx
Text Label 6100 4400 0    60   ~ 0
N_Rst
$Comp
L +5V #PWR06
U 1 1 5967770C
P 6450 4050
F 0 "#PWR06" H 6450 3900 50  0001 C CNN
F 1 "+5V" H 6450 4190 50  0000 C CNN
F 2 "" H 6450 4050 50  0000 C CNN
F 3 "" H 6450 4050 50  0000 C CNN
	1    6450 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59677740
P 6450 4700
F 0 "#PWR07" H 6450 4450 50  0001 C CNN
F 1 "GND" H 6450 4550 50  0000 C CNN
F 2 "" H 6450 4700 50  0000 C CNN
F 3 "" H 6450 4700 50  0000 C CNN
	1    6450 4700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 59677CF1
P 3100 2750
F 0 "#FLG08" H 3100 2845 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 2930 50  0000 C CNN
F 2 "" H 3100 2750 50  0000 C CNN
F 3 "" H 3100 2750 50  0000 C CNN
	1    3100 2750
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 59677D25
P 3100 4650
F 0 "#FLG09" H 3100 4745 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 4830 50  0000 C CNN
F 2 "" H 3100 4650 50  0000 C CNN
F 3 "" H 3100 4650 50  0000 C CNN
	1    3100 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59677E47
P 3400 4650
F 0 "#PWR010" H 3400 4400 50  0001 C CNN
F 1 "GND" H 3400 4500 50  0000 C CNN
F 2 "" H 3400 4650 50  0000 C CNN
F 3 "" H 3400 4650 50  0000 C CNN
	1    3400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2450 3400 3550
Wire Wire Line
	3100 2750 3600 2750
Wire Wire Line
	3400 3750 3400 4650
Wire Wire Line
	3100 4650 3600 4650
Wire Wire Line
	3600 4650 3600 4750
Wire Wire Line
	7600 3650 7300 3650
Wire Wire Line
	7600 3750 7300 3750
Wire Wire Line
	5500 4050 5800 4050
Wire Wire Line
	5500 4150 5800 4150
Wire Wire Line
	7600 3550 7300 3550
Wire Wire Line
	7600 3450 7300 3450
Wire Wire Line
	7600 3350 7300 3350
Wire Wire Line
	5800 3900 5500 3900
Wire Wire Line
	5500 3050 5900 3050
Wire Wire Line
	5850 3050 5850 3100
Connection ~ 5850 3050
Wire Wire Line
	5850 3300 5850 3350
Wire Wire Line
	5850 3350 6250 3350
Wire Wire Line
	6250 3350 6250 3300
Wire Wire Line
	6250 3100 6250 3050
Wire Wire Line
	6200 3050 6500 3050
Wire Wire Line
	5500 3150 5800 3150
Connection ~ 6250 3050
Connection ~ 6050 3350
Wire Wire Line
	7600 2650 7300 2650
Wire Wire Line
	7600 2750 7300 2750
Wire Wire Line
	7600 2850 7300 2850
Wire Wire Line
	7600 2950 7300 2950
Wire Wire Line
	6450 4350 6450 4450
Connection ~ 6450 4400
Wire Wire Line
	6450 4400 6100 4400
Wire Wire Line
	7050 4700 7050 4400
Wire Wire Line
	6450 4700 7050 4700
Wire Wire Line
	6450 4650 6450 4700
Connection ~ 3400 2750
Connection ~ 3400 4650
Wire Wire Line
	3600 2450 3400 2450
Wire Wire Line
	5500 2850 5800 2850
Wire Wire Line
	5800 2550 5800 2650
Wire Wire Line
	3400 3000 2950 3000
Connection ~ 3400 3000
Text Label 2950 3000 0    60   ~ 0
PowerLED
$Comp
L R R5
U 1 1 5A64AA0E
P 7300 2150
F 0 "R5" V 7380 2150 50  0000 C CNN
F 1 "1k" V 7300 2150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7230 2150 50  0001 C CNN
F 3 "" H 7300 2150 50  0000 C CNN
	1    7300 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 2150 6750 2150
Text Label 6750 2150 0    60   ~ 0
PowerLED
$Comp
L GND #PWR011
U 1 1 5A64AB9F
P 8100 2150
F 0 "#PWR011" H 8100 1900 50  0001 C CNN
F 1 "GND" H 8100 2000 50  0000 C CNN
F 2 "" H 8100 2150 50  0000 C CNN
F 3 "" H 8100 2150 50  0000 C CNN
	1    8100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2150 7550 2150
Wire Wire Line
	7950 2150 8100 2150
$Comp
L ATMEGA328P-P IC1
U 1 1 5BBB25CF
P 4500 3550
F 0 "IC1" H 3750 4800 50  0000 L BNN
F 1 "ATMEGA328P-P" H 4900 2150 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_LongPads" H 4500 3550 50  0001 C CIN
F 3 "" H 4500 3550 50  0000 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 5BBB2CD9
P 7800 4200
F 0 "P3" H 7800 4400 50  0000 C CNN
F 1 "38kHz_IR_Receive" V 7900 4200 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B3B-PH-K_03x2.00mm_Straight" H 7800 4200 50  0001 C CNN
F 3 "" H 7800 4200 50  0000 C CNN
	1    7800 4200
	1    0    0    -1  
$EndComp
Text Label 7300 4100 0    60   ~ 0
+5V
Text Label 7300 4300 0    60   ~ 0
GND
Wire Wire Line
	7600 4100 7300 4100
Wire Wire Line
	7600 4300 7300 4300
Text Label 5950 3600 2    60   ~ 0
38kHz_IR
Wire Wire Line
	5500 3600 5950 3600
Text Label 7150 4200 0    60   ~ 0
38kHz_IR
Wire Wire Line
	7150 4200 7600 4200
Wire Wire Line
	5700 4550 5500 4550
Wire Wire Line
	5600 4450 5500 4450
Wire Wire Line
	5500 2550 5800 2550
$Comp
L +5V #PWR012
U 1 1 5BC14BF4
P 8250 3500
F 0 "#PWR012" H 8250 3350 50  0001 C CNN
F 1 "+5V" H 8250 3640 50  0000 C CNN
F 2 "" H 8250 3500 50  0000 C CNN
F 3 "" H 8250 3500 50  0000 C CNN
	1    8250 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5BC14BFA
P 8250 3700
F 0 "#PWR013" H 8250 3450 50  0001 C CNN
F 1 "GND" H 8250 3550 50  0000 C CNN
F 2 "" H 8250 3700 50  0000 C CNN
F 3 "" H 8250 3700 50  0000 C CNN
	1    8250 3700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5BC14C00
P 8250 3600
F 0 "C4" H 8260 3670 50  0000 L CNN
F 1 "1uF" H 8260 3520 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8250 3600 50  0001 C CNN
F 3 "" H 8250 3600 50  0000 C CNN
	1    8250 3600
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 59674162
P 6300 2650
F 0 "D1" H 6300 2750 50  0000 C CNN
F 1 "Status" H 6300 2550 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6300 2650 50  0001 C CNN
F 3 "" H 6300 2650 50  0000 C CNN
	1    6300 2650
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 5A64A9AB
P 7750 2150
F 0 "D4" H 7750 2250 50  0000 C CNN
F 1 "Power" H 7750 2050 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 7750 2150 50  0001 C CNN
F 3 "" H 7750 2150 50  0000 C CNN
	1    7750 2150
	-1   0    0    1   
$EndComp
$EndSCHEMATC
