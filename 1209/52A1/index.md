---
layout: pid
title: Biwamasu Mixer
owner: mugicha-xtx
license: MIT
site: https://github.com/mugicha-xtx/biwamasu-mixer
source: https://github.com/mugicha-xtx/biwamasu-mixer
---
PC-side digital mixer, DSP, and capture interface in the Biwamasu Mixer
project. Runs on a Raspberry Pi Pico 2 H (RP2350) wired to a Pimoroni Pico
Audio Pack (`PCM5100A` I2S DAC + `PAM8908` headphone amp, see
`hardware/schematic.svg`). Enumerates as a UAC 2.0 composite headset (PC mix
playback + bit-exact pre-EQ raw console capture mic with 0 dB max Feature Unit)
and Vendor HID DSP controller.
