---
layout: pid
title: OpenDIAG OBD2 Interface
owner: Maximus64
license: GPLv3 and CERN-OHL-S-2.0
site: https://github.com/maximus64/opendiag-hardware
source: https://github.com/maximus64/opendiag-firmware
---
OpenDIAG is an open source OBD2 diagnostic interface for reading and clearing
vehicle diagnostic trouble codes, streaming live sensor data, and accessing
manufacturer-specific ECU functions. The device presents itself as a USB CDC
serial port to the host.

The hardware is an ESP32-S3 based board using the chip's native USB and TWAI
(CAN) peripherals, with a CAN transceiver, K-line, and J1850 PWM/VPW
interfaces published under CERN-OHL-S-2.0 at
[opendiag-hardware](https://github.com/maximus64/opendiag-hardware). The
firmware is licensed GPLv3 at
[opendiag-firmware](https://github.com/maximus64/opendiag-firmware), and a
companion host-side tool is available at
[opendiag-cli](https://github.com/maximus64/opendiag-cli).
