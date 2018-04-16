EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:pspice
LIBS:lowpass_filter-cache
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
L R R1
U 1 1 5AD3CA2F
P 3700 2500
F 0 "R1" V 3780 2500 50  0000 C CNN
F 1 "10k" V 3700 2500 50  0000 C CNN
F 2 "" V 3630 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5AD3CCBC
P 4000 2650
F 0 "C1" H 4025 2750 50  0000 L CNN
F 1 "15.9n" H 4025 2550 50  0000 L CNN
F 2 "" H 4038 2500 50  0001 C CNN
F 3 "" H 4000 2650 50  0001 C CNN
	1    4000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2500 3550 2500
Wire Wire Line
	3850 2500 4000 2500
$Comp
L GND #PWR01
U 1 1 5AD3CD24
P 4000 2900
F 0 "#PWR01" H 4000 2650 50  0001 C CNN
F 1 "GND" H 4000 2750 50  0000 C CNN
F 2 "" H 4000 2900 50  0001 C CNN
F 3 "" H 4000 2900 50  0001 C CNN
	1    4000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2800 4000 2900
Text GLabel 4000 2300 2    60   Output ~ 0
Vout
Wire Wire Line
	4000 2500 4000 2300
$Comp
L VSOURCE V1
U 1 1 5AD4C6FE
P 3400 3450
F 0 "V1" H 3400 3350 50  0000 C CNN
F 1 "DC 0 AC 1 sin(0 1.0 100k)" H 3400 3550 50  0000 C CNN
F 2 "" H 3400 3450 50  0001 C CNN
F 3 "" H 3400 3450 50  0001 C CNN
	1    3400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2750 3400 2500
Text GLabel 3200 2500 0    60   Input ~ 0
Vin
Connection ~ 3400 2500
$Comp
L GND #PWR02
U 1 1 5AD4C87E
P 3400 4450
F 0 "#PWR02" H 3400 4200 50  0001 C CNN
F 1 "GND" H 3400 4300 50  0000 C CNN
F 2 "" H 3400 4450 50  0001 C CNN
F 3 "" H 3400 4450 50  0001 C CNN
	1    3400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4450 3400 4150
Text Notes 4300 3800 0    60   ~ 0
+PSPICE\n.include ./run.com
$Comp
L GND #PWR?
U 1 1 5AD4D20E
P 3800 4500
F 0 "#PWR?" H 3800 4250 50  0001 C CNN
F 1 "GND" H 3800 4350 50  0000 C CNN
F 2 "" H 3800 4500 50  0001 C CNN
F 3 "" H 3800 4500 50  0001 C CNN
	1    3800 4500
	1    0    0    -1  
$EndComp
$Comp
L 0 #GND?
U 1 1 5AD4D228
P 4000 4550
F 0 "#GND?" H 4000 4450 50  0001 C CNN
F 1 "0" H 4000 4480 50  0000 C CNN
F 2 "" H 4000 4550 50  0001 C CNN
F 3 "" H 4000 4550 50  0001 C CNN
	1    4000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 4000 4500
Wire Wire Line
	4000 4500 4000 4550
$EndSCHEMATC
