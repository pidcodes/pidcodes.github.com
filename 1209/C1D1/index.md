---
layout: pid
title: CirDial Virtual USB Radial Controller
owner: xingzhuo
license: MIT
site: https://github.com/xingzhuo/CirDial
source: https://github.com/xingzhuo/CirDial
---

CirDial implements a software-defined USB HID System Multi-Axis Controller
through a loopback USB/IP device server on Windows. Its public source contains
the complete USB interface implementation and descriptors, native touch dial,
settings, shared protocol and tests. It has no custom PCB or physical firmware.

The virtual USB device enumerates through a separately installed USB/IP host
controller, so the device descriptor requires a stable VID/PID. This request
identifies the CirDial device implementation, not the external host-controller
driver. One PID serves the same implementation on ARM64 and x64, instead of
requiring each end user to register an identity for an identical device.
