---
layout: pid
title: Mbox 2 Mini open firmware
owner: ItsMeATaco
license: GPL-3.0
site: https://github.com/ItsMeATaco/mbox2-mini-open-firmware
source: https://github.com/ItsMeATaco/mbox2-mini-open-firmware
---
Open source replacement firmware for the Avid Mbox 2 Mini audio interface, whose USB controller is a TI TUSB3200A (8051 core, firmware loaded from an I2C EEPROM). It turns the Mbox into a USB Audio Class 1.0 device (stereo 24-bit playback and 16-bit capture at 44.1 and 48 kHz) that runs on the operating system's built-in audio driver, plus a vendor interface with Microsoft OS descriptors for diagnostics and firmware updates over USB through WinUSB. Written in C for SDCC. The same repository has the tools that install and update it: a Raspberry Pi installer for the first flash, Mbox Hub (a Windows tray app with meters and USB firmware updates) and a user-mode ASIO driver.
