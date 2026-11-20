---
layout: pid
title: xbx-nrf Controller (HID)
owner: zuidec
license: MPL-2.0 (firmware), CERN-OHL-S-2.0 (hardware)
site: https://github.com/zuidec/xbx-nrf
source: https://github.com/zuidec/xbx-nrf/tree/main/firmware/xbx-nrf
---
xbx-nrf, an nRF52840 replacement bottom board for the Xbox controller, when 
plugged in over USB. In this mode it's a wired HID gamepad. XInput mode has 
its own PID (ED04), since Windows binds drivers and SDL picks mappings by 
VID:PID.
