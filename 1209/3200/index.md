---
layout: pid
title: mt32-pi USB MIDI synthesizer
owner: pim-32
license: GPLv3
site: https://github.com/macroexp/mt32-pi
source: https://github.com/macroexp/mt32-pi
---
mt32-pi is bare-metal firmware for the Raspberry Pi that emulates a Roland MT-32 (using Munt) and plays SoundFonts (using FluidSynth). It is built on the Circle framework and runs on stock Raspberry Pi boards (Zero, Zero 2 W, 3, 4 and 5), optionally with an I²S DAC, a small OLED or LCD and buttons.

On boards whose USB controller can act as a device (Pi Zero, Zero W, Zero 2 W, 3A+ and 4B), the firmware can present the Pi to a computer as a class-compliant USB MIDI 1.0 device called "mt32-pi", so no separate MIDI interface is needed. It uses Circle's USB MIDI gadget driver.

The project is firmware only, for off-the-shelf Raspberry Pi hardware. Every user flashes the same released image, so all units send identical USB descriptors, and a single shared PID gives them a stable identity, for example for Windows' cached driver binding. Asking each user to request their own PID wouldn't work for a prebuilt image.
