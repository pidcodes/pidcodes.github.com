---
layout: pid
title: bindscript virtual joystick
owner: bindscript
license: MIT
site: https://github.com/bindscript/vhid
source: https://github.com/bindscript/vhid
---
A Windows KMDF HID minidriver that presents a virtual joystick with 8 axes
and 128 buttons. A user-mode application sets the axes and buttons by
writing HID output reports to the device.

The project is software-only: there is no physical hardware, and every
installation presents the same virtual device. Games identify controllers
by the VID and PID in the device path, so the driver needs a fixed,
registered PID that cannot collide with other devices or with the shared
testing PID (1209/0001).
