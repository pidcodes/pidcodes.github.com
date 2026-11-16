---
layout: pid
title: Switch2 USB Audio Bridge TX
owner: mugicha-xtx
license: MIT
site: https://github.com/mugicha-xtx/switch2-pico-audio-pack-bridge
source: https://github.com/mugicha-xtx/switch2-pico-audio-pack-bridge
---
Switch/console-side transmitter in the Switch2 Pico Audio Pack Bridge project.
Runs on an unmodified Raspberry Pi Pico 2 H (RP2350) wired to the RX unit with
an open-source MIT hardware schematic (`hardware/schematic.svg`). Enumerates as
a UAC 1.0 48 kHz stereo audio sink + Vendor HID telemetry interface and forwards
PCM frames over a 3 Mbps UART DMA link (`GP0` -> 33-ohm series resistor -> RX Pico).
