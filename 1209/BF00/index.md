---
layout: pid
title: BenchHand
owner: mafaltu
license: CERN-OHL-S-2.0 (hardware), GPL-3.0-or-later (firmware)
site: https://github.com/mafaltu/benchhand
source: https://github.com/mafaltu/benchhand
---
BenchHand is a USB-controlled test bench helper: 5 relays, a switched USB 2.0 High Speed passthrough and 4 isolated
digital inputs, controlled over a USB CDC ACM serial port with a plain-text protocol, for scripts, CI and AI agents.
Hardware: STM32C071 (crystal-less USB FS), KiCad 10 design files. Firmware: C with TinyUSB and the ST HAL.
