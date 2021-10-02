EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LED CUBE 5X5X5"
Date "2021-08-31"
Rev "1.0"
Comp "TVZ - Josip Kordek"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74HC595 U2
U 1 1 61309B5C
P 4450 1475
F 0 "U2" H 4200 2025 50  0000 C CNN
F 1 "74HC595" H 4650 825 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 4450 1475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4450 1475 50  0001 C CNN
	1    4450 1475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6130EBA8
P 4450 2175
F 0 "#PWR0101" H 4450 1925 50  0001 C CNN
F 1 "GND" H 4455 2002 50  0000 C CNN
F 2 "" H 4450 2175 50  0001 C CNN
F 3 "" H 4450 2175 50  0001 C CNN
	1    4450 2175
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 6130F678
P 4450 875
F 0 "#PWR0102" H 4450 725 50  0001 C CNN
F 1 "+5V" H 4465 1048 50  0000 C CNN
F 2 "" H 4450 875 50  0001 C CNN
F 3 "" H 4450 875 50  0001 C CNN
	1    4450 875 
	1    0    0    -1  
$EndComp
Text GLabel 4050 1075 0    50   Input ~ 0
DATA
Text GLabel 4050 1275 0    50   Input ~ 0
CLOCK
$Comp
L power:GND #PWR0103
U 1 1 61310C56
P 3900 1950
F 0 "#PWR0103" H 3900 1700 50  0001 C CNN
F 1 "GND" H 3905 1777 50  0000 C CNN
F 2 "" H 3900 1950 50  0001 C CNN
F 3 "" H 3900 1950 50  0001 C CNN
	1    3900 1950
	1    0    0    -1  
$EndComp
Text GLabel 4050 1575 0    50   Input ~ 0
LATCH
$Comp
L Device:R_Small R4
U 1 1 61313192
P 3900 1850
F 0 "R4" H 3959 1896 50  0000 L CNN
F 1 "10k" H 3959 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3900 1850 50  0001 C CNN
F 3 "~" H 3900 1850 50  0001 C CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1750 3900 1675
Wire Wire Line
	3900 1675 4050 1675
$Comp
L power:GND #PWR0105
U 1 1 6130E2A6
P 3525 1900
F 0 "#PWR0105" H 3525 1650 50  0001 C CNN
F 1 "GND" H 3530 1727 50  0000 C CNN
F 2 "" H 3525 1900 50  0001 C CNN
F 3 "" H 3525 1900 50  0001 C CNN
	1    3525 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 6130E2A0
P 3525 1700
F 0 "#PWR0106" H 3525 1550 50  0001 C CNN
F 1 "+5V" H 3540 1873 50  0000 C CNN
F 2 "" H 3525 1700 50  0001 C CNN
F 3 "" H 3525 1700 50  0001 C CNN
	1    3525 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6130E29A
P 3525 1800
F 0 "C4" H 3617 1846 50  0000 L CNN
F 1 "100n" H 3617 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 3525 1800 50  0001 C CNN
F 3 "~" H 3525 1800 50  0001 C CNN
	1    3525 1800
	1    0    0    -1  
$EndComp
Text Notes 575  625  0    50   ~ 0
MICROCONTROLLER
Wire Notes Line
	575  5125 3350 5125
Wire Notes Line
	575  650  575  5125
Wire Notes Line
	3350 650  575  650 
Wire Notes Line
	3350 5125 3350 650 
Text Notes 575  5275 0    50   ~ 0
POWER JACK
$Comp
L power:GND #PWR0107
U 1 1 61300A8A
P 900 2875
F 0 "#PWR0107" H 900 2625 50  0001 C CNN
F 1 "GND" H 905 2702 50  0000 C CNN
F 2 "" H 900 2875 50  0001 C CNN
F 3 "" H 900 2875 50  0001 C CNN
	1    900  2875
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 612FF96C
P 900 2675
F 0 "#PWR0108" H 900 2525 50  0001 C CNN
F 1 "+5V" H 915 2848 50  0000 C CNN
F 2 "" H 900 2675 50  0001 C CNN
F 3 "" H 900 2675 50  0001 C CNN
	1    900  2675
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 612FC911
P 900 2775
F 0 "C3" H 992 2821 50  0000 L CNN
F 1 "100n" H 992 2730 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 900 2775 50  0001 C CNN
F 3 "~" H 900 2775 50  0001 C CNN
	1    900  2775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 612FB573
P 1650 5875
F 0 "#PWR0109" H 1650 5625 50  0001 C CNN
F 1 "GND" H 1655 5702 50  0000 C CNN
F 2 "" H 1650 5875 50  0001 C CNN
F 3 "" H 1650 5875 50  0001 C CNN
	1    1650 5875
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 612F4426
P 975 975
F 0 "SW1" H 825 1100 50  0000 C CNN
F 1 "RESET" H 1125 1100 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 975 975 50  0001 C CNN
F 3 "~" H 975 975 50  0001 C CNN
	1    975  975 
	1    0    0    -1  
$EndComp
Connection ~ 1350 1175
Wire Wire Line
	1225 1175 1350 1175
Wire Wire Line
	1225 975  1225 1100
Wire Wire Line
	1175 975  1225 975 
Connection ~ 700  1275
Wire Wire Line
	700  975  700  1275
Wire Wire Line
	775  975  700  975 
Wire Wire Line
	700  1625 700  1275
Connection ~ 700  1625
Wire Wire Line
	775  1625 700  1625
Wire Wire Line
	700  1275 775  1275
Wire Wire Line
	700  1700 700  1625
$Comp
L power:GND #PWR0110
U 1 1 612F2324
P 700 1700
F 0 "#PWR0110" H 700 1450 50  0001 C CNN
F 1 "GND" H 705 1527 50  0000 C CNN
F 2 "" H 700 1700 50  0001 C CNN
F 3 "" H 700 1700 50  0001 C CNN
	1    700  1700
	1    0    0    -1  
$EndComp
Connection ~ 1150 1275
Wire Wire Line
	1150 1275 975  1275
Connection ~ 1150 1625
Wire Wire Line
	975  1625 1150 1625
$Comp
L Device:C_Small C2
U 1 1 612F1811
P 875 1625
F 0 "C2" V 800 1525 50  0000 C CNN
F 1 "22p" V 800 1750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 875 1625 50  0001 C CNN
F 3 "~" H 875 1625 50  0001 C CNN
	1    875  1625
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 612F0320
P 875 1275
F 0 "C1" V 800 1175 50  0000 C CNN
F 1 "22p" V 800 1400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 875 1275 50  0001 C CNN
F 3 "~" H 875 1275 50  0001 C CNN
	1    875  1275
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1575 1625 1575
Wire Wire Line
	1600 1625 1600 1575
Wire Wire Line
	1150 1625 1600 1625
Wire Wire Line
	1150 1600 1150 1625
Wire Wire Line
	1150 1275 1150 1300
Wire Wire Line
	1600 1275 1150 1275
Wire Wire Line
	1600 1375 1600 1275
Wire Wire Line
	1625 1375 1600 1375
$Comp
L Device:Crystal Y1
U 1 1 612ED944
P 1150 1450
F 0 "Y1" V 1104 1581 50  0000 L CNN
F 1 "16MHz" V 1195 1581 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 1150 1450 50  0001 C CNN
F 3 "~" H 1150 1450 50  0001 C CNN
	1    1150 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 1175 1350 1075
Wire Wire Line
	1625 1175 1350 1175
$Comp
L power:+5V #PWR0111
U 1 1 612EC5DE
P 1350 875
F 0 "#PWR0111" H 1350 725 50  0001 C CNN
F 1 "+5V" H 1365 1048 50  0000 C CNN
F 2 "" H 1350 875 50  0001 C CNN
F 3 "" H 1350 875 50  0001 C CNN
	1    1350 875 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 612EB455
P 1350 975
F 0 "R1" H 1409 1021 50  0000 L CNN
F 1 "10k" H 1409 930 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1350 975 50  0001 C CNN
F 3 "~" H 1350 975 50  0001 C CNN
	1    1350 975 
	1    0    0    -1  
$EndComp
NoConn ~ 1625 1775
NoConn ~ 2325 875 
$Comp
L power:+5V #PWR0112
U 1 1 612E9BB5
P 2225 875
F 0 "#PWR0112" H 2225 725 50  0001 C CNN
F 1 "+5V" H 2240 1048 50  0000 C CNN
F 2 "" H 2225 875 50  0001 C CNN
F 3 "" H 2225 875 50  0001 C CNN
	1    2225 875 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 612E8B5C
P 2225 4875
F 0 "#PWR0113" H 2225 4625 50  0001 C CNN
F 1 "GND" H 2230 4702 50  0000 C CNN
F 2 "" H 2225 4875 50  0001 C CNN
F 3 "" H 2225 4875 50  0001 C CNN
	1    2225 4875
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega16-16PU U1
U 1 1 612E6E8F
P 2225 2875
F 0 "U1" H 1750 4825 50  0000 C CNN
F 1 "ATmega16-16PU" H 2600 925 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket_LongPads" H 2225 2875 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2466.pdf" H 2225 2875 50  0001 C CNN
	1    2225 2875
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 61339E3B
P 6300 1475
F 0 "U3" H 6050 2025 50  0000 C CNN
F 1 "74HC595" H 6500 825 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 6300 1475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 6300 1475 50  0001 C CNN
	1    6300 1475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61339E41
P 6300 2175
F 0 "#PWR0114" H 6300 1925 50  0001 C CNN
F 1 "GND" H 6305 2002 50  0000 C CNN
F 2 "" H 6300 2175 50  0001 C CNN
F 3 "" H 6300 2175 50  0001 C CNN
	1    6300 2175
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 61339E47
P 6300 875
F 0 "#PWR0115" H 6300 725 50  0001 C CNN
F 1 "+5V" H 6315 1048 50  0000 C CNN
F 2 "" H 6300 875 50  0001 C CNN
F 3 "" H 6300 875 50  0001 C CNN
	1    6300 875 
	1    0    0    -1  
$EndComp
Text GLabel 5900 1275 0    50   Input ~ 0
CLOCK
$Comp
L power:GND #PWR0116
U 1 1 61339E4F
P 5750 1950
F 0 "#PWR0116" H 5750 1700 50  0001 C CNN
F 1 "GND" H 5755 1777 50  0000 C CNN
F 2 "" H 5750 1950 50  0001 C CNN
F 3 "" H 5750 1950 50  0001 C CNN
	1    5750 1950
	1    0    0    -1  
$EndComp
Text GLabel 5900 1575 0    50   Input ~ 0
LATCH
$Comp
L Device:R_Small R24
U 1 1 61339E56
P 5750 1850
F 0 "R24" H 5809 1896 50  0000 L CNN
F 1 "10k" H 5809 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5750 1850 50  0001 C CNN
F 3 "~" H 5750 1850 50  0001 C CNN
	1    5750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1750 5750 1675
Wire Wire Line
	5750 1675 5900 1675
$Comp
L power:GND #PWR0118
U 1 1 61339E6C
P 5375 1900
F 0 "#PWR0118" H 5375 1650 50  0001 C CNN
F 1 "GND" H 5380 1727 50  0000 C CNN
F 2 "" H 5375 1900 50  0001 C CNN
F 3 "" H 5375 1900 50  0001 C CNN
	1    5375 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 61339E72
P 5375 1700
F 0 "#PWR0119" H 5375 1550 50  0001 C CNN
F 1 "+5V" H 5390 1873 50  0000 C CNN
F 2 "" H 5375 1700 50  0001 C CNN
F 3 "" H 5375 1700 50  0001 C CNN
	1    5375 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 61339E78
P 5375 1800
F 0 "C5" H 5467 1846 50  0000 L CNN
F 1 "100n" H 5467 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 5375 1800 50  0001 C CNN
F 3 "~" H 5375 1800 50  0001 C CNN
	1    5375 1800
	1    0    0    -1  
$EndComp
Text GLabel 4850 1075 2    50   Input ~ 0
QA1
Text GLabel 4850 1175 2    50   Input ~ 0
QB1
Text GLabel 4850 1275 2    50   Input ~ 0
QC1
Text GLabel 4850 1375 2    50   Input ~ 0
QD1
Text GLabel 4850 1475 2    50   Input ~ 0
QE1
Text GLabel 4850 1575 2    50   Input ~ 0
QF1
Text GLabel 4850 1675 2    50   Input ~ 0
QG1
Text GLabel 4850 1775 2    50   Input ~ 0
QH1
Wire Wire Line
	4850 1975 5200 1975
$Comp
L 74xx:74HC595 U4
U 1 1 6138BF4B
P 8150 1475
F 0 "U4" H 7900 2025 50  0000 C CNN
F 1 "74HC595" H 8350 825 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 8150 1475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8150 1475 50  0001 C CNN
	1    8150 1475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6138BF51
P 8150 2175
F 0 "#PWR0120" H 8150 1925 50  0001 C CNN
F 1 "GND" H 8155 2002 50  0000 C CNN
F 2 "" H 8150 2175 50  0001 C CNN
F 3 "" H 8150 2175 50  0001 C CNN
	1    8150 2175
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 6138BF57
P 8150 875
F 0 "#PWR0121" H 8150 725 50  0001 C CNN
F 1 "+5V" H 8165 1048 50  0000 C CNN
F 2 "" H 8150 875 50  0001 C CNN
F 3 "" H 8150 875 50  0001 C CNN
	1    8150 875 
	1    0    0    -1  
$EndComp
Text GLabel 7750 1275 0    50   Input ~ 0
CLOCK
$Comp
L power:GND #PWR0122
U 1 1 6138BF5E
P 7600 1950
F 0 "#PWR0122" H 7600 1700 50  0001 C CNN
F 1 "GND" H 7605 1777 50  0000 C CNN
F 2 "" H 7600 1950 50  0001 C CNN
F 3 "" H 7600 1950 50  0001 C CNN
	1    7600 1950
	1    0    0    -1  
$EndComp
Text GLabel 7750 1575 0    50   Input ~ 0
LATCH
$Comp
L Device:R_Small R34
U 1 1 6138BF65
P 7600 1850
F 0 "R34" H 7659 1896 50  0000 L CNN
F 1 "10k" H 7659 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7600 1850 50  0001 C CNN
F 3 "~" H 7600 1850 50  0001 C CNN
	1    7600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1750 7600 1675
Wire Wire Line
	7600 1675 7750 1675
$Comp
L power:GND #PWR0124
U 1 1 6138BF7B
P 7225 1900
F 0 "#PWR0124" H 7225 1650 50  0001 C CNN
F 1 "GND" H 7230 1727 50  0000 C CNN
F 2 "" H 7225 1900 50  0001 C CNN
F 3 "" H 7225 1900 50  0001 C CNN
	1    7225 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 6138BF81
P 7225 1700
F 0 "#PWR0125" H 7225 1550 50  0001 C CNN
F 1 "+5V" H 7240 1873 50  0000 C CNN
F 2 "" H 7225 1700 50  0001 C CNN
F 3 "" H 7225 1700 50  0001 C CNN
	1    7225 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 6138BF87
P 7225 1800
F 0 "C6" H 7317 1846 50  0000 L CNN
F 1 "100n" H 7317 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 7225 1800 50  0001 C CNN
F 3 "~" H 7225 1800 50  0001 C CNN
	1    7225 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1975 7050 1975
Text GLabel 6700 1075 2    50   Input ~ 0
QA2
Text GLabel 6700 1175 2    50   Input ~ 0
QB2
Text GLabel 6700 1275 2    50   Input ~ 0
QC2
Text GLabel 6700 1375 2    50   Input ~ 0
QD2
Text GLabel 6700 1475 2    50   Input ~ 0
QE2
Text GLabel 6700 1575 2    50   Input ~ 0
QF2
Text GLabel 6700 1675 2    50   Input ~ 0
QG2
Text GLabel 6700 1775 2    50   Input ~ 0
QH2
Text GLabel 8550 1075 2    50   Input ~ 0
QA3
Text GLabel 8550 1175 2    50   Input ~ 0
QB3
Text GLabel 8550 1275 2    50   Input ~ 0
QC3
Text GLabel 8550 1375 2    50   Input ~ 0
QD3
Text GLabel 8550 1475 2    50   Input ~ 0
QE3
Text GLabel 8550 1575 2    50   Input ~ 0
QF3
Text GLabel 8550 1675 2    50   Input ~ 0
QG3
Text GLabel 8550 1775 2    50   Input ~ 0
QH3
$Comp
L 74xx:74HC595 U5
U 1 1 61392A14
P 10000 1475
F 0 "U5" H 9750 2025 50  0000 C CNN
F 1 "74HC595" H 10200 825 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 10000 1475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10000 1475 50  0001 C CNN
	1    10000 1475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 61392A1A
P 10000 2175
F 0 "#PWR0126" H 10000 1925 50  0001 C CNN
F 1 "GND" H 10005 2002 50  0000 C CNN
F 2 "" H 10000 2175 50  0001 C CNN
F 3 "" H 10000 2175 50  0001 C CNN
	1    10000 2175
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 61392A20
P 10000 875
F 0 "#PWR0127" H 10000 725 50  0001 C CNN
F 1 "+5V" H 10015 1048 50  0000 C CNN
F 2 "" H 10000 875 50  0001 C CNN
F 3 "" H 10000 875 50  0001 C CNN
	1    10000 875 
	1    0    0    -1  
$EndComp
Text GLabel 9600 1275 0    50   Input ~ 0
CLOCK
$Comp
L power:GND #PWR0128
U 1 1 61392A27
P 9450 1950
F 0 "#PWR0128" H 9450 1700 50  0001 C CNN
F 1 "GND" H 9455 1777 50  0000 C CNN
F 2 "" H 9450 1950 50  0001 C CNN
F 3 "" H 9450 1950 50  0001 C CNN
	1    9450 1950
	1    0    0    -1  
$EndComp
Text GLabel 9600 1575 0    50   Input ~ 0
LATCH
$Comp
L Device:R_Small R45
U 1 1 61392A2E
P 9450 1850
F 0 "R45" H 9509 1896 50  0000 L CNN
F 1 "10k" H 9509 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9450 1850 50  0001 C CNN
F 3 "~" H 9450 1850 50  0001 C CNN
	1    9450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1750 9450 1675
Wire Wire Line
	9450 1675 9600 1675
$Comp
L power:GND #PWR0130
U 1 1 61392A44
P 9075 1900
F 0 "#PWR0130" H 9075 1650 50  0001 C CNN
F 1 "GND" H 9080 1727 50  0000 C CNN
F 2 "" H 9075 1900 50  0001 C CNN
F 3 "" H 9075 1900 50  0001 C CNN
	1    9075 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0131
U 1 1 61392A4A
P 9075 1700
F 0 "#PWR0131" H 9075 1550 50  0001 C CNN
F 1 "+5V" H 9090 1873 50  0000 C CNN
F 2 "" H 9075 1700 50  0001 C CNN
F 3 "" H 9075 1700 50  0001 C CNN
	1    9075 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 61392A50
P 9075 1800
F 0 "C7" H 9167 1846 50  0000 L CNN
F 1 "100n" H 9167 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 9075 1800 50  0001 C CNN
F 3 "~" H 9075 1800 50  0001 C CNN
	1    9075 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1975 8900 1075
Wire Wire Line
	8550 1975 8900 1975
Text GLabel 10400 1075 2    50   Input ~ 0
QA4
NoConn ~ 10400 1175
NoConn ~ 10400 1275
NoConn ~ 10400 1375
NoConn ~ 10400 1475
NoConn ~ 10400 1575
NoConn ~ 10400 1675
NoConn ~ 10400 1775
NoConn ~ 10400 1975
Wire Notes Line
	10625 2400 10625 650 
Wire Notes Line
	10625 650  3425 650 
Wire Notes Line
	3425 650  3425 2400
Wire Notes Line
	3425 2400 10625 2400
Text Notes 3425 625  0    50   ~ 0
HC595 SHIFT REGISTERS
$Comp
L Device:R_Small R16
U 1 1 613BDFCB
P 5550 2750
F 0 "R16" V 5600 2900 50  0000 C CNN
F 1 "680" V 5550 2750 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 2750 50  0001 C CNN
F 3 "~" H 5550 2750 50  0001 C CNN
	1    5550 2750
	0    -1   -1   0   
$EndComp
Text GLabel 3775 3000 0    50   Input ~ 0
LAYER1
$Comp
L Device:R_Small R5
U 1 1 613C60B0
P 3925 3000
F 0 "R5" V 3850 3000 50  0000 C CNN
F 1 "120" V 3925 3000 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3925 3000 50  0001 C CNN
F 3 "~" H 3925 3000 50  0001 C CNN
	1    3925 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	3775 3000 3825 3000
$Comp
L power:+5V #PWR0133
U 1 1 613D1D65
P 4425 2800
F 0 "#PWR0133" H 4425 2650 50  0001 C CNN
F 1 "+5V" H 4440 2973 50  0000 C CNN
F 2 "" H 4425 2800 50  0001 C CNN
F 3 "" H 4425 2800 50  0001 C CNN
	1    4425 2800
	1    0    0    -1  
$EndComp
Text GLabel 5325 2750 0    50   Input ~ 0
QA1
Text GLabel 5325 2850 0    50   Input ~ 0
QB1
Text GLabel 3775 4025 0    50   Input ~ 0
LAYER2
$Comp
L Device:R_Small R6
U 1 1 613E28F8
P 3925 4025
F 0 "R6" V 3850 4025 50  0000 C CNN
F 1 "120" V 3925 4025 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3925 4025 50  0001 C CNN
F 3 "~" H 3925 4025 50  0001 C CNN
	1    3925 4025
	0    1    1    0   
$EndComp
Wire Wire Line
	3775 4025 3825 4025
$Comp
L power:+5V #PWR0135
U 1 1 613E2910
P 4425 3825
F 0 "#PWR0135" H 4425 3675 50  0001 C CNN
F 1 "+5V" H 4440 3998 50  0000 C CNN
F 2 "" H 4425 3825 50  0001 C CNN
F 3 "" H 4425 3825 50  0001 C CNN
	1    4425 3825
	1    0    0    -1  
$EndComp
Text GLabel 3775 5025 0    50   Input ~ 0
LAYER3
$Comp
L Device:R_Small R7
U 1 1 613EF80C
P 3925 5025
F 0 "R7" V 3850 5025 50  0000 C CNN
F 1 "120" V 3925 5025 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3925 5025 50  0001 C CNN
F 3 "~" H 3925 5025 50  0001 C CNN
	1    3925 5025
	0    1    1    0   
$EndComp
Wire Wire Line
	3775 5025 3825 5025
$Comp
L power:+5V #PWR0137
U 1 1 613EF824
P 4425 4825
F 0 "#PWR0137" H 4425 4675 50  0001 C CNN
F 1 "+5V" H 4440 4998 50  0000 C CNN
F 2 "" H 4425 4825 50  0001 C CNN
F 3 "" H 4425 4825 50  0001 C CNN
	1    4425 4825
	1    0    0    -1  
$EndComp
Text GLabel 3775 6050 0    50   Input ~ 0
LAYER4
$Comp
L Device:R_Small R8
U 1 1 613EF837
P 3925 6050
F 0 "R8" V 3850 6050 50  0000 C CNN
F 1 "120" V 3925 6050 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3925 6050 50  0001 C CNN
F 3 "~" H 3925 6050 50  0001 C CNN
	1    3925 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	3775 6050 3825 6050
$Comp
L power:+5V #PWR0139
U 1 1 613EF84F
P 4425 5850
F 0 "#PWR0139" H 4425 5700 50  0001 C CNN
F 1 "+5V" H 4440 6023 50  0000 C CNN
F 2 "" H 4425 5850 50  0001 C CNN
F 3 "" H 4425 5850 50  0001 C CNN
	1    4425 5850
	1    0    0    -1  
$EndComp
Text GLabel 3775 7075 0    50   Input ~ 0
LAYER5
$Comp
L Device:R_Small R9
U 1 1 613F7A44
P 3925 7075
F 0 "R9" V 3850 7075 50  0000 C CNN
F 1 "120" V 3925 7075 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3925 7075 50  0001 C CNN
F 3 "~" H 3925 7075 50  0001 C CNN
	1    3925 7075
	0    1    1    0   
$EndComp
Wire Wire Line
	3775 7075 3825 7075
$Comp
L power:+5V #PWR0141
U 1 1 613F7A5C
P 4425 6875
F 0 "#PWR0141" H 4425 6725 50  0001 C CNN
F 1 "+5V" H 4440 7048 50  0000 C CNN
F 2 "" H 4425 6875 50  0001 C CNN
F 3 "" H 4425 6875 50  0001 C CNN
	1    4425 6875
	1    0    0    -1  
$EndComp
Wire Notes Line
	3425 7600 4850 7600
Wire Notes Line
	4850 7600 4850 2575
Wire Notes Line
	4850 2575 3425 2575
Wire Notes Line
	3425 2575 3425 7600
Text Notes 3425 2550 0    50   ~ 0
LAYER CONTROL VIA MOSFET
$Comp
L Device:R_Small R17
U 1 1 61428CEE
P 5550 2850
F 0 "R17" V 5600 3000 50  0000 C CNN
F 1 "680" V 5550 2850 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 2850 50  0001 C CNN
F 3 "~" H 5550 2850 50  0001 C CNN
	1    5550 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 2850 5700 2850
Text GLabel 5325 2950 0    50   Input ~ 0
QC1
Text GLabel 5325 3050 0    50   Input ~ 0
QD1
Text GLabel 5325 3150 0    50   Input ~ 0
QE1
Text GLabel 6575 2950 2    50   Input ~ 0
QF1
Text GLabel 6575 2850 2    50   Input ~ 0
QG1
Text GLabel 6575 2750 2    50   Input ~ 0
QH1
$Comp
L Device:R_Small R18
U 1 1 6143A01C
P 5550 2950
F 0 "R18" V 5600 3100 50  0000 C CNN
F 1 "680" V 5550 2950 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 2950 50  0001 C CNN
F 3 "~" H 5550 2950 50  0001 C CNN
	1    5550 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 2950 5700 2950
$Comp
L Device:R_Small R19
U 1 1 61441E71
P 5550 3050
F 0 "R19" V 5600 3200 50  0000 C CNN
F 1 "680" V 5550 3050 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 3050 50  0001 C CNN
F 3 "~" H 5550 3050 50  0001 C CNN
	1    5550 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3050 5700 3050
$Comp
L Device:R_Small R20
U 1 1 614442A3
P 5550 3150
F 0 "R20" V 5600 3300 50  0000 C CNN
F 1 "680" V 5550 3150 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 3150 50  0001 C CNN
F 3 "~" H 5550 3150 50  0001 C CNN
	1    5550 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3150 5700 3150
$Comp
L Device:R_Small R21
U 1 1 6144679E
P 6350 2950
F 0 "R21" V 6300 3100 50  0000 C CNN
F 1 "680" V 6350 2950 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 2950 50  0001 C CNN
F 3 "~" H 6350 2950 50  0001 C CNN
	1    6350 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 2750 6200 2750
$Comp
L Device:R_Small R22
U 1 1 614491D3
P 6350 2850
F 0 "R22" V 6300 3000 50  0000 C CNN
F 1 "680" V 6350 2850 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 2850 50  0001 C CNN
F 3 "~" H 6350 2850 50  0001 C CNN
	1    6350 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 2850 6200 2850
$Comp
L Device:R_Small R23
U 1 1 6144EB03
P 6350 2750
F 0 "R23" V 6300 2900 50  0000 C CNN
F 1 "680" V 6350 2750 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 2750 50  0001 C CNN
F 3 "~" H 6350 2750 50  0001 C CNN
	1    6350 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 2950 6200 2950
$Comp
L Device:R_Small R25
U 1 1 6146615D
P 6350 3050
F 0 "R25" V 6300 3200 50  0000 C CNN
F 1 "680" V 6350 3050 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 3050 50  0001 C CNN
F 3 "~" H 6350 3050 50  0001 C CNN
	1    6350 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3050 6200 3050
$Comp
L Device:R_Small R26
U 1 1 6146616E
P 6350 3150
F 0 "R26" V 6300 3300 50  0000 C CNN
F 1 "680" V 6350 3150 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 3150 50  0001 C CNN
F 3 "~" H 6350 3150 50  0001 C CNN
	1    6350 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3150 6200 3150
$Comp
L Device:R_Small R27
U 1 1 61466181
P 5550 3550
F 0 "R27" V 5600 3675 50  0000 C CNN
F 1 "680" V 5550 3550 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 3550 50  0001 C CNN
F 3 "~" H 5550 3550 50  0001 C CNN
	1    5550 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3550 5700 3550
$Comp
L Device:R_Small R28
U 1 1 6146618F
P 5550 3650
F 0 "R28" V 5600 3800 50  0000 C CNN
F 1 "680" V 5550 3650 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 3650 50  0001 C CNN
F 3 "~" H 5550 3650 50  0001 C CNN
	1    5550 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3650 5700 3650
$Comp
L Device:R_Small R29
U 1 1 6146619D
P 5550 3750
F 0 "R29" V 5600 3900 50  0000 C CNN
F 1 "680" V 5550 3750 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 3750 50  0001 C CNN
F 3 "~" H 5550 3750 50  0001 C CNN
	1    5550 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3750 5700 3750
$Comp
L Device:R_Small R30
U 1 1 614661AB
P 5550 3850
F 0 "R30" V 5600 4000 50  0000 C CNN
F 1 "680" V 5550 3850 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 3850 50  0001 C CNN
F 3 "~" H 5550 3850 50  0001 C CNN
	1    5550 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3850 5700 3850
$Comp
L Device:R_Small R31
U 1 1 614661B9
P 5550 3950
F 0 "R31" V 5600 4100 50  0000 C CNN
F 1 "680" V 5550 3950 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 3950 50  0001 C CNN
F 3 "~" H 5550 3950 50  0001 C CNN
	1    5550 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3950 5700 3950
$Comp
L Device:R_Small R32
U 1 1 614661C7
P 6350 3550
F 0 "R32" V 6300 3700 50  0000 C CNN
F 1 "680" V 6350 3550 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 3550 50  0001 C CNN
F 3 "~" H 6350 3550 50  0001 C CNN
	1    6350 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3550 6200 3550
Text GLabel 6575 3050 2    50   Input ~ 0
QA2
Text GLabel 6575 3150 2    50   Input ~ 0
QB2
Text GLabel 5325 3550 0    50   Input ~ 0
QC2
Text GLabel 5325 3650 0    50   Input ~ 0
QD2
Text GLabel 5325 3750 0    50   Input ~ 0
QE2
Text GLabel 5325 3850 0    50   Input ~ 0
QF2
Text GLabel 5325 3950 0    50   Input ~ 0
QG2
Text GLabel 6575 3550 2    50   Input ~ 0
QH2
$Comp
L Device:R_Small R35
U 1 1 614892AF
P 6350 3950
F 0 "R35" V 6300 4100 50  0000 C CNN
F 1 "680" V 6350 3950 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 3950 50  0001 C CNN
F 3 "~" H 6350 3950 50  0001 C CNN
	1    6350 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3650 6200 3650
$Comp
L Device:R_Small R36
U 1 1 614892BC
P 6350 3850
F 0 "R36" V 6300 4000 50  0000 C CNN
F 1 "680" V 6350 3850 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 3850 50  0001 C CNN
F 3 "~" H 6350 3850 50  0001 C CNN
	1    6350 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3750 6200 3750
$Comp
L Device:R_Small R37
U 1 1 614892C9
P 6350 3750
F 0 "R37" V 6300 3900 50  0000 C CNN
F 1 "680" V 6350 3750 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 3750 50  0001 C CNN
F 3 "~" H 6350 3750 50  0001 C CNN
	1    6350 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3850 6200 3850
$Comp
L Device:R_Small R38
U 1 1 614892D6
P 6350 3650
F 0 "R38" V 6300 3800 50  0000 C CNN
F 1 "680" V 6350 3650 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6350 3650 50  0001 C CNN
F 3 "~" H 6350 3650 50  0001 C CNN
	1    6350 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3950 6200 3950
$Comp
L Device:R_Small R39
U 1 1 614892E3
P 5550 4275
F 0 "R39" V 5600 4425 50  0000 C CNN
F 1 "680" V 5550 4275 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 4275 50  0001 C CNN
F 3 "~" H 5550 4275 50  0001 C CNN
	1    5550 4275
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 4275 5700 4275
$Comp
L Device:R_Small R40
U 1 1 614892F0
P 5550 4375
F 0 "R40" V 5600 4525 50  0000 C CNN
F 1 "680" V 5550 4375 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 4375 50  0001 C CNN
F 3 "~" H 5550 4375 50  0001 C CNN
	1    5550 4375
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 4375 5700 4375
$Comp
L Device:R_Small R41
U 1 1 614892FD
P 5550 4475
F 0 "R41" V 5600 4625 50  0000 C CNN
F 1 "680" V 5550 4475 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 4475 50  0001 C CNN
F 3 "~" H 5550 4475 50  0001 C CNN
	1    5550 4475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 4475 5700 4475
$Comp
L Device:R_Small R42
U 1 1 6148930A
P 5550 4575
F 0 "R42" V 5600 4725 50  0000 C CNN
F 1 "680" V 5550 4575 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 4575 50  0001 C CNN
F 3 "~" H 5550 4575 50  0001 C CNN
	1    5550 4575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 4575 5700 4575
Text GLabel 6575 3950 2    50   Input ~ 0
QA3
Text GLabel 6575 3850 2    50   Input ~ 0
QB3
Text GLabel 6575 3750 2    50   Input ~ 0
QC3
Text GLabel 6575 3650 2    50   Input ~ 0
QD3
Text GLabel 5325 4275 0    50   Input ~ 0
QE3
Text GLabel 5325 4375 0    50   Input ~ 0
QF3
Text GLabel 5325 4475 0    50   Input ~ 0
QG3
Text GLabel 5325 4575 0    50   Input ~ 0
QH3
$Comp
L Device:R_Small R43
U 1 1 614B0CD7
P 5550 4675
F 0 "R43" V 5600 4825 50  0000 C CNN
F 1 "680" V 5550 4675 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 4675 50  0001 C CNN
F 3 "~" H 5550 4675 50  0001 C CNN
	1    5550 4675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 4675 5700 4675
Text GLabel 5325 4675 0    50   Input ~ 0
QA4
Text Notes 4950 2550 0    50   ~ 0
CONNECTORS
Wire Wire Line
	1600 5625 1675 5625
Wire Notes Line
	575  6150 2225 6150
Wire Notes Line
	2225 6150 2225 5300
Wire Notes Line
	575  5300 2225 5300
Wire Notes Line
	575  5300 575  6150
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 6155F5D9
P 2800 5675
F 0 "J2" H 2850 5975 50  0000 C CNN
F 1 "USBASP" H 2850 5375 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Horizontal" H 2800 5675 50  0001 C CNN
F 3 "~" H 2800 5675 50  0001 C CNN
	1    2800 5675
	1    0    0    -1  
$EndComp
Text GLabel 2600 5475 0    50   Input ~ 0
MOSI
NoConn ~ 3100 5475
NoConn ~ 3100 5575
NoConn ~ 3100 5675
NoConn ~ 3100 5775
NoConn ~ 2600 5575
Text GLabel 2600 5675 0    50   Input ~ 0
RESET
Text GLabel 2600 5775 0    50   Input ~ 0
SCK
Text GLabel 2600 5875 0    50   Input ~ 0
MISO
$Comp
L power:GND #PWR0145
U 1 1 6157C42A
P 3125 5900
F 0 "#PWR0145" H 3125 5650 50  0001 C CNN
F 1 "GND" H 3130 5727 50  0000 C CNN
F 2 "" H 3125 5900 50  0001 C CNN
F 3 "" H 3125 5900 50  0001 C CNN
	1    3125 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 5900 3125 5875
Wire Wire Line
	3125 5875 3100 5875
Text GLabel 1175 1100 0    50   Input ~ 0
RESET
Wire Wire Line
	1175 1100 1225 1100
Connection ~ 1225 1100
Wire Wire Line
	1225 1100 1225 1175
Wire Notes Line
	3250 5300 2300 5300
Text Notes 2300 5275 0    50   ~ 0
USBASP
Wire Notes Line
	3250 6150 2300 6150
Wire Notes Line
	3250 5300 3250 6150
Wire Notes Line
	2300 5300 2300 6150
Text GLabel 2825 2575 2    50   Input ~ 0
MOSI
Text GLabel 2825 2675 2    50   Input ~ 0
MISO
Text GLabel 2825 2775 2    50   Input ~ 0
SCK
NoConn ~ 2825 3675
NoConn ~ 2825 3575
NoConn ~ 2825 3475
NoConn ~ 2825 3375
NoConn ~ 2825 3275
NoConn ~ 2825 3175
NoConn ~ 2825 3075
NoConn ~ 2825 2975
NoConn ~ 2825 2075
NoConn ~ 2825 2175
NoConn ~ 2825 2275
NoConn ~ 2825 2375
NoConn ~ 2825 2475
NoConn ~ 2825 1875
NoConn ~ 2825 1775
NoConn ~ 2825 1675
Text GLabel 2825 1275 2    50   Input ~ 0
DATA
Text GLabel 2825 1475 2    50   Input ~ 0
CLOCK
Text GLabel 2825 1375 2    50   Input ~ 0
LATCH
Text GLabel 2825 4475 2    50   Input ~ 0
LAYER1
Text GLabel 2825 4375 2    50   Input ~ 0
LAYER2
Text GLabel 2825 4275 2    50   Input ~ 0
LAYER3
Text GLabel 2825 4175 2    50   Input ~ 0
LAYER4
Text GLabel 2825 4075 2    50   Input ~ 0
LAYER5
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61653789
P 10875 6850
F 0 "#FLG0101" H 10875 6925 50  0001 C CNN
F 1 "PWR_FLAG" H 10875 7023 50  0000 C CNN
F 2 "" H 10875 6850 50  0001 C CNN
F 3 "~" H 10875 6850 50  0001 C CNN
	1    10875 6850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6165547B
P 10500 6850
F 0 "#FLG0102" H 10500 6925 50  0001 C CNN
F 1 "PWR_FLAG" H 10500 7023 50  0000 C CNN
F 2 "" H 10500 6850 50  0001 C CNN
F 3 "~" H 10500 6850 50  0001 C CNN
	1    10500 6850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 61656A29
P 10875 6850
F 0 "#PWR0146" H 10875 6600 50  0001 C CNN
F 1 "GND" H 10880 6677 50  0000 C CNN
F 2 "" H 10875 6850 50  0001 C CNN
F 3 "" H 10875 6850 50  0001 C CNN
	1    10875 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0147
U 1 1 61656A2F
P 10500 6850
F 0 "#PWR0147" H 10500 6700 50  0001 C CNN
F 1 "+5V" H 10515 7023 50  0000 C CNN
F 2 "" H 10500 6850 50  0001 C CNN
F 3 "" H 10500 6850 50  0001 C CNN
	1    10500 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 6168DD66
P 700 6450
F 0 "H1" H 800 6496 50  0000 L CNN
F 1 "MountingHole" H 800 6405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 700 6450 50  0001 C CNN
F 3 "~" H 700 6450 50  0001 C CNN
	1    700  6450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6168F6C5
P 700 6650
F 0 "H2" H 800 6696 50  0000 L CNN
F 1 "MountingHole" H 800 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 700 6650 50  0001 C CNN
F 3 "~" H 700 6650 50  0001 C CNN
	1    700  6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61696236
P 700 6850
F 0 "H3" H 800 6896 50  0000 L CNN
F 1 "MountingHole" H 800 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 700 6850 50  0001 C CNN
F 3 "~" H 700 6850 50  0001 C CNN
	1    700  6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6169623C
P 700 7050
F 0 "H4" H 800 7096 50  0000 L CNN
F 1 "MountingHole" H 800 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 700 7050 50  0001 C CNN
F 3 "~" H 700 7050 50  0001 C CNN
	1    700  7050
	1    0    0    -1  
$EndComp
Wire Notes Line
	1375 7175 1375 6325
Wire Notes Line
	1375 6325 575  6325
Wire Notes Line
	575  6325 575  7175
Wire Notes Line
	575  7175 1375 7175
Text Notes 575  6300 0    50   ~ 0
MOUNTING HOLE
Text Notes 525  7675 0    50   ~ 0
Notes:\n- MOSFETi ne otvaraju do kraja\n
$Comp
L Connector:Barrel_Jack_MountingPin J1
U 1 1 6178CBAA
P 1300 5725
F 0 "J1" H 1300 5950 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 1357 5951 50  0001 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002" H 1350 5685 50  0001 C CNN
F 3 "~" H 1350 5685 50  0001 C CNN
	1    1300 5725
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5875 1650 5825
Wire Wire Line
	1650 5825 1600 5825
NoConn ~ 1300 6025
$Comp
L power:+5V #PWR0144
U 1 1 612F9478
P 1675 5575
F 0 "#PWR0144" H 1675 5425 50  0001 C CNN
F 1 "+5V" H 1690 5748 50  0000 C CNN
F 2 "" H 1675 5575 50  0001 C CNN
F 3 "" H 1675 5575 50  0001 C CNN
	1    1675 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1675 5575 1675 5625
NoConn ~ 2825 4575
Text GLabel 2825 1575 2    50   Input ~ 0
CLEAR
Text GLabel 4050 1375 0    50   Input ~ 0
CLEAR
Text GLabel 5900 1375 0    50   Input ~ 0
CLEAR
Text GLabel 7750 1375 0    50   Input ~ 0
CLEAR
Text GLabel 9600 1375 0    50   Input ~ 0
CLEAR
Wire Wire Line
	5200 1075 5200 1975
Wire Wire Line
	5200 1075 5900 1075
Wire Wire Line
	7050 1075 7050 1975
Wire Wire Line
	7050 1075 7750 1075
Wire Wire Line
	8900 1075 9600 1075
NoConn ~ 2825 1175
NoConn ~ 2825 3975
NoConn ~ 2825 3875
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 6141B2AE
P 5900 2950
F 0 "J3" H 5950 3250 50  0000 C CNN
F 1 "CON1" H 5950 2650 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 5900 2950 50  0001 C CNN
F 3 "~" H 5900 2950 50  0001 C CNN
	1    5900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 2750 5450 2750
Wire Wire Line
	5650 2750 5700 2750
Wire Wire Line
	5325 2850 5450 2850
Wire Wire Line
	5325 2950 5450 2950
Wire Wire Line
	5325 3050 5450 3050
Wire Wire Line
	5325 3150 5450 3150
Wire Wire Line
	6450 2850 6575 2850
Wire Wire Line
	6450 2950 6575 2950
Wire Wire Line
	6450 2750 6575 2750
Wire Wire Line
	6450 3050 6575 3050
Wire Wire Line
	6450 3150 6575 3150
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 614B88A7
P 5900 3750
F 0 "J4" H 5950 4050 50  0000 C CNN
F 1 "CON2" H 5950 3450 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 5900 3750 50  0001 C CNN
F 3 "~" H 5900 3750 50  0001 C CNN
	1    5900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 3550 5450 3550
Wire Wire Line
	5325 3650 5450 3650
Wire Wire Line
	5325 3750 5450 3750
Wire Wire Line
	5325 3850 5450 3850
Wire Wire Line
	5325 3950 5450 3950
Wire Wire Line
	6450 3550 6575 3550
Wire Wire Line
	6450 3950 6575 3950
Wire Wire Line
	6450 3850 6575 3850
Wire Wire Line
	6450 3750 6575 3750
Wire Wire Line
	6450 3650 6575 3650
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 61551586
P 5900 4475
F 0 "J5" H 5950 4775 50  0000 C CNN
F 1 "CON3" H 5950 4175 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 5900 4475 50  0001 C CNN
F 3 "~" H 5900 4475 50  0001 C CNN
	1    5900 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 4275 5450 4275
Wire Wire Line
	5325 4375 5450 4375
Wire Wire Line
	5325 4475 5450 4475
Wire Wire Line
	5325 4575 5450 4575
Wire Wire Line
	5325 4675 5450 4675
Text GLabel 4425 3200 3    50   Input ~ 0
L1
Text GLabel 4425 4225 3    50   Input ~ 0
L2
Text GLabel 4425 5225 3    50   Input ~ 0
L3
Text GLabel 4425 6250 3    50   Input ~ 0
L4
Text GLabel 4425 7275 3    50   Input ~ 0
L5
Text GLabel 6200 4275 2    50   Input ~ 0
L1
Text GLabel 6200 4375 2    50   Input ~ 0
L2
Text GLabel 6200 4475 2    50   Input ~ 0
L3
Text GLabel 6200 4575 2    50   Input ~ 0
L4
Text GLabel 6200 4675 2    50   Input ~ 0
L5
Wire Notes Line
	4950 4825 6925 4825
Wire Notes Line
	6925 4825 6925 2575
Wire Notes Line
	6925 2575 4950 2575
Wire Notes Line
	4950 2575 4950 4825
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 61528816
P 4325 3000
F 0 "Q1" H 4516 3046 50  0000 L CNN
F 1 "BC337" H 4516 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4525 2925 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4325 3000 50  0001 L CNN
	1    4325 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 7075 4125 7075
Wire Wire Line
	4025 6050 4125 6050
Wire Wire Line
	4025 5025 4125 5025
Wire Wire Line
	4025 4025 4125 4025
$Comp
L Transistor_BJT:BC337 Q2
U 1 1 61545918
P 4325 4025
F 0 "Q2" H 4516 4071 50  0000 L CNN
F 1 "BC337" H 4516 3980 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4525 3950 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4325 4025 50  0001 L CNN
	1    4325 4025
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q3
U 1 1 6154628A
P 4325 5025
F 0 "Q3" H 4516 5071 50  0000 L CNN
F 1 "BC337" H 4516 4980 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4525 4950 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4325 5025 50  0001 L CNN
	1    4325 5025
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q4
U 1 1 61546977
P 4325 6050
F 0 "Q4" H 4516 6096 50  0000 L CNN
F 1 "BC337" H 4516 6005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4525 5975 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4325 6050 50  0001 L CNN
	1    4325 6050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q5
U 1 1 6154704B
P 4325 7075
F 0 "Q5" H 4516 7121 50  0000 L CNN
F 1 "BC337" H 4516 7030 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4525 7000 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4325 7075 50  0001 L CNN
	1    4325 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 3000 4125 3000
$EndSCHEMATC
