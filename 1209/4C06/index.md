---
layout: pid
title: Lossless OS player (USB DAC)
owner: lossless
license: Apache-2.0
site: https://github.com/bobbydotdesign/lossless-os
source: https://github.com/bobbydotdesign/lossless-os
---
A portable music player running Lossless OS, as a USB Audio Class 2 sound
card (asynchronous, 44.1 to 384 kHz, 16 / 24 / 32-bit, bit-perfect).
Lossless OS is open-source firmware on Zephyr for existing players; the
first is the HiFi Walker H2 (Ingenic X1000, ES9018K2M DAC). Its USB device
is our own (platform/h2/usb_dac.c).
