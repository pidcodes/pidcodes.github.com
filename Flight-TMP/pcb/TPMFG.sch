EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 11988 8468
encoding utf-8
Sheet 1 1
Title "ThrottlePropMixture"
Date "2/12/2020"
Rev ".9"
Comp "Brookline Design"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	9500 4700 9900 4700
Wire Wire Line
	9900 4700 9900 4800
Text Label 9500 4700 0    10   ~ 0
GND
Wire Wire Line
	9500 5500 8900 5500
Text Label 8900 5500 0    70   ~ 0
MOSI
Wire Wire Line
	8900 5600 9500 5600
Text Label 8900 5600 0    70   ~ 0
MISO
Wire Wire Line
	9500 5400 8900 5400
Text Label 8900 5400 0    70   ~ 0
SCK
Wire Wire Line
	9500 4400 9000 4400
Text Label 9000 4400 0    70   ~ 0
RST
Wire Wire Line
	8900 5300 9500 5300
Text Label 8900 5300 0    70   ~ 0
A5
Wire Wire Line
	9500 5200 8900 5200
Text Label 8900 5200 0    70   ~ 0
A4
Wire Wire Line
	8900 5100 9500 5100
Text Label 8900 5100 0    70   ~ 0
A3
Wire Wire Line
	9500 5000 8900 5000
Text Label 8900 5000 0    70   ~ 0
A2
Wire Wire Line
	8900 4900 9500 4900
Text Label 8900 4900 0    70   ~ 0
A1
Wire Wire Line
	6400 5500 8100 5500
Text Label 6400 5500 0    70   ~ 0
SDA
Wire Wire Line
	9500 4600 9900 4600
Text Label 9700 4600 0    70   ~ 0
AREF
Wire Wire Line
	6400 5600 8100 5600
Text Label 6400 5600 0    70   ~ 0
D1
Wire Wire Line
	8100 5700 6400 5700
Text Label 6400 5700 0    70   ~ 0
D0
Wire Wire Line
	8100 4600 7000 4600
Text Label 8100 4600 0    10   ~ 0
VBUS
Wire Wire Line
	7000 4400 8100 4400
Text Label 7000 4400 0    10   ~ 0
VBAT
Wire Wire Line
	9500 4800 8900 4800
Text Label 8900 4800 0    70   ~ 0
A0
Wire Wire Line
	8100 5400 6400 5400
Text Label 6400 5400 0    70   ~ 0
SCL
Wire Wire Line
	6400 5200 8100 5200
Text Label 6400 5200 0    70   ~ 0
D7
Wire Wire Line
	6400 5300 8100 5300
Text Label 6400 5300 0    70   ~ 0
D5
Wire Wire Line
	6400 5000 8100 5000
Text Label 6400 5000 0    70   ~ 0
D10
Wire Wire Line
	6400 4800 8100 4800
Text Label 6400 4800 0    70   ~ 0
D12
Wire Wire Line
	8100 4700 6400 4700
Text Label 6400 4700 0    70   ~ 0
D13
Wire Wire Line
	8100 4900 6400 4900
Text Label 6400 4900 0    70   ~ 0
D11
Wire Wire Line
	8100 5100 6400 5100
Text Label 6400 5100 0    70   ~ 0
D9
Wire Wire Line
	8900 4400 8900 4500
Wire Wire Line
	8900 4500 9500 4500
Text Label 8900 4400 0    10   ~ 0
+5V
Wire Wire Line
	9500 5700 8900 5700
Text Label 9500 5700 0    10   ~ 0
3.3V
$Comp
L TPMFG-eagle-import:FRAME_A4 #FRAME1
U 2 1 CC96BE8F
P 6200 7500
F 0 "#FRAME1" H 6200 7500 50  0001 C CNN
F 1 "FRAME_A4" H 6200 7500 50  0001 C CNN
F 2 "" H 6200 7500 50  0001 C CNN
F 3 "" H 6200 7500 50  0001 C CNN
	2    6200 7500
	1    0    0    -1  
$EndComp
$Comp
L TPMFG-eagle-import:VBUS #U$019
U 1 1 1DEA58DA
P 6900 4600
F 0 "#U$019" H 6900 4600 50  0001 C CNN
F 1 "VBUS" H 6840 4640 42  0000 L BNN
F 2 "" H 6900 4600 50  0001 C CNN
F 3 "" H 6900 4600 50  0001 C CNN
	1    6900 4600
	0    -1   -1   0   
$EndComp
$Comp
L TPMFG-eagle-import:VBAT #U$020
U 1 1 A9A82E2E
P 6900 4400
F 0 "#U$020" H 6900 4400 50  0001 C CNN
F 1 "VBAT" H 6840 4440 42  0000 L BNN
F 2 "" H 6900 4400 50  0001 C CNN
F 3 "" H 6900 4400 50  0001 C CNN
	1    6900 4400
	0    -1   -1   0   
$EndComp
$Comp
L TPMFG-eagle-import:GND #GND04
U 1 1 12C122FD
P 9900 4900
F 0 "#GND04" H 9900 4900 50  0001 C CNN
F 1 "GND" H 9800 4800 59  0000 L BNN
F 2 "" H 9900 4900 50  0001 C CNN
F 3 "" H 9900 4900 50  0001 C CNN
	1    9900 4900
	1    0    0    -1  
$EndComp
$Comp
L TPMFG-eagle-import:FRAME_A4 #FRAME1
U 1 1 CC96BE83
P 900 7600
F 0 "#FRAME1" H 900 7600 50  0001 C CNN
F 1 "FRAME_A4" H 900 7600 50  0001 C CNN
F 2 "" H 900 7600 50  0001 C CNN
F 3 "" H 900 7600 50  0001 C CNN
	1    900  7600
	1    0    0    -1  
$EndComp
$Comp
L TPMFG-eagle-import:GND #GND05
U 1 1 5B6A58CA
P 8000 4500
F 0 "#GND05" H 8000 4500 50  0001 C CNN
F 1 "GND" H 7900 4400 59  0000 L BNN
F 2 "" H 8000 4500 50  0001 C CNN
F 3 "" H 8000 4500 50  0001 C CNN
	1    8000 4500
	0    1    1    0   
$EndComp
$Comp
L TPMFG-eagle-import:HEADER-1X14 JP2
U 1 1 BAFA783C
P 8200 5100
F 0 "JP2" H 7950 5925 59  0000 L BNN
F 1 "HEADER-1X14" H 7950 4300 59  0000 L BNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 8200 5100 50  0001 C CNN
F 3 "" H 8200 5100 50  0001 C CNN
	1    8200 5100
	1    0    0    -1  
$EndComp
$Comp
L TPMFG-eagle-import:HEADER-1X14 JP4
U 1 1 193933AB
P 9400 5000
F 0 "JP4" H 9150 5825 59  0000 L BNN
F 1 "HEADER-1X14" H 9150 4200 59  0000 L BNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 9400 5000 50  0001 C CNN
F 3 "" H 9400 5000 50  0001 C CNN
	1    9400 5000
	-1   0    0    1   
$EndComp
$Comp
L TPMFG-eagle-import:+5V #SUPPLY03
U 1 1 4F8E092B
P 8900 4300
F 0 "#SUPPLY03" H 8900 4300 50  0001 C CNN
F 1 "+5V" H 8825 4425 59  0000 L BNN
F 2 "" H 8900 4300 50  0001 C CNN
F 3 "" H 8900 4300 50  0001 C CNN
	1    8900 4300
	1    0    0    -1  
$EndComp
$Comp
L TPMFG-eagle-import:3.3V #U$05
U 1 1 BCE09641
P 8800 5700
F 0 "#U$05" H 8800 5700 50  0001 C CNN
F 1 "3.3V" H 8740 5740 42  0000 L BNN
F 2 "" H 8800 5700 50  0001 C CNN
F 3 "" H 8800 5700 50  0001 C CNN
	1    8800 5700
	0    -1   -1   0   
$EndComp
$Comp
L PTA6043-2015DP-B103:PTA6043-2015DP-B103 R1
U 1 1 60282BAD
P 1350 4750
F 0 "R1" H 1203 4796 50  0000 R CNN
F 1 "PTA6043-2015DP-B103" H 1203 4705 50  0000 R CNN
F 2 "PTA6043-2015DP-B103" H 1350 4750 50  0001 L BNN
F 3 "" H 1350 4750 50  0001 L BNN
	1    1350 4750
	1    0    0    -1  
$EndComp
$Comp
L PTA6043-2015DP-B103:PTA6043-2015DP-B103 R2
U 1 1 60283AF4
P 2450 5850
F 0 "R2" H 2303 5896 50  0000 R CNN
F 1 "PTA6043-2015DP-B103" H 2303 5805 50  0000 R CNN
F 2 "PTA6043-2015DP-B103" H 2450 5850 50  0001 L BNN
F 3 "" H 2450 5850 50  0001 L BNN
	1    2450 5850
	1    0    0    -1  
$EndComp
$Comp
L PTA6043-2015DP-B103:PTA6043-2015DP-B103 R3
U 1 1 60285264
P 3800 7200
F 0 "R3" H 3653 7246 50  0000 R CNN
F 1 "PTA6043-2015DP-B103" H 3653 7155 50  0000 R CNN
F 2 "PTA6043-2015DP-B103" H 3800 7200 50  0001 L BNN
F 3 "" H 3800 7200 50  0001 L BNN
	1    3800 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 602860CB
P 1350 4550
F 0 "#PWR0101" H 1350 4300 50  0001 C CNN
F 1 "GND" H 1355 4377 50  0000 C CNN
F 2 "" H 1350 4550 50  0001 C CNN
F 3 "" H 1350 4550 50  0001 C CNN
	1    1350 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 602867A9
P 2450 5650
F 0 "#PWR0102" H 2450 5400 50  0001 C CNN
F 1 "GND" H 2455 5477 50  0000 C CNN
F 2 "" H 2450 5650 50  0001 C CNN
F 3 "" H 2450 5650 50  0001 C CNN
	1    2450 5650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60293E30
P 3800 7000
F 0 "#PWR0103" H 3800 6750 50  0001 C CNN
F 1 "GND" H 3805 6827 50  0000 C CNN
F 2 "" H 3800 7000 50  0001 C CNN
F 3 "" H 3800 7000 50  0001 C CNN
	1    3800 7000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 60295BD9
P 3800 7400
F 0 "#PWR0104" H 3800 7250 50  0001 C CNN
F 1 "+5V" H 3815 7573 50  0000 C CNN
F 2 "" H 3800 7400 50  0001 C CNN
F 3 "" H 3800 7400 50  0001 C CNN
	1    3800 7400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 60296986
P 2450 6050
F 0 "#PWR0105" H 2450 5900 50  0001 C CNN
F 1 "+5V" H 2465 6223 50  0000 C CNN
F 2 "" H 2450 6050 50  0001 C CNN
F 3 "" H 2450 6050 50  0001 C CNN
	1    2450 6050
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 6029713B
P 1350 4950
F 0 "#PWR0106" H 1350 4800 50  0001 C CNN
F 1 "+5V" H 1365 5123 50  0000 C CNN
F 2 "" H 1350 4950 50  0001 C CNN
F 3 "" H 1350 4950 50  0001 C CNN
	1    1350 4950
	-1   0    0    1   
$EndComp
Text GLabel 4000 7200 2    50   Output ~ 0
A0
Text GLabel 1550 4750 2    50   Output ~ 0
A2
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:61300311121 J1
U 1 1 60292F42
P 2700 3300
F 0 "J1" H 2978 3404 50  0000 L CNN
F 1 "61300311121" H 2978 3313 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2900 3500 60  0001 L CNN
F 3 "https://katalog.we-online.de/em/datasheet/6130xx11121.pdf" H 2900 3600 60  0001 L CNN
F 4 "732-5316-ND" H 2900 3700 60  0001 L CNN "Digi-Key_PN"
F 5 "61300311121" H 2900 3800 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 2900 3900 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 2900 4000 60  0001 L CNN "Family"
F 8 "https://katalog.we-online.de/em/datasheet/6130xx11121.pdf" H 2900 4100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/wurth-electronics-inc/61300311121/732-5316-ND/4846825" H 2900 4200 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 3POS 2.54MM" H 2900 4300 60  0001 L CNN "Description"
F 11 "Wurth Electronics Inc." H 2900 4400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2900 4500 60  0001 L CNN "Status"
	1    2700 3300
	1    0    0    -1  
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:61300311121 J2
U 1 1 60293F7F
P 4350 3300
F 0 "J2" H 4628 3404 50  0000 L CNN
F 1 "61300311121" H 4628 3313 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4550 3500 60  0001 L CNN
F 3 "https://katalog.we-online.de/em/datasheet/6130xx11121.pdf" H 4550 3600 60  0001 L CNN
F 4 "732-5316-ND" H 4550 3700 60  0001 L CNN "Digi-Key_PN"
F 5 "61300311121" H 4550 3800 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 4550 3900 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 4550 4000 60  0001 L CNN "Family"
F 8 "https://katalog.we-online.de/em/datasheet/6130xx11121.pdf" H 4550 4100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/wurth-electronics-inc/61300311121/732-5316-ND/4846825" H 4550 4200 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 3POS 2.54MM" H 4550 4300 60  0001 L CNN "Description"
F 11 "Wurth Electronics Inc." H 4550 4400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4550 4500 60  0001 L CNN "Status"
	1    4350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60294876
P 2700 3150
F 0 "#PWR0107" H 2700 2900 50  0001 C CNN
F 1 "GND" H 2705 2977 50  0000 C CNN
F 2 "" H 2700 3150 50  0001 C CNN
F 3 "" H 2700 3150 50  0001 C CNN
	1    2700 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 602950D1
P 4350 3150
F 0 "#PWR0108" H 4350 2900 50  0001 C CNN
F 1 "GND" H 4355 2977 50  0000 C CNN
F 2 "" H 4350 3150 50  0001 C CNN
F 3 "" H 4350 3150 50  0001 C CNN
	1    4350 3150
	-1   0    0    1   
$EndComp
Text Label 2800 3150 1    50   ~ 0
D13
Text Label 2900 3150 1    50   ~ 0
D12
Text Label 4450 3150 1    50   ~ 0
D11
Text Label 4550 3150 1    50   ~ 0
D10
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:0022232041 J3
U 1 1 602AEF42
P 4800 3850
F 0 "J3" H 5178 3904 50  0000 L CNN
F 1 "0022232041" H 5178 3813 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5000 4050 60  0001 L CNN
F 3 "https://www.molex.com/pdm_docs/sd/022232041_sd.pdf" H 5000 4150 60  0001 L CNN
F 4 "WM4202-ND" H 5000 4250 60  0001 L CNN "Digi-Key_PN"
F 5 "0022232041" H 5000 4350 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 5000 4450 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 5000 4550 60  0001 L CNN "Family"
F 8 "https://www.molex.com/pdm_docs/sd/022232041_sd.pdf" H 5000 4650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/molex/0022232041/WM4202-ND/26671" H 5000 4750 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.54MM" H 5000 4850 60  0001 L CNN "Description"
F 11 "Molex" H 5000 4950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5000 5050 60  0001 L CNN "Status"
	1    4800 3850
	1    0    0    -1  
$EndComp
Text Label 4800 3750 1    50   ~ 0
D9
Text Label 4900 3750 1    50   ~ 0
D7
Text Label 5000 3750 1    50   ~ 0
D5
$Comp
L power:GND #PWR0109
U 1 1 602B1A95
P 5100 3750
F 0 "#PWR0109" H 5100 3500 50  0001 C CNN
F 1 "GND" H 5105 3577 50  0000 C CNN
F 2 "" H 5100 3750 50  0001 C CNN
F 3 "" H 5100 3750 50  0001 C CNN
	1    5100 3750
	-1   0    0    1   
$EndComp
Text Label 6800 3150 1    50   ~ 0
A5
Text Label 6900 3150 1    50   ~ 0
A4
Text Label 7000 3150 1    50   ~ 0
A3
$Comp
L power:GND #PWR0110
U 1 1 6028F8E4
P 7100 3150
F 0 "#PWR0110" H 7100 2900 50  0001 C CNN
F 1 "GND" H 7105 2977 50  0000 C CNN
F 2 "" H 7100 3150 50  0001 C CNN
F 3 "" H 7100 3150 50  0001 C CNN
	1    7100 3150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 6028FE88
P 7200 3150
F 0 "#PWR0111" H 7200 3000 50  0001 C CNN
F 1 "+5V" H 7215 3323 50  0000 C CNN
F 2 "" H 7200 3150 50  0001 C CNN
F 3 "" H 7200 3150 50  0001 C CNN
	1    7200 3150
	1    0    0    -1  
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B5B-XH-A_LF__SN_ J4
U 1 1 6028AC78
P 6800 3250
F 0 "J4" H 7278 3304 50  0000 L CNN
F 1 "B5B-XH-A_LF__SN_" H 7278 3213 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7000 3450 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 7000 3550 60  0001 L CNN
F 4 "455-2270-ND" H 7000 3650 60  0001 L CNN "Digi-Key_PN"
F 5 "B5B-XH-A(LF)(SN)" H 7000 3750 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 7000 3850 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 7000 3950 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 7000 4050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B5B-XH-A(LF)(SN)/455-2270-ND/1530483" H 7000 4150 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 5POS 2.5MM" H 7000 4250 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 7000 4350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7000 4450 60  0001 L CNN "Status"
	1    6800 3250
	1    0    0    -1  
$EndComp
Text Notes 6750 3450 0    50   ~ 0
Rudder Connector
Text GLabel 2650 5850 2    50   Output ~ 0
A1
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:640456-3 J6
U 1 1 602CDC31
P 1600 3250
F 0 "J6" H 1878 3304 50  0000 L CNN
F 1 "640456-3" H 1878 3213 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1800 3450 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=640456&DocType=Customer+Drawing&DocLang=English" H 1800 3550 60  0001 L CNN
F 4 "A19470-ND" H 1800 3650 60  0001 L CNN "Digi-Key_PN"
F 5 "640456-3" H 1800 3750 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1800 3850 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 1800 3950 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=640456&DocType=Customer+Drawing&DocLang=English" H 1800 4050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-amp-connectors/640456-3/A19470-ND/259010" H 1800 4150 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 3POS 2.54MM" H 1800 4250 60  0001 L CNN "Description"
F 11 "TE Connectivity AMP Connectors" H 1800 4350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1800 4450 60  0001 L CNN "Status"
	1    1600 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 602CE738
P 1600 3150
F 0 "#PWR0112" H 1600 3000 50  0001 C CNN
F 1 "+5V" H 1615 3323 50  0000 C CNN
F 2 "" H 1600 3150 50  0001 C CNN
F 3 "" H 1600 3150 50  0001 C CNN
	1    1600 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 602CEEAE
P 1700 3150
F 0 "#PWR0113" H 1700 3000 50  0001 C CNN
F 1 "+5V" H 1715 3323 50  0000 C CNN
F 2 "" H 1700 3150 50  0001 C CNN
F 3 "" H 1700 3150 50  0001 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 602CF4EF
P 1800 3150
F 0 "#PWR0114" H 1800 3000 50  0001 C CNN
F 1 "+5V" H 1815 3323 50  0000 C CNN
F 2 "" H 1800 3150 50  0001 C CNN
F 3 "" H 1800 3150 50  0001 C CNN
	1    1800 3150
	1    0    0    -1  
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:640456-3 J5
U 1 1 602D03F2
P 800 3250
F 0 "J5" H 1078 3304 50  0000 L CNN
F 1 "640456-3" H 1078 3213 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1000 3450 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=640456&DocType=Customer+Drawing&DocLang=English" H 1000 3550 60  0001 L CNN
F 4 "A19470-ND" H 1000 3650 60  0001 L CNN "Digi-Key_PN"
F 5 "640456-3" H 1000 3750 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1000 3850 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 1000 3950 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=640456&DocType=Customer+Drawing&DocLang=English" H 1000 4050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-amp-connectors/640456-3/A19470-ND/259010" H 1000 4150 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 3POS 2.54MM" H 1000 4250 60  0001 L CNN "Description"
F 11 "TE Connectivity AMP Connectors" H 1000 4350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1000 4450 60  0001 L CNN "Status"
	1    800  3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 602D253D
P 800 3150
F 0 "#PWR0115" H 800 2900 50  0001 C CNN
F 1 "GND" H 805 2977 50  0000 C CNN
F 2 "" H 800 3150 50  0001 C CNN
F 3 "" H 800 3150 50  0001 C CNN
	1    800  3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 602D2C14
P 900 3150
F 0 "#PWR0116" H 900 2900 50  0001 C CNN
F 1 "GND" H 905 2977 50  0000 C CNN
F 2 "" H 900 3150 50  0001 C CNN
F 3 "" H 900 3150 50  0001 C CNN
	1    900  3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 602D32A5
P 1000 3150
F 0 "#PWR0117" H 1000 2900 50  0001 C CNN
F 1 "GND" H 1005 2977 50  0000 C CNN
F 2 "" H 1000 3150 50  0001 C CNN
F 3 "" H 1000 3150 50  0001 C CNN
	1    1000 3150
	-1   0    0    1   
$EndComp
$EndSCHEMATC
