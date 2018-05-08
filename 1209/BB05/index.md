---
layout: pid
title: kp_boot_32u4 bootloader
owner: keyplus
license: MIT
site: https://github.com/ahtn/kp_boot_32u4
source: https://github.com/ahtn/kp_boot_32u4
---

A USB HID bootloader for AVR USB microcontrollers in the U2, U4 and
AT90USB series.  Features include:

* only 1kB code size
* supports writing flash, eeprom and lock bits
* an SPM interface so application code can modify its own flash
* it uses a raw HID interface, so it doesn't require drivers on windows
