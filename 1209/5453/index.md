---
layout: pid
title: TapShard
owner: mi-v
license: MIT
site: https://github.com/mi-v/tapshard
source: https://github.com/mi-v/tapshard
---
TapShard is a battery-powered TOTP token built on an nRF52840 Pro Micro /
SuperMini-style board running upstream Zephyr. It types one-time codes over
Bluetooth LE HID when its button is pressed. USB Mass Storage exposes a RAM
configuration drive whose config.ini can be edited with a text editor; no
companion application is needed.

This PID identifies the application's USB configuration interface. The separate
RAM-wiping bootloader does not implement USB, and factory recovery retains the
board's original factory bootloader USB identity.
