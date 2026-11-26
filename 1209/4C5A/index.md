---
layout: pid
title: LizardKing
owner: f10-beep
license: AGPL-3.0
site: https://github.com/f10-beep/lizardking
source: https://github.com/f10-beep/lizardking
---
LizardKing is firmware for a USB receiver ("puck") for the Steam Controller 2,
built on an off-the-shelf nRF52840 board (Pro Micro nRF52840 / nice!nano
compatible) with the Adafruit nRF52 core and TinyUSB. The puck presents a
composite device: an XInput gamepad, a HID keyboard, mouse and consumer
control, a CDC serial port for its companion app, and a read-only mass
storage drive carrying that app. The firmware is derived from OpenPuck and
is AGPL-3.0.

It needs its own PID rather than one per user: it is distributed as a
ready-to-install UF2, so every user runs the same USB identity, and Windows
caches the MS OS descriptors that bind its Xbox driver per VID/PID.
