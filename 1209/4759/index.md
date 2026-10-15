---
layout: pid
title: GyreFFB Wheel
owner: GyreFFB
license: GPL-3.0-or-later
site: https://github.com/bigtaed-sys/GyreFFB
source: https://github.com/bigtaed-sys/GyreFFB
---
A DIY direct drive force feedback steering wheel. The device is an ODESC v4.2
(ODrive v3.6-class) motor controller whose STM32F405 runs the GyreFFB firmware:
a USB HID PID force feedback wheel (steering axis + full PID effect set) with
an 8 kHz FOC current loop driving a hoverboard BLDC motor. Firmware, desktop
app and protocol are fully open under GPL-3.0-or-later. 0x4759 is ASCII "GY",
for Gyre.
