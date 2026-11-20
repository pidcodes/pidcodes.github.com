---
layout: pid
title: Microphone
owner: Sebas
license: MIT
site: https://sebas.zip
source: https://github.com/sebas-dot-zip/sebas-virtual-usb-device
---
Sebas Microphone is a USB Audio Class 1.0 microphone (48 kHz 16-bit PCM,
mono or stereo, one asynchronous isochronous IN endpoint) that the Sebas
desktop app emulates on a Windows computer during a remote session, so that
every app on that computer can record the remote viewer's microphone. The
device is served over USB/IP to the usbip-win2 host controller driver, and
Windows binds its in-box USB audio driver (usbaudio.sys) to it; no custom
driver is involved. Its source (USB descriptors, control and isochronous
request handling, the jitter buffer and the USB/IP framing) is a Rust crate
licensed under MIT OR Apache-2.0.

This is a software-only virtual USB device with no hardware of its own.
Every Sebas installation emulates this same device over USB/IP whenever a
viewer shares a microphone, so its end users cannot request their own PID:
the PID has to identify the one device that all installations present.
Sebas also recognises its own microphone by these IDs (to turn Windows'
voice processing off on its recording endpoint), and a fixed VID/PID lets
Windows keep one device instance and its endpoint settings across sessions.
