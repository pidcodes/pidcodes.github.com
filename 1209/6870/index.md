---
layout: pid
title: hidpin
owner: yukke.org
license: MIT
site: https://github.com/yukkeorg/hidpin
source: https://github.com/yukkeorg/hidpin
---
hidpin turns an RP2040 board (Raspberry Pi Pico, Adafruit QT Py RP2040) into a
vendor-defined USB HID device that reports the state of its GPIO pins. The host
receives debounced pin levels together with timestamped edge events, configures
pull-ups, pull-downs and debounce times per pin, and can drive output pins.
Firmware (Pico SDK + TinyUSB) and a Python host library and CLI are in the
source repository.
