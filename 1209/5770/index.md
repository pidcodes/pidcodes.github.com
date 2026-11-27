---
layout: pid
title: WPods Microphone
owner: FPNDev
license: GPL-3.0
site: https://github.com/FPNDev/wpods
source: https://github.com/FPNDev/wpods
---
WPods is a free, open-source Windows 11 app that brings AirPods features
to Windows.

This PID identifies the virtual USB Audio Class 1 capture device that the
WPods service creates over USB/IP (usbip-win2): one mono 48 kHz 16-bit
microphone per AirPods pair, driven by Windows' built-in usbaudio driver,
so any app can record from the AirPods mic as a regular Windows microphone.
The device is implemented entirely in software (C#, GPL-3.0); there is no
custom hardware.
