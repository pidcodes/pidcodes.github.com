---
layout: pid
title: CH32X035 USB Power Meter
owner: krzysztofgawrys
license: Apache-2.0
site: https://github.com/krzysztofgawrys/ch32x035-usb-power-meter
source: https://github.com/krzysztofgawrys/ch32x035-usb-power-meter
---
USB power meter built around the WCH CH32X035 RISC-V microcontroller.

Hardware: INA228 20-bit power/energy monitor (up to 85 V, 10 mOhm shunt),
ST7789 240x135 color TFT display, USB-C connector for Full-Speed USB.

Firmware: bare-metal C, USB CDC virtual serial port with an interactive
data logging shell (live streaming, averaging, calibration, mAh/mWh
accumulator, min/max tracking). Supports USB DFU 1.1 firmware updates
via a companion bootloader.
