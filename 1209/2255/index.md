---
layout: pid
title: SDR Transceiver
owner: Phenix-1255
license: MIT, CERN-OHL-P-2.0
site: https://github.com/w4tchd0g/phenix-1255-sw
source: https://github.com/w4tchd0g/phenix-1255-sw
---
Phenix-1255 is an open source SDR transceiver for 70 cm TETRA base stations.
A Semtech SX1255 RF transceiver board (phenix-1255-hw, designed by Z32IT) sits
on an NXP FRDM-MCXN947 development board. The Zephyr firmware on the MCX N947
streams timestamped I/Q samples over a high-speed USB vendor interface (bulk
endpoints) or Ethernet. A SoapySDR module (driver "phenix-1255") for Linux and
macOS connects it to TETRA base station software such as TETRA-Bluestation and
FlowStation.

Firmware and host software (MIT): https://github.com/w4tchd0g/phenix-1255-sw
Hardware design (CERN-OHL-P-2.0): https://github.com/labdvm/Phenix-1255-HW
