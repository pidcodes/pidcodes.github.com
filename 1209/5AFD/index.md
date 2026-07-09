---
layout: pid
title: RecoverKit Dongle Lite
owner: LeftShiftLogical
license: Apache-2.0
site: https://github.com/fcjr/restorekit
source: https://github.com/fcjr/restorekit
---

Production PCB version of the RecoverKit Dongle Proto Lite: an RP2040-based
USB-C dongle that puts Apple Silicon and T2 Macs into DFU mode over USB-PD
vendor-defined messages, passes the target's USB 2.0 data through to the host,
and exposes the target's SBU serial console. Same Rust/Embassy firmware and
USB interface layout as the prototype (two CDC-ACM ports plus a vendor control
interface).
