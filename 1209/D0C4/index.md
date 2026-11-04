---
layout: pid
title: Duckwalk
owner: arudaev
license: GPL-3.0
site: https://arudaev.github.io/duckwalk/
source: https://github.com/arudaev/duckwalk
---
Duckwalk is an app for the Flipper Zero (STM32WB55) that keeps a computer awake by moving the mouse pointer and works as a media remote. While it runs, the Flipper presents its own USB HID device with three collections: a mouse, consumer control (media keys) and a vendor-defined 63-byte data channel. A desktop helper for Windows, in the same repository, finds the device by this VID and PID and uses the data channel to tell the app when the user is back at the computer.
