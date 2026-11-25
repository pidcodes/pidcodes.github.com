---
layout: pid
title: Win AirPlay Speaker
owner: network-audio
license: MIT
site: https://github.com/network-audio/win-airplay
source: https://github.com/network-audio/win-airplay
---
A virtual USB Audio Class 1.0 speaker for Windows that streams what Windows plays to AirPlay receivers. The device is implemented in software (Rust, using [usbip-audio](https://github.com/network-audio/usbip-audio)) and attached to Windows through the signed usbip-win2 USB/IP driver, so Windows' own usbaudio driver presents it as an ordinary speaker.
