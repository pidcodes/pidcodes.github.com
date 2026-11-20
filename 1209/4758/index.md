---
layout: pid
title: Galaxia SDK
owner: dhilowitz
license: MPL-2.0
site: https://github.com/dhilowitz/GalaxiaSDK
source: https://github.com/dhilowitz/GalaxiaSDK
---
An unofficial SDK for writing your own firmware for the M-VAVE Galaxia, a stereo reverb pedal built on a JieLi WL82 (AC791N family) chip. It is a board port and runtime on top of felucca-bsp, plus tools to back up, install and restore firmware over USB.

Firmware built with the SDK enumerates as a USB composite device (MIDI, audio in and out, and a CDC serial console) under this PID. The SDK is software only: it runs on the existing pedal, so one PID covers every firmware made with it rather than each user needing their own.
