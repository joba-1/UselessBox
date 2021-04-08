EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Useless Box"
Date "2021-04-09"
Rev "1"
Comp "Joachim Banzhaf"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ST_STM32L0:STM32L011F4Px U1
U 1 1 606F3824
P 6250 3650
F 0 "U1" H 6200 2761 50  0000 C CNN
F 1 "STM32L011F4Px" H 6200 2670 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5850 2950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00206508.pdf" H 6250 3650 50  0001 C CNN
	1    6250 3650
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M1
U 1 1 606F5D94
P 8150 3750
F 0 "M1" H 8482 3815 50  0000 L CNN
F 1 "Motor_Servo" H 8482 3724 50  0000 L CNN
F 2 "" H 8150 3560 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8150 3560 50  0001 C CNN
	1    8150 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 606F77A7
P 3450 5600
F 0 "J1" H 3558 5981 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3558 5890 50  0000 C CNN
F 2 "" H 3450 5600 50  0001 C CNN
F 3 "~" H 3450 5600 50  0001 C CNN
	1    3450 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 606F92AB
P 7250 3800
F 0 "D1" H 7243 4017 50  0000 C CNN
F 1 "LED" H 7243 3926 50  0000 C CNN
F 2 "" H 7250 3800 50  0001 C CNN
F 3 "~" H 7250 3800 50  0001 C CNN
	1    7250 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 606FA16C
P 5650 2900
F 0 "R2" H 5720 2946 50  0000 L CNN
F 1 "10k" H 5720 2855 50  0000 L CNN
F 2 "" V 5580 2900 50  0001 C CNN
F 3 "~" H 5650 2900 50  0001 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 606FA9B5
P 5500 4250
F 0 "R1" V 5707 4250 50  0000 C CNN
F 1 "10k" V 5616 4250 50  0000 C CNN
F 2 "" V 5430 4250 50  0001 C CNN
F 3 "~" H 5500 4250 50  0001 C CNN
	1    5500 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 606FB315
P 7300 3150
F 0 "R3" V 7507 3150 50  0000 C CNN
F 1 "10k" V 7416 3150 50  0000 C CNN
F 2 "" V 7230 3150 50  0001 C CNN
F 3 "~" H 7300 3150 50  0001 C CNN
	1    7300 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3050 5650 3150
Wire Wire Line
	5650 3150 5750 3150
$Comp
L power:GND #PWR09
U 1 1 606FD93B
P 5250 4350
F 0 "#PWR09" H 5250 4100 50  0001 C CNN
F 1 "GND" H 5255 4177 50  0000 C CNN
F 2 "" H 5250 4350 50  0001 C CNN
F 3 "" H 5250 4350 50  0001 C CNN
	1    5250 4350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 606FF26A
P 6750 2850
F 0 "SW1" H 6750 3085 50  0000 C CNN
F 1 "SW_SPST" H 6750 2994 50  0000 C CNN
F 2 "" H 6750 2850 50  0001 C CNN
F 3 "~" H 6750 2850 50  0001 C CNN
	1    6750 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6070084F
P 3800 4200
F 0 "#FLG02" H 3800 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 4373 50  0000 C CNN
F 2 "" H 3800 4200 50  0001 C CNN
F 3 "~" H 3800 4200 50  0001 C CNN
	1    3800 4200
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60700F47
P 4200 4200
F 0 "#FLG03" H 4200 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 4373 50  0000 C CNN
F 2 "" H 4200 4200 50  0001 C CNN
F 3 "~" H 4200 4200 50  0001 C CNN
	1    4200 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 60701A61
P 3400 2550
F 0 "BT1" H 3518 2646 50  0000 L CNN
F 1 "Battery_Cell" H 3518 2555 50  0000 L CNN
F 2 "" V 3400 2610 50  0001 C CNN
F 3 "~" V 3400 2610 50  0001 C CNN
	1    3400 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT2
U 1 1 607037E4
P 3400 3050
F 0 "BT2" H 3518 3146 50  0000 L CNN
F 1 "Battery_Cell" H 3518 3055 50  0000 L CNN
F 2 "" V 3400 3110 50  0001 C CNN
F 3 "~" V 3400 3110 50  0001 C CNN
	1    3400 3050
	1    0    0    -1  
$EndComp
Text GLabel 3750 5400 2    50   Output ~ 0
SWCLK
Text GLabel 3750 5500 2    50   Output ~ 0
SWDIO
Text GLabel 3750 5600 2    50   Output ~ 0
RESET
Text GLabel 3750 5700 2    50   Input ~ 0
TX
Wire Wire Line
	3750 5400 3650 5400
Wire Wire Line
	3750 5500 3650 5500
Wire Wire Line
	3750 5600 3650 5600
Wire Wire Line
	3750 5700 3650 5700
$Comp
L power:GND #PWR07
U 1 1 6070BD7B
P 4250 6000
F 0 "#PWR07" H 4250 5750 50  0001 C CNN
F 1 "GND" H 4255 5827 50  0000 C CNN
F 2 "" H 4250 6000 50  0001 C CNN
F 3 "" H 4250 6000 50  0001 C CNN
	1    4250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5900 4250 6000
Wire Wire Line
	4250 5700 4250 5800
$Comp
L power:GND #PWR08
U 1 1 60710031
P 4400 4500
F 0 "#PWR08" H 4400 4250 50  0001 C CNN
F 1 "GND" H 4405 4327 50  0000 C CNN
F 2 "" H 4400 4500 50  0001 C CNN
F 3 "" H 4400 4500 50  0001 C CNN
	1    4400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4100 3800 4200
Wire Wire Line
	4200 4100 4200 4200
Wire Wire Line
	3400 2650 3400 2750
$Comp
L power:GND #PWR02
U 1 1 607146E9
P 3400 3250
F 0 "#PWR02" H 3400 3000 50  0001 C CNN
F 1 "GND" H 3405 3077 50  0000 C CNN
F 2 "" H 3400 3250 50  0001 C CNN
F 3 "" H 3400 3250 50  0001 C CNN
	1    3400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3150 3400 3250
Wire Wire Line
	4100 2650 4100 2750
Wire Wire Line
	3400 2750 4100 2750
Connection ~ 3400 2750
Wire Wire Line
	3400 2750 3400 2850
$Comp
L power:+3V0 #PWR05
U 1 1 60716596
P 4100 2650
F 0 "#PWR05" H 4100 2500 50  0001 C CNN
F 1 "+3V0" H 4115 2823 50  0000 C CNN
F 2 "" H 4100 2650 50  0001 C CNN
F 3 "" H 4100 2650 50  0001 C CNN
	1    4100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR01
U 1 1 60717079
P 3400 2250
F 0 "#PWR01" H 3400 2100 50  0001 C CNN
F 1 "+6V" H 3415 2423 50  0000 C CNN
F 2 "" H 3400 2250 50  0001 C CNN
F 3 "" H 3400 2250 50  0001 C CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2250 3400 2350
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6071CFAC
P 3400 4200
F 0 "#FLG01" H 3400 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 4373 50  0000 C CNN
F 2 "" H 3400 4200 50  0001 C CNN
F 3 "~" H 3400 4200 50  0001 C CNN
	1    3400 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 4100 3400 4200
$Comp
L power:+6V #PWR03
U 1 1 6071E0E7
P 3400 4100
F 0 "#PWR03" H 3400 3950 50  0001 C CNN
F 1 "+6V" H 3415 4273 50  0000 C CNN
F 2 "" H 3400 4100 50  0001 C CNN
F 3 "" H 3400 4100 50  0001 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR04
U 1 1 607202A2
P 3800 4100
F 0 "#PWR04" H 3800 3950 50  0001 C CNN
F 1 "+3V0" H 3815 4273 50  0000 C CNN
F 2 "" H 3800 4100 50  0001 C CNN
F 3 "" H 3800 4100 50  0001 C CNN
	1    3800 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR010
U 1 1 60720B98
P 5650 2600
F 0 "#PWR010" H 5650 2450 50  0001 C CNN
F 1 "+3V0" H 5665 2773 50  0000 C CNN
F 2 "" H 5650 2600 50  0001 C CNN
F 3 "" H 5650 2600 50  0001 C CNN
	1    5650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4450 6150 4500
Wire Wire Line
	6250 2950 6250 2850
Wire Wire Line
	6250 2850 6150 2850
Wire Wire Line
	6150 2850 6150 2950
$Comp
L power:+3V0 #PWR011
U 1 1 60725D64
P 6150 2750
F 0 "#PWR011" H 6150 2600 50  0001 C CNN
F 1 "+3V0" H 6165 2923 50  0000 C CNN
F 2 "" H 6150 2750 50  0001 C CNN
F 3 "" H 6150 2750 50  0001 C CNN
	1    6150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2750 6150 2850
Connection ~ 6150 2850
$Comp
L power:+3V0 #PWR06
U 1 1 60727FE8
P 4250 5700
F 0 "#PWR06" H 4250 5550 50  0001 C CNN
F 1 "+3V0" H 4265 5873 50  0000 C CNN
F 2 "" H 4250 5700 50  0001 C CNN
F 3 "" H 4250 5700 50  0001 C CNN
	1    4250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5800 4250 5800
Wire Wire Line
	3650 5900 4250 5900
$Comp
L power:GND #PWR016
U 1 1 6072C9FE
P 7550 3950
F 0 "#PWR016" H 7550 3700 50  0001 C CNN
F 1 "GND" H 7555 3777 50  0000 C CNN
F 2 "" H 7550 3950 50  0001 C CNN
F 3 "" H 7550 3950 50  0001 C CNN
	1    7550 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR015
U 1 1 6072F90F
P 7550 3650
F 0 "#PWR015" H 7550 3500 50  0001 C CNN
F 1 "+6V" H 7565 3823 50  0000 C CNN
F 2 "" H 7550 3650 50  0001 C CNN
F 3 "" H 7550 3650 50  0001 C CNN
	1    7550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3350 7750 3650
Wire Wire Line
	7750 3650 7850 3650
Wire Wire Line
	7850 3750 7550 3750
Wire Wire Line
	7550 3750 7550 3650
Wire Wire Line
	7850 3850 7550 3850
Wire Wire Line
	7550 3850 7550 3950
$Comp
L power:GND #PWR014
U 1 1 60737E1F
P 7250 4050
F 0 "#PWR014" H 7250 3800 50  0001 C CNN
F 1 "GND" H 7255 3877 50  0000 C CNN
F 2 "" H 7250 4050 50  0001 C CNN
F 3 "" H 7250 4050 50  0001 C CNN
	1    7250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3950 7250 4050
Wire Wire Line
	7250 3550 7250 3650
Wire Wire Line
	5650 4250 5750 4250
Wire Wire Line
	5350 4250 5250 4250
$Comp
L power:GND #PWR017
U 1 1 607471B2
P 8050 3250
F 0 "#PWR017" H 8050 3000 50  0001 C CNN
F 1 "GND" H 8055 3077 50  0000 C CNN
F 2 "" H 8050 3250 50  0001 C CNN
F 3 "" H 8050 3250 50  0001 C CNN
	1    8050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3150 8050 3250
Wire Wire Line
	6750 3050 6750 3150
Wire Wire Line
	6650 3150 6750 3150
Connection ~ 6750 3150
$Comp
L power:+3V0 #PWR013
U 1 1 6074B945
P 6750 2550
F 0 "#PWR013" H 6750 2400 50  0001 C CNN
F 1 "+3V0" H 6765 2723 50  0000 C CNN
F 2 "" H 6750 2550 50  0001 C CNN
F 3 "" H 6750 2550 50  0001 C CNN
	1    6750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2600 5650 2750
Wire Wire Line
	5250 4250 5250 4350
$Comp
L power:GND #PWR012
U 1 1 60753004
P 6700 4600
F 0 "#PWR012" H 6700 4350 50  0001 C CNN
F 1 "GND" H 6705 4427 50  0000 C CNN
F 2 "" H 6700 4600 50  0001 C CNN
F 3 "" H 6700 4600 50  0001 C CNN
	1    6700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4500 6700 4500
Wire Wire Line
	6700 4500 6700 4600
Text GLabel 6750 4250 2    50   Input ~ 0
SWCLK
Text GLabel 6750 4150 2    50   Input ~ 0
SWDIO
Wire Wire Line
	6750 4150 6650 4150
Text GLabel 5550 3150 0    50   Input ~ 0
RESET
Wire Wire Line
	5550 3150 5650 3150
Text GLabel 6750 3250 2    50   Output ~ 0
TX
Wire Wire Line
	7450 3150 8050 3150
Wire Wire Line
	6650 3250 6750 3250
Wire Wire Line
	6650 3350 7750 3350
Wire Wire Line
	6650 3550 7250 3550
Wire Wire Line
	4200 4100 4400 4100
Wire Wire Line
	4400 4100 4400 4500
Connection ~ 5650 3150
Wire Wire Line
	6650 4250 6750 4250
NoConn ~ 6650 3450
NoConn ~ 6650 3650
NoConn ~ 6650 3750
NoConn ~ 6650 3850
NoConn ~ 6650 3950
NoConn ~ 6650 4050
NoConn ~ 5750 3850
NoConn ~ 5750 3950
NoConn ~ 5750 4150
Wire Wire Line
	6750 2550 6750 2650
Wire Wire Line
	6750 3150 7150 3150
$EndSCHEMATC