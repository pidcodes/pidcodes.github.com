---
layout: pid
title: Pocket Link
owner: pocket
license: CERN-OHL-P-2.0 (hardware), Apache-2.0 (firmware)
site: https://pocketide.com/pocket-link
source: https://github.com/anshkumar/pocket-link
---
USB-C adapter for Android phones: a USB Audio Class 1.0 headset (microphone in, stereo headphones out) plus a vendor bulk data channel, on a Raspberry Pi RP2040. The phone routes call audio to the headset interfaces; the Pocket app claims the data interface and carries the audio to and from a voice agent.

Hardware: RP2040, 2 MB QSPI flash, USB-C plug, 4-layer 31 x 16 mm board (KiCad sources, Gerbers and BOM in the repository).

Firmware: Rust (rp2040-hal, usb-device, usbd-audio), composite UAC 1.0 + vendor interface, 48 kHz / 16 kHz resampling.
