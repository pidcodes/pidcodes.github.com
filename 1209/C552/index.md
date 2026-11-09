---
layout: pid
title: CH552 USB Foot Pedal
owner: zjm54321
license: GPL-3.0-or-later (firmware), CERN-OHL-S-2.0 (hardware)
site: https://github.com/zjm54321/ch552-pedal
source: https://github.com/zjm54321/ch552-pedal
---
Single-switch USB foot pedal based on the WCH CH552G (8051) microcontroller.
It enumerates as a standard USB HID keyboard plus a VIA-compatible Raw HID
interface (usage page 0xFF60) for browser-based remapping of plain keys and
modifier chords; mappings persist in the chip's DataFlash. Each unit reports a
USB serial number derived from the chip's unique ID so that multiple pedals can
be connected and configured independently. Firmware is written in C for SDCC,
reusing the CH55xduino USB stack; the PCB is designed in KiCad.
