---
layout: pid
title: OpenGP5 guitar pedal firmware
owner: OpenGP5
license: MIT
site: https://github.com/OpenGP5/OpenGP5
source: https://github.com/OpenGP5/OpenGP5
---
OpenGP5 is MIT-licensed firmware written from scratch for both processors of the Valeton GP-5 guitar
pedal (an MVsilicon BP1048 USB / control processor and an ARM Cortex-M4F DSP), together with a framework
for writing your own effects and a USB flasher. It replaces the pedal's whole application, including its
USB device stack: the pedal then enumerates as a class-compliant USB-MIDI device that carries the
firmware's control protocol and the update hand-over to the factory loader. Every pedal running OpenGP5
presents the same USB interface, independent of which effect is installed, so one PID for the firmware
lets the host tools find the pedal reliably. It currently uses the pid.codes test PID 1209:0001.
