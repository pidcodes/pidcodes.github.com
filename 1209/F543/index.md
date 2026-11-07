---
layout: pid
title: USB PPPS Hub
owner: piers.rocks
license: CERN-OHL-W-2.0
site: https://github.com/piersfinlayson/usb-ppps-hub/
source: https://github.com/piersfinlayson/usb-ppps-hub/
---
A 4-port USB 2.0 hub with USB-C connectors and per-port power switching (PPPS).  Linux and macOS hosts can turn each port's power on and off independently with uhubctl.  Supports bus or external power.

The hub is based around Microchip's USB2514B hub controller, configured from an I2C EEPROM.
