EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BF-031"
Date "2021-07-13"
Rev "V01L01"
Comp "Copyright 2021 BotanicFields, Inc."
Comment1 "RTC Module for M5Stack"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J1
U 1 1 5CD75190
P 8600 1750
F 0 "J1" H 8650 2667 50  0000 C CNN
F 1 "M-BUS" H 8650 2576 50  0000 C CNN
F 2 "bf:BF@M5Stack_MBUS" H 8600 1750 50  0001 C CNN
F 3 "~" H 8600 1750 50  0001 C CNN
	1    8600 1750
	-1   0    0    -1  
$EndComp
Text Label 8300 1350 2    50   ~ 0
GPIO23
Text Label 8300 1450 2    50   ~ 0
GPIO19
Text Label 8300 1550 2    50   ~ 0
GPIO18
Text Label 8300 1650 2    50   ~ 0
GPIO3
Text Label 8300 1750 2    50   ~ 0
GPIO16
Text Label 8300 1850 2    50   ~ 0
GPIO21
Text Label 8300 1950 2    50   ~ 0
GPIO2
Text Label 8300 2050 2    50   ~ 0
GPIO12
Text Label 8300 2150 2    50   ~ 0
GPIO15
Text Label 8800 1050 0    50   ~ 0
GPIO35
Text Label 8800 1150 0    50   ~ 0
GPIO36
Text Label 8800 1250 0    50   ~ 0
EN
Text Label 8800 1350 0    50   ~ 0
GPIO25
Text Label 8800 1450 0    50   ~ 0
GPIO26
Text Label 8800 1650 0    50   ~ 0
GPIO1
Text Label 8800 1750 0    50   ~ 0
GPIO17
Text Label 8800 1950 0    50   ~ 0
GPIO5
Text Label 8800 2050 0    50   ~ 0
GPIO13
Text Label 8800 2150 0    50   ~ 0
GPIO0
Text Label 8800 2250 0    50   ~ 0
GPIO34
$Comp
L power:+3V3 #PWR015
U 1 1 5CD7CFD7
P 9250 1300
F 0 "#PWR015" H 9250 1150 50  0001 C CNN
F 1 "+3V3" H 9265 1473 50  0000 C CNN
F 2 "" H 9250 1300 50  0001 C CNN
F 3 "" H 9250 1300 50  0001 C CNN
	1    9250 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5CD7D6A2
P 9250 2100
F 0 "#PWR019" H 9250 1950 50  0001 C CNN
F 1 "+5V" H 9265 2273 50  0000 C CNN
F 2 "" H 9250 2100 50  0001 C CNN
F 3 "" H 9250 2100 50  0001 C CNN
	1    9250 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR022
U 1 1 5CD7DF18
P 9750 2200
F 0 "#PWR022" H 9750 2050 50  0001 C CNN
F 1 "+BATT" H 9765 2373 50  0000 C CNN
F 2 "" H 9750 2200 50  0001 C CNN
F 3 "" H 9750 2200 50  0001 C CNN
	1    9750 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5CD7E40D
P 7750 1450
F 0 "#PWR017" H 7750 1200 50  0001 C CNN
F 1 "GND" H 7755 1277 50  0000 C CNN
F 2 "" H 7750 1450 50  0001 C CNN
F 3 "" H 7750 1450 50  0001 C CNN
	1    7750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5CD7EAAD
P 9500 2300
F 0 "#FLG04" H 9500 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 9500 2473 50  0000 C CNN
F 2 "" H 9500 2300 50  0001 C CNN
F 3 "~" H 9500 2300 50  0001 C CNN
	1    9500 2300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5CD8D31E
P 9500 1500
F 0 "#FLG03" H 9500 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 9500 1673 50  0000 C CNN
F 2 "" H 9500 1500 50  0001 C CNN
F 3 "~" H 9500 1500 50  0001 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5CD8D64D
P 10000 2400
F 0 "#FLG06" H 10000 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 10000 2573 50  0000 C CNN
F 2 "" H 10000 2400 50  0001 C CNN
F 3 "~" H 10000 2400 50  0001 C CNN
	1    10000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2350 9250 2350
Wire Wire Line
	7750 1050 8300 1050
Wire Wire Line
	8300 1150 7750 1150
Connection ~ 7750 1150
Wire Wire Line
	7750 1150 7750 1050
Wire Wire Line
	8300 1250 7750 1250
Connection ~ 7750 1250
Wire Wire Line
	7750 1250 7750 1150
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CD98ECD
P 7500 1000
F 0 "#FLG02" H 7500 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 1173 50  0000 C CNN
F 2 "" H 7500 1000 50  0001 C CNN
F 3 "~" H 7500 1000 50  0001 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2450 9750 2450
Wire Wire Line
	9500 1550 9250 1550
Wire Wire Line
	9750 2200 9750 2450
Wire Wire Line
	9250 2100 9250 2350
Wire Wire Line
	9250 1300 9250 1550
$Comp
L power:VBUS #PWR021
U 1 1 5CDC3382
P 7750 2200
F 0 "#PWR021" H 7750 2050 50  0001 C CNN
F 1 "VBUS" H 7765 2373 50  0000 C CNN
F 2 "" H 7750 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0001 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5CDC4D7C
P 7500 2400
F 0 "#FLG05" H 7500 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 2573 50  0000 C CNN
F 2 "" H 7500 2400 50  0001 C CNN
F 3 "~" H 7500 2400 50  0001 C CNN
	1    7500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2200 7750 2250
Wire Wire Line
	7750 2250 8300 2250
Wire Wire Line
	8300 2450 7750 2450
Wire Wire Line
	7750 2450 7750 2350
Connection ~ 7750 2250
Wire Wire Line
	8300 2350 7750 2350
Connection ~ 7750 2350
Wire Wire Line
	7750 2350 7750 2250
Wire Wire Line
	10000 2400 10000 2450
Wire Wire Line
	10000 2450 9750 2450
Wire Wire Line
	9500 2300 9500 2350
Wire Wire Line
	9500 2350 9250 2350
Wire Wire Line
	9500 1500 9500 1550
Wire Wire Line
	7500 2450 7750 2450
Connection ~ 7750 2450
Wire Wire Line
	7500 2400 7500 2450
Connection ~ 7750 1050
Wire Wire Line
	7750 1250 7750 1450
Text Label 8800 1850 0    50   ~ 0
GPIO22
$Comp
L Mechanical:MountingHole H1
U 1 1 5F54EC75
P 10500 750
F 0 "H1" H 10600 796 50  0000 L CNN
F 1 "MountingHole" H 10600 705 50  0000 L CNN
F 2 "bf:BF@MountingHole_3.2mm_M3" H 10500 750 50  0001 C CNN
F 3 "~" H 10500 750 50  0001 C CNN
	1    10500 750 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F54F74E
P 10500 1000
F 0 "H2" H 10600 1046 50  0000 L CNN
F 1 "MountingHole" H 10600 955 50  0000 L CNN
F 2 "bf:BF@MountingHole_3.2mm_M3" H 10500 1000 50  0001 C CNN
F 3 "~" H 10500 1000 50  0001 C CNN
	1    10500 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F54FB16
P 10500 1250
F 0 "H3" H 10600 1296 50  0000 L CNN
F 1 "MountingHole" H 10600 1205 50  0000 L CNN
F 2 "bf:BF@MountingHole_3.2mm_M3" H 10500 1250 50  0001 C CNN
F 3 "~" H 10500 1250 50  0001 C CNN
	1    10500 1250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F54FB20
P 10500 1500
F 0 "H4" H 10600 1546 50  0000 L CNN
F 1 "MountingHole" H 10600 1455 50  0000 L CNN
F 2 "bf:BF@MountingHole_3.2mm_M3" H 10500 1500 50  0001 C CNN
F 3 "~" H 10500 1500 50  0001 C CNN
	1    10500 1500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5F550331
P 10500 1750
F 0 "H5" H 10600 1796 50  0000 L CNN
F 1 "MountingHole" H 10600 1705 50  0000 L CNN
F 2 "bf:BF@MountingHole_2.2mm_M2" H 10500 1750 50  0001 C CNN
F 3 "~" H 10500 1750 50  0001 C CNN
	1    10500 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5F55033B
P 10500 2000
F 0 "H6" H 10600 2046 50  0000 L CNN
F 1 "MountingHole" H 10600 1955 50  0000 L CNN
F 2 "bf:BF@MountingHole_2.2mm_M2" H 10500 2000 50  0001 C CNN
F 3 "~" H 10500 2000 50  0001 C CNN
	1    10500 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5F550345
P 10500 2250
F 0 "H7" H 10600 2296 50  0000 L CNN
F 1 "MountingHole" H 10600 2205 50  0000 L CNN
F 2 "bf:BF@MountingHole_2.2mm_M2" H 10500 2250 50  0001 C CNN
F 3 "~" H 10500 2250 50  0001 C CNN
	1    10500 2250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5F55034F
P 10500 2500
F 0 "H8" H 10600 2546 50  0000 L CNN
F 1 "MountingHole" H 10600 2455 50  0000 L CNN
F 2 "bf:BF@MountingHole_2.2mm_M2" H 10500 2500 50  0001 C CNN
F 3 "~" H 10500 2500 50  0001 C CNN
	1    10500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1050 7750 1050
Wire Wire Line
	7500 1000 7500 1050
Connection ~ 9250 1550
Wire Wire Line
	9250 1550 8800 1550
Connection ~ 9250 2350
Connection ~ 9750 2450
$Comp
L Timer_RTC:PCF8563T U2
U 1 1 60543B77
P 6950 4950
F 0 "U2" H 6750 5350 50  0000 C CNN
F 1 "PCF8563T" H 7200 5350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6950 4950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PCF8563.pdf" H 6950 4950 50  0001 C CNN
	1    6950 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 60544218
P 4450 3850
F 0 "D1" H 4450 3633 50  0000 C CNN
F 1 "1N4148" H 4450 3724 50  0000 C CNN
F 2 "bf:BF@D_SOD-123" H 4450 3850 50  0001 C CNN
F 3 "~" H 4450 3850 50  0001 C CNN
	1    4450 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:D D2
U 1 1 60544495
P 4450 4850
F 0 "D2" H 4450 4633 50  0000 C CNN
F 1 "1N4148" H 4450 4724 50  0000 C CNN
F 2 "bf:BF@D_SOD-123" H 4450 4850 50  0001 C CNN
F 3 "~" H 4450 4850 50  0001 C CNN
	1    4450 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 60544845
P 4100 5150
F 0 "BT1" H 4218 5246 50  0000 L CNN
F 1 "CR1220/1225" H 4218 5155 50  0000 L CNN
F 2 "bf:BF@BatteryHolder_Takachi_SMTM1225" V 4100 5210 50  0001 C CNN
F 3 "~" V 4100 5210 50  0001 C CNN
	1    4100 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60545003
P 5200 4950
F 0 "C2" H 5315 4996 50  0000 L CNN
F 1 "15p" H 5315 4905 50  0000 L CNN
F 2 "bf:BF@C_0603_1608Metric" H 5238 4800 50  0001 C CNN
F 3 "~" H 5200 4950 50  0001 C CNN
	1    5200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6054EB78
P 4100 5300
F 0 "#PWR0103" H 4100 5050 50  0001 C CNN
F 1 "GND" H 4105 5127 50  0000 C CNN
F 2 "" H 4100 5300 50  0001 C CNN
F 3 "" H 4100 5300 50  0001 C CNN
	1    4100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5300 4100 5250
Wire Wire Line
	4600 3850 4650 3850
Wire Wire Line
	6950 3850 6950 4550
Wire Wire Line
	4600 4850 4650 4850
Wire Wire Line
	4650 4850 4650 3850
Connection ~ 4650 3850
Wire Wire Line
	4300 4850 4100 4850
Wire Wire Line
	4100 4850 4100 4950
Text Label 7350 4850 0    50   ~ 0
GPIO21
Text Label 7350 4750 0    50   ~ 0
GPIO22
$Comp
L Device:Crystal Y1
U 1 1 605553DC
P 6300 5150
F 0 "Y1" H 6300 5418 50  0000 C CNN
F 1 "32768Hz" H 6300 5327 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_MicroCrystal_CC7V-T1A-2Pin_3.2x1.5mm" H 6300 5150 50  0001 C CNN
F 3 "~" H 6300 5150 50  0001 C CNN
	1    6300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4750 6100 4750
Wire Wire Line
	6450 5150 6550 5150
$Comp
L Device:CTRIM C3
U 1 1 6055B72A
P 5700 4950
F 0 "C3" H 5815 4996 50  0000 L CNN
F 1 "30p" H 5815 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_Trimmer_Murata_TZC3" H 5700 4950 50  0001 C CNN
F 3 "~" H 5700 4950 50  0001 C CNN
	1    5700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4800 5700 4750
Wire Wire Line
	5200 4800 5200 4750
Wire Wire Line
	5200 4750 5700 4750
Connection ~ 5700 4750
$Comp
L power:GND #PWR0104
U 1 1 6055DB38
P 5700 5200
F 0 "#PWR0104" H 5700 4950 50  0001 C CNN
F 1 "GND" H 5705 5027 50  0000 C CNN
F 2 "" H 5700 5200 50  0001 C CNN
F 3 "" H 5700 5200 50  0001 C CNN
	1    5700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5100 5200 5150
Wire Wire Line
	5200 5150 5700 5150
Wire Wire Line
	5700 5150 5700 5200
Wire Wire Line
	5700 5150 5700 5100
Connection ~ 5700 5150
$Comp
L power:GND #PWR0105
U 1 1 6055EBB9
P 6950 5450
F 0 "#PWR0105" H 6950 5200 50  0001 C CNN
F 1 "GND" H 6955 5277 50  0000 C CNN
F 2 "" H 6950 5450 50  0001 C CNN
F 3 "" H 6950 5450 50  0001 C CNN
	1    6950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5450 6950 5350
$Comp
L Device:C C1
U 1 1 6055F54C
P 6400 4050
F 0 "C1" H 6515 4096 50  0000 L CNN
F 1 "100n" H 6515 4005 50  0000 L CNN
F 2 "bf:BF@C_0603_1608Metric" H 6438 3900 50  0001 C CNN
F 3 "~" H 6400 4050 50  0001 C CNN
	1    6400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3900 6400 3850
Wire Wire Line
	4650 3850 4900 3850
Connection ~ 6400 3850
Wire Wire Line
	6400 3850 6950 3850
$Comp
L power:GND #PWR0106
U 1 1 60562A50
P 6400 4250
F 0 "#PWR0106" H 6400 4000 50  0001 C CNN
F 1 "GND" H 6405 4077 50  0000 C CNN
F 2 "" H 6400 4250 50  0001 C CNN
F 3 "" H 6400 4250 50  0001 C CNN
	1    6400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4250 6400 4200
Wire Wire Line
	6100 5150 6100 4750
Wire Wire Line
	6100 5150 6150 5150
Connection ~ 6100 4750
Wire Wire Line
	6100 4750 5700 4750
Text Label 7350 5050 0    50   ~ 0
CLKO
Text Label 7350 5150 0    50   ~ 0
INT
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 605D0EA7
P 4900 3800
F 0 "#FLG0104" H 4900 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 3973 50  0000 C CNN
F 2 "" H 4900 3800 50  0001 C CNN
F 3 "~" H 4900 3800 50  0001 C CNN
	1    4900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3800 4900 3850
Connection ~ 4900 3850
Wire Wire Line
	4900 3850 6400 3850
Wire Wire Line
	4100 3850 4300 3850
Text Notes 5150 5750 0    50   ~ 0
Select either C2 or C3\n-C2 for fixed capacity\n-C3 for trimming
$Comp
L power:+3V3 #PWR0101
U 1 1 60C323F1
P 4100 3400
F 0 "#PWR0101" H 4100 3250 50  0001 C CNN
F 1 "+3V3" H 4115 3573 50  0000 C CNN
F 2 "" H 4100 3400 50  0001 C CNN
F 3 "" H 4100 3400 50  0001 C CNN
	1    4100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3400 4100 3850
Wire Wire Line
	7350 5150 8150 5150
Wire Wire Line
	7350 5050 7800 5050
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 60C453FB
P 9200 4950
F 0 "SW1" H 9200 5417 50  0000 C CNN
F 1 "SW_DIP_x04" H 9200 5326 50  0000 C CNN
F 2 "bf:BF@SW_DIP_SPSTx04_Slide_XKB_DSHP04TS-S_W7.62mm_P1.27mm" H 9200 4950 50  0001 C CNN
F 3 "~" H 9200 4950 50  0001 C CNN
	1    9200 4950
	-1   0    0    -1  
$EndComp
Text Label 9500 4950 0    50   ~ 0
GPIO35
Text Label 9500 5050 0    50   ~ 0
GPIO36
Text Label 9500 4850 0    50   ~ 0
GPIO13
$Comp
L Device:R R1
U 1 1 60C55979
P 7800 4500
F 0 "R1" H 7870 4546 50  0000 L CNN
F 1 "10k" H 7870 4455 50  0000 L CNN
F 2 "bf:BF@R_0603_1608Metric" V 7730 4500 50  0001 C CNN
F 3 "~" H 7800 4500 50  0001 C CNN
	1    7800 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60C5617B
P 8150 4500
F 0 "R2" H 8220 4546 50  0000 L CNN
F 1 "10k" H 8220 4455 50  0000 L CNN
F 2 "bf:BF@R_0603_1608Metric" V 8080 4500 50  0001 C CNN
F 3 "~" H 8150 4500 50  0001 C CNN
	1    8150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4650 7800 5050
Connection ~ 7800 5050
Wire Wire Line
	8150 4650 8150 5150
Connection ~ 8150 5150
$Comp
L power:+3V3 #PWR0102
U 1 1 60C59910
P 7800 4150
F 0 "#PWR0102" H 7800 4000 50  0001 C CNN
F 1 "+3V3" H 7815 4323 50  0000 C CNN
F 2 "" H 7800 4150 50  0001 C CNN
F 3 "" H 7800 4150 50  0001 C CNN
	1    7800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4150 7800 4300
Wire Wire Line
	8150 4350 8150 4300
Wire Wire Line
	8150 4300 7800 4300
Connection ~ 7800 4300
Wire Wire Line
	7800 4300 7800 4350
NoConn ~ 8300 1350
NoConn ~ 8300 1450
NoConn ~ 8300 1550
NoConn ~ 8300 1650
NoConn ~ 8300 1750
NoConn ~ 8300 1950
NoConn ~ 8300 2050
NoConn ~ 8300 2150
NoConn ~ 8800 2150
NoConn ~ 8800 1950
NoConn ~ 8800 1750
NoConn ~ 8800 1650
NoConn ~ 8800 1450
NoConn ~ 8800 1350
Wire Wire Line
	7800 5050 8900 5050
Text Label 9500 4750 0    50   ~ 0
EN
Wire Wire Line
	8150 5150 8800 5150
Wire Wire Line
	8900 4750 8800 4750
Wire Wire Line
	8800 4750 8800 4850
Wire Wire Line
	8900 4850 8800 4850
Connection ~ 8800 4850
Wire Wire Line
	8800 4850 8800 4950
Wire Wire Line
	8900 4950 8800 4950
Connection ~ 8800 4950
Wire Wire Line
	8800 4950 8800 5150
NoConn ~ 8800 2250
$EndSCHEMATC