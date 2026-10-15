---
layout: pid
title: Blue Baton
owner: ENFP-Dev-Studio
license: GPL-3.0-only
site: https://github.com/enfp-dev-studio/blue-baton
source: https://github.com/enfp-dev-studio/blue-baton
---
Firmware for an ESP32-S3 board that relays one Bluetooth LE keyboard and mouse to up to
three computers. Each computer sees the board as a Bluetooth LE HID keyboard and mouse;
this ID goes into its Device Information PnP ID (vendor ID source USB), which HID over
GATT requires. The board's USB port is used for settings and firmware updates.
