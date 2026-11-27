---
layout: pid
title: xbx-nrf Dongle (HID)
owner: zuidec
license: MPL-2.0 (firmware), CERN-OHL-S-2.0 (hardware)
site: https://github.com/zuidec/xbx-nrf
source: https://github.com/zuidec/xbx-nrf/tree/main/firmware/dongle
---
The USB dongle for xbx-nrf, an nRF52840 replacement bottom board for the Xbox 
controller. In this mode the dongle presents one wireless controller as a 
HID gamepad. XInput mode has its own PID (ED02), since Windows binds drivers 
and SDL picks mappings by VID:PID.
