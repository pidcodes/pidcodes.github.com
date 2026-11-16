---
layout: pid
title: Switch2 Pico Audio Pack Bridge RX
owner: mugicha-xtx
license: MIT
site: https://github.com/mugicha-xtx/switch2-pico-audio-pack-bridge
source: https://github.com/mugicha-xtx/switch2-pico-audio-pack-bridge
---
PC-side digital mixer, DSP, and capture interface in the Switch2 Pico Audio
Pack Bridge project. Runs on a Raspberry Pi Pico 2 H (RP2350) wired to a
Pimoroni Pico Audio Pack (`PCM5100A` I2S DAC + `PAM8908` headphone amp, see
`hardware/schematic.svg`). Enumerates as a UAC 2.0 composite headset (PC mix
playback + bit-exact pre-EQ raw console capture mic) and Vendor HID DSP controller.
