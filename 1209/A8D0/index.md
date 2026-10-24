---
layout: pid
title: KeyRelay Receiver
owner: maromocooo
license: MIT (firmware, software) / CERN-OHL-P-2.0 (hardware)
site: https://github.com/maromocooo/keyrelay
source: https://github.com/maromocooo/keyrelay
---
USB side of KeyRelay, a Bluetooth LE relay for a USB security key. An ESP32-S3 board presents a
FIDO HID interface, a CCID smart-card reader and an OTP keyboard to the computer and forwards the
traffic to a desk unit (Seeed XIAO ESP32S3) that hosts the key. Firmware is built on ESP-IDF and
TinyUSB; KeyRelay's own code is MIT-licensed. Case design files are under CERN-OHL-P-2.0.
