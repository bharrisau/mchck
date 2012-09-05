EESchema Schematic File Version 2  date Wed Sep  5 16:35:40 2012
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
LIBS:microsd
LIBS:conn_16
LIBS:conn_15
LIBS:conn_18
LIBS:mcp73831
LIBS:SparkFun
LIBS:tac_switchsmd_evqp2
LIBS:cn3063
LIBS:mic5205
LIBS:NUC120_QFN48
LIBS:mcp1702
LIBS:multireg
LIBS:inductor_select
LIBS:logo
LIBS:MK20LF
LIBS:mchck-cache
EELAYER 25  0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "MC HCK power distribution"
Date "5 sep 2012"
Rev "4"
Comp "(c) 2011,2012 Simon Schubert"
Comment1 "CERN OHL v.1.1 or later"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PWR_FLAG #FLG025
U 1 1 4F25B2E7
P 4650 2400
F 0 "#FLG025" H 4650 2495 30  0001 C CNN
F 1 "PWR_FLAG" H 4650 2580 30  0000 C CNN
	1    4650 2400
	1    0    0    -1  
$EndComp
Text Notes 2950 2150 0    40   ~ 0
Cut track and install if VRAW\nand VBUS operation desired
Text Notes 2000 5700 0    40   Italic 0
Optional LiPo charger
$Comp
L DIODE-SCHOTTKY_ D2
U 1 1 4F22EB14
P 3100 2400
F 0 "D2" H 3200 2419 50  0000 L BNN
F 1 "CDBU0530" H 2950 2250 50  0001 L BNN
F 2 "SOD-523F-NC" H 3100 2550 50  0001 C CNN
	1    3100 2400
	1    0    0    -1  
$EndComp
$Comp
L CAP0805 C9
U 1 1 4F22E9AF
P 3650 6400
F 0 "C9" H 3710 6515 50  0000 L BNN
F 1 "4.7u" H 3710 6315 50  0000 L BNN
F 2 "SM0805" H 3650 6550 50  0001 C CNN
	1    3650 6400
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 4F22E7C7
P 3250 6600
F 0 "R6" H 3300 6700 50  0000 L CNN
F 1 "20k" H 3300 6600 50  0000 L CNN
F 2 "SM0603" V 3350 6600 50  0001 C CNN
	1    3250 6600
	1    0    0    -1  
$EndComp
Text Notes 3400 6800 0    40   ~ 0
Ichg = 1000V/Rprog\nRprog = 1000V/Ichg\n\nfor 50mA, Rprog = 20k
$Comp
L CONN_1 P7
U 1 1 4F22E691
P 1600 6400
F 0 "P7" H 1680 6400 40  0000 L CNN
F 1 "CHRG_STAT" H 1600 6455 30  0000 C CNN
F 2 "SparkFun-PAD.03X.03" H 1600 6555 30  0001 C CNN
	1    1600 6400
	-1   0    0    1   
$EndComp
$Comp
L MCP73831-SOT U3
U 1 1 4F22DEC3
P 2300 6250
F 0 "U3" H 2100 5900 60  0000 C CNN
F 1 "MCP73831-SOT" H 2300 6550 60  0000 C CNN
F 2 "SOT23-5" H 2300 6650 60  0001 C CNN
	1    2300 6250
	1    0    0    -1  
$EndComp
$Comp
L CAP0805 C7
U 1 1 4F22DDA9
P 4950 2750
F 0 "C7" H 5000 2850 50  0000 L CNN
F 1 "10u" H 5000 2650 50  0000 L CNN
F 2 "SM0805" H 5000 2750 50  0001 C CNN
	1    4950 2750
	1    0    0    -1  
$EndComp
$Comp
L DIODE-SCHOTTKY_ D3
U 1 1 5030034E
P 4000 5700
F 0 "D3" V 4100 5500 50  0000 L BNN
F 1 "CDBU0530" H 3850 5550 50  0001 L BNN
F 2 "SOD-523F" H 4000 5850 50  0001 C CNN
	1    4000 5700
	0    -1   -1   0   
$EndComp
$Comp
L CAP0805 C8
U 1 1 503156DF
P 6500 2750
F 0 "C8" H 6550 2850 50  0000 L CNN
F 1 "10u" H 6550 2650 50  0000 L CNN
F 2 "SM0805" H 6550 2750 50  0001 C CNN
	1    6500 2750
	1    0    0    -1  
$EndComp
Text Notes 4700 1300 0    40   Italic 0
Optional LDO or DC/DC reg if 3.3V operation\nor high input voltage is required
$Comp
L MULTIREG U4
U 1 1 503BF088
P 5650 2550
F 0 "U4" H 5500 2850 60  0000 C CNN
F 1 "MULTIREG" H 5650 2200 60  0000 C CNN
F 2 "SOT23-5" H 5650 2300 60  0001 C CNN
	1    5650 2550
	1    0    0    -1  
$EndComp
$Comp
L SOLDERJUMPERNO SJ1
U 1 1 503BFB94
P 6300 2600
F 0 "SJ1" H 6200 2700 50  0000 L BNN
F 1 "SOLDERJUMPERNO" H 6300 2600 50  0001 L BNN
F 2 "SparkFun-SJ_2VerySmall-NO" H 6300 2750 50  0001 C CNN
	1    6300 2600
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR_SELECT L2
U 1 1 503C00A7
P 5650 2100
F 0 "L2" H 5650 2200 50  0000 C CNN
F 1 "INDUCTOR_SELECT" H 5700 2050 50  0001 C CNN
F 2 "SM0805-3WAY" H 5400 2100 60  0001 C CNN
	1    5650 2100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG026
U 1 1 503C02A4
P 8700 2400
F 0 "#FLG026" H 8700 2495 30  0001 C CNN
F 1 "PWR_FLAG" H 8700 2580 30  0000 C CNN
	1    8700 2400
	-1   0    0    1   
$EndComp
Text Notes 4600 1550 0    40   ~ 0
LDO, e.g. MIC5205 (16V, 150mA, 1uA Iq): bridge L2/out\n\nany DC/DC regulator:  bridge SJ1\nstep-down, e.g. LM3671 (5.5V, 600mA, 16uA Iq):  place L across L2/out \nstep-up, e.g. TPS61097 (5.5V, 350mA, 5uA Iq):    place L across L2/in
Text Notes 5450 2050 0    40   ~ 0
in
Text Notes 5750 2050 0    40   ~ 0
out
$Comp
L GNDPWR #PWR027
U 1 1 50460DF5
P 2950 6650
F 0 "#PWR027" H 2950 6700 40  0001 C CNN
F 1 "GNDPWR" H 2950 6570 40  0000 C CNN
	1    2950 6650
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR028
U 1 1 50460E0E
P 3250 6900
F 0 "#PWR028" H 3250 6950 40  0001 C CNN
F 1 "GNDPWR" H 3250 6820 40  0000 C CNN
	1    3250 6900
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR029
U 1 1 50460E27
P 3650 6600
F 0 "#PWR029" H 3650 6650 40  0001 C CNN
F 1 "GNDPWR" H 3650 6520 40  0000 C CNN
	1    3650 6600
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR030
U 1 1 50460E36
P 4950 3100
F 0 "#PWR030" H 4950 3150 40  0001 C CNN
F 1 "GNDPWR" H 4950 3020 40  0000 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR031
U 1 1 50460E45
P 6500 3100
F 0 "#PWR031" H 6500 3150 40  0001 C CNN
F 1 "GNDPWR" H 6500 3020 40  0000 C CNN
	1    6500 3100
	1    0    0    -1  
$EndComp
Text Notes 7600 2700 0    40   Italic 0
Optional ferrite filters
$Comp
L VSS #PWR032
U 1 1 5046655A
P 8950 3100
F 0 "#PWR032" H 8950 3100 30  0001 C CNN
F 1 "VSS" H 8950 3030 30  0000 C CNN
	1    8950 3100
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB3
U 1 1 504667D4
P 7950 2400
F 0 "FB3" H 7950 2550 60  0000 C CNN
F 1 "FILTER" H 7950 2300 60  0001 C CNN
F 2 "SM0603_NC" H 7950 2400 60  0001 C CNN
	1    7950 2400
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB4
U 1 1 5046681B
P 7950 3000
F 0 "FB4" H 7950 3150 60  0000 C CNN
F 1 "FILTER" H 7950 2900 60  0001 C CNN
F 2 "SM0603_NC" H 7950 3000 60  0001 C CNN
	1    7950 3000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG033
U 1 1 504736E7
P 8700 3000
F 0 "#FLG033" H 8700 3095 30  0001 C CNN
F 1 "PWR_FLAG" H 8700 3180 30  0000 C CNN
	1    8700 3000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG034
U 1 1 50473A92
P 1900 2300
F 0 "#FLG034" H 1900 2395 30  0001 C CNN
F 1 "PWR_FLAG" H 1900 2480 30  0000 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG035
U 1 1 50474008
P 1800 2950
F 0 "#FLG035" H 1800 3045 30  0001 C CNN
F 1 "PWR_FLAG" H 1800 3130 30  0000 C CNN
	1    1800 2950
	0    -1   -1   0   
$EndComp
$Comp
L GNDPWR #PWR036
U 1 1 50474017
P 2050 3050
F 0 "#PWR036" H 2050 3100 40  0001 C CNN
F 1 "GNDPWR" H 2050 2970 40  0000 C CNN
	1    2050 3050
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 50477AE0
P 2050 2750
F 0 "C11" H 2100 2850 50  0000 L CNN
F 1 "2.2u" H 2100 2650 50  0000 L CNN
F 2 "SM0603_Capa" H 2100 2750 50  0001 C CNN
	1    2050 2750
	1    0    0    -1  
$EndComp
$Comp
L SOLDERJUMPERNC SJ5
U 1 1 50478372
P 9450 2400
F 0 "SJ5" H 9350 2500 50  0000 L BNN
F 1 "SOLDERJUMPERNC" H 9450 2400 50  0001 L BNN
F 2 "SM0603_NC" H 9450 2550 50  0001 C CNN
	1    9450 2400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG037
U 1 1 50478993
P 10050 2400
F 0 "#FLG037" H 10050 2495 30  0001 C CNN
F 1 "PWR_FLAG" H 10050 2580 30  0000 C CNN
	1    10050 2400
	-1   0    0    1   
$EndComp
Text HLabel 1300 1800 1    40   Input ~ 0
VBUS
Text HLabel 2600 1800 1    40   Output ~ 0
+5V
Text HLabel 4100 1800 1    40   Input ~ 0
VRAW
Text HLabel 7250 1800 1    40   BiDi ~ 0
VREGOUT
Text HLabel 9850 1800 1    40   BiDi ~ 0
+BATT
Wire Notes Line
	3900 2000 2850 2000
Wire Notes Line
	3900 2000 3900 2550
Wire Notes Line
	3900 2550 2850 2550
Wire Notes Line
	2850 2550 2850 2000
Connection ~ 4000 6100
Wire Wire Line
	4000 6100 4000 5800
Wire Wire Line
	3650 6500 3650 6600
Wire Wire Line
	3250 6350 3250 6250
Wire Wire Line
	3250 6250 2600 6250
Wire Wire Line
	2600 6100 4350 6100
Wire Wire Line
	4950 2400 4950 2550
Wire Wire Line
	4950 2850 4950 3100
Connection ~ 4950 2400
Wire Wire Line
	2600 6400 2950 6400
Wire Wire Line
	2950 6400 2950 6650
Wire Wire Line
	2000 6400 1750 6400
Wire Wire Line
	3250 6850 3250 6900
Wire Wire Line
	3650 6200 3650 6100
Connection ~ 3650 6100
Wire Wire Line
	1300 2400 3000 2400
Wire Notes Line
	4800 5350 1050 5350
Wire Notes Line
	4800 5350 4800 7250
Wire Notes Line
	4800 7250 1050 7250
Wire Notes Line
	1050 7250 1050 5350
Wire Wire Line
	6500 2400 6500 2550
Wire Wire Line
	6500 2850 6500 3100
Connection ~ 6500 2400
Wire Wire Line
	6250 2400 7600 2400
Wire Notes Line
	7000 1150 7000 3350
Wire Notes Line
	7000 3350 4450 3350
Wire Notes Line
	4450 3350 4450 1150
Wire Notes Line
	4450 1150 7000 1150
Wire Wire Line
	5250 2550 5150 2550
Wire Wire Line
	5150 2550 5150 3000
Wire Wire Line
	5150 3000 4950 3000
Connection ~ 4950 3000
Wire Wire Line
	5250 2700 5200 2700
Wire Wire Line
	5200 2700 5200 2400
Connection ~ 5200 2400
Wire Wire Line
	6050 2700 6050 2800
Wire Wire Line
	6050 2800 6300 2800
Connection ~ 6300 2400
Wire Wire Line
	5950 2100 6250 2100
Wire Wire Line
	6250 2100 6250 2400
Wire Wire Line
	5350 2100 5000 2100
Wire Wire Line
	5000 2100 5000 2400
Connection ~ 5000 2400
Wire Wire Line
	6050 2400 6050 2250
Wire Wire Line
	6050 2250 5650 2250
Wire Wire Line
	5650 2250 5650 2100
Wire Wire Line
	8950 2400 8950 1800
Wire Wire Line
	8300 2400 9250 2400
Wire Notes Line
	8400 2150 7500 2150
Wire Wire Line
	6500 3000 7600 3000
Wire Wire Line
	8300 3000 8950 3000
Wire Notes Line
	7500 3150 8400 3150
Wire Notes Line
	8400 3150 8400 2150
Wire Notes Line
	7500 2150 7500 3150
Wire Wire Line
	8950 3000 8950 3100
Connection ~ 6500 3000
Connection ~ 8700 2400
Wire Wire Line
	9850 1800 9850 2400
Connection ~ 8950 2400
Wire Wire Line
	4100 1800 4100 2400
Connection ~ 4650 2400
Wire Wire Line
	1300 6100 2000 6100
Wire Wire Line
	2400 2400 2400 2400
Wire Wire Line
	2400 2400 2400 5150
Connection ~ 2400 2400
Wire Wire Line
	3200 2400 5250 2400
Connection ~ 4100 2400
Wire Wire Line
	7250 1800 7250 2400
Connection ~ 7250 2400
Connection ~ 8700 3000
Wire Wire Line
	2050 2950 2050 3050
Connection ~ 2050 2400
Wire Wire Line
	2050 2550 2050 2400
Wire Wire Line
	1900 2300 1900 2400
Connection ~ 1900 2400
Wire Wire Line
	1800 2950 2050 2950
Wire Wire Line
	9650 2400 10050 2400
Connection ~ 9850 2400
Wire Wire Line
	4000 5600 4000 5150
Wire Wire Line
	4000 5150 2400 5150
Wire Wire Line
	2600 2400 2600 1800
Connection ~ 2600 2400
Wire Wire Line
	1300 1800 1300 6100
Connection ~ 1300 2400
Text HLabel 4350 6100 2    40   BiDi ~ 0
VLIPO
$Comp
L +3.3V #PWR038
U 1 1 504ACC5D
P 8950 1800
F 0 "#PWR038" H 8950 1760 30  0001 C CNN
F 1 "+3.3V" H 8950 1910 30  0000 C CNN
	1    8950 1800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
