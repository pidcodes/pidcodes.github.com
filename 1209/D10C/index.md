---
layout: pid
title: VIIPER Generic Joystick
owner: Pav-Osmolski
license: GPL-3.0-or-later
site: https://github.com/Pav-Osmolski/VIIPER/blob/feature/directinput-output/docs/devices/genericjoystick.md
source: https://github.com/Pav-Osmolski/VIIPER/tree/feature/directinput-output/device/genericjoystick
---
A software-only, input-only virtual USB HID joystick implemented by VIIPER
over USB/IP. It exposes six absolute axes, sixteen buttons and an eight-direction
POV hat, using the operating system's standard HID joystick support. DS4Windows
feeds mapped controller input to it for games using DirectInput or WinMM,
including configurable analogue trigger axis roles and resting positions.

There is no physical PCB or firmware. The USB descriptor and report implementation
are public Go source under GPL-3.0-or-later. On Windows, usbip-win2 imports the
virtual USB device; this request covers the joystick, not the USB/IP host driver.

A fixed registered identity is needed for Windows device enumeration and saved
game controller bindings. Per-user identities would make support and shared
binding configurations inconsistent. This request covers one fixed sixteen-button HID
descriptor; any future incompatible descriptor will require a separate identity.
The advertised capacity is independent of the physical controller. DS4Windows
profiles can reassign or leave output buttons unassigned without changing the
device descriptor. It does not emulate another manufacturer's USB identity and has no force-feedback
or audio interfaces.
