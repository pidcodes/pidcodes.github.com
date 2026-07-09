---
layout: pid
title: RecoverKit Dongle Proto Lite
owner: LeftShiftLogical
license: Apache-2.0
site: https://github.com/fcjr/restorekit
source: https://github.com/fcjr/restorekit
---

Breadboard prototype of the RecoverKit Dongle Lite: an RP2040 (Raspberry Pi
Pico) plus an FUSB302B USB-PD PHY that puts Apple Silicon and T2 Macs into DFU
mode over USB-PD vendor-defined messages and exposes the target's SBU serial
console. Enumerates as a composite device with two CDC-ACM ports and a vendor
control interface. Firmware is Rust/Embassy.
