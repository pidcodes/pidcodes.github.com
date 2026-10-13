---
layout: pid
title: SlothOS Controller
owner: slothitude
license: MIT
site: https://github.com/slothitude/slothos
source: https://github.com/slothitude/slothos
---

Bluetooth HID gamepad profile for the Anbernic RG35XX H handheld (Allwinner
H700). Implements classic BR/EDR HID over L2CAP (PSM 17/19) via BlueZ --compat
and a custom Profile1 registration, exposing the device's evdev inputs as a
standard HID-compliant game controller to any paired host (Windows, macOS,
Android, Linux). 16 buttons, 4-bit hat, 6 axes, ~120 Hz report rate. Written
in Python 3, runs on-device alongside stock firmware. Includes a hand-built
HID Report Descriptor and SDP record.
