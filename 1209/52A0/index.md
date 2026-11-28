---
layout: pid
title: Biwamasu Mixer TX
owner: mugicha-xtx
license: MIT
site: https://github.com/mugicha-xtx/biwamasu-mixer
source: https://github.com/mugicha-xtx/biwamasu-mixer
---
Console-side transmitter in the Biwamasu Mixer project. Runs on an unmodified
Raspberry Pi Pico 2 H (RP2350) wired to the RX unit with an open-source MIT
hardware schematic (`hardware/schematic.svg`). Enumerates as a UAC 1.0 48 kHz
stereo audio sink + Vendor HID interface and forwards PCM frames over a 3 Mbps
UART DMA link (`GP0` -> 33-ohm series resistor -> RX Pico).
