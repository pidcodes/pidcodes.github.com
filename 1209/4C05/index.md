---
layout: pid
title: Lossless OS player (USB drive)
owner: lossless
license: Apache-2.0
site: https://github.com/bobbydotdesign/lossless-os
source: https://github.com/bobbydotdesign/lossless-os
---
A portable music player running Lossless OS, as a USB mass storage device
(the player's card, for copying music). Lossless OS is open-source firmware
on Zephyr for existing players; the first is the HiFi Walker H2 (Ingenic
X1000). Its USB device is our own (platform/h2/h2_usb.c, usb_msc.c).
