---
layout: pid
title: ferros
owner: nickspiker
license: Apache-2.0
site: https://github.com/nickspiker/ferros
source: https://github.com/nickspiker/ferros
---
ferros is an open-source, bare-metal mobile operating system written in Rust. It replaces the stock OS on commercial ARM64 hardware. The current hardware embodiment is a Google Pixel 8 Pro (Tensor G3), booted from the phone's boot partition with no Linux or Android underneath; an Apple M1 MacBook Air (via m1n1) is the second target in bring-up.

ferros brings up the SoC's USB device controller itself: it initialises the Tensor G3 eUSB2 PHY and drives the Synopsys DWC3 core in device mode, builds the descriptors, and services EP0 plus one bulk IN and one bulk OUT endpoint. It enumerates as a vendor-specific device (bDeviceClass 0xFF) for its host tool `ferros-bridge`, which matches on this ID for diagnostics, kernel hot-reload and reboot. The device stack lives in `ferros_hal/src/usb.rs` (DWC3 driver and descriptors, Pixel 8 Pro) and `ferros_hal_m1/src/usb.rs` (M1). Every device running ferros enumerates with this single PID; the protocol carried over the bulk endpoints identifies the device's role.

The PID `0x4665` is the ASCII encoding of "Fe", the chemical symbol for iron (the etymological root of the project name) and a human-readable identifier in USB descriptor hex dumps.
