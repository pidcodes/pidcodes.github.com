---
layout: pid
title: Duckwalk
owner: arudaev
license: GPL-3.0
site: https://github.com/arudaev/duckwalk/blob/main/docs/usb-device.md
source: https://github.com/arudaev/duckwalk
---
Duckwalk is an app for the Flipper Zero that keeps a computer awake by moving the mouse pointer and works as a media remote. It runs on an unmodified Flipper Zero (STM32WB55, schematic published by Flipper Devices) with the official firmware, plugged in over USB. While it runs, the Flipper presents its own USB HID device with three collections: a mouse, consumer control (media keys) and a vendor-defined 63-byte data channel. A desktop app in the same repository finds the device by this VID and PID and uses the data channel to tell the Flipper when the user is back at the computer.
