---
layout: pid
title: OEP probe (OpenEmbeddedProbe firmware)
owner: Open-Embedded-Probe
license: MIT
site: https://github.com/Open-Embedded-Probe/oep-probe-arduino
source: https://github.com/Open-Embedded-Probe/oep-probe-arduino
---
USB debug probe and test fixture firmware built from the OpenEmbeddedProbe Arduino library (in the Arduino Library Manager as OpenEmbeddedProbe), running on ESP32-P4, RP2350 and RP2040 boards. It speaks the Open Embedded Probe protocol (https://github.com/Open-Embedded-Probe/oep-spec) over USB vendor bulk, HID and CDC: debug wires for WCH CH32 (RVSWD / SWIO) and ARM (SWD), a target console, GPIO / UART fixtures and logic capture. The conditions for using this PID are in https://github.com/Open-Embedded-Probe/oep-probe-arduino/blob/main/PID-USE.md
