---
layout: pid
title: opendm40
owner: WirenBoard
license: MIT
site: https://github.com/wirenboard/opendm40
source: https://github.com/wirenboard/opendm40
---
opendm40 is an open-source replacement firmware (Rust) for the Alientek DM40 handheld
multimeter / oscilloscope / signal generator (GD32F427). It enumerates as a USB composite
device: a USBTMC (SCPI) instrument interface and a mass-storage disk. The PID lets
host software (sigrok, VISA, udev rules) tell opendm40 apart from the vendor firmware,
which uses the MCU vendor's own VID/PID.
