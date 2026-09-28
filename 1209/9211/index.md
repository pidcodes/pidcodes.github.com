---
layout: pid
title: Mimic X Bridge
owner: kunichiko
license: Apache-2.0 (firmware, app) / CERN-OHL-S-2.0 (hardware)
site: https://github.com/kunichiko/MimicX-firmware
source: https://github.com/kunichiko/MimicX-firmware
---
A wireless/wired bridge variant of Mimic X: an ESP32 module (C6 / S3 / C3)
exposes a
USB-MIDI device (TinyUSB) and a BLE-MIDI peripheral simultaneously, and
relays MIDI/SysEx to the CH32X035-based Mimic X device engine over I2C.
Emulates retro-PC HID peripherals (ATARI joystick, Sega Mega Drive
6-button pad, Sharp X68000 keyboard and mouse). The firmware is Apache-2.0;
the board designs are published at
<https://github.com/kunichiko/MimicX-hardware> under CERN-OHL-S-2.0.
