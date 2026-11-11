---
layout: pid
title: OpenDongle
owner: valeronm
license: MIT
site: https://github.com/valeronm/open-dongle
source: https://github.com/valeronm/open-dongle
---
An open-source 2.4 GHz wireless keyboard receiver based on an nRF52840 board,
currently supporting the NuPhy Air75 V2. It uses an unmodified Pro Micro
nRF52840 board, commonly sold as a nice!nano clone, connected to the computer
by USB-C. No additional wiring or custom PCB is required. Support for additional
2.4 GHz keyboard protocols and hardware platforms is planned.

The firmware uses Zephyr and Nordic's Enhanced ShockBurst library. It presents
USB HID interfaces for keyboard input, consumer and system controls, and
vendor-defined diagnostics. A companion open-source tool identifies the receiver
by VID and PID to read diagnostics and control the dongle, including measuring
a radio noise map of the surrounding environment.
